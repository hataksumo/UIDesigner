--[[
output from excel cardDailyLevel.传记副本.xlsx
--note:
卡牌传记副本章节
卡牌传记副本关卡
colums:
{CardId,卡牌Id} ,{ChaName,章节名} ,{Id,关卡ID} ,{NxtLvId,下一关Id} ,{Name,关卡名称} ,{LvLimit,卡牌等级限制} ,{StarLimit,星级限制} ,{AwardTimes,每日收益次数} ,{ResetCost,重置消耗} ,{LevelPic,关卡配图} ,{Capability,推荐战力} ,{CardLimit[1],卡牌限制1} ,{CardLimit[2],卡牌限制2} ,{CardLimit[3],卡牌限制3} ,{CardLimit[4],卡牌限制4} ,{KeyDropShow[1].Id,关键掉落展示1ID} ,{KeyDropShow[1].Desc,关键掉落展示1描述} ,{KeyDropShow[2].Id,关键掉落展示2ID} ,{KeyDropShow[2].Desc,关键掉落展示2描述} ,{SceneName,场景名} ,{Bs,战力}
primary key:
#0 [卡牌传记章节]: Cha
#1 [卡牌传记关卡]: Cha,HelpCol,Loc
]]
local _T = LangUtil.Language
return{
	[2002] = {
		CardId = 1102002,
		ChaName = _T("许褚传记"),
		Levels = {
			[1] = {Id = 200101,NxtLvId = 200102,Name = _T("许褚传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102002",Capability = 26301,CardLimit = {[1] = 1102002},KeyDropShow = {[1] = {Id = 1702002,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 102922},--许褚传记-1
			[2] = {Id = 200102,NxtLvId = 200103,Name = _T("许褚传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102002",Capability = 274294,CardLimit = {[1] = 1102002},KeyDropShow = {[1] = {Id = 1702002,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 194977},--许褚传记-2
			[3] = {Id = 200103,NxtLvId = 200104,Name = _T("许褚传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102002",Capability = 543958,CardLimit = {[1] = 1102002},KeyDropShow = {[1] = {Id = 1702002,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 337247},--许褚传记-3
			[4] = {Id = 200104,NxtLvId = 200105,Name = _T("许褚传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102002",Capability = 902997,CardLimit = {[1] = 1102002},KeyDropShow = {[1] = {Id = 1502002,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 563400},--许褚传记-4
			[5] = {Id = 200105,NxtLvId = -1,Name = _T("许褚传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102002",Capability = 1199054,CardLimit = {[1] = 1102002},KeyDropShow = {[1] = {Id = 1702002,Desc = _T("1~2")},[2] = {Id = 1502002,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 714220}--许褚传记-5
		}
	},
	[2003] = {
		CardId = 1102003,
		ChaName = _T("典韦传记"),
		Levels = {
			[1] = {Id = 200201,NxtLvId = 200202,Name = _T("典韦传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102003",Capability = 29511,CardLimit = {[1] = 1102003},KeyDropShow = {[1] = {Id = 1702003,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 118387},--典韦传记-1
			[2] = {Id = 200202,NxtLvId = 200203,Name = _T("典韦传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102003",Capability = 274294,CardLimit = {[1] = 1102003},KeyDropShow = {[1] = {Id = 1702003,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 221217},--典韦传记-2
			[3] = {Id = 200203,NxtLvId = 200204,Name = _T("典韦传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102003",Capability = 543958,CardLimit = {[1] = 1102003},KeyDropShow = {[1] = {Id = 1702003,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 395424},--典韦传记-3
			[4] = {Id = 200204,NxtLvId = 200205,Name = _T("典韦传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102003",Capability = 902997,CardLimit = {[1] = 1102003},KeyDropShow = {[1] = {Id = 1502003,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 644059},--典韦传记-4
			[5] = {Id = 200205,NxtLvId = 200206,Name = _T("典韦传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102003",Capability = 1199054,CardLimit = {[1] = 1102003},KeyDropShow = {[1] = {Id = 1702003,Desc = _T("1~2")},[2] = {Id = 1502003,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 822570},--典韦传记-5
			[6] = {Id = 200206,NxtLvId = 200207,Name = _T("典韦传记-6"),LvLimit = 90,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102003",Capability = 1802255,CardLimit = {[1] = 1102003},KeyDropShow = {[1] = {Id = 1702003,Desc = _T("1~2")},[2] = {Id = 1502003,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 1222713},--典韦传记-6
			[7] = {Id = 200207,NxtLvId = 200208,Name = _T("典韦传记-7"),LvLimit = 100,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102003",Capability = 2796336,CardLimit = {[1] = 1102003},KeyDropShow = {[1] = {Id = 1702003,Desc = _T("1~2")},[2] = {Id = 1502003,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 1917191},--典韦传记-7
			[8] = {Id = 200208,NxtLvId = -1,Name = _T("典韦传记-8"),LvLimit = 120,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102003",Capability = 4244691,CardLimit = {[1] = 1102003},KeyDropShow = {[1] = {Id = 1702003,Desc = _T("2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 3176146}--典韦传记-8
		}
	},
	[2005] = {
		CardId = 1102005,
		ChaName = _T("李轩辕传记"),
		Levels = {
			[1] = {Id = 200301,NxtLvId = 200302,Name = _T("李轩辕传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102005",Capability = 51501,CardLimit = {[1] = 1102005},KeyDropShow = {[1] = {Id = 1702005,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 131492},--李轩辕传记-1
			[2] = {Id = 200302,NxtLvId = 200303,Name = _T("李轩辕传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102005",Capability = 902997,CardLimit = {[1] = 1102005},KeyDropShow = {[1] = {Id = 1702005,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 243992},--李轩辕传记-2
			[3] = {Id = 200303,NxtLvId = 200304,Name = _T("李轩辕传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102005",Capability = 1199054,CardLimit = {[1] = 1102005},KeyDropShow = {[1] = {Id = 1702005,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 448212},--李轩辕传记-3
			[4] = {Id = 200304,NxtLvId = 200305,Name = _T("李轩辕传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102005",Capability = 1802255,CardLimit = {[1] = 1102005},KeyDropShow = {[1] = {Id = 1502005,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 716401},--李轩辕传记-4
			[5] = {Id = 200305,NxtLvId = -1,Name = _T("李轩辕传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102005",Capability = 2796336,CardLimit = {[1] = 1102005},KeyDropShow = {[1] = {Id = 1702005,Desc = _T("1~2")},[2] = {Id = 1502005,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 918462}--李轩辕传记-5
		}
	},
	[2007] = {
		CardId = 1102007,
		ChaName = _T("天使缇娜传记"),
		Levels = {
			[1] = {Id = 200401,NxtLvId = 200402,Name = _T("天使缇娜传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102007",Capability = 29511,CardLimit = {[1] = 1102007},KeyDropShow = {[1] = {Id = 1702007,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 1350009},--天使缇娜传记-1
			[2] = {Id = 200402,NxtLvId = 200403,Name = _T("天使缇娜传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102007",Capability = 274294,CardLimit = {[1] = 1102007},KeyDropShow = {[1] = {Id = 1702007,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 2085984},--天使缇娜传记-2
			[3] = {Id = 200403,NxtLvId = 200404,Name = _T("天使缇娜传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102007",Capability = 543958,CardLimit = {[1] = 1102007},KeyDropShow = {[1] = {Id = 1702007,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 3415279},--天使缇娜传记-3
			[4] = {Id = 200404,NxtLvId = 200405,Name = _T("天使缇娜传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102007",Capability = 902997,CardLimit = {[1] = 1102007},KeyDropShow = {[1] = {Id = 1502007,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 761462},--天使缇娜传记-4
			[5] = {Id = 200405,NxtLvId = 200406,Name = _T("天使缇娜传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102007",Capability = 1199054,CardLimit = {[1] = 1102007},KeyDropShow = {[1] = {Id = 1702007,Desc = _T("1~2")},[2] = {Id = 1502007,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 998599},--天使缇娜传记-5
			[6] = {Id = 200406,NxtLvId = 200407,Name = _T("天使缇娜传记-6"),LvLimit = 90,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102007",Capability = 1802255,CardLimit = {[1] = 1102007},KeyDropShow = {[1] = {Id = 1702007,Desc = _T("1~2")},[2] = {Id = 1502007,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 1557451},--天使缇娜传记-6
			[7] = {Id = 200407,NxtLvId = 200408,Name = _T("天使缇娜传记-7"),LvLimit = 100,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102007",Capability = 2796336,CardLimit = {[1] = 1102007},KeyDropShow = {[1] = {Id = 1702007,Desc = _T("1~2")},[2] = {Id = 1502007,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 2452981},--天使缇娜传记-7
			[8] = {Id = 200408,NxtLvId = -1,Name = _T("天使缇娜传记-8"),LvLimit = 120,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102007",Capability = 4244691,CardLimit = {[1] = 1102007},KeyDropShow = {[1] = {Id = 1702007,Desc = _T("2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 4188925}--天使缇娜传记-8
		}
	},
	[2008] = {
		Levels = {
			[1] = {Id = 200501,NxtLvId = 200502,Name = _T("夏侯渊传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102008",Capability = 29511,CardLimit = {[1] = 1102008},KeyDropShow = {[1] = {Id = 1702008,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 135439},--夏侯渊传记-1
			[2] = {Id = 200502,NxtLvId = 200503,Name = _T("夏侯渊传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102008",Capability = 274294,CardLimit = {[1] = 1102008},KeyDropShow = {[1] = {Id = 1702008,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 247764},--夏侯渊传记-2
			[3] = {Id = 200503,NxtLvId = 200504,Name = _T("夏侯渊传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102008",Capability = 543958,CardLimit = {[1] = 1102008},KeyDropShow = {[1] = {Id = 1702008,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 461913},--夏侯渊传记-3
			[4] = {Id = 200504,NxtLvId = 200505,Name = _T("夏侯渊传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102008",Capability = 902997,CardLimit = {[1] = 1102008},KeyDropShow = {[1] = {Id = 1502008,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 761462},--夏侯渊传记-4
			[5] = {Id = 200505,NxtLvId = 200506,Name = _T("夏侯渊传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102008",Capability = 1199054,CardLimit = {[1] = 1102008},KeyDropShow = {[1] = {Id = 1702008,Desc = _T("1~2")},[2] = {Id = 1502008,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 998599},--夏侯渊传记-5
			[6] = {Id = 200506,NxtLvId = 200507,Name = _T("夏侯渊传记-6"),LvLimit = 90,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102008",Capability = 1802255,CardLimit = {[1] = 1102008},KeyDropShow = {[1] = {Id = 1702008,Desc = _T("1~2")},[2] = {Id = 1502008,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 1557451},--夏侯渊传记-6
			[7] = {Id = 200507,NxtLvId = 200508,Name = _T("夏侯渊传记-7"),LvLimit = 100,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102008",Capability = 2796336,CardLimit = {[1] = 1102008},KeyDropShow = {[1] = {Id = 1702008,Desc = _T("1~2")},[2] = {Id = 1502008,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 2452981},--夏侯渊传记-7
			[8] = {Id = 200508,NxtLvId = -1,Name = _T("夏侯渊传记-8"),LvLimit = 120,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102008",Capability = 4244691,CardLimit = {[1] = 1102008},KeyDropShow = {[1] = {Id = 1702008,Desc = _T("2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 4188925}--夏侯渊传记-8
		}
	},
	[2009] = {
		CardId = 1102009,
		ChaName = _T("徐晃传记"),
		Levels = {
			[1] = {Id = 200601,NxtLvId = 200602,Name = _T("徐晃传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102009",Capability = 26301,CardLimit = {[1] = 1102009},KeyDropShow = {[1] = {Id = 1702009,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 117289},--徐晃传记-1
			[2] = {Id = 200602,NxtLvId = 200603,Name = _T("徐晃传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102009",Capability = 274294,CardLimit = {[1] = 1102009},KeyDropShow = {[1] = {Id = 1702009,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 215939},--徐晃传记-2
			[3] = {Id = 200603,NxtLvId = 200604,Name = _T("徐晃传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102009",Capability = 543958,CardLimit = {[1] = 1102009},KeyDropShow = {[1] = {Id = 1702009,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 380217},--徐晃传记-3
			[4] = {Id = 200604,NxtLvId = 200605,Name = _T("徐晃传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102009",Capability = 902997,CardLimit = {[1] = 1102009},KeyDropShow = {[1] = {Id = 1502009,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 644045},--徐晃传记-4
			[5] = {Id = 200605,NxtLvId = -1,Name = _T("徐晃传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102009",Capability = 1199054,CardLimit = {[1] = 1102009},KeyDropShow = {[1] = {Id = 1702009,Desc = _T("1~2")},[2] = {Id = 1502009,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 827429}--徐晃传记-5
		}
	},
	[2010] = {
		CardId = 1102010,
		ChaName = _T("张郃传记"),
		Levels = {
			[1] = {Id = 200701,NxtLvId = 200702,Name = _T("张郃传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102010",Capability = 29511,CardLimit = {[1] = 1102010},KeyDropShow = {[1] = {Id = 1702010,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 135439},--张郃传记-1
			[2] = {Id = 200702,NxtLvId = 200703,Name = _T("张郃传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102010",Capability = 274294,CardLimit = {[1] = 1102010},KeyDropShow = {[1] = {Id = 1702010,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 247764},--张郃传记-2
			[3] = {Id = 200703,NxtLvId = 200704,Name = _T("张郃传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102010",Capability = 543958,CardLimit = {[1] = 1102010},KeyDropShow = {[1] = {Id = 1702010,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 461913},--张郃传记-3
			[4] = {Id = 200704,NxtLvId = 200705,Name = _T("张郃传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102010",Capability = 902997,CardLimit = {[1] = 1102010},KeyDropShow = {[1] = {Id = 1502010,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 761462},--张郃传记-4
			[5] = {Id = 200705,NxtLvId = 200706,Name = _T("张郃传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102010",Capability = 1199054,CardLimit = {[1] = 1102010},KeyDropShow = {[1] = {Id = 1702010,Desc = _T("1~2")},[2] = {Id = 1502010,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 998599},--张郃传记-5
			[6] = {Id = 200706,NxtLvId = 200707,Name = _T("张郃传记-6"),LvLimit = 90,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102010",Capability = 1802255,CardLimit = {[1] = 1102010},KeyDropShow = {[1] = {Id = 1702010,Desc = _T("1~2")},[2] = {Id = 1502010,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 1557451},--张郃传记-6
			[7] = {Id = 200707,NxtLvId = 200708,Name = _T("张郃传记-7"),LvLimit = 100,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102010",Capability = 2796336,CardLimit = {[1] = 1102010},KeyDropShow = {[1] = {Id = 1702010,Desc = _T("1~2")},[2] = {Id = 1502010,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 2452981},--张郃传记-7
			[8] = {Id = 200708,NxtLvId = -1,Name = _T("张郃传记-8"),LvLimit = 120,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102010",Capability = 4244691,CardLimit = {[1] = 1102010},KeyDropShow = {[1] = {Id = 1702010,Desc = _T("2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 4188925}--张郃传记-8
		}
	},
	[2011] = {
		CardId = 1102011,
		ChaName = _T("张飞传记"),
		Levels = {
			[1] = {Id = 200801,NxtLvId = 200802,Name = _T("张飞传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102011",Capability = 29511,CardLimit = {[1] = 1102011},KeyDropShow = {[1] = {Id = 1702011,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 135439},--张飞传记-1
			[2] = {Id = 200802,NxtLvId = 200803,Name = _T("张飞传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102011",Capability = 274294,CardLimit = {[1] = 1102011},KeyDropShow = {[1] = {Id = 1702011,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 247764},--张飞传记-2
			[3] = {Id = 200803,NxtLvId = 200804,Name = _T("张飞传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102011",Capability = 543958,CardLimit = {[1] = 1102011},KeyDropShow = {[1] = {Id = 1702011,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 461913},--张飞传记-3
			[4] = {Id = 200804,NxtLvId = 200805,Name = _T("张飞传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102011",Capability = 902997,CardLimit = {[1] = 1102011},KeyDropShow = {[1] = {Id = 1502011,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 761462},--张飞传记-4
			[5] = {Id = 200805,NxtLvId = 200806,Name = _T("张飞传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102011",Capability = 1199054,CardLimit = {[1] = 1102011},KeyDropShow = {[1] = {Id = 1702011,Desc = _T("1~2")},[2] = {Id = 1502011,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 998599},--张飞传记-5
			[6] = {Id = 200806,NxtLvId = 200807,Name = _T("张飞传记-6"),LvLimit = 90,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102011",Capability = 1802255,CardLimit = {[1] = 1102011},KeyDropShow = {[1] = {Id = 1702011,Desc = _T("1~2")},[2] = {Id = 1502011,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 1557451},--张飞传记-6
			[7] = {Id = 200807,NxtLvId = 200808,Name = _T("张飞传记-7"),LvLimit = 100,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102011",Capability = 2796336,CardLimit = {[1] = 1102011},KeyDropShow = {[1] = {Id = 1702011,Desc = _T("1~2")},[2] = {Id = 1502011,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 2452981},--张飞传记-7
			[8] = {Id = 200808,NxtLvId = -1,Name = _T("张飞传记-8"),LvLimit = 120,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102011",Capability = 4244691,CardLimit = {[1] = 1102011},KeyDropShow = {[1] = {Id = 1702011,Desc = _T("2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 4188925}--张飞传记-8
		}
	},
	[2014] = {
		CardId = 1102014,
		ChaName = _T("石灵明传记"),
		Levels = {
			[1] = {Id = 200901,NxtLvId = 200902,Name = _T("石灵明传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102014",Capability = 26301,CardLimit = {[1] = 1102014},KeyDropShow = {[1] = {Id = 1702014,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 117289},--石灵明传记-1
			[2] = {Id = 200902,NxtLvId = 200903,Name = _T("石灵明传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102014",Capability = 274294,CardLimit = {[1] = 1102014},KeyDropShow = {[1] = {Id = 1702014,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 215939},--石灵明传记-2
			[3] = {Id = 200903,NxtLvId = 200904,Name = _T("石灵明传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102014",Capability = 543958,CardLimit = {[1] = 1102014},KeyDropShow = {[1] = {Id = 1702014,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 380217},--石灵明传记-3
			[4] = {Id = 200904,NxtLvId = 200905,Name = _T("石灵明传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102014",Capability = 902997,CardLimit = {[1] = 1102014},KeyDropShow = {[1] = {Id = 1502014,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 644045},--石灵明传记-4
			[5] = {Id = 200905,NxtLvId = -1,Name = _T("石灵明传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102014",Capability = 1199054,CardLimit = {[1] = 1102014},KeyDropShow = {[1] = {Id = 1702014,Desc = _T("1~2")},[2] = {Id = 1502014,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 827429}--石灵明传记-5
		}
	},
	[2016] = {
		CardId = 1102016,
		ChaName = _T("西方龙传记"),
		Levels = {
			[1] = {Id = 201001,NxtLvId = 201002,Name = _T("提亚马特传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102016",Capability = 29511,CardLimit = {[1] = 1102016},KeyDropShow = {[1] = {Id = 1702016,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 135439},--西方龙传记-1
			[2] = {Id = 201002,NxtLvId = 201003,Name = _T("提亚马特传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102016",Capability = 274294,CardLimit = {[1] = 1102016},KeyDropShow = {[1] = {Id = 1702016,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 247764},--西方龙传记-2
			[3] = {Id = 201003,NxtLvId = 201004,Name = _T("提亚马特传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102016",Capability = 543958,CardLimit = {[1] = 1102016},KeyDropShow = {[1] = {Id = 1702016,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 461913},--西方龙传记-3
			[4] = {Id = 201004,NxtLvId = 201005,Name = _T("提亚马特传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102016",Capability = 902997,CardLimit = {[1] = 1102016},KeyDropShow = {[1] = {Id = 1502016,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 761462},--西方龙传记-4
			[5] = {Id = 201005,NxtLvId = 201006,Name = _T("提亚马特传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102016",Capability = 1199054,CardLimit = {[1] = 1102016},KeyDropShow = {[1] = {Id = 1702016,Desc = _T("1~2")},[2] = {Id = 1502016,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 998599},--西方龙传记-5
			[6] = {Id = 201006,NxtLvId = 201007,Name = _T("提亚马特传记-6"),LvLimit = 90,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102016",Capability = 1802255,CardLimit = {[1] = 1102016},KeyDropShow = {[1] = {Id = 1702016,Desc = _T("1~2")},[2] = {Id = 1502016,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 1557451},--西方龙传记-6
			[7] = {Id = 201007,NxtLvId = 201008,Name = _T("提亚马特传记-7"),LvLimit = 100,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102016",Capability = 2796336,CardLimit = {[1] = 1102016},KeyDropShow = {[1] = {Id = 1702016,Desc = _T("1~2")},[2] = {Id = 1502016,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 2452981},--西方龙传记-7
			[8] = {Id = 201008,NxtLvId = -1,Name = _T("提亚马特传记-8"),LvLimit = 120,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102016",Capability = 4244691,CardLimit = {[1] = 1102016},KeyDropShow = {[1] = {Id = 1702016,Desc = _T("2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 4188925}--西方龙传记-8
		}
	},
	[2017] = {
		CardId = 1102017,
		ChaName = _T("飞廉传记"),
		Levels = {
			[1] = {Id = 201101,NxtLvId = 201102,Name = _T("飞廉传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102017",Capability = 26301,CardLimit = {[1] = 1102017},KeyDropShow = {[1] = {Id = 1702017,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 117289},--飞廉传记-1
			[2] = {Id = 201102,NxtLvId = 201103,Name = _T("飞廉传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102017",Capability = 274294,CardLimit = {[1] = 1102017},KeyDropShow = {[1] = {Id = 1702017,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 215939},--飞廉传记-2
			[3] = {Id = 201103,NxtLvId = 201104,Name = _T("飞廉传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102017",Capability = 543958,CardLimit = {[1] = 1102017},KeyDropShow = {[1] = {Id = 1702017,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 380217},--飞廉传记-3
			[4] = {Id = 201104,NxtLvId = 201105,Name = _T("飞廉传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102017",Capability = 902997,CardLimit = {[1] = 1102017},KeyDropShow = {[1] = {Id = 1502017,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 644045},--飞廉传记-4
			[5] = {Id = 201105,NxtLvId = -1,Name = _T("飞廉传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102017",Capability = 1199054,CardLimit = {[1] = 1102017},KeyDropShow = {[1] = {Id = 1702017,Desc = _T("1~2")},[2] = {Id = 1502017,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 827429}--飞廉传记-5
		}
	},
	[2020] = {
		CardId = 1102020,
		ChaName = _T("高顺传记"),
		Levels = {
			[1] = {Id = 201201,NxtLvId = 201202,Name = _T("高顺传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102020",Capability = 26301,CardLimit = {[1] = 1102020},KeyDropShow = {[1] = {Id = 1702020,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 117289},--高顺传记-1
			[2] = {Id = 201202,NxtLvId = 201203,Name = _T("高顺传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102020",Capability = 274294,CardLimit = {[1] = 1102020},KeyDropShow = {[1] = {Id = 1702020,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 215939},--高顺传记-2
			[3] = {Id = 201203,NxtLvId = 201204,Name = _T("高顺传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102020",Capability = 543958,CardLimit = {[1] = 1102020},KeyDropShow = {[1] = {Id = 1702020,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 380217},--高顺传记-3
			[4] = {Id = 201204,NxtLvId = 201205,Name = _T("高顺传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102020",Capability = 902997,CardLimit = {[1] = 1102020},KeyDropShow = {[1] = {Id = 1502020,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 644045},--高顺传记-4
			[5] = {Id = 201205,NxtLvId = -1,Name = _T("高顺传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102020",Capability = 1199054,CardLimit = {[1] = 1102020},KeyDropShow = {[1] = {Id = 1702020,Desc = _T("1~2")},[2] = {Id = 1502020,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 827429}--高顺传记-5
		}
	},
	[2021] = {
		CardId = 1102021,
		ChaName = _T("烈风螳螂传记"),
		Levels = {
			[1] = {Id = 201301,NxtLvId = 201302,Name = _T("烈风螳螂传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102021",Capability = 26301,CardLimit = {[1] = 1102021},KeyDropShow = {[1] = {Id = 1702021,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 117289},--烈风螳螂传记-1
			[2] = {Id = 201302,NxtLvId = 201303,Name = _T("烈风螳螂传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102021",Capability = 274294,CardLimit = {[1] = 1102021},KeyDropShow = {[1] = {Id = 1702021,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 215939},--烈风螳螂传记-2
			[3] = {Id = 201303,NxtLvId = 201304,Name = _T("烈风螳螂传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102021",Capability = 543958,CardLimit = {[1] = 1102021},KeyDropShow = {[1] = {Id = 1702021,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 380217},--烈风螳螂传记-3
			[4] = {Id = 201304,NxtLvId = 201305,Name = _T("烈风螳螂传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102021",Capability = 902997,CardLimit = {[1] = 1102021},KeyDropShow = {[1] = {Id = 1502021,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 644045},--烈风螳螂传记-4
			[5] = {Id = 201305,NxtLvId = -1,Name = _T("烈风螳螂传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102021",Capability = 1199054,CardLimit = {[1] = 1102021},KeyDropShow = {[1] = {Id = 1702021,Desc = _T("1~2")},[2] = {Id = 1502021,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 827429}--烈风螳螂传记-5
		}
	},
	[2024] = {
		CardId = 1102024,
		ChaName = _T("朱仙传记"),
		Levels = {
			[1] = {Id = 201401,NxtLvId = 201402,Name = _T("朱仙传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102024",Capability = 26301,CardLimit = {[1] = 1102024},KeyDropShow = {[1] = {Id = 1702024,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 117289},--朱仙传记-1
			[2] = {Id = 201402,NxtLvId = 201403,Name = _T("朱仙传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102024",Capability = 274294,CardLimit = {[1] = 1102024},KeyDropShow = {[1] = {Id = 1702024,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 215939},--朱仙传记-2
			[3] = {Id = 201403,NxtLvId = 201404,Name = _T("朱仙传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102024",Capability = 543958,CardLimit = {[1] = 1102024},KeyDropShow = {[1] = {Id = 1702024,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 380217},--朱仙传记-3
			[4] = {Id = 201404,NxtLvId = 201405,Name = _T("朱仙传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102024",Capability = 902997,CardLimit = {[1] = 1102024},KeyDropShow = {[1] = {Id = 1502024,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 644045},--朱仙传记-4
			[5] = {Id = 201405,NxtLvId = -1,Name = _T("朱仙传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102024",Capability = 1199054,CardLimit = {[1] = 1102024},KeyDropShow = {[1] = {Id = 1702024,Desc = _T("1~2")},[2] = {Id = 1502024,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 827429}--朱仙传记-5
		}
	},
	[2026] = {
		CardId = 1102026,
		ChaName = _T("雷震子传记"),
		Levels = {
			[1] = {Id = 201501,NxtLvId = 201502,Name = _T("雷震子传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102026",Capability = 26301,CardLimit = {[1] = 1102026},KeyDropShow = {[1] = {Id = 1702026,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 117289},--雷震子传记-1
			[2] = {Id = 201502,NxtLvId = 201503,Name = _T("雷震子传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102026",Capability = 274294,CardLimit = {[1] = 1102026},KeyDropShow = {[1] = {Id = 1702026,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 215939},--雷震子传记-2
			[3] = {Id = 201503,NxtLvId = 201504,Name = _T("雷震子传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102026",Capability = 543958,CardLimit = {[1] = 1102026},KeyDropShow = {[1] = {Id = 1702026,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 380217},--雷震子传记-3
			[4] = {Id = 201504,NxtLvId = 201505,Name = _T("雷震子传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102026",Capability = 902997,CardLimit = {[1] = 1102026},KeyDropShow = {[1] = {Id = 1502026,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 644045},--雷震子传记-4
			[5] = {Id = 201505,NxtLvId = -1,Name = _T("雷震子传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102026",Capability = 1199054,CardLimit = {[1] = 1102026},KeyDropShow = {[1] = {Id = 1702026,Desc = _T("1~2")},[2] = {Id = 1502026,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 827429}--雷震子传记-5
		}
	},
	[2030] = {
		Levels = {
			[1] = {Id = 201601,NxtLvId = 201602,Name = _T("燕青传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102030",Capability = 26301,CardLimit = {[1] = 1102030},KeyDropShow = {[1] = {Id = 1702030,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 117289},--燕青传记-1
			[2] = {Id = 201602,NxtLvId = 201603,Name = _T("燕青传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102030",Capability = 274294,CardLimit = {[1] = 1102030},KeyDropShow = {[1] = {Id = 1702030,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 215939},--燕青传记-2
			[3] = {Id = 201603,NxtLvId = 201604,Name = _T("燕青传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102030",Capability = 543958,CardLimit = {[1] = 1102030},KeyDropShow = {[1] = {Id = 1702030,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 380217},--燕青传记-3
			[4] = {Id = 201604,NxtLvId = 201605,Name = _T("燕青传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102030",Capability = 902997,CardLimit = {[1] = 1102030},KeyDropShow = {[1] = {Id = 1502030,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 644045},--燕青传记-4
			[5] = {Id = 201605,NxtLvId = -1,Name = _T("燕青传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102030",Capability = 1199054,CardLimit = {[1] = 1102030},KeyDropShow = {[1] = {Id = 1702030,Desc = _T("1~2")},[2] = {Id = 1502030,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 827429}--燕青传记-5
		}
	},
	[2031] = {
		CardId = 1102031,
		ChaName = _T("秦琼传记"),
		Levels = {
			[1] = {Id = 201701,NxtLvId = 201702,Name = _T("秦琼传记-1"),LvLimit = 1,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102031",Capability = 29511,CardLimit = {[1] = 1102031},KeyDropShow = {[1] = {Id = 1702031,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 135439},--秦琼传记-1
			[2] = {Id = 201702,NxtLvId = 201703,Name = _T("秦琼传记-2"),LvLimit = 40,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102031",Capability = 274294,CardLimit = {[1] = 1102031},KeyDropShow = {[1] = {Id = 1702031,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 247764},--秦琼传记-2
			[3] = {Id = 201703,NxtLvId = 201704,Name = _T("秦琼传记-3"),LvLimit = 55,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102031",Capability = 543958,CardLimit = {[1] = 1102031},KeyDropShow = {[1] = {Id = 1702031,Desc = _T("1~2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 461913},--秦琼传记-3
			[4] = {Id = 201704,NxtLvId = 201705,Name = _T("秦琼传记-4"),LvLimit = 70,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102031",Capability = 902997,CardLimit = {[1] = 1102031},KeyDropShow = {[1] = {Id = 1502031,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 761462},--秦琼传记-4
			[5] = {Id = 201705,NxtLvId = 201706,Name = _T("秦琼传记-5"),LvLimit = 80,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102031",Capability = 1199054,CardLimit = {[1] = 1102031},KeyDropShow = {[1] = {Id = 1702031,Desc = _T("1~2")},[2] = {Id = 1502031,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 998599},--秦琼传记-5
			[6] = {Id = 201706,NxtLvId = 201707,Name = _T("秦琼传记-6"),LvLimit = 90,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102031",Capability = 1802255,CardLimit = {[1] = 1102031},KeyDropShow = {[1] = {Id = 1702031,Desc = _T("1~2")},[2] = {Id = 1502031,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 1557451},--秦琼传记-6
			[7] = {Id = 201707,NxtLvId = 201708,Name = _T("秦琼传记-7"),LvLimit = 100,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102031",Capability = 2796336,CardLimit = {[1] = 1102031},KeyDropShow = {[1] = {Id = 1702031,Desc = _T("1~2")},[2] = {Id = 1502031,Desc = _T("1")}},SceneName = "Map_luoshajiedao_1-4",Bs = 2452981},--秦琼传记-7
			[8] = {Id = 201708,NxtLvId = -1,Name = _T("秦琼传记-8"),LvLimit = 120,StarLimit = 2,AwardTimes = 3,ResetCost = {50,100,200},LevelPic = "kp_km_1102031",Capability = 4244691,CardLimit = {[1] = 1102031},KeyDropShow = {[1] = {Id = 1702031,Desc = _T("2")}},SceneName = "Map_luoshajiedao_1-4",Bs = 4188925}--秦琼传记-8
		}
	}
}