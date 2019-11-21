--[[
--note:

colums:
{Id,ID} ,{name,名字} ,{card_id,卡牌ID} ,{roleId,角色ID} ,{color,颜色} ,{exert,攻力} ,{suffer,受力} ,{skill[1],技能1} ,{skill[2],技能2} ,{skill[3],技能3} ,{shl.callCost,召唤消耗} ,{shl.callCd,召唤CD} ,{shl.crystalType,颜色} ,{shl.enterEffect,入场技能} ,{Bubble[1],怪物气泡}
primary key:
#0 [怪物模板]: Id
]]
local _T = LangUtil.Language
return{
	[101] = {name = "新手关羽",card_id = 1102001,roleId = 1102001,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303001,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130300131}},--新手关羽
	[102] = {name = "新手许褚",card_id = 1102002,roleId = 1102002,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303002,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130300231}},--新手许褚
	[103] = {name = "新手典韦",card_id = 1102003,roleId = 1102003,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303003,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130300331}},--新手典韦
	[104] = {name = "新手唐流雨",card_id = 1102004,roleId = 1102004,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303004,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130300431}},--新手唐流雨
	[105] = {name = "新手李轩辕",card_id = 1102005,roleId = 1102005,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303005,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130300531}},--新手李轩辕
	[106] = {name = "新手项羽",card_id = 1102006,roleId = 1102006,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303006,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130300631}},--新手项羽
	[107] = {name = "新手天使缇娜",card_id = 1102007,roleId = 1102007,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303007,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130300731}},--新手天使缇娜
	[108] = {name = "新手夏侯渊",card_id = 1102008,roleId = 1102008,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303008,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1}},--新手夏侯渊
	[109] = {name = "新手徐晃",card_id = 1102009,roleId = 1102009,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303009,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130300931}},--新手徐晃
	[110] = {name = "新手张郃",card_id = 1102010,roleId = 1102010,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303010,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301031}},--新手张郃
	[111] = {name = "新手张飞",card_id = 1102011,roleId = 1102011,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303011,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130301131}},--新手张飞
	[112] = {name = "新手夏侯惇",card_id = 1102012,roleId = 1102012,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303012,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301231}},--新手夏侯惇
	[113] = {name = "新手塞伯罗斯",card_id = 1102013,roleId = 1102013,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303013,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130301331}},--新手塞伯罗斯
	[114] = {name = "新手石灵明",card_id = 1102014,roleId = 1102014,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303014,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301431}},--新手石灵明
	[115] = {name = "新手于禁",card_id = 1102015,roleId = 1102015,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303015,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301531}},--新手于禁
	[116] = {name = "新手西方龙",card_id = 1102016,roleId = 1102016,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303016,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130301631}},--新手西方龙
	[117] = {name = "新手飞廉",card_id = 1102017,roleId = 1102017,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303017,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130301731}},--新手飞廉
	[118] = {name = "新手噬日",card_id = 1102018,roleId = 1102018,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303018,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130301831}},--新手噬日
	[119] = {name = "新手食火蜥",card_id = 1102019,roleId = 1102019,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303019,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301931}},--新手食火蜥
	[120] = {name = "新手高顺",card_id = 1102020,roleId = 1102020,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303020,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130302031}},--新手高顺
	[121] = {name = "新手烈风螳螂",card_id = 1102021,roleId = 1102021,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303021,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130302131}},--新手烈风螳螂
	[122] = {name = "新手柠檬精",card_id = 1102050,roleId = 1102050,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303050,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130305031}},--新手柠檬精
	[123] = {name = "新手异邦刀客",card_id = 1102023,roleId = 1102023,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303023,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130302331}},--新手异邦刀客
	[124] = {name = "新手雷震子",card_id = 1102026,roleId = 1102026,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303026,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130302631}},--新手雷震子
	[201] = {name = "常服曹焱兵",card_id = 1101001,roleId = 1101001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301001,[2] = 1302001}},--常服曹焱兵
	[202] = {name = "曹玄亮",card_id = 1101002,roleId = 1101002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301002,[2] = 1302002}},--曹玄亮
	[203] = {name = "战斗夏铃",card_id = 1101003,roleId = 1101003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301003,[2] = 1302003}},--战斗夏铃
	[204] = {name = "项昆仑",card_id = 1101004,roleId = 1101004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301004,[2] = 1302004}},--项昆仑
	[205] = {name = "刘羽禅",card_id = 1101005,roleId = 1101005,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301005,[2] = 1302005}},--刘羽禅
	[206] = {name = "红莲缇娜",card_id = 1101006,roleId = 1101006,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301006,[2] = 1302006}},--红莲缇娜
	[207] = {name = "战斗曹焱兵",card_id = 1101007,roleId = 1101007,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301007,[2] = 1302007}},--战斗曹焱兵
	[208] = {name = "黑尔坎普",card_id = 1101008,roleId = 1101008,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301008,[2] = 1302008}},--黑尔坎普
	[209] = {name = "北落师门",card_id = 1101009,roleId = 1101009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301009,[2] = 1302009}},--北落师门
	[210] = {name = "盖文",card_id = 1101010,roleId = 1101010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301010,[2] = 1302010}},--盖文
	[211] = {name = "阎风吒",card_id = 1101011,roleId = 1101011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301011,[2] = 1302011}},--阎风吒
	[212] = {name = "南御夫",card_id = 1101012,roleId = 1101012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301012,[2] = 1302012}},--南御夫
	[213] = {name = "吉拉",card_id = 1101013,roleId = 1101013,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301013,[2] = 1302013}},--吉拉
	[214] = {name = "吕仙宫",card_id = 1101014,roleId = 1101014,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301014,[2] = 1302014}},--吕仙宫
	[215] = {name = "阎巧巧",card_id = 1101015,roleId = 1101015,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301015,[2] = 1302015}},--阎巧巧
	[216] = {name = "姬烟华",card_id = 1101020,roleId = 1101020,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301020,[2] = 1302020}},--姬烟华
	[217] = {name = "幻",card_id = 1101022,roleId = 1101022,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301022,[2] = 1302022}},--幻
	[218] = {name = "卢天佑",card_id = 1101030,roleId = 1101030,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301030,[2] = 1302030}},--卢天佑
	[219] = {name = "朱童",card_id = 1101023,roleId = 1101023,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301023,[2] = 1302023}},--朱童
	[220] = {name = "秦王攻",card_id = 1101016,roleId = 1101016,color = 0,exert = 1,suffer = 1,skill = {[1] = 1301016,[2] = 1302016}},--秦王攻
	[221] = {name = "普通关羽",card_id = 1102001,roleId = 1102001,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303001,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130300131}},--普通关羽
	[222] = {name = "普通许褚",card_id = 1102002,roleId = 1102002,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303002,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130300231}},--普通许褚
	[223] = {name = "普通典韦",card_id = 1102003,roleId = 1102003,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303003,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130300331}},--普通典韦
	[224] = {name = "普通唐流雨",card_id = 1102004,roleId = 1102004,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303004,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130300431}},--普通唐流雨
	[225] = {name = "普通李轩辕",card_id = 1102005,roleId = 1102005,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303005,[2] = 1304027,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130300531}},--普通李轩辕
	[226] = {name = "普通项羽",card_id = 1102006,roleId = 1102006,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303006,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130300631}},--普通项羽
	[227] = {name = "普通天使缇娜",card_id = 1102007,roleId = 1102007,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303007,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130300731}},--普通天使缇娜
	[228] = {name = "普通夏侯渊",card_id = 1102008,roleId = 1102008,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303008,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通夏侯渊
	[229] = {name = "普通徐晃",card_id = 1102009,roleId = 1102009,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303009,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130300931}},--普通徐晃
	[230] = {name = "普通张郃",card_id = 1102010,roleId = 1102010,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303010,[2] = 1304027,[3] = 1304034},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301031}},--普通张郃
	[231] = {name = "普通张飞",card_id = 1102011,roleId = 1102011,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303011,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130301131}},--普通张飞
	[232] = {name = "普通夏侯惇",card_id = 1102012,roleId = 1102012,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303012,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301231}},--普通夏侯惇
	[233] = {name = "普通塞伯罗斯",card_id = 1102013,roleId = 1102013,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303013,[2] = 1304027,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130301331}},--普通塞伯罗斯
	[234] = {name = "普通石灵明",card_id = 1102014,roleId = 1102014,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303014,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301431}},--普通石灵明
	[235] = {name = "普通于禁",card_id = 1102015,roleId = 1102015,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303015,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301531}},--普通于禁
	[236] = {name = "普通西方龙",card_id = 1102016,roleId = 1102016,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303016,[2] = 1304027,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130301631}},--普通西方龙
	[237] = {name = "普通飞廉",card_id = 1102017,roleId = 1102017,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303017,[2] = 1304027,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130301731}},--普通飞廉
	[238] = {name = "普通噬日",card_id = 1102018,roleId = 1102018,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303018,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130301831}},--普通噬日
	[239] = {name = "普通食火蜥",card_id = 1102019,roleId = 1102019,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303019,[2] = 1304027,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301931}},--普通食火蜥
	[240] = {name = "普通高顺",card_id = 1102020,roleId = 1102020,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303020,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130302031}},--普通高顺
	[241] = {name = "普通烈风螳螂",card_id = 1102021,roleId = 1102021,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303021,[2] = 1304025,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130302131}},--普通烈风螳螂
	[242] = {name = "普通柠檬精",card_id = 1102050,roleId = 1102050,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303050,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130305031}},--普通柠檬精
	[243] = {name = "普通异邦刀客",card_id = 1102023,roleId = 1102023,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303023,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130302331}},--普通异邦刀客
	[244] = {name = "普通雷震子",card_id = 1102026,roleId = 1102026,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303026,[2] = 1304023,[3] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130302631}},--普通雷震子
	[301] = {name = "强力关羽",card_id = 1102001,roleId = 1102001,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303001,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130300131}},--强力关羽
	[302] = {name = "强力许褚",card_id = 1102002,roleId = 1102002,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303002,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130300231}},--强力许褚
	[303] = {name = "强力典韦",card_id = 1102003,roleId = 1102003,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303003,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130300331}},--强力典韦
	[304] = {name = "强力唐流雨",card_id = 1102004,roleId = 1102004,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303004,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130300431}},--强力唐流雨
	[305] = {name = "强力李轩辕",card_id = 1102005,roleId = 1102005,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303005,[2] = 1304030,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130300531}},--强力李轩辕
	[306] = {name = "强力项羽",card_id = 1102006,roleId = 1102006,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303006,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130300631}},--强力项羽
	[307] = {name = "强力天使缇娜",card_id = 1102007,roleId = 1102007,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303007,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130300731}},--强力天使缇娜
	[308] = {name = "强力夏侯渊",card_id = 1102008,roleId = 1102008,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303008,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力夏侯渊
	[309] = {name = "强力徐晃",card_id = 1102009,roleId = 1102009,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303009,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130300931}},--强力徐晃
	[310] = {name = "强力张郃",card_id = 1102010,roleId = 1102010,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303010,[2] = 1304030,[3] = 1304034},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301031}},--强力张郃
	[311] = {name = "强力张飞",card_id = 1102011,roleId = 1102011,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303011,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130301131}},--强力张飞
	[312] = {name = "强力夏侯惇",card_id = 1102012,roleId = 1102012,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303012,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301231}},--强力夏侯惇
	[313] = {name = "强力塞伯罗斯",card_id = 1102013,roleId = 1102013,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303013,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130301331}},--强力塞伯罗斯
	[314] = {name = "强力石灵明",card_id = 1102014,roleId = 1102014,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303014,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301431}},--强力石灵明
	[315] = {name = "强力于禁",card_id = 1102015,roleId = 1102015,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303015,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301531}},--强力于禁
	[316] = {name = "强力西方龙",card_id = 1102016,roleId = 1102016,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303016,[2] = 1304030,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130301631}},--强力西方龙
	[317] = {name = "强力飞廉",card_id = 1102017,roleId = 1102017,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303017,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130301731}},--强力飞廉
	[318] = {name = "强力噬日",card_id = 1102018,roleId = 1102018,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303018,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130301831}},--强力噬日
	[319] = {name = "强力食火蜥",card_id = 1102019,roleId = 1102019,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303019,[2] = 1304030,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130301931}},--强力食火蜥
	[320] = {name = "强力高顺",card_id = 1102020,roleId = 1102020,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303020,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130302031}},--强力高顺
	[321] = {name = "强力烈风螳螂",card_id = 1102021,roleId = 1102021,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303050,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130302131}},--强力烈风螳螂
	[322] = {name = "强力柠檬精",card_id = 1102050,roleId = 1102050,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303023,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 3,enterEffect = 130305031}},--强力柠檬精
	[323] = {name = "强力异邦刀客",card_id = 1102023,roleId = 1102023,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303026,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 2,enterEffect = 130302331}},--强力异邦刀客
	[324] = {name = "强力雷震子",card_id = 1102026,roleId = 1102026,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303026,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 1,enterEffect = 130302631}},--强力雷震子
	[325] = {name = "强力朱仙",card_id = 1102024,roleId = 1102024,color = 3,exert = 1,suffer = 1,skill = {[1] = 1303024,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力朱仙
	[326] = {name = "强力燕青",card_id = 1102030,roleId = 1102030,color = 2,exert = 1,suffer = 1,skill = {[1] = 1303030,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力燕青
	[327] = {name = "强力秦琼",card_id = 1102031,roleId = 1102031,color = 1,exert = 1,suffer = 1,skill = {[1] = 1303031,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力秦琼
	[1001] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802002,[2] = 1803002,[3] = 1801002},shl = {callCost = 4,callCd = 4,crystalType = 1}},--砍刀鬼兵-红
	[1002] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802003,[2] = 1803003,[3] = 1801003},shl = {callCost = 4,callCd = 4,crystalType = 1}},--双刃鬼兵-红
	[1003] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802001,[2] = 1803001,[3] = 1801001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--链球鬼兵-红
	[1004] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801004,[2] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 1}},--鬼将军-红
	[1005] = {name = "异邦刀客",card_id = nil,roleId = 1102023,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--异邦刀客-红
	[1006] = {name = "骷髅小兵2",card_id = nil,roleId = 1201007,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--骷髅小兵2-红
	[1007] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 1}},--小蜘蛛-红
	[1008] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1801011},shl = {callCost = 4,callCd = 4,crystalType = 1}},--魔导机兵团-红
	[1009] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1803012,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 1}},--山蜘蛛-红
	[1010] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802002,[2] = 1803002,[3] = 1801002},shl = {callCost = 4,callCd = 4,crystalType = 2}},--砍刀鬼兵-黄
	[1011] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802003,[2] = 1803003,[3] = 1801003},shl = {callCost = 4,callCd = 4,crystalType = 2}},--双刃鬼兵-黄
	[1012] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802001,[2] = 1803001,[3] = 1801001},shl = {callCost = 4,callCd = 4,crystalType = 2}},--链球鬼兵-黄
	[1013] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801004,[2] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 2}},--鬼将军-黄
	[1014] = {name = "异邦刀客",card_id = nil,roleId = 1102023,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 2}},--异邦刀客-黄
	[1015] = {name = "骷髅小兵2",card_id = nil,roleId = 1201007,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 2}},--骷髅小兵2-黄
	[1016] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 2}},--小蜘蛛-黄
	[1017] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1801011},shl = {callCost = 4,callCd = 4,crystalType = 2}},--魔导机兵团-黄
	[1018] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1803012,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 2}},--山蜘蛛-黄
	[1019] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802002,[2] = 1803002,[3] = 1801002},shl = {callCost = 4,callCd = 4,crystalType = 3}},--砍刀鬼兵-蓝
	[1020] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802003,[2] = 1803003,[3] = 1801003},shl = {callCost = 4,callCd = 4,crystalType = 3}},--双刃鬼兵-蓝
	[1021] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802001,[2] = 1803001,[3] = 1801001},shl = {callCost = 4,callCd = 4,crystalType = 3}},--链球鬼兵-蓝
	[1022] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801004,[2] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 3}},--鬼将军-蓝
	[1023] = {name = "异邦刀客",card_id = nil,roleId = 1102023,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 3}},--异邦刀客-蓝
	[1024] = {name = "骷髅小兵2",card_id = nil,roleId = 1201007,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 3}},--骷髅小兵2-蓝
	[1025] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 3}},--小蜘蛛-蓝
	[1026] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1801011},shl = {callCost = 4,callCd = 4,crystalType = 3}},--魔导机兵团-蓝
	[1027] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1803012,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 3}},--山蜘蛛-蓝
	[1028] = {name = "变身后鬼将军",card_id = nil,roleId = 1201005,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801005,[2] = 1802005,[3] = 1803005},shl = {callCost = 4,callCd = 4,crystalType = 1}},--变身后鬼将军
	[1029] = {name = "伏尸将军",card_id = nil,roleId = 1201008,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801008,[2] = 1802008},shl = {callCost = 4,callCd = 4,crystalType = 1}},--伏尸将军
	[1030] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801009,[2] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 1}},--石瀑将军
	[1031] = {name = "食火蜥",card_id = nil,roleId = 1102019,color = 0,exert = 1,suffer = 1,skill = {[1] = 1807001,[2] = 1809001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--食火蜥-简单
	[1032] = {name = "提亚马特",card_id = nil,roleId = 1102016,color = 0,exert = 1,suffer = 1,skill = {[1] = 1807001,[2] = 1809001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--西方龙-简单
	[1033] = {name = "天使缇娜",card_id = nil,roleId = 1102007,color = 0,exert = 1,suffer = 1,skill = {[1] = 1807001,[2] = 1809001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--天使缇娜-简单
	[1034] = {name = "食火蜥",card_id = nil,roleId = 1102019,color = 0,exert = 1,suffer = 1,skill = {[1] = 1807001,[2] = 1804012,[3] = 1809001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--食火蜥-红怪
	[1035] = {name = "提亚马特",card_id = nil,roleId = 1102016,color = 0,exert = 1,suffer = 1,skill = {[1] = 1807001,[2] = 1805001,[3] = 1809001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--西方龙-红怪
	[1036] = {name = "伏尸将军",card_id = nil,roleId = 1201008,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801008,[2] = 1802008,[3] = 1803008},shl = {callCost = 4,callCd = 4,crystalType = 1}},--伏尸将军-封印
	[1037] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1810001,[2] = 1803001,[3] = 1802001},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 1}},--链球鬼兵-吸血-红
	[1038] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1810001,[2] = 1801004},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 1}},--鬼将军-吸血-红
	[1039] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1813001,[2] = 1802002,[3] = 1803002},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 2}},--砍刀鬼兵-流血-红
	[1040] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1813001,[2] = 1801009,[3] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 2}},--石瀑将军-流血-红
	[1041] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1812001,[2] = 1802003,[3] = 1803003},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 3}},--双刃鬼兵-减防-红
	[1042] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1812001,[2] = 1801009,[3] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 3}},--石瀑将军-减防-红
	[1043] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1816001,[2] = 1801004,[3] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 4}},--鬼将军-吸收-红
	[1044] = {name = "变身后鬼将军",card_id = nil,roleId = 1201005,color = 0,exert = 1,suffer = 1,skill = {[1] = 1815001,[2] = 1801005,[3] = 1802005},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 5}},--变身后鬼将军-抵挡-红
	[1045] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1818001,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 6}},--山蜘蛛-连续-红
	[1046] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1818001,[2] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 6}},--小蜘蛛-连续-红
	[1047] = {name = "食火蜥",card_id = nil,roleId = 1102019,color = 0,exert = 1,suffer = 1,skill = {[1] = 1819001,[2] = 1807001},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 7}},--食火蜥-反弹-红
	[1048] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1820001,[2] = 1802011,[3] = 1803011},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 8}},--魔导机兵团-行动-红
	[1049] = {name = "异邦刀客",card_id = nil,roleId = 1102023,color = 0,exert = 1,suffer = 1,skill = {[1] = 1821001,[2] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 1},Bubble = {[1] = 9}},--异邦刀客-优先-红
	[1050] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1810001,[2] = 1803001,[3] = 1802001},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 1}},--链球鬼兵-吸血-黄
	[1051] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1810001,[2] = 1801004},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 1}},--鬼将军-吸血-黄
	[1052] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1813001,[2] = 1802002,[3] = 1803002},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 2}},--砍刀鬼兵-流血-黄
	[1053] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1813001,[2] = 1801009,[3] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 2}},--石瀑将军-流血-黄
	[1054] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1812001,[2] = 1802003,[3] = 1803003},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 3}},--双刃鬼兵-减防-黄
	[1055] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1812001,[2] = 1801009,[3] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 3}},--石瀑将军-减防-黄
	[1056] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1816001,[2] = 1801004,[3] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 4}},--鬼将军-吸收-黄
	[1057] = {name = "变身后鬼将军",card_id = nil,roleId = 1201005,color = 0,exert = 1,suffer = 1,skill = {[1] = 1815001,[2] = 1801005,[3] = 1802005},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 5}},--变身后鬼将军-抵挡-黄
	[1058] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1818001,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 6}},--山蜘蛛-连续-黄
	[1059] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1818001,[2] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 6}},--小蜘蛛-连续-黄
	[1060] = {name = "食火蜥",card_id = nil,roleId = 1102019,color = 0,exert = 1,suffer = 1,skill = {[1] = 1819001,[2] = 1807001},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 7}},--食火蜥-反弹-黄
	[1061] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1820001,[2] = 1802011,[3] = 1803011},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 8}},--魔导机兵团-行动-黄
	[1062] = {name = "异邦刀客",card_id = nil,roleId = 1102023,color = 0,exert = 1,suffer = 1,skill = {[1] = 1821001,[2] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 9}},--异邦刀客-优先-黄
	[1063] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1810001,[2] = 1803001,[3] = 1802001},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 1}},--链球鬼兵-吸血-蓝
	[1064] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1810001,[2] = 1801004},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 1}},--鬼将军-吸血-蓝
	[1065] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,exert = 1,suffer = 1,skill = {[1] = 1813001,[2] = 1802002,[3] = 1803002},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 2}},--砍刀鬼兵-流血-蓝
	[1066] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1813001,[2] = 1801009,[3] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 2}},--石瀑将军-流血-蓝
	[1067] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1812001,[2] = 1802003,[3] = 1803003},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 3}},--双刃鬼兵-减防-蓝
	[1068] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1812001,[2] = 1801009,[3] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 3}},--石瀑将军-减防-蓝
	[1069] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,exert = 1,suffer = 1,skill = {[1] = 1816001,[2] = 1801004,[3] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 4}},--鬼将军-吸收-蓝
	[1070] = {name = "变身后鬼将军",card_id = nil,roleId = 1201005,color = 0,exert = 1,suffer = 1,skill = {[1] = 1815001,[2] = 1801005,[3] = 1802005},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 5}},--变身后鬼将军-抵挡-蓝
	[1071] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1818001,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 6}},--山蜘蛛-连续-蓝
	[1072] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1818001,[2] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 6}},--小蜘蛛-连续-蓝
	[1073] = {name = "食火蜥",card_id = nil,roleId = 1102019,color = 0,exert = 1,suffer = 1,skill = {[1] = 1819001,[2] = 1807001},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 7}},--食火蜥-反弹-蓝
	[1074] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1820001,[2] = 1802011,[3] = 1803011},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 8}},--魔导机兵团-行动-蓝
	[1075] = {name = "异邦刀客",card_id = nil,roleId = 1102023,color = 0,exert = 1,suffer = 1,skill = {[1] = 1821001,[2] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 2},Bubble = {[1] = 9}},--异邦刀客-优先-蓝
	[1076] = {name = "柠檬精",card_id = nil,roleId = 1102050,color = 0,exert = 1,suffer = 1,skill = {[1] = 1820001,[2] = 1802011,[3] = 1803011},shl = {callCost = 4,callCd = 4,crystalType = 3},Bubble = {[1] = 8}},--柠檬精-行动-蓝
	[1077] = {name = "伏尸将军",card_id = nil,roleId = 1201008,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801008,[2] = 1802008,[3] = 1826001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--伏尸将军-3-3-红
	[1078] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801012,[2] = 1802012,[3] = 1827001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--山蜘蛛-3-6-红
	[1079] = {name = "食火蜥",card_id = nil,roleId = 1102019,color = 0,exert = 1,suffer = 1,skill = {[1] = 1809001,[2] = 1807001,[3] = 1828001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--食火蜥-3-9-红
	[1080] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801010,[2] = 1829001},shl = {callCost = 4,callCd = 4,crystalType = 2}},--小蜘蛛-3-10-黄
	[1081] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801010,[2] = 1829001},shl = {callCost = 4,callCd = 4,crystalType = 3}},--小蜘蛛-3-10-蓝
	[1082] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1831001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--魔导机兵团-4-3-红
	[1083] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1831001},shl = {callCost = 4,callCd = 4,crystalType = 2}},--魔导机兵团-4-3-黄
	[1084] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1831001},shl = {callCost = 4,callCd = 4,crystalType = 3}},--魔导机兵团-4-3-蓝
	[1085] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1832001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--魔导机兵团-4-9-红
	[1086] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1832001},shl = {callCost = 4,callCd = 4,crystalType = 2}},--魔导机兵团-4-9-黄
	[1087] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1832001},shl = {callCost = 4,callCd = 4,crystalType = 3}},--魔导机兵团-4-9-蓝
	[1088] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801009,[2] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 1}},--石瀑将军-4-10-红
	[1089] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1835001},shl = {callCost = 4,callCd = 4,crystalType = 2}},--魔导机兵团-4-10-黄
	[1090] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802011,[2] = 1803011,[3] = 1835001},shl = {callCost = 4,callCd = 4,crystalType = 3}},--魔导机兵团-4-10-蓝
	[1091] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802003,[2] = 1803003,[3] = 1837001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--双刃鬼兵-5-3-红
	[1092] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802001,[2] = 1803001,[3] = 1838001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--链球鬼兵-5-6-红
	[1093] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802001,[2] = 1803001,[3] = 1838001},shl = {callCost = 4,callCd = 4,crystalType = 2}},--链球鬼兵-5-6-黄
	[1094] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802001,[2] = 1803001,[3] = 1838001},shl = {callCost = 4,callCd = 4,crystalType = 3}},--链球鬼兵-5-6-蓝
	[1095] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802003,[2] = 1803003,[3] = 1839001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--双刃鬼兵-5-9-红
	[1096] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802003,[2] = 1803003,[3] = 1839001},shl = {callCost = 4,callCd = 4,crystalType = 2}},--双刃鬼兵-5-9-黄
	[1097] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,exert = 1,suffer = 1,skill = {[1] = 1802003,[2] = 1803003,[3] = 1839001},shl = {callCost = 4,callCd = 4,crystalType = 3}},--双刃鬼兵-5-9-蓝
	[1098] = {name = "伏尸将军",card_id = nil,roleId = 1201008,color = 0,exert = 1,suffer = 1,skill = {[1] = 1801008,[2] = 1840001,[3] = 1841001},shl = {callCost = 4,callCd = 4,crystalType = 1}}--伏尸将军-5-10-红
}