	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876C0DC::
	.word 0x24600

	text_archive_start

	def_text_script CompText876C0DC_unk0
	ts_mugshot_show 0x9
	ts_msg_open
	.string "It was really noisy.\n"
	.string "Did something\n"
	.string "happen?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Nothing,huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I see..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876C0DC_unk1

	def_text_script CompText876C0DC_unk2

	def_text_script CompText876C0DC_unk3

	def_text_script CompText876C0DC_unk4

	def_text_script CompText876C0DC_unk5
	ts_mugshot_show 0xB
	ts_msg_open
	.string "AHHHHHH!!\n"
	.string "I don't get it!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x9
	.string "So you take this\n"
	.string "are and multiply\n"
	.string "it by the height."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Simple enough,right?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xB
	.string "Hmmmm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't get how\n"
	.string "get the area..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876C0DC_unk6
	ts_mugshot_show 0x9
	ts_msg_open
	.string "So this time you\n"
	.string "multiply the width\n"
	.string "times the length."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then you multiply\n"
	.string "it by the height."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xB
	.string "Uhh... My head feels\n"
	.string "like it's gonna\n"
	.string "explode..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876C0DC_unk7

	def_text_script CompText876C0DC_unk8

	def_text_script CompText876C0DC_unk9

	def_text_script CompText876C0DC_unk10
	ts_msg_open
	.string "A CopyBot..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It got damaged by an\n"
	.string "attack in battle...\n"
	.string "It can't move..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876C0DC_unk11
	ts_check_flag 0x76, 0xE, 0xA, 0xFF
	ts_mugshot_show 0x43
	ts_msg_open
	.string "Don't like it here!?\n"
	.string "Too bad!!"
	ts_key_wait 0x0
	ts_flag_set 0x75, 0xE
	ts_flag_set 0x15, 0x17
	ts_end

	