--[[
output from excel ArenaRealTime.实时竞技场.xlsx
--note:
配置实时竞技场的常量
配置实时竞技场各段位的分数，以及每赛季积分衰减系数，以及赛季结算时的奖励
配置实时竞技场的排名奖励，每周日结算
配置实时竞技场周胜场的奖励
colums:
{OpenDay,开放日期} ,{OpenTime[1].Beg,天梯时间开启1} ,{OpenTime[1].End,天梯时间结束1} ,{OpenTime[2].Beg,天梯时间开启2} ,{OpenTime[2].End,天梯时间结束2} ,{FlushPrice,休闲模式匹配最大时间（秒）} ,{IniScore,玩家初始积分数值} ,{PrepareTime,布阵阶段倒计时（秒）} ,{RoundTime,指令选择阶段倒计时（秒）} ,{MaxRound,最大战斗回合数} ,{Name,段位名称} ,{Icon,段位图标} ,{Score,所需积分} ,{Award[1].Id,每日奖励道具ID1} ,{Award[1].Val,每日奖励道具数量1} ,{Award[2].Id,每日奖励道具ID2} ,{Award[2].Val,每日奖励道具数量2} ,{Award[3].Id,每日奖励道具ID3} ,{Award[3].Val,每日奖励道具数量3} ,{LoseFac,失败积分调节系数} ,{SeasonDecay,赛季积分衰减比例} ,{Id,唯一键} ,{Type,排名类型
1-本服，2-全服（赛季）} ,{Rank,排名} ,{Award[1].id,道具ID1} ,{Award[1].val,道具数量1} ,{Award[2].id,道具ID2} ,{Award[2].val,道具数量2} ,{Victory,胜场}
primary key:
#0 [实时竞技常量表]: SType
#1 [实时竞技段位表]: SType,Id
#2 [实时竞技排名奖励表]: SType,Type,Loc
#3 [实时竞技周胜场宝箱表]: SType,Id
]]
local _T = LangUtil.Language
return{
	Constant = {OpenDay = {1,2,3,4,5,6,7},OpenTime = {[1] = {Beg = "12:00",End = "13:30"},[2] = {Beg = "18:00",End = "19:00"}},FlushPrice = 30,IniScore = 900,PrepareTime = 30,RoundTime = 30,MaxRound = 10},
	PhaseAward = {
		[1] = {Name = _T("黑铁"),Icon = "ui_dtex_Quality_093",Score = 0,Award = {[1] = {Id = 1401002,Val = 10000},[2] = {Id = 1401010,Val = 35}},LoseFac = 0,SeasonDecay = 0.5},
		[2] = {Name = _T("青铜"),Icon = "ui_dtex_Quality_094",Score = 1000,Award = {[1] = {Id = 1401002,Val = 15000},[2] = {Id = 1401010,Val = 50},[3] = {Id = 1605018,Val = 1}},LoseFac = 0.5,SeasonDecay = 0.5},
		[3] = {Name = _T("白银"),Icon = "ui_dtex_Quality_095",Score = 1200,Award = {[1] = {Id = 1401002,Val = 20000},[2] = {Id = 1401010,Val = 60},[3] = {Id = 1605018,Val = 1}},LoseFac = 1,SeasonDecay = 0.5},
		[4] = {Name = _T("黄金"),Icon = "ui_dtex_Quality_096",Score = 1500,Award = {[1] = {Id = 1401002,Val = 25000},[2] = {Id = 1401010,Val = 80},[3] = {Id = 1605018,Val = 2}},LoseFac = 1,SeasonDecay = 0.5},
		[5] = {Name = _T("钻石"),Icon = "ui_dtex_Quality_097",Score = 1800,Award = {[1] = {Id = 1401002,Val = 30000},[2] = {Id = 1401010,Val = 100},[3] = {Id = 1605018,Val = 3}},LoseFac = 1,SeasonDecay = 0.5},
		[6] = {Name = _T("王者"),Icon = "ui_dtex_Quality_098",Score = 2000,Award = {[1] = {Id = 1401002,Val = 40000},[2] = {Id = 1401010,Val = 120},[3] = {Id = 1605018,Val = 3}},LoseFac = 1,SeasonDecay = 0.5}
	},
	RankAward = {
		[1] = {
			[1] = {Id = 1,Type = 1,Rank = 1,Award = {[1] = {id = 1602001,val = 10}}},
			[2] = {Id = 2,Type = 1,Rank = 2,Award = {[1] = {id = 1602001,val = 9}}},
			[3] = {Id = 3,Type = 1,Rank = 3,Award = {[1] = {id = 1602001,val = 8}}},
			[4] = {Id = 4,Type = 1,Rank = 4,Award = {[1] = {id = 1602001,val = 8}}},
			[5] = {Id = 5,Type = 1,Rank = 5,Award = {[1] = {id = 1602001,val = 8}}},
			[6] = {Id = 6,Type = 1,Rank = 10,Award = {[1] = {id = 1602001,val = 7}}},
			[7] = {Id = 7,Type = 1,Rank = 20,Award = {[1] = {id = 1602001,val = 6}}},
			[8] = {Id = 8,Type = 1,Rank = 50,Award = {[1] = {id = 1602001,val = 5}}},
			[9] = {Id = 9,Type = 1,Rank = 100,Award = {[1] = {id = 1602001,val = 3}}},
			[10] = {Id = 10,Type = 1,Rank = 500,Award = {[1] = {id = 1602001,val = 2}}},
			[11] = {Id = 11,Type = 1,Rank = 1000,Award = {[1] = {id = 1602001,val = 1}}}
		},
		[2] = {
			[1] = {Id = 12,Type = 2,Rank = 1,Award = {[1] = {id = 1602001,val = 10}}},
			[2] = {Id = 13,Type = 2,Rank = 2,Award = {[1] = {id = 1602001,val = 9}}},
			[3] = {Id = 14,Type = 2,Rank = 3,Award = {[1] = {id = 1602001,val = 8}}},
			[4] = {Id = 15,Type = 2,Rank = 4,Award = {[1] = {id = 1602001,val = 8}}},
			[5] = {Id = 16,Type = 2,Rank = 5,Award = {[1] = {id = 1602001,val = 8}}},
			[6] = {Id = 17,Type = 2,Rank = 10,Award = {[1] = {id = 1602001,val = 7}}},
			[7] = {Id = 18,Type = 2,Rank = 20,Award = {[1] = {id = 1602001,val = 6}}},
			[8] = {Id = 19,Type = 2,Rank = 50,Award = {[1] = {id = 1602001,val = 5}}},
			[9] = {Id = 20,Type = 2,Rank = 100,Award = {[1] = {id = 1602001,val = 3}}},
			[10] = {Id = 21,Type = 2,Rank = 500,Award = {[1] = {id = 1602001,val = 2}}},
			[11] = {Id = 22,Type = 2,Rank = 1000,Award = {[1] = {id = 1602001,val = 1}}}
		}
	},
	VictoryBox = {
		[1] = {Id = 1,Victory = 5,Award = {[1] = {id = 1401010,val = 20}}},
		[2] = {Id = 2,Victory = 10,Award = {[1] = {id = 1401010,val = 30}}},
		[3] = {Id = 3,Victory = 20,Award = {[1] = {id = 1401010,val = 50}}}
	}
}