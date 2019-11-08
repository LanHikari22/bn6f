	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8794EC0::
	.word 0x4FC00

	text_archive_start

	def_text_script CompText8794EC0_unk0
	ts_check_flag 0xD4, 0xC, 0x2, 0xFF
	ts_check_flag 0xD3, 0xC, 0x1, 0xFF
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THANK YOU VERY MUCH!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... I'D BETTER GET\n"
	.string "GOING."
	ts_key_wait 0x0
	ts_clear_msg
	.string "IF I DON'T GET THIS\n"
	.string "PACKAGE TO ROLL..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Well,I'm going to\n"
	.string "see Roll,so I can\n"
	.string "give it to her!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "YOU WOULD DO THAT\n"
	.string "FOR ME?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "THANK YOU SO MUCH!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "HERE YOU GO..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x1B, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x1, 0xB0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_flag_set 0xD3, 0xC
	ts_clear_msg
	ts_mugshot_show 0x3C
	.string "THANKS AGAIN!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794EC0_unk1
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THANKS AGAIN!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794EC0_unk2
	ts_mugshot_show 0x3C
	ts_msg_open
	.string "THE PACKAGE GOT TO\n"
	.string "HER,RIGHT?\n"
	.string "THANKS AGAIN!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794EC0_unk3

	def_text_script CompText8794EC0_unk4

	def_text_script CompText8794EC0_unk5

	def_text_script CompText8794EC0_unk6

	def_text_script CompText8794EC0_unk7

	def_text_script CompText8794EC0_unk8

	def_text_script CompText8794EC0_unk9

	def_text_script CompText8794EC0_unk10
	ts_check_flag 0x1A, 0xC, 0x14, 0xFF
	ts_check_flag 0x14, 0xC, 0xF, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Well,well,well!!\n"
	.string "If it isn't MegaMan!\n"
	.string "It's been a while!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "... Oh yeah! I saw\n"
	.string "your commercial!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's so awesome!\n"
	.string "I really felt it,\n"
	.string "right here!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794EC0_unk11
	ts_check_flag 0x1A, 0xC, 0x15, 0xFF
	ts_check_flag 0x14, 0xC, 0x10, 0xFF
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "You're Lan Hikari's\n"
	.string "Navi,right? How long\n"
	.string "has it been!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh,that's right!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I saw you in that\n"
	.string "commercial the\n"
	.string "other day!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You were much cooler\n"
	.string "in that than you\n"
	.string "used to be!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794EC0_unk12

	def_text_script CompText8794EC0_unk13

	def_text_script CompText8794EC0_unk14

	def_text_script CompText8794EC0_unk15
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Hey,what's wrong?\n"
	.string "You don't look so\n"
	.string "good..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What!? Roll and the\n"
	.string "others were taken!?\n"
	.string "... That's terrible!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794EC0_unk16
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "What was that fuss\n"
	.string "just now? Did some-\n"
	.string "thing happen...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794EC0_unk17

	def_text_script CompText8794EC0_unk18

	def_text_script CompText8794EC0_unk19

	def_text_script CompText8794EC0_unk20
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "Roll and the others\n"
	.string "made it back OK,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "now we don't know\n"
	.string "where MegaMan is.\n"
	.string "I'm worried for him."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8794EC0_unk21
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "Is it true that no\n"
	.string "one knows where"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lan Hikari's Navi\n"
	.string "is...?"
	ts_key_wait 0x0
	ts_end

	