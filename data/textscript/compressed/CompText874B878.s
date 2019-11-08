	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874B878::
	.word 0x65700

	text_archive_start

	def_text_script CompText874B878_unk0
	ts_check_chapter 0x15, 0x16, 0x5F, 0xFF
	ts_check_chapter 0x14, 0x14, 0x50, 0xFF
	ts_check_chapter 0x12, 0x13, 0x41, 0xFF
	ts_check_chapter 0x10, 0x11, 0x32, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk1

	def_text_script CompText874B878_unk2

	def_text_script CompText874B878_unk3

	def_text_script CompText874B878_unk4

	def_text_script CompText874B878_unk5

	def_text_script CompText874B878_unk6

	def_text_script CompText874B878_unk7

	def_text_script CompText874B878_unk8

	def_text_script CompText874B878_unk9

	def_text_script CompText874B878_unk10

	def_text_script CompText874B878_unk11

	def_text_script CompText874B878_unk12

	def_text_script CompText874B878_unk13

	def_text_script CompText874B878_unk14

	def_text_script CompText874B878_unk15

	def_text_script CompText874B878_unk16

	def_text_script CompText874B878_unk17

	def_text_script CompText874B878_unk18

	def_text_script CompText874B878_unk19

	def_text_script CompText874B878_unk20

	def_text_script CompText874B878_unk21

	def_text_script CompText874B878_unk22

	def_text_script CompText874B878_unk23

	def_text_script CompText874B878_unk24

	def_text_script CompText874B878_unk25

	def_text_script CompText874B878_unk26

	def_text_script CompText874B878_unk27

	def_text_script CompText874B878_unk28

	def_text_script CompText874B878_unk29

	def_text_script CompText874B878_unk30

	def_text_script CompText874B878_unk31

	def_text_script CompText874B878_unk32

	def_text_script CompText874B878_unk33

	def_text_script CompText874B878_unk34

	def_text_script CompText874B878_unk35

	def_text_script CompText874B878_unk36

	def_text_script CompText874B878_unk37

	def_text_script CompText874B878_unk38

	def_text_script CompText874B878_unk39

	def_text_script CompText874B878_unk40

	def_text_script CompText874B878_unk41

	def_text_script CompText874B878_unk42

	def_text_script CompText874B878_unk43

	def_text_script CompText874B878_unk44

	def_text_script CompText874B878_unk45

	def_text_script CompText874B878_unk46

	def_text_script CompText874B878_unk47

	def_text_script CompText874B878_unk48

	def_text_script CompText874B878_unk49

	def_text_script CompText874B878_unk50
	ts_check_flag 0xA, 0x5, 0x3A, 0xFF
	ts_check_flag 0x8, 0x5, 0x39, 0xFF
	ts_check_flag 0x42, 0x5, 0x38, 0xFF
	ts_check_flag 0x41, 0x5, 0x37, 0xFF
	ts_check_flag 0x4, 0x5, 0x36, 0xFF
	ts_check_flag 0x3F, 0x5, 0x35, 0xFF
	ts_check_flag 0x3D, 0x5, 0x34, 0xFF
	ts_check_flag 0x3C, 0x5, 0x33, 0xFF
	ts_end

	def_text_script CompText874B878_unk51
	ts_end

	def_text_script CompText874B878_unk52
	ts_end

	def_text_script CompText874B878_unk53
	ts_end

	def_text_script CompText874B878_unk54
	ts_end

	def_text_script CompText874B878_unk55
	ts_end

	def_text_script CompText874B878_unk56
	ts_end

	def_text_script CompText874B878_unk57
	ts_end

	def_text_script CompText874B878_unk58
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go find the\n"
	.string "BBS in SeasideArea1,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk59

	def_text_script CompText874B878_unk60

	def_text_script CompText874B878_unk61

	def_text_script CompText874B878_unk62

	def_text_script CompText874B878_unk63

	def_text_script CompText874B878_unk64

	def_text_script CompText874B878_unk65
	ts_check_flag 0x16, 0x5, 0x49, 0xFF
	ts_check_flag 0x54, 0x5, 0x48, 0xFF
	ts_check_flag 0x14, 0x5, 0x47, 0xFF
	ts_check_flag 0x44, 0x5, 0x46, 0xFF
	ts_check_flag 0x12, 0x5, 0x45, 0xFF
	ts_check_flag 0x10, 0x5, 0x44, 0xFF
	ts_check_flag 0xE, 0x5, 0x43, 0xFF
	ts_check_flag 0x43, 0x5, 0x42, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go tell Mick\n"
	.string "what we found out\n"
	.string "about the penguin!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk66
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We'd better head on\n"
	.string "over to the meeting\n"
	.string "point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk67
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta get back\n"
	.string "to Seaside Town..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk68
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk69
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to where\n"
	.string "we said we'd meet\n"
	.string "Mick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk70
	ts_check_sub_area 0x3, 0x3, 0x4A, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head back to\n"
	.string "Seaside Town..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk71
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's check out the\n"
	.string "Aquarium!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk72
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The show's about to\n"
	.string "start! Hurry up and\n"
	.string "jack out,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk73
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Well,if that's how\n"
	.string "Mick feels about\n"
	.string "it..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Guess we should just\n"
	.string "go home for today..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk74
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,\n"
	.string "and let's go to the\n"
	.string "Aquarium!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk75

	def_text_script CompText874B878_unk76

	def_text_script CompText874B878_unk77

	def_text_script CompText874B878_unk78

	def_text_script CompText874B878_unk79

	def_text_script CompText874B878_unk80
	ts_check_flag 0x2A, 0x5, 0x57, 0xFF
	ts_check_flag 0x28, 0x5, 0x51, 0xFF
	ts_check_flag 0x26, 0x5, 0x56, 0xFF
	ts_check_flag 0x24, 0x5, 0x55, 0xFF
	ts_check_flag 0x22, 0x5, 0x54, 0xFF
	ts_check_flag 0x1E, 0x5, 0x53, 0xFF
	ts_check_flag 0x55, 0x5, 0x52, 0xFF
	ts_check_flag 0x1C, 0x5, 0x51, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've gotta hurry\n"
	.string "after Mick!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk81
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk82
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "If we don't return\n"
	.string "the Aquarium back to\n"
	.string "normal,who knows...!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk83
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan! We\n"
	.string "have to find Fanny's\n"
	.string "play ball fast!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk84
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... What was she\n"
	.string "trying to tell us?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Hurry,MegaMan,and\n"
	.string "jack out!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk85
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's use this\n"
	.string "CopyBot and get back\n"
	.string "to the large tank!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk86
	ts_mugshot_show 0x0
	ts_msg_open
	.string "It looks like we can\n"
	.string "get Fanny to move\n"
	.string "with this play ball!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Jack out,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk87
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "Hurry! We've gotta\n"
	.string "save everybody!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874B878_unk88

	def_text_script CompText874B878_unk89

	def_text_script CompText874B878_unk90

	def_text_script CompText874B878_unk91

	def_text_script CompText874B878_unk92

	def_text_script CompText874B878_unk93

	def_text_script CompText874B878_unk94

	def_text_script CompText874B878_unk95
	ts_check_flag 0x38, 0x5, 0x60, 0xFF
	ts_end

	def_text_script CompText874B878_unk96
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for bed..."
	ts_key_wait 0x0
	ts_end

	