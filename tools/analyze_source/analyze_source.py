import os
import re
import argparse
import pickle
from enum import Enum
import copy
from collections import namedtuple
import functools
import time
import sys

import analyze_source

__all__ = ("NaN", "RAM_SECTIONS_SYMBOLS", "HARDWARE_CONSTANTS", "FileLine", "default_fileline", "global_fileline", "global_fileline_error", "global_fileline_msg", "fileline_error", "fileline_msg", "debug_print")

NaN = float("nan")
RAM_SECTIONS_SYMBOLS = set(("ewram_2000000", "ewram_t4_battle_objects", "ewram_2036860", "ewram_2038170", "iwram"))
HARDWARE_CONSTANTS = set(("VerticalCounter_LY_", "BG0Control", "Window0HorizontalDimensions", "MosaicSize", "ColorSpecialEffectsSelection", "Brightness_Fade_In_Out_Coefficient", "DMA0SourceAddress", "DMA0WordCount", "DMA1SourceAddress", "DMA1WordCount", "DMA2SourceAddress", "DMA2WordCount", "DMA3SourceAddress", "DMA3WordCount", "BG1X_Offset", "Undocumented_GreenSwap", "InterruptEnableRegister", "BG2Rotation_ScalingParameterA_dx_", "Channel1Sweepregister_NR10_", "Channel1Duty_Length_Envelope_NR11_NR12_", "Channel1Frequency_Control_NR13_NR14_", "Channel2Duty_Length_Envelope_NR21_NR22_", "Channel2Frequency_Control_NR23_NR24_", "Channel3Stop_WaveRAMselect_NR30_", "Channel3Length_Volume_NR31_NR32_", "Channel3Frequency_Control_NR33_NR34_", "Channel4Length_Envelope_NR41_NR42_", "Channel4Frequency_Control_NR43_NR44_", "ControlStereo_Volume_Enable_NR50_NR51_", "ControlMixing_DMAControl", "ControlSoundon_off_NR52_", "SoundPWMControl", "Channel3WavePatternRAM_2banks___", "dword_4000094", "dword_4000098", "dword_400009C", "ChannelAFIFO_Data0_3", "ChannelBFIFO_Data0_3", "DMA1DestinationAddress", "DMA1Control", "DMA2DestinationAddress", "DMA2Control", "DMA3DestinationAddress", "Timer0Counter_Reload", "Timer0Control", "Timer2Counter_Reload", "Timer2Control", "Timer3Counter_Reload", "Timer3Control", "SIOData0_Parent__Multi_PlayerMode_", "SIOData2_2ndChild__Multi_PlayerMode_", "SIOControlRegister", "SIOData_Normal_8bitandUARTMode_", "SIOModeSelect_GeneralPurposeData", "InterruptRequestFlags_IRQAcknowledge", "GamePakWaitstateControl", "InterruptMasterEnableRegister", "DMA0DestinationAddress", "GeneralLCDStatus_STAT_LYC_", "KeyStatus", "KeyInterruptControl", "unk_4000190", "unk_400020C"))
FileLine = namedtuple("FileLine", ("filename", "line_num"))
default_fileline = FileLine("default_fileline", 0)
global_fileline = default_fileline
syms = {}
scanned_files = {}

debug_file = None

class ScannedFilesAndSyms:
    __slots__ = ("scanned_files", "syms")

    def __init__(self, scanned_files, syms):
        self.scanned_files = scanned_files
        self.syms = syms

def global_fileline_error(error_msg):
    raise RuntimeError("%s:%s: %s" % (global_fileline.filename, global_fileline.line_num + 1, error_msg))

def global_fileline_msg(fileline_msg):
    debug_print("%s:%s: %s" % (global_fileline.filename, global_fileline.line_num + 1, fileline_msg))

def fileline_error(error_msg, fileline):
    raise RuntimeError("%s:%s: %s" % (fileline.filename, fileline.line_num + 1, error_msg))

def fileline_msg(fileline_msg, fileline):
    debug_print("%s:%s: %s" % (fileline.filename, fileline.line_num + 1, fileline_msg))

def debug_print(msg):
    if analyze_source.debug_file is not None:
        analyze_source.debug_file.write(msg + "\n")
    else:
        print(msg)

import analyzer
import datatypes
import opcodes
import parser
import readelf
import scanner
import multiprocessing
#from datatypes import DataType

def main():
    # argument parser
    ap = argparse.ArgumentParser()
    ap.add_argument("-l", "--load-from-file", dest="load_from_file")
    ap.add_argument("-c", "--cache", dest="cache")
    ap.add_argument("-p", "--path", dest="input_path")
    ap.add_argument("-m", "--make", dest="make", action="store_true")
    ap.add_argument("-d", "--debug-print", dest="debug_file")

    args = ap.parse_args()
    # if symfile is unspecified, use the rom name as the symfile name

    if args.debug_file is not None:
        analyze_source.debug_file = open(args.debug_file, "w+")

    output_path = os.getcwd()

    if args.input_path is None and os.path.basename(os.getcwd()) == "analyze_source":
        os.chdir("../..")
    elif args.input_path is not None:
        os.chdir(args.input_path)

    global syms
    global scanned_files

    if args.load_from_file is None:
        if args.make:
            syms = readelf.make_and_read_syms()
        else:
            syms = readelf.read_syms()
        input_files = ("rom.s", "iwram_code.s", "data.s")
        for input_file in input_files:
            scanner.recursive_scan_includes(input_file, scanned_files, syms)
            if args.cache is not None:
                cur_path = os.getcwd()
                os.chdir(output_path)
                with open(args.cache, "wb+") as f:
                    pickle.dump(ScannedFilesAndSyms(scanned_files, syms), f, protocol=pickle.HIGHEST_PROTOCOL)
                os.chdir(cur_path)
    else:
        cur_path = os.getcwd()
        os.chdir(output_path)
        with open(args.load_from_file, "rb") as f:
            scanned_files_and_syms = pickle.load(f)
            scanned_files = scanned_files_and_syms.scanned_files
            syms = scanned_files_and_syms.syms

        os.chdir(cur_path)

    #test_output = ""
    #scanned_files["asm/asm03_0.s"].line_type = LineType.UNCOMMENTED
    #test_output = "".join(line for line in scanned_files["asm/asm03_0.s"])
    #
    #with open("scanned_out_test.txt", "w+") as f:
    #    f.write(test_output)

    parser.set_syms_and_scanned_files(syms, scanned_files)
    analyzer.set_syms_and_scanned_files(syms, scanned_files)
    opcodes.set_syms_and_scanned_files(syms, scanned_files)
    datatypes.set_syms_and_scanned_files(syms, scanned_files)
    analyzer.read_jumptable("T1BattleObjectJumptable")

def print_post_output_info(start_time):
    post_output = ""

    sorted_function_counts = sorted(analyzer.function_counts.items(), key=lambda x: x[1], reverse=True)
    for function_name_and_count in sorted_function_counts:
        post_output += "%s: %s\n" % (function_name_and_count[0], function_name_and_count[1])
    execution_time = time.time() - start_time
    post_output += "Execution time: %s" % execution_time
    debug_print(post_output)
    if analyze_source.debug_file is not None:
        analyze_source.debug_file.close()

if __name__ == "__main__":
    start_time = time.time()
    multiprocessing.set_start_method("spawn") 
    try:
        main()
    except:
        for i in range(5):
            print('\a')
            time.sleep(0.4)
        print_post_output_info(start_time)
        raise RuntimeError
    print_post_output_info(start_time)
