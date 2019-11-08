	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8766BFC::
	.word 0x287300

	text_archive_start

	def_text_script CompText8766BFC_unk0
	ts_check_flag 0xA0, 0x1C, 0x2, 0xFF
	ts_jump 3

	def_text_script CompText8766BFC_unk1
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,\n"
	.string "school starts\n"
	.string "tomorrow!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk2
	ts_check_flag 0x20, 0x1D, 0xFF, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan!\n"
	.string "Go read your mail!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk3
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! Try talking\n"
	.string "to lots of other\n"
	.string "people..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk4
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,where are you\n"
	.string "going!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You don't have\n"
	.string "anything to do\n"
	.string "there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk5
	ts_msg_open
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x75, 0x1
	.string "*Woof!* "
	ts_wait 0x8, 0x0
	ts_sound_play00 0x75, 0x1
	.string "*Woof!!*"
	ts_wait 0x8, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	.string "A RoboDog...\n"
	.string "You can jack into\n"
	.string "it!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk6

	def_text_script CompText8766BFC_unk7

	def_text_script CompText8766BFC_unk8

	def_text_script CompText8766BFC_unk9

	def_text_script CompText8766BFC_unk10
	ts_mugshot_show 0x37
	ts_msg_open
	.string "This is the LevBus,\n"
	.string "but you don't need\n"
	.string "to use it now."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk11
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Isn't it time for\n"
	.string "bed now?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk12
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Isn't it time for\n"
	.string "bed now?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk13

	def_text_script CompText8766BFC_unk14

	def_text_script CompText8766BFC_unk15

	def_text_script CompText8766BFC_unk16

	def_text_script CompText8766BFC_unk17

	def_text_script CompText8766BFC_unk18

	def_text_script CompText8766BFC_unk19

	def_text_script CompText8766BFC_unk20
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! Let's pay close\n"
	.string "attention to what\n"
	.string "Mom is saying!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk21

	def_text_script CompText8766BFC_unk22

	def_text_script CompText8766BFC_unk23

	def_text_script CompText8766BFC_unk24

	def_text_script CompText8766BFC_unk25

	def_text_script CompText8766BFC_unk26

	def_text_script CompText8766BFC_unk27

	def_text_script CompText8766BFC_unk28

	def_text_script CompText8766BFC_unk29

	def_text_script CompText8766BFC_unk30
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! Let's hurry\n"
	.string "up and get back\n"
	.string "home quick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk31

	def_text_script CompText8766BFC_unk32

	def_text_script CompText8766BFC_unk33

	def_text_script CompText8766BFC_unk34

	def_text_script CompText8766BFC_unk35
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go say hi\n"
	.string "to the other\n"
	.string "people here!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk36
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go say hi\n"
	.string "to the other\n"
	.string "people here!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk37
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go say hi\n"
	.string "to the other\n"
	.string "people here!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk38
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go say hi\n"
	.string "to the other\n"
	.string "people here!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk39

	def_text_script CompText8766BFC_unk40
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,getting on the\n"
	.string "front is dangerous!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's find another\n"
	.string "way!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk41

	def_text_script CompText8766BFC_unk42

	def_text_script CompText8766BFC_unk43

	def_text_script CompText8766BFC_unk44

	def_text_script CompText8766BFC_unk45

	def_text_script CompText8766BFC_unk46

	def_text_script CompText8766BFC_unk47

	def_text_script CompText8766BFC_unk48

	def_text_script CompText8766BFC_unk49

	def_text_script CompText8766BFC_unk50
	ts_check_shop_stock 0xF, 0xFF, 0x34
	ts_mugshot_show 0x10
	ts_msg_open
	.string "I'm going to offload\n"
	.string "my SubChips soon..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Want to look?\n"
	ts_position_option_horizontal 0xB
	ts_option 0x0, 0x11, 0x0
	ts_space 0x1
	.string " Look "
	ts_option 0x0, 0x0, 0x11
	ts_space 0x1
	.string " Don't look "
	ts_select 0x6, 0x0, 0xFF, 0x33, 0xFF
	ts_start_shop 0xF

	def_text_script CompText8766BFC_unk51
	ts_clear_msg
	.string "They say,\"Giving is\n"
	.string "its own reward\"..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Too bad you don't\n"
	.string "want anything..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk52
	ts_mugshot_show 0x10
	ts_msg_open
	.string "Now that I think of\n"
	.string "it,I don't have that\n"
	.string "one right now..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk53

	def_text_script CompText8766BFC_unk54

	def_text_script CompText8766BFC_unk55

	def_text_script CompText8766BFC_unk56

	def_text_script CompText8766BFC_unk57

	def_text_script CompText8766BFC_unk58

	def_text_script CompText8766BFC_unk59

	def_text_script CompText8766BFC_unk60

	def_text_script CompText8766BFC_unk61

	def_text_script CompText8766BFC_unk62

	def_text_script CompText8766BFC_unk63

	def_text_script CompText8766BFC_unk64

	def_text_script CompText8766BFC_unk65

	def_text_script CompText8766BFC_unk66

	def_text_script CompText8766BFC_unk67

	def_text_script CompText8766BFC_unk68

	def_text_script CompText8766BFC_unk69

	def_text_script CompText8766BFC_unk70

	def_text_script CompText8766BFC_unk71

	def_text_script CompText8766BFC_unk72

	def_text_script CompText8766BFC_unk73

	def_text_script CompText8766BFC_unk74

	def_text_script CompText8766BFC_unk75

	def_text_script CompText8766BFC_unk76

	def_text_script CompText8766BFC_unk77

	def_text_script CompText8766BFC_unk78

	def_text_script CompText8766BFC_unk79

	def_text_script CompText8766BFC_unk80

	def_text_script CompText8766BFC_unk81

	def_text_script CompText8766BFC_unk82

	def_text_script CompText8766BFC_unk83

	def_text_script CompText8766BFC_unk84

	def_text_script CompText8766BFC_unk85

	def_text_script CompText8766BFC_unk86

	def_text_script CompText8766BFC_unk87

	def_text_script CompText8766BFC_unk88

	def_text_script CompText8766BFC_unk89

	def_text_script CompText8766BFC_unk90

	def_text_script CompText8766BFC_unk91

	def_text_script CompText8766BFC_unk92

	def_text_script CompText8766BFC_unk93

	def_text_script CompText8766BFC_unk94

	def_text_script CompText8766BFC_unk95

	def_text_script CompText8766BFC_unk96

	def_text_script CompText8766BFC_unk97

	def_text_script CompText8766BFC_unk98

	def_text_script CompText8766BFC_unk99

	def_text_script CompText8766BFC_unk100
	ts_check_flag 0xB, 0x11, 0x67, 0xFF
	ts_check_flag 0xC, 0x11, 0x66, 0xFF
	ts_check_flag 0xA, 0x11, 0x65, 0xFF
	ts_flag_set 0xA, 0x11
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "Ahhh,you came here\n"
	.string "about my request?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "A while back when\n"
	.string "I was doing some\n"
	.string "volunteer work,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I lost the old\n"
	.string "PcktWtch my\n"
	.string "husband gave me..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I was weeding near\n"
	.string "a tree on the\n"
	.string "side of the road..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I don't\n"
	.string "remember exactly\n"
	.string "which tree it was..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Maybe you can find\n"
	.string "it with what I've\n"
	.string "told you..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The PcktWtch is\n"
	.string "really irreplaceable\n"
	.string "it..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "It holds memories\n"
	.string "of your husband..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1A
	.string "My husband is still\n"
	.string "as lively as ever!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't jinx him!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "But please find\n"
	.string "the watch for me..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "OK..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk101
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "I was weeding near\n"
	.string "a tree on the\n"
	.string "side of the road..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I don't\n"
	.string "remember exactly\n"
	.string "which tree it was..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Please help me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk102
	ts_flag_set 0xB, 0x11
	ts_item_take 0x1D, 0x1
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "Ahh! This is it!\n"
	.string "This is my PcktWtch!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I couldn't face my\n"
	.string "husband since I\n"
	.string "lost the watch..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But now I can look\n"
	.string "him in the eye\n"
	.string "again!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I know it's not a\n"
	.string "huge reward,but this\n"
	.string "is for you!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x73, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x7, 0x30
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	.string "Regular memory\n"
	.string "increased by\n"
	.string "2 MB!!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1A
	.string "Thank you!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 0x1, 0x1
	.string " Points!"
	ts_key_wait 0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText8766BFC_unk103
	ts_mugshot_show 0x1A
	ts_msg_open
	.string "This PcktWtch\n"
	.string "is worth a lot of\n"
	.string "money you know!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk104
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Something's shining?\n"
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "."
	ts_wait_skip 0x1E, 0x0
	.string "Ah-ha!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x1D, 0x1
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x1, 0xD0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Alright! Let's get\n"
	.string "back to the old\n"
	.string "lady!"
	ts_key_wait 0x0
	ts_flag_set 0xC, 0x11
	ts_end

	def_text_script CompText8766BFC_unk105
	ts_check_flag 0x18, 0x11, 0x6D, 0xFF
	ts_check_flag 0x17, 0x11, 0x6A, 0xFF
	ts_flag_set 0x17, 0x11
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Ahh! You!\n"
	.string "You look like you've\n"
	.string "got tons of chips!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "That reminds me...\n"
	.string "Do you have a\n"
	.string "\""
	ts_print_chip1 0xB, 0x30
	.string " "
	ts_print_code 0x0, 0x70
	.string "\" chip?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Would you like to\n"
	.string "trade it for my\n"
	.string "\""
	ts_print_chip1 0x3, 0x20
	.string " "
	ts_print_code 0x0, 0xC0
	.string "\" chip?"
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
	ts_select 0x6, 0x80, 0x6B, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0xD
	.string "I see...\n"
	.string "That's too bad..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk106
	ts_mugshot_show 0xD
	ts_msg_open
	.string "You look like you've\n"
	.string "got tons of chips!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I bet you've got a\n"
	.string "\""
	ts_print_chip1 0xB, 0x30
	.string " "
	ts_print_code 0x0, 0x70
	.string "\" chip!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "And you came to\n"
	.string "trade it for my\n"
	.string "\""
	ts_print_chip1 0x3, 0x20
	.string " "
	ts_print_code 0x0, 0xC0
	.string "\" chip?"
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
	ts_select 0x6, 0x80, 0x6B, 0xFF, 0xFF
	ts_clear_msg
	ts_mugshot_show 0xD
	.string "What?\n"
	.string "I see..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk107
	ts_check_pack_chip_code 0xB3, 0x0, 0x7, 0x1, 0xFF, 0xFF, 0x6C
	ts_item_take_chip 0xB3, 0x0, 0x7, 0x1
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Awesome!\n"
	.string "You'll trade with me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Great..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So here's my chip..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0x32, 0x0, 0xC, 0x1
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 0x3, 0x20
	.string " "
	ts_print_code 0x0, 0xC0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0xD
	.string "I accidentally put\n"
	.string "this chip into a\n"
	.string "Chip Trader!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I really liked it\n"
	.string "so I decided I had to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "get it back!\n"
	.string "Thanks!"
	ts_key_wait 0x0
	ts_flag_set 0x18, 0x11
	ts_end

	def_text_script CompText8766BFC_unk108
	ts_mugshot_show 0xD
	ts_msg_open
	.string "You don't seem to\n"
	.string "have that chip. Is\n"
	.string "it in your folder?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Since you don't have\n"
	.string "the chip,we can't\n"
	.string "trade..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Come back when\n"
	.string "you've got a\n"
	.string "\""
	ts_print_chip1 0xB, 0x30
	.string " "
	ts_print_code 0x0, 0x70
	.string "\"!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk109
	ts_mugshot_show 0xD
	ts_msg_open
	.string "Thanks for the chip!\n"
	.string "Good luck with your\n"
	.string "collection!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk110
	ts_check_flag 0x19, 0x12, 0x6F, 0xFF
	ts_flag_set 0x19, 0x12
	ts_mugshot_show 0xF
	ts_msg_open
	.string "What can I do!?\n"
	.string "It's work after all!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Doesn't saying that\n"
	.string "mean all you'll do\n"
	.string "is play golf!?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xF
	.string "It is part of my\n"
	.string "job!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "You weren't like\n"
	.string "this before..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xF
	.string "That was then..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I feel the\n"
	.string "same way about you!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Well it's settled\n"
	.string "then...\n"
	.string "We're splitting up!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Whoa! Wait a second!\n"
	.string "Don't rush things!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xF
	.string "...Who are you?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "It doesn't matter\n"
	.string "who I am..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Just look at this..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_take 0x2E, 0x1
	.string "Lan gave:\n"
	.string "\""
	ts_print_item 0x2, 0xE0
	.string "\"!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xF
	.string "...This flower..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "...a tulip..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xF
	.string "...Why'd you give\n"
	.string "this to us?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Someone asked me\n"
	.string "to... Your son!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "He wanted you to\n"
	.string "see this and\n"
	.string "remember the past..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xF
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "......"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xF
	.string "I didn't realize..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The person hurting\n"
	.string "the most after our\n"
	.string "fights is our son."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Yeah..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xF
	.string "I'm sorry I lost\n"
	.string "my temper..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "I'm sorry too..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk111
	ts_mugshot_show 0xF
	ts_msg_open
	.string "I'm sorry I lost\n"
	.string "my temper..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "I'm sorry too..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk112

	def_text_script CompText8766BFC_unk113

	def_text_script CompText8766BFC_unk114

	def_text_script CompText8766BFC_unk115

	def_text_script CompText8766BFC_unk116

	def_text_script CompText8766BFC_unk117

	def_text_script CompText8766BFC_unk118

	def_text_script CompText8766BFC_unk119

	def_text_script CompText8766BFC_unk120
	ts_check_flag 0x5B, 0x11, 0x7B, 0xFF
	ts_check_flag 0x19, 0x12, 0x7A, 0xFF
	ts_check_flag 0x5C, 0x11, 0x7C, 0xFF
	ts_check_flag 0x5A, 0x11, 0x79, 0xFF
	ts_flag_set 0x5A, 0x11
	ts_mugshot_show 0xB
	ts_msg_open
	.string "Ahh! You came here\n"
	.string "for my request!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me tell you\n"
	.string "about it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Lately,all my\n"
	.string "parents do is\n"
	.string "fight and fight!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Everytime they make\n"
	.string "up,all they do is\n"
	.string "fight again..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "So I want to do\n"
	.string "something to help\n"
	.string "them get better..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "That is why I want\n"
	.string "you to go find some\n"
	.string "flowers..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Why flowers?\n"
	.string "Well,when my dad\n"
	.string "proposed to my mom,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "he also gave her\n"
	.string "flowers..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I show them\n"
	.string "those flowers,they\n"
	.string "should make up..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...The problem is I\n"
	.string "have no idea what"
	ts_key_wait 0x0
	ts_clear_msg
	.string "kind of flowers\n"
	.string "to get!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like you to\n"
	.string "find out which ones\n"
	.string "to get..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "OK,but when was it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xB
	.string "My parents got\n"
	.string "married 10 years\n"
	.string "ago..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope that is\n"
	.string "enough for you to\n"
	.string "help me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk121
	ts_mugshot_show 0xB
	ts_msg_open
	.string "Well,when my dad\n"
	.string "proposed to my mom,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "he also gave her\n"
	.string "flowers..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "If I show them\n"
	.string "those flowers,they\n"
	.string "should make up..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "...The problem is I\n"
	.string "have no idea what"
	ts_key_wait 0x0
	ts_clear_msg
	.string "kind of flowers\n"
	.string "to get!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'd like you to\n"
	.string "find out which ones\n"
	.string "to get..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "My parents got\n"
	.string "married 10 years\n"
	.string "ago..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I hope that is\n"
	.string "enough for you to\n"
	.string "help me..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk122
	ts_flag_set 0x5B, 0x11
	ts_mugshot_show 0xB
	ts_msg_open
	.string "Th-Thank you!\n"
	.string "My parents quit\n"
	.string "fighting!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I guess they aren't\n"
	.string "100% back to\n"
	.string "normal..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I can take\n"
	.string "care of the rest!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Here is your\n"
	.string "reward!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give 0x3C, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_item 0x3, 0xC0
	.string "\"!!"
	ts_player_finish
	ts_player_reset_object
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xB
	.string "The tulips might\n"
	.string "have hitched my\n"
	.string "parents,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but now I am the\n"
	.string "link that holds\n"
	.string "them together!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 0x1, 0x1
	.string " Points!"
	ts_key_wait 0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText8766BFC_unk123
	ts_mugshot_show 0xB
	ts_msg_open
	.string "The tulips might\n"
	.string "have hitched my\n"
	.string "parents,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "but now I am the\n"
	.string "link that holds\n"
	.string "them together!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk124
	ts_mugshot_show 0xB
	ts_msg_open
	.string "Mom! Dad!\n"
	.string "Stop it!!\n"
	.string "Not here!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk125
	ts_check_flag 0xCC, 0x11, 0x80, 0xFF
	ts_check_flag 0xBC, 0x11, 0x7E, 0xFF
	ts_flag_set 0xBC, 0x11
	ts_mugshot_show 0x16
	ts_msg_open
	.string "You took my\n"
	.string "request..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "You're an elementary\n"
	.string "school student\n"
	.string "right? Hmm..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Why did you say\n"
	.string "\"Hmm...\"?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Well,my request\n"
	.string "can't be solved by\n"
	.string "someone like you..."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "You shouldn't judge\n"
	.string "a book by its\n"
	.string "cover!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let me hear your\n"
	.string "request please!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Alright...\n"
	.string "You can just hear\n"
	.string "it,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Today,a group of\n"
	.string "5 evil Navis came\n"
	.string "here..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "They are the\n"
	.string "suspects in the\n"
	.string "virus scattering"
	ts_key_wait 0x0
	ts_clear_msg
	.string "incident that took\n"
	.string "place 6 months ago\n"
	.string "in CentralArea."
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "So you'd like\n"
	.string "someone to track\n"
	.string "them down?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "Yeah... But you\n"
	.string "can't really do\n"
	.string "it,can you?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Leave it to me!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I may look little,\n"
	.string "but I'm confident\n"
	.string "as a NetBattler!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So today I'm going\n"
	.string "to stop those evil\n"
	.string "Navis!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "OK... I'll let you\n"
	.string "handle it then."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But if it gets\n"
	.string "dangerous,don't\n"
	.string "overdo it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The suspects should\n"
	.string "be going between\n"
	.string "CentralArea1 & 3."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Be careful..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk126
	ts_check_flag 0xC7, 0x11, 0xFF, 0x7F
	ts_check_flag 0xC8, 0x11, 0xFF, 0x7F
	ts_check_flag 0xC9, 0x11, 0xFF, 0x7F
	ts_check_flag 0xCA, 0x11, 0xFF, 0x7F
	ts_check_flag 0xCB, 0x11, 0xFF, 0x7F
	ts_flag_set 0xCC, 0x11
	ts_mugshot_show 0x16
	ts_msg_open
	.string "I just heard from\n"
	.string "the NetPolice!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "They arrested all\n"
	.string "of the Evil Navis!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You really do have\n"
	.string "quite a bit of\n"
	.string "skill,huh?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Sorry I under-\n"
	.string "estimated your\n"
	.string "strength!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You are no little\n"
	.string "kid!\n"
	.string "Here's your reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_navi_cust_program 0xC, 0x1, 0x1
	ts_player_animate_object 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_navi_cust_program5 0x0, 0x30
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_object
	ts_clear_msg
	ts_mugshot_show 0x16
	.string "I think adults have\n"
	.string "to reconsider\n"
	.string "things..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Thanks!\n"
	.string "You really helped!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 0x1, 0x1
	.string " Points!"
	ts_key_wait 0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText8766BFC_unk127
	ts_mugshot_show 0x16
	ts_msg_open
	.string "I need your help..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But if things get\n"
	.string "dangerous,you get\n"
	.string "out of there,OK?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The suspects should\n"
	.string "be going between\n"
	.string "CentralArea1 & 3."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Be careful..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk128
	ts_mugshot_show 0x16
	ts_msg_open
	.string "We in the\n"
	.string "NetPolice have to"
	ts_key_wait 0x0
	ts_clear_msg
	.string "raise our game to\n"
	.string "be as good as\n"
	.string "NetBattlers!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk129

	def_text_script CompText8766BFC_unk130
	ts_check_flag 0xD0, 0x11, 0x84, 0xFF
	ts_check_flag 0xCF, 0x11, 0x83, 0xFF
	ts_flag_set 0xCF, 0x11
	ts_mugshot_show 0xA
	ts_msg_open
	.string "What do you want?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "I just wanted to\n"
	.string "see what you were\n"
	.string "doing by yourself!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Don't you play with\n"
	.string "friends from school?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xA
	.string "...Everyone from\n"
	.string "school is using the\n"
	.string "Net now..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Since I'm no good at\n"
	.string "virus busting,they\n"
	.string "don't let me play."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But I don't care!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've got a great\n"
	.string "friend in this\n"
	.string "RoboDog,Pooch!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Right Pooch?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_sound_disable_text_sfx
	ts_control_lock
	ts_sound_play00 0x75, 0x1
	.string "*Woof!*"
	ts_wait 0x10, 0x0
	ts_sound_play00 0x75, 0x1
	.string " *Woof!!*"
	ts_wait 0x10, 0x0
	ts_sound_enable_text_sfx
	ts_control_unlock
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "...Do you hate\n"
	.string "school?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xA
	.string "...I don't like it.\n"
	.string "And I hate virus\n"
	.string "busting class!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "The teacher always\n"
	.string "makes me do things\n"
	.string "in front of class!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I always fail,and\n"
	.string "it makes me look\n"
	.string "stupid!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "...Your teacher\n"
	.string "just wants you to\n"
	.string "get better is all!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xA
	.string "No way! My teacher\n"
	.string "knows inside that\n"
	.string "I hate it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I don't want to\n"
	.string "go to class\n"
	.string "anymore!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "But if you don't\n"
	.string "learn,you can never"
	ts_key_wait 0x0
	ts_clear_msg
	.string "use the Net\n"
	.string "with people from\n"
	.string "school!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xA
	.string "I don't care if I\n"
	.string "can't use it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I just want to be\n"
	.string "by myself with\n"
	.string "Pooch!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "...Right Pooch?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "."
	ts_wait 0x28, 0x0
	.string "."
	ts_wait 0x28, 0x0
	.string "."
	ts_wait 0x28, 0x0
	.string "Pooch?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hey! Pooch! What's\n"
	.string "the matter!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Oh no! He can't move\n"
	.string "anymore!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Huh!? He was just\n"
	.string "moving a second ago!\n"
	.string "What happened?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0xA
	.string "Nooooo!! Poochhhh!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Don't cry!\n"
	.string "I'll do something!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk131
	ts_mugshot_show 0xA
	ts_msg_open
	.string "Oh no! Pooch can't\n"
	.string "move anymore!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Nooooo!! Poochhhh!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Don't cry!\n"
	.string "I'll do something!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk132
	ts_mugshot_show 0xA
	ts_msg_open
	.string "I'm going to try\n"
	.string "and get better at\n"
	.string "NetBattling!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Then I can protect\n"
	.string "Pooch!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk133

	def_text_script CompText8766BFC_unk134

	def_text_script CompText8766BFC_unk135

	def_text_script CompText8766BFC_unk136

	def_text_script CompText8766BFC_unk137

	def_text_script CompText8766BFC_unk138

	def_text_script CompText8766BFC_unk139

	def_text_script CompText8766BFC_unk140
	ts_check_flag 0xDE, 0x11, 0x8F, 0xFF
	ts_check_flag 0xDD, 0x11, 0x90, 0xFF
	ts_flag_set 0xDD, 0x11
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Yo,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "This time,the\n"
	.string "requestor is me,\n"
	.string "Mr.Famous!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "A request from\n"
	.string "Mr.Famous...\n"
	.string "I'm so excited!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x1C
	.string "Alright,let's get\n"
	.string "down to business!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "At the Virus\n"
	.string "Research Lab in\n"
	.string "the SciLabs,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "viruses sample\n"
	.string "have escaped..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "My investigation\n"
	.string "tells me that the\n"
	.string "viruses have gone"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to either Central\n"
	.string "Town or Seaside \n"
	.string "Town..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "These viruses\n"
	.string "naturally love\n"
	.string "electronics."
	ts_key_wait 0x0
	ts_clear_msg
	.string "The number of high\n"
	.string "tech machines in\n"
	.string "Cyber City is"
	ts_key_wait 0x0
	ts_clear_msg
	.string "rising,thus it's\n"
	.string "a natural magnet\n"
	.string "for viruses."
	ts_key_wait 0x0
	ts_clear_msg
	.string "These terrible\n"
	.string "viruses are probably\n"
	.string "infecting comps now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If left out in the\n"
	.string "wild,it would be\n"
	.string "awful!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So that's why they\n"
	.string "must be deleted\n"
	.string "immediately..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I need someone who\n"
	.string "knows the area for"
	ts_key_wait 0x0
	ts_clear_msg
	.string "this job,and you're\n"
	.string "it!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "There should only\n"
	.string "be 5 viruses out\n"
	.string "there..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Can you handle it?"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_show 0x0
	.string "Central Town and\n"
	.string "Seaside Town..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Inside electronic\n"
	.string "comps..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Got it!\n"
	.string "I'll give it a\n"
	.string "shot!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk141
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Sample viruses\n"
	.string "have escaped..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "My investigation\n"
	.string "tells me that the\n"
	.string "viruses have gone"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to either Central\n"
	.string "Town or Seaside \n"
	.string "Town..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "These viruses\n"
	.string "naturally love\n"
	.string "electronics."
	ts_key_wait 0x0
	ts_clear_msg
	.string "There should only\n"
	.string "be 5 viruses out\n"
	.string "there! Delete them!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk142
	ts_flag_set 0xDE, 0x11
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Seems like you\n"
	.string "deleted all of the\n"
	.string "viruses!!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "You are truly\n"
	.string "amazing,Lan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Asking you to take\n"
	.string "care of this was\n"
	.string "a smart decision!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Now for your reward!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	ts_item_give_chip 0xAD, 0x0, 0x1A, 0x1
	ts_player_animate_scene 0x18
	.string "Lan got:\n"
	.string "\""
	ts_print_chip1 0xA, 0xD0
	.string " "
	ts_print_code 0x1, 0xA0
	.string "\"!!"
	ts_key_wait 0x0
	ts_player_finish
	ts_player_reset_scene
	ts_clear_msg
	ts_mugshot_show 0x1C
	.string "Even in Cyber City,\n"
	.string "your skill is\n"
	.string "truly amazing!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I am looking forward\n"
	.string "to seeing you grow\n"
	.string "in the future!!"
	ts_key_wait 0x0
	ts_clear_msg
	ts_mugshot_hide
	.string "Request Point\n"
	ts_call_request_points_buffer
	ts_print_buffer03 0x1, 0x1
	.string " Points!"
	ts_key_wait 0x0
	ts_call_request_points_add
	ts_call_request_finish
	ts_end

	def_text_script CompText8766BFC_unk143
	ts_mugshot_show 0x1C
	ts_msg_open
	.string "Daily training is\n"
	.string "critical for\n"
	.string "virus busting!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm looking forward\n"
	.string "to watching you\n"
	.string "improve your skills!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8766BFC_unk144
	ts_check_flag 0xE3, 0x11, 0xFF, 0x8D
	ts_check_flag 0xE2, 0x11, 0xFF, 0x8D
	ts_check_flag 0xE1, 0x11, 0xFF, 0x8D
	ts_check_flag 0xE0, 0x11, 0xFF, 0x8D
	ts_check_flag 0xDF, 0x11, 0xFF, 0x8D
	ts_jump 142

	