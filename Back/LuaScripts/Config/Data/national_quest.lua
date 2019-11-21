--[[
output from excel national_quest国战主线任务.xlsx
--note:
主线任务配置表
colums:
{Id,ID} ,{NxtId,下一ID} ,{Title,标题} ,{Desc,描述} ,{Condition,任务1条件ID} ,{CountType,计数类型
1终身，2开起时计数} ,{Param[1],任务1参数1} ,{Param[2],任务1参数2} ,{Param[3],任务1参数3} ,{Reward[1].Id,奖励道具1ID} ,{Reward[1].Num,奖励道具1数量} ,{Reward[2].Id,奖励道具2ID} ,{Reward[2].Num,奖励道具2数量} ,{Reward[3].Id,奖励道具3ID} ,{Reward[3].Num,奖励道具3数量} ,{Reward[4].Id,奖励道具4ID} ,{Reward[4].Num,奖励道具4数量}
primary key:
#0 [主线任务]: Id
]]
local _T = LangUtil.Language
return{
	[90001] = {Id = 90001,NxtId = 90002,Title = _T("征募"),Desc = _T("进行1次征募"),Condition = 90304,CountType = 2,Param = {[1] = 1},Reward = {[1] = {Id = 6000001,Num = 10000},[2] = {Id = 6000002,Num = 10000},[3] = {Id = 6000003,Num = 10000},[4] = {Id = 6000004,Num = 10000}}},
	[90002] = {Id = 90002,NxtId = 90003,Title = _T("剿匪"),Desc = _T("攻打一个城镇匪怪"),Condition = 90205,CountType = 2,Param = {[1] = 1},Reward = {[1] = {Id = 6000001,Num = 11000},[2] = {Id = 6000002,Num = 11000},[3] = {Id = 6000003,Num = 11000},[4] = {Id = 6000004,Num = 11000}}},
	[90003] = {Id = 90003,NxtId = 90004,Title = _T("储备军力"),Desc = _T("使用储备军力进行1次征募"),Condition = 90305,CountType = 2,Param = {[1] = 1},Reward = {[1] = {Id = 6000001,Num = 12000},[2] = {Id = 6000002,Num = 12000},[3] = {Id = 6000003,Num = 12000},[4] = {Id = 6000004,Num = 12000}}},
	[90004] = {Id = 90004,NxtId = 90005,Title = _T("激活城镇"),Desc = _T("激活一个城镇"),Condition = 90104,CountType = 1,Param = {[1] = 1},Reward = {[1] = {Id = 6000001,Num = 13000},[2] = {Id = 6000002,Num = 13000},[3] = {Id = 6000003,Num = 13000},[4] = {Id = 6000004,Num = 13000}}},
	[90005] = {Id = 90005,NxtId = 90006,Title = _T("队伍调动"),Desc = _T("完成1次队伍调动"),Condition = 90209,CountType = 2,Param = {[1] = 1},Reward = {[1] = {Id = 6000001,Num = 14000},[2] = {Id = 6000002,Num = 14000},[3] = {Id = 6000003,Num = 14000},[4] = {Id = 6000004,Num = 14000}}},
	[90006] = {Id = 90006,NxtId = 90007,Title = _T("资源点"),Desc = _T("攻打1次资源点"),Condition = 90208,CountType = 2,Param = {[1] = 1,[2] = 1},Reward = {[1] = {Id = 6000001,Num = 15000},[2] = {Id = 6000002,Num = 15000},[3] = {Id = 6000003,Num = 15000},[4] = {Id = 6000004,Num = 15000}}},
	[90007] = {Id = 90007,NxtId = 90008,Title = _T("占领"),Desc = _T("占领1级以上资源点3块"),Condition = 90201,CountType = 1,Param = {[1] = 3,[2] = 1},Reward = {[1] = {Id = 6000001,Num = 16000},[2] = {Id = 6000002,Num = 16000},[3] = {Id = 6000003,Num = 16000},[4] = {Id = 6000004,Num = 16000}}},
	[90008] = {Id = 90008,NxtId = 90009,Title = _T("占领"),Desc = _T("占领2级以上资源点3块"),Condition = 90201,CountType = 1,Param = {[1] = 3,[2] = 2},Reward = {[1] = {Id = 6000001,Num = 17000},[2] = {Id = 6000002,Num = 17000},[3] = {Id = 6000003,Num = 17000},[4] = {Id = 6000004,Num = 17000}}},
	[90009] = {Id = 90009,NxtId = 90010,Title = _T("讨伐"),Desc = _T("攻打1次讨伐区野怪"),Condition = 90203,CountType = 2,Param = {[1] = 1,[2] = 1},Reward = {[1] = {Id = 6000001,Num = 18000},[2] = {Id = 6000002,Num = 18000},[3] = {Id = 6000003,Num = 18000},[4] = {Id = 6000004,Num = 18000}}},
	[90010] = {Id = 90010,NxtId = 90011,Title = _T("讨伐"),Desc = _T("消灭讨伐区1级野怪数量达到5"),Condition = 90203,CountType = 1,Param = {[1] = 5,[2] = 1},Reward = {[1] = {Id = 6000001,Num = 19000},[2] = {Id = 6000002,Num = 19000},[3] = {Id = 6000003,Num = 19000},[4] = {Id = 6000004,Num = 19000}}},
	[90011] = {Id = 90011,NxtId = 90012,Title = _T("势力值"),Desc = _T("势力值达到200"),Condition = 90402,CountType = 1,Param = {[1] = 200},Reward = {[1] = {Id = 6000001,Num = 20000},[2] = {Id = 6000002,Num = 20000},[3] = {Id = 6000003,Num = 20000},[4] = {Id = 6000004,Num = 20000}}},
	[90012] = {Id = 90012,NxtId = 90013,Title = _T("产量"),Desc = _T("银木资源产量达到2000/小时"),Condition = 90101,CountType = 1,Param = {[1] = 2000,[2] = 6000001},Reward = {[1] = {Id = 6000001,Num = 21000},[2] = {Id = 6000002,Num = 21000},[3] = {Id = 6000003,Num = 21000},[4] = {Id = 6000004,Num = 21000}}},
	[90013] = {Id = 90013,NxtId = 90014,Title = _T("科技"),Desc = _T("研究1次科技"),Condition = 90105,CountType = 2,Param = {[1] = 1},Reward = {[1] = {Id = 6000001,Num = 22000},[2] = {Id = 6000002,Num = 22000},[3] = {Id = 6000003,Num = 22000},[4] = {Id = 6000004,Num = 22000}}},
	[90014] = {Id = 90014,NxtId = 90015,Title = _T("联盟"),Desc = _T("加入或创建联盟"),Condition = 90502,CountType = 1,Param = {[1] = 1},Reward = {[1] = {Id = 6000001,Num = 23000},[2] = {Id = 6000002,Num = 23000},[3] = {Id = 6000003,Num = 23000},[4] = {Id = 6000004,Num = 23000}}},
	[90015] = {Id = 90015,NxtId = 90016,Title = _T("声望"),Desc = _T("声望等级达到3级"),Condition = 90401,CountType = 1,Param = {[1] = 3},Reward = {[1] = {Id = 6000001,Num = 24000},[2] = {Id = 6000002,Num = 24000},[3] = {Id = 6000003,Num = 24000},[4] = {Id = 6000004,Num = 24000}}},
	[90016] = {Id = 90016,NxtId = 90017,Title = _T("资源采集"),Desc = _T("完成1次资源采集"),Condition = 90106,CountType = 2,Param = {[1] = 1},Reward = {[1] = {Id = 6000001,Num = 25000},[2] = {Id = 6000002,Num = 25000},[3] = {Id = 6000003,Num = 25000},[4] = {Id = 6000004,Num = 25000}}},
	[90017] = {Id = 90017,NxtId = 90018,Title = _T("统御"),Desc = _T("任意英雄统御等级达到10"),Condition = 90301,CountType = 1,Param = {[1] = 10},Reward = {[1] = {Id = 6000001,Num = 26000},[2] = {Id = 6000002,Num = 26000},[3] = {Id = 6000003,Num = 26000},[4] = {Id = 6000004,Num = 26000}}},
	[90018] = {Id = 90018,NxtId = 90019,Title = _T("统御"),Desc = _T("统御等级n级的英雄数量达到7个"),Condition = 90302,CountType = 1,Param = {[1] = 7,[2] = 10},Reward = {[1] = {Id = 6000001,Num = 27000},[2] = {Id = 6000002,Num = 27000},[3] = {Id = 6000003,Num = 27000},[4] = {Id = 6000004,Num = 27000}}}
}