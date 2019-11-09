	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874E6E0::
	.word 0x11E000

	text_archive_start

	def_text_script CompText874E6E0_unk0
	ts_check_chapter 0x80, 0x80, 0xDC, 0xFF
	ts_check_chapter 0x57, 0x57, 0xBE, 0xFF
	ts_check_chapter 0x56, 0x56, 0xB4, 0xFF
	ts_check_chapter 0x52, 0x52, 0x87, 0xFF
	ts_check_chapter 0x51, 0x51, 0x73, 0xFF
	ts_check_chapter 0x50, 0x50, 0x64, 0xFF
	ts_check_chapter 0x43, 0x46, 0xF, 0xFF
	ts_check_chapter 0x40, 0x42, 0x5, 0xFF
	ts_msg_open
	.string "Dummy text"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk1

	def_text_script CompText874E6E0_unk2

	def_text_script CompText874E6E0_unk3

	def_text_script CompText874E6E0_unk4

	def_text_script CompText874E6E0_unk5
	ts_check_flag 0xA, 0xA, 0xA, 0xFF
	ts_check_flag 0x8, 0xA, 0x9, 0xFF
	ts_check_flag 0x62, 0xA, 0x8, 0xFF
	ts_check_flag 0x6, 0xA, 0x7, 0xFF
	ts_check_flag 0x60, 0xA, 0x6, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to Sky\n"
	.string "Town,MegaMan! We can\n"
	.string "go by LevBus,right!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk6
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head for Sky\n"
	.string "Town MegaMan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk7
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head back to Sky\n"
	.string "Town,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk8
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head for Sky Area,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk9
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta find\n"
	.string "Mick's Navi,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk10
	ts_check_navi_all 0xFF, 0xB, 0xC, 0xD, 0xFF, 0xFF, 0xE, 0x23, 0x24, 0xFF, 0xFF, 0xFF
	ts_end

	def_text_script CompText874E6E0_unk11
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "HeatMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk12
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "ElecMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk13
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "SlashMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk14
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "SpoutMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk15
	ts_check_flag 0x2E, 0xA, 0x1B, 0xFF
	ts_check_flag 0x2C, 0xA, 0x1A, 0xFF
	ts_check_flag 0x2A, 0xA, 0x19, 0xFF
	ts_check_flag 0x28, 0xA, 0x17, 0xFF
	ts_check_flag 0x26, 0xA, 0x16, 0xFF
	ts_check_flag 0x24, 0xA, 0x15, 0xFF
	ts_check_flag 0x1A, 0xA, 0x13, 0xFF
	ts_check_flag 0x18, 0xA, 0x12, 0xFF
	ts_check_flag 0x16, 0xA, 0x11, 0xFF
	ts_check_flag 0x10, 0xA, 0x10, 0xFF
	ts_end

	def_text_script CompText874E6E0_unk16
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The weather's really\n"
	.string "acting up today...\n"
	.string "Better hurry home!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk17
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "Sky Town,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk18
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head for Sky\n"
	.string "Town MegaMan!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk19
	ts_check_flag 0x1C, 0xA, 0xFF, 0x14
	ts_check_flag 0x1E, 0xA, 0xFF, 0x14
	ts_check_flag 0x20, 0xA, 0xFF, 0x14
	ts_check_flag 0x22, 0xA, 0xFF, 0x14
	ts_jump 20

	def_text_script CompText874E6E0_unk20
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan!\n"
	.string "We've gotta get\n"
	.string "back to Sky Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk21
	ts_jump 20

	def_text_script CompText874E6E0_unk22
	ts_jump 20

	def_text_script CompText874E6E0_unk23
	ts_jump 20

	def_text_script CompText874E6E0_unk24
	ts_end

	def_text_script CompText874E6E0_unk25
	ts_jump 20

	def_text_script CompText874E6E0_unk26
	ts_jump 20

	def_text_script CompText874E6E0_unk27
	ts_jump 20

	def_text_script CompText874E6E0_unk28

	def_text_script CompText874E6E0_unk29

	def_text_script CompText874E6E0_unk30

	def_text_script CompText874E6E0_unk31

	def_text_script CompText874E6E0_unk32

	def_text_script CompText874E6E0_unk33

	def_text_script CompText874E6E0_unk34

	def_text_script CompText874E6E0_unk35
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "TomahawkMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk36
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I'm counting on you\n"
	.string "to find MegaMan,\n"
	.string "TenguMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk37

	def_text_script CompText874E6E0_unk38

	def_text_script CompText874E6E0_unk39

	def_text_script CompText874E6E0_unk40

	def_text_script CompText874E6E0_unk41

	def_text_script CompText874E6E0_unk42

	def_text_script CompText874E6E0_unk43

	def_text_script CompText874E6E0_unk44

	def_text_script CompText874E6E0_unk45

	def_text_script CompText874E6E0_unk46

	def_text_script CompText874E6E0_unk47

	def_text_script CompText874E6E0_unk48

	def_text_script CompText874E6E0_unk49

	def_text_script CompText874E6E0_unk50

	def_text_script CompText874E6E0_unk51

	def_text_script CompText874E6E0_unk52

	def_text_script CompText874E6E0_unk53

	def_text_script CompText874E6E0_unk54

	def_text_script CompText874E6E0_unk55

	def_text_script CompText874E6E0_unk56

	def_text_script CompText874E6E0_unk57

	def_text_script CompText874E6E0_unk58

	def_text_script CompText874E6E0_unk59

	def_text_script CompText874E6E0_unk60

	def_text_script CompText874E6E0_unk61

	def_text_script CompText874E6E0_unk62

	def_text_script CompText874E6E0_unk63

	def_text_script CompText874E6E0_unk64

	def_text_script CompText874E6E0_unk65

	def_text_script CompText874E6E0_unk66

	def_text_script CompText874E6E0_unk67

	def_text_script CompText874E6E0_unk68

	def_text_script CompText874E6E0_unk69

	def_text_script CompText874E6E0_unk70

	def_text_script CompText874E6E0_unk71

	def_text_script CompText874E6E0_unk72

	def_text_script CompText874E6E0_unk73

	def_text_script CompText874E6E0_unk74

	def_text_script CompText874E6E0_unk75

	def_text_script CompText874E6E0_unk76

	def_text_script CompText874E6E0_unk77

	def_text_script CompText874E6E0_unk78

	def_text_script CompText874E6E0_unk79

	def_text_script CompText874E6E0_unk80

	def_text_script CompText874E6E0_unk81

	def_text_script CompText874E6E0_unk82

	def_text_script CompText874E6E0_unk83

	def_text_script CompText874E6E0_unk84

	def_text_script CompText874E6E0_unk85

	def_text_script CompText874E6E0_unk86

	def_text_script CompText874E6E0_unk87

	def_text_script CompText874E6E0_unk88

	def_text_script CompText874E6E0_unk89

	def_text_script CompText874E6E0_unk90

	def_text_script CompText874E6E0_unk91

	def_text_script CompText874E6E0_unk92

	def_text_script CompText874E6E0_unk93

	def_text_script CompText874E6E0_unk94

	def_text_script CompText874E6E0_unk95

	def_text_script CompText874E6E0_unk96

	def_text_script CompText874E6E0_unk97

	def_text_script CompText874E6E0_unk98

	def_text_script CompText874E6E0_unk99

	def_text_script CompText874E6E0_unk100
	ts_check_flag 0xA, 0xC, 0x6B, 0xFF
	ts_check_flag 0xC8, 0xC, 0x6A, 0xFF
	ts_check_flag 0xD8, 0xC, 0xFF, 0x69
	ts_check_flag 0xC6, 0xC, 0x68, 0xFF
	ts_check_flag 0xC3, 0xC, 0x67, 0xFF
	ts_check_flag 0xC2, 0xC, 0x66, 0xFF
	ts_check_flag 0xE4, 0xC, 0x65, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "Undernet and find\n"
	.string "that MoonStone!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk101
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Sky gazing...\n"
	.string "Is it related to the\n"
	.string "MoonStone somehow?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,let's go check\n"
	.string "out Undernet2,and\n"
	.string "see what we find!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk102
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The person who can\n"
	.string "open the Undernet\n"
	.string "door was \"caught\"?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "So where in the\n"
	.string "world is that person\n"
	.string "now!?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk103
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Sounds like this\n"
	.string "person is an\n"
	.string "ex-criminal..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "But where's this\n"
	.string "person now!?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "It sounds like\n"
	.string "they're part-timing\n"
	.string "at a store..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk104
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "Undernet1,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk105
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "MoonStone in\n"
	.string "Undernet2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk106
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's take the\n"
	.string "MoonStone and get\n"
	.string "out of this place!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk107
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for bed\n"
	.string "already..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk108

	def_text_script CompText874E6E0_unk109

	def_text_script CompText874E6E0_unk110

	def_text_script CompText874E6E0_unk111

	def_text_script CompText874E6E0_unk112

	def_text_script CompText874E6E0_unk113

	def_text_script CompText874E6E0_unk114

	def_text_script CompText874E6E0_unk115
	ts_check_flag 0x1C, 0xC, 0x7D, 0xFF
	ts_check_flag 0x1A, 0xC, 0x7C, 0xFF
	ts_check_flag 0x14, 0xC, 0x7B, 0xFF
	ts_check_flag 0xD4, 0xC, 0x7A, 0xFF
	ts_check_flag 0xD3, 0xC, 0x79, 0xFF
	ts_check_flag 0xD2, 0xC, 0x78, 0xFF
	ts_check_flag 0xD1, 0xC, 0x77, 0xFF
	ts_check_flag 0xD0, 0xC, 0x76, 0xFF
	ts_check_flag 0x12, 0xC, 0x75, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out,MegaMan,and\n"
	.string "let's head for ACDC\n"
	.string "Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk116

	def_text_script CompText874E6E0_unk117
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's head for ACDC\n"
	.string "Area,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk118
	ts_mugshot_show 0x0
	ts_msg_open
	.string "A lost Mr.Prog,\n"
	.string "huh...? Let's go\n"
	.string "find him!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk119
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I wonder who's\n"
	.string "causing trouble with\n"
	.string "these cyberdoors?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk120
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go back to\n"
	.string "that lost Mr.Prog!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk121
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's bring Roll's\n"
	.string "package back to her!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk122
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the area\n"
	.string "in front of the\n"
	.string "ducks in ACDC Area!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk123
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hurry,MegaMan!\n"
	.string "Head for Undernet2\n"
	.string "right now!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We've gotta save\n"
	.string "Roll and the others!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk124
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... I guess I should\n"
	.string "go back to Central\n"
	.string "Town for now..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk125
	ts_mugshot_show 0x0
	ts_msg_open
	.string "... Guess I should\n"
	.string "go home..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk126

	def_text_script CompText874E6E0_unk127

	def_text_script CompText874E6E0_unk128

	def_text_script CompText874E6E0_unk129

	def_text_script CompText874E6E0_unk130

	def_text_script CompText874E6E0_unk131

	def_text_script CompText874E6E0_unk132

	def_text_script CompText874E6E0_unk133

	def_text_script CompText874E6E0_unk134

	def_text_script CompText874E6E0_unk135
	ts_check_flag 0x26, 0xC, 0x8D, 0xFF
	ts_check_flag 0x24, 0xC, 0x8C, 0xFF
	ts_check_flag 0x22, 0xC, 0x8B, 0xFF
	ts_check_flag 0xCF, 0xC, 0x8A, 0xFF
	ts_check_flag 0xCE, 0xC, 0x89, 0xFF
	ts_check_flag 0x30, 0xC, 0x88, 0xFF
	ts_check_flag 0x20, 0xC, 0x8E, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I've gotta hurry to\n"
	.string "Seaside Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk136
	ts_check_sub_area 0x2, 0x2, 0x90, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We've gotta head to\n"
	.string "CentralArea3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk137
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I have to get the\n"
	.string "Mayor to get rid of\n"
	.string "the cyberbarrier..."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I think the Mayor\n"
	.string "might be in the\n"
	.string "Principal's Office."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk138
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out! We've\n"
	.string "gotta find the Mayor\n"
	.string "no matter what!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk139
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Jack out! We've\n"
	.string "gotta get to the\n"
	.string "Principal's Office!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk140
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Head for the large\n"
	.string "hole in CentralArea!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk141
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Hang in there,\n"
	.string "MegaMan!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I'm coming to the\n"
	.string "Underground to get\n"
	.string "you right now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk142
	ts_check_flag 0x28, 0x1D, 0xFF, 0x8F
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I guess I should\n"
	.string "read my mail..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk143
	ts_mugshot_show 0x0
	ts_msg_open
	.string "I wonder what\n"
	.string "Mr.Mach wants...?"
	ts_key_wait 0x0
	ts_clear_msg
	.string "Well,jack out,for\n"
	.string "now,and let's head\n"
	.string "to Sky Town..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk144
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan's gotta be\n"
	.string "down in that large\n"
	.string "hole in this area!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk145

	def_text_script CompText874E6E0_unk146

	def_text_script CompText874E6E0_unk147

	def_text_script CompText874E6E0_unk148

	def_text_script CompText874E6E0_unk149

	def_text_script CompText874E6E0_unk150

	def_text_script CompText874E6E0_unk151

	def_text_script CompText874E6E0_unk152

	def_text_script CompText874E6E0_unk153

	def_text_script CompText874E6E0_unk154

	def_text_script CompText874E6E0_unk155

	def_text_script CompText874E6E0_unk156

	def_text_script CompText874E6E0_unk157

	def_text_script CompText874E6E0_unk158

	def_text_script CompText874E6E0_unk159

	def_text_script CompText874E6E0_unk160

	def_text_script CompText874E6E0_unk161

	def_text_script CompText874E6E0_unk162

	def_text_script CompText874E6E0_unk163

	def_text_script CompText874E6E0_unk164

	def_text_script CompText874E6E0_unk165

	def_text_script CompText874E6E0_unk166

	def_text_script CompText874E6E0_unk167

	def_text_script CompText874E6E0_unk168

	def_text_script CompText874E6E0_unk169

	def_text_script CompText874E6E0_unk170

	def_text_script CompText874E6E0_unk171

	def_text_script CompText874E6E0_unk172

	def_text_script CompText874E6E0_unk173

	def_text_script CompText874E6E0_unk174

	def_text_script CompText874E6E0_unk175

	def_text_script CompText874E6E0_unk176

	def_text_script CompText874E6E0_unk177

	def_text_script CompText874E6E0_unk178

	def_text_script CompText874E6E0_unk179

	def_text_script CompText874E6E0_unk180
	ts_check_flag 0x32, 0xD, 0xB7, 0xFF
	ts_check_flag 0x33, 0xD, 0xB6, 0xFF
	ts_check_flag 0x63, 0xC, 0xB5, 0xFF
	ts_end

	def_text_script CompText874E6E0_unk181
	ts_check_sub_area 0x1, 0x1, 0xB8, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk182
	ts_check_sub_area 0x0, 0x0, 0xB8, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to\n"
	.string "CentralArea1!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk183
	ts_end

	def_text_script CompText874E6E0_unk184
	ts_mugshot_show 0x0
	ts_msg_open
	.string "We're gonna turn all\n"
	.string "the rocks in this\n"
	.string "area into pebbles!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk185

	def_text_script CompText874E6E0_unk186

	def_text_script CompText874E6E0_unk187

	def_text_script CompText874E6E0_unk188

	def_text_script CompText874E6E0_unk189

	def_text_script CompText874E6E0_unk190
	ts_check_flag 0x8F, 0xC, 0xC2, 0xFF
	ts_check_flag 0x8B, 0xC, 0xC1, 0xFF
	ts_check_flag 0x87, 0xC, 0xC0, 0xFF
	ts_check_flag 0x83, 0xC, 0xBF, 0xFF
	ts_end

	def_text_script CompText874E6E0_unk191
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Undernet2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk192
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "Sky Area2!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk193
	ts_check_sub_area 0x2, 0x2, 0xC3, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's go to the\n"
	.string "cyberstation in\n"
	.string "CentralArea3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk194
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Time for the final\n"
	.string "exam! Jack out,\n"
	.string "ChargeMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk195
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Let's look for the\n"
	.string "cyberstation in this\n"
	.string "area!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk196

	def_text_script CompText874E6E0_unk197

	def_text_script CompText874E6E0_unk198

	def_text_script CompText874E6E0_unk199

	def_text_script CompText874E6E0_unk200

	def_text_script CompText874E6E0_unk201

	def_text_script CompText874E6E0_unk202

	def_text_script CompText874E6E0_unk203

	def_text_script CompText874E6E0_unk204

	def_text_script CompText874E6E0_unk205

	def_text_script CompText874E6E0_unk206

	def_text_script CompText874E6E0_unk207

	def_text_script CompText874E6E0_unk208

	def_text_script CompText874E6E0_unk209

	def_text_script CompText874E6E0_unk210

	def_text_script CompText874E6E0_unk211

	def_text_script CompText874E6E0_unk212

	def_text_script CompText874E6E0_unk213

	def_text_script CompText874E6E0_unk214

	def_text_script CompText874E6E0_unk215

	def_text_script CompText874E6E0_unk216

	def_text_script CompText874E6E0_unk217

	def_text_script CompText874E6E0_unk218

	def_text_script CompText874E6E0_unk219

	def_text_script CompText874E6E0_unk220
	ts_check_navi_all 0xFF, 0xDD, 0xDE, 0xDF, 0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7
	ts_end

	def_text_script CompText874E6E0_unk221
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating HeatMan...\n"
	.string "It lights my soul on\n"
	.string "fire!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk222
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ElecMan...\n"
	.string "I feel a surge of\n"
	.string "power coming on!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk223
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SlashMan\n"
	.string "is like sharpening\n"
	.string "my mind to a point!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk224
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating EraseMan\n"
	.string "brings out my dark\n"
	.string "side... Mwahahaha!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk225
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating ChargeMan\n"
	.string "makes me want to\n"
	.string "plow ahead!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk226
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating SpoutMan\n"
	.string "makes me feel like\n"
	.string "a little fish..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk227
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating\n"
	.string "TomahawkMan is an\n"
	.string "awesome feeling!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk228
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating TenguMan\n"
	.string "brings a sense of\n"
	.string "peace to my heart..."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk229
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating GroundMan\n"
	.string "lets me drill\n"
	.string "through anything!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk230
	ts_mugshot_show 0x0
	ts_msg_open
	.string "Operating DustMan...\n"
	.string "There's no virus we\n"
	.string "can't scrap!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk231
	ts_mugshot_show 0x0
	ts_msg_open
	.string "ProtoMan helping out\n"
	.string "during battle... He\n"
	.string "sure is trustworthy!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText874E6E0_unk232

	def_text_script CompText874E6E0_unk233

	def_text_script CompText874E6E0_unk234

	def_text_script CompText874E6E0_unk235

	def_text_script CompText874E6E0_unk236

	def_text_script CompText874E6E0_unk237

	def_text_script CompText874E6E0_unk238

	def_text_script CompText874E6E0_unk239

	def_text_script CompText874E6E0_unk240

	def_text_script CompText874E6E0_unk241

	def_text_script CompText874E6E0_unk242

	def_text_script CompText874E6E0_unk243

	def_text_script CompText874E6E0_unk244

	def_text_script CompText874E6E0_unk245

	def_text_script CompText874E6E0_unk246

	def_text_script CompText874E6E0_unk247

	def_text_script CompText874E6E0_unk248

	def_text_script CompText874E6E0_unk249

	def_text_script CompText874E6E0_unk250

	def_text_script CompText874E6E0_unk251

	def_text_script CompText874E6E0_unk252

	def_text_script CompText874E6E0_unk253

	def_text_script CompText874E6E0_unk254

	