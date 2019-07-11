--[[
--note:

colums:
{Id,ID} ,{name,名字} ,{card_id,卡牌ID} ,{roleId,角色ID} ,{color,颜色} ,{skill[1],技能1} ,{skill[2],技能2} ,{skill[3],技能3} ,{shl.callCost,召唤消耗} ,{shl.callCd,召唤CD} ,{shl.crystalType,颜色}
primary key:
#0 [怪物模板]: Id
]]
local _T = LangUtil.Language
return{
	[101] = {name = "新手关羽",card_id = 1102001,roleId = 1102001,color = 1,skill = {[1] = 1903001,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3}},--新手关羽
	[102] = {name = "新手许褚",card_id = 1102002,roleId = 1102002,color = 1,skill = {[1] = 1903002,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1}},--新手许褚
	[103] = {name = "新手典韦",card_id = 1102003,roleId = 1102003,color = 2,skill = {[1] = 1903003,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2}},--新手典韦
	[104] = {name = "新手唐流雨",card_id = 1102004,roleId = 1102004,color = 1,skill = {[1] = 1903004,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1}},--新手唐流雨
	[105] = {name = "新手李轩辕",card_id = 1102005,roleId = 1102005,color = 3,skill = {[1] = 1903005,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3}},--新手李轩辕
	[106] = {name = "新手项羽",card_id = 1102006,roleId = 1102006,color = 2,skill = {[1] = 1903006,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2}},--新手项羽
	[107] = {name = "新手天使缇娜",card_id = 1102007,roleId = 1102007,color = 1,skill = {[1] = 1903007,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1}},--新手天使缇娜
	[108] = {name = "新手夏侯渊",card_id = 1102008,roleId = 1102008,color = 1,skill = {[1] = 1903008,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1}},--新手夏侯渊
	[109] = {name = "新手徐晃",card_id = 1102009,roleId = 1102009,color = 2,skill = {[1] = 1903009,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2}},--新手徐晃
	[110] = {name = "新手张郃",card_id = 1102010,roleId = 1102010,color = 3,skill = {[1] = 1903010,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1}},--新手张郃
	[111] = {name = "新手张飞",card_id = 1102011,roleId = 1102011,color = 2,skill = {[1] = 1903011,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3}},--新手张飞
	[112] = {name = "新手夏侯惇",card_id = 1102012,roleId = 1102012,color = 1,skill = {[1] = 1903012,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1}},--新手夏侯惇
	[113] = {name = "新手塞伯罗斯",card_id = 1102013,roleId = 1102013,color = 3,skill = {[1] = 1903013,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3}},--新手塞伯罗斯
	[114] = {name = "新手石灵明",card_id = 1102014,roleId = 1102014,color = 1,skill = {[1] = 1903014,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1}},--新手石灵明
	[115] = {name = "新手于禁",card_id = 1102015,roleId = 1102015,color = 2,skill = {[1] = 1903015,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1}},--新手于禁
	[116] = {name = "新手西方龙",card_id = 1102016,roleId = 1102016,color = 2,skill = {[1] = 1903016,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 3}},--新手西方龙
	[117] = {name = "新手飞廉",card_id = 1102017,roleId = 1102017,color = 3,skill = {[1] = 1903017,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2}},--新手飞廉
	[118] = {name = "新手噬日",card_id = 1102018,roleId = 1102018,color = 2,skill = {[1] = 1903018,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2}},--新手噬日
	[119] = {name = "新手食火蜥",card_id = 1102019,roleId = 1102019,color = 1,skill = {[1] = 1903019,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1}},--新手食火蜥
	[120] = {name = "新手高顺",card_id = 1102020,roleId = 1102020,color = 2,skill = {[1] = 1903020,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 2}},--新手高顺
	[121] = {name = "新手烈风螳螂",card_id = 1102021,roleId = 1102021,color = 2,skill = {[1] = 1903021,[2] = 1304024},shl = {callCost = 4,callCd = 5,crystalType = 1}},--新手烈风螳螂
	[201] = {name = "常服曹焱兵",card_id = 1101001,roleId = 1101001,color = 0,skill = {[1] = 1901001,[2] = 1902001}},--常服曹焱兵
	[202] = {name = "曹玄亮",card_id = 1101002,roleId = 1101002,color = 0,skill = {[1] = 1901002,[2] = 1902002}},--曹玄亮
	[203] = {name = "战斗夏铃",card_id = 1101003,roleId = 1101003,color = 0,skill = {[1] = 1901003,[2] = 1902003}},--战斗夏铃
	[204] = {name = "项昆仑",card_id = 1101004,roleId = 1101004,color = 0,skill = {[1] = 1901004,[2] = 1902004}},--项昆仑
	[205] = {name = "刘羽禅",card_id = 1101005,roleId = 1101005,color = 0,skill = {[1] = 1901005,[2] = 1902005}},--刘羽禅
	[206] = {name = "红莲缇娜",card_id = 1101006,roleId = 1101006,color = 0,skill = {[1] = 1901006,[2] = 1902006}},--红莲缇娜
	[207] = {name = "战斗曹焱兵",card_id = 1101007,roleId = 1101007,color = 0,skill = {[1] = 1901007,[2] = 1902007}},--战斗曹焱兵
	[208] = {name = "黑尔坎普",card_id = 1101008,roleId = 1101008,color = 0,skill = {[1] = 1901008,[2] = 1902008}},--黑尔坎普
	[209] = {name = "北落师门",card_id = 1101009,roleId = 1101009,color = 0,skill = {[1] = 1901009,[2] = 1902009}},--北落师门
	[210] = {name = "盖文",card_id = 1101010,roleId = 1101010,color = 0,skill = {[1] = 1901010,[2] = 1902010}},--盖文
	[211] = {name = "阎风吒",card_id = 1101011,roleId = 1101011,color = 0,skill = {[1] = 1901011,[2] = 1902011}},--阎风吒
	[212] = {name = "南御夫",card_id = 1101012,roleId = 1101012,color = 0,skill = {[1] = 1901012,[2] = 1902012}},--南御夫
	[213] = {name = "吉拉",card_id = 1101013,roleId = 1101013,color = 0,skill = {[1] = 1901013,[2] = 1902013}},--吉拉
	[214] = {name = "吕仙宫",card_id = 1101014,roleId = 1101014,color = 0,skill = {[1] = 1901014,[2] = 1902014}},--吕仙宫
	[215] = {name = "阎巧巧",card_id = 1101015,roleId = 1101015,color = 0,skill = {[1] = 1901015,[2] = 1902015}},--阎巧巧
	[216] = {name = "姬烟华",card_id = 1101020,roleId = 1101020,color = 0,skill = {[1] = 1301020,[2] = 1302020}},--姬烟华
	[217] = {name = "诸葛一心",card_id = 1101017,roleId = 1101017,color = 0,skill = {[1] = 1301017,[2] = 1302017}},--诸葛一心
	[218] = {name = "幻",card_id = 1101022,roleId = 1101022,color = 0,skill = {[1] = 1301022,[2] = 1302022}},--幻
	[219] = {name = "普通关羽",card_id = 1102001,roleId = 1102001,color = 1,skill = {[1] = 1903001,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通关羽
	[220] = {name = "普通许褚",card_id = 1102002,roleId = 1102002,color = 1,skill = {[1] = 1903002,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通许褚
	[221] = {name = "普通典韦",card_id = 1102003,roleId = 1102003,color = 2,skill = {[1] = 1903003,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2}},--普通典韦
	[222] = {name = "普通唐流雨",card_id = 1102004,roleId = 1102004,color = 1,skill = {[1] = 1903004,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通唐流雨
	[223] = {name = "普通李轩辕",card_id = 1102005,roleId = 1102005,color = 3,skill = {[1] = 1903005,[2] = 1304027,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3}},--普通李轩辕
	[224] = {name = "普通项羽",card_id = 1102006,roleId = 1102006,color = 2,skill = {[1] = 1903006,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2}},--普通项羽
	[225] = {name = "普通天使缇娜",card_id = 1102007,roleId = 1102007,color = 1,skill = {[1] = 1903007,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通天使缇娜
	[226] = {name = "普通夏侯渊",card_id = 1102008,roleId = 1102008,color = 1,skill = {[1] = 1903008,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通夏侯渊
	[227] = {name = "普通徐晃",card_id = 1102009,roleId = 1102009,color = 2,skill = {[1] = 1903009,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2}},--普通徐晃
	[228] = {name = "普通张郃",card_id = 1102010,roleId = 1102010,color = 3,skill = {[1] = 1903010,[2] = 1304027,[3] = 1304034},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通张郃
	[229] = {name = "普通张飞",card_id = 1102011,roleId = 1102011,color = 2,skill = {[1] = 1903011,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 3}},--普通张飞
	[230] = {name = "普通夏侯惇",card_id = 1102012,roleId = 1102012,color = 1,skill = {[1] = 1903012,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通夏侯惇
	[231] = {name = "普通塞伯罗斯",card_id = 1102013,roleId = 1102013,color = 3,skill = {[1] = 1903013,[2] = 1304027,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 3}},--普通塞伯罗斯
	[232] = {name = "普通石灵明",card_id = 1102014,roleId = 1102014,color = 1,skill = {[1] = 1903014,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通石灵明
	[233] = {name = "普通于禁",card_id = 1102015,roleId = 1102015,color = 2,skill = {[1] = 1903015,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通于禁
	[234] = {name = "普通西方龙",card_id = 1102016,roleId = 1102016,color = 2,skill = {[1] = 1903016,[2] = 1304027,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3}},--普通西方龙
	[235] = {name = "普通飞廉",card_id = 1102017,roleId = 1102017,color = 3,skill = {[1] = 1903017,[2] = 1304027,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 2}},--普通飞廉
	[236] = {name = "普通噬日",card_id = 1102018,roleId = 1102018,color = 2,skill = {[1] = 1903018,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2}},--普通噬日
	[237] = {name = "普通食火蜥",card_id = 1102019,roleId = 1102019,color = 1,skill = {[1] = 1903019,[2] = 1304027,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通食火蜥
	[238] = {name = "普通高顺",card_id = 1102020,roleId = 1102020,color = 2,skill = {[1] = 1903020,[2] = 1304026,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2}},--普通高顺
	[239] = {name = "普通烈风螳螂",card_id = 1102021,roleId = 1102021,color = 2,skill = {[1] = 1903021,[2] = 1304025,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 1}},--普通烈风螳螂
	[240] = {name = "强力关羽",card_id = 1102001,roleId = 1102001,color = 1,skill = {[1] = 2003001,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力关羽
	[241] = {name = "强力许褚",card_id = 1102002,roleId = 1102002,color = 1,skill = {[1] = 2003002,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力许褚
	[242] = {name = "强力典韦",card_id = 1102003,roleId = 1102003,color = 2,skill = {[1] = 2003003,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2}},--强力典韦
	[243] = {name = "强力唐流雨",card_id = 1102004,roleId = 1102004,color = 1,skill = {[1] = 2003004,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力唐流雨
	[244] = {name = "强力李轩辕",card_id = 1102005,roleId = 1102005,color = 3,skill = {[1] = 2003005,[2] = 1304030,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3}},--强力李轩辕
	[245] = {name = "强力项羽",card_id = 1102006,roleId = 1102006,color = 2,skill = {[1] = 2003006,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2}},--强力项羽
	[246] = {name = "强力天使缇娜",card_id = 1102007,roleId = 1102007,color = 1,skill = {[1] = 2003007,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力天使缇娜
	[247] = {name = "强力夏侯渊",card_id = 1102008,roleId = 1102008,color = 1,skill = {[1] = 2003008,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力夏侯渊
	[248] = {name = "强力徐晃",card_id = 1102009,roleId = 1102009,color = 2,skill = {[1] = 2003009,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2}},--强力徐晃
	[249] = {name = "强力张郃",card_id = 1102010,roleId = 1102010,color = 3,skill = {[1] = 2003010,[2] = 1304030,[3] = 1304034},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力张郃
	[250] = {name = "强力张飞",card_id = 1102011,roleId = 1102011,color = 2,skill = {[1] = 2003011,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 3}},--强力张飞
	[251] = {name = "强力夏侯惇",card_id = 1102012,roleId = 1102012,color = 1,skill = {[1] = 2003012,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力夏侯惇
	[252] = {name = "强力塞伯罗斯",card_id = 1102013,roleId = 1102013,color = 3,skill = {[1] = 2003013,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 3}},--强力塞伯罗斯
	[253] = {name = "强力石灵明",card_id = 1102014,roleId = 1102014,color = 1,skill = {[1] = 2003014,[2] = 1304017,[3] = 1304019},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力石灵明
	[254] = {name = "强力于禁",card_id = 1102015,roleId = 1102015,color = 2,skill = {[1] = 2003015,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力于禁
	[255] = {name = "强力西方龙",card_id = 1102016,roleId = 1102016,color = 2,skill = {[1] = 2003016,[2] = 1304030,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 3}},--强力西方龙
	[256] = {name = "强力飞廉",card_id = 1102017,roleId = 1102017,color = 3,skill = {[1] = 2003017,[2] = 1304030,[3] = 1304031},shl = {callCost = 4,callCd = 5,crystalType = 2}},--强力飞廉
	[257] = {name = "强力噬日",card_id = 1102018,roleId = 1102018,color = 2,skill = {[1] = 2003018,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2}},--强力噬日
	[258] = {name = "强力食火蜥",card_id = 1102019,roleId = 1102019,color = 1,skill = {[1] = 2003019,[2] = 1304030,[3] = 1304036},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力食火蜥
	[259] = {name = "强力高顺",card_id = 1102020,roleId = 1102020,color = 2,skill = {[1] = 2003020,[2] = 1304029,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 2}},--强力高顺
	[260] = {name = "强力烈风螳螂",card_id = 1102021,roleId = 1102021,color = 2,skill = {[1] = 2003021,[2] = 1304028,[3] = 1304032},shl = {callCost = 4,callCd = 5,crystalType = 1}},--强力烈风螳螂
	[261] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,skill = {[1] = 1802002,[2] = 1803002,[3] = 1801002},shl = {callCost = 4,callCd = 4,crystalType = 1}},--砍刀鬼兵-红
	[262] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,skill = {[1] = 1802003,[2] = 1803003,[3] = 1801003},shl = {callCost = 4,callCd = 4,crystalType = 1}},--双刃鬼兵-红
	[263] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,skill = {[1] = 1802001,[2] = 1803001,[3] = 1801001},shl = {callCost = 4,callCd = 4,crystalType = 1}},--链球鬼兵-红
	[264] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,skill = {[1] = 1801004,[2] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 1}},--鬼将军-红
	[265] = {name = "骷髅小兵1",card_id = nil,roleId = 1201006,color = 0,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--骷髅小兵1-红
	[266] = {name = "骷髅小兵2",card_id = nil,roleId = 1201007,color = 0,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--骷髅小兵2-红
	[267] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,skill = {[1] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 1}},--小蜘蛛-红
	[268] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,skill = {[1] = 1802011,[2] = 1803011,[3] = 1801011},shl = {callCost = 4,callCd = 4,crystalType = 1}},--魔导机兵团-红
	[269] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,skill = {[1] = 1803012,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 1}},--山蜘蛛-红
	[270] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,skill = {[1] = 1802002,[2] = 1803002,[3] = 1801002},shl = {callCost = 4,callCd = 4,crystalType = 2}},--砍刀鬼兵-黄
	[271] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,skill = {[1] = 1802003,[2] = 1803003,[3] = 1801003},shl = {callCost = 4,callCd = 4,crystalType = 2}},--双刃鬼兵-黄
	[272] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,skill = {[1] = 1802001,[2] = 1803001,[3] = 1801001},shl = {callCost = 4,callCd = 4,crystalType = 2}},--链球鬼兵-黄
	[273] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,skill = {[1] = 1801004,[2] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 2}},--鬼将军-黄
	[274] = {name = "骷髅小兵1",card_id = nil,roleId = 1201006,color = 0,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 2}},--骷髅小兵1-黄
	[275] = {name = "骷髅小兵2",card_id = nil,roleId = 1201007,color = 0,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 2}},--骷髅小兵2-黄
	[276] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,skill = {[1] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 2}},--小蜘蛛-黄
	[277] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,skill = {[1] = 1802011,[2] = 1803011,[3] = 1801011},shl = {callCost = 4,callCd = 4,crystalType = 2}},--魔导机兵团-黄
	[278] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,skill = {[1] = 1803012,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 2}},--山蜘蛛-黄
	[279] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201002,color = 0,skill = {[1] = 1802002,[2] = 1803002,[3] = 1801002},shl = {callCost = 4,callCd = 4,crystalType = 3}},--砍刀鬼兵-蓝
	[280] = {name = "双刃鬼兵",card_id = nil,roleId = 1201003,color = 0,skill = {[1] = 1802003,[2] = 1803003,[3] = 1801003},shl = {callCost = 4,callCd = 4,crystalType = 3}},--双刃鬼兵-蓝
	[281] = {name = "链球鬼兵",card_id = nil,roleId = 1201001,color = 0,skill = {[1] = 1802001,[2] = 1803001,[3] = 1801001},shl = {callCost = 4,callCd = 4,crystalType = 3}},--链球鬼兵-蓝
	[282] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,skill = {[1] = 1801004,[2] = 1802004},shl = {callCost = 4,callCd = 4,crystalType = 3}},--鬼将军-蓝
	[283] = {name = "骷髅小兵1",card_id = nil,roleId = 1201006,color = 0,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 3}},--骷髅小兵1-蓝
	[284] = {name = "骷髅小兵2",card_id = nil,roleId = 1201007,color = 0,skill = {[1] = 1801006},shl = {callCost = 4,callCd = 4,crystalType = 3}},--骷髅小兵2-蓝
	[285] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,skill = {[1] = 1801010},shl = {callCost = 4,callCd = 4,crystalType = 3}},--小蜘蛛-蓝
	[286] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,skill = {[1] = 1802011,[2] = 1803011,[3] = 1801011},shl = {callCost = 4,callCd = 4,crystalType = 3}},--魔导机兵团-蓝
	[287] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,skill = {[1] = 1803012,[2] = 1801012,[3] = 1802012},shl = {callCost = 4,callCd = 4,crystalType = 3}},--山蜘蛛-蓝
	[288] = {name = "变身后鬼将军",card_id = nil,roleId = 1201005,color = 0,skill = {[1] = 1801005,[2] = 1802005,[3] = 1803005},shl = {callCost = 4,callCd = 4,crystalType = 1}},--变身后鬼将军
	[289] = {name = "伏尸将军",card_id = nil,roleId = 1201008,color = 0,skill = {[1] = 1801008,[2] = 1802008},shl = {callCost = 4,callCd = 4,crystalType = 1}},--伏尸将军
	[290] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,skill = {[1] = 1801009,[2] = 1802009},shl = {callCost = 4,callCd = 4,crystalType = 1}}--石瀑将军
}