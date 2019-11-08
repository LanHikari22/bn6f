	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText879BF6C::
	.word 0xD9200

	text_archive_start

	def_text_script CompText879BF6C_unk0
	ts_check_flag 0x63, 0x8, 0x1, 0xFF
	ts_flag_set 0x63, 0x8
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Huh? What are we\n"
	.string "doing?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We are studying\n"
	.string "for the bar exam\n"
	.string "to be lawyers."
	ts_key_wait 0x0
	ts_clear_msg
	.string "We call our group\n"
	.string "\"Lawyers in the\n"
	.string " Making\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We are making our\n"
	.string "future by studying."
	ts_key_wait 0x0
	ts_clear_msg
	.string "And the goal of\n"
	.string "our studies is to\n"
	.string "become lawyers!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Are you planning\n"
	.string "on becoming a\n"
	.string "lawyer too?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Umm... Nope...\n"
	.string "But that's not\n"
	.string "a bad thing!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "So then you must\n"
	.string "want to be a\n"
	.string "judge?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't recommend\n"
	.string "trying to become\n"
	.string "a judge..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Not many people\n"
	.string "pass the judge's\n"
	.string "test..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You should try to\n"
	.string "become a lawyer!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We'll let you in\n"
	.string "our group cheap!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "Hahaha...\n"
	.string "Maybe next time!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879BF6C_unk1
	ts_mugshot_show 0x41
	ts_msg_open
	.string "Want to try and\n"
	.string "become a lawyer?\n"
	.string "You can join"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Lawyers in the\n"
	.string " Making\"!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you join now\n"
	.string "the membership fee\n"
	.string "will be discounted!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879BF6C_unk2
	ts_check_flag 0x7C, 0x8, 0x3, 0xFF
	ts_mugshot_show 0x41
	ts_msg_open
	.string "You changed your\n"
	.string "mind?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You'd like to\n"
	.string "become a lawyer\n"
	.string "and join"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Lawyers in the\n"
	.string " Making\"!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0x8
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Yes  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " No"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_mugshot_show 0x41
	.string "I forgot to mention\n"
	.string "the membership fee\n"
	.string "is 1000 Zennys."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "It's that much?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "If you think of\n"
	.string "how much you'd make\n"
	.string "as a lawyer,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "it's really\n"
	.string "a bargain!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "...OK."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_position_option_horizontal 0xD
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Pay  "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't pay"
	ts_select 0x6, 0x80, 0xFF, 0x6, 0xFF
	ts_check_take_zenny 0xE8, 0x3, 0x0, 0x0, 0xFF, 0xB, 0xB
	.string "MegaMan paid\n"
	.string "1000 Zennys."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x41
	.string "Now you are a\n"
	.string "member of \"Lawyers\n"
	.string "in the Making\"!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you keep\n"
	.string "studying here,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you too will become\n"
	.string "a specialist in the\n"
	.string "law."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do your best!!\n"
	.string "Someday you'll be\n"
	.string "a lawyer!!"
	ts_key_wait 0x0
	ts_flag_set 0x7C, 0x8
	ts_end

	def_text_script CompText879BF6C_unk3
	ts_mugshot_show 0x41
	ts_msg_open
	.string "If you keep\n"
	.string "studying here,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "you too will become\n"
	.string "a specialist in the\n"
	.string "law."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Do your best!!\n"
	.string "Someday you'll be\n"
	.string "a lawyer!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879BF6C_unk4
	ts_check_flag 0x73, 0x8, 0x5, 0xFF
	ts_flag_set 0x73, 0x8
	ts_mugshot_show 0x41
	ts_msg_open
	.string "AHH! You're here!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "\"Lawyers in the\n"
	.string " Making\" is always\n"
	.string "open!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Study whenever\n"
	.string "you'd like!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Huh?\n"
	.string "What?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "NetNavi Rights?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Yes,they do have\n"
	.string "those,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and it is covered\n"
	.string "by Green Town Law\n"
	.string "No.153,I believe."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's the kind of\n"
	.string "zeal for studying\n"
	.string "we like to see!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm so pleased!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879BF6C_unk5
	ts_mugshot_show 0x41
	ts_msg_open
	.string "NetNavi Rights\n"
	.string "should be covered\n"
	.string "by Green Town Law"
	ts_key_wait 0x0
	ts_clear_msg
	.string "No.153 if my memory\n"
	.string "serves me correctly."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That's the kind of\n"
	.string "zeal for studying\n"
	.string "we like to see!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm so pleased!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879BF6C_unk6
	ts_mugshot_show 0x41
	ts_msg_open
	.string "...That's a shame..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879BF6C_unk7
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "...Hmmm..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So sneaking a snack\n"
	.string "isn't a crime..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That makes perfect\n"
	.string "sense!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x40
	.string "Don't jump to\n"
	.string "conclusions!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you snuck a\n"
	.string "snack of caviar..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That would be a\n"
	.string "first-class crime!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "Hmmm...\n"
	.string "I suppose you're\n"
	.string "right."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But wait a second!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What if the caviar\n"
	.string "that was snuck as a\n"
	.string "snack was expired?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The person who snuck\n"
	.string "that snack would\n"
	.string "feel awfully sick!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then it would be\n"
	.string "a crime against the\n"
	.string "snack sneaker!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x40
	.string "Hmmmm...\n"
	.string "A compelling\n"
	.string "argument indeed!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879BF6C_unk8
	ts_check_flag 0x66, 0x8, 0x7, 0xFF
	ts_check_flag 0x7C, 0x8, 0xFF, 0x7
	ts_check_flag 0x65, 0x8, 0x9, 0xFF
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "A new member?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Pleased to meet\n"
	.string "you!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you ever need\n"
	.string "help just ask me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "What happens if you\n"
	.string "hit a Mr.Prog on\n"
	.string "the head?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I know I just\n"
	.string "studied this..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "Hmm."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "."
	ts_wait 0x1E, 0x0
	.string "Hmm"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh! I remember!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If you hit a\n"
	.string "Mr.Prog on the\n"
	.string "head,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The punishment is\n"
	.string "something that is\n"
	.string "infuriating!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "It's true! Really!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The last time I hit\n"
	.string "one,the punishment\n"
	.string "got me so mad!!"
	ts_key_wait 0x0
	ts_flag_set 0x65, 0x8
	ts_end

	def_text_script CompText879BF6C_unk9
	ts_mugshot_show 0x3E
	ts_msg_open
	.string "If you hit a\n"
	.string "Mr.Prog on the\n"
	.string "head..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The punishment is\n"
	.string "something that is\n"
	.string "infuriating!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x37
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x3E
	.string "It's true! Really!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The last time I hit\n"
	.string "one,the punishment\n"
	.string "got me so mad!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879BF6C_unk10
	ts_check_flag 0x7C, 0x8, 0xFF, 0x7
	ts_mugshot_show 0x40
	ts_msg_open
	.string "...I found out\n"
	.string "about this a while\n"
	.string "ago...I hear those"
	ts_key_wait 0x0
	ts_clear_msg
	.string "who pick up Zennys\n"
	.string "on the ground\n"
	.string "without reporting it"
	ts_key_wait 0x0
	ts_clear_msg
	.string "are tickled as their\n"
	.string "punishment!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That sounds\n"
	.string "terrible..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText879BF6C_unk11
	ts_mugshot_show 0x41
	ts_msg_open
	.string "...Not enough\n"
	.string "here..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The membership fee\n"
	.string "is a rule,so come"
	ts_key_wait 0x0
	ts_clear_msg
	.string "back when you've\n"
	.string "saved enough money."
	ts_key_wait 0x0
	ts_end

	