	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8742D64::
	.word 0xC6900

	text_archive_start

	def_text_script CompText8742D64_unk0
	ts_check_chapter 0x32, 0x33, 0x5F, 0xFF
	ts_check_chapter 0x31, 0x31, 0x50, 0xFF
	ts_check_chapter 0x30, 0x30, 0x46, 0xFF
	ts_check_chapter 0x24, 0x25, 0x32, 0xFF
	ts_check_chapter 0x22, 0x23, 0x23, 0xFF
	ts_msg_open
	.string "Temporary message"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk1

	def_text_script CompText8742D64_unk2

	def_text_script CompText8742D64_unk3

	def_text_script CompText8742D64_unk4

	def_text_script CompText8742D64_unk5

	def_text_script CompText8742D64_unk6

	def_text_script CompText8742D64_unk7

	def_text_script CompText8742D64_unk8

	def_text_script CompText8742D64_unk9

	def_text_script CompText8742D64_unk10

	def_text_script CompText8742D64_unk11

	def_text_script CompText8742D64_unk12

	def_text_script CompText8742D64_unk13

	def_text_script CompText8742D64_unk14

	def_text_script CompText8742D64_unk15

	def_text_script CompText8742D64_unk16

	def_text_script CompText8742D64_unk17

	def_text_script CompText8742D64_unk18

	def_text_script CompText8742D64_unk19

	def_text_script CompText8742D64_unk20

	def_text_script CompText8742D64_unk21

	def_text_script CompText8742D64_unk22

	def_text_script CompText8742D64_unk23

	def_text_script CompText8742D64_unk24

	def_text_script CompText8742D64_unk25

	def_text_script CompText8742D64_unk26

	def_text_script CompText8742D64_unk27

	def_text_script CompText8742D64_unk28

	def_text_script CompText8742D64_unk29

	def_text_script CompText8742D64_unk30

	def_text_script CompText8742D64_unk31

	def_text_script CompText8742D64_unk32

	def_text_script CompText8742D64_unk33

	def_text_script CompText8742D64_unk34

	def_text_script CompText8742D64_unk35
	ts_check_flag 0x18, 0x6, 0x2A, 0xFF
	ts_check_flag 0x16, 0x6, 0x29, 0xFF
	ts_check_flag 0x14, 0x6, 0x28, 0xFF
	ts_check_flag 0x12, 0x6, 0x27, 0xFF
	ts_check_flag 0x32, 0x6, 0x26, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go home. I'm\n"
	.string "sure we'll have a\n"
	.string "great time tomorrow!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk36

	def_text_script CompText8742D64_unk37

	def_text_script CompText8742D64_unk38
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder what Iris\n"
	.string "wanted? We'd better\n"
	.string "look for her!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk39
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go on the Net!\n"
	.string "Jack me in,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk40
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go back onto\n"
	.string "the Net!\n"
	.string "Jack me in,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk41
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder how we can\n"
	.string "beat the Cybeast...\n"
	.string "......"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk42
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Jack me in,Lan!\n"
	.string "Let's go find that\n"
	.string "Cybeast!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk43

	def_text_script CompText8742D64_unk44

	def_text_script CompText8742D64_unk45

	def_text_script CompText8742D64_unk46

	def_text_script CompText8742D64_unk47

	def_text_script CompText8742D64_unk48

	def_text_script CompText8742D64_unk49

	def_text_script CompText8742D64_unk50
	ts_check_flag 0x26, 0x6, 0x37, 0xFF
	ts_check_flag 0x20, 0x6, 0x35, 0xFF
	ts_mugshot_show 0x0
	ts_msg_open
	.string "The \"Healing Water\"\n"
	.string "is in SeasideArea3.\n"
	.string "Hang on,MegaMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk51

	def_text_script CompText8742D64_unk52

	def_text_script CompText8742D64_unk53
	ts_check_game_version 0xFF, 0x36
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan needs that\n"
	.string "\"Healing Water\",\n"
	.string "ASAP,HeatMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk54
	ts_mugshot_show 0x0
	ts_msg_open
	.string "MegaMan needs that\n"
	.string "\"Healing Water\",\n"
	.string "ASAP,SpoutMan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk55
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Jack me in,Lan!\n"
	.string "We've gotta go to\n"
	.string "CentralArea3!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk56

	def_text_script CompText8742D64_unk57

	def_text_script CompText8742D64_unk58

	def_text_script CompText8742D64_unk59

	def_text_script CompText8742D64_unk60

	def_text_script CompText8742D64_unk61

	def_text_script CompText8742D64_unk62

	def_text_script CompText8742D64_unk63

	def_text_script CompText8742D64_unk64

	def_text_script CompText8742D64_unk65

	def_text_script CompText8742D64_unk66

	def_text_script CompText8742D64_unk67

	def_text_script CompText8742D64_unk68

	def_text_script CompText8742D64_unk69

	def_text_script CompText8742D64_unk70
	ts_check_flag 0x5A, 0x8, 0x4B, 0xFF
	ts_check_flag 0x7B, 0x8, 0x4A, 0xFF
	ts_check_flag 0x59, 0x8, 0x49, 0xFF
	ts_check_flag 0x58, 0x8, 0x48, 0xFF
	ts_check_flag 0x57, 0x8, 0x47, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's go to the\n"
	.string "CentralArea NetCafe,"
	ts_key_wait 0x0
	ts_clear_msg
	.string "and enter the\n"
	.string "Operator Navi\n"
	.string "Selection Test!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk71
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's find that\n"
	.string "cyberseal!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk72
	ts_mugshot_show 0x37
	ts_msg_open
	.string "A fish that can't\n"
	.string "swim...? I wonder\n"
	.string "what that means...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk73
	ts_mugshot_show 0x37
	ts_msg_open
	.string "\"I am always looking\n"
	.string " at crayfish\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "I have no idea what\n"
	.string "that means,but"
	ts_key_wait 0x0
	ts_clear_msg
	.string "let's find some\n"
	.string "crayfish and go\n"
	.string "from there."
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk74
	ts_mugshot_show 0x37
	ts_msg_open
	.string "\"I am always looking\n"
	.string " at crayfish\"."
	ts_key_wait 0x0
	ts_clear_msg
	.string "Let's go look around\n"
	.string "the crayfish tank\n"
	.string "in our classroom!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk75
	ts_end

	def_text_script CompText8742D64_unk76

	def_text_script CompText8742D64_unk77

	def_text_script CompText8742D64_unk78

	def_text_script CompText8742D64_unk79

	def_text_script CompText8742D64_unk80
	ts_check_flag 0xE, 0x8, 0x57, 0xFF
	ts_check_flag 0xA, 0x8, 0x56, 0xFF
	ts_check_flag 0x67, 0x8, 0x55, 0xFF
	ts_check_flag 0x66, 0x8, 0x54, 0xFF
	ts_check_flag 0x65, 0x8, 0x53, 0xFF
	ts_check_flag 0x64, 0x8, 0x52, 0xFF
	ts_check_flag 0x6, 0x8, 0x51, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,let's go to\n"
	.string "the Green Town\n"
	.string "Courthouse!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk81
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We need to go to the\n"
	.string "Green Area2 NetCafe"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to get permission\n"
	.string "to enter the\n"
	.string "courthouse!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk82
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder what the\n"
	.string "punishment for\n"
	.string "hitting Mr.Prog"
	ts_key_wait 0x0
	ts_clear_msg
	.string "on the head is...?\n"
	.string "Hmm......\n"
	.string "I have no idea!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk83
	ts_mugshot_show 0x37
	ts_msg_open
	.string "I wonder if it's\n"
	.string "true that the\n"
	.string "punishment for"
	ts_key_wait 0x0
	ts_clear_msg
	.string "hitting Mr.Prog on\n"
	.string "the head is really\n"
	.string "infuriating...?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk84
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We need to go to the\n"
	.string "Green Area2 NetCafe"
	ts_key_wait 0x0
	ts_clear_msg
	.string "to get permission\n"
	.string "to enter the\n"
	.string "courthouse!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk85
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We got permission,\n"
	.string "so we can go in the\n"
	.string "courthouse now!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk86
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's take a look\n"
	.string "around the\n"
	.string "courtroom,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk87
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Want to go home and\n"
	.string "call it a day?"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk88

	def_text_script CompText8742D64_unk89

	def_text_script CompText8742D64_unk90

	def_text_script CompText8742D64_unk91

	def_text_script CompText8742D64_unk92

	def_text_script CompText8742D64_unk93

	def_text_script CompText8742D64_unk94

	def_text_script CompText8742D64_unk95
	ts_check_flag 0x2A, 0x8, 0x6B, 0xFF
	ts_check_flag 0x24, 0x8, 0x69, 0xFF
	ts_check_flag 0x1E, 0x8, 0x68, 0xFF
	ts_check_flag 0x70, 0x8, 0x67, 0xFF
	ts_check_flag 0x1C, 0x8, 0x66, 0xFF
	ts_check_flag 0x1A, 0x8, 0x65, 0xFF
	ts_check_flag 0x16, 0x8, 0x64, 0xFF
	ts_check_flag 0x6E, 0x8, 0x63, 0xFF
	ts_check_flag 0x6D, 0x8, 0x62, 0xFF
	ts_check_flag 0x14, 0x8, 0x61, 0xFF
	ts_check_flag 0x6C, 0x8, 0x60, 0xFF
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,calm down! Let's\n"
	.string "go home and ask Mom\n"
	.string "what's going on!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk96
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's hurry to the\n"
	.string "Green Town\n"
	.string "Courthouse,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk97
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's try to find\n"
	.string "out more about Dad!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk98
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Maybe we can find\n"
	.string "something to prove\n"
	.string "what Dad was doing"
	ts_key_wait 0x0
	ts_clear_msg
	.string "yesterday at 4 P.M.\n"
	.string "in Central Town!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk99
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's try to find\n"
	.string "someone at school"
	ts_key_wait 0x0
	ts_clear_msg
	.string "who saw Dad at\n"
	.string "4 P.M. yesterday!!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk100
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We've got to find\n"
	.string "something that\n"
	.string "proves that Dad was"
	ts_key_wait 0x0
	ts_clear_msg
	.string "at the school at\n"
	.string "4 P.M.,Lan!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk101
	ts_mugshot_show 0x37
	ts_msg_open
	.string "The RoboControl PC\n"
	.string "is in the Teachers'\n"
	.string "Room! Let's go!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk102
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Let's take that\n"
	.string "recorded data and go\n"
	.string "to the courthouse!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "We'll prove Dad's\n"
	.string "innocent!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk103
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan,Dad's in the\n"
	.string "Punishment Room!\n"
	.string "Let's go there!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk104
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We can save Dad if\n"
	.string "we show our evidence\n"
	.string "to the JudgeTree!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk105
	ts_mugshot_show 0x37
	ts_msg_open
	.string "We have to find a\n"
	.string "port to jack into on\n"
	.string "the JudgeTree!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk106
	ts_end

	def_text_script CompText8742D64_unk107
	ts_mugshot_show 0x37
	ts_msg_open
	.string "Lan! Jack me into\n"
	.string "the JudgeTree!"
	ts_key_wait 0x0
	ts_clear_msg
	.string "I've got to stop\n"
	.string "it somehow!"
	ts_key_wait 0x0
	ts_end

	def_text_script CompText8742D64_unk108

	def_text_script CompText8742D64_unk109

	def_text_script CompText8742D64_unk110

	def_text_script CompText8742D64_unk111

	def_text_script CompText8742D64_unk112

	def_text_script CompText8742D64_unk113

	def_text_script CompText8742D64_unk114

	def_text_script CompText8742D64_unk115

	def_text_script CompText8742D64_unk116

	def_text_script CompText8742D64_unk117

	def_text_script CompText8742D64_unk118

	def_text_script CompText8742D64_unk119

	def_text_script CompText8742D64_unk120

	def_text_script CompText8742D64_unk121

	def_text_script CompText8742D64_unk122

	def_text_script CompText8742D64_unk123

	def_text_script CompText8742D64_unk124

	def_text_script CompText8742D64_unk125

	def_text_script CompText8742D64_unk126

	def_text_script CompText8742D64_unk127

	def_text_script CompText8742D64_unk128

	def_text_script CompText8742D64_unk129

	def_text_script CompText8742D64_unk130

	def_text_script CompText8742D64_unk131

	def_text_script CompText8742D64_unk132

	def_text_script CompText8742D64_unk133

	def_text_script CompText8742D64_unk134

	def_text_script CompText8742D64_unk135

	def_text_script CompText8742D64_unk136

	def_text_script CompText8742D64_unk137

	def_text_script CompText8742D64_unk138

	def_text_script CompText8742D64_unk139

	def_text_script CompText8742D64_unk140

	def_text_script CompText8742D64_unk141

	def_text_script CompText8742D64_unk142

	def_text_script CompText8742D64_unk143

	def_text_script CompText8742D64_unk144

	def_text_script CompText8742D64_unk145

	def_text_script CompText8742D64_unk146

	def_text_script CompText8742D64_unk147

	def_text_script CompText8742D64_unk148

	def_text_script CompText8742D64_unk149

	def_text_script CompText8742D64_unk150

	def_text_script CompText8742D64_unk151

	def_text_script CompText8742D64_unk152

	def_text_script CompText8742D64_unk153

	def_text_script CompText8742D64_unk154

	def_text_script CompText8742D64_unk155

	def_text_script CompText8742D64_unk156

	def_text_script CompText8742D64_unk157

	def_text_script CompText8742D64_unk158

	def_text_script CompText8742D64_unk159

	def_text_script CompText8742D64_unk160

	def_text_script CompText8742D64_unk161

	def_text_script CompText8742D64_unk162

	def_text_script CompText8742D64_unk163

	def_text_script CompText8742D64_unk164

	def_text_script CompText8742D64_unk165

	def_text_script CompText8742D64_unk166

	def_text_script CompText8742D64_unk167

	def_text_script CompText8742D64_unk168

	def_text_script CompText8742D64_unk169

	def_text_script CompText8742D64_unk170

	def_text_script CompText8742D64_unk171

	def_text_script CompText8742D64_unk172

	def_text_script CompText8742D64_unk173

	def_text_script CompText8742D64_unk174

	def_text_script CompText8742D64_unk175

	def_text_script CompText8742D64_unk176

	def_text_script CompText8742D64_unk177

	def_text_script CompText8742D64_unk178

	def_text_script CompText8742D64_unk179

	def_text_script CompText8742D64_unk180

	def_text_script CompText8742D64_unk181

	def_text_script CompText8742D64_unk182

	def_text_script CompText8742D64_unk183

	def_text_script CompText8742D64_unk184

	def_text_script CompText8742D64_unk185

	def_text_script CompText8742D64_unk186

	def_text_script CompText8742D64_unk187

	def_text_script CompText8742D64_unk188

	def_text_script CompText8742D64_unk189

	def_text_script CompText8742D64_unk190

	def_text_script CompText8742D64_unk191

	def_text_script CompText8742D64_unk192

	def_text_script CompText8742D64_unk193

	def_text_script CompText8742D64_unk194

	def_text_script CompText8742D64_unk195

	def_text_script CompText8742D64_unk196

	def_text_script CompText8742D64_unk197

	def_text_script CompText8742D64_unk198

	def_text_script CompText8742D64_unk199

	def_text_script CompText8742D64_unk200

	def_text_script CompText8742D64_unk201

	def_text_script CompText8742D64_unk202

	def_text_script CompText8742D64_unk203

	def_text_script CompText8742D64_unk204

	def_text_script CompText8742D64_unk205

	def_text_script CompText8742D64_unk206

	def_text_script CompText8742D64_unk207

	def_text_script CompText8742D64_unk208

	def_text_script CompText8742D64_unk209

	def_text_script CompText8742D64_unk210

	def_text_script CompText8742D64_unk211

	def_text_script CompText8742D64_unk212

	def_text_script CompText8742D64_unk213

	def_text_script CompText8742D64_unk214

	def_text_script CompText8742D64_unk215

	def_text_script CompText8742D64_unk216

	def_text_script CompText8742D64_unk217

	def_text_script CompText8742D64_unk218

	def_text_script CompText8742D64_unk219

	def_text_script CompText8742D64_unk220

	def_text_script CompText8742D64_unk221

	def_text_script CompText8742D64_unk222

	def_text_script CompText8742D64_unk223

	def_text_script CompText8742D64_unk224

	def_text_script CompText8742D64_unk225

	def_text_script CompText8742D64_unk226

	def_text_script CompText8742D64_unk227

	def_text_script CompText8742D64_unk228

	def_text_script CompText8742D64_unk229

	def_text_script CompText8742D64_unk230

	def_text_script CompText8742D64_unk231

	def_text_script CompText8742D64_unk232

	def_text_script CompText8742D64_unk233

	def_text_script CompText8742D64_unk234

	def_text_script CompText8742D64_unk235

	def_text_script CompText8742D64_unk236

	def_text_script CompText8742D64_unk237

	def_text_script CompText8742D64_unk238

	def_text_script CompText8742D64_unk239

	def_text_script CompText8742D64_unk240

	def_text_script CompText8742D64_unk241

	def_text_script CompText8742D64_unk242

	def_text_script CompText8742D64_unk243

	def_text_script CompText8742D64_unk244

	def_text_script CompText8742D64_unk245

	def_text_script CompText8742D64_unk246

	def_text_script CompText8742D64_unk247

	def_text_script CompText8742D64_unk248

	def_text_script CompText8742D64_unk249

	def_text_script CompText8742D64_unk250

	def_text_script CompText8742D64_unk251

	def_text_script CompText8742D64_unk252

	def_text_script CompText8742D64_unk253

	def_text_script CompText8742D64_unk254

	