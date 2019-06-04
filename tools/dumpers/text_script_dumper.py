# usage: text_script_dumper <address> [<rom_file>] [-i <ini_file>]
# This will parse a textScript at the address specified, from the file specified.
# if no file is specified, it will use the default ('../../bn6f.ign')
# ini_file defaults to 'mmbn6.ini'
import configparser

def read_custom_ini(ini_path):

    # type: (str) -> list(dict(str, str))
    sections = []
    with open(ini_path, 'r') as ini_file:
        for line in ini_file.readlines():
            # section
            if line.startswith('[') and ']' in line:
                sections.append({})
                sections[-1]['section'] = line[line.index('[')+1:line.index(']')]
            elif '=' in line:
                key = line[:line.index('=')].strip()
                val = line[line.index('=')+1:].strip()
                sections[-1][key] = val
    return sections

def get_tbl():
    tbl = [' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
           'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '*',
           'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't',
           'u', 'v', 'w', 'x', 'y', 'z', '[RV]', '[BX]', '[EX]', '[SP]', '[FZ]']
    for i in range(len(tbl), 0xEA):
        tbl.append('\\x%X' % i)
    symbols = ['-', 'x', '=', ':', '%', '?', '+', '[]', '[bat]', '\\xA1', '!', '&', ',', '\\xA5',
               '.', '\\xA7', ';', '\'', '"', '~', '/', '(', ')', '\\xAF', '\\xB0', '\\xB1', '_', '[z]',
               '[L]', '[B]', '[R]', '[A]']
    for i in range(0x98, 0xB8):
        tbl[i] = symbols[i-0x98]
    tbl[0xE6] = '$'
    tbl[0xE9] = '\\n'
    return tbl

def bn6f_str(byte_arr, tbl):
    out = ''
    for byte in byte_arr:
        # byte code
        if byte > len(tbl):
            break
        out = out + tbl[byte]
    return out

def read_relative_pointers(bin_file, address):
    def read_hword(bin_file):
        bytes = bin_file.read(2)
        return bytes[0] + (bytes[1] << 8)
    # assuming first relative pointer is first script
    size_rel_pointers = read_hword(bin_file)
    rel_pointers = [size_rel_pointers]
    while bin_file.tell() < address + size_rel_pointers:
        rel_pointers.append(read_hword(bin_file))
    return rel_pointers


def get_param_count(sects, cmd):
    cmd_bytes = []
    num_bytes = -1
    for b in cmd: cmd_bytes.append(b)
    for sect in sects:
        if sect['section'] in ['Command', 'Extension']:
            base = []
            for b in sect['base'].split(' '): base.append(int(b, 16))
            if base == cmd_bytes:
                return sect['mask'].split(' ').count('00')
    return num_bytes


def get_cmd_macro(sects, cmd):
    name = ''
    cmd_bytes = []
    for c in cmd: cmd_bytes.append(c)
    for sect in sects:
        if sect['section'] in ['Command', 'Extension']:
            base = []
            for b in sect['base'].split(' '): base.append(int(b, 16))

            if cmd_bytes == base:
                name = 'ts_'  + sect['name']
    # convert to snake case
    for c in name:
        if c.isupper():
            name = name.replace(c, '_%c' % c.lower())
    return name


class TextScript:
    def __init__(self, rel_pointers, units, addr, size, sects):
        self.rel_pointers = rel_pointers
        self.units = units
        self.addr = addr
        self.size = size
        self.sects = sects

    @staticmethod
    def compile():
        pass # TODO

    def build(self):
        script = ['text_script_start unk_%X' % self.addr]
        rel_pointer_ids = {}
        last_pointer = 0
        i = 0
        for p in sorted(self.rel_pointers):
            if p != last_pointer:
                rel_pointer_ids[p] = i
            last_pointer = p
            i += 1
        rel_pointers_macro = ''
        for p in self.rel_pointers:
            if rel_pointer_ids[p] % 16 == 0:
                if rel_pointers_macro:
                    rel_pointers_macro = rel_pointers_macro[:-2]
                rel_pointers_macro += '\ntext_script_rel_pointers '
            rel_pointers_macro += '%d, ' % rel_pointer_ids[p]
        rel_pointers_macro = rel_pointers_macro[:-2]
        script.append(rel_pointers_macro)
        for unit in self.units:
            # print(unit)
            if type(unit) is bytes:
                if len(unit) == 1 and unit[0] == 0xE6:
                    s = '\t' + get_cmd_macro(self.sects, unit)
                else:
                    s = '\t.string "%s"' % bn6f_str(unit, get_tbl())
                script.append(s)
            elif type(unit) is tuple:
                name = get_cmd_macro(self.sects, unit[0])
                s = '\t%s ' % name
                for param in unit[1]:
                    s += '0x%X, ' % param
                if unit[1]: s = s[:-2]
                script.append(s)
            elif type(unit) is int:
                script.append('text_script %d, scr_%d' % (unit, unit))

        return script, self.addr + self.size


def parse_text_script(config_ini_path, bin_path, address):
    #type (str, str, int) -> str
    sects = read_custom_ini(config_ini_path)
    units = [] # text script discrete string/cmd units
    rel_pointers = []
    end_addr = 0
    with open(bin_path, 'rb') as bin_file:
        bin_file.seek(address)
        rel_pointers = read_relative_pointers(bin_file, address)
        # for p in rel_pointers: print(hex(p) + ' ', end='');
        # print('')
        last_script_pointer = max(rel_pointers)
        end_script = False

        while bin_file.tell() < address + last_script_pointer or not end_script:
            #advance bytecode
            byte = bin_file.read(1)
            # read string
            string = b''
            while byte and (ord(byte) < 0xE5 or ord(byte) == 0xE6 or ord(byte) == 0xE9):
                # not a command, process string
                string = string + byte
                # separate strings by line
                if ord(byte) == 0xE9:
                    units.append(string)
                    string = b''
                if ord(byte) == 0xE6:
                    # FIXME: skips last commands in last script if they don't end in e6?
                    end_script = bin_file.tell() > address+last_script_pointer
                    break # this string terminates
                byte = bin_file.read(1)

            if string:
                units.append(string)
            if byte == b'':
                print('error: could not read byte')
                break
            # current bytecode command
            cmd = byte
            if ord(cmd) == 0xE6:
                continue # accounted for in string

            # handle control commands
            # only end at the end of the very last segment
            if not end_script:
                end_script = bin_file.tell() > address+last_script_pointer and ord(cmd) == 0xE6

            # read command parameters
            num_params = 0
            for i in range(4): # max number of bytes per command base
                num_params = get_param_count(sects, cmd)
                # print(cmd, num_params)
                if num_params >= 0:
                    break
                byte = bin_file.read(1)
                cmd = cmd + byte
            if num_params < 0:
                print("error: could not find number of parameters for ", cmd)
                units.append('***ERROR: %s***' % cmd)
                continue  # break
            params = bin_file.read(num_params)
            units.append((cmd, params))
        end_addr = bin_file.tell()

    # link relative pointers into units
    cur_idx = 2*len(rel_pointers)
    cur_id = 0
    linked_units = []
    for unit in units:
        if cur_idx in rel_pointers:
            linked_units.append(cur_id)
            cur_id += 1
        linked_units.append(unit)
        if type(unit) is bytes:
            cur_idx += len(unit)
        elif type(unit) is tuple:
            cur_idx += len(unit[0]) + len(unit[1])
        else:
            print('error: invalid unit detected: %s' % unit)
    units = linked_units

    # create Script object
    return TextScript(rel_pointers, units, address, end_addr-address,sects)

def get_unit_at(scr: TextScript, idx):
    curr_idx = 2*len(scr.rel_pointers)
    prev_idx = curr_idx
    prev_unit = scr.units[0]
    for unit in scr.units:
        if type(unit) != int:
            if prev_idx < idx < curr_idx:
                return prev_unit, prev_idx
            if idx == curr_idx:
                return unit, curr_idx
            prev_idx = curr_idx
            prev_unit = unit
            if type(unit) is bytes:
                curr_idx += len(unit)
            elif type(unit) is tuple:
                curr_idx += len(unit[0]) + len(unit[1])
            else:
                print('error: invalid unit detected: %s' % unit)
                return None
    return None


def read_script(ea, path='../../bn6f.ign', ini_path='mmbn6.ini'):
    # ensure ea is file relative
    ea &= ~0x8000000
    scr = parse_text_script(ini_path, path, ea)
    return scr.build()


def gen_macros(config_ini_path):
    sects = read_custom_ini(config_ini_path)
    macros = ''
    for sect in sects:
        if sect['section'] in ['Command', 'Extension']:
            base = []
            mask = []
            for b in sect['base'].split(' '): base.append(int(b, 16))
            for b in sect['mask'].split(' '): mask.append(int(b, 16))
            name = 'ts_'  + sect['name']
            # convert to snake case
            for c in name:
                if c.isupper():
                    name = name.replace(c, '_%c' % c.lower())
            # figure out how many parameters
            params = ''
            i = 0
            for b in mask:
                if b != 0xFF:
                    params += 'p%d:req, ' % i
                    i += 1
            if params.endswith(', '): params = params[:-2]
            macros += '.macro %s %s\n' % (name, params)
            # define base bytes
            bytes = '.byte '
            for b in base:
                bytes += '0x%X, ' % b
            bytes += params.replace('p', '\p').replace(':req', '')
            if bytes.endswith(', '): bytes = bytes[:-2]
            macros += '\t' + bytes + '\n'
            macros += '.endm\n'
    return macros

def error_print_usage():
    print('usage: text_script_dumper <address> [-i <rom_file>] [-d <ini_dir>]')
    exit(0)

def try_parse_int(s, b):
    try:
        return int(s, b)
    except ValueError:
        return None

def parse_switch(argv, i, flag):
    if argv[i] == flag:
        if len(argv) > i+1:
            return argv[i+1]
        else:
            error_print_usage()
    else:
        return None

def main(argv):
    # print(gen_macros('mmbn6.ini'))
    # exit(0)
    if len(argv) < 2:
        error_print_usage()

    address = try_parse_int(argv[1], 16)
    if address is None:
        error_print_usage()

    # parse optional arguments
    path = ini_dir = ''
    if len(argv) > 3:
        for i in range(2,len(argv)):
            arg = parse_switch(argv, i, '-i')
            if arg:
                print(arg)
                path = arg
                continue
            arg = parse_switch(argv, i, '-d')
            if arg:
                ini_dir = arg
                continue

    # defaults
    if not path: path = '../../bn6f.ign'

    if ini_dir and ini_dir[-1] != '/':
        ini_dir = ini_dir + '/'
    ini_path = ini_dir + 'mmbn6.ini'

    script, end_addr = read_script(int(sys.argv[1], 16), path, ini_path)

    for i in script:
        print('\t' + i)
    print(hex(end_addr))


if __name__ == '__main__':
    #import os; print(os.getcwd())
    import sys; main(sys.argv)
