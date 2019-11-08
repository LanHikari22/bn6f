	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText878FA4C::
	.word 0x8C600

	text_archive_start

	def_text_script CompText878FA4C_unk0
	ts_check_flag 0x67, 0x8, 0x1, 0xFF
	ts_flag_set 0x67, 0x8
	ts_msg_open
	ts_mugshot_show 0x3E
	.string "Welcome to the\n"
	.string "Green Town NetCafe!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Courtroom\n"
	.string "entry permits?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Of course you can\n"
	.string "apply for those\n"
	.string "here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What is your\n"
	.string "Operator's name?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Lan Hikari."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "OK... Lan Hikari..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "OK... You are on\n"
	.string "the list..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me give you\n"
	.string "the AuthData."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0xE, 0x1
	ts_player_animate_object 0x18
	ts_print_current_navi
	.string " got:\n"
	.string "\""
	ts_print_item 0x0, 0xE0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "If you take a PET\n"
	.string "containing this data\n"
	.string "to the Court Foyer,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the ID machine\n"
	.string "will automatically"
	ts_key_wait 0x0
	ts_clear_msg
	.string "identify you as\n"
	.string "Lan Hikari."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you do not have\n"
	.string "the PET with the\n"
	.string "data installed,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the ID machine will\n"
	.string "reject you,so please\n"
	.string "exercise due care."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Got it!\n"
	.string "Thank you!"
	ts_key_wait 0x0
	ts_flag_set 0x74, 0x8
	ts_end

	def_text_script CompText878FA4C_unk1
	ts_msg_open
	ts_mugshot_show 0x3E
	.string "If you take a PET\n"
	.string "loaded with Court\n"
	.string "Entry AuthData to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the ID machine\n"
	.string "installed inside\n"
	.string "the Court Foyer,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it'll automatically\n"
	.string "identify you as\n"
	.string "Lan Hikari."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you do not have\n"
	.string "the PET with the\n"
	.string "data installed,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "the ID machine will\n"
	.string "reject you,so please\n"
	.string "exercise due care."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FA4C_unk2

	def_text_script CompText878FA4C_unk3

	def_text_script CompText878FA4C_unk4

	def_text_script CompText878FA4C_unk5
	ts_mugshot_show 0x40
	ts_msg_open
	.string "Time to water the\n"
	.string "plants!\n"
	.string "Fa-lalalala!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It's been said...\n"
	.string "You can't treat\n"
	.string "plants roughly!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That is the law\n"
	.string "here in Green Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FA4C_unk6
	ts_mugshot_show 0x46
	ts_msg_open
	ts_text_speed 0x1
	.string "OHHH!!\n"
	.string "This is awful!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x41
	.string "Calm down!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What kind of\n"
	.string "fraud are you a\n"
	.string "victim of?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Tell me all the\n"
	.string "details!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you don't tell\n"
	.string "me everything we\n"
	.string "can't sue!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x46
	ts_text_speed 0x1
	.string "Aaarrr!! I'm so mad!\n"
	.string "I can't calm down!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I mean,if you hate\n"
	.string "someone,you just\n"
	.string "hate them!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yaaaaahhh!!\n"
	.string "This is absolutely\n"
	.string "100% terribly awful!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_text_speed 0x2
	ts_mugshot_show 0x41
	.string "There's no\n"
	.string "helping this one..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FA4C_unk7
	ts_mugshot_show 0x40
	ts_msg_open
	.string "That Navi there has\n"
	.string "been the victim of\n"
	.string "all sorts of fraud."
	ts_key_wait 0x0
	ts_clear_msg
	.string "A lawyer tried to\n"
	.string "get the details,\n"
	.string "but apparently that"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Navi was more than\n"
	.string "the lawyer could\n"
	.string "handle!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FA4C_unk8

	def_text_script CompText878FA4C_unk9

	def_text_script CompText878FA4C_unk10
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Tell me the details\n"
	.string "of the robbery as\n"
	.string "calmly as you can..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "What was stolen?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x46
	.string "He stole my...my..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "HE STOLE MY HEART!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "This isn't just\n"
	.string "some..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "silly crush is it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x46
	.string "Don't say that!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I feel completely\n"
	.string "hollow inside!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He stole my heart!\n"
	.string "He's a real\n"
	.string "criminal!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "Impossible..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FA4C_unk11
	ts_mugshot_show 0x40
	ts_msg_open
	.string "That lawyer over\n"
	.string "there is really\n"
	.string "up a creek..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Their conversation\n"
	.string "has gone straight\n"
	.string "to the toilet..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText878FA4C_unk12
	ts_mugshot_show 0x40
	ts_msg_open
	.string "I heard that there\n"
	.string "is an enormous tree\n"
	.string "in Green Area2..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I wonder where in\n"
	.string "the world it is!?\n"
	.string "I'd love to see it!"
	ts_key_wait 0x0
	ts_end

	