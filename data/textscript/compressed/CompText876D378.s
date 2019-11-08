	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText876D378::
	.word 0x19100

	text_archive_start

	def_text_script CompText876D378_unk0
	ts_check_chapter 0x21, 0x21, 0x5, 0xFF
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Got it!?\n"
	.string "No more graffiti\n"
	.string "on the walls!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xA
	.string "I'm..ss....sss...\n"
	.string "ssoooorrryyy....\n"
	.string "*sniffle sniffle*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876D378_unk1
	ts_check_chapter 0x21, 0x21, 0x6, 0xFF
	ts_mugshot_show 0xA
	ts_msg_open
	.string "*sniffle sniffle*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Alright... Quit\n"
	.string "crying... You can\n"
	.string "go home now..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xA
	.string "*sniffle sniffle*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876D378_unk2

	def_text_script CompText876D378_unk3

	def_text_script CompText876D378_unk4

	def_text_script CompText876D378_unk5
	ts_mugshot_show 0x16
	ts_msg_open
	.string "Enough crying...\n"
	.string "Run on home now..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xA
	.string "*sniffle sniffle*"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText876D378_unk6
	ts_mugshot_show 0xA
	ts_msg_open
	.string "*sniffle sniffle*"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Now you are making\n"
	.string "me want to cry...!!"
	ts_key_wait 0x0
	ts_end

	