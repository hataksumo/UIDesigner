--[[
output from excel chapter.章节.xlsx
--note:
章节名称表
章节宝箱表
章节关卡表
colums:
{ChaId,章节ID} ,{Name,名字} ,{Difficult,难度
1普通，2困难，3序章} ,{Scene,场景名} ,{DrillPortal,集训营传送门} ,{Res,章节预设名称} ,{Id,宝箱ID} ,{HelpCol,辅助列} ,{Star,星数} ,{Award[1].Id,奖励道具1} ,{Award[1].Val,数量1} ,{Award[2].Id,奖励道具2} ,{Award[2].Val,数量2} ,{Award[3].Id,奖励道具3} ,{Award[3].Val,数量3} ,{Award[4].Id,奖励道具4} ,{Award[4].Val,数量4} ,{Award[5].Id,奖励道具5} ,{Award[5].Val,数量5} ,{LevelIdRequired,所需关卡Id} ,{Off.X,X方向偏移量} ,{Off.Y,Y方向偏移量} ,{Pos,在章节场景中的位置} ,{StoryId[1],剧情ID} ,{StoryId[2],剧情ID} ,{Modle,模型} ,{DrillLv,训练关卡} ,{Type,关卡节点类型，0不能复刷，1可以复刷} ,{FormType,关卡内容类型，
0战斗
1剧情} ,{LastId,前置关卡} ,{FirstExp,首通经验} ,{EveryExp,再次经验} ,{LvBoxId,关卡宝箱Id} ,{FDAward[1].Id,首次掉落ID1} ,{FDAward[1].Val,首次掉落数量1} ,{FDAward[2].Id,首次掉落ID2} ,{FDAward[2].Val,首次掉落数量2} ,{FDAward[3].Id,首次掉落ID3} ,{FDAward[3].Val,首次掉落数量3} ,{FDAward[4].Id,首次掉落ID4} ,{FDAward[4].Val,首次掉落数量4} ,{FDAward[5].Id,首次掉落ID4} ,{FDAward[5].Val,首次掉落数量4} ,{DropShow[1],掉落展示1} ,{DropShow[2],掉落展示2} ,{DropShow[3],掉落展示3} ,{DropShow[4],掉落展示4} ,{DropShow[5],掉落展示5} ,{DropId,重复掉落ID} ,{CostStamina,消耗体力} ,{CostStaminaFail,失败损体力} ,{StageIcon,章节详情图片
ArtRes\UI\DynamicTex\Stage} ,{SceneName,场景名} ,{MapPosId,地图坐标} ,{FirstAtk,先攻值} ,{NeedLv,需要等级} ,{Bs,战力} ,{StarRating,评星条件} ,{StoryDes,故事情节}
primary key:
#0 [章节表]: Difficult,ChaId
#1 [章节宝箱表]: Difficult,ChaId,HelpCol,Star
#2 [关卡宝箱]: Difficult,ChaId,HelpCol,Id
#3 [关卡表]: Difficult,ChaId,HelpCol,Id
]]
local _T = LangUtil.Language
return{
	[1] = {
		[101] = {
			Name = _T("普通1章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11011,Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1401002,Val = 600}}},--钻石50绿色基础材料8金币600
				[20] = {Id = 11012,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1401002,Val = 1200}}},--守护灵抽卡券2绿色基础材料15金币1200
				[30] = {Id = 11013,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1}}}--守护灵抽卡券3绿色基础材料23金币1800
			},
			ExtBox = {
				[21011] = {LevelIdRequired = 10103,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 4},[2] = {Id = 1603001,Val = 30},[3] = {Id = 1401003,Val = 4000}}},--钻石10守护灵初级抽卡券2守护灵经验750
				[21012] = {LevelIdRequired = 10106,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 6},[2] = {Id = 1603001,Val = 70},[3] = {Id = 1401003,Val = 6000}}},--钻石15守护灵初级抽卡券3守护灵经验1500
				[21013] = {LevelIdRequired = 10110,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1603005,Val = 6},[2] = {Id = 1603001,Val = 100},[3] = {Id = 1401003,Val = 10000}}}--钻石25守护灵初级抽卡券5守护灵经验2250
			},
			Levels = {
				[10101] = {Pos = 1,Name = _T("普通1章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,FirstExp = 50,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 300},[2] = {Id = 1401003,Val = 900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 1,Bs = 3000,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通1章1关
				[10102] = {Pos = 3,Name = _T("普通1章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10101},FirstExp = 50,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 300},[2] = {Id = 1401003,Val = 900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 1,Bs = 4000,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通1章2关
				[10103] = {Pos = 5,StoryId = {[1] = 10103},Name = _T("普通1章-3关"),Modle = "Chapters_video",DrillLv = 301,Type = 1,FormType = 0,LastId = {10102},FirstExp = 50,EveryExp = 0,LvBoxId = 21011,FDAward = {[1] = {Id = 1401002,Val = 300},[2] = {Id = 1401003,Val = 900},[3] = {Id = 1101001,Val = 1},[4] = {Id = 1102015,Val = 1}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,FirstAtk = 10000,NeedLv = 1,Bs = 5000,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通1章3关
				[10104] = {Pos = 7,Name = _T("普通1章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10103},FirstExp = 50,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 300},[2] = {Id = 1401003,Val = 900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 1,Bs = 6642,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通1章4关
				[10105] = {Pos = 8,StoryId = {[1] = 10105},Name = _T("普通1章-5关"),Modle = "Chapters_video",Type = 1,FormType = 1,LastId = {10104},FirstExp = 50,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 300},[2] = {Id = 1401003,Val = 900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 1,Bs = 7017,StarRating = {1,5,13},StoryDes = "误入罗刹街的夏铃，身陷重围，所幸被镇魂将曹焱兵所救，但同时也发现了曹焱兵的秘密，等待她的将会是何种命运……"},--普通1章5关
				[10106] = {Pos = 9,Name = _T("普通1章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10105},FirstExp = 50,EveryExp = 0,LvBoxId = 21012,FDAward = {[1] = {Id = 1401002,Val = 300},[2] = {Id = 1401003,Val = 900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 1,Bs = 8077,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通1章6关
				[10107] = {Pos = 11,StoryId = {[1] = 10107},Name = _T("普通1章-7关"),Modle = "Chapters_video",Type = 1,FormType = 0,LastId = {10106},FirstExp = 75,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 300},[2] = {Id = 1401003,Val = 900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 1,Bs = 9042,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通1章7关
				[10108] = {Pos = 12,Name = _T("普通1章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10107},FirstExp = 75,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 300},[2] = {Id = 1401003,Val = 900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 1,Bs = 10017,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通1章8关
				[10109] = {Pos = 13,Name = _T("普通1章-9关"),Modle = "Chapters_fight",DrillLv = 302,Type = 1,FormType = 0,LastId = {10108},FirstExp = 75,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 300},[2] = {Id = 1401003,Val = 900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 1,Bs = 11437,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通1章9关
				[10110] = {Pos = 14,StoryId = {[1] = 10110},Name = _T("普通1章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {10109},FirstExp = 100,EveryExp = 0,LvBoxId = 21013,FDAward = {[1] = {Id = 1401002,Val = 300},[2] = {Id = 1401003,Val = 900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 1,Bs = 13437,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通1章10关
			}
		},--普通1章
		[102] = {
			Name = _T("普通2章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11021,Award = {[1] = {Id = 1401010,Val = 60},[2] = {Id = 1401002,Val = 900}}},--钻石60绿色基础材料11金币900
				[20] = {Id = 11022,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 1800}}},--守护灵抽卡券2绿色基础材料23金币1800
				[30] = {Id = 11023,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 2700}}}--守护灵抽卡券3绿色基础材料34金币2700
			},
			ExtBox = {
				[21021] = {LevelIdRequired = 10203,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 4},[2] = {Id = 1603001,Val = 40},[3] = {Id = 1401003,Val = 4000}}},--钻石10守护灵初级抽卡券2守护灵经验1800
				[21022] = {LevelIdRequired = 10206,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 6},[2] = {Id = 1603001,Val = 70},[3] = {Id = 1401003,Val = 6000}}},--钻石15守护灵初级抽卡券3守护灵经验2700
				[21023] = {LevelIdRequired = 10210,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1603005,Val = 8},[2] = {Id = 1603001,Val = 110},[3] = {Id = 1401003,Val = 10000}}}--钻石25守护灵初级抽卡券5守护灵经验3600
			},
			Levels = {
				[10201] = {Pos = 1,StoryId = {[1] = 20201},Name = _T("普通2章-1关"),Modle = "Chapters_fight",DrillLv = 303,Type = 1,FormType = 0,LastId = {10110},FirstExp = 120,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 450},[2] = {Id = 1401003,Val = 1350},[3] = {Id = 1041,Val = 1}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 5,Bs = 9417,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通2章1关
				[10202] = {Pos = 3,StoryId = {[1] = 10202},Name = _T("普通2章-2关"),Modle = "Chapters_video",Type = 1,FormType = 1,LastId = {10201},FirstExp = 120,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 450},[2] = {Id = 1401003,Val = 1350}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 5,Bs = 9837,StarRating = {1,5,13},StoryDes = "曹焱兵将夏铃送回了人界，而我，作为负债人，则被迫留下与曹家兄弟一起管理罗刹街……"},--普通2章2关
				[10203] = {Pos = 4,Name = _T("普通2章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10202},FirstExp = 120,EveryExp = 0,LvBoxId = 21021,FDAward = {[1] = {Id = 1401002,Val = 450},[2] = {Id = 1401003,Val = 1350}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 5,Bs = 13727,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通2章3关
				[10204] = {Pos = 6,Name = _T("普通2章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10203},FirstExp = 120,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 450},[2] = {Id = 1401003,Val = 1350}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 5,Bs = 11767,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通2章4关
				[10205] = {Pos = 8,StoryId = {[1] = 10205},Name = _T("普通2章-5关"),Modle = "Chapters_video",Type = 1,FormType = 0,LastId = {10204},FirstExp = 120,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 450},[2] = {Id = 1401003,Val = 1350}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 5,Bs = 11977,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通2章5关
				[10206] = {Pos = 9,Name = _T("普通2章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10205},FirstExp = 120,EveryExp = 0,LvBoxId = 21022,FDAward = {[1] = {Id = 1401002,Val = 450},[2] = {Id = 1401003,Val = 1350}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 55,NeedLv = 5,Bs = 20357,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通2章6关
				[10207] = {Pos = 10,Name = _T("普通2章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10206},FirstExp = 120,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 450},[2] = {Id = 1401003,Val = 1350}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 55,NeedLv = 5,Bs = 13907,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通2章7关
				[10208] = {Pos = 11,Name = _T("普通2章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10207},FirstExp = 120,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 450},[2] = {Id = 1401003,Val = 1350}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 12,NeedLv = 5,Bs = 14222,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通2章8关
				[10209] = {Pos = 13,Name = _T("普通2章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10208},FirstExp = 120,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 450},[2] = {Id = 1401003,Val = 1350}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 12,FirstAtk = 10000,NeedLv = 5,Bs = 23037,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通2章9关
				[10210] = {Pos = 14,StoryId = {[1] = 10210},Name = _T("普通2章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {10209},FirstExp = 120,EveryExp = 0,LvBoxId = 21023,FDAward = {[1] = {Id = 1401002,Val = 450},[2] = {Id = 1401003,Val = 1350}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 5,Bs = 23037,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通2章10关
			}
		},--普通2章
		[103] = {
			Name = _T("普通3章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11031,Award = {[1] = {Id = 1401010,Val = 70},[2] = {Id = 1401002,Val = 1800}}},--钻石70绿色基础材料23金币1800
				[20] = {Id = 11032,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 3000}}},--守护灵抽卡券2绿色基础材料38金币3000
				[30] = {Id = 11033,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 4200}}}--守护灵抽卡券3绿色基础材料53金币4200
			},
			ExtBox = {
				[21031] = {LevelIdRequired = 10303,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 4},[2] = {Id = 1603001,Val = 50},[3] = {Id = 1401003,Val = 4000}}},--钻石10守护灵初级抽卡券2守护灵经验3150
				[21032] = {LevelIdRequired = 10306,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 6},[2] = {Id = 1603001,Val = 80},[3] = {Id = 1401003,Val = 6000}}},--钻石20守护灵初级抽卡券3守护灵经验4200
				[21033] = {LevelIdRequired = 10310,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1603005,Val = 10},[2] = {Id = 1603001,Val = 120},[3] = {Id = 1401003,Val = 10000}}}--钻石30守护灵初级抽卡券5守护灵经验5250
			},
			Levels = {
				[10301] = {Pos = 1,StoryId = {[1] = 20301},Name = _T("普通3章-1关"),Modle = "Chapters_fight",DrillLv = 304,Type = 1,FormType = 0,LastId = {10210},FirstExp = 140,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 600},[2] = {Id = 1401003,Val = 1575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,FirstAtk = 10000,NeedLv = 15,Bs = 15957,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通3章1关
				[10302] = {Pos = 3,StoryId = {[1] = 10302},Name = _T("普通3章-2关"),Modle = "Chapters_video",Type = 1,FormType = 1,LastId = {10301},FirstExp = 140,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 600},[2] = {Id = 1401003,Val = 1575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 15,Bs = 16707,StarRating = {1,5,13},StoryDes = "在人界替曹焱兵办事的我，偶遇陷入危机的夏铃，将其救下，并带回了罗刹街……"},--普通3章2关
				[10303] = {Pos = 5,StoryId = {[1] = 10303},Name = _T("普通3章-3关"),Modle = "Chapters_video",Type = 1,FormType = 0,LastId = {10302},FirstExp = 140,EveryExp = 0,LvBoxId = 21031,FDAward = {[1] = {Id = 1401002,Val = 600},[2] = {Id = 1401003,Val = 1575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 15,Bs = 39065,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通3章3关
				[10304] = {Pos = 7,Name = _T("普通3章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10303},FirstExp = 140,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 600},[2] = {Id = 1401003,Val = 1575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 15,Bs = 36621,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通3章4关
				[10305] = {Pos = 8,Name = _T("普通3章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10304},FirstExp = 140,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 600},[2] = {Id = 1401003,Val = 1575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 15,Bs = 37827,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通3章5关
				[10306] = {Pos = 9,StoryId = {[1] = 10306},Name = _T("普通3章-6关"),Modle = "Chapters_video",Type = 1,FormType = 0,LastId = {10305},FirstExp = 140,EveryExp = 0,LvBoxId = 21032,FDAward = {[1] = {Id = 1401002,Val = 600},[2] = {Id = 1401003,Val = 1575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 56,NeedLv = 15,Bs = 58319,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通3章6关
				[10307] = {Pos = 11,Name = _T("普通3章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10306},FirstExp = 140,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 600},[2] = {Id = 1401003,Val = 1575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 13,NeedLv = 15,Bs = 47570,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通3章7关
				[10308] = {Pos = 12,Name = _T("普通3章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10307},FirstExp = 140,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 600},[2] = {Id = 1401003,Val = 1575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 56,NeedLv = 15,Bs = 49221,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通3章8关
				[10309] = {Pos = 13,StoryId = {[1] = 10309},Name = _T("普通3章-9关"),Modle = "Chapters_video",Type = 1,FormType = 1,LastId = {10308},FirstExp = 140,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 600},[2] = {Id = 1401003,Val = 1575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 15,Bs = 64822,StarRating = {1,5,13},StoryDes = "夏铃为躲避王国组织的追杀，以做家务为代价，留在了罗刹街，日夜操劳，不堪重负，终于爆发了……"},--普通3章9关
				[10310] = {Pos = 14,Name = _T("普通3章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {10309},FirstExp = 140,EveryExp = 0,LvBoxId = 21033,FDAward = {[1] = {Id = 1401002,Val = 600},[2] = {Id = 1401003,Val = 1575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 15,Bs = 68292,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通3章10关
			}
		},--普通3章
		[104] = {
			Name = _T("普通4章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11041,Award = {[1] = {Id = 1401010,Val = 80},[2] = {Id = 1401002,Val = 2250}}},--钻石80绿色基础材料18金币2250
				[20] = {Id = 11042,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 3750}}},--守护灵抽卡券2绿色基础材料30金币3750
				[30] = {Id = 11043,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 5250}}}--守护灵抽卡券3绿色基础材料42金币5250
			},
			ExtBox = {
				[21041] = {LevelIdRequired = 10403,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 4},[2] = {Id = 1603001,Val = 80},[3] = {Id = 1401003,Val = 4000}}},--钻石10守护灵初级抽卡券2守护灵经验3600
				[21042] = {LevelIdRequired = 10406,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 6},[2] = {Id = 1603001,Val = 110},[3] = {Id = 1401003,Val = 6000}}},--钻石20守护灵初级抽卡券3守护灵经验4800
				[21043] = {LevelIdRequired = 10410,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1603005,Val = 10},[2] = {Id = 1603001,Val = 140},[3] = {Id = 1401003,Val = 10000}}}--钻石30守护灵初级抽卡券5守护灵经验6000
			},
			Levels = {
				[10401] = {Pos = 1,StoryId = {[1] = 20401},Name = _T("普通4章-1关"),Modle = "Chapters_fight",DrillLv = 305,Type = 1,FormType = 0,LastId = {10310},FirstExp = 160,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 750},[2] = {Id = 1401003,Val = 1800}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 25,Bs = 87325,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通4章1关
				[10402] = {Pos = 3,StoryId = {[1] = 10402},Name = _T("普通4章-2关"),Modle = "Chapters_video",Type = 1,FormType = 1,LastId = {10401},FirstExp = 160,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 750},[2] = {Id = 1401003,Val = 1800}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 25,Bs = 88781,StarRating = {1,5,13},StoryDes = "鬼符三通突然到访，告诉了曹焱兵一个重要信息，使曹焱兵改变了心意，准备将夏铃培养成一名合格的寄灵人……"},--普通4章2关
				[10403] = {Pos = 4,Name = _T("普通4章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10402},FirstExp = 160,EveryExp = 0,LvBoxId = 21041,FDAward = {[1] = {Id = 1401002,Val = 750},[2] = {Id = 1401003,Val = 1800}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 57,NeedLv = 25,Bs = 104958,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通4章3关
				[10404] = {Pos = 6,StoryId = {[1] = 10404},Name = _T("普通4章-4关"),Modle = "Chapters_video",Type = 1,FormType = 0,LastId = {10403},FirstExp = 160,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 750},[2] = {Id = 1401003,Val = 1800}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 57,NeedLv = 25,Bs = 100332,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通4章4关
				[10405] = {Pos = 8,Name = _T("普通4章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10404},FirstExp = 160,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 750},[2] = {Id = 1401003,Val = 1800}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 25,Bs = 101528,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通4章5关
				[10406] = {Pos = 9,Name = _T("普通4章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10405},FirstExp = 160,EveryExp = 0,LvBoxId = 21042,FDAward = {[1] = {Id = 1401002,Val = 750},[2] = {Id = 1401003,Val = 1800}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 25,Bs = 112688,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通4章6关
				[10407] = {Pos = 10,StoryId = {[1] = 10407},Name = _T("普通4章-7关"),Modle = "Chapters_video",Type = 1,FormType = 0,LastId = {10406},FirstExp = 160,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 750},[2] = {Id = 1401003,Val = 1800}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 25,Bs = 106870,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通4章7关
				[10408] = {Pos = 11,Name = _T("普通4章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10407},FirstExp = 160,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 750},[2] = {Id = 1401003,Val = 1800}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 25,Bs = 107390,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通4章8关
				[10409] = {Pos = 13,Name = _T("普通4章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10408},FirstExp = 160,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 750},[2] = {Id = 1401003,Val = 1800}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 25,Bs = 133218,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通4章9关
				[10410] = {Pos = 14,StoryId = {[1] = 10410},Name = _T("普通4章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {10409},FirstExp = 160,EveryExp = 0,LvBoxId = 21043,FDAward = {[1] = {Id = 1401002,Val = 750},[2] = {Id = 1401003,Val = 1800}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 25,Bs = 151836,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通4章10关
			}
		},--普通4章
		[105] = {
			Name = _T("普通5章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11051,Award = {[1] = {Id = 1401010,Val = 90},[2] = {Id = 1401002,Val = 3600}}},--钻石90蓝色基础材料11金币3600
				[20] = {Id = 11052,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 7200}}},--守护灵抽卡券2蓝色基础材料21金币7200
				[30] = {Id = 11053,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 10800}}}--守护灵抽卡券3蓝色基础材料32金币10800
			},
			ExtBox = {
				[21051] = {LevelIdRequired = 10503,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 4},[2] = {Id = 1603002,Val = 16},[3] = {Id = 1401003,Val = 4000}}},--钻石20守护灵初级抽卡券2守护灵经验4050
				[21052] = {LevelIdRequired = 10506,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 6},[2] = {Id = 1603002,Val = 32},[3] = {Id = 1401003,Val = 6000}}},--钻石30守护灵初级抽卡券3守护灵经验5400
				[21053] = {LevelIdRequired = 10510,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1603005,Val = 12},[2] = {Id = 1603002,Val = 48},[3] = {Id = 1401003,Val = 10000}}}--钻石50守护灵初级抽卡券5守护灵经验6750
			},
			Levels = {
				[10501] = {Pos = 1,StoryId = {[1] = 20501},Name = _T("普通5章-1关"),Modle = "Chapters_fight",DrillLv = 306,Type = 1,FormType = 0,LastId = {10410},FirstExp = 180,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1401003,Val = 2025}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,FirstAtk = 10000,NeedLv = 30,Bs = 124557,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通5章1关
				[10502] = {Pos = 3,StoryId = {[1] = 10502},Name = _T("普通5章-2关"),Modle = "Chapters_video",Type = 1,FormType = 0,LastId = {10501},FirstExp = 180,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1401003,Val = 2025}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 30,Bs = 125205,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通5章2关
				[10503] = {Pos = 5,Name = _T("普通5章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10502},FirstExp = 180,EveryExp = 0,LvBoxId = 21051,FDAward = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1401003,Val = 2025}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 30,Bs = 138300,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通5章3关
				[10504] = {Pos = 7,StoryId = {[1] = 10504},Name = _T("普通5章-4关"),Modle = "Chapters_video",Type = 1,FormType = 0,LastId = {10503},FirstExp = 180,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1401003,Val = 2025}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 13,NeedLv = 30,Bs = 130479,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通5章4关
				[10505] = {Pos = 8,Name = _T("普通5章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10504},FirstExp = 180,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1401003,Val = 2025}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 13,NeedLv = 30,Bs = 130803,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通5章5关
				[10506] = {Pos = 9,Name = _T("普通5章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10505},FirstExp = 180,EveryExp = 0,LvBoxId = 21052,FDAward = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1401003,Val = 2025}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 10,NeedLv = 30,Bs = 150642,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通5章6关
				[10507] = {Pos = 11,Name = _T("普通5章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10506},FirstExp = 180,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1401003,Val = 2025}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 30,Bs = 143703,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通5章7关
				[10508] = {Pos = 12,Name = _T("普通5章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10507},FirstExp = 180,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1401003,Val = 2025}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 30,Bs = 144351,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通5章8关
				[10509] = {Pos = 13,Name = _T("普通5章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10508},FirstExp = 180,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1401003,Val = 2025}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 30,Bs = 164200,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通5章9关
				[10510] = {Pos = 14,Name = _T("普通5章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {10509},FirstExp = 180,EveryExp = 0,LvBoxId = 21053,FDAward = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1401003,Val = 2025}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 30,Bs = 186606,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通5章10关
			}
		},--普通5章
		[106] = {
			Name = _T("普通6章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11061,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 4200}}},--钻石100蓝色基础材料15金币4200
				[20] = {Id = 11062,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 8400}}},--守护灵抽卡券2蓝色基础材料30金币8400
				[30] = {Id = 11063,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 12600}}}--守护灵抽卡券3蓝色基础材料45金币12600
			},
			ExtBox = {
				[21061] = {LevelIdRequired = 10603,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 4},[2] = {Id = 1603002,Val = 20},[3] = {Id = 1401003,Val = 4500}}},--钻石20守护灵初级抽卡券2守护灵经验4500
				[21062] = {LevelIdRequired = 10606,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 6},[2] = {Id = 1603002,Val = 45},[3] = {Id = 1401003,Val = 6000}}},--钻石30守护灵初级抽卡券3守护灵经验6000
				[21063] = {LevelIdRequired = 10610,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1603005,Val = 15},[2] = {Id = 1603002,Val = 65},[3] = {Id = 1401003,Val = 10000}}}--钻石50守护灵初级抽卡券5守护灵经验7500
			},
			Levels = {
				[10601] = {Pos = 1,Name = _T("普通6章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10510},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1050},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 35,Bs = 153645,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通6章1关
				[10602] = {Pos = 3,Name = _T("普通6章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10601},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1050},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 35,Bs = 154293,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通6章2关
				[10603] = {Pos = 4,Name = _T("普通6章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10602},FirstExp = 200,EveryExp = 0,LvBoxId = 21061,FDAward = {[1] = {Id = 1401002,Val = 1050},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 35,Bs = 183460,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通6章3关
				[10604] = {Pos = 6,Name = _T("普通6章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10603},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1050},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 35,Bs = 174502,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通6章4关
				[10605] = {Pos = 8,Name = _T("普通6章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10604},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1050},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 35,Bs = 174826,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通6章5关
				[10606] = {Pos = 9,Name = _T("普通6章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10605},FirstExp = 200,EveryExp = 0,LvBoxId = 21062,FDAward = {[1] = {Id = 1401002,Val = 1050},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 35,Bs = 195089,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通6章6关
				[10607] = {Pos = 10,Name = _T("普通6章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10606},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1050},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 35,Bs = 185589,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通6章7关
				[10608] = {Pos = 11,Name = _T("普通6章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10607},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1050},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 35,Bs = 186237,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通6章8关
				[10609] = {Pos = 13,Name = _T("普通6章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10608},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1050},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 35,Bs = 208570,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通6章9关
				[10610] = {Pos = 14,Name = _T("普通6章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {10609},FirstExp = 200,EveryExp = 0,LvBoxId = 21063,FDAward = {[1] = {Id = 1401002,Val = 1050},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 35,Bs = 236286,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通6章10关
			}
		},--普通6章
		[107] = {
			Name = _T("普通7章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11071,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 4800}}},--钻石100蓝色基础材料20金币4800
				[20] = {Id = 11072,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 9600}}},--守护灵抽卡券2蓝色基础材料39金币9600
				[30] = {Id = 11073,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 14400}}}--守护灵抽卡券3蓝色基础材料59金币14400
			},
			ExtBox = {
				[21071] = {LevelIdRequired = 10703,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 4},[2] = {Id = 1603002,Val = 30},[3] = {Id = 1401003,Val = 5400}}},--钻石20守护灵初级抽卡券2守护灵经验5400
				[21072] = {LevelIdRequired = 10706,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 6},[2] = {Id = 1603002,Val = 50},[3] = {Id = 1401003,Val = 7200}}},--钻石30守护灵初级抽卡券3守护灵经验7200
				[21073] = {LevelIdRequired = 10710,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603002,Val = 85},[3] = {Id = 1401003,Val = 10000}}}--钻石50守护灵初级抽卡券5守护灵经验9000
			},
			Levels = {
				[10701] = {Pos = 1,Name = _T("普通7章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10610},FirstExp = 240,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 40,Bs = 195360,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通7章1关
				[10702] = {Pos = 3,Name = _T("普通7章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10701},FirstExp = 240,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 40,Bs = 196008,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通7章2关
				[10703] = {Pos = 5,Name = _T("普通7章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10702},FirstExp = 240,EveryExp = 0,LvBoxId = 21071,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 40,Bs = 220827,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通7章3关
				[10704] = {Pos = 7,Name = _T("普通7章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10703},FirstExp = 240,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 40,Bs = 209976,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通7章4关
				[10705] = {Pos = 8,Name = _T("普通7章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10704},FirstExp = 240,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 40,Bs = 210300,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通7章5关
				[10706] = {Pos = 9,Name = _T("普通7章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10705},FirstExp = 240,EveryExp = 0,LvBoxId = 21072,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 40,Bs = 253655,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通7章6关
				[10707] = {Pos = 11,Name = _T("普通7章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10706},FirstExp = 240,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 40,Bs = 239901,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通7章7关
				[10708] = {Pos = 12,Name = _T("普通7章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10707},FirstExp = 240,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 40,Bs = 240549,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通7章8关
				[10709] = {Pos = 13,Name = _T("普通7章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10708},FirstExp = 240,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 40,Bs = 265295,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通7章9关
				[10710] = {Pos = 14,Name = _T("普通7章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {10709},FirstExp = 240,EveryExp = 0,LvBoxId = 21073,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 40,Bs = 301713,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通7章10关
			}
		},--普通7章
		[108] = {
			Name = _T("普通8章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11081,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 5400}}},--钻石100蓝色基础材料24金币5400
				[20] = {Id = 11082,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 10800}}},--守护灵抽卡券2蓝色基础材料48金币10800
				[30] = {Id = 11083,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 16200}}}--守护灵抽卡券3蓝色基础材料72金币16200
			},
			ExtBox = {
				[21081] = {LevelIdRequired = 10803,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603002,Val = 35},[3] = {Id = 1401003,Val = 6300}}},--钻石20守护灵初级抽卡券2守护灵经验6300
				[21082] = {LevelIdRequired = 10806,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603002,Val = 72},[3] = {Id = 1401003,Val = 8400}}},--钻石30守护灵初级抽卡券3守护灵经验8400
				[21083] = {LevelIdRequired = 10810,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603002,Val = 100},[3] = {Id = 1401003,Val = 10500}}}--钻石50守护灵初级抽卡券5守护灵经验10500
			},
			Levels = {
				[10801] = {Pos = 1,Name = _T("普通8章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10710},FirstExp = 280,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1350},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 45,Bs = 266376,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通8章1关
				[10802] = {Pos = 3,Name = _T("普通8章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10801},FirstExp = 280,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1350},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 45,Bs = 267024,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通8章2关
				[10803] = {Pos = 4,Name = _T("普通8章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10802},FirstExp = 280,EveryExp = 0,LvBoxId = 21081,FDAward = {[1] = {Id = 1401002,Val = 1350},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 10,NeedLv = 45,Bs = 294064,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通8章3关
				[10804] = {Pos = 6,Name = _T("普通8章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10803},FirstExp = 280,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1350},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 45,Bs = 287339,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通8章4关
				[10805] = {Pos = 8,Name = _T("普通8章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10804},FirstExp = 280,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1350},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 45,Bs = 292463,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通8章5关
				[10806] = {Pos = 9,Name = _T("普通8章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10805},FirstExp = 280,EveryExp = 0,LvBoxId = 21082,FDAward = {[1] = {Id = 1401002,Val = 1350},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 45,Bs = 353030,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通8章6关
				[10807] = {Pos = 10,Name = _T("普通8章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10806},FirstExp = 280,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1350},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 45,Bs = 354230,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通8章7关
				[10808] = {Pos = 11,Name = _T("普通8章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10807},FirstExp = 280,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1350},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 45,Bs = 354878,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通8章8关
				[10809] = {Pos = 13,Name = _T("普通8章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10808},FirstExp = 280,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1350},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 45,Bs = 370452,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通8章9关
				[10810] = {Pos = 14,Name = _T("普通8章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {10809},FirstExp = 280,EveryExp = 0,LvBoxId = 21083,FDAward = {[1] = {Id = 1401002,Val = 1350},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 45,Bs = 417252,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通8章10关
			}
		},--普通8章
		[109] = {
			Name = _T("普通9章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11091,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 6000}}},--钻石100蓝色基础材料30金币6000
				[20] = {Id = 11092,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 12000}}},--守护灵抽卡券2蓝色基础材料60金币12000
				[30] = {Id = 11093,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 18000}}}--守护灵抽卡券3蓝色基础材料90金币18000
			},
			ExtBox = {
				[21091] = {LevelIdRequired = 10903,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603002,Val = 45},[3] = {Id = 1401003,Val = 7200}}},--钻石20守护灵初级抽卡券2守护灵经验7200
				[21092] = {LevelIdRequired = 10906,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603002,Val = 90},[3] = {Id = 1401003,Val = 9600}}},--钻石30守护灵初级抽卡券3守护灵经验9600
				[21093] = {LevelIdRequired = 10910,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603002,Val = 130},[3] = {Id = 1401003,Val = 12000}}}--钻石50守护灵初级抽卡券5守护灵经验12000
			},
			Levels = {
				[10901] = {Pos = 1,Name = _T("普通9章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10810},FirstExp = 320,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 50,Bs = 387022,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通9章1关
				[10902] = {Pos = 3,Name = _T("普通9章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10901},FirstExp = 320,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 50,Bs = 387822,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通9章2关
				[10903] = {Pos = 5,Name = _T("普通9章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10902},FirstExp = 320,EveryExp = 0,LvBoxId = 21091,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 50,Bs = 412312,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通9章3关
				[10904] = {Pos = 7,Name = _T("普通9章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10903},FirstExp = 320,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 50,Bs = 402627,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通9章4关
				[10905] = {Pos = 8,Name = _T("普通9章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10904},FirstExp = 320,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 50,Bs = 403017,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通9章5关
				[10906] = {Pos = 9,Name = _T("普通9章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10905},FirstExp = 320,EveryExp = 0,LvBoxId = 21092,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 50,Bs = 448239,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通9章6关
				[10907] = {Pos = 11,Name = _T("普通9章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10906},FirstExp = 320,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 50,Bs = 460944,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通9章7关
				[10908] = {Pos = 12,Name = _T("普通9章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10907},FirstExp = 320,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 50,Bs = 461744,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通9章8关
				[10909] = {Pos = 13,Name = _T("普通9章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10908},FirstExp = 320,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 50,Bs = 471945,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通9章9关
				[10910] = {Pos = 14,Name = _T("普通9章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {10909},FirstExp = 320,EveryExp = 0,LvBoxId = 21093,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 50,Bs = 531963,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通9章10关
			}
		},--普通9章
		[110] = {
			Name = _T("普通10章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11101,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 6600}}},--钻石100紫色基础材料6金币6600
				[20] = {Id = 11102,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 13200}}},--守护灵抽卡券2紫色基础材料12金币13200
				[30] = {Id = 11103,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 19800}}}--守护灵抽卡券3紫色基础材料18金币19800
			},
			ExtBox = {
				[21101] = {LevelIdRequired = 11003,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603003,Val = 2},[3] = {Id = 1401003,Val = 8100}}},--钻石20守护灵初级抽卡券2守护灵经验8100
				[21102] = {LevelIdRequired = 11006,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603003,Val = 5},[3] = {Id = 1401003,Val = 10800}}},--钻石30守护灵初级抽卡券3守护灵经验10800
				[21103] = {LevelIdRequired = 11010,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603003,Val = 7},[3] = {Id = 1401003,Val = 13500}}}--钻石50守护灵初级抽卡券5守护灵经验13500
			},
			Levels = {
				[11001] = {Pos = 1,Name = _T("普通10章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10910},FirstExp = 360,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1650},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 55,Bs = 489547,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通10章1关
				[11002] = {Pos = 3,Name = _T("普通10章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11001},FirstExp = 360,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1650},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 55,Bs = 490547,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通10章2关
				[11003] = {Pos = 4,Name = _T("普通10章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11002},FirstExp = 360,EveryExp = 0,LvBoxId = 21101,FDAward = {[1] = {Id = 1401002,Val = 1650},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 55,Bs = 551183,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通10章3关
				[11004] = {Pos = 6,Name = _T("普通10章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11003},FirstExp = 360,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1650},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 55,Bs = 516886,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通10章4关
				[11005] = {Pos = 8,Name = _T("普通10章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11004},FirstExp = 360,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1650},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 55,Bs = 517377,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通10章5关
				[11006] = {Pos = 9,Name = _T("普通10章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11005},FirstExp = 360,EveryExp = 0,LvBoxId = 21102,FDAward = {[1] = {Id = 1401002,Val = 1650},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 55,Bs = 557848,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通10章6关
				[11007] = {Pos = 10,Name = _T("普通10章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11006},FirstExp = 360,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1650},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 10,NeedLv = 55,Bs = 535777,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通10章7关
				[11008] = {Pos = 11,Name = _T("普通10章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11007},FirstExp = 360,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1650},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 12,NeedLv = 55,Bs = 536749,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通10章8关
				[11009] = {Pos = 13,Name = _T("普通10章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11008},FirstExp = 360,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1650},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 12,NeedLv = 55,Bs = 570462,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通10章9关
				[11010] = {Pos = 14,Name = _T("普通10章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {11009},FirstExp = 360,EveryExp = 0,LvBoxId = 21103,FDAward = {[1] = {Id = 1401002,Val = 1650},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 12,NeedLv = 55,Bs = 609202,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通10章10关
			}
		},--普通10章
		[111] = {
			Name = _T("普通11章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11111,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 7200}}},--钻石100紫色基础材料11金币7200
				[20] = {Id = 11112,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 14400}}},--守护灵抽卡券2紫色基础材料21金币14400
				[30] = {Id = 11113,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 21600}}}--守护灵抽卡券3紫色基础材料32金币21600
			},
			ExtBox = {
				[21111] = {LevelIdRequired = 11103,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603003,Val = 4},[3] = {Id = 1401003,Val = 9000}}},--钻石20守护灵初级抽卡券2守护灵经验9000
				[21112] = {LevelIdRequired = 11106,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603003,Val = 8},[3] = {Id = 1401003,Val = 12000}}},--钻石30守护灵初级抽卡券3守护灵经验12000
				[21113] = {LevelIdRequired = 11110,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603003,Val = 13},[3] = {Id = 1401003,Val = 15000}}}--钻石50守护灵初级抽卡券5守护灵经验15000
			},
			Levels = {
				[11101] = {Pos = 1,Name = _T("普通11章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11010},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 55,NeedLv = 60,Bs = 552093,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通11章1关
				[11102] = {Pos = 3,Name = _T("普通11章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11101},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 55,NeedLv = 60,Bs = 553093,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通11章2关
				[11103] = {Pos = 5,Name = _T("普通11章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11102},FirstExp = 400,EveryExp = 0,LvBoxId = 21111,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 55,NeedLv = 60,Bs = 626652,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通11章3关
				[11104] = {Pos = 7,Name = _T("普通11章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11103},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 60,Bs = 589114,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通11章4关
				[11105] = {Pos = 8,Name = _T("普通11章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11104},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 60,Bs = 589615,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通11章5关
				[11106] = {Pos = 9,Name = _T("普通11章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11105},FirstExp = 400,EveryExp = 0,LvBoxId = 21112,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 60,Bs = 686252,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通11章6关
				[11107] = {Pos = 11,Name = _T("普通11章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11106},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 60,Bs = 645074,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通11章7关
				[11108] = {Pos = 12,Name = _T("普通11章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11107},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 60,Bs = 646046,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通11章8关
				[11109] = {Pos = 13,Name = _T("普通11章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11108},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 60,Bs = 680931,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通11章9关
				[11110] = {Pos = 14,Name = _T("普通11章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {11109},FirstExp = 400,EveryExp = 0,LvBoxId = 21113,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 60,Bs = 724551,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通11章10关
			}
		},--普通11章
		[112] = {
			Name = _T("普通12章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11121,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 7800}}},--钻石100紫色基础材料15金币7800
				[20] = {Id = 11122,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 15600}}},--守护灵抽卡券2紫色基础材料30金币15600
				[30] = {Id = 11123,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 23400}}}--守护灵抽卡券3紫色基础材料45金币23400
			},
			ExtBox = {
				[21121] = {LevelIdRequired = 11203,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603003,Val = 6},[3] = {Id = 1401003,Val = 9900}}},--钻石20守护灵初级抽卡券2守护灵经验9900
				[21122] = {LevelIdRequired = 11206,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603003,Val = 12},[3] = {Id = 1401003,Val = 13200}}},--钻石30守护灵初级抽卡券3守护灵经验13200
				[21123] = {LevelIdRequired = 11210,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603003,Val = 18},[3] = {Id = 1401003,Val = 16500}}}--钻石50守护灵初级抽卡券5守护灵经验16500
			},
			Levels = {
				[11201] = {Pos = 1,Name = _T("普通12章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11110},FirstExp = 440,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1950},[2] = {Id = 1401003,Val = 4950}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 65,Bs = 734656,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通12章1关
				[11202] = {Pos = 3,Name = _T("普通12章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11201},FirstExp = 440,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1950},[2] = {Id = 1401003,Val = 4950}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 65,Bs = 735656,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通12章2关
				[11203] = {Pos = 4,Name = _T("普通12章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11202},FirstExp = 440,EveryExp = 0,LvBoxId = 21121,FDAward = {[1] = {Id = 1401002,Val = 1950},[2] = {Id = 1401003,Val = 4950}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 65,Bs = 800895,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通12章3关
				[11204] = {Pos = 6,Name = _T("普通12章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11203},FirstExp = 440,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1950},[2] = {Id = 1401003,Val = 4950}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 65,Bs = 756460,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通12章4关
				[11205] = {Pos = 8,Name = _T("普通12章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11204},FirstExp = 440,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1950},[2] = {Id = 1401003,Val = 4950}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 65,Bs = 756951,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通12章5关
				[11206] = {Pos = 9,Name = _T("普通12章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11205},FirstExp = 440,EveryExp = 0,LvBoxId = 21122,FDAward = {[1] = {Id = 1401002,Val = 1950},[2] = {Id = 1401003,Val = 4950}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 65,Bs = 892948,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通12章6关
				[11207] = {Pos = 10,Name = _T("普通12章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11206},FirstExp = 440,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1950},[2] = {Id = 1401003,Val = 4950}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 65,Bs = 845200,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通12章7关
				[11208] = {Pos = 11,Name = _T("普通12章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11207},FirstExp = 440,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1950},[2] = {Id = 1401003,Val = 4950}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 65,Bs = 846172,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通12章8关
				[11209] = {Pos = 13,Name = _T("普通12章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11208},FirstExp = 440,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1950},[2] = {Id = 1401003,Val = 4950}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 65,Bs = 927551,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通12章9关
				[11210] = {Pos = 14,Name = _T("普通12章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {11209},FirstExp = 440,EveryExp = 0,LvBoxId = 21123,FDAward = {[1] = {Id = 1401002,Val = 1950},[2] = {Id = 1401003,Val = 4950}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 65,Bs = 1038693,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通12章10关
			}
		},--普通12章
		[113] = {
			Name = _T("普通13章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11131,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 8400}}},--钻石100紫色基础材料20金币8400
				[20] = {Id = 11132,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 16800}}},--守护灵抽卡券2紫色基础材料39金币16800
				[30] = {Id = 11133,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 25200}}}--守护灵抽卡券3紫色基础材料59金币25200
			},
			ExtBox = {
				[21131] = {LevelIdRequired = 11303,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603003,Val = 8},[3] = {Id = 1401003,Val = 11250}}},--钻石20守护灵初级抽卡券2守护灵经验11250
				[21132] = {LevelIdRequired = 11306,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603003,Val = 16},[3] = {Id = 1401003,Val = 15000}}},--钻石30守护灵初级抽卡券3守护灵经验15000
				[21133] = {LevelIdRequired = 11310,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603003,Val = 23},[3] = {Id = 1401003,Val = 18750}}}--钻石50守护灵初级抽卡券5守护灵经验18750
			},
			Levels = {
				[11301] = {Pos = 1,Name = _T("普通13章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11210},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 5625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 70,Bs = 894528,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通13章1关
				[11302] = {Pos = 3,Name = _T("普通13章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11301},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 5625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 70,Bs = 895884,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通13章2关
				[11303] = {Pos = 5,Name = _T("普通13章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11302},FirstExp = 500,EveryExp = 0,LvBoxId = 21131,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 5625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 70,Bs = 957187,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通13章3关
				[11304] = {Pos = 7,Name = _T("普通13章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11303},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 5625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 70,Bs = 911276,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通13章4关
				[11305] = {Pos = 8,Name = _T("普通13章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11304},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 5625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 70,Bs = 911954,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通13章5关
				[11306] = {Pos = 9,Name = _T("普通13章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11305},FirstExp = 500,EveryExp = 0,LvBoxId = 21132,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 5625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 70,Bs = 1010275,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通13章6关
				[11307] = {Pos = 11,Name = _T("普通13章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11306},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 5625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 70,Bs = 961207,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通13章7关
				[11308] = {Pos = 12,Name = _T("普通13章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11307},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 5625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 13,NeedLv = 70,Bs = 962563,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通13章8关
				[11309] = {Pos = 13,Name = _T("普通13章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11308},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 5625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 13,NeedLv = 70,Bs = 1043289,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通13章9关
				[11310] = {Pos = 14,Name = _T("普通13章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {11309},FirstExp = 500,EveryExp = 0,LvBoxId = 21133,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 5625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 13,NeedLv = 70,Bs = 1166583,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通13章10关
			}
		},--普通13章
		[114] = {
			Name = _T("普通14章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11141,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 9000}}},--钻石100紫色基础材料24金币9000
				[20] = {Id = 11142,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 18000}}},--守护灵抽卡券2紫色基础材料48金币18000
				[30] = {Id = 11143,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 27000}}}--守护灵抽卡券3紫色基础材料72金币27000
			},
			ExtBox = {
				[21141] = {LevelIdRequired = 11403,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603003,Val = 10},[3] = {Id = 1401003,Val = 12150}}},--钻石20守护灵初级抽卡券2守护灵经验12150
				[21142] = {LevelIdRequired = 11406,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603003,Val = 19},[3] = {Id = 1401003,Val = 16200}}},--钻石30守护灵初级抽卡券3守护灵经验16200
				[21143] = {LevelIdRequired = 11410,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603003,Val = 29},[3] = {Id = 1401003,Val = 20250}}}--钻石50守护灵初级抽卡券5守护灵经验20250
			},
			Levels = {
				[11401] = {Pos = 1,Name = _T("普通14章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11310},FirstExp = 540,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2250},[2] = {Id = 1401003,Val = 6075}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 56,NeedLv = 75,Bs = 1001385,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通14章1关
				[11402] = {Pos = 3,Name = _T("普通14章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11401},FirstExp = 540,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2250},[2] = {Id = 1401003,Val = 6075}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 56,NeedLv = 75,Bs = 1002761,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通14章2关
				[11403] = {Pos = 4,Name = _T("普通14章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11402},FirstExp = 540,EveryExp = 0,LvBoxId = 21141,FDAward = {[1] = {Id = 1401002,Val = 2250},[2] = {Id = 1401003,Val = 6075}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 56,NeedLv = 75,Bs = 1136746,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通14章3关
				[11404] = {Pos = 6,Name = _T("普通14章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11403},FirstExp = 540,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2250},[2] = {Id = 1401003,Val = 6075}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 75,Bs = 1104658,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通14章4关
				[11405] = {Pos = 8,Name = _T("普通14章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11404},FirstExp = 540,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2250},[2] = {Id = 1401003,Val = 6075}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 75,Bs = 1114935,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通14章5关
				[11406] = {Pos = 9,Name = _T("普通14章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11405},FirstExp = 540,EveryExp = 0,LvBoxId = 21142,FDAward = {[1] = {Id = 1401002,Val = 2250},[2] = {Id = 1401003,Val = 6075}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 75,Bs = 1185224,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通14章6关
				[11407] = {Pos = 10,Name = _T("普通14章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11406},FirstExp = 540,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2250},[2] = {Id = 1401003,Val = 6075}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 75,Bs = 1163008,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通14章7关
				[11408] = {Pos = 11,Name = _T("普通14章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11407},FirstExp = 540,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2250},[2] = {Id = 1401003,Val = 6075}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 75,Bs = 1164364,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通14章8关
				[11409] = {Pos = 13,Name = _T("普通14章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11408},FirstExp = 540,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2250},[2] = {Id = 1401003,Val = 6075}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 75,Bs = 1222409,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通14章9关
				[11410] = {Pos = 14,Name = _T("普通14章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {11409},FirstExp = 540,EveryExp = 0,LvBoxId = 21143,FDAward = {[1] = {Id = 1401002,Val = 2250},[2] = {Id = 1401003,Val = 6075}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 75,Bs = 1357533,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通14章10关
			}
		},--普通14章
		[115] = {
			Name = _T("普通15章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11151,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 9600}}},--钻石100橙色基础材料0金币9600
				[20] = {Id = 11152,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 19200}}},--守护灵抽卡券2橙色基础材料0金币19200
				[30] = {Id = 11153,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 28800}}}--守护灵抽卡券3橙色基础材料0金币28800
			},
			ExtBox = {
				[21151] = {LevelIdRequired = 11503,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603003,Val = 12},[3] = {Id = 1401003,Val = 13500}}},--钻石20守护灵初级抽卡券2守护灵经验13500
				[21152] = {LevelIdRequired = 11506,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603003,Val = 24},[3] = {Id = 1401003,Val = 18000}}},--钻石30守护灵初级抽卡券3守护灵经验18000
				[21153] = {LevelIdRequired = 11510,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603003,Val = 36},[3] = {Id = 1401003,Val = 22500}}}--钻石50守护灵初级抽卡券5守护灵经验22500
			},
			Levels = {
				[11501] = {Pos = 1,Name = _T("普通15章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11410},FirstExp = 600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 6750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 80,Bs = 1223003,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通15章1关
				[11502] = {Pos = 3,Name = _T("普通15章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11501},FirstExp = 600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 6750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 80,Bs = 1224639,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通15章2关
				[11503] = {Pos = 5,Name = _T("普通15章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11502},FirstExp = 600,EveryExp = 0,LvBoxId = 21151,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 6750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 80,Bs = 1296474,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通15章3关
				[11504] = {Pos = 7,Name = _T("普通15章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11503},FirstExp = 600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 6750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 80,Bs = 1259208,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通15章4关
				[11505] = {Pos = 8,Name = _T("普通15章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11504},FirstExp = 600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 6750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 80,Bs = 1264815,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通15章5关
				[11506] = {Pos = 9,Name = _T("普通15章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11505},FirstExp = 600,EveryExp = 0,LvBoxId = 21152,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 6750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 80,Bs = 1448451,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通15章6关
				[11507] = {Pos = 11,Name = _T("普通15章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11506},FirstExp = 600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 6750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 80,Bs = 1438725,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通15章7关
				[11508] = {Pos = 12,Name = _T("普通15章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11507},FirstExp = 600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 6750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 80,Bs = 1440370,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通15章8关
				[11509] = {Pos = 13,Name = _T("普通15章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11508},FirstExp = 600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 6750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 80,Bs = 1493736,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通15章9关
				[11510] = {Pos = 14,Name = _T("普通15章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {11509},FirstExp = 600,EveryExp = 0,LvBoxId = 21153,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 6750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 80,Bs = 1653012,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通15章10关
			}
		},--普通15章
		[116] = {
			Name = _T("普通16章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11161,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 10800}}},--钻石100橙色基础材料6金币10800
				[20] = {Id = 11162,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 21600}}},--守护灵抽卡券2橙色基础材料12金币21600
				[30] = {Id = 11163,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 32400}}}--守护灵抽卡券3橙色基础材料18金币32400
			},
			ExtBox = {
				[21161] = {LevelIdRequired = 11603,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603004,Val = 2},[3] = {Id = 1401003,Val = 14400}}},--钻石20守护灵初级抽卡券2守护灵经验14400
				[21162] = {LevelIdRequired = 11606,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603004,Val = 3},[3] = {Id = 1401003,Val = 19200}}},--钻石30守护灵初级抽卡券3守护灵经验19200
				[21163] = {LevelIdRequired = 11610,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603004,Val = 5},[3] = {Id = 1401003,Val = 24000}}}--钻石50守护灵初级抽卡券5守护灵经验24000
			},
			Levels = {
				[11601] = {Pos = 1,Name = _T("普通16章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11510},FirstExp = 640,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 85,Bs = 1559924,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通16章1关
				[11602] = {Pos = 3,Name = _T("普通16章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11601},FirstExp = 640,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 85,Bs = 1561582,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通16章2关
				[11603] = {Pos = 4,Name = _T("普通16章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11602},FirstExp = 640,EveryExp = 0,LvBoxId = 21161,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 85,Bs = 1713172,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通16章3关
				[11604] = {Pos = 6,Name = _T("普通16章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11603},FirstExp = 640,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 85,Bs = 1643973,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通16章4关
				[11605] = {Pos = 8,Name = _T("普通16章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11604},FirstExp = 640,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 85,Bs = 1644793,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通16章5关
				[11606] = {Pos = 9,Name = _T("普通16章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11605},FirstExp = 640,EveryExp = 0,LvBoxId = 21162,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 85,Bs = 1807735,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通16章6关
				[11607] = {Pos = 10,Name = _T("普通16章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11606},FirstExp = 640,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 85,Bs = 1753015,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通16章7关
				[11608] = {Pos = 11,Name = _T("普通16章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11607},FirstExp = 640,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 85,Bs = 1754644,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通16章8关
				[11609] = {Pos = 13,Name = _T("普通16章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11608},FirstExp = 640,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 85,Bs = 1851394,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通16章9关
				[11610] = {Pos = 14,Name = _T("普通16章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {11609},FirstExp = 640,EveryExp = 0,LvBoxId = 21163,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 85,Bs = 1988178,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通16章10关
			}
		},--普通16章
		[117] = {
			Name = _T("普通17章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11171,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 12000}}},--钻石100橙色基础材料11金币12000
				[20] = {Id = 11172,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 24000}}},--守护灵抽卡券2橙色基础材料21金币24000
				[30] = {Id = 11173,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 36000}}}--守护灵抽卡券3橙色基础材料32金币36000
			},
			ExtBox = {
				[21171] = {LevelIdRequired = 11703,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603004,Val = 3},[3] = {Id = 1401003,Val = 15750}}},--钻石20守护灵初级抽卡券2守护灵经验15750
				[21172] = {LevelIdRequired = 11706,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603004,Val = 5},[3] = {Id = 1401003,Val = 21000}}},--钻石30守护灵初级抽卡券3守护灵经验21000
				[21173] = {LevelIdRequired = 11710,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603004,Val = 8},[3] = {Id = 1401003,Val = 26250}}}--钻石50守护灵初级抽卡券5守护灵经验26250
			},
			Levels = {
				[11701] = {Pos = 1,Name = _T("普通17章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11610},FirstExp = 700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 7875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 90,Bs = 1876545,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通17章1关
				[11702] = {Pos = 3,Name = _T("普通17章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11701},FirstExp = 700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 7875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 90,Bs = 1878187,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通17章2关
				[11703] = {Pos = 5,Name = _T("普通17章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11702},FirstExp = 700,EveryExp = 0,LvBoxId = 21171,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 7875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 90,Bs = 2003225,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通17章3关
				[11704] = {Pos = 7,Name = _T("普通17章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11703},FirstExp = 700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 7875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 90,Bs = 1920658,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通17章4关
				[11705] = {Pos = 8,Name = _T("普通17章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11704},FirstExp = 700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 7875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 90,Bs = 1933490,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通17章5关
				[11706] = {Pos = 9,Name = _T("普通17章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11705},FirstExp = 700,EveryExp = 0,LvBoxId = 21172,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 7875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 90,Bs = 2280321,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通17章6关
				[11707] = {Pos = 11,Name = _T("普通17章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11706},FirstExp = 700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 7875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 90,Bs = 2196327,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通17章7关
				[11708] = {Pos = 12,Name = _T("普通17章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11707},FirstExp = 700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 7875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 12,NeedLv = 90,Bs = 2197961,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通17章8关
				[11709] = {Pos = 13,Name = _T("普通17章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11708},FirstExp = 700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 7875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 12,NeedLv = 90,Bs = 2331575,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通17章9关
				[11710] = {Pos = 14,Name = _T("普通17章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {11709},FirstExp = 700,EveryExp = 0,LvBoxId = 21173,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 7875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 12,NeedLv = 90,Bs = 2495445,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通17章10关
			}
		},--普通17章
		[118] = {
			Name = _T("普通18章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11181,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 13200}}},--钻石100橙色基础材料15金币13200
				[20] = {Id = 11182,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 26400}}},--守护灵抽卡券2橙色基础材料30金币26400
				[30] = {Id = 11183,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 39600}}}--守护灵抽卡券3橙色基础材料45金币39600
			},
			ExtBox = {
				[21181] = {LevelIdRequired = 11803,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603004,Val = 4},[3] = {Id = 1401003,Val = 16650}}},--钻石20守护灵初级抽卡券2守护灵经验16650
				[21182] = {LevelIdRequired = 11806,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603004,Val = 8},[3] = {Id = 1401003,Val = 22200}}},--钻石30守护灵初级抽卡券3守护灵经验22200
				[21183] = {LevelIdRequired = 11810,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603004,Val = 11},[3] = {Id = 1401003,Val = 27750}}}--钻石50守护灵初级抽卡券5守护灵经验27750
			},
			Levels = {
				[11801] = {Pos = 1,Name = _T("普通18章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11710},FirstExp = 740,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 8325}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 57,NeedLv = 95,Bs = 2328808,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通18章1关
				[11802] = {Pos = 3,Name = _T("普通18章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11801},FirstExp = 740,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 8325}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 57,NeedLv = 95,Bs = 2330938,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通18章2关
				[11803] = {Pos = 4,Name = _T("普通18章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11802},FirstExp = 740,EveryExp = 0,LvBoxId = 21181,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 8325}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 57,NeedLv = 95,Bs = 2565948,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通18章3关
				[11804] = {Pos = 6,Name = _T("普通18章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11803},FirstExp = 740,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 8325}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 95,Bs = 2482626,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通18章4关
				[11805] = {Pos = 8,Name = _T("普通18章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11804},FirstExp = 740,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 8325}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 95,Bs = 2483701,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通18章5关
				[11806] = {Pos = 9,Name = _T("普通18章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11805},FirstExp = 740,EveryExp = 0,LvBoxId = 21182,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 8325}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 95,Bs = 2641744,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通18章6关
				[11807] = {Pos = 10,Name = _T("普通18章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11806},FirstExp = 740,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 8325}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 95,Bs = 2549071,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通18章7关
				[11808] = {Pos = 11,Name = _T("普通18章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11807},FirstExp = 740,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 8325}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 95,Bs = 2551211,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通18章8关
				[11809] = {Pos = 13,Name = _T("普通18章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11808},FirstExp = 740,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 8325}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 95,Bs = 2685276,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通18章9关
				[11810] = {Pos = 14,Name = _T("普通18章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {11809},FirstExp = 740,EveryExp = 0,LvBoxId = 21183,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 8325}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 95,Bs = 2861688,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通18章10关
			}
		},--普通18章
		[119] = {
			Name = _T("普通19章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11191,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 14400}}},--钻石100橙色基础材料20金币14400
				[20] = {Id = 11192,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 28800}}},--守护灵抽卡券2橙色基础材料39金币28800
				[30] = {Id = 11193,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 43200}}}--守护灵抽卡券3橙色基础材料59金币43200
			},
			ExtBox = {
				[21191] = {LevelIdRequired = 11903,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603004,Val = 5},[3] = {Id = 1401003,Val = 18000}}},--钻石20守护灵初级抽卡券2守护灵经验18000
				[21192] = {LevelIdRequired = 11906,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603004,Val = 10},[3] = {Id = 1401003,Val = 24000}}},--钻石30守护灵初级抽卡券3守护灵经验24000
				[21193] = {LevelIdRequired = 11910,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603004,Val = 15},[3] = {Id = 1401003,Val = 30000}}}--钻石50守护灵初级抽卡券5守护灵经验30000
			},
			Levels = {
				[11901] = {Pos = 1,Name = _T("普通19章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11810},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 100,Bs = 2750536,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通19章1关
				[11902] = {Pos = 3,Name = _T("普通19章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11901},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 100,Bs = 2752686,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通19章2关
				[11903] = {Pos = 5,Name = _T("普通19章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11902},FirstExp = 800,EveryExp = 0,LvBoxId = 21191,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 100,Bs = 2893956,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通19章3关
				[11904] = {Pos = 7,Name = _T("普通19章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11903},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 100,Bs = 2803179,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通19章4关
				[11905] = {Pos = 8,Name = _T("普通19章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11904},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 100,Bs = 2804244,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通19章5关
				[11906] = {Pos = 9,Name = _T("普通19章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11905},FirstExp = 800,EveryExp = 0,LvBoxId = 21192,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 100,Bs = 3215987,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通19章6关
				[11907] = {Pos = 11,Name = _T("普通19章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11906},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 100,Bs = 3108672,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通19章7关
				[11908] = {Pos = 12,Name = _T("普通19章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11907},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 100,Bs = 3110822,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通19章8关
				[11909] = {Pos = 13,Name = _T("普通19章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11908},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 100,Bs = 3264854,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通19章9关
				[11910] = {Pos = 14,Name = _T("普通19章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {11909},FirstExp = 800,EveryExp = 0,LvBoxId = 21193,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 100,Bs = 3464286,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通19章10关
			}
		},--普通19章
		[120] = {
			Name = _T("普通20章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11201,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 15600}}},--钻石100橙色基础材料24金币15600
				[20] = {Id = 11202,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 31200}}},--守护灵抽卡券2橙色基础材料48金币31200
				[30] = {Id = 11203,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 46800}}}--守护灵抽卡券3橙色基础材料72金币46800
			},
			ExtBox = {
				[21201] = {LevelIdRequired = 12003,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603004,Val = 6},[3] = {Id = 1401003,Val = 18900}}},--钻石20守护灵初级抽卡券2守护灵经验18900
				[21202] = {LevelIdRequired = 12006,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603004,Val = 12},[3] = {Id = 1401003,Val = 25200}}},--钻石30守护灵初级抽卡券3守护灵经验25200
				[21203] = {LevelIdRequired = 12010,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603004,Val = 18},[3] = {Id = 1401003,Val = 31500}}}--钻石50守护灵初级抽卡券5守护灵经验31500
			},
			Levels = {
				[12001] = {Pos = 1,Name = _T("普通20章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {11910},FirstExp = 840,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 9450}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 105,Bs = 3405932,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通20章1关
				[12002] = {Pos = 3,Name = _T("普通20章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12001},FirstExp = 840,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 9450}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 105,Bs = 3408082,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通20章2关
				[12003] = {Pos = 4,Name = _T("普通20章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12002},FirstExp = 840,EveryExp = 0,LvBoxId = 21201,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 9450}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 105,Bs = 3653011,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通20章3关
				[12004] = {Pos = 6,Name = _T("普通20章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12003},FirstExp = 840,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 9450}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 105,Bs = 3619622,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通20章4关
				[12005] = {Pos = 8,Name = _T("普通20章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12004},FirstExp = 840,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 9450}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 105,Bs = 3620697,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通20章5关
				[12006] = {Pos = 9,Name = _T("普通20章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12005},FirstExp = 840,EveryExp = 0,LvBoxId = 21202,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 9450}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 105,Bs = 3733743,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通20章6关
				[12007] = {Pos = 10,Name = _T("普通20章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12006},FirstExp = 840,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 9450}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 105,Bs = 3767739,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通20章7关
				[12008] = {Pos = 11,Name = _T("普通20章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12007},FirstExp = 840,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 9450}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 105,Bs = 3769909,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通20章8关
				[12009] = {Pos = 13,Name = _T("普通20章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12008},FirstExp = 840,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 9450}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 105,Bs = 3774121,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通20章9关
				[12010] = {Pos = 14,Name = _T("普通20章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {12009},FirstExp = 840,EveryExp = 0,LvBoxId = 21203,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 9450}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 105,Bs = 3986943,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通20章10关
			}
		},--普通20章
		[121] = {
			Name = _T("普通21章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11211,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 16800}}},--钻石100橙色基础材料30金币16800
				[20] = {Id = 11212,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 33600}}},--守护灵抽卡券2橙色基础材料60金币33600
				[30] = {Id = 11213,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 50400}}}--守护灵抽卡券3橙色基础材料90金币50400
			},
			ExtBox = {
				[21211] = {LevelIdRequired = 12103,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603004,Val = 8},[3] = {Id = 1401003,Val = 20250}}},--钻石20守护灵初级抽卡券2守护灵经验20250
				[21212] = {LevelIdRequired = 12106,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603004,Val = 15},[3] = {Id = 1401003,Val = 27000}}},--钻石30守护灵初级抽卡券3守护灵经验27000
				[21213] = {LevelIdRequired = 12110,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603004,Val = 23},[3] = {Id = 1401003,Val = 33750}}}--钻石50守护灵初级抽卡券5守护灵经验33750
			},
			Levels = {
				[12101] = {Pos = 1,Name = _T("普通21章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12010},FirstExp = 900,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 10125}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 110,Bs = 4052523,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通21章1关
				[12102] = {Pos = 3,Name = _T("普通21章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12101},FirstExp = 900,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 10125}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 110,Bs = 4055563,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通21章2关
				[12103] = {Pos = 5,Name = _T("普通21章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12102},FirstExp = 900,EveryExp = 0,LvBoxId = 21211,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 10125}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 110,Bs = 4186722,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通21章3关
				[12104] = {Pos = 7,Name = _T("普通21章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12103},FirstExp = 900,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 10125}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 110,Bs = 4144329,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通21章4关
				[12105] = {Pos = 8,Name = _T("普通21章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12104},FirstExp = 900,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 10125}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 110,Bs = 4145869,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通21章5关
				[12106] = {Pos = 9,Name = _T("普通21章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12105},FirstExp = 900,EveryExp = 0,LvBoxId = 21212,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 10125}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 110,Bs = 4356996,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通21章6关
				[12107] = {Pos = 11,Name = _T("普通21章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12106},FirstExp = 900,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 10125}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 110,Bs = 4482208,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通21章7关
				[12108] = {Pos = 12,Name = _T("普通21章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12107},FirstExp = 900,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 10125}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 110,Bs = 4485288,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通21章8关
				[12109] = {Pos = 13,Name = _T("普通21章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12108},FirstExp = 900,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 10125}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 110,Bs = 4414023,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通21章9关
				[12110] = {Pos = 14,Name = _T("普通21章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {12109},FirstExp = 900,EveryExp = 0,LvBoxId = 21213,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 10125}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 110,Bs = 4650849,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通21章10关
			}
		},--普通21章
		[122] = {
			Name = _T("普通22章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11221,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 18000}}},--钻石100红色基础材料6金币18000
				[20] = {Id = 11222,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 36000}}},--守护灵抽卡券2红色基础材料12金币36000
				[30] = {Id = 11223,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 54000}}}--守护灵抽卡券3红色基础材料18金币54000
			},
			ExtBox = {
				[21221] = {LevelIdRequired = 12203,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603015,Val = 1},[3] = {Id = 1401003,Val = 21150}}},--钻石20守护灵初级抽卡券2守护灵经验21150
				[21222] = {LevelIdRequired = 12206,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603015,Val = 2},[3] = {Id = 1401003,Val = 28200}}},--钻石30守护灵初级抽卡券3守护灵经验28200
				[21223] = {LevelIdRequired = 12210,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603015,Val = 2},[3] = {Id = 1401003,Val = 35250}}}--钻石50守护灵初级抽卡券5守护灵经验35250
			},
			Levels = {
				[12201] = {Pos = 1,Name = _T("普通22章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12110},FirstExp = 940,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 10575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 115,Bs = 4813194,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通22章1关
				[12202] = {Pos = 3,Name = _T("普通22章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12201},FirstExp = 940,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 10575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 115,Bs = 4817070,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通22章2关
				[12203] = {Pos = 4,Name = _T("普通22章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12202},FirstExp = 940,EveryExp = 0,LvBoxId = 21221,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 10575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 115,Bs = 5190903,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通22章3关
				[12204] = {Pos = 6,Name = _T("普通22章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12203},FirstExp = 940,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 10575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 115,Bs = 5050882,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通22章4关
				[12205] = {Pos = 8,Name = _T("普通22章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12204},FirstExp = 940,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 10575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 115,Bs = 5052799,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通22章5关
				[12206] = {Pos = 9,Name = _T("普通22章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12205},FirstExp = 940,EveryExp = 0,LvBoxId = 21222,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 10575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 115,Bs = 5168212,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通22章6关
				[12207] = {Pos = 10,Name = _T("普通22章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12206},FirstExp = 940,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 10575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 115,Bs = 5117501,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通22章7关
				[12208] = {Pos = 11,Name = _T("普通22章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12207},FirstExp = 940,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 10575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 13,NeedLv = 115,Bs = 5121326,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通22章8关
				[12209] = {Pos = 13,Name = _T("普通22章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12208},FirstExp = 940,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 10575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 13,NeedLv = 115,Bs = 5259271,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通22章9关
				[12210] = {Pos = 14,Name = _T("普通22章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {12209},FirstExp = 940,EveryExp = 0,LvBoxId = 21223,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 10575}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 13,NeedLv = 115,Bs = 5416719,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通22章10关
			}
		},--普通22章
		[123] = {
			Name = _T("普通23章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11231,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 19200}}},--钻石100红色基础材料11金币19200
				[20] = {Id = 11232,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 38400}}},--守护灵抽卡券2红色基础材料21金币38400
				[30] = {Id = 11233,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 57600}}}--守护灵抽卡券3红色基础材料32金币57600
			},
			ExtBox = {
				[21231] = {LevelIdRequired = 12303,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603015,Val = 1},[3] = {Id = 1401003,Val = 22500}}},--钻石20守护灵初级抽卡券2守护灵经验22500
				[21232] = {LevelIdRequired = 12306,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603015,Val = 3},[3] = {Id = 1401003,Val = 30000}}},--钻石30守护灵初级抽卡券3守护灵经验30000
				[21233] = {LevelIdRequired = 12310,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603015,Val = 4},[3] = {Id = 1401003,Val = 37500}}}--钻石50守护灵初级抽卡券5守护灵经验37500
			},
			Levels = {
				[12301] = {Pos = 1,Name = _T("普通23章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12210},FirstExp = 1000,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 55,NeedLv = 120,Bs = 5378514,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通23章1关
				[12302] = {Pos = 3,Name = _T("普通23章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12301},FirstExp = 1000,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 55,NeedLv = 120,Bs = 5382388,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通23章2关
				[12303] = {Pos = 5,Name = _T("普通23章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12302},FirstExp = 1000,EveryExp = 0,LvBoxId = 21231,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 55,NeedLv = 120,Bs = 5620267,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通23章3关
				[12304] = {Pos = 7,Name = _T("普通23章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12303},FirstExp = 1000,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 120,Bs = 5476112,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通23章4关
				[12305] = {Pos = 8,Name = _T("普通23章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12304},FirstExp = 1000,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 120,Bs = 5478030,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通23章5关
				[12306] = {Pos = 9,Name = _T("普通23章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12305},FirstExp = 1000,EveryExp = 0,LvBoxId = 21232,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 120,Bs = 6013605,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通23章6关
				[12307] = {Pos = 11,Name = _T("普通23章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12306},FirstExp = 1000,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 120,Bs = 5867351,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通23章7关
				[12308] = {Pos = 12,Name = _T("普通23章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12307},FirstExp = 1000,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 120,Bs = 5871196,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通23章8关
				[12309] = {Pos = 13,Name = _T("普通23章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12308},FirstExp = 1000,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 120,Bs = 6036723,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通23章9关
				[12310] = {Pos = 14,Name = _T("普通23章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {12309},FirstExp = 1000,EveryExp = 0,LvBoxId = 21233,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 120,Bs = 6199431,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通23章10关
			}
		},--普通23章
		[124] = {
			Name = _T("普通24章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11241,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 20400}}},--钻石100红色基础材料15金币20400
				[20] = {Id = 11242,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 40800}}},--守护灵抽卡券2红色基础材料30金币40800
				[30] = {Id = 11243,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 61200}}}--守护灵抽卡券3红色基础材料45金币61200
			},
			ExtBox = {
				[21241] = {LevelIdRequired = 12403,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603015,Val = 2},[3] = {Id = 1401003,Val = 24750}}},--钻石20守护灵初级抽卡券2守护灵经验24750
				[21242] = {LevelIdRequired = 12406,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603015,Val = 4},[3] = {Id = 1401003,Val = 33000}}},--钻石30守护灵初级抽卡券3守护灵经验33000
				[21243] = {LevelIdRequired = 12410,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603015,Val = 6},[3] = {Id = 1401003,Val = 41250}}}--钻石50守护灵初级抽卡券5守护灵经验41250
			},
			Levels = {
				[12401] = {Pos = 1,Name = _T("普通24章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12310},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5100},[2] = {Id = 1401003,Val = 12375}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 125,Bs = 6275134,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通24章1关
				[12402] = {Pos = 3,Name = _T("普通24章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12401},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5100},[2] = {Id = 1401003,Val = 12375}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 125,Bs = 6278990,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通24章2关
				[12403] = {Pos = 4,Name = _T("普通24章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12402},FirstExp = 1100,EveryExp = 0,LvBoxId = 21241,FDAward = {[1] = {Id = 1401002,Val = 5100},[2] = {Id = 1401003,Val = 12375}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 125,Bs = 6661891,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通24章3关
				[12404] = {Pos = 6,Name = _T("普通24章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12403},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5100},[2] = {Id = 1401003,Val = 12375}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 125,Bs = 6515828,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通24章4关
				[12405] = {Pos = 8,Name = _T("普通24章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12404},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5100},[2] = {Id = 1401003,Val = 12375}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 125,Bs = 6517765,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通24章5关
				[12406] = {Pos = 9,Name = _T("普通24章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12405},FirstExp = 1100,EveryExp = 0,LvBoxId = 21242,FDAward = {[1] = {Id = 1401002,Val = 5100},[2] = {Id = 1401003,Val = 12375}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 125,Bs = 6796136,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通24章6关
				[12407] = {Pos = 10,Name = _T("普通24章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12406},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5100},[2] = {Id = 1401003,Val = 12375}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 125,Bs = 6640710,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通24章7关
				[12408] = {Pos = 11,Name = _T("普通24章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12407},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5100},[2] = {Id = 1401003,Val = 12375}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 125,Bs = 6644555,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通24章8关
				[12409] = {Pos = 13,Name = _T("普通24章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12408},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5100},[2] = {Id = 1401003,Val = 12375}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 125,Bs = 6844706,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通24章9关
				[12410] = {Pos = 14,Name = _T("普通24章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {12409},FirstExp = 1100,EveryExp = 0,LvBoxId = 21243,FDAward = {[1] = {Id = 1401002,Val = 5100},[2] = {Id = 1401003,Val = 12375}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 125,Bs = 7010892,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通24章10关
			}
		},--普通24章
		[125] = {
			Name = _T("普通25章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11251,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 21600}}},--钻石100红色基础材料20金币21600
				[20] = {Id = 11252,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 43200}}},--守护灵抽卡券2红色基础材料39金币43200
				[30] = {Id = 11253,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 64800}}}--守护灵抽卡券3红色基础材料59金币64800
			},
			ExtBox = {
				[21251] = {LevelIdRequired = 12503,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603015,Val = 2},[3] = {Id = 1401003,Val = 27000}}},--钻石20守护灵初级抽卡券2守护灵经验27000
				[21252] = {LevelIdRequired = 12506,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603015,Val = 5},[3] = {Id = 1401003,Val = 36000}}},--钻石30守护灵初级抽卡券3守护灵经验36000
				[21253] = {LevelIdRequired = 12510,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603015,Val = 7},[3] = {Id = 1401003,Val = 45000}}}--钻石50守护灵初级抽卡券5守护灵经验45000
			},
			Levels = {
				[12501] = {Pos = 1,Name = _T("普通25章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12410},FirstExp = 1200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 130,Bs = 6924566,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通25章1关
				[12502] = {Pos = 3,Name = _T("普通25章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12501},FirstExp = 1200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 130,Bs = 6928414,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通25章2关
				[12503] = {Pos = 5,Name = _T("普通25章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12502},FirstExp = 1200,EveryExp = 0,LvBoxId = 21251,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 130,Bs = 7158914,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通25章3关
				[12504] = {Pos = 7,Name = _T("普通25章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12503},FirstExp = 1200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 130,Bs = 7177870,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通25章4关
				[12505] = {Pos = 8,Name = _T("普通25章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12504},FirstExp = 1200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 130,Bs = 7179803,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通25章5关
				[12506] = {Pos = 9,Name = _T("普通25章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12505},FirstExp = 1200,EveryExp = 0,LvBoxId = 21252,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 130,Bs = 7725365,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通25章6关
				[12507] = {Pos = 11,Name = _T("普通25章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12506},FirstExp = 1200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 130,Bs = 7906850,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通25章7关
				[12508] = {Pos = 12,Name = _T("普通25章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12507},FirstExp = 1200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 130,Bs = 7910708,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通25章8关
				[12509] = {Pos = 13,Name = _T("普通25章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12508},FirstExp = 1200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 130,Bs = 7697841,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通25章9关
				[12510] = {Pos = 14,Name = _T("普通25章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {12509},FirstExp = 1200,EveryExp = 0,LvBoxId = 21253,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 130,Bs = 7869747,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通25章10关
			}
		},--普通25章
		[126] = {
			Name = _T("普通26章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11261,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 22800}}},--钻石100红色基础材料24金币22800
				[20] = {Id = 11262,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 45600}}},--守护灵抽卡券2红色基础材料48金币45600
				[30] = {Id = 11263,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 68400}}}--守护灵抽卡券3红色基础材料72金币68400
			},
			ExtBox = {
				[21261] = {LevelIdRequired = 12603,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603015,Val = 3},[3] = {Id = 1401003,Val = 29250}}},--钻石20守护灵初级抽卡券2守护灵经验29250
				[21262] = {LevelIdRequired = 12606,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603015,Val = 6},[3] = {Id = 1401003,Val = 39000}}},--钻石30守护灵初级抽卡券3守护灵经验39000
				[21263] = {LevelIdRequired = 12610,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603015,Val = 9},[3] = {Id = 1401003,Val = 48750}}}--钻石50守护灵初级抽卡券5守护灵经验48750
			},
			Levels = {
				[12601] = {Pos = 1,Name = _T("普通26章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12510},FirstExp = 1300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5700},[2] = {Id = 1401003,Val = 14625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 135,Bs = 8351741,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通26章1关
				[12602] = {Pos = 3,Name = _T("普通26章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12601},FirstExp = 1300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5700},[2] = {Id = 1401003,Val = 14625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 135,Bs = 8356931,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通26章2关
				[12603] = {Pos = 4,Name = _T("普通26章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12602},FirstExp = 1300,EveryExp = 0,LvBoxId = 21261,FDAward = {[1] = {Id = 1401002,Val = 5700},[2] = {Id = 1401003,Val = 14625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 135,Bs = 8637186,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通26章3关
				[12604] = {Pos = 6,Name = _T("普通26章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12603},FirstExp = 1300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5700},[2] = {Id = 1401003,Val = 14625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 135,Bs = 8663395,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通26章4关
				[12605] = {Pos = 8,Name = _T("普通26章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12604},FirstExp = 1300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5700},[2] = {Id = 1401003,Val = 14625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 135,Bs = 8665980,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通26章5关
				[12606] = {Pos = 9,Name = _T("普通26章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12605},FirstExp = 1300,EveryExp = 0,LvBoxId = 21262,FDAward = {[1] = {Id = 1401002,Val = 5700},[2] = {Id = 1401003,Val = 14625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 135,Bs = 8780430,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通26章6关
				[12607] = {Pos = 10,Name = _T("普通26章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12606},FirstExp = 1300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5700},[2] = {Id = 1401003,Val = 14625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 135,Bs = 9200131,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通26章7关
				[12608] = {Pos = 11,Name = _T("普通26章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12607},FirstExp = 1300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5700},[2] = {Id = 1401003,Val = 14625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 12,NeedLv = 135,Bs = 9205332,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通26章8关
				[12609] = {Pos = 13,Name = _T("普通26章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12608},FirstExp = 1300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 5700},[2] = {Id = 1401003,Val = 14625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 12,NeedLv = 135,Bs = 8857861,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通26章9关
				[12610] = {Pos = 14,Name = _T("普通26章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {12609},FirstExp = 1300,EveryExp = 0,LvBoxId = 21263,FDAward = {[1] = {Id = 1401002,Val = 5700},[2] = {Id = 1401003,Val = 14625}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-1",MapPosId = 12,NeedLv = 135,Bs = 9029199,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通26章10关
			}
		},--普通26章
		[127] = {
			Name = _T("普通27章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11271,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 24000}}},--钻石100红色基础材料30金币24000
				[20] = {Id = 11272,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 48000}}},--守护灵抽卡券2红色基础材料60金币48000
				[30] = {Id = 11273,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 72000}}}--守护灵抽卡券3红色基础材料90金币72000
			},
			ExtBox = {
				[21271] = {LevelIdRequired = 12703,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603015,Val = 4},[3] = {Id = 1401003,Val = 31500}}},--钻石20守护灵初级抽卡券2守护灵经验31500
				[21272] = {LevelIdRequired = 12706,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603015,Val = 8},[3] = {Id = 1401003,Val = 42000}}},--钻石30守护灵初级抽卡券3守护灵经验42000
				[21273] = {LevelIdRequired = 12710,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603015,Val = 11},[3] = {Id = 1401003,Val = 52500}}}--钻石50守护灵初级抽卡券5守护灵经验52500
			},
			Levels = {
				[12701] = {Pos = 1,Name = _T("普通27章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12610},FirstExp = 1400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 56,NeedLv = 140,Bs = 9652546,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通27章1关
				[12702] = {Pos = 3,Name = _T("普通27章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12701},FirstExp = 1400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 56,NeedLv = 140,Bs = 9659434,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通27章2关
				[12703] = {Pos = 5,Name = _T("普通27章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12702},FirstExp = 1400,EveryExp = 0,LvBoxId = 21271,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_qingguoxiang_2-4",MapPosId = 56,NeedLv = 140,Bs = 9788450,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通27章3关
				[12704] = {Pos = 7,Name = _T("普通27章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12703},FirstExp = 1400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 140,Bs = 9826134,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通27章4关
				[12705] = {Pos = 8,Name = _T("普通27章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12704},FirstExp = 1400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 140,Bs = 9829597,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通27章5关
				[12706] = {Pos = 9,Name = _T("普通27章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12705},FirstExp = 1400,EveryExp = 0,LvBoxId = 21272,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 140,Bs = 10252723,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通27章6关
				[12707] = {Pos = 11,Name = _T("普通27章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12706},FirstExp = 1400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 140,Bs = 10789783,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通27章7关
				[12708] = {Pos = 12,Name = _T("普通27章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12707},FirstExp = 1400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 140,Bs = 10796721,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通27章8关
				[12709] = {Pos = 13,Name = _T("普通27章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12708},FirstExp = 1400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 140,Bs = 10322334,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通27章9关
				[12710] = {Pos = 14,Name = _T("普通27章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {12709},FirstExp = 1400,EveryExp = 0,LvBoxId = 21273,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 140,Bs = 10486968,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通27章10关
			}
		},--普通27章
		[128] = {
			Name = _T("普通28章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11281,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 25200}}},--钻石100红色基础材料30金币25200
				[20] = {Id = 11282,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 50400}}},--守护灵抽卡券2红色基础材料60金币50400
				[30] = {Id = 11283,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 75600}}}--守护灵抽卡券3红色基础材料90金币75600
			},
			ExtBox = {
				[21281] = {LevelIdRequired = 12803,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603015,Val = 4},[3] = {Id = 1401003,Val = 33750}}},--钻石20守护灵初级抽卡券2守护灵经验33750
				[21282] = {LevelIdRequired = 12806,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603015,Val = 8},[3] = {Id = 1401003,Val = 45000}}},--钻石30守护灵初级抽卡券3守护灵经验45000
				[21283] = {LevelIdRequired = 12810,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603015,Val = 11},[3] = {Id = 1401003,Val = 56250}}}--钻石50守护灵初级抽卡券5守护灵经验56250
			},
			Levels = {
				[12801] = {Pos = 1,Name = _T("普通28章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12710},FirstExp = 1500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6300},[2] = {Id = 1401003,Val = 16875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 145,Bs = 11234452,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通28章1关
				[12802] = {Pos = 3,Name = _T("普通28章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12801},FirstExp = 1500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6300},[2] = {Id = 1401003,Val = 16875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 145,Bs = 11241400,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通28章2关
				[12803] = {Pos = 4,Name = _T("普通28章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12802},FirstExp = 1500,EveryExp = 0,LvBoxId = 21281,FDAward = {[1] = {Id = 1401002,Val = 6300},[2] = {Id = 1401003,Val = 16875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 145,Bs = 11834007,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通28章3关
				[12804] = {Pos = 6,Name = _T("普通28章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12803},FirstExp = 1500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6300},[2] = {Id = 1401003,Val = 16875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 145,Bs = 11574081,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通28章4关
				[12805] = {Pos = 8,Name = _T("普通28章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12804},FirstExp = 1500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6300},[2] = {Id = 1401003,Val = 16875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 145,Bs = 11577544,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通28章5关
				[12806] = {Pos = 9,Name = _T("普通28章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12805},FirstExp = 1500,EveryExp = 0,LvBoxId = 21282,FDAward = {[1] = {Id = 1401002,Val = 6300},[2] = {Id = 1401003,Val = 16875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 145,Bs = 11752463,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通28章6关
				[12807] = {Pos = 10,Name = _T("普通28章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12806},FirstExp = 1500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6300},[2] = {Id = 1401003,Val = 16875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 145,Bs = 11746183,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通28章7关
				[12808] = {Pos = 11,Name = _T("普通28章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12807},FirstExp = 1500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6300},[2] = {Id = 1401003,Val = 16875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 145,Bs = 11753141,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通28章8关
				[12809] = {Pos = 13,Name = _T("普通28章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12808},FirstExp = 1500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6300},[2] = {Id = 1401003,Val = 16875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 145,Bs = 11893616,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通28章9关
				[12810] = {Pos = 14,Name = _T("普通28章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {12809},FirstExp = 1500,EveryExp = 0,LvBoxId = 21283,FDAward = {[1] = {Id = 1401002,Val = 6300},[2] = {Id = 1401003,Val = 16875}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 145,Bs = 11917008,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通28章10关
			}
		},--普通28章
		[129] = {
			Name = _T("普通29章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 11291,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 26400}}},--钻石100红色基础材料30金币26400
				[20] = {Id = 11292,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 52800}}},--守护灵抽卡券2红色基础材料60金币52800
				[30] = {Id = 11293,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 79200}}}--守护灵抽卡券3红色基础材料90金币79200
			},
			ExtBox = {
				[21291] = {LevelIdRequired = 12903,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603015,Val = 4},[3] = {Id = 1401003,Val = 36000}}},--钻石20守护灵初级抽卡券2守护灵经验36000
				[21292] = {LevelIdRequired = 12906,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603015,Val = 8},[3] = {Id = 1401003,Val = 48000}}},--钻石30守护灵初级抽卡券3守护灵经验48000
				[21293] = {LevelIdRequired = 12910,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603015,Val = 11},[3] = {Id = 1401003,Val = 60000}}}--钻石50守护灵初级抽卡券5守护灵经验60000
			},
			Levels = {
				[12901] = {Pos = 1,Name = _T("普通29章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12810},FirstExp = 1600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 150,Bs = 11881920,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通29章1关
				[12902] = {Pos = 3,Name = _T("普通29章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12901},FirstExp = 1600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 150,Bs = 11881920,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通29章2关
				[12903] = {Pos = 5,Name = _T("普通29章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12902},FirstExp = 1600,EveryExp = 0,LvBoxId = 21291,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 150,Bs = 12226370,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通29章3关
				[12904] = {Pos = 7,Name = _T("普通29章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12903},FirstExp = 1600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 150,Bs = 11881920,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通29章4关
				[12905] = {Pos = 8,Name = _T("普通29章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12904},FirstExp = 1600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 150,Bs = 11881920,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通29章5关
				[12906] = {Pos = 9,Name = _T("普通29章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12905},FirstExp = 1600,EveryExp = 0,LvBoxId = 21292,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 150,Bs = 12814872,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通29章6关
				[12907] = {Pos = 11,Name = _T("普通29章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12906},FirstExp = 1600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 150,Bs = 12462156,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通29章7关
				[12908] = {Pos = 12,Name = _T("普通29章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12907},FirstExp = 1600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 150,Bs = 12462156,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通29章8关
				[12909] = {Pos = 13,Name = _T("普通29章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12908},FirstExp = 1600,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 150,Bs = 12614225,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通29章9关
				[12910] = {Pos = 14,Name = _T("普通29章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {12909},FirstExp = 1600,EveryExp = 0,LvBoxId = 21293,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 12635163,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通29章10关
			}
		},--普通29章
		[130] = {
			Name = _T("普通30章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 11301,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 1401002,Val = 26400}}},--钻石100灵玉6金币26400
				[20] = {Id = 11302,Award = {[1] = {Id = 1602001,Val = 2},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 52800}}},--守护灵抽卡券2灵玉12金币52800
				[30] = {Id = 11303,Award = {[1] = {Id = 1602001,Val = 3},[2] = {Id = 1604001,Val = 1},[3] = {Id = 1401002,Val = 79200}}}--守护灵抽卡券3灵玉18金币79200
			},
			ExtBox = {
				[21301] = {LevelIdRequired = 13003,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1602002,Val = 2},[2] = {Id = 1603015,Val = 4},[3] = {Id = 1401003,Val = 43200}}},--钻石20守护灵初级抽卡券2守护灵经验43200
				[21302] = {LevelIdRequired = 13006,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1602002,Val = 3},[2] = {Id = 1603015,Val = 8},[3] = {Id = 1401003,Val = 57600}}},--钻石30守护灵初级抽卡券3守护灵经验57600
				[21303] = {LevelIdRequired = 13010,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1602002,Val = 5},[2] = {Id = 1603015,Val = 11},[3] = {Id = 1401003,Val = 72000}}}--钻石50守护灵初级抽卡券5守护灵经验72000
			},
			Levels = {
				[13001] = {Pos = 1,Name = _T("普通30章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {12910},FirstExp = 1680,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 21600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 12603756,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通30章1关
				[13002] = {Pos = 3,Name = _T("普通30章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {13001},FirstExp = 1680,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 21600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 12603756,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通30章2关
				[13003] = {Pos = 4,Name = _T("普通30章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {13002},FirstExp = 1680,EveryExp = 0,LvBoxId = 21301,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 21600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 150,Bs = 13163922,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通30章3关
				[13004] = {Pos = 6,Name = _T("普通30章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {13003},FirstExp = 1680,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 21600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 150,Bs = 12831546,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通30章4关
				[13005] = {Pos = 8,Name = _T("普通30章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {13004},FirstExp = 1680,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 21600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 12831546,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通30章5关
				[13006] = {Pos = 9,Name = _T("普通30章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {13005},FirstExp = 1680,EveryExp = 0,LvBoxId = 21302,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 21600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 150,Bs = 13417972,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通30章6关
				[13007] = {Pos = 10,Name = _T("普通30章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {13006},FirstExp = 1680,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 21600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 150,Bs = 13059336,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通30章7关
				[13008] = {Pos = 11,Name = _T("普通30章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {13007},FirstExp = 1680,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 21600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 150,Bs = 13059336,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通30章8关
				[13009] = {Pos = 13,Name = _T("普通30章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {13008},FirstExp = 1680,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 21600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 13074805,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--普通30章9关
				[13010] = {Pos = 14,Name = _T("普通30章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {13009},FirstExp = 1680,EveryExp = 0,LvBoxId = 21303,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 21600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 150,Bs = 13096143,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--普通30章10关
			}
		}--普通30章
	},
	[2] = {
		[201] = {
			Name = _T("困难1章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12011,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2101432,Val = 1},[3] = {Id = 1401002,Val = 900}}},--钻石100绿色基础材料23金币900
				[20] = {Id = 12012,Award = {[1] = {Id = 1401015,Val = 500},[2] = {Id = 2101433,Val = 1},[3] = {Id = 1401002,Val = 1800}}},--熔炼精华500绿色基础材料45金币1800
				[30] = {Id = 12013,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2101434,Val = 1},[3] = {Id = 1401002,Val = 2700}}}--守护灵抽卡券5绿色基础材料68金币2700
			},
			ExtBox = {
				[22011] = {LevelIdRequired = 20103,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603001,Val = 80},[3] = {Id = 1401003,Val = 3150}}},--钻石10守护灵初级抽卡券2守护灵经验750
				[22012] = {LevelIdRequired = 20106,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603001,Val = 120},[3] = {Id = 1401003,Val = 6300}}},--钻石15守护灵初级抽卡券3守护灵经验1500
				[22013] = {LevelIdRequired = 20110,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603005,Val = 8},[3] = {Id = 1401003,Val = 9450}}}--钻石25守护灵初级抽卡券5守护灵经验2250
			},
			Levels = {
				[20101] = {Pos = 1,Name = _T("困难1章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {10210},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 20,Bs = 44775,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难1章1关
				[20102] = {Pos = 3,Name = _T("困难1章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20101},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 20,Bs = 48177,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难1章2关
				[20103] = {Pos = 5,Name = _T("困难1章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20102},FirstExp = 200,EveryExp = 0,LvBoxId = 22011,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 20,Bs = 68760,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难1章3关
				[20104] = {Pos = 7,Name = _T("困难1章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20103},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 20,Bs = 63763,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难1章4关
				[20105] = {Pos = 8,Name = _T("困难1章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20104},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 20,Bs = 64312,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难1章5关
				[20106] = {Pos = 9,Name = _T("困难1章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20105},FirstExp = 200,EveryExp = 0,LvBoxId = 22012,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 20,Bs = 88981,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难1章6关
				[20107] = {Pos = 11,Name = _T("困难1章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20106},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 20,Bs = 85787,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难1章7关
				[20108] = {Pos = 12,Name = _T("困难1章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20107},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 20,Bs = 88799,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难1章8关
				[20109] = {Pos = 13,Name = _T("困难1章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20108},FirstExp = 200,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 20,Bs = 108255,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难1章9关
				[20110] = {Pos = 14,Name = _T("困难1章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {20109},FirstExp = 200,EveryExp = 0,LvBoxId = 22013,FDAward = {[1] = {Id = 1401002,Val = 1200},[2] = {Id = 1401003,Val = 2250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 20,Bs = 109389,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--困难1章10关
			}
		},--困难1章
		[202] = {
			Name = _T("困难2章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12021,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2101435,Val = 1},[3] = {Id = 1401002,Val = 1350}}},--钻石100玄铁2金币1350
				[20] = {Id = 12022,Award = {[1] = {Id = 1401015,Val = 600},[2] = {Id = 2101436,Val = 1},[3] = {Id = 1401002,Val = 2700}}},--熔炼精华600玄铁4金币2700
				[30] = {Id = 12023,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2101431,Val = 1},[3] = {Id = 1401002,Val = 4050}}}--守护灵抽卡券5玄铁5金币4050
			},
			ExtBox = {
				[22021] = {LevelIdRequired = 20203,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603005,Val = 2},[3] = {Id = 1401003,Val = 3600}}},--钻石10守护灵初级抽卡券2守护灵经验1800
				[22022] = {LevelIdRequired = 20206,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603005,Val = 3},[3] = {Id = 1401003,Val = 7200}}},--钻石15守护灵初级抽卡券3守护灵经验2700
				[22023] = {LevelIdRequired = 20210,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603005,Val = 5},[3] = {Id = 1401003,Val = 10800}}}--钻石25守护灵初级抽卡券5守护灵经验3600
			},
			Levels = {
				[20201] = {Pos = 1,Name = _T("困难2章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20110},FirstExp = 250,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 27,Bs = 98567,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难2章1关
				[20202] = {Pos = 3,Name = _T("困难2章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20201},FirstExp = 250,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 27,Bs = 99087,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难2章2关
				[20203] = {Pos = 4,Name = _T("困难2章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20202},FirstExp = 250,EveryExp = 0,LvBoxId = 22021,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 27,Bs = 113864,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难2章3关
				[20204] = {Pos = 6,Name = _T("困难2章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20203},FirstExp = 250,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 27,Bs = 110210,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难2章4关
				[20205] = {Pos = 8,Name = _T("困难2章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20204},FirstExp = 250,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 27,Bs = 110470,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难2章5关
				[20206] = {Pos = 9,Name = _T("困难2章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20205},FirstExp = 250,EveryExp = 0,LvBoxId = 22022,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 27,Bs = 122791,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难2章6关
				[20207] = {Pos = 10,Name = _T("困难2章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20206},FirstExp = 250,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 27,Bs = 118342,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难2章7关
				[20208] = {Pos = 11,Name = _T("困难2章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20207},FirstExp = 250,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 27,Bs = 118862,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难2章8关
				[20209] = {Pos = 13,Name = _T("困难2章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20208},FirstExp = 250,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 27,Bs = 131034,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难2章9关
				[20210] = {Pos = 14,Name = _T("困难2章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {20209},FirstExp = 250,EveryExp = 0,LvBoxId = 22023,FDAward = {[1] = {Id = 1401002,Val = 1500},[2] = {Id = 1401003,Val = 2700}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 27,Bs = 136704,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--困难2章10关
			}
		},--困难2章
		[203] = {
			Name = _T("困难3章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12031,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2001432,Val = 1},[3] = {Id = 1401002,Val = 2700}}},--钻石100玄铁5金币2700
				[20] = {Id = 12032,Award = {[1] = {Id = 1401015,Val = 700},[2] = {Id = 2001433,Val = 1},[3] = {Id = 1401002,Val = 4500}}},--熔炼精华700玄铁8金币4500
				[30] = {Id = 12033,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2001434,Val = 1},[3] = {Id = 1401002,Val = 6300}}}--守护灵抽卡券5玄铁11金币6300
			},
			ExtBox = {
				[22031] = {LevelIdRequired = 20303,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603005,Val = 4},[3] = {Id = 1401003,Val = 6075}}},--钻石10守护灵初级抽卡券2守护灵经验3150
				[22032] = {LevelIdRequired = 20306,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603005,Val = 7},[3] = {Id = 1401003,Val = 10125}}},--钻石20守护灵初级抽卡券3守护灵经验4200
				[22033] = {LevelIdRequired = 20310,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603005,Val = 10},[3] = {Id = 1401003,Val = 14175}}}--钻石30守护灵初级抽卡券5守护灵经验5250
			},
			Levels = {
				[20301] = {Pos = 1,Name = _T("困难3章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20210},FirstExp = 300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 32,Bs = 129774,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难3章1关
				[20302] = {Pos = 3,Name = _T("困难3章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20301},FirstExp = 300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 32,Bs = 130422,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难3章2关
				[20303] = {Pos = 5,Name = _T("困难3章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20302},FirstExp = 300,EveryExp = 0,LvBoxId = 22031,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 32,Bs = 141701,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难3章3关
				[20304] = {Pos = 7,Name = _T("困难3章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20303},FirstExp = 300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 32,Bs = 136407,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难3章4关
				[20305] = {Pos = 8,Name = _T("困难3章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20304},FirstExp = 300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 32,Bs = 136731,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难3章5关
				[20306] = {Pos = 9,Name = _T("困难3章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20305},FirstExp = 300,EveryExp = 0,LvBoxId = 22032,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 32,Bs = 154698,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难3章6关
				[20307] = {Pos = 11,Name = _T("困难3章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20306},FirstExp = 300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 32,Bs = 150273,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难3章7关
				[20308] = {Pos = 12,Name = _T("困难3章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20307},FirstExp = 300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 32,Bs = 150921,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难3章8关
				[20309] = {Pos = 13,Name = _T("困难3章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20308},FirstExp = 300,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 32,Bs = 168891,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难3章9关
				[20310] = {Pos = 14,Name = _T("困难3章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {20309},FirstExp = 300,EveryExp = 0,LvBoxId = 22033,FDAward = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1401003,Val = 3150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 32,Bs = 168891,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--困难3章10关
			}
		},--困难3章
		[204] = {
			Name = _T("困难4章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12041,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2001435,Val = 1},[3] = {Id = 1401002,Val = 3375}}},--钻石100玄铁7金币3375
				[20] = {Id = 12042,Award = {[1] = {Id = 1401015,Val = 800},[2] = {Id = 2001436,Val = 1},[3] = {Id = 1401002,Val = 5625}}},--熔炼精华800玄铁11金币5625
				[30] = {Id = 12043,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2001431,Val = 1},[3] = {Id = 1401002,Val = 7875}}}--守护灵抽卡券5玄铁16金币7875
			},
			ExtBox = {
				[22041] = {LevelIdRequired = 20403,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603005,Val = 6},[3] = {Id = 1401003,Val = 6750}}},--钻石10守护灵初级抽卡券2守护灵经验3600
				[22042] = {LevelIdRequired = 20406,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603005,Val = 11},[3] = {Id = 1401003,Val = 11250}}},--钻石20守护灵初级抽卡券3守护灵经验4800
				[22043] = {LevelIdRequired = 20410,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603005,Val = 15},[3] = {Id = 1401003,Val = 15750}}}--钻石30守护灵初级抽卡券5守护灵经验6000
			},
			Levels = {
				[20401] = {Pos = 1,Name = _T("困难4章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20310},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 37,Bs = 160857,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难4章1关
				[20402] = {Pos = 3,Name = _T("困难4章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20401},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 37,Bs = 161505,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难4章2关
				[20403] = {Pos = 4,Name = _T("困难4章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20402},FirstExp = 400,EveryExp = 0,LvBoxId = 22041,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 37,Bs = 191858,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难4章3关
				[20404] = {Pos = 6,Name = _T("困难4章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20403},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 37,Bs = 186498,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难4章4关
				[20405] = {Pos = 8,Name = _T("困难4章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20404},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 37,Bs = 186822,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难4章5关
				[20406] = {Pos = 9,Name = _T("困难4章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20405},FirstExp = 400,EveryExp = 0,LvBoxId = 22042,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 37,Bs = 219213,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难4章6关
				[20407] = {Pos = 10,Name = _T("困难4章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20406},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 37,Bs = 217202,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难4章7关
				[20408] = {Pos = 11,Name = _T("困难4章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20407},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 37,Bs = 217850,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难4章8关
				[20409] = {Pos = 13,Name = _T("困难4章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20408},FirstExp = 400,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 37,Bs = 233406,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难4章9关
				[20410] = {Pos = 14,Name = _T("困难4章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {20409},FirstExp = 400,EveryExp = 0,LvBoxId = 22043,FDAward = {[1] = {Id = 1401002,Val = 2100},[2] = {Id = 1401003,Val = 3600}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 37,Bs = 233406,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--困难4章10关
			}
		},--困难4章
		[205] = {
			Name = _T("困难5章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12051,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2002412,Val = 1},[3] = {Id = 1401002,Val = 5400}}},--钻石100玄铁12金币5400
				[20] = {Id = 12052,Award = {[1] = {Id = 1401015,Val = 1000},[2] = {Id = 2002413,Val = 1},[3] = {Id = 1401002,Val = 10800}}},--熔炼精华1000玄铁23金币10800
				[30] = {Id = 12053,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2002415,Val = 1},[3] = {Id = 1401002,Val = 16200}}}--守护灵抽卡券5玄铁35金币16200
			},
			ExtBox = {
				[22051] = {LevelIdRequired = 20503,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603005,Val = 11},[3] = {Id = 1401003,Val = 10800}}},--钻石20守护灵初级抽卡券2守护灵经验4050
				[22052] = {LevelIdRequired = 20506,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603005,Val = 22},[3] = {Id = 1401003,Val = 21600}}},--钻石30守护灵初级抽卡券3守护灵经验5400
				[22053] = {LevelIdRequired = 20510,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603005,Val = 33},[3] = {Id = 1401003,Val = 32400}}}--钻石50守护灵初级抽卡券5守护灵经验6750
			},
			Levels = {
				[20501] = {Pos = 1,Name = _T("困难5章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20410},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 42,Bs = 227321,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难5章1关
				[20502] = {Pos = 3,Name = _T("困难5章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20501},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 42,Bs = 228045,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难5章2关
				[20503] = {Pos = 5,Name = _T("困难5章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20502},FirstExp = 500,EveryExp = 0,LvBoxId = 22051,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 42,Bs = 256319,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难5章3关
				[20504] = {Pos = 7,Name = _T("困难5章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20503},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 42,Bs = 253355,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难5章4关
				[20505] = {Pos = 8,Name = _T("困难5章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20504},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 42,Bs = 253745,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难5章5关
				[20506] = {Pos = 9,Name = _T("困难5章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20505},FirstExp = 500,EveryExp = 0,LvBoxId = 22052,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 42,Bs = 301040,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难5章6关
				[20507] = {Pos = 11,Name = _T("困难5章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20506},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 42,Bs = 289776,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难5章7关
				[20508] = {Pos = 12,Name = _T("困难5章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20507},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 42,Bs = 290424,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难5章8关
				[20509] = {Pos = 13,Name = _T("困难5章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20508},FirstExp = 500,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 42,Bs = 325643,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难5章9关
				[20510] = {Pos = 14,Name = _T("困难5章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {20509},FirstExp = 500,EveryExp = 0,LvBoxId = 22053,FDAward = {[1] = {Id = 1401002,Val = 2400},[2] = {Id = 1401003,Val = 4050}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 42,Bs = 325643,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--困难5章10关
			}
		},--困难5章
		[206] = {
			Name = _T("困难6章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12061,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2002417,Val = 1},[3] = {Id = 1401002,Val = 6300}}},--钻石100玄铁14金币6300
				[20] = {Id = 12062,Award = {[1] = {Id = 1401015,Val = 1050},[2] = {Id = 2002418,Val = 1},[3] = {Id = 1401002,Val = 12600}}},--熔炼精华1050玄铁29金币12600
				[30] = {Id = 12063,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2002411,Val = 1},[3] = {Id = 1401002,Val = 18900}}}--守护灵抽卡券5玄铁43金币18900
			},
			ExtBox = {
				[22061] = {LevelIdRequired = 20603,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603005,Val = 14},[3] = {Id = 1401003,Val = 12600}}},--钻石20守护灵初级抽卡券2守护灵经验4500
				[22062] = {LevelIdRequired = 20606,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603005,Val = 27},[3] = {Id = 1401003,Val = 25200}}},--钻石30守护灵初级抽卡券3守护灵经验6000
				[22063] = {LevelIdRequired = 20610,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603005,Val = 41},[3] = {Id = 1401003,Val = 37800}}}--钻石50守护灵初级抽卡券5守护灵经验7500
			},
			Levels = {
				[20601] = {Pos = 1,Name = _T("困难6章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20510},FirstExp = 650,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 47,Bs = 306577,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难6章1关
				[20602] = {Pos = 3,Name = _T("困难6章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20601},FirstExp = 650,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 47,Bs = 307377,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难6章2关
				[20603] = {Pos = 4,Name = _T("困难6章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20602},FirstExp = 650,EveryExp = 0,LvBoxId = 22061,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 47,Bs = 368148,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难6章3关
				[20604] = {Pos = 6,Name = _T("困难6章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20603},FirstExp = 650,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 47,Bs = 351747,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难6章4关
				[20605] = {Pos = 8,Name = _T("困难6章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20604},FirstExp = 650,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 47,Bs = 357177,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难6章5关
				[20606] = {Pos = 9,Name = _T("困难6章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20605},FirstExp = 650,EveryExp = 0,LvBoxId = 22062,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 47,Bs = 417896,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难6章6关
				[20607] = {Pos = 10,Name = _T("困难6章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20606},FirstExp = 650,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 47,Bs = 396535,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难6章7关
				[20608] = {Pos = 11,Name = _T("困难6章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20607},FirstExp = 650,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 47,Bs = 397365,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难6章8关
				[20609] = {Pos = 13,Name = _T("困难6章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20608},FirstExp = 650,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 47,Bs = 422025,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难6章9关
				[20610] = {Pos = 14,Name = _T("困难6章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {20609},FirstExp = 650,EveryExp = 0,LvBoxId = 22063,FDAward = {[1] = {Id = 1401002,Val = 2700},[2] = {Id = 1401003,Val = 4500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 47,Bs = 422025,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--困难6章10关
			}
		},--困难6章
		[207] = {
			Name = _T("困难7章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12071,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2102412,Val = 1},[3] = {Id = 1401002,Val = 7200}}},--钻石100玄铁18金币7200
				[20] = {Id = 12072,Award = {[1] = {Id = 1401015,Val = 1100},[2] = {Id = 2102413,Val = 1},[3] = {Id = 1401002,Val = 14400}}},--熔炼精华1100玄铁36金币14400
				[30] = {Id = 12073,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2102415,Val = 1},[3] = {Id = 1401002,Val = 21600}}}--守护灵抽卡券5玄铁54金币21600
			},
			ExtBox = {
				[22071] = {LevelIdRequired = 20703,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603005,Val = 17},[3] = {Id = 1401003,Val = 14400}}},--钻石20守护灵初级抽卡券2守护灵经验5400
				[22072] = {LevelIdRequired = 20706,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603005,Val = 34},[3] = {Id = 1401003,Val = 28800}}},--钻石30守护灵初级抽卡券3守护灵经验7200
				[22073] = {LevelIdRequired = 20710,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603005,Val = 51},[3] = {Id = 1401003,Val = 43200}}}--钻石50守护灵初级抽卡券5守护灵经验9000
			},
			Levels = {
				[20701] = {Pos = 1,Name = _T("困难7章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20610},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 5400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 52,Bs = 430477,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难7章1关
				[20702] = {Pos = 3,Name = _T("困难7章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20701},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 5400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 52,Bs = 431317,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难7章2关
				[20703] = {Pos = 5,Name = _T("困难7章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20702},FirstExp = 800,EveryExp = 0,LvBoxId = 22071,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 5400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 52,Bs = 505140,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难7章3关
				[20704] = {Pos = 7,Name = _T("困难7章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20703},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 5400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 52,Bs = 449129,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难7章4关
				[20705] = {Pos = 8,Name = _T("困难7章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20704},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 5400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 52,Bs = 449539,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难7章5关
				[20706] = {Pos = 9,Name = _T("困难7章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20705},FirstExp = 800,EveryExp = 0,LvBoxId = 22072,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 5400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 52,Bs = 568991,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难7章6关
				[20707] = {Pos = 11,Name = _T("困难7章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20706},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 5400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 52,Bs = 523174,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难7章7关
				[20708] = {Pos = 12,Name = _T("困难7章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20707},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 5400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 52,Bs = 524014,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难7章8关
				[20709] = {Pos = 13,Name = _T("困难7章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20708},FirstExp = 800,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 5400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 52,Bs = 557517,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难7章9关
				[20710] = {Pos = 14,Name = _T("困难7章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {20709},FirstExp = 800,EveryExp = 0,LvBoxId = 22073,FDAward = {[1] = {Id = 1401002,Val = 3000},[2] = {Id = 1401003,Val = 5400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 52,Bs = 570474,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--困难7章10关
			}
		},--困难7章
		[208] = {
			Name = _T("困难8章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12081,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2102417,Val = 1},[3] = {Id = 1401002,Val = 8100}}},--钻石100乌金4金币8100
				[20] = {Id = 12082,Award = {[1] = {Id = 1401015,Val = 1150},[2] = {Id = 2102418,Val = 1},[3] = {Id = 1401002,Val = 16200}}},--熔炼精华1150乌金7金币16200
				[30] = {Id = 12083,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2102411,Val = 1},[3] = {Id = 1401002,Val = 24300}}}--守护灵抽卡券5乌金11金币24300
			},
			ExtBox = {
				[22081] = {LevelIdRequired = 20803,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603006,Val = 1},[3] = {Id = 1401003,Val = 16200}}},--钻石20守护灵初级抽卡券2守护灵经验6300
				[22082] = {LevelIdRequired = 20806,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603006,Val = 3},[3] = {Id = 1401003,Val = 32400}}},--钻石30守护灵初级抽卡券3守护灵经验8400
				[22083] = {LevelIdRequired = 20810,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603006,Val = 4},[3] = {Id = 1401003,Val = 48600}}}--钻石50守护灵初级抽卡券5守护灵经验10500
			},
			Levels = {
				[20801] = {Pos = 1,Name = _T("困难8章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20710},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 6300}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 57,Bs = 553333,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难8章1关
				[20802] = {Pos = 3,Name = _T("困难8章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20801},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 6300}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 57,Bs = 554393,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难8章2关
				[20803] = {Pos = 4,Name = _T("困难8章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20802},FirstExp = 1100,EveryExp = 0,LvBoxId = 22081,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 6300}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 57,Bs = 647097,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难8章3关
				[20804] = {Pos = 6,Name = _T("困难8章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20803},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 6300}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 57,Bs = 575314,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难8章4关
				[20805] = {Pos = 8,Name = _T("困难8章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20804},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 6300}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 57,Bs = 575835,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难8章5关
				[20806] = {Pos = 9,Name = _T("困难8章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20805},FirstExp = 1100,EveryExp = 0,LvBoxId = 22082,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 6300}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 57,Bs = 670608,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难8章6关
				[20807] = {Pos = 10,Name = _T("困难8章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20806},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 6300}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 57,Bs = 615775,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难8章7关
				[20808] = {Pos = 11,Name = _T("困难8章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20807},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 6300}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 57,Bs = 616797,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难8章8关
				[20809] = {Pos = 13,Name = _T("困难8章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20808},FirstExp = 1100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 6300}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 57,Bs = 649968,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难8章9关
				[20810] = {Pos = 14,Name = _T("困难8章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {20809},FirstExp = 1100,EveryExp = 0,LvBoxId = 22083,FDAward = {[1] = {Id = 1401002,Val = 3300},[2] = {Id = 1401003,Val = 6300}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 57,Bs = 664855,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--困难8章10关
			}
		},--困难8章
		[209] = {
			Name = _T("困难9章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12091,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2103422,Val = 1},[3] = {Id = 1401002,Val = 9000}}},--钻石100乌金6金币9000
				[20] = {Id = 12092,Award = {[1] = {Id = 1401015,Val = 1200},[2] = {Id = 2103423,Val = 1},[3] = {Id = 1401002,Val = 18000}}},--熔炼精华1200乌金13金币18000
				[30] = {Id = 12093,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2103424,Val = 1},[3] = {Id = 1401002,Val = 27000}}}--守护灵抽卡券5乌金19金币27000
			},
			ExtBox = {
				[22091] = {LevelIdRequired = 20903,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603006,Val = 2},[3] = {Id = 1401003,Val = 18000}}},--钻石20守护灵初级抽卡券2守护灵经验7200
				[22092] = {LevelIdRequired = 20906,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603006,Val = 5},[3] = {Id = 1401003,Val = 36000}}},--钻石30守护灵初级抽卡券3守护灵经验9600
				[22093] = {LevelIdRequired = 20910,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603006,Val = 7},[3] = {Id = 1401003,Val = 54000}}}--钻石50守护灵初级抽卡券5守护灵经验12000
			},
			Levels = {
				[20901] = {Pos = 1,Name = _T("困难9章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20810},FirstExp = 1350,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 62,Bs = 643549,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难9章1关
				[20902] = {Pos = 3,Name = _T("困难9章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20901},FirstExp = 1350,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 62,Bs = 644609,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难9章2关
				[20903] = {Pos = 5,Name = _T("困难9章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20902},FirstExp = 1350,EveryExp = 0,LvBoxId = 22091,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 62,Bs = 760944,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难9章3关
				[20904] = {Pos = 7,Name = _T("困难9章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20903},FirstExp = 1350,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 62,Bs = 677840,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难9章4关
				[20905] = {Pos = 8,Name = _T("困难9章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20904},FirstExp = 1350,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 62,Bs = 678361,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难9章5关
				[20906] = {Pos = 9,Name = _T("困难9章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20905},FirstExp = 1350,EveryExp = 0,LvBoxId = 22092,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 62,Bs = 805315,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难9章6关
				[20907] = {Pos = 11,Name = _T("困难9章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20906},FirstExp = 1350,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 62,Bs = 740572,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难9章7关
				[20908] = {Pos = 12,Name = _T("困难9章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20907},FirstExp = 1350,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 62,Bs = 741594,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难9章8关
				[20909] = {Pos = 13,Name = _T("困难9章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20908},FirstExp = 1350,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 62,Bs = 774171,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难9章9关
				[20910] = {Pos = 14,Name = _T("困难9章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {20909},FirstExp = 1350,EveryExp = 0,LvBoxId = 22093,FDAward = {[1] = {Id = 1401002,Val = 3600},[2] = {Id = 1401003,Val = 7200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 62,Bs = 792248,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--困难9章10关
			}
		},--困难9章
		[210] = {
			Name = _T("困难10章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12101,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2103425,Val = 1},[3] = {Id = 1401002,Val = 9900}}},--钻石100乌金9金币9900
				[20] = {Id = 12102,Award = {[1] = {Id = 1401015,Val = 1350},[2] = {Id = 2103426,Val = 1},[3] = {Id = 1401002,Val = 19800}}},--熔炼精华1350乌金18金币19800
				[30] = {Id = 12103,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2103421,Val = 1},[3] = {Id = 1401002,Val = 29700}}}--守护灵抽卡券5乌金27金币29700
			},
			ExtBox = {
				[22101] = {LevelIdRequired = 21003,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603006,Val = 5},[3] = {Id = 1401003,Val = 19800}}},--钻石20守护灵初级抽卡券2守护灵经验8100
				[22102] = {LevelIdRequired = 21006,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603006,Val = 9},[3] = {Id = 1401003,Val = 39600}}},--钻石30守护灵初级抽卡券3守护灵经验10800
				[22103] = {LevelIdRequired = 21010,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603006,Val = 14},[3] = {Id = 1401003,Val = 59400}}}--钻石50守护灵初级抽卡券5守护灵经验13500
			},
			Levels = {
				[21001] = {Pos = 1,Name = _T("困难10章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {20910},FirstExp = 1700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 8100}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 67,Bs = 757353,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难10章1关
				[21002] = {Pos = 3,Name = _T("困难10章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21001},FirstExp = 1700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 8100}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 67,Bs = 758393,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难10章2关
				[21003] = {Pos = 4,Name = _T("困难10章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21002},FirstExp = 1700,EveryExp = 0,LvBoxId = 22101,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 8100}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 67,Bs = 906226,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难10章3关
				[21004] = {Pos = 6,Name = _T("困难10章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21003},FirstExp = 1700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 8100}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 67,Bs = 810570,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难10章4关
				[21005] = {Pos = 8,Name = _T("困难10章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21004},FirstExp = 1700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 8100}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 67,Bs = 811101,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难10章5关
				[21006] = {Pos = 9,Name = _T("困难10章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21005},FirstExp = 1700,EveryExp = 0,LvBoxId = 22102,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 8100}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 67,Bs = 982428,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难10章6关
				[21007] = {Pos = 10,Name = _T("困难10章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21006},FirstExp = 1700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 8100}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 67,Bs = 890429,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难10章7关
				[21008] = {Pos = 11,Name = _T("困难10章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21007},FirstExp = 1700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 8100}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 67,Bs = 891461,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难10章8关
				[21009] = {Pos = 13,Name = _T("困难10章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21008},FirstExp = 1700,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 8100}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 67,Bs = 1022184,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难10章9关
				[21010] = {Pos = 14,Name = _T("困难10章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {21009},FirstExp = 1700,EveryExp = 0,LvBoxId = 22103,FDAward = {[1] = {Id = 1401002,Val = 3900},[2] = {Id = 1401003,Val = 8100}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 67,Bs = 1024407,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--困难10章10关
			}
		},--困难10章
		[211] = {
			Name = _T("困难11章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12111,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2003422,Val = 1},[3] = {Id = 1401002,Val = 10800}}},--钻石100乌金12金币10800
				[20] = {Id = 12112,Award = {[1] = {Id = 1401015,Val = 1500},[2] = {Id = 2003423,Val = 1},[3] = {Id = 1401002,Val = 21600}}},--熔炼精华1500乌金23金币21600
				[30] = {Id = 12113,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2003424,Val = 1},[3] = {Id = 1401002,Val = 32400}}}--守护灵抽卡券5乌金35金币32400
			},
			ExtBox = {
				[22111] = {LevelIdRequired = 21103,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603006,Val = 6},[3] = {Id = 1401003,Val = 22500}}},--钻石20守护灵初级抽卡券2守护灵经验9000
				[22112] = {LevelIdRequired = 21106,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603006,Val = 12},[3] = {Id = 1401003,Val = 45000}}},--钻石30守护灵初级抽卡券3守护灵经验12000
				[22113] = {LevelIdRequired = 21110,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603006,Val = 18},[3] = {Id = 1401003,Val = 67500}}}--钻石50守护灵初级抽卡券5守护灵经验15000
			},
			Levels = {
				[21101] = {Pos = 1,Name = _T("困难11章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21010},FirstExp = 2450,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 72,Bs = 1009106,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难11章1关
				[21102] = {Pos = 3,Name = _T("困难11章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21101},FirstExp = 2450,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 72,Bs = 1010822,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难11章2关
				[21103] = {Pos = 5,Name = _T("困难11章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21102},FirstExp = 2450,EveryExp = 0,LvBoxId = 22111,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 72,Bs = 1106811,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难11章3关
				[21104] = {Pos = 7,Name = _T("困难11章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21103},FirstExp = 2450,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 72,Bs = 1029021,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难11章4关
				[21105] = {Pos = 8,Name = _T("困难11章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21104},FirstExp = 2450,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 72,Bs = 1029868,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难11章5关
				[21106] = {Pos = 9,Name = _T("困难11章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21105},FirstExp = 2450,EveryExp = 0,LvBoxId = 22112,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 72,Bs = 1184794,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难11章6关
				[21107] = {Pos = 11,Name = _T("困难11章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21106},FirstExp = 2450,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 72,Bs = 1101386,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难11章7关
				[21108] = {Pos = 12,Name = _T("困难11章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21107},FirstExp = 2450,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 72,Bs = 1103091,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难11章8关
				[21109] = {Pos = 13,Name = _T("困难11章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21108},FirstExp = 2450,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 72,Bs = 1223401,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难11章9关
				[21110] = {Pos = 14,Name = _T("困难11章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {21109},FirstExp = 2450,EveryExp = 0,LvBoxId = 22113,FDAward = {[1] = {Id = 1401002,Val = 4200},[2] = {Id = 1401003,Val = 9000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 72,Bs = 1225749,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--困难11章10关
			}
		},--困难11章
		[212] = {
			Name = _T("困难12章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12121,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2003425,Val = 1},[3] = {Id = 1401002,Val = 11700}}},--钻石100乌金14金币11700
				[20] = {Id = 12122,Award = {[1] = {Id = 1401015,Val = 1600},[2] = {Id = 2003426,Val = 1},[3] = {Id = 1401002,Val = 23400}}},--熔炼精华1600乌金29金币23400
				[30] = {Id = 12123,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2003421,Val = 1},[3] = {Id = 1401002,Val = 35100}}}--守护灵抽卡券5乌金43金币35100
			},
			ExtBox = {
				[22121] = {LevelIdRequired = 21203,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603006,Val = 7},[3] = {Id = 1401003,Val = 24300}}},--钻石20守护灵初级抽卡券2守护灵经验9900
				[22122] = {LevelIdRequired = 21206,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603006,Val = 14},[3] = {Id = 1401003,Val = 48600}}},--钻石30守护灵初级抽卡券3守护灵经验13200
				[22123] = {LevelIdRequired = 21210,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603006,Val = 22},[3] = {Id = 1401003,Val = 72900}}}--钻石50守护灵初级抽卡券5守护灵经验16500
			},
			Levels = {
				[21201] = {Pos = 1,Name = _T("困难12章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21110},FirstExp = 3100,EveryExp = 0,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 9900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 77,Bs = 1147517,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--困难12章1关
				[21202] = {Pos = 3,Name = _T("困难12章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21201},FirstExp = 3100,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 9900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 77,Bs = 1149213,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难12章2关
				[21203] = {Pos = 4,Name = _T("困难12章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21202},FirstExp = 3100,LvBoxId = 22121,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 9900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 77,Bs = 1283375,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难12章3关
				[21204] = {Pos = 6,Name = _T("困难12章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21203},FirstExp = 3100,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 9900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 77,Bs = 1201141,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难12章4关
				[21205] = {Pos = 8,Name = _T("困难12章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21204},FirstExp = 3100,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 9900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 77,Bs = 1211998,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难12章5关
				[21206] = {Pos = 9,Name = _T("困难12章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21205},FirstExp = 3100,LvBoxId = 22122,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 9900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 77,Bs = 1370426,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难12章6关
				[21207] = {Pos = 10,Name = _T("困难12章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21206},FirstExp = 3100,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 9900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 77,Bs = 1278818,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难12章7关
				[21208] = {Pos = 11,Name = _T("困难12章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21207},FirstExp = 3100,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 9900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 77,Bs = 1280523,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难12章8关
				[21209] = {Pos = 13,Name = _T("困难12章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21208},FirstExp = 3100,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 9900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 77,Bs = 1397010,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难12章9关
				[21210] = {Pos = 14,Name = _T("困难12章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {21209},FirstExp = 3100,LvBoxId = 22123,FDAward = {[1] = {Id = 1401002,Val = 4500},[2] = {Id = 1401003,Val = 9900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 77,Bs = 1421925,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难12章10关
			}
		},--困难12章
		[213] = {
			Name = _T("困难13章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12131,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2104422,Val = 1},[3] = {Id = 1401002,Val = 12600}}},--钻石100乌金18金币12600
				[20] = {Id = 12132,Award = {[1] = {Id = 1401015,Val = 1800},[2] = {Id = 2104423,Val = 1},[3] = {Id = 1401002,Val = 25200}}},--熔炼精华1800乌金36金币25200
				[30] = {Id = 12133,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2104425,Val = 1},[3] = {Id = 1401002,Val = 37800}}}--守护灵抽卡券5乌金54金币37800
			},
			ExtBox = {
				[22131] = {LevelIdRequired = 21303,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603006,Val = 9},[3] = {Id = 1401003,Val = 27000}}},--钻石20守护灵初级抽卡券2守护灵经验11250
				[22132] = {LevelIdRequired = 21306,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603006,Val = 18},[3] = {Id = 1401003,Val = 54000}}},--钻石30守护灵初级抽卡券3守护灵经验15000
				[22133] = {LevelIdRequired = 21310,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603006,Val = 27},[3] = {Id = 1401003,Val = 81000}}}--钻石50守护灵初级抽卡券5守护灵经验18750
			},
			Levels = {
				[21301] = {Pos = 1,Name = _T("困难13章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21210},FirstExp = 4050,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 82,Bs = 1326500,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难13章1关
				[21302] = {Pos = 3,Name = _T("困难13章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21301},FirstExp = 4050,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 82,Bs = 1328216,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难13章2关
				[21303] = {Pos = 5,Name = _T("困难13章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21302},FirstExp = 4050,LvBoxId = 22131,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 82,Bs = 1576087,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难13章3关
				[21304] = {Pos = 7,Name = _T("困难13章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21303},FirstExp = 4050,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 82,Bs = 1450905,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难13章4关
				[21305] = {Pos = 8,Name = _T("困难13章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21304},FirstExp = 4050,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 82,Bs = 1456752,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难13章5关
				[21306] = {Pos = 9,Name = _T("困难13章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21305},FirstExp = 4050,LvBoxId = 22132,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 82,Bs = 1711915,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难13章6关
				[21307] = {Pos = 11,Name = _T("困难13章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21306},FirstExp = 4050,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 82,Bs = 1584294,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难13章7关
				[21308] = {Pos = 12,Name = _T("困难13章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21307},FirstExp = 4050,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 82,Bs = 1586049,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难13章8关
				[21309] = {Pos = 13,Name = _T("困难13章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21308},FirstExp = 4050,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 82,Bs = 1724808,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难13章9关
				[21310] = {Pos = 14,Name = _T("困难13章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {21309},FirstExp = 4050,LvBoxId = 22133,FDAward = {[1] = {Id = 1401002,Val = 4800},[2] = {Id = 1401003,Val = 11250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 82,Bs = 1753669,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难13章10关
			}
		},--困难13章
		[214] = {
			Name = _T("困难14章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12141,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2104427,Val = 1},[3] = {Id = 1401002,Val = 13500}}},--钻石100银母4金币13500
				[20] = {Id = 12142,Award = {[1] = {Id = 1401015,Val = 2000},[2] = {Id = 2104428,Val = 1},[3] = {Id = 1401002,Val = 27000}}},--熔炼精华2000银母7金币27000
				[30] = {Id = 12143,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2104421,Val = 1},[3] = {Id = 1401002,Val = 40500}}}--守护灵抽卡券5银母11金币40500
			},
			ExtBox = {
				[22141] = {LevelIdRequired = 21403,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603007,Val = 1},[3] = {Id = 1401003,Val = 28800}}},--钻石20守护灵初级抽卡券2守护灵经验12150
				[22142] = {LevelIdRequired = 21406,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603007,Val = 2},[3] = {Id = 1401003,Val = 57600}}},--钻石30守护灵初级抽卡券3守护灵经验16200
				[22143] = {LevelIdRequired = 21410,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603007,Val = 3},[3] = {Id = 1401003,Val = 86400}}}--钻石50守护灵初级抽卡券5守护灵经验20250
			},
			Levels = {
				[21401] = {Pos = 1,Name = _T("困难14章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21310},FirstExp = 5050,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 12150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 87,Bs = 1639225,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难14章1关
				[21402] = {Pos = 3,Name = _T("困难14章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21401},FirstExp = 5050,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 12150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 87,Bs = 1640979,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难14章2关
				[21403] = {Pos = 4,Name = _T("困难14章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21402},FirstExp = 5050,LvBoxId = 22141,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 12150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 87,Bs = 1828585,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难14章3关
				[21404] = {Pos = 6,Name = _T("困难14章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21403},FirstExp = 5050,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 12150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 87,Bs = 1672166,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难14章4关
				[21405] = {Pos = 8,Name = _T("困难14章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21404},FirstExp = 5050,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 12150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 87,Bs = 1673034,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难14章5关
				[21406] = {Pos = 9,Name = _T("困难14章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21405},FirstExp = 5050,LvBoxId = 22142,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 12150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 87,Bs = 2018721,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难14章6关
				[21407] = {Pos = 10,Name = _T("困难14章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21406},FirstExp = 5050,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 12150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 87,Bs = 1871111,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难14章7关
				[21408] = {Pos = 11,Name = _T("困难14章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21407},FirstExp = 5050,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 12150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 87,Bs = 1872845,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难14章8关
				[21409] = {Pos = 13,Name = _T("困难14章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21408},FirstExp = 5050,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 12150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 87,Bs = 2021895,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难14章9关
				[21410] = {Pos = 14,Name = _T("困难14章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {21409},FirstExp = 5050,LvBoxId = 22143,FDAward = {[1] = {Id = 1401002,Val = 5400},[2] = {Id = 1401003,Val = 12150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 87,Bs = 2053013,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难14章10关
			}
		},--困难14章
		[215] = {
			Name = _T("困难15章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12151,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2004422,Val = 1},[3] = {Id = 1401002,Val = 14400}}},--钻石100银母6金币14400
				[20] = {Id = 12152,Award = {[1] = {Id = 1401015,Val = 2400},[2] = {Id = 2004423,Val = 1},[3] = {Id = 1401002,Val = 28800}}},--熔炼精华2400银母13金币28800
				[30] = {Id = 12153,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2004425,Val = 1},[3] = {Id = 1401002,Val = 43200}}}--守护灵抽卡券5银母19金币43200
			},
			ExtBox = {
				[22151] = {LevelIdRequired = 21503,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603007,Val = 2},[3] = {Id = 1401003,Val = 31500}}},--钻石20守护灵初级抽卡券2守护灵经验13500
				[22152] = {LevelIdRequired = 21506,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603007,Val = 3},[3] = {Id = 1401003,Val = 63000}}},--钻石30守护灵初级抽卡券3守护灵经验18000
				[22153] = {LevelIdRequired = 21510,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603007,Val = 5},[3] = {Id = 1401003,Val = 94500}}}--钻石50守护灵初级抽卡券5守护灵经验22500
			},
			Levels = {
				[21501] = {Pos = 1,Name = _T("困难15章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21410},FirstExp = 5900,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 92,Bs = 1992945,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难15章1关
				[21502] = {Pos = 3,Name = _T("困难15章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21501},FirstExp = 5900,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 92,Bs = 1994705,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难15章2关
				[21503] = {Pos = 5,Name = _T("困难15章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21502},FirstExp = 5900,LvBoxId = 22151,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 92,Bs = 2349240,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难15章3关
				[21504] = {Pos = 7,Name = _T("困难15章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21503},FirstExp = 5900,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 92,Bs = 2174824,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难15章4关
				[21505] = {Pos = 8,Name = _T("困难15章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21504},FirstExp = 5900,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 92,Bs = 2188153,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难15章5关
				[21506] = {Pos = 9,Name = _T("困难15章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21505},FirstExp = 5900,LvBoxId = 22152,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 92,Bs = 2578764,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难15章6关
				[21507] = {Pos = 11,Name = _T("困难15章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21506},FirstExp = 5900,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 92,Bs = 2414338,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难15章7关
				[21508] = {Pos = 12,Name = _T("困难15章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21507},FirstExp = 5900,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 92,Bs = 2415967,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难15章8关
				[21509] = {Pos = 13,Name = _T("困难15章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21508},FirstExp = 5900,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 92,Bs = 2611602,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难15章9关
				[21510] = {Pos = 14,Name = _T("困难15章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {21509},FirstExp = 5900,LvBoxId = 22153,FDAward = {[1] = {Id = 1401002,Val = 6000},[2] = {Id = 1401003,Val = 13500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 92,Bs = 2645568,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难15章10关
			}
		},--困难15章
		[216] = {
			Name = _T("困难16章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12161,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2004427,Val = 1},[3] = {Id = 1401002,Val = 16200}}},--钻石100银母9金币16200
				[20] = {Id = 12162,Award = {[1] = {Id = 1401015,Val = 2750},[2] = {Id = 2004428,Val = 1},[3] = {Id = 1401002,Val = 32400}}},--熔炼精华2750银母18金币32400
				[30] = {Id = 12163,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2004421,Val = 1},[3] = {Id = 1401002,Val = 48600}}}--守护灵抽卡券5银母27金币48600
			},
			ExtBox = {
				[22161] = {LevelIdRequired = 21603,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603007,Val = 3},[3] = {Id = 1401003,Val = 33300}}},--钻石20守护灵初级抽卡券2守护灵经验14400
				[22162] = {LevelIdRequired = 21606,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603007,Val = 6},[3] = {Id = 1401003,Val = 66600}}},--钻石30守护灵初级抽卡券3守护灵经验19200
				[22163] = {LevelIdRequired = 21610,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603007,Val = 8},[3] = {Id = 1401003,Val = 99900}}}--钻石50守护灵初级抽卡券5守护灵经验24000
			},
			Levels = {
				[21601] = {Pos = 1,Name = _T("困难16章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21510},FirstExp = 6650,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 14400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 97,Bs = 2566345,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难16章1关
				[21602] = {Pos = 3,Name = _T("困难16章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21601},FirstExp = 6650,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 14400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 97,Bs = 2568475,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难16章2关
				[21603] = {Pos = 4,Name = _T("困难16章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21602},FirstExp = 6650,LvBoxId = 22161,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 14400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 97,Bs = 2834200,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难16章3关
				[21604] = {Pos = 6,Name = _T("困难16章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21603},FirstExp = 6650,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 14400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 97,Bs = 2638386,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难16章4关
				[21605] = {Pos = 8,Name = _T("困难16章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21604},FirstExp = 6650,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 14400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 97,Bs = 2639451,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难16章5关
				[21606] = {Pos = 9,Name = _T("困难16章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21605},FirstExp = 6650,LvBoxId = 22162,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 14400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 97,Bs = 2941481,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难16章6关
				[21607] = {Pos = 10,Name = _T("困难16章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21606},FirstExp = 6650,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 14400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 97,Bs = 2825851,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难16章7关
				[21608] = {Pos = 11,Name = _T("困难16章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21607},FirstExp = 6650,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 14400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 97,Bs = 2827981,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难16章8关
				[21609] = {Pos = 13,Name = _T("困难16章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21608},FirstExp = 6650,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 14400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 97,Bs = 2961840,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难16章9关
				[21610] = {Pos = 14,Name = _T("困难16章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {21609},FirstExp = 6650,LvBoxId = 22163,FDAward = {[1] = {Id = 1401002,Val = 6600},[2] = {Id = 1401003,Val = 14400}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 97,Bs = 2999317,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难16章10关
			}
		},--困难16章
		[217] = {
			Name = _T("困难17章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12171,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2105422,Val = 1},[3] = {Id = 1401002,Val = 18000}}},--钻石100银母12金币18000
				[20] = {Id = 12172,Award = {[1] = {Id = 1401015,Val = 3000},[2] = {Id = 2105423,Val = 1},[3] = {Id = 1401002,Val = 36000}}},--熔炼精华3000银母23金币36000
				[30] = {Id = 12173,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2105424,Val = 1},[3] = {Id = 1401002,Val = 54000}}}--守护灵抽卡券5银母35金币54000
			},
			ExtBox = {
				[22171] = {LevelIdRequired = 21703,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603007,Val = 4},[3] = {Id = 1401003,Val = 36000}}},--钻石20守护灵初级抽卡券2守护灵经验15750
				[22172] = {LevelIdRequired = 21706,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603007,Val = 7},[3] = {Id = 1401003,Val = 72000}}},--钻石30守护灵初级抽卡券3守护灵经验21000
				[22173] = {LevelIdRequired = 21710,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603007,Val = 11},[3] = {Id = 1401003,Val = 108000}}}--钻石50守护灵初级抽卡券5守护灵经验26250
			},
			Levels = {
				[21701] = {Pos = 1,Name = _T("困难17章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21610},FirstExp = 7500,FDAward = {[1] = {Id = 1401002,Val = 7200},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 102,Bs = 3016410,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难17章1关
				[21702] = {Pos = 3,Name = _T("困难17章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21701},FirstExp = 7500,FDAward = {[1] = {Id = 1401002,Val = 7200},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 102,Bs = 3019430,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难17章2关
				[21703] = {Pos = 5,Name = _T("困难17章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21702},FirstExp = 7500,LvBoxId = 22171,FDAward = {[1] = {Id = 1401002,Val = 7200},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 102,Bs = 3233616,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难17章3关
				[21704] = {Pos = 7,Name = _T("困难17章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21703},FirstExp = 7500,FDAward = {[1] = {Id = 1401002,Val = 7200},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 102,Bs = 3147865,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难17章4关
				[21705] = {Pos = 8,Name = _T("困难17章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21704},FirstExp = 7500,FDAward = {[1] = {Id = 1401002,Val = 7200},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 102,Bs = 3149455,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难17章5关
				[21706] = {Pos = 9,Name = _T("困难17章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21705},FirstExp = 7500,LvBoxId = 22172,FDAward = {[1] = {Id = 1401002,Val = 7200},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 102,Bs = 3450456,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难17章6关
				[21707] = {Pos = 11,Name = _T("困难17章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21706},FirstExp = 7500,FDAward = {[1] = {Id = 1401002,Val = 7200},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 102,Bs = 3383833,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难17章7关
				[21708] = {Pos = 12,Name = _T("困难17章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21707},FirstExp = 7500,FDAward = {[1] = {Id = 1401002,Val = 7200},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 102,Bs = 3387013,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难17章8关
				[21709] = {Pos = 13,Name = _T("困难17章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21708},FirstExp = 7500,FDAward = {[1] = {Id = 1401002,Val = 7200},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 102,Bs = 3469560,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难17章9关
				[21710] = {Pos = 14,Name = _T("困难17章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {21709},FirstExp = 7500,LvBoxId = 22173,FDAward = {[1] = {Id = 1401002,Val = 7200},[2] = {Id = 1401003,Val = 15750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 102,Bs = 3513947,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难17章10关
			}
		},--困难17章
		[218] = {
			Name = _T("困难18章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12181,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2005422,Val = 1},[3] = {Id = 1401002,Val = 19800}}},--钻石100银母14金币19800
				[20] = {Id = 12182,Award = {[1] = {Id = 1401015,Val = 3300},[2] = {Id = 2005423,Val = 1},[3] = {Id = 1401002,Val = 39600}}},--熔炼精华3300银母29金币39600
				[30] = {Id = 12183,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2005424,Val = 1},[3] = {Id = 1401002,Val = 59400}}}--守护灵抽卡券5银母43金币59400
			},
			ExtBox = {
				[22181] = {LevelIdRequired = 21803,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603007,Val = 5},[3] = {Id = 1401003,Val = 37800}}},--钻石20守护灵初级抽卡券2守护灵经验16650
				[22182] = {LevelIdRequired = 21806,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603007,Val = 9},[3] = {Id = 1401003,Val = 75600}}},--钻石30守护灵初级抽卡券3守护灵经验22200
				[22183] = {LevelIdRequired = 21810,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603007,Val = 14},[3] = {Id = 1401003,Val = 113400}}}--钻石50守护灵初级抽卡券5守护灵经验27750
			},
			Levels = {
				[21801] = {Pos = 1,Name = _T("困难18章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21710},FirstExp = 8200,FDAward = {[1] = {Id = 1401002,Val = 7800},[2] = {Id = 1401003,Val = 16650}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 107,Bs = 3601374,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难18章1关
				[21802] = {Pos = 3,Name = _T("困难18章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21801},FirstExp = 8200,FDAward = {[1] = {Id = 1401002,Val = 7800},[2] = {Id = 1401003,Val = 16650}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 107,Bs = 3604554,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难18章2关
				[21803] = {Pos = 4,Name = _T("困难18章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21802},FirstExp = 8200,LvBoxId = 22181,FDAward = {[1] = {Id = 1401002,Val = 7800},[2] = {Id = 1401003,Val = 16650}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 107,Bs = 3854612,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难18章3关
				[21804] = {Pos = 6,Name = _T("困难18章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21803},FirstExp = 8200,FDAward = {[1] = {Id = 1401002,Val = 7800},[2] = {Id = 1401003,Val = 16650}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 107,Bs = 3755937,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难18章4关
				[21805] = {Pos = 8,Name = _T("困难18章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21804},FirstExp = 8200,FDAward = {[1] = {Id = 1401002,Val = 7800},[2] = {Id = 1401003,Val = 16650}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 107,Bs = 3757537,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难18章5关
				[21806] = {Pos = 9,Name = _T("困难18章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21805},FirstExp = 8200,LvBoxId = 22182,FDAward = {[1] = {Id = 1401002,Val = 7800},[2] = {Id = 1401003,Val = 16650}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 107,Bs = 4112411,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难18章6关
				[21807] = {Pos = 10,Name = _T("困难18章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21806},FirstExp = 8200,FDAward = {[1] = {Id = 1401002,Val = 7800},[2] = {Id = 1401003,Val = 16650}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 107,Bs = 3999859,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难18章7关
				[21808] = {Pos = 11,Name = _T("困难18章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21807},FirstExp = 8200,FDAward = {[1] = {Id = 1401002,Val = 7800},[2] = {Id = 1401003,Val = 16650}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 107,Bs = 4003049,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难18章8关
				[21809] = {Pos = 13,Name = _T("困难18章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21808},FirstExp = 8200,FDAward = {[1] = {Id = 1401002,Val = 7800},[2] = {Id = 1401003,Val = 16650}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 107,Bs = 4124163,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难18章9关
				[21810] = {Pos = 14,Name = _T("困难18章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {21809},FirstExp = 8200,LvBoxId = 22183,FDAward = {[1] = {Id = 1401002,Val = 7800},[2] = {Id = 1401003,Val = 16650}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 107,Bs = 4157204,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难18章10关
			}
		},--困难18章
		[219] = {
			Name = _T("困难19章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12191,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2106412,Val = 1},[3] = {Id = 1401002,Val = 21600}}},--钻石100银母18金币21600
				[20] = {Id = 12192,Award = {[1] = {Id = 1401015,Val = 3600},[2] = {Id = 2106413,Val = 1},[3] = {Id = 1401002,Val = 43200}}},--熔炼精华3600银母36金币43200
				[30] = {Id = 12193,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2106415,Val = 1},[3] = {Id = 1401002,Val = 64800}}}--守护灵抽卡券5银母54金币64800
			},
			ExtBox = {
				[22191] = {LevelIdRequired = 21903,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603007,Val = 6},[3] = {Id = 1401003,Val = 40500}}},--钻石20守护灵初级抽卡券2守护灵经验18000
				[22192] = {LevelIdRequired = 21906,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603007,Val = 11},[3] = {Id = 1401003,Val = 81000}}},--钻石30守护灵初级抽卡券3守护灵经验24000
				[22193] = {LevelIdRequired = 21910,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603007,Val = 17},[3] = {Id = 1401003,Val = 121500}}}--钻石50守护灵初级抽卡券5守护灵经验30000
			},
			Levels = {
				[21901] = {Pos = 1,Name = _T("困难19章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21810},FirstExp = 9250,FDAward = {[1] = {Id = 1401002,Val = 8400},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 112,Bs = 4305316,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难19章1关
				[21902] = {Pos = 3,Name = _T("困难19章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21901},FirstExp = 9250,FDAward = {[1] = {Id = 1401002,Val = 8400},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 112,Bs = 4308536,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难19章2关
				[21903] = {Pos = 5,Name = _T("困难19章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21902},FirstExp = 9250,LvBoxId = 22191,FDAward = {[1] = {Id = 1401002,Val = 8400},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 112,Bs = 4791029,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难19章3关
				[21904] = {Pos = 7,Name = _T("困难19章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21903},FirstExp = 9250,FDAward = {[1] = {Id = 1401002,Val = 8400},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 112,Bs = 4514928,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难19章4关
				[21905] = {Pos = 8,Name = _T("困难19章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21904},FirstExp = 9250,FDAward = {[1] = {Id = 1401002,Val = 8400},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 112,Bs = 4516528,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难19章5关
				[21906] = {Pos = 9,Name = _T("困难19章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21905},FirstExp = 9250,LvBoxId = 22192,FDAward = {[1] = {Id = 1401002,Val = 8400},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 112,Bs = 5016424,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难19章6关
				[21907] = {Pos = 11,Name = _T("困难19章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21906},FirstExp = 9250,FDAward = {[1] = {Id = 1401002,Val = 8400},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 112,Bs = 4805850,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难19章7关
				[21908] = {Pos = 12,Name = _T("困难19章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21907},FirstExp = 9250,FDAward = {[1] = {Id = 1401002,Val = 8400},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 112,Bs = 4809070,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难19章8关
				[21909] = {Pos = 13,Name = _T("困难19章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21908},FirstExp = 9250,FDAward = {[1] = {Id = 1401002,Val = 8400},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 112,Bs = 4950912,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难19章9关
				[21910] = {Pos = 14,Name = _T("困难19章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {21909},FirstExp = 9250,LvBoxId = 22193,FDAward = {[1] = {Id = 1401002,Val = 8400},[2] = {Id = 1401003,Val = 18000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 112,Bs = 4985389,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难19章10关
			}
		},--困难19章
		[220] = {
			Name = _T("困难20章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12201,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2006412,Val = 1},[3] = {Id = 1401002,Val = 23400}}},--钻石100铀金4金币23400
				[20] = {Id = 12202,Award = {[1] = {Id = 1401015,Val = 4200},[2] = {Id = 2006413,Val = 1},[3] = {Id = 1401002,Val = 46800}}},--熔炼精华4200铀金7金币46800
				[30] = {Id = 12203,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2006415,Val = 1},[3] = {Id = 1401002,Val = 70200}}}--守护灵抽卡券5铀金11金币70200
			},
			ExtBox = {
				[22201] = {LevelIdRequired = 22003,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603008,Val = 1},[3] = {Id = 1401003,Val = 42300}}},--钻石20守护灵初级抽卡券2守护灵经验18900
				[22202] = {LevelIdRequired = 22006,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603008,Val = 1},[3] = {Id = 1401003,Val = 84600}}},--钻石30守护灵初级抽卡券3守护灵经验25200
				[22203] = {LevelIdRequired = 22010,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603008,Val = 2},[3] = {Id = 1401003,Val = 126900}}}--钻石50守护灵初级抽卡券5守护灵经验31500
			},
			Levels = {
				[22001] = {Pos = 1,Name = _T("困难20章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {21910},FirstExp = 10150,FDAward = {[1] = {Id = 1401002,Val = 9000},[2] = {Id = 1401003,Val = 18900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 117,Bs = 5050195,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难20章1关
				[22002] = {Pos = 3,Name = _T("困难20章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22001},FirstExp = 10150,FDAward = {[1] = {Id = 1401002,Val = 9000},[2] = {Id = 1401003,Val = 18900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 117,Bs = 5054191,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难20章2关
				[22003] = {Pos = 4,Name = _T("困难20章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22002},FirstExp = 10150,LvBoxId = 22201,FDAward = {[1] = {Id = 1401002,Val = 9000},[2] = {Id = 1401003,Val = 18900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 117,Bs = 5440036,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难20章3关
				[22004] = {Pos = 6,Name = _T("困难20章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22003},FirstExp = 10150,FDAward = {[1] = {Id = 1401002,Val = 9000},[2] = {Id = 1401003,Val = 18900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 117,Bs = 5122009,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难20章4关
				[22005] = {Pos = 8,Name = _T("困难20章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22004},FirstExp = 10150,FDAward = {[1] = {Id = 1401002,Val = 9000},[2] = {Id = 1401003,Val = 18900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 117,Bs = 5124026,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难20章5关
				[22006] = {Pos = 9,Name = _T("困难20章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22005},FirstExp = 10150,LvBoxId = 22202,FDAward = {[1] = {Id = 1401002,Val = 9000},[2] = {Id = 1401003,Val = 18900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 117,Bs = 5525011,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难20章6关
				[22007] = {Pos = 10,Name = _T("困难20章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22006},FirstExp = 10150,FDAward = {[1] = {Id = 1401002,Val = 9000},[2] = {Id = 1401003,Val = 18900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 117,Bs = 5299484,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难20章7关
				[22008] = {Pos = 11,Name = _T("困难20章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22007},FirstExp = 10150,FDAward = {[1] = {Id = 1401002,Val = 9000},[2] = {Id = 1401003,Val = 18900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 117,Bs = 5303509,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难20章8关
				[22009] = {Pos = 13,Name = _T("困难20章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22008},FirstExp = 10150,FDAward = {[1] = {Id = 1401002,Val = 9000},[2] = {Id = 1401003,Val = 18900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 117,Bs = 5429298,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难20章9关
				[22010] = {Pos = 14,Name = _T("困难20章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {22009},FirstExp = 10150,LvBoxId = 22203,FDAward = {[1] = {Id = 1401002,Val = 9000},[2] = {Id = 1401003,Val = 18900}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 117,Bs = 5506606,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难20章10关
			}
		},--困难20章
		[221] = {
			Name = _T("困难21章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12211,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2107422,Val = 1},[3] = {Id = 1401002,Val = 25200}}},--钻石100铀金6金币25200
				[20] = {Id = 12212,Award = {[1] = {Id = 1401015,Val = 4800},[2] = {Id = 2107423,Val = 1},[3] = {Id = 1401002,Val = 50400}}},--熔炼精华4800铀金13金币50400
				[30] = {Id = 12213,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2107424,Val = 1},[3] = {Id = 1401002,Val = 75600}}}--守护灵抽卡券5铀金19金币75600
			},
			ExtBox = {
				[22211] = {LevelIdRequired = 22103,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603008,Val = 1},[3] = {Id = 1401003,Val = 45000}}},--钻石20守护灵初级抽卡券2守护灵经验20250
				[22212] = {LevelIdRequired = 22106,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603008,Val = 2},[3] = {Id = 1401003,Val = 90000}}},--钻石30守护灵初级抽卡券3守护灵经验27000
				[22213] = {LevelIdRequired = 22110,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603008,Val = 3},[3] = {Id = 1401003,Val = 135000}}}--钻石50守护灵初级抽卡券5守护灵经验33750
			},
			Levels = {
				[22101] = {Pos = 1,Name = _T("困难21章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22010},FirstExp = 12000,FDAward = {[1] = {Id = 1401002,Val = 9600},[2] = {Id = 1401003,Val = 20250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 122,Bs = 5619185,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难21章1关
				[22102] = {Pos = 3,Name = _T("困难21章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22101},FirstExp = 12000,FDAward = {[1] = {Id = 1401002,Val = 9600},[2] = {Id = 1401003,Val = 20250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 122,Bs = 5623219,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难21章2关
				[22103] = {Pos = 5,Name = _T("困难21章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22102},FirstExp = 12000,LvBoxId = 22211,FDAward = {[1] = {Id = 1401002,Val = 9600},[2] = {Id = 1401003,Val = 20250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 122,Bs = 6324184,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难21章3关
				[22104] = {Pos = 7,Name = _T("困难21章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22103},FirstExp = 12000,FDAward = {[1] = {Id = 1401002,Val = 9600},[2] = {Id = 1401003,Val = 20250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 122,Bs = 6001248,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难21章4关
				[22105] = {Pos = 8,Name = _T("困难21章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22104},FirstExp = 12000,FDAward = {[1] = {Id = 1401002,Val = 9600},[2] = {Id = 1401003,Val = 20250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 122,Bs = 6003156,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难21章5关
				[22106] = {Pos = 9,Name = _T("困难21章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22105},FirstExp = 12000,LvBoxId = 22212,FDAward = {[1] = {Id = 1401002,Val = 9600},[2] = {Id = 1401003,Val = 20250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 122,Bs = 6455195,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难21章6关
				[22107] = {Pos = 11,Name = _T("困难21章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22106},FirstExp = 12000,FDAward = {[1] = {Id = 1401002,Val = 9600},[2] = {Id = 1401003,Val = 20250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 122,Bs = 6225824,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难21章7关
				[22108] = {Pos = 12,Name = _T("困难21章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22107},FirstExp = 12000,FDAward = {[1] = {Id = 1401002,Val = 9600},[2] = {Id = 1401003,Val = 20250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 122,Bs = 6229659,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难21章8关
				[22109] = {Pos = 13,Name = _T("困难21章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22108},FirstExp = 12000,FDAward = {[1] = {Id = 1401002,Val = 9600},[2] = {Id = 1401003,Val = 20250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 122,Bs = 6375714,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难21章9关
				[22110] = {Pos = 14,Name = _T("困难21章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {22109},FirstExp = 12000,LvBoxId = 22213,FDAward = {[1] = {Id = 1401002,Val = 9600},[2] = {Id = 1401003,Val = 20250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 122,Bs = 6458413,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难21章10关
			}
		},--困难21章
		[222] = {
			Name = _T("困难22章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12221,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2007422,Val = 1},[3] = {Id = 1401002,Val = 27000}}},--钻石100铀金9金币27000
				[20] = {Id = 12222,Award = {[1] = {Id = 1401015,Val = 5400},[2] = {Id = 2007423,Val = 1},[3] = {Id = 1401002,Val = 54000}}},--熔炼精华5400铀金18金币54000
				[30] = {Id = 12223,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2007424,Val = 1},[3] = {Id = 1401002,Val = 81000}}}--守护灵抽卡券5铀金27金币81000
			},
			ExtBox = {
				[22221] = {LevelIdRequired = 22203,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603008,Val = 1},[3] = {Id = 1401003,Val = 49500}}},--钻石20守护灵初级抽卡券2守护灵经验21150
				[22222] = {LevelIdRequired = 22206,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603008,Val = 3},[3] = {Id = 1401003,Val = 99000}}},--钻石30守护灵初级抽卡券3守护灵经验28200
				[22223] = {LevelIdRequired = 22210,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603008,Val = 4},[3] = {Id = 1401003,Val = 148500}}}--钻石50守护灵初级抽卡券5守护灵经验35250
			},
			Levels = {
				[22201] = {Pos = 1,Name = _T("困难22章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22110},FirstExp = 14850,FDAward = {[1] = {Id = 1401002,Val = 10200},[2] = {Id = 1401003,Val = 21150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 127,Bs = 6517837,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难22章1关
				[22202] = {Pos = 3,Name = _T("困难22章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22201},FirstExp = 14850,FDAward = {[1] = {Id = 1401002,Val = 10200},[2] = {Id = 1401003,Val = 21150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 127,Bs = 6521693,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难22章2关
				[22203] = {Pos = 4,Name = _T("困难22章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22202},FirstExp = 14850,LvBoxId = 22221,FDAward = {[1] = {Id = 1401002,Val = 10200},[2] = {Id = 1401003,Val = 21150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 127,Bs = 6992611,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难22章3关
				[22204] = {Pos = 6,Name = _T("困难22章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22203},FirstExp = 14850,FDAward = {[1] = {Id = 1401002,Val = 10200},[2] = {Id = 1401003,Val = 21150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 127,Bs = 6650369,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难22章4关
				[22205] = {Pos = 8,Name = _T("困难22章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22204},FirstExp = 14850,FDAward = {[1] = {Id = 1401002,Val = 10200},[2] = {Id = 1401003,Val = 21150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 127,Bs = 6652306,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难22章5关
				[22206] = {Pos = 9,Name = _T("困难22章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22205},FirstExp = 14850,LvBoxId = 22222,FDAward = {[1] = {Id = 1401002,Val = 10200},[2] = {Id = 1401003,Val = 21150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 127,Bs = 7187216,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难22章6关
				[22207] = {Pos = 10,Name = _T("困难22章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22206},FirstExp = 14850,FDAward = {[1] = {Id = 1401002,Val = 10200},[2] = {Id = 1401003,Val = 21150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 127,Bs = 7111596,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难22章7关
				[22208] = {Pos = 11,Name = _T("困难22章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22207},FirstExp = 14850,FDAward = {[1] = {Id = 1401002,Val = 10200},[2] = {Id = 1401003,Val = 21150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 127,Bs = 7115441,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难22章8关
				[22209] = {Pos = 13,Name = _T("困难22章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22208},FirstExp = 14850,FDAward = {[1] = {Id = 1401002,Val = 10200},[2] = {Id = 1401003,Val = 21150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 127,Bs = 7130637,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难22章9关
				[22210] = {Pos = 14,Name = _T("困难22章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {22209},FirstExp = 14850,LvBoxId = 22223,FDAward = {[1] = {Id = 1401002,Val = 10200},[2] = {Id = 1401003,Val = 21150}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 127,Bs = 7221472,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难22章10关
			}
		},--困难22章
		[223] = {
			Name = _T("困难23章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12231,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2108412,Val = 1},[3] = {Id = 1401002,Val = 28800}}},--钻石100铀金12金币28800
				[20] = {Id = 12232,Award = {[1] = {Id = 1401015,Val = 6000},[2] = {Id = 2108413,Val = 1},[3] = {Id = 1401002,Val = 57600}}},--熔炼精华6000铀金23金币57600
				[30] = {Id = 12233,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2108415,Val = 1},[3] = {Id = 1401002,Val = 86400}}}--守护灵抽卡券5铀金35金币86400
			},
			ExtBox = {
				[22231] = {LevelIdRequired = 22303,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603008,Val = 2},[3] = {Id = 1401003,Val = 54000}}},--钻石20守护灵初级抽卡券2守护灵经验22500
				[22232] = {LevelIdRequired = 22306,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603008,Val = 4},[3] = {Id = 1401003,Val = 108000}}},--钻石30守护灵初级抽卡券3守护灵经验30000
				[22233] = {LevelIdRequired = 22310,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603008,Val = 5},[3] = {Id = 1401003,Val = 162000}}}--钻石50守护灵初级抽卡券5守护灵经验37500
			},
			Levels = {
				[22301] = {Pos = 1,Name = _T("困难23章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22210},FirstExp = 18900,FDAward = {[1] = {Id = 1401002,Val = 10800},[2] = {Id = 1401003,Val = 22500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 132,Bs = 7714932,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难23章1关
				[22302] = {Pos = 3,Name = _T("困难23章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22301},FirstExp = 18900,FDAward = {[1] = {Id = 1401002,Val = 10800},[2] = {Id = 1401003,Val = 22500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 132,Bs = 7720126,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难23章2关
				[22303] = {Pos = 5,Name = _T("困难23章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22302},FirstExp = 18900,LvBoxId = 22231,FDAward = {[1] = {Id = 1401002,Val = 10800},[2] = {Id = 1401003,Val = 22500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 132,Bs = 7973759,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难23章3关
				[22304] = {Pos = 7,Name = _T("困难23章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22303},FirstExp = 18900,FDAward = {[1] = {Id = 1401002,Val = 10800},[2] = {Id = 1401003,Val = 22500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 132,Bs = 7958034,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难23章4关
				[22305] = {Pos = 8,Name = _T("困难23章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22304},FirstExp = 18900,FDAward = {[1] = {Id = 1401002,Val = 10800},[2] = {Id = 1401003,Val = 22500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 132,Bs = 7960761,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难23章5关
				[22306] = {Pos = 9,Name = _T("困难23章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22305},FirstExp = 18900,LvBoxId = 22232,FDAward = {[1] = {Id = 1401002,Val = 10800},[2] = {Id = 1401003,Val = 22500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 132,Bs = 8316689,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难23章6关
				[22307] = {Pos = 11,Name = _T("困难23章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22306},FirstExp = 18900,FDAward = {[1] = {Id = 1401002,Val = 10800},[2] = {Id = 1401003,Val = 22500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 132,Bs = 8419590,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难23章7关
				[22308] = {Pos = 12,Name = _T("困难23章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22307},FirstExp = 18900,FDAward = {[1] = {Id = 1401002,Val = 10800},[2] = {Id = 1401003,Val = 22500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 132,Bs = 8425014,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难23章8关
				[22309] = {Pos = 13,Name = _T("困难23章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22308},FirstExp = 18900,FDAward = {[1] = {Id = 1401002,Val = 10800},[2] = {Id = 1401003,Val = 22500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 132,Bs = 8159178,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难23章9关
				[22310] = {Pos = 14,Name = _T("困难23章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {22309},FirstExp = 18900,LvBoxId = 22233,FDAward = {[1] = {Id = 1401002,Val = 10800},[2] = {Id = 1401003,Val = 22500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 132,Bs = 8258149,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难23章10关
			}
		},--困难23章
		[224] = {
			Name = _T("困难24章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12241,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2008412,Val = 1},[3] = {Id = 1401002,Val = 30600}}},--钻石100铀金14金币30600
				[20] = {Id = 12242,Award = {[1] = {Id = 1401015,Val = 6500},[2] = {Id = 2008413,Val = 1},[3] = {Id = 1401002,Val = 61200}}},--熔炼精华6500铀金29金币61200
				[30] = {Id = 12243,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2008415,Val = 1},[3] = {Id = 1401002,Val = 91800}}}--守护灵抽卡券5铀金43金币91800
			},
			ExtBox = {
				[22241] = {LevelIdRequired = 22403,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603008,Val = 2},[3] = {Id = 1401003,Val = 58500}}},--钻石20守护灵初级抽卡券2守护灵经验24750
				[22242] = {LevelIdRequired = 22406,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603008,Val = 5},[3] = {Id = 1401003,Val = 117000}}},--钻石30守护灵初级抽卡券3守护灵经验33000
				[22243] = {LevelIdRequired = 22410,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603008,Val = 7},[3] = {Id = 1401003,Val = 175500}}}--钻石50守护灵初级抽卡券5守护灵经验41250
			},
			Levels = {
				[22401] = {Pos = 1,Name = _T("困难24章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22310},FirstExp = 24400,FDAward = {[1] = {Id = 1401002,Val = 11400},[2] = {Id = 1401003,Val = 24750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 137,Bs = 8655875,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难24章1关
				[22402] = {Pos = 3,Name = _T("困难24章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22401},FirstExp = 24400,FDAward = {[1] = {Id = 1401002,Val = 11400},[2] = {Id = 1401003,Val = 24750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 137,Bs = 8661345,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难24章2关
				[22403] = {Pos = 4,Name = _T("困难24章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22402},FirstExp = 24400,LvBoxId = 22241,FDAward = {[1] = {Id = 1401002,Val = 11400},[2] = {Id = 1401003,Val = 24750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 137,Bs = 9093435,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难24章3关
				[22404] = {Pos = 6,Name = _T("困难24章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22403},FirstExp = 24400,FDAward = {[1] = {Id = 1401002,Val = 11400},[2] = {Id = 1401003,Val = 24750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 137,Bs = 9078008,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难24章4关
				[22405] = {Pos = 8,Name = _T("困难24章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22404},FirstExp = 24400,FDAward = {[1] = {Id = 1401002,Val = 11400},[2] = {Id = 1401003,Val = 24750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 137,Bs = 9080733,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难24章5关
				[22406] = {Pos = 9,Name = _T("困难24章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22405},FirstExp = 24400,LvBoxId = 22242,FDAward = {[1] = {Id = 1401002,Val = 11400},[2] = {Id = 1401003,Val = 24750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 137,Bs = 9936746,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难24章6关
				[22407] = {Pos = 10,Name = _T("困难24章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22406},FirstExp = 24400,FDAward = {[1] = {Id = 1401002,Val = 11400},[2] = {Id = 1401003,Val = 24750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 137,Bs = 9921031,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难24章7关
				[22408] = {Pos = 11,Name = _T("困难24章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22407},FirstExp = 24400,FDAward = {[1] = {Id = 1401002,Val = 11400},[2] = {Id = 1401003,Val = 24750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 137,Bs = 9926472,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难24章8关
				[22409] = {Pos = 13,Name = _T("困难24章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22408},FirstExp = 24400,FDAward = {[1] = {Id = 1401002,Val = 11400},[2] = {Id = 1401003,Val = 24750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 137,Bs = 9913407,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难24章9关
				[22410] = {Pos = 14,Name = _T("困难24章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {22409},FirstExp = 24400,LvBoxId = 22243,FDAward = {[1] = {Id = 1401002,Val = 11400},[2] = {Id = 1401003,Val = 24750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 137,Bs = 9966368,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难24章10关
			}
		},--困难24章
		[225] = {
			Name = _T("困难25章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12251,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2109422,Val = 1},[3] = {Id = 1401002,Val = 32400}}},--钻石100铀金18金币32400
				[20] = {Id = 12252,Award = {[1] = {Id = 1401015,Val = 7000},[2] = {Id = 2109423,Val = 1},[3] = {Id = 1401002,Val = 64800}}},--熔炼精华7000铀金36金币64800
				[30] = {Id = 12253,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2109424,Val = 1},[3] = {Id = 1401002,Val = 97200}}}--守护灵抽卡券5铀金54金币97200
			},
			ExtBox = {
				[22251] = {LevelIdRequired = 22503,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603008,Val = 3},[3] = {Id = 1401003,Val = 63000}}},--钻石20守护灵初级抽卡券2守护灵经验27000
				[22252] = {LevelIdRequired = 22506,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603008,Val = 6},[3] = {Id = 1401003,Val = 126000}}},--钻石30守护灵初级抽卡券3守护灵经验36000
				[22253] = {LevelIdRequired = 22510,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603008,Val = 8},[3] = {Id = 1401003,Val = 189000}}}--钻石50守护灵初级抽卡券5守护灵经验45000
			},
			Levels = {
				[22501] = {Pos = 1,Name = _T("困难25章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22410},FirstExp = 31500,FDAward = {[1] = {Id = 1401002,Val = 12000},[2] = {Id = 1401003,Val = 27000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 142,Bs = 10333583,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难25章1关
				[22502] = {Pos = 3,Name = _T("困难25章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22501},FirstExp = 31500,FDAward = {[1] = {Id = 1401002,Val = 12000},[2] = {Id = 1401003,Val = 27000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 142,Bs = 10340831,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难25章2关
				[22503] = {Pos = 5,Name = _T("困难25章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22502},FirstExp = 31500,LvBoxId = 22251,FDAward = {[1] = {Id = 1401002,Val = 12000},[2] = {Id = 1401003,Val = 27000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 142,Bs = 11283703,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难25章3关
				[22504] = {Pos = 7,Name = _T("困难25章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22503},FirstExp = 31500,FDAward = {[1] = {Id = 1401002,Val = 12000},[2] = {Id = 1401003,Val = 27000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 142,Bs = 10722800,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难25章4关
				[22505] = {Pos = 8,Name = _T("困难25章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22504},FirstExp = 31500,FDAward = {[1] = {Id = 1401002,Val = 12000},[2] = {Id = 1401003,Val = 27000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 142,Bs = 10726443,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难25章5关
				[22506] = {Pos = 9,Name = _T("困难25章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22505},FirstExp = 31500,LvBoxId = 22252,FDAward = {[1] = {Id = 1401002,Val = 12000},[2] = {Id = 1401003,Val = 27000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 142,Bs = 11879271,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难25章6关
				[22507] = {Pos = 11,Name = _T("困难25章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22506},FirstExp = 31500,FDAward = {[1] = {Id = 1401002,Val = 12000},[2] = {Id = 1401003,Val = 27000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 142,Bs = 11606892,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难25章7关
				[22508] = {Pos = 12,Name = _T("困难25章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22507},FirstExp = 31500,FDAward = {[1] = {Id = 1401002,Val = 12000},[2] = {Id = 1401003,Val = 27000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 142,Bs = 11614160,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难25章8关
				[22509] = {Pos = 13,Name = _T("困难25章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22508},FirstExp = 31500,FDAward = {[1] = {Id = 1401002,Val = 12000},[2] = {Id = 1401003,Val = 27000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 142,Bs = 11516058,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难25章9关
				[22510] = {Pos = 14,Name = _T("困难25章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {22509},FirstExp = 31500,LvBoxId = 22253,FDAward = {[1] = {Id = 1401002,Val = 12000},[2] = {Id = 1401003,Val = 27000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 142,Bs = 11582634,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难25章10关
			}
		},--困难25章
		[226] = {
			Name = _T("困难26章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12261,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2009422,Val = 1},[3] = {Id = 1401002,Val = 34200}}},--钻石100铀金18金币34200
				[20] = {Id = 12262,Award = {[1] = {Id = 1401015,Val = 7500},[2] = {Id = 2009423,Val = 1},[3] = {Id = 1401002,Val = 68400}}},--熔炼精华7500铀金36金币68400
				[30] = {Id = 12263,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2009424,Val = 1},[3] = {Id = 1401002,Val = 102600}}}--守护灵抽卡券5铀金54金币102600
			},
			ExtBox = {
				[22261] = {LevelIdRequired = 22603,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603008,Val = 3},[3] = {Id = 1401003,Val = 67500}}},--钻石20守护灵初级抽卡券2守护灵经验29250
				[22262] = {LevelIdRequired = 22606,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603008,Val = 6},[3] = {Id = 1401003,Val = 135000}}},--钻石30守护灵初级抽卡券3守护灵经验39000
				[22263] = {LevelIdRequired = 22610,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603008,Val = 8},[3] = {Id = 1401003,Val = 202500}}}--钻石50守护灵初级抽卡券5守护灵经验48750
			},
			Levels = {
				[22601] = {Pos = 1,Name = _T("困难26章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22510},FirstExp = 38250,FDAward = {[1] = {Id = 1401002,Val = 12600},[2] = {Id = 1401003,Val = 29250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 147,Bs = 12071911,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难26章1关
				[22602] = {Pos = 3,Name = _T("困难26章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22601},FirstExp = 38250,FDAward = {[1] = {Id = 1401002,Val = 12600},[2] = {Id = 1401003,Val = 29250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 147,Bs = 12079139,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难26章2关
				[22603] = {Pos = 4,Name = _T("困难26章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22602},FirstExp = 38250,LvBoxId = 22261,FDAward = {[1] = {Id = 1401002,Val = 12600},[2] = {Id = 1401003,Val = 29250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 147,Bs = 12875018,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难26章3关
				[22604] = {Pos = 6,Name = _T("困难26章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22603},FirstExp = 38250,FDAward = {[1] = {Id = 1401002,Val = 12600},[2] = {Id = 1401003,Val = 29250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 147,Bs = 12258538,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难26章4关
				[22605] = {Pos = 8,Name = _T("困难26章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22604},FirstExp = 38250,FDAward = {[1] = {Id = 1401002,Val = 12600},[2] = {Id = 1401003,Val = 29250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 147,Bs = 12262171,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难26章5关
				[22606] = {Pos = 9,Name = _T("困难26章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22605},FirstExp = 38250,LvBoxId = 22262,FDAward = {[1] = {Id = 1401002,Val = 12600},[2] = {Id = 1401003,Val = 29250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 147,Bs = 12918625,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难26章6关
				[22607] = {Pos = 10,Name = _T("困难26章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22606},FirstExp = 38250,FDAward = {[1] = {Id = 1401002,Val = 12600},[2] = {Id = 1401003,Val = 29250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 147,Bs = 12634438,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难26章7关
				[22608] = {Pos = 11,Name = _T("困难26章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22607},FirstExp = 38250,FDAward = {[1] = {Id = 1401002,Val = 12600},[2] = {Id = 1401003,Val = 29250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 147,Bs = 12641696,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难26章8关
				[22609] = {Pos = 13,Name = _T("困难26章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22608},FirstExp = 38250,FDAward = {[1] = {Id = 1401002,Val = 12600},[2] = {Id = 1401003,Val = 29250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 147,Bs = 12453477,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难26章9关
				[22610] = {Pos = 14,Name = _T("困难26章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {22609},FirstExp = 38250,LvBoxId = 22263,FDAward = {[1] = {Id = 1401002,Val = 12600},[2] = {Id = 1401003,Val = 29250}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 147,Bs = 12612113,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难26章10关
			}
		},--困难26章
		[227] = {
			Name = _T("困难27章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12271,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2110412,Val = 1},[3] = {Id = 1401002,Val = 36000}}},--钻石100铀金18金币36000
				[20] = {Id = 12272,Award = {[1] = {Id = 1401015,Val = 8000},[2] = {Id = 2110413,Val = 1},[3] = {Id = 1401002,Val = 72000}}},--熔炼精华8000铀金36金币72000
				[30] = {Id = 12273,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2110415,Val = 1},[3] = {Id = 1401002,Val = 108000}}}--守护灵抽卡券5铀金54金币108000
			},
			ExtBox = {
				[22271] = {LevelIdRequired = 22703,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603008,Val = 3},[3] = {Id = 1401003,Val = 72000}}},--钻石20守护灵初级抽卡券2守护灵经验31500
				[22272] = {LevelIdRequired = 22706,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603008,Val = 6},[3] = {Id = 1401003,Val = 144000}}},--钻石30守护灵初级抽卡券3守护灵经验42000
				[22273] = {LevelIdRequired = 22710,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603008,Val = 8},[3] = {Id = 1401003,Val = 216000}}}--钻石50守护灵初级抽卡券5守护灵经验52500
			},
			Levels = {
				[22701] = {Pos = 1,Name = _T("困难27章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22610},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 31500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 13025195,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难27章1关
				[22702] = {Pos = 3,Name = _T("困难27章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22701},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 31500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 150,Bs = 13025195,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难27章2关
				[22703] = {Pos = 5,Name = _T("困难27章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22702},FirstExp = 40800,LvBoxId = 22271,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 31500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 150,Bs = 14093823,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难27章3关
				[22704] = {Pos = 7,Name = _T("困难27章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22703},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 31500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 150,Bs = 13399696,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难27章4关
				[22705] = {Pos = 8,Name = _T("困难27章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22704},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 31500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 13399696,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难27章5关
				[22706] = {Pos = 9,Name = _T("困难27章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22705},FirstExp = 40800,LvBoxId = 22272,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 31500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 150,Bs = 14221251,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难27章6关
				[22707] = {Pos = 11,Name = _T("困难27章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22706},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 31500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 150,Bs = 13868279,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难27章7关
				[22708] = {Pos = 12,Name = _T("困难27章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22707},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 31500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 150,Bs = 13868279,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难27章8关
				[22709] = {Pos = 13,Name = _T("困难27章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22708},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 31500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 150,Bs = 13696863,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难27章9关
				[22710] = {Pos = 14,Name = _T("困难27章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {22709},FirstExp = 40800,LvBoxId = 22273,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 31500}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 150,Bs = 13850039,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难27章10关
			}
		},--困难27章
		[228] = {
			Name = _T("困难28章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12281,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2010412,Val = 1},[3] = {Id = 1401002,Val = 37800}}},--钻石100灵玉6金币37800
				[20] = {Id = 12282,Award = {[1] = {Id = 1401015,Val = 8500},[2] = {Id = 2010413,Val = 1},[3] = {Id = 1401002,Val = 75600}}},--熔炼精华8500灵玉12金币75600
				[30] = {Id = 12283,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2010415,Val = 1},[3] = {Id = 1401002,Val = 113400}}}--守护灵抽卡券5灵玉18金币113400
			},
			ExtBox = {
				[22281] = {LevelIdRequired = 22803,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603014,Val = 2},[3] = {Id = 1401003,Val = 86400}}},--钻石20守护灵初级抽卡券2守护灵经验33750
				[22282] = {LevelIdRequired = 22806,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603014,Val = 4},[3] = {Id = 1401003,Val = 172800}}},--钻石30守护灵初级抽卡券3守护灵经验45000
				[22283] = {LevelIdRequired = 22810,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603014,Val = 6},[3] = {Id = 1401003,Val = 259200}}}--钻石50守护灵初级抽卡券5守护灵经验56250
			},
			Levels = {
				[22801] = {Pos = 1,Name = _T("困难28章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22710},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 33750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 150,Bs = 14032392,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难28章1关
				[22802] = {Pos = 3,Name = _T("困难28章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22801},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 33750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 150,Bs = 14032392,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难28章2关
				[22803] = {Pos = 4,Name = _T("困难28章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22802},FirstExp = 40800,LvBoxId = 22281,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 33750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 150,Bs = 14743884,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难28章3关
				[22804] = {Pos = 6,Name = _T("困难28章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22803},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 33750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 150,Bs = 14032392,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难28章4关
				[22805] = {Pos = 8,Name = _T("困难28章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22804},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 33750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 14032392,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难28章5关
				[22806] = {Pos = 9,Name = _T("困难28章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22805},FirstExp = 40800,LvBoxId = 22282,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 33750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 14885244,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难28章6关
				[22807] = {Pos = 10,Name = _T("困难28章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22806},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 33750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 14167972,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难28章7关
				[22808] = {Pos = 11,Name = _T("困难28章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22807},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 33750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 150,Bs = 14167972,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难28章8关
				[22809] = {Pos = 13,Name = _T("困难28章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22808},FirstExp = 40800,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 33750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 150,Bs = 14890644,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难28章9关
				[22810] = {Pos = 14,Name = _T("困难28章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {22809},FirstExp = 40800,LvBoxId = 22283,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 33750}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 14905447,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难28章10关
			}
		},--困难28章
		[229] = {
			Name = _T("困难29章"),
			Scene = "Chapters01",
			Res = 10,
			StarBox = {
				[10] = {Id = 12291,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2111422,Val = 1},[3] = {Id = 1401002,Val = 39600}}},--钻石100灵玉6金币39600
				[20] = {Id = 12292,Award = {[1] = {Id = 1401015,Val = 9000},[2] = {Id = 2111423,Val = 1},[3] = {Id = 1401002,Val = 79200}}},--熔炼精华9000灵玉12金币79200
				[30] = {Id = 12293,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2111424,Val = 1},[3] = {Id = 1401002,Val = 118800}}}--守护灵抽卡券5灵玉18金币118800
			},
			ExtBox = {
				[22291] = {LevelIdRequired = 22903,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603014,Val = 2},[3] = {Id = 1401003,Val = 86400}}},--钻石20守护灵初级抽卡券2守护灵经验36000
				[22292] = {LevelIdRequired = 22906,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603014,Val = 4},[3] = {Id = 1401003,Val = 172800}}},--钻石30守护灵初级抽卡券3守护灵经验48000
				[22293] = {LevelIdRequired = 22910,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603014,Val = 6},[3] = {Id = 1401003,Val = 259200}}}--钻石50守护灵初级抽卡券5守护灵经验60000
			},
			Levels = {
				[22901] = {Pos = 1,Name = _T("困难29章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22810},FirstExp = 44880,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 36000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 150,Bs = 14172972,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难29章1关
				[22902] = {Pos = 3,Name = _T("困难29章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22901},FirstExp = 44880,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 36000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 150,Bs = 14172972,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难29章2关
				[22903] = {Pos = 5,Name = _T("困难29章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22902},FirstExp = 44880,LvBoxId = 22291,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 36000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 150,Bs = 14890644,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难29章3关
				[22904] = {Pos = 7,Name = _T("困难29章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22903},FirstExp = 44880,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 36000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 14172972,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难29章4关
				[22905] = {Pos = 8,Name = _T("困难29章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22904},FirstExp = 44880,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 36000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 150,Bs = 14172972,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难29章5关
				[22906] = {Pos = 9,Name = _T("困难29章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22905},FirstExp = 44880,LvBoxId = 22292,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 36000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 9,NeedLv = 150,Bs = 14890644,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难29章6关
				[22907] = {Pos = 11,Name = _T("困难29章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22906},FirstExp = 44880,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 36000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 11,NeedLv = 150,Bs = 14172972,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难29章7关
				[22908] = {Pos = 12,Name = _T("困难29章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22907},FirstExp = 44880,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 36000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 150,Bs = 14172972,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难29章8关
				[22909] = {Pos = 13,Name = _T("困难29章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22908},FirstExp = 44880,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 36000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 7,NeedLv = 150,Bs = 15012204,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难29章9关
				[22910] = {Pos = 14,Name = _T("困难29章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {22909},FirstExp = 44880,LvBoxId = 22293,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 36000}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 8,NeedLv = 150,Bs = 15273045,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难29章10关
			}
		},--困难29章
		[230] = {
			Name = _T("困难30章"),
			Scene = "Chapters02",
			Res = 10,
			StarBox = {
				[10] = {Id = 12301,Award = {[1] = {Id = 1401010,Val = 100},[2] = {Id = 2011422,Val = 1},[3] = {Id = 1401002,Val = 39600}}},--钻石100灵玉6金币39600
				[20] = {Id = 12302,Award = {[1] = {Id = 1401015,Val = 1000},[2] = {Id = 2011423,Val = 1},[3] = {Id = 1401002,Val = 79200}}},--熔炼精华1000灵玉12金币79200
				[30] = {Id = 12303,Award = {[1] = {Id = 1602001,Val = 5},[2] = {Id = 2011424,Val = 1},[3] = {Id = 1401002,Val = 118800}}}--守护灵抽卡券5灵玉18金币118800
			},
			ExtBox = {
				[22301] = {LevelIdRequired = 23003,Off = {X = 100,Y = 60},Award = {[1] = {Id = 1401010,Val = 20},[2] = {Id = 1603014,Val = 2},[3] = {Id = 1401003,Val = 86400}}},--钻石20守护灵初级抽卡券2守护灵经验43200
				[22302] = {LevelIdRequired = 23006,Off = {X = 150,Y = 50},Award = {[1] = {Id = 1401010,Val = 30},[2] = {Id = 1603014,Val = 4},[3] = {Id = 1401003,Val = 172800}}},--钻石30守护灵初级抽卡券3守护灵经验57600
				[22303] = {LevelIdRequired = 23010,Off = {X = 120,Y = 50},Award = {[1] = {Id = 1401010,Val = 50},[2] = {Id = 1603014,Val = 6},[3] = {Id = 1401003,Val = 259200}}}--钻石50守护灵初级抽卡券5守护灵经验72000
			},
			Levels = {
				[23001] = {Pos = 1,Name = _T("困难30章-1关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {22910},FirstExp = 49368,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 43200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 150,Bs = 14285492,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难30章1关
				[23002] = {Pos = 3,Name = _T("困难30章-2关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {23001},FirstExp = 49368,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 43200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-3",MapPosId = 6,NeedLv = 150,Bs = 14285492,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难30章2关
				[23003] = {Pos = 4,Name = _T("困难30章-3关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {23002},FirstExp = 49368,LvBoxId = 22301,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 43200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 150,Bs = 15012204,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难30章3关
				[23004] = {Pos = 6,Name = _T("困难30章-4关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {23003},FirstExp = 49368,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 43200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 14285492,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难30章4关
				[23005] = {Pos = 8,Name = _T("困难30章-5关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {23004},FirstExp = 49368,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 43200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 14355492,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难30章5关
				[23006] = {Pos = 9,Name = _T("困难30章-6关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {23005},FirstExp = 49368,LvBoxId = 22302,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 43200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 15087804,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难30章6关
				[23007] = {Pos = 10,Name = _T("困难30章-7关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {23006},FirstExp = 49368,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 43200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 150,Bs = 14355492,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难30章7关
				[23008] = {Pos = 11,Name = _T("困难30章-8关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {23007},FirstExp = 49368,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 43200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 1,NeedLv = 150,Bs = 14355492,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难30章8关
				[23009] = {Pos = 13,Name = _T("困难30章-9关"),Modle = "Chapters_fight",Type = 1,FormType = 0,LastId = {23008},FirstExp = 49368,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 43200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 2,NeedLv = 150,Bs = 15234924,StarRating = {1,3,5},StoryDes = "策划还没写剧情"},--困难30章9关
				[23010] = {Pos = 14,Name = _T("困难30章-10关"),Modle = "Chapters_boss",Type = 1,FormType = 0,LastId = {23009},FirstExp = 49368,LvBoxId = 22303,FDAward = {[1] = {Id = 1401002,Val = 13200},[2] = {Id = 1401003,Val = 43200}},CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-1",MapPosId = 3,NeedLv = 150,Bs = 15505675,StarRating = {1,3,5},StoryDes = "策划还没写剧情"}--困难30章10关
			}
		}--困难30章
	},
	[3] = {
		[1000] = {
			Name = _T("序章"),
			Scene = "Chapters01",
			Res = 3,
			Levels = {
				[100001] = {Pos = 1,Name = _T("序章第1关"),Modle = "Chapters_fight",DrillLv = 2,Type = 1,FormType = 0,FirstExp = 0,EveryExp = 0,CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 58,NeedLv = 1,Bs = 0,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--序章第1关
				[100002] = {Pos = 2,Name = _T("序章第2关"),Modle = "Chapters_fight",DrillLv = 3,Type = 1,FormType = 0,LastId = {100001},FirstExp = 0,EveryExp = 0,CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 58,NeedLv = 1,Bs = 0,StarRating = {1,5,13},StoryDes = "策划还没写剧情"},--序章第2关
				[100003] = {Pos = 3,Name = _T("序章第3关"),Modle = "Chapters_fight",DrillLv = 4,Type = 1,FormType = 0,LastId = {100002},FirstExp = 0,EveryExp = 0,CostStamina = 0,CostStaminaFail = 0,StageIcon = "ui_dtex_Stage_002",SceneName = "Map_luoshajiedao_1-4",MapPosId = 58,NeedLv = 1,Bs = 0,StarRating = {1,5,13},StoryDes = "策划还没写剧情"}--序章第3关
			}
		}--序章
	}
}