--[[
output from excel dailyLevel.试炼宝库.xlsx
--note:
日常本章节
日常本关卡
colums:
{Cha,章节} ,{Pos,位置} ,{ChaName,章节名} ,{AwardTimes,收益次数} ,{LvLimit,等级限制} ,{Scene,场景名} ,{Pic,页签图片} ,{OpenDay,开放时间} ,{Id,ID} ,{LevelName,关卡名描述} ,{DifficultDesc,难度描述} ,{PreId,前置Id} ,{Bs,战斗力} ,{Monster[1],怪物[1].寄灵人} ,{Monster[2],怪物[2].寄灵人} ,{Monster[3],怪物[3].寄灵人} ,{DropShow[1].Id,掉落展示1ID} ,{DropShow[1].Desc,掉落展示1描述} ,{DropShow[2].Id,掉落展示2ID} ,{DropShow[2].Desc,掉落展示2描述} ,{DropShow[3].Id,掉落展示3ID} ,{DropShow[3].Desc,掉落展示3描述} ,{DropShow[4].Id,掉落展示4ID} ,{DropShow[4].Desc,掉落展示4描述} ,{DropShow[5].Id,掉落展示5ID} ,{DropShow[5].Desc,掉落展示5描述}
primary key:
#0 [日常本章节]: Cha
#1 [日常本关卡]: Cha,HelpCol,Difficult
]]
local _T = LangUtil.Language
return{
	[601] = {
		Cha = 601,
		Pos = 1,
		ChaName = _T("魂火材料宝库"),
		AwardTimes = 3,
		LvLimit = 15,
		Scene = "Map_chilianjie_4-1",
		Pic = "ui_dtex_Elingruqin_002",
		OpenDay = {1,2,3,4,5,6,7},
		Levels = {
			[1] = {Id = 60101,LevelName = _T("魂火-神霄"),PreId = -1,LvLimit = 15,Bs = 36763,Monster = {[1] = 6010110,[2] = 6010120,[3] = 6010130},DropShow = {[1] = {Id = 1603001,Desc = _T("300")}}},--魂火本-1
			[2] = {Id = 60102,LevelName = _T("魂火-青霄"),PreId = -1,LvLimit = 30,Bs = 110593,Monster = {[1] = 6010210,[2] = 6010220,[3] = 6010230},DropShow = {[1] = {Id = 1603001,Desc = _T("500")},[2] = {Id = 1603002,Desc = _T("24")}}},--魂火本-2
			[3] = {Id = 60103,LevelName = _T("魂火-碧霄"),PreId = -1,LvLimit = 45,Bs = 228612,Monster = {[1] = 6010310,[2] = 6010320,[3] = 6010330},DropShow = {[1] = {Id = 1603001,Desc = _T("250")},[2] = {Id = 1603002,Desc = _T("75")}}},--魂火本-3
			[4] = {Id = 60104,LevelName = _T("魂火-丹霄"),PreId = -1,LvLimit = 60,Bs = 390476,Monster = {[1] = 6010410,[2] = 6010420,[3] = 6010430},DropShow = {[1] = {Id = 1603002,Desc = _T("120")},[2] = {Id = 1603003,Desc = _T("10")}}},--魂火本-4
			[5] = {Id = 60105,LevelName = _T("魂火-景霄"),PreId = -1,LvLimit = 75,Bs = 723759,Monster = {[1] = 6010510,[2] = 6010520,[3] = 6010530},DropShow = {[1] = {Id = 1603002,Desc = _T("60")},[2] = {Id = 1603003,Desc = _T("32")}}},--魂火本-5
			[6] = {Id = 60106,LevelName = _T("魂火-玉霄"),PreId = -1,LvLimit = 90,Bs = 1628397,Monster = {[1] = 6010610,[2] = 6010620,[3] = 6010630},DropShow = {[1] = {Id = 1603003,Desc = _T("45")},[2] = {Id = 1603004,Desc = _T("5")}}},--魂火本-6
			[7] = {Id = 60107,LevelName = _T("魂火-振霄"),PreId = -1,LvLimit = 105,Bs = 2543932,Monster = {[1] = 6010710,[2] = 6010720,[3] = 6010730},DropShow = {[1] = {Id = 1603003,Desc = _T("24")},[2] = {Id = 1603004,Desc = _T("16")}}},--魂火本-7
			[8] = {Id = 60108,LevelName = _T("魂火-紫霄"),PreId = -1,LvLimit = 120,Bs = 3828608,Monster = {[1] = 6010810,[2] = 6010820,[3] = 6010830},DropShow = {[1] = {Id = 1603004,Desc = _T("24")},[2] = {Id = 1603015,Desc = _T("3")}}},--魂火本-8
			[9] = {Id = 60109,LevelName = _T("魂火-太霄"),PreId = -1,LvLimit = 135,Bs = 5613879,Monster = {[1] = 6010910,[2] = 6010920,[3] = 6010930},DropShow = {[1] = {Id = 1603004,Desc = _T("12")},[2] = {Id = 1603015,Desc = _T("12")}}}--魂火本-9
		}
	},
	[602] = {
		Cha = 602,
		Pos = 3,
		ChaName = _T("突破材料宝库"),
		AwardTimes = 3,
		LvLimit = 30,
		Scene = "Map_chilianjie_4-1",
		Pic = "ui_dtex_Elingruqin_002",
		OpenDay = {1,2,3,4,5,6,7},
		Levels = {
			[1] = {Id = 60201,LevelName = _T("突破-月"),PreId = -1,LvLimit = 25,Bs = 66637,Monster = {[1] = 6020110,[2] = 6020120,[3] = 6020130},DropShow = {[1] = {Id = 1603005,Desc = _T("15")}}},--突破材料本-1
			[2] = {Id = 60202,LevelName = _T("突破-水星"),PreId = -1,LvLimit = 35,Bs = 172505,Monster = {[1] = 6020210,[2] = 6020220,[3] = 6020230},DropShow = {[1] = {Id = 1603005,Desc = _T("27")}}},--突破材料本-2
			[3] = {Id = 60203,LevelName = _T("突破-金星"),PreId = -1,LvLimit = 55,Bs = 458947,Monster = {[1] = 6020310,[2] = 6020320,[3] = 6020330},DropShow = {[1] = {Id = 1603005,Desc = _T("45")},[2] = {Id = 1603006,Desc = _T("5")}}},--突破材料本-3
			[4] = {Id = 60204,LevelName = _T("突破-日天"),PreId = -1,LvLimit = 65,Bs = 654417,Monster = {[1] = 6020410,[2] = 6020420,[3] = 6020430},DropShow = {[1] = {Id = 1603005,Desc = _T("20")},[2] = {Id = 1603006,Desc = _T("15")}}},--突破材料本-4
			[5] = {Id = 60205,LevelName = _T("突破-火星"),PreId = -1,LvLimit = 85,Bs = 1406921,Monster = {[1] = 6020510,[2] = 6020520,[3] = 6020530},DropShow = {[1] = {Id = 1603006,Desc = _T("20")},[2] = {Id = 1603007,Desc = _T("3")}}},--突破材料本-5
			[6] = {Id = 60206,LevelName = _T("突破-木星"),PreId = -1,LvLimit = 100,Bs = 2289432,Monster = {[1] = 6020610,[2] = 6020620,[3] = 6020630},DropShow = {[1] = {Id = 1603006,Desc = _T("10")},[2] = {Id = 1603007,Desc = _T("7")}}},--突破材料本-6
			[7] = {Id = 60207,LevelName = _T("突破-土星"),PreId = -1,LvLimit = 115,Bs = 4298109,Monster = {[1] = 6020710,[2] = 6020720,[3] = 6020730},DropShow = {[1] = {Id = 1603007,Desc = _T("10")},[2] = {Id = 1603008,Desc = _T("2")}}},--突破材料本-7
			[8] = {Id = 60208,LevelName = _T("突破-恒星"),PreId = -1,LvLimit = 135,Bs = 6957505,Monster = {[1] = 6020810,[2] = 6020820,[3] = 6020830},DropShow = {[1] = {Id = 1603007,Desc = _T("5")},[2] = {Id = 1603008,Desc = _T("5")}}}--突破材料本-8
		}
	},
	[603] = {
		Cha = 603,
		Pos = 2,
		ChaName = _T("金币宝库"),
		AwardTimes = 3,
		LvLimit = 22,
		Scene = "Map_chilianjie_4-1",
		Pic = "ui_dtex_Elingruqin_002",
		OpenDay = {1,2,3,4,5,6,7},
		Levels = {
			[1] = {Id = 60301,LevelName = _T("金币本-Ⅰ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 22,Bs = 38622,Monster = {[1] = 6030110,[2] = 6030120,[3] = 6030130},DropShow = {[1] = {Id = 1401002,Desc = _T("8000")}}},--金币本1-普通
			[2] = {Id = 60302,LevelName = _T("金币本-Ⅰ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60301,LvLimit = 22,Bs = 69761,Monster = {[1] = 6030210,[2] = 6030220,[3] = 6030230},DropShow = {[1] = {Id = 1401002,Desc = _T("10000")}}},--金币本1-困难
			[3] = {Id = 60303,LevelName = _T("金币本-Ⅰ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60302,LvLimit = 22,Bs = 94902,Monster = {[1] = 6030310,[2] = 6030320,[3] = 6030330},DropShow = {[1] = {Id = 1401002,Desc = _T("12000")}}},--金币本1-噩梦
			[4] = {Id = 60304,LevelName = _T("金币本-Ⅱ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 30,Bs = 119673,Monster = {[1] = 6030410,[2] = 6030420,[3] = 6030430},DropShow = {[1] = {Id = 1401002,Desc = _T("11200")}}},--金币本2-普通
			[5] = {Id = 60305,LevelName = _T("金币本-Ⅱ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60304,LvLimit = 30,Bs = 153729,Monster = {[1] = 6030510,[2] = 6030520,[3] = 6030530},DropShow = {[1] = {Id = 1401002,Desc = _T("14000")}}},--金币本2-困难
			[6] = {Id = 60306,LevelName = _T("金币本-Ⅱ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60305,LvLimit = 30,Bs = 200133,Monster = {[1] = 6030610,[2] = 6030620,[3] = 6030630},DropShow = {[1] = {Id = 1401002,Desc = _T("16800")}}},--金币本2-噩梦
			[7] = {Id = 60307,LevelName = _T("金币本-Ⅲ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 40,Bs = 284334,Monster = {[1] = 6030710,[2] = 6030720,[3] = 6030730},DropShow = {[1] = {Id = 1401002,Desc = _T("14400")}}},--金币本3-普通
			[8] = {Id = 60308,LevelName = _T("金币本-Ⅲ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60307,LvLimit = 40,Bs = 346753,Monster = {[1] = 6030810,[2] = 6030820,[3] = 6030830},DropShow = {[1] = {Id = 1401002,Desc = _T("18000")}}},--金币本3-困难
			[9] = {Id = 60309,LevelName = _T("金币本-Ⅲ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60308,LvLimit = 40,Bs = 424976,Monster = {[1] = 6030910,[2] = 6030920,[3] = 6030930},DropShow = {[1] = {Id = 1401002,Desc = _T("21600")}}},--金币本3-噩梦
			[10] = {Id = 60310,LevelName = _T("金币本-Ⅳ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 55,Bs = 300031,Monster = {[1] = 6031010,[2] = 6031020,[3] = 6031030},DropShow = {[1] = {Id = 1401002,Desc = _T("19200")}}},--金币本4-普通
			[11] = {Id = 60311,LevelName = _T("金币本-Ⅳ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60310,LvLimit = 55,Bs = 370550,Monster = {[1] = 6031110,[2] = 6031120,[3] = 6031130},DropShow = {[1] = {Id = 1401002,Desc = _T("24000")}}},--金币本4-困难
			[12] = {Id = 60312,LevelName = _T("金币本-Ⅳ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60311,LvLimit = 55,Bs = 447342,Monster = {[1] = 6031210,[2] = 6031220,[3] = 6031230},DropShow = {[1] = {Id = 1401002,Desc = _T("28800")}}},--金币本4-噩梦
			[13] = {Id = 60313,LevelName = _T("金币本-Ⅴ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 70,Bs = 660942,Monster = {[1] = 6031310,[2] = 6031320,[3] = 6031330},DropShow = {[1] = {Id = 1401002,Desc = _T("24000")}}},--金币本5-普通
			[14] = {Id = 60314,LevelName = _T("金币本-Ⅴ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60313,LvLimit = 70,Bs = 847938,Monster = {[1] = 6031410,[2] = 6031420,[3] = 6031430},DropShow = {[1] = {Id = 1401002,Desc = _T("30000")}}},--金币本5-困难
			[15] = {Id = 60315,LevelName = _T("金币本-Ⅴ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60314,LvLimit = 70,Bs = 984797,Monster = {[1] = 6031510,[2] = 6031520,[3] = 6031530},DropShow = {[1] = {Id = 1401002,Desc = _T("36000")}}},--金币本5-噩梦
			[16] = {Id = 60316,LevelName = _T("金币本-Ⅵ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 80,Bs = 1079757,Monster = {[1] = 6031610,[2] = 6031620,[3] = 6031630},DropShow = {[1] = {Id = 1401002,Desc = _T("28800")}}},--金币本6-普通
			[17] = {Id = 60317,LevelName = _T("金币本-Ⅵ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60316,LvLimit = 80,Bs = 1331345,Monster = {[1] = 6031710,[2] = 6031720,[3] = 6031730},DropShow = {[1] = {Id = 1401002,Desc = _T("36000")}}},--金币本6-困难
			[18] = {Id = 60318,LevelName = _T("金币本-Ⅵ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60317,LvLimit = 80,Bs = 1554685,Monster = {[1] = 6031810,[2] = 6031820,[3] = 6031830},DropShow = {[1] = {Id = 1401002,Desc = _T("43200")}}},--金币本6-噩梦
			[19] = {Id = 60319,LevelName = _T("金币本-Ⅶ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 90,Bs = 1195068,Monster = {[1] = 6031910,[2] = 6031920,[3] = 6031930},DropShow = {[1] = {Id = 1401002,Desc = _T("35200")}}},--金币本7-普通
			[20] = {Id = 60320,LevelName = _T("金币本-Ⅶ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60319,LvLimit = 90,Bs = 1440373,Monster = {[1] = 6032010,[2] = 6032020,[3] = 6032030},DropShow = {[1] = {Id = 1401002,Desc = _T("44000")}}},--金币本7-困难
			[21] = {Id = 60321,LevelName = _T("金币本-Ⅶ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60320,LvLimit = 90,Bs = 1795693,Monster = {[1] = 6032110,[2] = 6032120,[3] = 6032130},DropShow = {[1] = {Id = 1401002,Desc = _T("52800")}}},--金币本7-噩梦
			[22] = {Id = 60322,LevelName = _T("金币本-Ⅷ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 105,Bs = 2284653,Monster = {[1] = 6032210,[2] = 6032220,[3] = 6032230},DropShow = {[1] = {Id = 1401002,Desc = _T("44800")}}},--金币本8-普通
			[23] = {Id = 60323,LevelName = _T("金币本-Ⅷ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60322,LvLimit = 105,Bs = 2687906,Monster = {[1] = 6032310,[2] = 6032320,[3] = 6032330},DropShow = {[1] = {Id = 1401002,Desc = _T("56000")}}},--金币本8-困难
			[24] = {Id = 60324,LevelName = _T("金币本-Ⅷ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60323,LvLimit = 105,Bs = 3250962,Monster = {[1] = 6032410,[2] = 6032420,[3] = 6032430},DropShow = {[1] = {Id = 1401002,Desc = _T("67200")}}},--金币本8-噩梦
			[25] = {Id = 60325,LevelName = _T("金币本-Ⅸ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 120,Bs = 3990849,Monster = {[1] = 6032510,[2] = 6032520,[3] = 6032530},DropShow = {[1] = {Id = 1401002,Desc = _T("54400")}}},--金币本9-普通
			[26] = {Id = 60326,LevelName = _T("金币本-Ⅸ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60325,LvLimit = 120,Bs = 4470961,Monster = {[1] = 6032610,[2] = 6032620,[3] = 6032630},DropShow = {[1] = {Id = 1401002,Desc = _T("68000")}}},--金币本9-困难
			[27] = {Id = 60327,LevelName = _T("金币本-Ⅸ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60326,LvLimit = 120,Bs = 5372229,Monster = {[1] = 6032710,[2] = 6032720,[3] = 6032730},DropShow = {[1] = {Id = 1401002,Desc = _T("81600")}}},--金币本9-噩梦
			[28] = {Id = 60328,LevelName = _T("金币本-Ⅹ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 130,Bs = 4278352,Monster = {[1] = 6032810,[2] = 6032820,[3] = 6032830},DropShow = {[1] = {Id = 1401002,Desc = _T("60800")}}},--金币本10-普通
			[29] = {Id = 60329,LevelName = _T("金币本-Ⅹ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60328,LvLimit = 130,Bs = 4983135,Monster = {[1] = 6032910,[2] = 6032920,[3] = 6032930},DropShow = {[1] = {Id = 1401002,Desc = _T("76000")}}},--金币本10-困难
			[30] = {Id = 60330,LevelName = _T("金币本-Ⅹ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60329,LvLimit = 130,Bs = 6248574,Monster = {[1] = 6033010,[2] = 6033020,[3] = 6033030},DropShow = {[1] = {Id = 1401002,Desc = _T("91200")}}},--金币本10-噩梦
			[31] = {Id = 60331,LevelName = _T("金币本-Ⅺ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 140,Bs = 5915006,Monster = {[1] = 6033110,[2] = 6033120,[3] = 6033130},DropShow = {[1] = {Id = 1401002,Desc = _T("67200")}}},--金币本11-普通
			[32] = {Id = 60332,LevelName = _T("金币本-Ⅺ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60331,LvLimit = 140,Bs = 6924340,Monster = {[1] = 6033210,[2] = 6033220,[3] = 6033230},DropShow = {[1] = {Id = 1401002,Desc = _T("84000")}}},--金币本11-困难
			[33] = {Id = 60333,LevelName = _T("金币本-Ⅺ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60332,LvLimit = 140,Bs = 8886849,Monster = {[1] = 6033310,[2] = 6033320,[3] = 6033330},DropShow = {[1] = {Id = 1401002,Desc = _T("100800")}}},--金币本11-噩梦
			[34] = {Id = 60334,LevelName = _T("金币本-Ⅻ"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 150,Bs = 7868229,Monster = {[1] = 6033410,[2] = 6033420,[3] = 6033430},DropShow = {[1] = {Id = 1401002,Desc = _T("70400")}}},--金币本12-普通
			[35] = {Id = 60335,LevelName = _T("金币本-Ⅻ"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60334,LvLimit = 150,Bs = 9138238,Monster = {[1] = 6033510,[2] = 6033520,[3] = 6033530},DropShow = {[1] = {Id = 1401002,Desc = _T("88000")}}},--金币本12-困难
			[36] = {Id = 60336,LevelName = _T("金币本-Ⅻ"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60335,LvLimit = 150,Bs = 11870652,Monster = {[1] = 6033610,[2] = 6033620,[3] = 6033630},DropShow = {[1] = {Id = 1401002,Desc = _T("105600")}}}--金币本12-噩梦
		}
	},
	[604] = {
		Cha = 604,
		Pos = 5,
		ChaName = _T("神器宝库"),
		AwardTimes = 3,
		LvLimit = 43,
		Scene = "Map_chilianjie_4-1",
		Pic = "ui_dtex_Elingruqin_002",
		OpenDay = {1,2,3,4,5,6,7},
		Levels = {
			[1] = {Id = 60401,LevelName = _T("神器本-凤初"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 43,Bs = 261826,Monster = {[1] = 6040110,[2] = 6040120,[3] = 6040130}},--神器本1-普通
			[2] = {Id = 60402,LevelName = _T("神器本-琴心"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 63,Bs = 556301,Monster = {[1] = 6040210,[2] = 6040220,[3] = 6040230}},--神器本2-普通
			[3] = {Id = 60403,LevelName = _T("神器本-琴心"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60402,LvLimit = 63,Bs = 708309,Monster = {[1] = 6040310,[2] = 6040320,[3] = 6040330}},--神器本2-困难
			[4] = {Id = 60404,LevelName = _T("神器本-腾云"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 83,Bs = 1108583,Monster = {[1] = 6040410,[2] = 6040420,[3] = 6040430}},--神器本3-普通
			[5] = {Id = 60405,LevelName = _T("神器本-腾云"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60404,LvLimit = 83,Bs = 1456037,Monster = {[1] = 6040510,[2] = 6040520,[3] = 6040530}},--神器本3-困难
			[6] = {Id = 60406,LevelName = _T("神器本-腾云"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60405,LvLimit = 83,Bs = 1784526,Monster = {[1] = 6040610,[2] = 6040620,[3] = 6040630}},--神器本3-噩梦
			[7] = {Id = 60407,LevelName = _T("神器本-晖阳"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 93,Bs = 1614341,Monster = {[1] = 6040710,[2] = 6040720,[3] = 6040730}},--神器本4-普通
			[8] = {Id = 60408,LevelName = _T("神器本-晖阳"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60407,LvLimit = 93,Bs = 2115738,Monster = {[1] = 6040810,[2] = 6040820,[3] = 6040830}},--神器本4-困难
			[9] = {Id = 60409,LevelName = _T("神器本-晖阳"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60408,LvLimit = 93,Bs = 2563634,Monster = {[1] = 6040910,[2] = 6040920,[3] = 6040930}},--神器本4-噩梦
			[10] = {Id = 60410,LevelName = _T("神器本-乾元"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 103,Bs = 2282384,Monster = {[1] = 6041010,[2] = 6041020,[3] = 6041030}},--神器本5-普通
			[11] = {Id = 60411,LevelName = _T("神器本-乾元"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60410,LvLimit = 103,Bs = 2929934,Monster = {[1] = 6041110,[2] = 6041120,[3] = 6041130}},--神器本5-困难
			[12] = {Id = 60412,LevelName = _T("神器本-乾元"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60411,LvLimit = 103,Bs = 3521796,Monster = {[1] = 6041210,[2] = 6041220,[3] = 6041230}},--神器本5-噩梦
			[13] = {Id = 60413,LevelName = _T("神器本-无相"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 113,Bs = 2938421,Monster = {[1] = 6041310,[2] = 6041320,[3] = 6041330}},--神器本6-普通
			[14] = {Id = 60414,LevelName = _T("神器本-无相"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60413,LvLimit = 113,Bs = 3739249,Monster = {[1] = 6041410,[2] = 6041420,[3] = 6041430}},--神器本6-困难
			[15] = {Id = 60415,LevelName = _T("神器本-无相"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60414,LvLimit = 113,Bs = 4470797,Monster = {[1] = 6041510,[2] = 6041520,[3] = 6041530}},--神器本6-噩梦
			[16] = {Id = 60416,LevelName = _T("神器本-混元"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 123,Bs = 4166812,Monster = {[1] = 6041610,[2] = 6041620,[3] = 6041630}},--神器本7-普通
			[17] = {Id = 60417,LevelName = _T("神器本-混元"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60416,LvLimit = 123,Bs = 5212351,Monster = {[1] = 6041710,[2] = 6041720,[3] = 6041730}},--神器本7-困难
			[18] = {Id = 60418,LevelName = _T("神器本-混元"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60417,LvLimit = 123,Bs = 6118912,Monster = {[1] = 6041810,[2] = 6041820,[3] = 6041830}}--神器本7-噩梦
		}
	},
	[605] = {
		Cha = 605,
		Pos = 4,
		ChaName = _T("专属武器宝库"),
		AwardTimes = 3,
		LvLimit = 35,
		Scene = "Map_chilianjie_4-1",
		Pic = "ui_dtex_Elingruqin_002",
		OpenDay = {1,2,3,4,5,6,7},
		Levels = {
			[1] = {Id = 60501,LevelName = _T("专属武器-神霄 "),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 35,Bs = 153753,Monster = {[1] = 6050110,[2] = 6050120,[3] = 6050130},DropShow = {[1] = {Id = 1609001,Desc = _T("10")}}},--专属武器本1-普通
			[2] = {Id = 60502,LevelName = _T("专属武器-神霄 "),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60501,LvLimit = 35,Bs = 190791,Monster = {[1] = 6050210,[2] = 6050220,[3] = 6050230},DropShow = {[1] = {Id = 1609001,Desc = _T("14")}}},--专属武器本1-困难
			[3] = {Id = 60503,LevelName = _T("专属武器-神霄 "),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60502,LvLimit = 35,Bs = 251651,Monster = {[1] = 6050310,[2] = 6050320,[3] = 6050330},DropShow = {[1] = {Id = 1609001,Desc = _T("20")}}},--专属武器本1-噩梦
			[4] = {Id = 60504,LevelName = _T("专属武器-青霄 "),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 53,Bs = 345274,Monster = {[1] = 6050410,[2] = 6050420,[3] = 6050430},DropShow = {[1] = {Id = 1609001,Desc = _T("14")},[2] = {Id = 1609002,Desc = _T("3")}}},--专属武器本2-普通
			[5] = {Id = 60505,LevelName = _T("专属武器-青霄 "),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60504,LvLimit = 53,Bs = 473583,Monster = {[1] = 6050510,[2] = 6050520,[3] = 6050530},DropShow = {[1] = {Id = 1609001,Desc = _T("20")},[2] = {Id = 1609002,Desc = _T("4")}}},--专属武器本2-困难
			[6] = {Id = 60506,LevelName = _T("专属武器-青霄 "),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60505,LvLimit = 53,Bs = 593601,Monster = {[1] = 6050610,[2] = 6050620,[3] = 6050630},DropShow = {[1] = {Id = 1609001,Desc = _T("28")},[2] = {Id = 1609002,Desc = _T("6")}}},--专属武器本2-噩梦
			[7] = {Id = 60507,LevelName = _T("专属武器-碧霄"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 77,Bs = 846543,Monster = {[1] = 6050710,[2] = 6050720,[3] = 6050730},DropShow = {[1] = {Id = 1609001,Desc = _T("18")},[2] = {Id = 1609002,Desc = _T("6")}}},--专属武器本3-普通
			[8] = {Id = 60508,LevelName = _T("专属武器-碧霄"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60507,LvLimit = 77,Bs = 1139119,Monster = {[1] = 6050810,[2] = 6050820,[3] = 6050830},DropShow = {[1] = {Id = 1609001,Desc = _T("25")},[2] = {Id = 1609002,Desc = _T("8~9")}}},--专属武器本3-困难
			[9] = {Id = 60509,LevelName = _T("专属武器-碧霄"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60508,LvLimit = 77,Bs = 1399970,Monster = {[1] = 6050910,[2] = 6050920,[3] = 6050930},DropShow = {[1] = {Id = 1609001,Desc = _T("36")},[2] = {Id = 1609002,Desc = _T("12")}}},--专属武器本3-噩梦
			[10] = {Id = 60510,LevelName = _T("专属武器-丹霄"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 97,Bs = 1936120,Monster = {[1] = 6051010,[2] = 6051020,[3] = 6051030},DropShow = {[1] = {Id = 1609001,Desc = _T("20")},[2] = {Id = 1609002,Desc = _T("10")}}},--专属武器本4-普通
			[11] = {Id = 60511,LevelName = _T("专属武器-丹霄"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60510,LvLimit = 97,Bs = 2394696,Monster = {[1] = 6051110,[2] = 6051120,[3] = 6051130},DropShow = {[1] = {Id = 1609001,Desc = _T("28")},[2] = {Id = 1609002,Desc = _T("14")}}},--专属武器本4-困难
			[12] = {Id = 60512,LevelName = _T("专属武器-丹霄"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60511,LvLimit = 97,Bs = 2880423,Monster = {[1] = 6051210,[2] = 6051220,[3] = 6051230},DropShow = {[1] = {Id = 1609001,Desc = _T("40")},[2] = {Id = 1609002,Desc = _T("20")}}},--专属武器本4-噩梦
			[13] = {Id = 60513,LevelName = _T("专属武器-景霄"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 107,Bs = 2657605,Monster = {[1] = 6051310,[2] = 6051320,[3] = 6051330},DropShow = {[1] = {Id = 1609001,Desc = _T("10")},[2] = {Id = 1609002,Desc = _T("15")},[3] = {Id = 1609003,Desc = _T("2~3")}}},--专属武器本5-普通
			[14] = {Id = 60514,LevelName = _T("专属武器-景霄"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60513,LvLimit = 107,Bs = 3262030,Monster = {[1] = 6051410,[2] = 6051420,[3] = 6051430},DropShow = {[1] = {Id = 1609001,Desc = _T("14")},[2] = {Id = 1609002,Desc = _T("21")},[3] = {Id = 1609003,Desc = _T("3~4")}}},--专属武器本5-困难
			[15] = {Id = 60515,LevelName = _T("专属武器-景霄"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60514,LvLimit = 107,Bs = 3911714,Monster = {[1] = 6051510,[2] = 6051520,[3] = 6051530},DropShow = {[1] = {Id = 1609001,Desc = _T("20")},[2] = {Id = 1609002,Desc = _T("30")},[3] = {Id = 1609003,Desc = _T("5")}}},--专属武器本5-噩梦
			[16] = {Id = 60516,LevelName = _T("专属武器-玉霄"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 117,Bs = 3370343,Monster = {[1] = 6051610,[2] = 6051620,[3] = 6051630},DropShow = {[1] = {Id = 1609002,Desc = _T("12")},[2] = {Id = 1609003,Desc = _T("6")},[3] = {Id = 1609004,Desc = _T("1")}}},--专属武器本6-普通
			[17] = {Id = 60517,LevelName = _T("专属武器-玉霄"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60516,LvLimit = 117,Bs = 4160056,Monster = {[1] = 6051710,[2] = 6051720,[3] = 6051730},DropShow = {[1] = {Id = 1609002,Desc = _T("17")},[2] = {Id = 1609003,Desc = _T("8~9")},[3] = {Id = 1609004,Desc = _T("1~2")}}},--专属武器本6-困难
			[18] = {Id = 60518,LevelName = _T("专属武器-玉霄"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60517,LvLimit = 117,Bs = 5004724,Monster = {[1] = 6051810,[2] = 6051820,[3] = 6051830},DropShow = {[1] = {Id = 1609002,Desc = _T("24")},[2] = {Id = 1609003,Desc = _T("12")},[3] = {Id = 1609004,Desc = _T("2~3")}}},--专属武器本6-噩梦
			[19] = {Id = 60519,LevelName = _T("专属武器-振霄"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 127,Bs = 4472206,Monster = {[1] = 6051910,[2] = 6051920,[3] = 6051930},DropShow = {[1] = {Id = 1609002,Desc = _T("7")},[2] = {Id = 1609003,Desc = _T("10~11")},[3] = {Id = 1609004,Desc = _T("1~2")}}},--专属武器本7-普通
			[20] = {Id = 60520,LevelName = _T("专属武器-振霄"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60519,LvLimit = 127,Bs = 5432539,Monster = {[1] = 6052010,[2] = 6052020,[3] = 6052030},DropShow = {[1] = {Id = 1609002,Desc = _T("10")},[2] = {Id = 1609003,Desc = _T("14~15")},[3] = {Id = 1609004,Desc = _T("2")}}},--专属武器本7-困难
			[21] = {Id = 60521,LevelName = _T("专属武器-振霄"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60520,LvLimit = 127,Bs = 6374172,Monster = {[1] = 6052110,[2] = 6052120,[3] = 6052130},DropShow = {[1] = {Id = 1609002,Desc = _T("10")},[2] = {Id = 1609003,Desc = _T("14~15")},[3] = {Id = 1609004,Desc = _T("2")}}},--专属武器本7-噩梦
			[22] = {Id = 60522,LevelName = _T("专属武器-紫霄"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 137,Bs = 6376581,Monster = {[1] = 6052210,[2] = 6052220,[3] = 6052230},DropShow = {[1] = {Id = 1609003,Desc = _T("8")},[2] = {Id = 1609004,Desc = _T("4~5")}}},--专属武器本8-普通
			[23] = {Id = 60523,LevelName = _T("专属武器-紫霄"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60522,LvLimit = 137,Bs = 7660070,Monster = {[1] = 6052310,[2] = 6052320,[3] = 6052330},DropShow = {[1] = {Id = 1609003,Desc = _T("11")},[2] = {Id = 1609004,Desc = _T("6~9")}}},--专属武器本8-困难
			[24] = {Id = 60524,LevelName = _T("专属武器-紫霄"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60523,LvLimit = 137,Bs = 8990472,Monster = {[1] = 6052410,[2] = 6052420,[3] = 6052430},DropShow = {[1] = {Id = 1609003,Desc = _T("16")},[2] = {Id = 1609004,Desc = _T("9~11")}}},--专属武器本8-噩梦
			[25] = {Id = 60525,LevelName = _T("专属武器-太霄"),DifficultDesc = _T("<color=#5cd882>普通</color>"),PreId = -1,LvLimit = 147,Bs = 8382013,Monster = {[1] = 6052510,[2] = 6052520,[3] = 6052530},DropShow = {[1] = {Id = 1609003,Desc = _T("7~8")},[2] = {Id = 1609004,Desc = _T("7")}}},--专属武器本9-普通
			[26] = {Id = 60526,LevelName = _T("专属武器-太霄"),DifficultDesc = _T("<color=#4ac6ef>困难</color>"),PreId = 60525,LvLimit = 147,Bs = 9987032,Monster = {[1] = 6052610,[2] = 6052620,[3] = 6052630},DropShow = {[1] = {Id = 1609003,Desc = _T("10~11")},[2] = {Id = 1609004,Desc = _T("10")}}},--专属武器本9-困难
			[27] = {Id = 60527,LevelName = _T("专属武器-太霄"),DifficultDesc = _T("<color=#d178ff>噩梦</color>"),PreId = 60526,LvLimit = 147,Bs = 11812966,Monster = {[1] = 6052710,[2] = 6052720,[3] = 6052730},DropShow = {[1] = {Id = 1609003,Desc = _T("15")},[2] = {Id = 1609004,Desc = _T("14")}}}--专属武器本9-噩梦
		}
	}
}