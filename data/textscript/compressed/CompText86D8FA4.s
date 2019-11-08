	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText86D8FA4::
	.word 0x17600

	text_archive_start

	def_text_script CompText86D8FA4_unk0
	ts_check_game_version 0xFF, 0x1
	ts_position_text 0x33, 0x3C, 0x3
	ts_text_speed 0x0
	ts_position_mugshot 0x19, 0x50
	ts_mugshot_show 0x37
	ts_position_box 0x0, 0x6, 0x0
	ts_msg_open
	.string "You got the top\n"
	.string "record,Lan! It's\n"
	ts_print_buffer03 0xC1, 0x1
	.string ":"
	ts_print_buffer03 0xC2, 0x2
	.string ":"
	ts_print_buffer03 0xC2, 0x3
	.string "!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D8FA4_unk1
	ts_position_text 0x33, 0x3C, 0x3
	ts_text_speed 0x0
	ts_position_mugshot 0x19, 0x50
	ts_mugshot_show 0x37
	ts_position_box 0x0, 0x6, 0x0
	ts_msg_open
	.string "You got the top\n"
	.string "record,Lan! It's\n"
	ts_print_buffer03 0xC1, 0x1
	.string ":"
	ts_print_buffer03 0xC2, 0x2
	.string ":"
	ts_print_buffer03 0xC2, 0x3
	.string "!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D8FA4_unk2
	ts_check_game_version 0xFF, 0x3
	ts_position_text 0x33, 0x3C, 0x3
	ts_text_speed 0x0
	ts_position_mugshot 0x19, 0x50
	ts_mugshot_show 0x37
	ts_position_box 0x0, 0x6, 0x0
	ts_msg_open
	.string "The top record is\n"
	ts_print_buffer03 0xC1, 0x1
	.string ":"
	ts_print_buffer03 0xC2, 0x2
	.string ":"
	ts_print_buffer03 0xC2, 0x3
	.string ".\n"
	ts_position_option_horizontal 0xC
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Return  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Delete"
	ts_select 0x6, 0x60, 0xFF, 0xFF, 0xFF
	ts_msg_close
	ts_wait_hold 0x0, 0x0

	def_text_script CompText86D8FA4_unk3
	ts_position_text 0x33, 0x3C, 0x3
	ts_text_speed 0x0
	ts_position_mugshot 0x19, 0x50
	ts_mugshot_show 0x37
	ts_position_box 0x0, 0x6, 0x0
	ts_msg_open
	.string "The top record is\n"
	ts_print_buffer03 0xC1, 0x1
	.string ":"
	ts_print_buffer03 0xC2, 0x2
	.string ":"
	ts_print_buffer03 0xC2, 0x3
	.string ".\n"
	ts_position_option_horizontal 0xC
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Return  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Delete"
	ts_select 0x6, 0x60, 0xFF, 0xFF, 0xFF
	ts_msg_close
	ts_wait_hold 0x0, 0x0

	