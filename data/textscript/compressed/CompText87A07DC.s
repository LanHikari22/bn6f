	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87A07DC::
	.word 0x3CF00

	text_archive_start

	def_text_script CompText87A07DC_unk0
	ts_check_flag 0x1A, 0x11, 0x4, 0xFF
	ts_check_flag 0x19, 0x11, 0x1, 0xFF
	ts_flag_set 0x19, 0x11
	ts_mugshot_show 0x46
	ts_msg_open
	.string "Hey ya...\n"
	.string "Do you have a\n"
	.string "\""
	ts_print_chip1 0x5, 0xF0
	.string " "
	ts_print_code 0x0, 0x10
	.string "\"?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you have one,\n"
	.string "care to trade for\n"
	.string "a \""
	ts_print_chip1 0x7, 0xF0
	.string " "
	ts_print_code 0x0, 0xB0
	.string "\"?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "How bout it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x46
	.string "Really? No way!\n"
	.string "I can't believe it!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A07DC_unk1
	ts_mugshot_show 0x46
	ts_msg_open
	.string "WHHHAATTT!?\n"
	.string "Is that really..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "How's about you\n"
	.string "trade me a\n"
	.string "\""
	ts_print_chip1 0x5, 0xF0
	.string " "
	ts_print_code 0x0, 0x10
	.string "\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "for my\n"
	.string "\""
	ts_print_chip1 0x7, 0xF0
	.string " "
	ts_print_code 0x0, 0xB0
	.string "\"?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x7
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0x2, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0x46
	.string "WHHHAATTT!? NO WAY!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A07DC_unk2
	ts_check_pack_chip_code 0x5F, 0x0, 0x1, 0x1, 0xFF, 0xFF, 0x3
	ts_mugshot_show 0x46
	ts_msg_open
	.string "Really!? Really!?\n"
	.string "I really want this\n"
	.string "chip!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now it's my turn..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_take_chip 0x5F, 0x0, 0x1, 0x1
	ts_item_give_chip 0x7F, 0x0, 0xB, 0x1
	ts_player_animate_scene 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_chip1 0x7, 0xF0
	.string " "
	ts_print_code 0x0, 0xB0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x46
	.string "Isn't \""
	ts_print_chip1 0x5, 0xF0
	.string " "
	ts_print_code 0x0, 0x10
	.string "\"\n"
	.string "cool?"
	ts_key_wait 0x0
	ts_flag_set 0x1A, 0x11
	ts_end

	def_text_script CompText87A07DC_unk3
	ts_mugshot_show 0x46
	ts_msg_open
	.string "...?\n"
	.string "I can't find a\n"
	.string "\""
	ts_print_chip1 0x5, 0xF0
	.string " "
	ts_print_code 0x0, 0x10
	.string "\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You wouldn't happen\n"
	.string "to have one in your\n"
	.string "folder,would ya?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you have one,\n"
	.string "would you like to\n"
	.string "trade...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't have one?\n"
	.string "Too bad..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come back if you get\n"
	.string "a \""
	ts_print_chip1 0x5, 0xF0
	.string " "
	ts_print_code 0x0, 0x10
	.string "\"!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A07DC_unk4
	ts_mugshot_show 0x46
	ts_msg_open
	.string "Isn't \""
	ts_print_chip1 0x5, 0xF0
	.string " "
	ts_print_code 0x0, 0x10
	.string "\"\n"
	.string "cool?\n"
	.string "It's sooooo cute!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText87A07DC_unk5

	def_text_script CompText87A07DC_unk6

	def_text_script CompText87A07DC_unk7

	def_text_script CompText87A07DC_unk8

	def_text_script CompText87A07DC_unk9

	def_text_script CompText87A07DC_unk10
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "...I AM THE"
	ts_key_wait 0x0
	ts_clear_msg
	.string "AIR CONDITIONER\n"
	.string "PROGRAM..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...MY JOB IS TO\n"
	.string "LOWER THE\n"
	.string "TEMPERATURE!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "EVERYONE SAYS I HAVE\n"
	.string "A COLD PERSONALITY,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "BUT I DON'T AGREE\n"
	.string "AT ALL..."
	ts_key_wait 0x0
	ts_end

	