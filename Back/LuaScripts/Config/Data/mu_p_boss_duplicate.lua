--[[
output from excel MuPBoss.千机黑刹.xlsx
--note:

colums:
{ID,副本ID} ,{DuplicateName,副本名称} ,{MaxQualityNum,最大品质数} ,{OpenLevel,开启副本所需玩家等级} ,{PreviousDuplicate,前置副本ID} ,{RecommendForce,推荐战力} ,{ForceScreen[1],匹配时的战力选项1} ,{ForceScreen[2],匹配时的战力选项2} ,{ForceScreen[3],匹配时的战力选项3} ,{ForceScreen[4],匹配时的战力选项4} ,{ForceScreen[5],匹配时的战力选项5} ,{DuplicatePic,副本列表界面配图} ,{DuplicateScene,副本使用的静态场景} ,{LimitedTime,每局游戏时限
单位：分} ,{KeyBonusShow[1].Id,关键掉落展示1ID} ,{KeyBonusShow[1].Desc,关键掉落展示1描述} ,{KeyBonusShow[2].Id,关键掉落展示2ID} ,{KeyBonusShow[2].Desc,关键掉落展示2描述}
primary key:
#0 [千机黑刹副本配置表]: ID
]]
local _T = LangUtil.Language
return{
	[101] = {ID = 101,DuplicateName = "监狱外围",MaxQualityNum = 4,OpenLevel = 40,RecommendForce = 300000,ForceScreen = {[1] = 300000,[2] = 400000,[3] = 500000,[4] = 600000,[5] = 700000},DuplicatePic = "cardface_fsjj_1201008",DuplicateScene = "MapRoot5",LimitedTime = 30,KeyBonusShow = {[1] = {Id = 1702002,Desc = _T("1~2")},[2] = {Id = 1502002,Desc = _T("1")}}},
	[102] = {ID = 102,DuplicateName = "监狱广场",MaxQualityNum = 4,OpenLevel = 60,PreviousDuplicate = 101,RecommendForce = 700000,ForceScreen = {[1] = 700000,[2] = 800000,[3] = 900000,[4] = 1000000,[5] = 1100000},DuplicatePic = "cardface_fsjj_1201008",DuplicateScene = "MapRoot5",LimitedTime = 30,KeyBonusShow = {[1] = {Id = 1702002,Desc = _T("1~3")},[2] = {Id = 1502002,Desc = _T("2")}}},
	[103] = {ID = 103,DuplicateName = "监狱内围",MaxQualityNum = 4,OpenLevel = 80,PreviousDuplicate = 102,RecommendForce = 1100000,ForceScreen = {[1] = 1100000,[2] = 1200000,[3] = 1300000,[4] = 1400000,[5] = 1500000},DuplicatePic = "cardface_fsjj_1201008",DuplicateScene = "MapRoot5",LimitedTime = 40,KeyBonusShow = {[1] = {Id = 1702002,Desc = _T("1~4")},[2] = {Id = 1502002,Desc = _T("3")}}},
	[104] = {ID = 104,DuplicateName = "监狱核心",MaxQualityNum = 4,OpenLevel = 100,PreviousDuplicate = 103,RecommendForce = 1500000,ForceScreen = {[1] = 1500000,[2] = 1600000,[3] = 1700000,[4] = 1800000,[5] = 1900000},DuplicatePic = "cardface_fsjj_1201008",DuplicateScene = "MapRoot5",LimitedTime = 50,KeyBonusShow = {[1] = {Id = 1702002,Desc = _T("1~5")},[2] = {Id = 1502002,Desc = _T("4")}}},
	[105] = {ID = 105,DuplicateName = "一号牢房",MaxQualityNum = 4,OpenLevel = 120,PreviousDuplicate = 104,RecommendForce = 1900000,ForceScreen = {[1] = 1900000,[2] = 2000000,[3] = 2100000,[4] = 2200000,[5] = 2300000},DuplicatePic = "cardface_fsjj_1201008",DuplicateScene = "MapRoot5",LimitedTime = 60,KeyBonusShow = {[1] = {Id = 1702002,Desc = _T("1~6")},[2] = {Id = 1502002,Desc = _T("5")}}}
}