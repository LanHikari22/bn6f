	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879E4C4::
	.word 0xC600

	text_archive_start

	def_text_script CompText879E4C4_unk0
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "That virus really\n"
	.string "surprised me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You've got great\n"
	.string "technique!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879E4C4_unk1
	ts_mugshot_show 0x41
	ts_msg_open
	.string "...Hmm...\n"
	.string "I guess it's time\n"
	.string "to jack out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879E4C4_unk2
	ts_mugshot_show 0x3F
	ts_msg_open
	.string "...What!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "Just kidding!!"
	ts_key_wait 0x0
	ts_end

	