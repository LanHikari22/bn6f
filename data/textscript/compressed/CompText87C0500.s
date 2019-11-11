	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87C0500::
	.word 0x28C00

	text_archive_start

	def_text_script CompText87C0500_unk0
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I won't let you have\n"
	.string "the Force Program!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 1

	def_text_script CompText87C0500_unk1
	ts_mugshot_show 0x56
	ts_msg_open
	.string "PIPIPI...\n"
	.string "(Hahaha...)"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PIKIRIRAPIKIRA\n"
	.string "(Too bad,because)"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PIRIRURIKIRIRI\n"
	.string "PIRIRI\n"
	.string "(I've already got)"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PIRIKIRIRIRARIRI!\n"
	.string "(the Force Program!)"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 2

	def_text_script CompText87C0500_unk2
	ts_mugshot_show 0x37
	ts_msg_open
	.string "What!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 3

	def_text_script CompText87C0500_unk3
	ts_mugshot_show 0x2E
	ts_msg_open
	.string "ElementMan!\n"
	.string "Delete that Navi!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 4

	def_text_script CompText87C0500_unk4
	ts_mugshot_show 0x56
	ts_msg_open
	.string "PIKIRARAPIKIRA...\n"
	.string "(Roger...)"
	ts_key_wait 0x0
	ts_clear_msg
	.string "KIKIRAPIRA PIKIRIRA\n"
	.string "(You'll be deleted)"
	ts_key_wait 0x0
	ts_clear_msg
	.string "RAKIRIPIRA!\n"
	.string "(here and now!)"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 5

	def_text_script CompText87C0500_unk5
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We're not that easy\n"
	.string "to beat!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 6

	def_text_script CompText87C0500_unk6
	ts_mugshot_show 0x56
	ts_msg_open
	.string "PIKKURU!\n"
	.string "(Hmph!)"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PIKIRIRARI\n"
	.string "PIRIRIRAKIRI\n"
	.string "(You have spirit,)"
	ts_key_wait 0x0
	ts_clear_msg
	.string "PIRARII!\n"
	.string "(but you're\n"
	.string " going down!)"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 7

	def_text_script CompText87C0500_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Here he comes,\n"
	.string "MegaMan!\n"
	.string "Battle routine,set!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 8

	def_text_script CompText87C0500_unk8
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Execute!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_jump 9

	def_text_script CompText87C0500_unk9
	ts_mugshot_show 0x56
	ts_msg_open
	.string "PIKIRIIRU!\n"
	.string "(I'll delete you!)"
	ts_key_wait 0x0
	ts_end

	