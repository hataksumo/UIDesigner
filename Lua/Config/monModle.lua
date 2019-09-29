--[[
--note:

colums:
{Id,ID} ,{name,名字} ,{card_id,卡牌ID} ,{roleId,角色ID} ,{color,颜色} ,{exert,攻力} ,{suffer,受力} ,{skill[1],技能1} ,{skill[2],技能2} ,{skill[3],技能3} ,{shl.callCost,召唤消耗} ,{shl.callCd,召唤CD} ,{shl.crystalType,颜色} ,{Bubble[1],怪物气泡}
primary key:
#0 [怪物模板]: Id
]]
local _T = LangUtil.Language
return{
	[101] = {name = "新手关羽",card_id = 1102001,roleId = 1102001,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303001,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 101}},--新手关羽
	[102] = {name = "新手许褚",card_id = 1102002,roleId = 1102002,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303002,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 102}},--新手许褚
	[103] = {name = "新手典韦",card_id = 1102003,roleId = 1102003,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303003,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 103}},--新手典韦
	[104] = {name = "新手唐流雨",card_id = 1102004,roleId = 1102004,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303004,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 104}},--新手唐流雨
	[105] = {name = "新手李轩辕",card_id = 1102005,roleId = 1102005,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303005,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 105}},--新手李轩辕
	[106] = {name = "新手项羽",card_id = 1102006,roleId = 1102006,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303006,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 106}},--新手项羽
	[107] = {name = "新手天使缇娜",card_id = 1102007,roleId = 1102007,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303007,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 107}},--新手天使缇娜
	[108] = {name = "新手夏侯渊",card_id = 1102008,roleId = 1102008,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303008,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 108}},--新手夏侯渊
	[109] = {name = "新手徐晃",card_id = 1102009,roleId = 1102009,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303009,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 109}},--新手徐晃
	[110] = {name = "新手张郃",card_id = 1102010,roleId = 1102010,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303010,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 110}},--新手张郃
	[111] = {name = "新手张飞",card_id = 1102011,roleId = 1102011,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303011,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 111}},--新手张飞
	[112] = {name = "新手夏侯惇",card_id = 1102012,roleId = 1102012,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303012,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 112}},--新手夏侯惇
	[113] = {name = "新手塞伯罗斯",card_id = 1102013,roleId = 1102013,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303013,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 113}},--新手塞伯罗斯
	[114] = {name = "新手石灵明",card_id = 1102014,roleId = 1102014,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303014,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 114}},--新手石灵明
	[115] = {name = "新手于禁",card_id = 1102015,roleId = 1102015,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303015,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 115}},--新手于禁
	[116] = {name = "新手西方龙",card_id = 1102016,roleId = 1102016,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303016,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 116}},--新手西方龙
	[117] = {name = "新手飞廉",card_id = 1102017,roleId = 1102017,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303017,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 117}},--新手飞廉
	[118] = {name = "新手噬日",card_id = 1102018,roleId = 1102018,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303018,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 118}},--新手噬日
	[119] = {name = "新手食火蜥",card_id = 1102019,roleId = 1102019,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303019,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 119}},--新手食火蜥
	[120] = {name = "新手高顺",card_id = 1102020,roleId = 1102020,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303020,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 120}},--新手高顺
	[121] = {name = "新手烈风螳螂",card_id = 1102021,roleId = 1102021,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303021,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 121}},--新手烈风螳螂
	[201] = {name = "常服曹焱兵",card_id = 1101001,roleId = 1101001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301001,[2] = 1302001},Bubble = {[1] = 201}},--常服曹焱兵
	[202] = {name = "曹玄亮",card_id = 1101002,roleId = 1101002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301002,[2] = 1302002},Bubble = {[1] = 202}},--曹玄亮
	[203] = {name = "战斗夏铃",card_id = 1101003,roleId = 1101003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301003,[2] = 1302003},Bubble = {[1] = 203}},--战斗夏铃
	[204] = {name = "项昆仑",card_id = 1101004,roleId = 1101004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301004,[2] = 1302004},Bubble = {[1] = 204}},--项昆仑
	[205] = {name = "刘羽禅",card_id = 1101005,roleId = 1101005,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301005,[2] = 1302005},Bubble = {[1] = 205}},--刘羽禅
	[206] = {name = "红莲缇娜",card_id = 1101006,roleId = 1101006,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301006,[2] = 1302006},Bubble = {[1] = 206}},--红莲缇娜
	[207] = {name = "战斗曹焱兵",card_id = 1101007,roleId = 1101007,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301007,[2] = 1302007},Bubble = {[1] = 207}},--战斗曹焱兵
	[208] = {name = "黑尔坎普",card_id = 1101008,roleId = 1101008,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301008,[2] = 1302008},Bubble = {[1] = 208}},--黑尔坎普
	[209] = {name = "北落师门",card_id = 1101009,roleId = 1101009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301009,[2] = 1302009},Bubble = {[1] = 209}},--北落师门
	[210] = {name = "盖文",card_id = 1101010,roleId = 1101010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301010,[2] = 1302010},Bubble = {[1] = 210}},--盖文
	[211] = {name = "阎风吒",card_id = 1101011,roleId = 1101011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301011,[2] = 1302011},Bubble = {[1] = 211}},--阎风吒
	[212] = {name = "南御夫",card_id = 1101012,roleId = 1101012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301012,[2] = 1302012},Bubble = {[1] = 212}},--南御夫
	[213] = {name = "吉拉",card_id = 1101013,roleId = 1101013,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301013,[2] = 1302013},Bubble = {[1] = 213}},--吉拉
	[214] = {name = "吕仙宫",card_id = 1101014,roleId = 1101014,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301014,[2] = 1302014},Bubble = {[1] = 214}},--吕仙宫
	[215] = {name = "阎巧巧",card_id = 1101015,roleId = 1101015,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301015,[2] = 1302015},Bubble = {[1] = 215}},--阎巧巧
	[216] = {name = "姬烟华",card_id = 1101015,roleId = 1101015,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301020,[2] = 1302020},Bubble = {[1] = 216}},--姬烟华
	[218] = {name = "幻",card_id = 1101015,roleId = 1101015,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301022,[2] = 1302022},Bubble = {[1] = 218}},--幻
	[219] = {name = "普通关羽",card_id = 1102001,roleId = 1102001,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303001,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 219}},--普通关羽
	[220] = {name = "普通许褚",card_id = 1102002,roleId = 1102002,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303002,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 220}},--普通许褚
	[221] = {name = "普通典韦",card_id = 1102003,roleId = 1102003,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303003,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 221}},--普通典韦
	[222] = {name = "普通唐流雨",card_id = 1102004,roleId = 1102004,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303004,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 222}},--普通唐流雨
	[223] = {name = "普通李轩辕",card_id = 1102005,roleId = 1102005,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303005,[2] = 1304027,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 223}},--普通李轩辕
	[224] = {name = "普通项羽",card_id = 1102006,roleId = 1102006,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303006,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 224}},--普通项羽
	[225] = {name = "普通天使缇娜",card_id = 1102007,roleId = 1102007,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303007,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 225}},--普通天使缇娜
	[226] = {name = "普通夏侯渊",card_id = 1102008,roleId = 1102008,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303008,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 226}},--普通夏侯渊
	[227] = {name = "普通徐晃",card_id = 1102009,roleId = 1102009,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303009,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 227}},--普通徐晃
	[228] = {name = "普通张郃",card_id = 1102010,roleId = 1102010,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303010,[2] = 1304027,[3] = 1304034},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 228}},--普通张郃
	[229] = {name = "普通张飞",card_id = 1102011,roleId = 1102011,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303011,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 229}},--普通张飞
	[230] = {name = "普通夏侯惇",card_id = 1102012,roleId = 1102012,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303012,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 230}},--普通夏侯惇
	[231] = {name = "普通塞伯罗斯",card_id = 1102013,roleId = 1102013,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303013,[2] = 1304027,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 231}},--普通塞伯罗斯
	[232] = {name = "普通石灵明",card_id = 1102014,roleId = 1102014,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303014,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 232}},--普通石灵明
	[233] = {name = "普通于禁",card_id = 1102015,roleId = 1102015,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303015,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 233}},--普通于禁
	[234] = {name = "普通西方龙",card_id = 1102016,roleId = 1102016,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303016,[2] = 1304027,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 234}},--普通西方龙
	[235] = {name = "普通飞廉",card_id = 1102017,roleId = 1102017,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303017,[2] = 1304027,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 235}},--普通飞廉
	[236] = {name = "普通噬日",card_id = 1102018,roleId = 1102018,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303018,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 236}},--普通噬日
	[237] = {name = "普通食火蜥",card_id = 1102019,roleId = 1102019,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303019,[2] = 1304027,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 237}},--普通食火蜥
	[238] = {name = "普通高顺",card_id = 1102020,roleId = 1102020,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303020,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 238}},--普通高顺
	[239] = {name = "普通烈风螳螂",card_id = 1102021,roleId = 1102021,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303021,[2] = 1304025,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 239}},--普通烈风螳螂
	[240] = {name = "强力关羽",card_id = 1102001,roleId = 1102001,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303001,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 240}},--强力关羽
	[241] = {name = "强力许褚",card_id = 1102002,roleId = 1102002,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303002,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 241}},--强力许褚
	[242] = {name = "强力典韦",card_id = 1102003,roleId = 1102003,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303003,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 242}},--强力典韦
	[243] = {name = "强力唐流雨",card_id = 1102004,roleId = 1102004,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303004,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 243}},--强力唐流雨
	[244] = {name = "强力李轩辕",card_id = 1102005,roleId = 1102005,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303005,[2] = 1304030,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 244}},--强力李轩辕
	[245] = {name = "强力项羽",card_id = 1102006,roleId = 1102006,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303006,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 245}},--强力项羽
	[246] = {name = "强力天使缇娜",card_id = 1102007,roleId = 1102007,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303007,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 246}},--强力天使缇娜
	[247] = {name = "强力夏侯渊",card_id = 1102008,roleId = 1102008,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303008,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 247}},--强力夏侯渊
	[248] = {name = "强力徐晃",card_id = 1102009,roleId = 1102009,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303009,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 248}},--强力徐晃
	[249] = {name = "强力张郃",card_id = 1102010,roleId = 1102010,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303010,[2] = 1304030,[3] = 1304034},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 249}},--强力张郃
	[250] = {name = "强力张飞",card_id = 1102011,roleId = 1102011,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303011,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 250}},--强力张飞
	[251] = {name = "强力夏侯惇",card_id = 1102012,roleId = 1102012,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303012,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 251}},--强力夏侯惇
	[252] = {name = "强力塞伯罗斯",card_id = 1102013,roleId = 1102013,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303013,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 252}},--强力塞伯罗斯
	[253] = {name = "强力石灵明",card_id = 1102014,roleId = 1102014,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303014,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 253}},--强力石灵明
	[254] = {name = "强力于禁",card_id = 1102015,roleId = 1102015,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303015,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 254}},--强力于禁
	[255] = {name = "强力西方龙",card_id = 1102016,roleId = 1102016,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303016,[2] = 1304030,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3},Bubble = {[1] = 255}},--强力西方龙
	[256] = {name = "强力飞廉",card_id = 1102017,roleId = 1102017,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303017,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 256}},--强力飞廉
	[257] = {name = "强力噬日",card_id = 1102018,roleId = 1102018,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303018,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 257}},--强力噬日
	[258] = {name = "强力食火蜥",card_id = 1102019,roleId = 1102019,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303019,[2] = 1304030,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 258}},--强力食火蜥
	[259] = {name = "强力高顺",card_id = 1102020,roleId = 1102020,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303020,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2},Bubble = {[1] = 259}},--强力高顺
	[260] = {name = "强力烈风螳螂",card_id = 1102021,roleId = 1102021,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303021,[2] = 1304028,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 1},Bubble = {[1] = 260}},--强力烈风螳螂
	[261] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802002,[2] = 1803002,[3] = 1801002},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 261}},--砍刀鬼兵-红
	[262] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802003,[2] = 1803003,[3] = 1801003},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 262}},--双刃鬼兵-红
	[263] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802001,[2] = 1803001,[3] = 1801001},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 263}},--链球鬼兵-红
	[264] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801004,[2] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 264}},--鬼将军-红
	[265] = {name = "骷髅小兵1",card_id = nil,roleId = 1201006,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 265}},--骷髅小兵1-红
	[266] = {name = "骷髅小兵2",card_id = nil,roleId = 1201007,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 266}},--骷髅小兵2-红
	[267] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 267}},--小蜘蛛-红
	[268] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1801011},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 268}},--魔导机兵团-红
	[269] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1803012,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 269}},--山蜘蛛-红
	[270] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802002,[2] = 1803002,[3] = 1801002},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 270}},--砍刀鬼兵-黄
	[271] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802003,[2] = 1803003,[3] = 1801003},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 271}},--双刃鬼兵-黄
	[272] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802001,[2] = 1803001,[3] = 1801001},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 272}},--链球鬼兵-黄
	[273] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801004,[2] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 273}},--鬼将军-黄
	[274] = {name = "骷髅小兵1",card_id = nil,roleId = 1201006,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 274}},--骷髅小兵1-黄
	[275] = {name = "骷髅小兵2",card_id = nil,roleId = 1201007,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 275}},--骷髅小兵2-黄
	[276] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 276}},--小蜘蛛-黄
	[277] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1801011},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 277}},--魔导机兵团-黄
	[278] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1803012,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 278}},--山蜘蛛-黄
	[279] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802002,[2] = 1803002,[3] = 1801002},shl = {callCost = 4,callCd = 4,crystalType = 3},Bubble = {[1] = 279}},--砍刀鬼兵-蓝
	[280] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802003,[2] = 1803003,[3] = 1801003},shl = {callCost = 4,callCd = 4,crystalType = 3},Bubble = {[1] = 280}},--双刃鬼兵-蓝
	[281] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802001,[2] = 1803001,[3] = 1801001},shl = {callCost = 4,callCd = 4,crystalType = 3},Bubble = {[1] = 281}},--链球鬼兵-蓝
	[282] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801004,[2] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 3},Bubble = {[1] = 282}},--鬼将军-蓝
	[283] = {name = "骷髅小兵1",card_id = nil,roleId = 1201006,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 3},Bubble = {[1] = 283}},--骷髅小兵1-蓝
	[284] = {name = "骷髅小兵2",card_id = nil,roleId = 1201007,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 3},Bubble = {[1] = 284}},--骷髅小兵2-蓝
	[285] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 3},Bubble = {[1] = 285}},--小蜘蛛-蓝
	[286] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1801011},shl = {callCost = 4,callCd = 4,crystalType = 3},Bubble = {[1] = 286}},--魔导机兵团-蓝
	[287] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1803012,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 3},Bubble = {[1] = 287}},--山蜘蛛-蓝
	[288] = {name = "变身后鬼将军",card_id = nil,roleId = 1201005,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801005,[2] = 1802005,[3] = 1803005},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 288}},--变身后鬼将军
	[289] = {name = "伏尸将军",card_id = nil,roleId = 1201008,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801008,[2] = 1802008},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 289}},--伏尸将军
	[290] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801009,[2] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 290}},--石瀑将军
	[291] = {name = "食火蜥",card_id = nil,roleId = 1102019,color = 0,exert = 1,suffer = 1,skill = {[1] = 1807001,[2] = 1809001},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 291}},--食火蜥-简单
	[292] = {name = "提亚马特",card_id = nil,roleId = 1102016,color = 0,exert = 1,suffer = 1,skill = {[1] = 1807001,[2] = 1809001},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 292}},--西方龙-简单
	[293] = {name = "天使缇娜",card_id = nil,roleId = 1102007,color = 0,exert = 1,suffer = 1,skill = {[1] = 1807001,[2] = 1809001},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 293}},--天使缇娜-简单
	[294] = {name = "食火蜥",card_id = nil,roleId = 1102019,color = 0,exert = 1,suffer = 1,skill = {[1] = 1807001,[2] = 1804012,[3] = 1809001},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 294}},--食火蜥-红怪
	[295] = {name = "提亚马特",card_id = nil,roleId = 1102016,color = 0,exert = 1,suffer = 1,skill = {[1] = 1807001,[2] = 1805001,[3] = 1809001},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 295}},--西方龙-红怪
	[296] = {name = "伏尸将军",card_id = nil,roleId = 1201008,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801008,[2] = 1802008,[3] = 1803008},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 296}},--伏尸将军-封印
	[297] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1810001,[2] = 1803001,[3] = 1802001},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 297}},--链球鬼兵-吸血
	[298] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1810001,[2] = 1801004},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 298}},--鬼将军-吸血
	[299] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1813001,[2] = 1802002,[3] = 1803002},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 299}},--砍刀鬼兵-流血
	[300] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1813001,[2] = 1801009,[3] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 300}},--石瀑将军-流血
	[301] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1812001,[2] = 1802003,[3] = 1803003},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 301}},--双刃鬼兵-减防
	[302] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1812001,[2] = 1801009,[3] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 302}},--石瀑将军-减防
	[303] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1816001,[2] = 1801004,[3] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 303}},--鬼将军-吸收
	[304] = {name = "变身后鬼将军",card_id = nil,roleId = 1201005,color = 0,exert = 1,suffer = 1,skill = {[1] = 1815001,[2] = 1801005,[3] = 1802005},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 304}},--变身后鬼将军-抵挡
	[305] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1818001,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 305}},--山蜘蛛-连续
	[306] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1818001,[2] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 306}},--小蜘蛛-连续
	[307] = {name = "食火蜥",card_id = nil,roleId = 1102019,color = 0,exert = 1,suffer = 1,skill = {[1] = 1819001,[2] = 1807001},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 307}},--食火蜥-反弹
	[308] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1820001,[2] = 1802011,[3] = 1803011},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 308}},--魔导机兵团-行动
	[309] = {name = "骷髅小兵1",card_id = nil,roleId = 1201006,color = 0,exert = 1,suffer = 1,skill = {[1] = 1821001,[2] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 309}}--骷髅小兵1-优先
}