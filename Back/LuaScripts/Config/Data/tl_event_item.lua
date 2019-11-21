--[[
output from excel detective.灵探系统.xlsx
--note:

colums:
{CityId,城市ID} ,{EventId,事件点Id} ,{UnlockState,在哪些状态可出现} ,{Type,类型
1.战斗，2剧情，3掉落} ,{StoryId,故事Id} ,{IsFight,是否触发战斗} ,{CostTL,消耗体力} ,{Title,标题} ,{Pic,图片} ,{Content,描述} ,{DrillLv,教学关卡Id} ,{AwardType,掉落类型
1.卡牌系统的道具
2.线索
3.剧情道具} ,{Award[1].Id,掉落道具Id1} ,{Award[1].Val,掉落道具数量1} ,{SceneName,场景名字} ,{MapPosId,地图坐标ID} ,{FirstAtk,先攻值}
primary key:
#0 [事件探索项]: Id
]]
local _T = LangUtil.Language
return{
	[101010101] = {CityId = 101,EventId = 1010101,UnlockState = {1,2},Type = 3,IsFight = false,CostTL = 5,Title = _T("现场情况"),AwardType = 2,Award = {[1] = {Id = 101010121,Val = 1}}},
	[101010102] = {CityId = 101,EventId = 1010101,UnlockState = {1,2},Type = 3,IsFight = false,CostTL = 5,Title = _T("尸体情况"),AwardType = 2,Award = {[1] = {Id = 101010122,Val = 1}}},
	[101010103] = {CityId = 101,EventId = 1010101,UnlockState = {1,2},Type = 3,IsFight = false,CostTL = 5,Title = _T("草丛中的白手套"),AwardType = 2,Award = {[1] = {Id = 101010123,Val = 1}}},
	[101010104] = {CityId = 101,EventId = 1010101,UnlockState = {1,2},Type = 1,IsFight = true,CostTL = 5,Title = _T("遭遇战斗"),Content = _T("遭遇战斗"),DrillLv = 301,SceneName = "Map_chilianjie_4-2",MapPosId = 51,FirstAtk = 500},
	[101010105] = {CityId = 101,EventId = 1010101,UnlockState = {1,2},Type = 1,IsFight = true,CostTL = 5,Title = _T("遭遇战斗"),Content = _T("遭遇战斗")},
	[101010106] = {CityId = 101,EventId = 1010101,UnlockState = {1,2},Type = 3,IsFight = false,CostTL = 5,Title = _T("船票"),AwardType = 3,Award = {[1] = {Id = 101010125,Val = 1}}},
	[101010201] = {CityId = 101,EventId = 1010101,UnlockState = {2},Type = 3,IsFight = false,CostTL = 5,Title = _T("灵金"),AwardType = 1,Award = {[1] = {Id = 1401002,Val = 20}}},
	[101010202] = {CityId = 101,EventId = 1010101,UnlockState = {2},Type = 3,IsFight = false,CostTL = 5,Title = _T("锁着的死者手机"),AwardType = 2,Award = {[1] = {Id = 101010126,Val = 1}}},
	[101010203] = {CityId = 101,EventId = 1010101,UnlockState = {2},Type = 3,IsFight = false,CostTL = 5,Title = _T("死者背包"),AwardType = 2,Award = {[1] = {Id = 101010128,Val = 1}}},
	[101010204] = {CityId = 101,EventId = 1010101,UnlockState = {2},Type = 3,IsFight = false,CostTL = 5,Title = _T("漂流物"),AwardType = 2,Award = {[1] = {Id = 101010129,Val = 1}}},
	[101010301] = {CityId = 101,EventId = 1010102,UnlockState = {1},Type = 3,IsFight = false,CostTL = 5,Title = _T("病历"),AwardType = 2,Award = {[1] = {Id = 101010130,Val = 1}}},
	[101010302] = {CityId = 101,EventId = 1010102,UnlockState = {1},Type = 3,IsFight = false,CostTL = 5,Title = _T("详细尸检"),AwardType = 2,Award = {[1] = {Id = 101010131,Val = 1}}},
	[101010303] = {CityId = 101,EventId = 1010102,UnlockState = {1},Type = 2,StoryId = 101,IsFight = false,CostTL = 5,Title = _T("剧情1"),Content = _T("剧情1")},
	[101010304] = {CityId = 101,EventId = 1010102,UnlockState = {1},Type = 3,IsFight = false,CostTL = 5,Title = _T("紫外灯"),AwardType = 3,Award = {[1] = {Id = 101010132,Val = 1}}}
}