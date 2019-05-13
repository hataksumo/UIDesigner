--[[
--note:

colums:
{Id,ID} ,{name,名字} ,{card_id,卡牌ID} ,{roleId,角色ID} ,{color,颜色} ,{skill[1],技能1} ,{skill[2],技能2} ,{skill[3],技能3} ,{shl.callCost,召唤消耗} ,{shl.callCd,召唤CD} ,{shl.crystalType,颜色}
primary key:
#0 [怪物模板]: Id
]]
return{
	[101] = {name = "新手曹焱兵",card_id = 1101001,roleId = 1101001,color = 0,skill = {[1] = 1301001,[2] = 1302001}},--新手曹焱兵
	[102] = {name = "新手于禁",card_id = 1102015,roleId = 1102015,color = 0,skill = {[1] = 1303015,[2] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 2}},--新手于禁
	[103] = {name = "新手曹玄亮",card_id = 1101002,roleId = 1101002,color = 0,skill = {[1] = 1301002,[2] = 1302002}},--新手曹玄亮
	[104] = {name = "新手唐流雨",card_id = 1102004,roleId = 1102004,color = 0,skill = {[1] = 1303004,[2] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 1}},--新手唐流雨
	[105] = {name = "新手夏玲",card_id = 1101003,roleId = 1101003,color = 0,skill = {[1] = 1301003,[2] = 1302003}},--新手夏玲
	[106] = {name = "新手李轩辕",card_id = 1102005,roleId = 1102005,color = 0,skill = {[1] = 1303005,[2] = 1304008},shl = {callCost = 4,callCd = 4,crystalType = 3}},--新手李轩辕
	[201] = {name = "常服曹焱兵",card_id = 1101001,roleId = 1101001,color = 0,skill = {[1] = 1301001,[2] = 1302001}},--常服曹焱兵
	[202] = {name = "曹玄亮",card_id = 1101002,roleId = 1101002,color = 0,skill = {[1] = 1301002,[2] = 1302002}},--曹玄亮
	[203] = {name = "战斗夏玲",card_id = 1101003,roleId = 1101003,color = 0,skill = {[1] = 1301003,[2] = 1302003}},--战斗夏玲
	[204] = {name = "项昆仑",card_id = 1101004,roleId = 1101004,color = 0,skill = {[1] = 1301004,[2] = 1302004}},--项昆仑
	[205] = {name = "刘羽禅",card_id = 1101005,roleId = 1101005,color = 0,skill = {[1] = 1301005,[2] = 1302005}},--刘羽禅
	[206] = {name = "红莲",card_id = 1101006,roleId = 1101006,color = 0,skill = {[1] = 1301006,[2] = 1302006}},--红莲
	[207] = {name = "战斗曹焱兵",card_id = 1101007,roleId = 1101007,color = 0,skill = {[1] = 1301007,[2] = 1302007}},--战斗曹焱兵
	[208] = {name = "黑尔",card_id = 1101008,roleId = 1101008,color = 0,skill = {[1] = 1301008,[2] = 1302008}},--黑尔
	[209] = {name = "北落师门",card_id = 1101009,roleId = 1101009,color = 0,skill = {[1] = 1301009,[2] = 1302009}},--北落师门
	[210] = {name = "盖文",card_id = 1101010,roleId = 1101010,color = 0,skill = {[1] = 1301010,[2] = 1302010}},--盖文
	[211] = {name = "阎风吒",card_id = 1101011,roleId = 1101011,color = 0,skill = {[1] = 1301011,[2] = 1302011}},--阎风吒
	[212] = {name = "南御夫",card_id = 1101012,roleId = 1101012,color = 0,skill = {[1] = 1301012,[2] = 1302012}},--南御夫
	[213] = {name = "吉拉",card_id = 1101013,roleId = 1101013,color = 0,skill = {[1] = 1301013,[2] = 1302013}},--吉拉
	[214] = {name = "吕仙宫",card_id = 1101014,roleId = 1101014,color = 0,skill = {[1] = 1301014,[2] = 1302014}},--吕仙宫
	[215] = {name = "阎巧巧",card_id = 1101015,roleId = 1101015,color = 0,skill = {[1] = 1301015,[2] = 1302015}},--阎巧巧
	[216] = {name = "姬烟华",card_id = 1101020,roleId = 1101020,color = 0,skill = {[1] = 1301020,[2] = 1302020}},--姬烟华
	[217] = {name = "诸葛一心",card_id = 1101017,roleId = 1101017,color = 0,skill = {[1] = 1301017,[2] = 1302017}},--诸葛一心
	[218] = {name = "幻",card_id = 1101022,roleId = 1101022,color = 0,skill = {[1] = 1301022,[2] = 1302022}},--幻
	[219] = {name = "普通关羽",card_id = 1102001,roleId = 1102001,color = 1,skill = {[1] = 1303001,[2] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--普通关羽
	[220] = {name = "普通许褚",card_id = 1102002,roleId = 1102002,color = 1,skill = {[1] = 1303002,[2] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--普通许褚
	[221] = {name = "普通典韦",card_id = 1102003,roleId = 1102003,color = 2,skill = {[1] = 1303003,[2] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--普通典韦
	[222] = {name = "普通唐流雨",card_id = 1102004,roleId = 1102004,color = 1,skill = {[1] = 1303004,[2] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 1}},--普通唐流雨
	[223] = {name = "普通李轩辕",card_id = 1102005,roleId = 1102005,color = 3,skill = {[1] = 1303005,[2] = 1304008},shl = {callCost = 4,callCd = 4,crystalType = 3}},--普通李轩辕
	[224] = {name = "普通项羽",card_id = 1102006,roleId = 1102006,color = 2,skill = {[1] = 1303006,[2] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--普通项羽
	[225] = {name = "普通天使缇娜",card_id = 1102007,roleId = 1102007,color = 1,skill = {[1] = 1303007,[2] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--普通天使缇娜
	[226] = {name = "普通夏侯渊",card_id = 1102008,roleId = 1102008,color = 1,skill = {[1] = 1303008,[2] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 2}},--普通夏侯渊
	[227] = {name = "普通徐晃",card_id = 1102009,roleId = 1102009,color = 2,skill = {[1] = 1303009,[2] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--普通徐晃
	[228] = {name = "普通张郃",card_id = 1102010,roleId = 1102010,color = 3,skill = {[1] = 1303010,[2] = 1304008},shl = {callCost = 4,callCd = 4,crystalType = 3}},--普通张郃
	[229] = {name = "普通张飞",card_id = 1102011,roleId = 1102011,color = 2,skill = {[1] = 1303011,[2] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--普通张飞
	[230] = {name = "普通夏侯惇",card_id = 1102012,roleId = 1102012,color = 1,skill = {[1] = 1303012,[2] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--普通夏侯惇
	[231] = {name = "普通塞伯罗斯",card_id = 1102013,roleId = 1102013,color = 3,skill = {[1] = 1303013,[2] = 1304008},shl = {callCost = 4,callCd = 4,crystalType = 3}},--普通塞伯罗斯
	[232] = {name = "普通石灵明",card_id = 1102014,roleId = 1102014,color = 1,skill = {[1] = 1303014,[2] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--普通石灵明
	[233] = {name = "普通于禁",card_id = 1102015,roleId = 1102015,color = 2,skill = {[1] = 1303015,[2] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 2}},--普通于禁
	[234] = {name = "普通西方龙",card_id = 1102016,roleId = 1102016,color = 2,skill = {[1] = 1303016,[2] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 3}},--普通西方龙
	[235] = {name = "普通飞廉",card_id = 1102017,roleId = 1102017,color = 3,skill = {[1] = 1303017,[2] = 1304008},shl = {callCost = 4,callCd = 4,crystalType = 3}},--普通飞廉
	[236] = {name = "普通噬日",card_id = 1102018,roleId = 1102018,color = 2,skill = {[1] = 1303018,[2] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--普通噬日
	[237] = {name = "普通食火蜥",card_id = 1102019,roleId = 1102019,color = 1,skill = {[1] = 1303019,[2] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--普通食火蜥
	[238] = {name = "普通高顺",card_id = 1102020,roleId = 1102020,color = 2,skill = {[1] = 1303020,[2] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--普通高顺
	[239] = {name = "普通烈风螳螂",card_id = 1102021,roleId = 1102021,color = 2,skill = {[1] = 1303021,[2] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 1}},--普通烈风螳螂
	[240] = {name = "强力关羽",card_id = 1102001,roleId = 1102001,color = 1,skill = {[1] = 1303001,[2] = 1304004,[3] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--强力关羽
	[241] = {name = "强力许褚",card_id = 1102002,roleId = 1102002,color = 1,skill = {[1] = 1303002,[2] = 1304001,[3] = 1304004},shl = {callCost = 4,callCd = 4,crystalType = 1}},--强力许褚
	[242] = {name = "强力典韦",card_id = 1102003,roleId = 1102003,color = 2,skill = {[1] = 1303003,[2] = 1304005,[3] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--强力典韦
	[243] = {name = "强力唐流雨",card_id = 1102004,roleId = 1102004,color = 1,skill = {[1] = 1303004,[2] = 1304005,[3] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--强力唐流雨
	[244] = {name = "强力李轩辕",card_id = 1102005,roleId = 1102005,color = 3,skill = {[1] = 1303005,[2] = 1304009,[3] = 1304008},shl = {callCost = 4,callCd = 4,crystalType = 3}},--强力李轩辕
	[245] = {name = "强力项羽",card_id = 1102006,roleId = 1102006,color = 2,skill = {[1] = 1303006,[2] = 1304005,[3] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--强力项羽
	[246] = {name = "强力天使缇娜",card_id = 1102007,roleId = 1102007,color = 1,skill = {[1] = 1303007,[2] = 1304002,[3] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--强力天使缇娜
	[247] = {name = "强力夏侯渊",card_id = 1102008,roleId = 1102008,color = 1,skill = {[1] = 1303008,[2] = 1304004,[3] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 2}},--强力夏侯渊
	[248] = {name = "强力徐晃",card_id = 1102009,roleId = 1102009,color = 2,skill = {[1] = 1303009,[2] = 1304010,[3] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--强力徐晃
	[249] = {name = "强力张郃",card_id = 1102010,roleId = 1102010,color = 3,skill = {[1] = 1303010,[2] = 1304013,[3] = 1304008},shl = {callCost = 4,callCd = 4,crystalType = 3}},--强力张郃
	[250] = {name = "强力张飞",card_id = 1102011,roleId = 1102011,color = 2,skill = {[1] = 1303011,[2] = 1304005,[3] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--强力张飞
	[251] = {name = "强力夏侯惇",card_id = 1102012,roleId = 1102012,color = 1,skill = {[1] = 1303012,[2] = 1304005,[3] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--强力夏侯惇
	[252] = {name = "强力塞伯罗斯",card_id = 1102013,roleId = 1102013,color = 3,skill = {[1] = 1303013,[2] = 1304012,[3] = 1304008},shl = {callCost = 4,callCd = 4,crystalType = 3}},--强力塞伯罗斯
	[253] = {name = "强力石灵明",card_id = 1102014,roleId = 1102014,color = 1,skill = {[1] = 1303014,[2] = 1304004,[3] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--强力石灵明
	[254] = {name = "强力于禁",card_id = 1102015,roleId = 1102015,color = 2,skill = {[1] = 1303015,[2] = 1304005,[3] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--强力于禁
	[255] = {name = "强力西方龙",card_id = 1102016,roleId = 1102016,color = 2,skill = {[1] = 1303016,[2] = 1304011,[3] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 3}},--强力西方龙
	[256] = {name = "强力飞廉",card_id = 1102017,roleId = 1102017,color = 3,skill = {[1] = 1303017,[2] = 1304013,[3] = 1304008},shl = {callCost = 4,callCd = 4,crystalType = 3}},--强力飞廉
	[257] = {name = "强力噬日",card_id = 1102018,roleId = 1102018,color = 2,skill = {[1] = 1303018,[2] = 1304013,[3] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--强力噬日
	[258] = {name = "强力食火蜥",card_id = 1102019,roleId = 1102019,color = 1,skill = {[1] = 1303019,[2] = 1304004,[3] = 1304006},shl = {callCost = 4,callCd = 4,crystalType = 1}},--强力食火蜥
	[259] = {name = "强力高顺",card_id = 1102020,roleId = 1102020,color = 2,skill = {[1] = 1303020,[2] = 1304014,[3] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 2}},--强力高顺
	[260] = {name = "强力烈风螳螂",card_id = 1102021,roleId = 1102021,color = 2,skill = {[1] = 1303021,[2] = 1304015,[3] = 1304007},shl = {callCost = 4,callCd = 4,crystalType = 1}},--强力烈风螳螂
	[261] = {name = "砍刀鬼兵",card_id = nil,roleId = 1201001,color = 0,skill = {[1] = 1801001}},--砍刀鬼兵
	[262] = {name = "双刃鬼兵",card_id = nil,roleId = 1201002,color = 0,skill = {[1] = 1801002}},--双刃鬼兵
	[263] = {name = "链球鬼兵",card_id = nil,roleId = 1201003,color = 0,skill = {[1] = 1801003}},--链球鬼兵
	[264] = {name = "鬼将军",card_id = nil,roleId = 1201004,color = 0,skill = {[1] = 1801004,[2] = 1802004}},--鬼将军
	[265] = {name = "变身后鬼将军",card_id = nil,roleId = 1201005,color = 0,skill = {[1] = 1801005,[2] = 1802005,[3] = 1803005}},--变身后鬼将军
	[266] = {name = "骷髅小兵1",card_id = nil,roleId = 1201006,color = 0,skill = {[1] = 1801006}},--骷髅小兵1
	[267] = {name = "骷髅小兵2",card_id = nil,roleId = 1201007,color = 0,skill = {[1] = 1801006}},--骷髅小兵2
	[268] = {name = "伏尸将军",card_id = nil,roleId = 1201008,color = 0,skill = {[1] = 1801008,[2] = 1802008}},--伏尸将军
	[269] = {name = "石瀑将军",card_id = nil,roleId = 1201009,color = 0,skill = {[1] = 1801009,[2] = 1802009}},--石瀑将军
	[270] = {name = "小蜘蛛",card_id = nil,roleId = 1201010,color = 0,skill = {[1] = 1801010}},--小蜘蛛
	[271] = {name = "魔导机兵团",card_id = nil,roleId = 1201011,color = 0,skill = {[1] = 1801011}},--魔导机兵团
	[272] = {name = "山蜘蛛",card_id = nil,roleId = 1201012,color = 0,skill = {[1] = 1801012,[2] = 1802012,[3] = 1803012}}--山蜘蛛
}