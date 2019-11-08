	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876CE60::
	.word 0x44100

	text_archive_start

	def_text_script CompText876CE60_unk0
	ts_check_flag 0x68, 0x11, 0x2, 0xFF
	ts_check_flag 0x66, 0x11, 0x1, 0xFF
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "You...\n"
	.string "You took my request!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...My Navi was\n"
	.string "deleted by a virus\n"
	.string "on the Net!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "When it happened,my\n"
	.string "Navi's data was\n"
	.string "blown off someplace."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then when I was\n"
	.string "dreaming,my Navi\n"
	.string "appeared and cried"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"It's cold...\n"
	.string " I'm lonely...\""
	ts_key_wait 0x0
	ts_clear_msg
	.string "My request is that\n"
	.string "someone find out\n"
	.string "what happened to my"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Navi...\n"
	.string "The Net is too\n"
	.string "big for me..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Do you have any\n"
	.string "clues?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1A
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "Oh yeah!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Everytime my Navi\n"
	.string "appears in my dream,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it comes face to\n"
	.string "face with a giant\n"
	.string "horned skull..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder what that\n"
	.string "means..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's not a great\n"
	.string "clue,but is it OK?\n"
	.string "Can you help me?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I'll do something!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1A
	.string "Please help..."
	ts_key_wait 0x0
	ts_flag_set 0x66, 0x11
	ts_end

	def_text_script CompText876CE60_unk1
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "Everytime my Navi\n"
	.string "appears in my dream,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it comes face to\n"
	.string "face with a giant\n"
	.string "horned skull..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder what that\n"
	.string "means..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876CE60_unk2
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Ma'am,here..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_take 0x3F, 0x1
	.string "Lan gave:\n"
	.string "\""
	ts_print_item 0x3, 0xF0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1A
	.string "Ahhh... This is...\n"
	.string "my Navi's..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thank you so much.\n"
	.string "Here is a small\n"
	.string "token of my thanks."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_navi_cust_program 0x3C, 0x1, 0x3
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_navi_cust_program5 0x0, 0xF0
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait 0x0
	ts_clear_msg
	ts_flag_set 0x69, 0x11
	ts_mugshot_hide
	.string "Request Points\n"
	ts_call_request_points_buffer
	ts_print_buffer03 0x1, 0x1
	.string " Points!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_call_request_points_add
	ts_call_request_finish
	ts_mugshot_show 0x1A
	.string "Now I can finally\n"
	.string "sleep easy..."
	ts_key_wait 0x0
	ts_end

	