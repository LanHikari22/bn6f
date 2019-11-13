	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87F2094::
	.word 0x80700

	text_archive_start

	def_text_script CompText87F2094_unk0
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "What will you order?\n"
	.string "L/R Button:Turn Page\n"
	.string "B Button:Quit"
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk1
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "What will you do?\n"
	.string "L/R Button:Turn Page\n"
	.string "B Button:Quit"
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk2
	ts_check_flag 0x1D, 0x17, 0xFF, 0x12
	ts_check_navi_all 0xFF, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Leaving already?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk3
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Come back soon!!"
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk4

	def_text_script CompText87F2094_unk5
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "You'd like to buy\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk6
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Let me check with my\n"
	.string "special supplier..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "This is AsterLand.\n"
	.string "Can you transmit the\n"
	.string "chip we sent please?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Ok,go ahead and \n"
	.string "transmit! Thanks!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "Yep,got 'em!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk7
	ts_check_chapter 0x30, 0x30, 0x14, 0xFF
	ts_check_flag 0x1D, 0x17, 0xFF, 0x14
	ts_check_navi_all 0xFF, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I bought\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk8
	ts_check_chapter 0x30, 0x30, 0x15, 0xFF
	ts_check_flag 0x1D, 0x17, 0xFF, 0x15
	ts_check_navi_all 0xFF, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Not enough\n"
	.string "Zennys..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk9
	ts_check_chapter 0x30, 0x30, 0x16, 0xFF
	ts_check_flag 0x1D, 0x17, 0xFF, 0x16
	ts_check_navi_all 0xFF, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16, 0x16
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x37
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I can't carry\n"
	.string "any more."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk10
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "We're sold out!\n"
	.string "Thank you for\n"
	.string "shopping here!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk11

	def_text_script CompText87F2094_unk12

	def_text_script CompText87F2094_unk13
	ts_clear_msg
	.string " ボ$"

	def_text_script CompText87F2094_unk14
	ts_clear_msg
	.string " ボ[z]$"

	def_text_script CompText87F2094_unk15
	ts_clear_msg
	.string " ボ[z]$"

	def_text_script CompText87F2094_unk16
	ts_end

	def_text_script CompText87F2094_unk17
	.string "-------$"

	def_text_script CompText87F2094_unk18
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Time to leave?\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string "Exit  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string "Keep Looking"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk19

	def_text_script CompText87F2094_unk20
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I bought a new chip!\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk21
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Oops! I don't have\n"
	.string "enough Zennys!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk22
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x0
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Yikes! I can't carry\n"
	.string "any more!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk23

	def_text_script CompText87F2094_unk24
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string "\"?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me check on it!\n"
	.string "Uh-huh... I see..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk25
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string "\"?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me check on it!\n"
	.string "Uh-huh... I see..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk26
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string "\"...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Never heard of it.\n"
	.string "Let me check around."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk27
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I've got some of\n"
	.string "that chip in code:\n"
	.string "\""
	ts_print_code 0x0, 0x2
	.string "\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It will be "
	ts_print_buffer03 0x0, 0x3
	.string "Z.\n"
	.string "Is that ok?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_sound_disable_choice_sfx
	ts_select 0x6, 0x0, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk28
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	ts_sound_play00 0x69, 0x0
	.string "Ahh... It looks like\n"
	.string "I don't have any of\n"
	.string "that chip in-stock."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk29
	ts_call_disable_mugshot_brighten
	ts_mugshot_show 0x33
	ts_msg_open_quick
	ts_text_speed 0x0
	ts_sound_play00 0x69, 0x0
	.string "Yep...seems like I\n"
	.string "don't have any."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you sure that\n"
	.string "chip really exists?"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk30

	def_text_script CompText87F2094_unk31

	def_text_script CompText87F2094_unk32
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Leave the store?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk33

	def_text_script CompText87F2094_unk34

	def_text_script CompText87F2094_unk35

	def_text_script CompText87F2094_unk36

	def_text_script CompText87F2094_unk37
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I purchased\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk38
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "ゼニーがたりないよ[A]だ・・・"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0
	.string "Not enough Zennys..."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk39
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "光ーこれいじょ[A] もてないぞ"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0
	.string "Hikari,I can't\n"
	.string "carry anymore."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk40

	def_text_script CompText87F2094_unk41

	def_text_script CompText87F2094_unk42

	def_text_script CompText87F2094_unk43

	def_text_script CompText87F2094_unk44

	def_text_script CompText87F2094_unk45

	def_text_script CompText87F2094_unk46

	def_text_script CompText87F2094_unk47

	def_text_script CompText87F2094_unk48

	def_text_script CompText87F2094_unk49

	def_text_script CompText87F2094_unk50

	def_text_script CompText87F2094_unk51

	def_text_script CompText87F2094_unk52
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "Exit this shop?\n"
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x40, 0xFF, 0xFF, 0xFF
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk53

	def_text_script CompText87F2094_unk54

	def_text_script CompText87F2094_unk55

	def_text_script CompText87F2094_unk56

	def_text_script CompText87F2094_unk57
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I acquired\n"
	.string "\""
	ts_print_chip1 0x0, 0x1
	.string " "
	ts_print_code 0x0, 0x2
	.string "\"!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk58
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "I don't have enough\n"
	.string "Zennys!"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk59
	ts_call_disable_mugshot_brighten
	ts_msg_open_quick
	ts_text_speed 0x0
	.string "光熱斗ーこれいじょ[A] もてないぞ"
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0
	.string "Lan,I can't carry\n"
	.string "any more than this."
	ts_key_wait 0x0
	ts_wait_hold 0x0, 0x0

	def_text_script CompText87F2094_unk60

	def_text_script CompText87F2094_unk61

	def_text_script CompText87F2094_unk62

	