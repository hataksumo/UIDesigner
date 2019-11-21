--[[
output from excel 7DayPromote.嘉年华.xlsx
--note:

colums:
{Name,页签名称} ,{TabName,页签名} ,{Id,ID} ,{Title,标题} ,{Condition,任务1条件ID} ,{CountType,计数类型
1终身，2开起时计数} ,{Param[1],任务1参数1} ,{Param[2],任务1参数2} ,{Param[3],任务1参数3} ,{Score,分数} ,{Reward[1].Id,奖励道具1ID} ,{Reward[1].Num,奖励道具1数量} ,{Reward[2].Id,奖励道具2ID} ,{Reward[2].Num,奖励道具2数量} ,{Reward[3].Id,奖励道具3ID} ,{Reward[3].Num,奖励道具3数量} ,{Reward[4].Id,奖励道具4ID} ,{Reward[4].Num,奖励道具4数量} ,{Jump.To,跳转ID} ,{Jump.Param,跳转参数} ,{Times,购买次数} ,{Cost[1].Id,价格道具Id} ,{Cost[1].OrgVal,原价} ,{Cost[1].Val,现价} ,{Award[1].Id,道具} ,{Award[1].Val,数量} ,{Award[2].Id,道具} ,{Award[2].Val,数量} ,{Num,积分}
primary key:
#0 [嘉年华活动]: Periods,Type,Loc
#1 [嘉年华任务组]: Periods,Type,Loc,HelpCol1,Group
#2 [嘉年华任务表]: Periods,Type,Loc,HelpCol1,Group,HelpCol2,Loc2
#3 [每日折扣]: Periods,Type,Loc,HelpCol1,Group,HelpCol2,Loc2
#4 [嘉年华阶段奖励]: Periods,Type,Loc
]]
local _T = LangUtil.Language
return{
	[1] = {
		Days = {
			[1] = {
				Name = "第1天",
				Tabs = {
					[1] = {
						TabName = "每日福利",
						Tasks = {
							[1] = {Id = 101101,Title = "登录游戏",Condition = 4090101,CountType = 2,Param = {[1] = 1},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1701007,Num = 10}}},
							[2] = {Id = 101102,Title = "等级25",Condition = 1050101,CountType = 1,Param = {[1] = 35},Score = 1,Reward = {[1] = {Id = 1601001,Num = 10},[2] = {Id = 1701007,Num = 15}},Jump = {To = 10501}},
							[3] = {Id = 101103,Title = "战力达到80000",Condition = 5030101,CountType = 1,Param = {[1] = 80000},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1701007,Num = 15}}},
							[4] = {Id = 101104,Title = "累计消耗100翡翠叶",Condition = 4040102,CountType = 1,Param = {[1] = 100,[2] = 1401001},Score = 1,Reward = {[1] = {Id = 1604001,Num = 1},[2] = {Id = 1701007,Num = 10},[3] = {Id = 1603002,Num = 100}},Jump = {To = 30200,Param = 1}},
							[5] = {Id = 101105,Title = "累计消耗200翡翠叶",Condition = 4040102,CountType = 1,Param = {[1] = 200,[2] = 1401001},Score = 1,Reward = {[1] = {Id = 1604001,Num = 2},[2] = {Id = 1701007,Num = 20},[3] = {Id = 1603005,Num = 50}},Jump = {To = 30200,Param = 1}}
						}
					},
					[2] = {
						TabName = "冒险关卡",
						Tasks = {
							[1] = {Id = 101201,Title = "通过关卡1-5",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 10105},Score = 1,Reward = {[1] = {Id = 1603001,Num = 75},[2] = {Id = 1603005,Num = 5}},Jump = {To = 10101,Param = 101}},
							[2] = {Id = 101202,Title = "通过关卡1-10",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 10110},Score = 1,Reward = {[1] = {Id = 1603001,Num = 150},[2] = {Id = 1603005,Num = 5},[3] = {Id = 1602001,Num = 1}},Jump = {To = 10101,Param = 102}},
							[3] = {Id = 101203,Title = "通过关卡2-5",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 10205},Score = 1,Reward = {[1] = {Id = 1603001,Num = 75},[2] = {Id = 1603005,Num = 5}},Jump = {To = 10101,Param = 103}},
							[4] = {Id = 101204,Title = "通过关卡2-10",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 10210},Score = 1,Reward = {[1] = {Id = 1603001,Num = 150},[2] = {Id = 1603005,Num = 5},[3] = {Id = 1602001,Num = 2}},Jump = {To = 10101,Param = 104}},
							[5] = {Id = 101205,Title = "通过关卡3-5",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 10305},Score = 1,Reward = {[1] = {Id = 1603001,Num = 75},[2] = {Id = 1603005,Num = 5}},Jump = {To = 10101,Param = 101}},
							[6] = {Id = 101206,Title = "通过关卡3-10",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 10310},Score = 1,Reward = {[1] = {Id = 1603001,Num = 150},[2] = {Id = 1603005,Num = 5},[3] = {Id = 1602001,Num = 3}},Jump = {To = 10101,Param = 102}},
							[7] = {Id = 101207,Title = "通过关卡4-5",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 10405},Score = 1,Reward = {[1] = {Id = 1603001,Num = 75},[2] = {Id = 1603005,Num = 5}},Jump = {To = 10101,Param = 103}},
							[8] = {Id = 101208,Title = "通过关卡4-10",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 10410},Score = 1,Reward = {[1] = {Id = 1603001,Num = 150},[2] = {Id = 1603005,Num = 5},[3] = {Id = 1602001,Num = 4}},Jump = {To = 10101,Param = 104}},
							[9] = {Id = 101209,Title = "通过困难关卡1-5",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 20105},Score = 1,Reward = {[1] = {Id = 1603001,Num = 120},[2] = {Id = 1401002,Num = 1000}},Jump = {To = 10101,Param = 201}},
							[10] = {Id = 101210,Title = "通过困难关卡1-10",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 20110},Score = 1,Reward = {[1] = {Id = 1603001,Num = 180},[2] = {Id = 1401002,Num = 1000},[3] = {Id = 1401010,Num = 100}},Jump = {To = 10101,Param = 202}},
							[11] = {Id = 101211,Title = "通过困难关卡2-5",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 20205},Score = 1,Reward = {[1] = {Id = 1603001,Num = 150},[2] = {Id = 1401002,Num = 1000}},Jump = {To = 10101,Param = 201}},
							[12] = {Id = 101212,Title = "通过困难关卡2-10",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 20210},Score = 1,Reward = {[1] = {Id = 1603001,Num = 225},[2] = {Id = 1401002,Num = 1000},[3] = {Id = 1401010,Num = 200}},Jump = {To = 10101,Param = 202}},
							[13] = {Id = 101213,Title = "快速挂机3次",Condition = 2040201,CountType = 1,Param = {[1] = 3},Score = 1,Reward = {[1] = {Id = 1603001,Num = 100},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1602001,Num = 1}},Jump = {To = 10501}},
							[14] = {Id = 101214,Title = "快速挂机7次",Condition = 2040201,CountType = 1,Param = {[1] = 7},Score = 1,Reward = {[1] = {Id = 1603001,Num = 150},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1602001,Num = 2}},Jump = {To = 10501}},
							[15] = {Id = 101215,Title = "快速挂机12次",Condition = 2040201,CountType = 1,Param = {[1] = 12},Score = 1,Reward = {[1] = {Id = 1603001,Num = 250},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1602001,Num = 3}},Jump = {To = 10501}}
						}
					},
					[3] = {
						TabName = "良将利器",
						Tasks = {
							[1] = {Id = 101301,Title = "进行20次新手守护灵抽卡",Condition = 4060106,CountType = 1,Param = {[1] = 20,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401003,Num = 15000},[2] = {Id = 1401002,Num = 20000},[3] = {Id = 1603001,Num = 100}},Jump = {To = 50500,Param = 4}},
							[2] = {Id = 101302,Title = "进行10次高级守护灵抽卡",Condition = 4060106,CountType = 1,Param = {[1] = 10,[2] = 1},Score = 1,Reward = {[1] = {Id = 1401003,Num = 15000},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1603001,Num = 50}},Jump = {To = 50500,Param = 1}},
							[3] = {Id = 101303,Title = "进行30次高级守护灵抽卡",Condition = 4060106,CountType = 1,Param = {[1] = 30,[2] = 1},Score = 1,Reward = {[1] = {Id = 1401003,Num = 20000},[2] = {Id = 1401002,Num = 30000},[3] = {Id = 1603001,Num = 200}},Jump = {To = 50500,Param = 1}},
							[4] = {Id = 101304,Title = "进行70次高级守护灵抽卡",Condition = 4060106,CountType = 1,Param = {[1] = 70,[2] = 1},Score = 1,Reward = {[1] = {Id = 1401003,Num = 30000},[2] = {Id = 1401002,Num = 40000},[3] = {Id = 1401010,Num = 2000}},Jump = {To = 50500,Param = 1}},
							[5] = {Id = 101305,Title = "穿戴1件橙色装备",Condition = 1060101,CountType = 1,Param = {[1] = 1,[2] = 4},Score = 1,Reward = {[1] = {Id = 1401003,Num = 5000},[2] = {Id = 1401002,Num = 5000},[3] = {Id = 1401015,Num = 100}},Jump = {To = 20600}},
							[6] = {Id = 101306,Title = "穿戴8件橙色装备",Condition = 1060101,CountType = 1,Param = {[1] = 8,[2] = 4},Score = 1,Reward = {[1] = {Id = 1401003,Num = 8000},[2] = {Id = 1401002,Num = 8000},[3] = {Id = 1401015,Num = 300}},Jump = {To = 20600}},
							[7] = {Id = 101307,Title = "穿戴24件橙色装备",Condition = 1060101,CountType = 1,Param = {[1] = 24,[2] = 4},Score = 1,Reward = {[1] = {Id = 1401003,Num = 10000},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401015,Num = 500}},Jump = {To = 20600}},
							[8] = {Id = 101308,Title = "穿戴48件橙色装备",Condition = 1060101,CountType = 1,Param = {[1] = 48,[2] = 4},Score = 1,Reward = {[1] = {Id = 1401003,Num = 15000},[2] = {Id = 1401002,Num = 12000},[3] = {Id = 1401015,Num = 1000}},Jump = {To = 20600}},
							[9] = {Id = 101309,Title = "拥有48件强化强化+20的装备",Condition = 1060203,CountType = 1,Param = {[1] = 48,[2] = 20},Score = 1,Reward = {[1] = {Id = 1401003,Num = 5000},[2] = {Id = 1401002,Num = 20000},[3] = {Id = 1401015,Num = 200}}},
							[10] = {Id = 101310,Title = "拥有48件强化强化+30的装备",Condition = 1060203,CountType = 1,Param = {[1] = 48,[2] = 30},Score = 1,Reward = {[1] = {Id = 1401003,Num = 8000},[2] = {Id = 1401002,Num = 50000},[3] = {Id = 1401015,Num = 300}}},
							[11] = {Id = 101311,Title = "拥有2个SSR守护灵",Condition = 1010507,CountType = 1,Param = {[1] = 2,[2] = 4},Score = 1,Reward = {[1] = {Id = 1401003,Num = 12000},[2] = {Id = 1401005,Num = 6000},[3] = {Id = 1603001,Num = 500}},Jump = {To = 50500}},
							[12] = {Id = 101312,Title = "拥有2个SSR寄灵人",Condition = 1010506,CountType = 1,Param = {[1] = 2,[2] = 4},Score = 1,Reward = {[1] = {Id = 1401003,Num = 12000},[2] = {Id = 1401005,Num = 6000},[3] = {Id = 1603001,Num = 500}},Jump = {To = 50500}}
						}
					},
					[4] = {
						TabName = "折价限购",
						Goods = {
							[1] = {Id = 101401,Times = 1,Title = _T("萌新见面"),Cost = {[1] = {Id = 1401010,OrgVal = 1000,Val = 500}},Score = 1,Award = {[1] = {Id = 1605022,Val = 1}}},
							[2] = {Id = 101402,Times = 1,Title = _T("抽卡不停"),Cost = {[1] = {Id = 1401010,OrgVal = 2880,Val = 1580}},Score = 2,Award = {[1] = {Id = 1602001,Val = 10}}}
						}
					}
				}
			},
			[2] = {
				Name = "第2天",
				Tabs = {
					[1] = {
						TabName = "每日福利",
						Tasks = {
							[1] = {Id = 102101,Title = "登录游戏",Condition = 4090101,CountType = 2,Param = {[1] = 1},Score = 1,Reward = {[1] = {Id = 1605023,Num = 1},[2] = {Id = 1701007,Num = 5}}},
							[2] = {Id = 102102,Title = "等级38",Condition = 1050101,CountType = 1,Param = {[1] = 38},Score = 1,Reward = {[1] = {Id = 1401010,Num = 125},[2] = {Id = 1701007,Num = 5}},Jump = {To = 10501}},
							[3] = {Id = 102103,Title = "战力达到200000",Condition = 5030101,CountType = 1,Param = {[1] = 200000},Score = 1,Reward = {[1] = {Id = 1401010,Num = 125},[2] = {Id = 1701007,Num = 10}}}
						}
					},
					[2] = {
						TabName = "专属武器",
						Tasks = {
							[1] = {Id = 102201,Title = "拥有1个3级的乾位魂珠",Condition = 1030108,CountType = 1,Param = {[1] = 3,[2] = 1},Score = 1,Reward = {[1] = {Id = 1609001,Num = 14}}},
							[2] = {Id = 102202,Title = "拥有1个5级的乾位魂珠",Condition = 1030108,CountType = 1,Param = {[1] = 5,[2] = 1},Score = 1,Reward = {[1] = {Id = 1609001,Num = 42}}},
							[3] = {Id = 102203,Title = "拥有1个7级的乾位魂珠",Condition = 1030108,CountType = 1,Param = {[1] = 7,[2] = 1},Score = 1,Reward = {[1] = {Id = 1609002,Num = 21},[2] = {Id = 1605007,Num = 2}}},
							[4] = {Id = 102204,Title = "拥有1个2级的坤位魂珠",Condition = 1030108,CountType = 1,Param = {[1] = 2,[2] = 2},Score = 1,Reward = {[1] = {Id = 1609001,Num = 21}}},
							[5] = {Id = 102205,Title = "拥有1个4级的坤位魂珠",Condition = 1030108,CountType = 1,Param = {[1] = 4,[2] = 2},Score = 1,Reward = {[1] = {Id = 1609001,Num = 42}}},
							[6] = {Id = 102206,Title = "拥有1个6级的坤位魂珠",Condition = 1030108,CountType = 1,Param = {[1] = 6,[2] = 2},Score = 1,Reward = {[1] = {Id = 1609002,Num = 21},[2] = {Id = 1605007,Num = 2}}},
							[7] = {Id = 102207,Title = "拥有1个2级巽位魂珠",Condition = 1030108,CountType = 1,Param = {[1] = 2,[2] = 3},Score = 1,Reward = {[1] = {Id = 1609001,Num = 21}}},
							[8] = {Id = 102208,Title = "拥有1个4级巽位魂珠",Condition = 1030108,CountType = 1,Param = {[1] = 4,[2] = 3},Score = 1,Reward = {[1] = {Id = 1609002,Num = 18},[2] = {Id = 1605007,Num = 2}}},
							[9] = {Id = 102209,Title = "拥有3个2级的乾位魂珠",Condition = 1030106,CountType = 1,Param = {[1] = 3,[2] = 1,[3] = 2},Score = 1,Reward = {[1] = {Id = 1609001,Num = 10}}},
							[10] = {Id = 102210,Title = "拥有3个4级的乾位魂珠",Condition = 1030106,CountType = 1,Param = {[1] = 3,[2] = 1,[3] = 4},Score = 1,Reward = {[1] = {Id = 1609001,Num = 30}}},
							[11] = {Id = 102211,Title = "拥有3个6级的乾位魂珠",Condition = 1030106,CountType = 1,Param = {[1] = 3,[2] = 1,[3] = 6},Score = 1,Reward = {[1] = {Id = 1609002,Num = 14},[2] = {Id = 1605007,Num = 3}}},
							[12] = {Id = 102212,Title = "拥有3个1级的坤位魂珠",Condition = 1030106,CountType = 1,Param = {[1] = 3,[2] = 2,[3] = 1},Score = 1,Reward = {[1] = {Id = 1609001,Num = 14}}},
							[13] = {Id = 102213,Title = "拥有3个3级的坤位魂珠",Condition = 1030106,CountType = 1,Param = {[1] = 3,[2] = 2,[3] = 3},Score = 1,Reward = {[1] = {Id = 1609001,Num = 30}}},
							[14] = {Id = 102214,Title = "拥有3个5级的坤位魂珠",Condition = 1030106,CountType = 1,Param = {[1] = 3,[2] = 2,[3] = 5},Score = 1,Reward = {[1] = {Id = 1609002,Num = 14},[2] = {Id = 1605007,Num = 3}}},
							[15] = {Id = 102215,Title = "拥有3个1级巽位魂珠",Condition = 1030106,CountType = 1,Param = {[1] = 3,[2] = 3,[3] = 1},Score = 1,Reward = {[1] = {Id = 1609001,Num = 15}}},
							[16] = {Id = 102216,Title = "拥有3个2级巽位魂珠",Condition = 1030106,CountType = 1,Param = {[1] = 3,[2] = 3,[3] = 2},Score = 1,Reward = {[1] = {Id = 1609001,Num = 12},[2] = {Id = 1605007,Num = 3}}},
							[17] = {Id = 102217,Title = "拥有1个解封+1的专属武器",Condition = 1030202,CountType = 1,Param = {[1] = 1},Score = 1,Reward = {[1] = {Id = 1602001,Num = 2}}},
							[18] = {Id = 102218,Title = "拥有1个解封+2的专属武器",Condition = 1030202,CountType = 1,Param = {[1] = 2},Score = 1,Reward = {[1] = {Id = 1602001,Num = 5}}},
							[19] = {Id = 102219,Title = "拥有1个解封+3的专属武器",Condition = 1030202,CountType = 1,Param = {[1] = 3},Score = 1,Reward = {[1] = {Id = 1602001,Num = 10}}},
							[20] = {Id = 102220,Title = "拥有3个解封+1的专属武器",Condition = 1030203,CountType = 1,Param = {[1] = 3,[2] = 1},Score = 1,Reward = {[1] = {Id = 1602001,Num = 3}}}
						}
					},
					[3] = {
						TabName = "竞技与竞争",
						Tasks = {
							[1] = {Id = 102301,Title = "个人竞技场积分达到1200分",Condition = 3010101,CountType = 1,Param = {[1] = 1200},Score = 1,Reward = {[1] = {Id = 1603002,Num = 20},[2] = {Id = 1401002,Num = 15000}},Jump = {To = 40101}},
							[2] = {Id = 102302,Title = "个人竞技场积分达到1300分",Condition = 3010101,CountType = 1,Param = {[1] = 1300},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 24000}},Jump = {To = 40101}},
							[3] = {Id = 102303,Title = "个人竞技场积分达到1500分",Condition = 3010101,CountType = 1,Param = {[1] = 1500},Score = 1,Reward = {[1] = {Id = 1603002,Num = 40},[2] = {Id = 1401002,Num = 30000},[3] = {Id = 1401010,Num = 100}},Jump = {To = 40101}},
							[4] = {Id = 102304,Title = "个人竞技场积分达到1800分",Condition = 3010101,CountType = 1,Param = {[1] = 1800},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 30000},[3] = {Id = 1401010,Num = 200}},Jump = {To = 40101}},
							[5] = {Id = 102305,Title = "在竞技场商店进行5次兑换",Condition = 4010106,CountType = 1,Param = {[1] = 5,[2] = 4},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 15000}},Jump = {To = 30200,Param = 4}},
							[6] = {Id = 102306,Title = "在竞技场商店进行10次兑换",Condition = 4010106,CountType = 1,Param = {[1] = 10,[2] = 4},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 24000}},Jump = {To = 30200,Param = 4}},
							[7] = {Id = 102307,Title = "击杀2个地煞2的恶灵",Condition = 2030102,CountType = 1,Param = {[1] = 2,[2] = 502},Score = 1,Reward = {[1] = {Id = 1603002,Num = 20},[2] = {Id = 1401002,Num = 18000}},Jump = {To = 10301,Param = 502}},
							[8] = {Id = 102308,Title = "击杀2个地煞3的恶灵",Condition = 2030102,CountType = 1,Param = {[1] = 2,[2] = 503},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 24000}},Jump = {To = 10301,Param = 503}},
							[9] = {Id = 102309,Title = "击杀2个地煞4的恶灵",Condition = 2030102,CountType = 1,Param = {[1] = 2,[2] = 504},Score = 1,Reward = {[1] = {Id = 1603002,Num = 40},[2] = {Id = 1401002,Num = 24000},[3] = {Id = 1401010,Num = 50}},Jump = {To = 10301,Param = 504}},
							[10] = {Id = 102310,Title = "击杀2个地煞5的恶灵",Condition = 2030102,CountType = 1,Param = {[1] = 2,[2] = 505},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 24000},[3] = {Id = 1401010,Num = 100}},Jump = {To = 10301,Param = 505}},
							[11] = {Id = 102311,Title = "击杀2个地煞6的恶灵",Condition = 2030102,CountType = 1,Param = {[1] = 2,[2] = 506},Score = 1,Reward = {[1] = {Id = 1603002,Num = 60},[2] = {Id = 1401002,Num = 24000},[3] = {Id = 1401010,Num = 200}},Jump = {To = 10301,Param = 506}},
							[12] = {Id = 102312,Title = "击杀5个恶灵",Condition = 2030101,CountType = 1,Param = {[1] = 5,[2] = 501},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 24000},[3] = {Id = 1401010,Num = 100}},Jump = {To = 10301,Param = 501}},
							[13] = {Id = 102313,Title = "击杀10个恶灵",Condition = 2030101,CountType = 1,Param = {[1] = 10,[2] = 501},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 24000},[3] = {Id = 1401010,Num = 200}},Jump = {To = 10301,Param = 501}}
						}
					},
					[4] = {
						TabName = "折价限购",
						Goods = {
							[1] = {Id = 102401,Times = 1,Title = _T("专属强化"),Cost = {[1] = {Id = 1401010,OrgVal = 800,Val = 400}},Score = 1,Award = {[1] = {Id = 1609001,Val = 100},[2] = {Id = 1609002,Val = 30}}},
							[2] = {Id = 102402,Times = 1,Title = _T("专属解封"),Cost = {[1] = {Id = 1401010,OrgVal = 2000,Val = 1000}},Score = 2,Award = {[1] = {Id = 1605007,Val = 10}}}
						}
					}
				}
			},
			[3] = {
				Name = "第3天",
				Tabs = {
					[1] = {
						TabName = "每日福利",
						Tasks = {
							[1] = {Id = 103101,Title = "登录游戏",Condition = 4090101,CountType = 2,Param = {[1] = 1},Score = 1,Reward = {[1] = {Id = 1602001,Num = 2},[2] = {Id = 1701007,Num = 5}}},
							[2] = {Id = 103102,Title = "等级45",Condition = 1050101,CountType = 1,Param = {[1] = 45},Score = 1,Reward = {[1] = {Id = 1401010,Num = 150},[2] = {Id = 1701007,Num = 5}},Jump = {To = 10501}},
							[3] = {Id = 103103,Title = "战力达到400000",Condition = 5030101,CountType = 1,Param = {[1] = 400000},Score = 1,Reward = {[1] = {Id = 1401010,Num = 150},[2] = {Id = 1701007,Num = 10}}}
						}
					},
					[2] = {
						TabName = "神器",
						Tasks = {
							[1] = {Id = 103201,Title = "神器1达到2级",Condition = 1020101,CountType = 1,Param = {[1] = 2,[2] = 101},Score = 1,Reward = {[1] = {Id = 1603002,Num = 10},[2] = {Id = 1401002,Num = 10000}},Jump = {To = 20500,Param = 101}},
							[2] = {Id = 103202,Title = "神器1达到3级",Condition = 1020101,CountType = 1,Param = {[1] = 3,[2] = 101},Score = 1,Reward = {[1] = {Id = 1603002,Num = 20},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1605018,Num = 1}},Jump = {To = 20500,Param = 101}},
							[3] = {Id = 103203,Title = "神器1达到5级",Condition = 1020101,CountType = 1,Param = {[1] = 5,[2] = 101},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1605018,Num = 2}},Jump = {To = 20500,Param = 101}},
							[4] = {Id = 103204,Title = "神器1达到7级",Condition = 1020101,CountType = 1,Param = {[1] = 7,[2] = 101},Score = 1,Reward = {[1] = {Id = 1603002,Num = 40},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1605018,Num = 3}},Jump = {To = 20500,Param = 101}},
							[5] = {Id = 103205,Title = "神器2达到1级",Condition = 1020101,CountType = 1,Param = {[1] = 1,[2] = 102},Score = 1,Reward = {[1] = {Id = 1603002,Num = 20},[2] = {Id = 1401002,Num = 10000}},Jump = {To = 20500,Param = 102}},
							[6] = {Id = 103206,Title = "神器2达到2级",Condition = 1020101,CountType = 1,Param = {[1] = 2,[2] = 102},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 10000}},Jump = {To = 20500,Param = 102}},
							[7] = {Id = 103207,Title = "神器2达到3级",Condition = 1020101,CountType = 1,Param = {[1] = 3,[2] = 102},Score = 1,Reward = {[1] = {Id = 1603002,Num = 40},[2] = {Id = 1401002,Num = 10000}},Jump = {To = 20500,Param = 102}},
							[8] = {Id = 103208,Title = "神器2达到4级",Condition = 1020101,CountType = 1,Param = {[1] = 4,[2] = 102},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 10000}},Jump = {To = 20500,Param = 102}},
							[9] = {Id = 103209,Title = "神器3达到1级",Condition = 1020101,CountType = 1,Param = {[1] = 1,[2] = 103},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 10000}},Jump = {To = 20500,Param = 103}},
							[10] = {Id = 103210,Title = "神器4达到1级",Condition = 1020101,CountType = 1,Param = {[1] = 1,[2] = 104},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 10000}},Jump = {To = 20500,Param = 104}},
							[11] = {Id = 103211,Title = "拥有1个5级的神器碎片",Condition = 1020202,CountType = 1,Param = {[1] = 5},Score = 1,Reward = {[1] = {Id = 1603002,Num = 20},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1603005,Num = 70},[4] = {Id = 1605018,Num = 1}},Jump = {To = 10601,Param = 604}},
							[12] = {Id = 103212,Title = "拥有1个10级的神器碎片",Condition = 1020202,CountType = 1,Param = {[1] = 10},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1603005,Num = 100},[4] = {Id = 1605018,Num = 2}},Jump = {To = 10601,Param = 604}},
							[13] = {Id = 103213,Title = "拥有2个1级的紫色碎片",Condition = 1020206,CountType = 1,Param = {[1] = 2,[2] = 3,[3] = 1},Score = 1,Reward = {[1] = {Id = 1603002,Num = 20},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1603005,Num = 100},[4] = {Id = 1605018,Num = 1}},Jump = {To = 10601,Param = 604}},
							[14] = {Id = 103214,Title = "拥有5个1级的紫色碎片",Condition = 1020206,CountType = 1,Param = {[1] = 5,[2] = 3,[3] = 1},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1603005,Num = 100},[4] = {Id = 1605018,Num = 2}},Jump = {To = 10601,Param = 604}},
							[15] = {Id = 103215,Title = "拥有5个2级的紫色碎片",Condition = 1020206,CountType = 1,Param = {[1] = 5,[2] = 3,[3] = 2},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1603005,Num = 100},[4] = {Id = 1605018,Num = 3}},Jump = {To = 10601,Param = 604}},
							[16] = {Id = 103216,Title = "拥有1个橙色神器碎片",Condition = 1020207,CountType = 1,Param = {[1] = 1,[2] = 4},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1603005,Num = 100},[4] = {Id = 1605018,Num = 3}},Jump = {To = 10601,Param = 604}},
							[17] = {Id = 103217,Title = "拥有3个橙色神器碎片",Condition = 1020207,CountType = 1,Param = {[1] = 3,[2] = 4},Score = 1,Reward = {[1] = {Id = 1603002,Num = 80},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1603005,Num = 100},[4] = {Id = 1605018,Num = 7}},Jump = {To = 10601,Param = 604}}
						}
					},
					[3] = {
						TabName = "芦花古楼",
						Tasks = {
							[1] = {Id = 103301,Title = "芦花古楼-风达到第10层",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 401},Score = 1,Reward = {[1] = {Id = 1603002,Num = 20},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 50},[4] = {Id = 1401002,Num = 15000}},Jump = {To = 10201,Param = 1}},
							[2] = {Id = 103302,Title = "芦花古楼-风达到第20层",Condition = 2010101,CountType = 1,Param = {[1] = 20,[2] = 401},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 100},[4] = {Id = 1401002,Num = 24000}},Jump = {To = 10201,Param = 1}},
							[3] = {Id = 103303,Title = "芦花古楼--风达到第30层",Condition = 2010101,CountType = 1,Param = {[1] = 30,[2] = 401},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 150},[4] = {Id = 1401002,Num = 36000}},Jump = {To = 10201,Param = 1}},
							[4] = {Id = 103304,Title = "芦花古楼-花达到第10层",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 402},Score = 1,Reward = {[1] = {Id = 1603002,Num = 20},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 100},[4] = {Id = 1401002,Num = 15000}},Jump = {To = 10201,Param = 2}},
							[5] = {Id = 103305,Title = "芦花古楼-花达到第20层",Condition = 2010101,CountType = 1,Param = {[1] = 20,[2] = 402},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 150},[4] = {Id = 1401002,Num = 24000}},Jump = {To = 10201,Param = 2}},
							[6] = {Id = 103306,Title = "芦花古楼-花达到第30层",Condition = 2010101,CountType = 1,Param = {[1] = 30,[2] = 402},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 200},[4] = {Id = 1401002,Num = 36000}},Jump = {To = 10201,Param = 2}},
							[7] = {Id = 103307,Title = "芦花古楼-雪达到第10层",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 403},Score = 1,Reward = {[1] = {Id = 1603002,Num = 20},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 100},[4] = {Id = 1401002,Num = 15000}},Jump = {To = 10201,Param = 3}},
							[8] = {Id = 103308,Title = "芦花古楼-雪达到第20层",Condition = 2010101,CountType = 1,Param = {[1] = 20,[2] = 403},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 150},[4] = {Id = 1401002,Num = 24000}},Jump = {To = 10201,Param = 3}},
							[9] = {Id = 103309,Title = "芦花古楼-雪达到第30层",Condition = 2010101,CountType = 1,Param = {[1] = 30,[2] = 403},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 200},[4] = {Id = 1401002,Num = 36000}},Jump = {To = 10201,Param = 3}},
							[10] = {Id = 103310,Title = "芦花古楼-月达到第10层",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 404},Score = 1,Reward = {[1] = {Id = 1603002,Num = 20},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 100},[4] = {Id = 1401002,Num = 15000}},Jump = {To = 10201,Param = 4}},
							[11] = {Id = 103311,Title = "芦花古楼-月达到第20层",Condition = 2010101,CountType = 1,Param = {[1] = 20,[2] = 404},Score = 1,Reward = {[1] = {Id = 1603002,Num = 30},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 150},[4] = {Id = 1401002,Num = 24000}},Jump = {To = 10201,Param = 4}},
							[12] = {Id = 103312,Title = "芦花古楼-月达到第30层",Condition = 2010101,CountType = 1,Param = {[1] = 30,[2] = 404},Score = 1,Reward = {[1] = {Id = 1603002,Num = 50},[2] = {Id = 1401002,Num = 10000},[3] = {Id = 1401013,Num = 200},[4] = {Id = 1401002,Num = 36000}},Jump = {To = 10201,Param = 4}}
						}
					},
					[4] = {
						TabName = "折价限购",
						Goods = {
							[1] = {Id = 103401,Times = 1,Title = _T("无界之爪"),Cost = {[1] = {Id = 1401010,OrgVal = 800,Val = 400}},Score = 1,Award = {[1] = {Id = 1605021,Val = 5}}},
							[2] = {Id = 103402,Times = 1,Title = _T("技能精修"),Cost = {[1] = {Id = 1401010,OrgVal = 2000,Val = 1000}},Score = 2,Award = {[1] = {Id = 1401005,Val = 5000}}}
						}
					}
				}
			},
			[4] = {
				Name = "第4天",
				Tabs = {
					[1] = {
						TabName = "每日福利",
						Tasks = {
							[1] = {Id = 104101,Title = "登录游戏",Condition = 4090101,CountType = 1,Param = {[1] = 1},Score = 1,Reward = {[1] = {Id = 1602001,Num = 2},[2] = {Id = 1701007,Num = 5}}},
							[2] = {Id = 104102,Title = "等级55",Condition = 1050101,CountType = 1,Param = {[1] = 55},Score = 1,Reward = {[1] = {Id = 1401010,Num = 150},[2] = {Id = 1701007,Num = 5}},Jump = {To = 10501}},
							[3] = {Id = 104103,Title = "战力达到600000",Condition = 5030101,CountType = 1,Param = {[1] = 600000},Score = 1,Reward = {[1] = {Id = 1401010,Num = 150},[2] = {Id = 1701007,Num = 10}}}
						}
					},
					[2] = {
						TabName = "天赋异禀",
						Tasks = {
							[1] = {Id = 104201,Title = "进行4次插槽技能兑换",Condition = 1040103,CountType = 1,Param = {[1] = 3},Score = 1,Reward = {[1] = {Id = 1602001,Num = 2}},Jump = {To = 20400}},
							[2] = {Id = 104202,Title = "进行10次插槽技能兑换",Condition = 1040103,CountType = 1,Param = {[1] = 10},Score = 1,Reward = {[1] = {Id = 1602001,Num = 4}},Jump = {To = 20400}},
							[3] = {Id = 104203,Title = "把3个插槽技能突破+1",Condition = 1040303,CountType = 1,Param = {[1] = 3,[2] = 2},Score = 1,Reward = {[1] = {Id = 1602001,Num = 5}},Jump = {To = 20400}},
							[4] = {Id = 104204,Title = "进行20次天赋洗炼",Condition = 1010401,CountType = 1,Param = {[1] = 20},Score = 1,Reward = {[1] = {Id = 1603025,Num = 5}},Jump = {To = 20100}},
							[5] = {Id = 104205,Title = "进行50次天赋洗炼",Condition = 1010401,CountType = 1,Param = {[1] = 50},Score = 1,Reward = {[1] = {Id = 1603025,Num = 10}},Jump = {To = 20100}},
							[6] = {Id = 104206,Title = "拥有1个专属技能",Condition = 1010404,CountType = 1,Param = {[1] = 1},Score = 1,Reward = {[1] = {Id = 1603025,Num = 10}},Jump = {To = 20400}},
							[7] = {Id = 104207,Title = "拥有4个专属技能",Condition = 1010404,CountType = 1,Param = {[1] = 4},Score = 1,Reward = {[1] = {Id = 1603025,Num = 20}},Jump = {To = 20400}},
							[8] = {Id = 104208,Title = "拥有1个洗炼战力精良的寄灵人",Condition = 1010405,CountType = 1,Param = {[1] = 1,[2] = 3},Score = 1,Reward = {[1] = {Id = 1603025,Num = 5}},Jump = {To = 20100}},
							[9] = {Id = 104209,Title = "拥有3个洗炼战力精良的寄灵人",Condition = 1010405,CountType = 1,Param = {[1] = 3,[2] = 3},Score = 1,Reward = {[1] = {Id = 1603025,Num = 5}},Jump = {To = 20100}},
							[10] = {Id = 104210,Title = "拥有1个洗炼战力极致的寄灵人",Condition = 1010405,CountType = 1,Param = {[1] = 1,[2] = 4},Score = 1,Reward = {[1] = {Id = 1603025,Num = 10}},Jump = {To = 20100}},
							[11] = {Id = 104211,Title = "3个技能人天赋达到3级",Condition = 1040501,CountType = 1,Param = {[1] = 3,[2] = 3},Score = 1,Reward = {[1] = {Id = 1401010,Num = 30}},Jump = {To = 20100}},
							[12] = {Id = 104212,Title = "3个守护灵天赋达到3级",Condition = 1040502,CountType = 1,Param = {[1] = 3,[2] = 3},Score = 1,Reward = {[1] = {Id = 1401010,Num = 30}},Jump = {To = 20200}},
							[13] = {Id = 104213,Title = "3个插槽天赋达到3级",Condition = 1040203,CountType = 1,Param = {[1] = 3,[2] = 3},Score = 1,Reward = {[1] = {Id = 1401010,Num = 30}},Jump = {To = 20100}},
							[14] = {Id = 104214,Title = "1个寄灵人天赋技能升到7级",Condition = 1040501,CountType = 1,Param = {[1] = 1,[2] = 7},Score = 1,Reward = {[1] = {Id = 1401010,Num = 100}},Jump = {To = 20100}},
							[15] = {Id = 104215,Title = "1个守护灵天赋技能升到7级",Condition = 1040502,CountType = 1,Param = {[1] = 1,[2] = 7},Score = 1,Reward = {[1] = {Id = 1401010,Num = 100}},Jump = {To = 20200}},
							[16] = {Id = 104216,Title = "3个寄灵人天赋技能升到5级",Condition = 1040501,CountType = 1,Param = {[1] = 3,[2] = 5},Score = 1,Reward = {[1] = {Id = 1401010,Num = 100}},Jump = {To = 20100}},
							[17] = {Id = 104217,Title = "3个守护灵天赋技能升到5级",Condition = 1040502,CountType = 1,Param = {[1] = 3,[2] = 5},Score = 1,Reward = {[1] = {Id = 1401010,Num = 100}},Jump = {To = 20200}},
							[18] = {Id = 104218,Title = "拥有3个SR的插槽技能",Condition = 1040102,CountType = 1,Param = {[1] = 3,[2] = 3},Score = 1,Reward = {[1] = {Id = 1602001,Num = 1}},Jump = {To = 50500,Param = 1}},
							[19] = {Id = 104219,Title = "拥有6个SR的插槽技能",Condition = 1040102,CountType = 1,Param = {[1] = 6,[2] = 3},Score = 1,Reward = {[1] = {Id = 1602001,Num = 1}},Jump = {To = 50500,Param = 1}},
							[20] = {Id = 104220,Title = "拥有1个SSR插槽技能",Condition = 1040102,CountType = 1,Param = {[1] = 1,[2] = 4},Score = 1,Reward = {[1] = {Id = 1602001,Num = 2}},Jump = {To = 50500,Param = 1}},
							[21] = {Id = 104221,Title = "拥有3个SSR插槽技能",Condition = 1040102,CountType = 1,Param = {[1] = 3,[2] = 4},Score = 1,Reward = {[1] = {Id = 1401010,Num = 200}},Jump = {To = 50500,Param = 1}},
							[22] = {Id = 104222,Title = "拥有6个SSR插槽技能",Condition = 1040102,CountType = 1,Param = {[1] = 6,[2] = 4},Score = 1,Reward = {[1] = {Id = 1401010,Num = 300}},Jump = {To = 50500,Param = 1}}
						}
					},
					[3] = {
						TabName = "深入冒险",
						Tasks = {
							[1] = {Id = 104301,Title = "通关：普通第5章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 105},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603003,Num = 30}},Jump = {To = 10101,Param = 105}},
							[2] = {Id = 104302,Title = "通关：普通第6章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 106},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603003,Num = 45}},Jump = {To = 10101,Param = 106}},
							[3] = {Id = 104303,Title = "通关：普通第7章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 107},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603003,Num = 60}},Jump = {To = 10101,Param = 107}},
							[4] = {Id = 104304,Title = "通关：普通第8章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 108},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603003,Num = 75}},Jump = {To = 10101,Param = 108}},
							[5] = {Id = 104305,Title = "通关：普通第9章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 109},Score = 1,Reward = {[1] = {Id = 1401010,Num = 100},[2] = {Id = 1603003,Num = 90}},Jump = {To = 10101,Param = 109}},
							[6] = {Id = 104306,Title = "通关：困难第3章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 203},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10101,Param = 203}},
							[7] = {Id = 104307,Title = "通关：困难第4章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 204},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10101,Param = 204}},
							[8] = {Id = 104308,Title = "通关：困难第5章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 205},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10101,Param = 205}},
							[9] = {Id = 104309,Title = "通关：困难第6章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 206},Score = 1,Reward = {[1] = {Id = 1401010,Num = 100},[2] = {Id = 1603005,Num = 60}},Jump = {To = 10101,Param = 206}},
							[10] = {Id = 104310,Title = "通关：魂火-青霄",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60102},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10601,Param = 601}},
							[11] = {Id = 104311,Title = "通关：魂火-碧霄",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60103},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10601,Param = 601}},
							[12] = {Id = 104312,Title = "通关：魂火-丹霄",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60104},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 60}},Jump = {To = 10601,Param = 601}},
							[13] = {Id = 104313,Title = "通关：突破-水星",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60202},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10601,Param = 602}},
							[14] = {Id = 104314,Title = "通关：突破-金星",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60203},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10601,Param = 602}},
							[15] = {Id = 104315,Title = "通关：突破-日天",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60204},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 60}},Jump = {To = 10601,Param = 602}},
							[16] = {Id = 104316,Title = "通关：金币本-Ⅱ-困难",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60305},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10601,Param = 603}},
							[17] = {Id = 104317,Title = "通关：金币本-Ⅲ-困难",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60308},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10601,Param = 603}},
							[18] = {Id = 104318,Title = "通关：金币本-Ⅳ-困难",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60310},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 60}},Jump = {To = 10601,Param = 603}},
							[19] = {Id = 104319,Title = "通关：专属武器-神霄 -困难",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60502},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10601,Param = 605}},
							[20] = {Id = 104320,Title = "通关：专属武器-青霄-困难",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60505},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10601,Param = 605}},
							[21] = {Id = 104321,Title = "通关：神器本-凤初-普通",Condition = 2010102,CountType = 1,Param = {[1] = 1,[2] = 60401},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603005,Num = 30}},Jump = {To = 10601,Param = 604}}
						}
					},
					[4] = {
						TabName = "折价限购",
						Goods = {
							[1] = {Id = 104401,Times = 1,Title = _T("抽卡不停"),Cost = {[1] = {Id = 1401010,OrgVal = 2880,Val = 1580}},Score = 2,Award = {[1] = {Id = 1602001,Val = 10}}},
							[2] = {Id = 104402,Times = 1,Title = _T("洗练达人"),Cost = {[1] = {Id = 1401010,OrgVal = 1000,Val = 500}},Score = 1,Award = {[1] = {Id = 1603025,Val = 100}}}
						}
					}
				}
			},
			[5] = {
				Name = "第5天",
				Tabs = {
					[1] = {
						TabName = "每日福利",
						Tasks = {
							[1] = {Id = 105101,Title = "登录游戏",Condition = 4090101,CountType = 2,Param = {[1] = 1},Score = 1,Reward = {[1] = {Id = 1605007,Num = 2},[2] = {Id = 1701007,Num = 5}}},
							[2] = {Id = 105102,Title = "等级60",Condition = 1050101,CountType = 1,Param = {[1] = 60},Score = 1,Reward = {[1] = {Id = 1401010,Num = 200},[2] = {Id = 1701007,Num = 5}},Jump = {To = 10501}},
							[3] = {Id = 105103,Title = "战力达到750000",Condition = 5030101,CountType = 1,Param = {[1] = 750000},Score = 1,Reward = {[1] = {Id = 1401010,Num = 200},[2] = {Id = 1701007,Num = 10}}}
						}
					},
					[2] = {
						TabName = "升星达人",
						Tasks = {
							[1] = {Id = 105201,Title = "拥有1张5星的守护灵",Condition = 1010305,CountType = 1,Param = {[1] = 1,[2] = 5},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 10},[3] = {Id = 1602001,Num = 2}},Jump = {To = 50500,Param = 1}},
							[2] = {Id = 105202,Title = "拥有1张3星SR守护灵",Condition = 1010305,CountType = 1,Param = {[1] = 1,[2] = 3},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 10},[3] = {Id = 1602001,Num = 1}},Jump = {To = 50500,Param = 1}},
							[3] = {Id = 105203,Title = "拥有3张3星SR守护灵",Condition = 1010305,CountType = 1,Param = {[1] = 3,[2] = 3},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 20},[3] = {Id = 1602001,Num = 2}},Jump = {To = 50500,Param = 1}},
							[4] = {Id = 105204,Title = "拥有1张4星SR守护灵",Condition = 1010305,CountType = 1,Param = {[1] = 1,[2] = 4},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 20},[3] = {Id = 1602001,Num = 2}},Jump = {To = 50500,Param = 1}},
							[5] = {Id = 105205,Title = "拥有1张5星SR守护灵",Condition = 1010305,CountType = 1,Param = {[1] = 1,[2] = 5},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 30},[3] = {Id = 1602001,Num = 3}},Jump = {To = 50500,Param = 1}},
							[6] = {Id = 105206,Title = "拥有1张2星SSR守护灵",Condition = 1010305,CountType = 1,Param = {[1] = 1,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 40},[3] = {Id = 1602001,Num = 1}},Jump = {To = 50500,Param = 1}},
							[7] = {Id = 105207,Title = "拥有3张2星SSR守护灵",Condition = 1010305,CountType = 1,Param = {[1] = 3,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 50},[3] = {Id = 1602001,Num = 4}},Jump = {To = 50500,Param = 1}},
							[8] = {Id = 105208,Title = "拥有1张5星的寄灵人",Condition = 1010306,CountType = 1,Param = {[1] = 1,[2] = 5},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 10},[3] = {Id = 1602001,Num = 2}},Jump = {To = 50500,Param = 3}},
							[9] = {Id = 105209,Title = "拥有1张3星SR寄灵人",Condition = 1010306,CountType = 1,Param = {[1] = 1,[2] = 3},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 10},[3] = {Id = 1602001,Num = 1}},Jump = {To = 50500,Param = 3}},
							[10] = {Id = 105210,Title = "拥有3张3星SR寄灵人",Condition = 1010306,CountType = 1,Param = {[1] = 3,[2] = 3},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 20},[3] = {Id = 1602001,Num = 2}},Jump = {To = 50500,Param = 3}},
							[11] = {Id = 105211,Title = "拥有1张4星SR寄灵人",Condition = 1010306,CountType = 1,Param = {[1] = 1,[2] = 4},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 20},[3] = {Id = 1602001,Num = 2}},Jump = {To = 50500,Param = 3}},
							[12] = {Id = 105212,Title = "拥有1张5星SR寄灵人",Condition = 1010306,CountType = 1,Param = {[1] = 1,[2] = 5},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 30},[3] = {Id = 1602001,Num = 3}},Jump = {To = 50500,Param = 3}},
							[13] = {Id = 105213,Title = "拥有1张2星SSR寄灵人",Condition = 1010306,CountType = 1,Param = {[1] = 1,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 40},[3] = {Id = 1602001,Num = 1}},Jump = {To = 50500,Param = 3}},
							[14] = {Id = 105214,Title = "拥有3张2星SSR寄灵人",Condition = 1010306,CountType = 1,Param = {[1] = 3,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 50},[3] = {Id = 1602001,Num = 4}},Jump = {To = 50500,Param = 3}}
						}
					},
					[3] = {
						TabName = "实时竞技",
						Tasks = {
							[1] = {Id = 105301,Title = "参加5次实时竞技",Condition = 3020201,CountType = 1,Param = {[1] = 5},Score = 1,Reward = {[1] = {Id = 1401002,Num = 5000},[2] = {Id = 1603003,Num = 10},[3] = {Id = 1401010,Num = 50}},Jump = {To = 40201}},
							[2] = {Id = 105302,Title = "参加10次实时竞技",Condition = 3020201,CountType = 1,Param = {[1] = 10},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603003,Num = 10},[3] = {Id = 1401010,Num = 100}},Jump = {To = 40201}},
							[3] = {Id = 105303,Title = "参加20次实时竞技",Condition = 3020201,CountType = 1,Param = {[1] = 20},Score = 1,Reward = {[1] = {Id = 1401002,Num = 15000},[2] = {Id = 1603003,Num = 20},[3] = {Id = 1401010,Num = 200}},Jump = {To = 40201}},
							[4] = {Id = 105304,Title = "参加50次实时竞技",Condition = 3020201,CountType = 1,Param = {[1] = 50},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 30},[3] = {Id = 1401010,Num = 500}},Jump = {To = 40201}},
							[5] = {Id = 105305,Title = "实时竞技达到1200分",Condition = 3020101,CountType = 1,Param = {[1] = 1200},Score = 1,Reward = {[1] = {Id = 1401002,Num = 5000},[2] = {Id = 1603003,Num = 10},[3] = {Id = 1602001,Num = 1}},Jump = {To = 40201}},
							[6] = {Id = 105306,Title = "实时竞技达到1300分",Condition = 3020101,CountType = 1,Param = {[1] = 1300},Score = 1,Reward = {[1] = {Id = 1401002,Num = 10000},[2] = {Id = 1603003,Num = 10},[3] = {Id = 1602001,Num = 2}},Jump = {To = 40201}},
							[7] = {Id = 105307,Title = "实时竞技达到1400分",Condition = 3020101,CountType = 1,Param = {[1] = 1400},Score = 1,Reward = {[1] = {Id = 1401002,Num = 15000},[2] = {Id = 1603003,Num = 20},[3] = {Id = 1602001,Num = 3}},Jump = {To = 40201}},
							[8] = {Id = 105308,Title = "实时竞技达到1500分",Condition = 3020101,CountType = 1,Param = {[1] = 1500},Score = 1,Reward = {[1] = {Id = 1401002,Num = 20000},[2] = {Id = 1603003,Num = 30},[3] = {Id = 1602001,Num = 4}},Jump = {To = 40201}},
							[9] = {Id = 105309,Title = "实时竞技达到1600分",Condition = 3020101,CountType = 1,Param = {[1] = 1600},Score = 1,Reward = {[1] = {Id = 1401002,Num = 25000},[2] = {Id = 1603003,Num = 40},[3] = {Id = 1602001,Num = 5}},Jump = {To = 40201}},
							[10] = {Id = 105310,Title = "实时竞技达到1800分",Condition = 3020101,CountType = 1,Param = {[1] = 1800},Score = 1,Reward = {[1] = {Id = 1401002,Num = 30000},[2] = {Id = 1603003,Num = 50},[3] = {Id = 1602001,Num = 6}},Jump = {To = 40201}}
						}
					},
					[4] = {
						TabName = "折价限购",
						Goods = {
							[1] = {Id = 105401,Times = 1,Title = _T("神器惊喜"),Cost = {[1] = {Id = 1401010,OrgVal = 900,Val = 400}},Score = 1,Award = {[1] = {Id = 1605018,Val = 3}}},
							[2] = {Id = 105402,Times = 1,Title = _T("专属解封"),Cost = {[1] = {Id = 1401010,OrgVal = 2000,Val = 1000}},Score = 2,Award = {[1] = {Id = 1605007,Val = 10}}}
						}
					}
				}
			},
			[6] = {
				Name = "第6天",
				Tabs = {
					[1] = {
						TabName = "每日福利",
						Tasks = {
							[1] = {Id = 106101,Title = "登录游戏",Condition = 4090101,CountType = 2,Param = {[1] = 1},Score = 1,Reward = {[1] = {Id = 1603025,Num = 20},[2] = {Id = 1701007,Num = 5}}},
							[2] = {Id = 106102,Title = "等级65",Condition = 1050101,CountType = 1,Param = {[1] = 65},Score = 1,Reward = {[1] = {Id = 1401010,Num = 200},[2] = {Id = 1701007,Num = 5}},Jump = {To = 10501}},
							[3] = {Id = 106103,Title = "战力达到1000000",Condition = 5030101,CountType = 1,Param = {[1] = 1000000},Score = 1,Reward = {[1] = {Id = 1401010,Num = 200},[2] = {Id = 1701007,Num = 10}}}
						}
					},
					[2] = {
						TabName = "神装利器",
						Tasks = {
							[1] = {Id = 106201,Title = "穿戴8件60级以上橙装",Condition = 1060102,CountType = 1,Param = {[1] = 8,[2] = 3,[3] = 60},Score = 1,Reward = {[1] = {Id = 1401002,Num = 9000},[2] = {Id = 1603003,Num = 5}},Jump = {To = 20501}},
							[2] = {Id = 106202,Title = "穿戴16件60级以上橙装",Condition = 1060102,CountType = 1,Param = {[1] = 16,[2] = 3,[3] = 60},Score = 1,Reward = {[1] = {Id = 1401002,Num = 22500},[2] = {Id = 1603003,Num = 10}},Jump = {To = 20501}},
							[3] = {Id = 106203,Title = "穿戴24件60级以上橙装",Condition = 1060102,CountType = 1,Param = {[1] = 24,[2] = 3,[3] = 60},Score = 1,Reward = {[1] = {Id = 1401002,Num = 36000},[2] = {Id = 1603003,Num = 15}},Jump = {To = 20501}},
							[4] = {Id = 106204,Title = "穿戴32件60级以上橙装",Condition = 1060102,CountType = 1,Param = {[1] = 32,[2] = 3,[3] = 60},Score = 1,Reward = {[1] = {Id = 1401002,Num = 45000},[2] = {Id = 1603003,Num = 20}},Jump = {To = 20501}},
							[5] = {Id = 106205,Title = "穿戴48件60级以上橙装",Condition = 1060102,CountType = 1,Param = {[1] = 48,[2] = 3,[3] = 60},Score = 1,Reward = {[1] = {Id = 1401002,Num = 67500},[2] = {Id = 1603003,Num = 25}},Jump = {To = 20501}},
							[6] = {Id = 106206,Title = "拥有1件40级以上套装装备",Condition = 1060103,CountType = 1,Param = {[1] = 1,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401002,Num = 9000},[2] = {Id = 1603003,Num = 5}},Jump = {To = 20501}},
							[7] = {Id = 106207,Title = "拥有5件40级以上套装装备",Condition = 1060103,CountType = 1,Param = {[1] = 5,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401002,Num = 22500},[2] = {Id = 1603003,Num = 10}},Jump = {To = 20501}},
							[8] = {Id = 106208,Title = "拥有8件40级以上套装装备",Condition = 1060103,CountType = 1,Param = {[1] = 8,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401002,Num = 31500},[2] = {Id = 1603003,Num = 15}},Jump = {To = 20501}},
							[9] = {Id = 106209,Title = "拥有16件40级以上套装装备",Condition = 1060103,CountType = 1,Param = {[1] = 16,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401002,Num = 40500},[2] = {Id = 1603003,Num = 20}},Jump = {To = 20501}},
							[10] = {Id = 106210,Title = "拥有24件40级以上套装装备",Condition = 1060103,CountType = 1,Param = {[1] = 24,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401002,Num = 45000},[2] = {Id = 1603003,Num = 25}},Jump = {To = 20501}},
							[11] = {Id = 106211,Title = "拥有32件40级以上套装装备",Condition = 1060103,CountType = 1,Param = {[1] = 32,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401002,Num = 54000},[2] = {Id = 1603003,Num = 30}},Jump = {To = 20501}},
							[12] = {Id = 106212,Title = "拥有48件40级以上套装装备",Condition = 1060103,CountType = 1,Param = {[1] = 48,[2] = 2},Score = 1,Reward = {[1] = {Id = 1401002,Num = 67500},[2] = {Id = 1603003,Num = 40}},Jump = {To = 20501}}
						}
					},
					[3] = {
						TabName = "大撒币",
						Tasks = {
							[1] = {Id = 106301,Title = "在杂货店花费200灵玉",Condition = 4010104,CountType = 1,Param = {[1] = 200,[2] = 1401010},Score = 1,Reward = {[1] = {Id = 1401010,Num = 15},[2] = {Id = 1603003,Num = 5}},Jump = {To = 30200,Param = 1}},
							[2] = {Id = 106302,Title = "在杂货店花费500灵玉",Condition = 4010104,CountType = 1,Param = {[1] = 500,[2] = 1401010},Score = 1,Reward = {[1] = {Id = 1401010,Num = 35},[2] = {Id = 1603003,Num = 10}},Jump = {To = 30200,Param = 1}},
							[3] = {Id = 106303,Title = "在杂货店花费1000灵玉",Condition = 4010104,CountType = 1,Param = {[1] = 1000,[2] = 1401010},Score = 1,Reward = {[1] = {Id = 1401010,Num = 80},[2] = {Id = 1603003,Num = 15}},Jump = {To = 30200,Param = 1}},
							[4] = {Id = 106304,Title = "在杂货店花费2000灵玉",Condition = 4010104,CountType = 1,Param = {[1] = 2000,[2] = 1401010},Score = 1,Reward = {[1] = {Id = 1401010,Num = 200},[2] = {Id = 1603003,Num = 20}},Jump = {To = 30200,Param = 1}},
							[5] = {Id = 106305,Title = "在杂货店花费3000灵玉",Condition = 4010104,CountType = 1,Param = {[1] = 3000,[2] = 1401010},Score = 1,Reward = {[1] = {Id = 1401010,Num = 250},[2] = {Id = 1603003,Num = 25}},Jump = {To = 30200,Param = 1}},
							[6] = {Id = 106306,Title = "在杂货店花费5000灵玉",Condition = 4010104,CountType = 1,Param = {[1] = 5000,[2] = 1401010},Score = 1,Reward = {[1] = {Id = 1401010,Num = 520},[2] = {Id = 1603003,Num = 30}},Jump = {To = 30200,Param = 1}},
							[7] = {Id = 106307,Title = "在杂货店花费10000灵玉",Condition = 4010104,CountType = 1,Param = {[1] = 10000,[2] = 1401010},Score = 1,Reward = {[1] = {Id = 1401002,Num = 1200},[2] = {Id = 1603003,Num = 40}},Jump = {To = 30200,Param = 1}},
							[8] = {Id = 106308,Title = "在杂货店花费50000金币",Condition = 4010104,CountType = 1,Param = {[1] = 50000,[2] = 1401002},Score = 1,Reward = {[1] = {Id = 1401002,Num = 5000},[2] = {Id = 1603003,Num = 5}},Jump = {To = 30200,Param = 3}},
							[9] = {Id = 106309,Title = "在杂货店花费100000金币",Condition = 4010104,CountType = 1,Param = {[1] = 100000,[2] = 1401002},Score = 1,Reward = {[1] = {Id = 1401002,Num = 8000},[2] = {Id = 1603003,Num = 10}},Jump = {To = 30200,Param = 3}},
							[10] = {Id = 106310,Title = "在杂货店花费200000金币",Condition = 4010104,CountType = 1,Param = {[1] = 200000,[2] = 1401002},Score = 1,Reward = {[1] = {Id = 1401002,Num = 18000},[2] = {Id = 1603003,Num = 15}},Jump = {To = 30200,Param = 3}},
							[11] = {Id = 106311,Title = "在杂货店花费500000金币",Condition = 4010104,CountType = 1,Param = {[1] = 500000,[2] = 1401002},Score = 1,Reward = {[1] = {Id = 1401002,Num = 62800},[2] = {Id = 1603003,Num = 20}},Jump = {To = 30200,Param = 3}},
							[12] = {Id = 106312,Title = "在杂货店花费800000金币",Condition = 4010104,CountType = 1,Param = {[1] = 800000,[2] = 1401002},Score = 1,Reward = {[1] = {Id = 1401002,Num = 81800},[2] = {Id = 1603003,Num = 25}},Jump = {To = 30200,Param = 3}},
							[13] = {Id = 106313,Title = "在杂货店花费2000000金币",Condition = 4010104,CountType = 1,Param = {[1] = 1000000,[2] = 1401002},Score = 1,Reward = {[1] = {Id = 1401002,Num = 128000},[2] = {Id = 1603003,Num = 30}},Jump = {To = 30200,Param = 4}},
							[14] = {Id = 106314,Title = "在积分商店花费100斗魂值",Condition = 4010104,CountType = 1,Param = {[1] = 100,[2] = 1401008},Score = 1,Reward = {[1] = {Id = 1401008,Num = 10},[2] = {Id = 1603003,Num = 10}},Jump = {To = 30200,Param = 4}},
							[15] = {Id = 106315,Title = "在积分商店花费200斗魂值",Condition = 4010104,CountType = 1,Param = {[1] = 200,[2] = 1401008},Score = 1,Reward = {[1] = {Id = 1401008,Num = 20},[2] = {Id = 1603003,Num = 15}},Jump = {To = 30200,Param = 4}},
							[16] = {Id = 106316,Title = "在积分商店花费500斗魂值",Condition = 4010104,CountType = 1,Param = {[1] = 500,[2] = 1401008},Score = 1,Reward = {[1] = {Id = 1401008,Num = 70},[2] = {Id = 1603003,Num = 20}},Jump = {To = 30200,Param = 4}},
							[17] = {Id = 106317,Title = "在积分商店花费800斗魂值",Condition = 4010104,CountType = 1,Param = {[1] = 800,[2] = 1401008},Score = 1,Reward = {[1] = {Id = 1401008,Num = 100},[2] = {Id = 1603003,Num = 25}},Jump = {To = 30200,Param = 4}},
							[18] = {Id = 106318,Title = "在积分商店花费100芦花币",Condition = 4010104,CountType = 1,Param = {[1] = 100,[2] = 1401013},Score = 1,Reward = {[1] = {Id = 1401013,Num = 10},[2] = {Id = 1603003,Num = 10}},Jump = {To = 30200,Param = 5}},
							[19] = {Id = 106319,Title = "在积分商店花费200芦花币",Condition = 4010104,CountType = 1,Param = {[1] = 200,[2] = 1401013},Score = 1,Reward = {[1] = {Id = 1401013,Num = 20},[2] = {Id = 1603003,Num = 15}},Jump = {To = 30200,Param = 5}},
							[20] = {Id = 106320,Title = "在积分商店花费500芦花币",Condition = 4010104,CountType = 1,Param = {[1] = 500,[2] = 1401013},Score = 1,Reward = {[1] = {Id = 1401013,Num = 70},[2] = {Id = 1603003,Num = 20}},Jump = {To = 30200,Param = 5}},
							[21] = {Id = 106321,Title = "在积分商店花费800芦花币",Condition = 4010104,CountType = 1,Param = {[1] = 800,[2] = 1401013},Score = 1,Reward = {[1] = {Id = 1401013,Num = 100},[2] = {Id = 1603003,Num = 25}},Jump = {To = 30200,Param = 5}},
							[22] = {Id = 106322,Title = "进行10次点金",Condition = 4080101,CountType = 1,Param = {[1] = 10},Score = 1,Reward = {[1] = {Id = 1401010,Num = 20},[2] = {Id = 1603003,Num = 10}},Jump = {To = 60100}},
							[23] = {Id = 106323,Title = "进行30次点金",Condition = 4080101,CountType = 1,Param = {[1] = 30},Score = 1,Reward = {[1] = {Id = 1401010,Num = 80},[2] = {Id = 1603003,Num = 15}},Jump = {To = 60100}},
							[24] = {Id = 106324,Title = "进行50次点金",Condition = 4080101,CountType = 1,Param = {[1] = 50},Score = 1,Reward = {[1] = {Id = 1401010,Num = 100},[2] = {Id = 1603003,Num = 20}},Jump = {To = 60100}},
							[25] = {Id = 106325,Title = "进行80次点金",Condition = 4080101,CountType = 1,Param = {[1] = 80},Score = 1,Reward = {[1] = {Id = 1401010,Num = 250},[2] = {Id = 1603003,Num = 25}},Jump = {To = 60100}},
							[26] = {Id = 106326,Title = "进行120次点金",Condition = 4080101,CountType = 1,Param = {[1] = 120},Score = 1,Reward = {[1] = {Id = 1401010,Num = 350},[2] = {Id = 1603003,Num = 30}},Jump = {To = 60100}},
							[27] = {Id = 106327,Title = "进行150次点金",Condition = 4080101,CountType = 1,Param = {[1] = 150},Score = 1,Reward = {[1] = {Id = 1401010,Num = 450},[2] = {Id = 1603003,Num = 40}},Jump = {To = 60100}}
						}
					},
					[4] = {
						TabName = "折价限购",
						Goods = {
							[1] = {Id = 106401,Times = 1,Title = _T("熔炼达人"),Cost = {[1] = {Id = 1401010,OrgVal = 2000,Val = 1000}},Score = 1,Award = {[1] = {Id = 1401015,Val = 2000}}},
							[2] = {Id = 106402,Times = 1,Title = _T("抽卡不停"),Cost = {[1] = {Id = 1401010,OrgVal = 2880,Val = 1580}},Score = 2,Award = {[1] = {Id = 1601001,Val = 10}}}
						}
					}
				}
			},
			[7] = {
				Name = "第7天",
				Tabs = {
					[1] = {
						TabName = "每日福利",
						Tasks = {
							[1] = {Id = 107101,Title = "登录游戏",Condition = 4090101,CountType = 2,Param = {[1] = 1},Score = 1,Reward = {[1] = {Id = 1605020,Num = 1},[2] = {Id = 1701007,Num = 5}}},
							[2] = {Id = 107102,Title = "等级70",Condition = 1050101,CountType = 1,Param = {[1] = 70},Score = 1,Reward = {[1] = {Id = 1401010,Num = 250},[2] = {Id = 1701007,Num = 5}},Jump = {To = 10501}},
							[3] = {Id = 107103,Title = "战力达到1300000",Condition = 5030101,CountType = 1,Param = {[1] = 1300000},Score = 1,Reward = {[1] = {Id = 1401010,Num = 250},[2] = {Id = 1701007,Num = 10}}}
						}
					},
					[2] = {
						TabName = "极限突破",
						Tasks = {
							[1] = {Id = 107201,Title = "地狱道达到众合",Condition = 5010101,CountType = 1,Param = {[1] = 4},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 5}},Jump = {To = 20300}},
							[2] = {Id = 107202,Title = "地狱道达到众合+1",Condition = 5010101,CountType = 1,Param = {[1] = 5},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 10}},Jump = {To = 20300}},
							[3] = {Id = 107203,Title = "地狱道达到众合+2",Condition = 5010101,CountType = 1,Param = {[1] = 6},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 15}},Jump = {To = 20300}},
							[4] = {Id = 107204,Title = "地狱道达到叫唤",Condition = 5010101,CountType = 1,Param = {[1] = 7},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 20}},Jump = {To = 20300}},
							[5] = {Id = 107205,Title = "地狱道达到叫唤+1",Condition = 5010101,CountType = 1,Param = {[1] = 8},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 30}},Jump = {To = 20300}},
							[6] = {Id = 107206,Title = "地狱道达到叫唤+2",Condition = 5010101,CountType = 1,Param = {[1] = 9},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 40}},Jump = {To = 20300}},
							[7] = {Id = 107207,Title = "地狱道达到大叫唤",Condition = 5010101,CountType = 1,Param = {[1] = 10},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 50}},Jump = {To = 20300}},
							[8] = {Id = 107208,Title = "3个守护灵达到突破+8",Condition = 1010203,CountType = 1,Param = {[1] = 3,[2] = 9},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 5}},Jump = {To = 20200}},
							[9] = {Id = 107209,Title = "3个守护灵达到突破+9",Condition = 1010203,CountType = 1,Param = {[1] = 3,[2] = 10},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 10}},Jump = {To = 20200}},
							[10] = {Id = 107210,Title = "3个守护灵达到突破+10",Condition = 1010203,CountType = 1,Param = {[1] = 3,[2] = 11},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 15}},Jump = {To = 20200}},
							[11] = {Id = 107211,Title = "1个守护灵达到突破+11",Condition = 1010203,CountType = 1,Param = {[1] = 1,[2] = 12},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 20}},Jump = {To = 20200}},
							[12] = {Id = 107212,Title = "3个守护灵达到突破+11",Condition = 1010203,CountType = 1,Param = {[1] = 3,[2] = 12},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 25}},Jump = {To = 20200}},
							[13] = {Id = 107213,Title = "6个守护灵达到突破+6",Condition = 1010203,CountType = 1,Param = {[1] = 6,[2] = 7},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 30}},Jump = {To = 20200}},
							[14] = {Id = 107214,Title = "6个守护灵达到突破+7",Condition = 1010203,CountType = 1,Param = {[1] = 6,[2] = 8},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 40}},Jump = {To = 20200}},
							[15] = {Id = 107215,Title = "6个守护灵达到突破+8",Condition = 1010203,CountType = 1,Param = {[1] = 6,[2] = 9},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 50}},Jump = {To = 20200}}
						}
					},
					[3] = {
						TabName = "极限挑战",
						Tasks = {
							[1] = {Id = 107301,Title = "通关普通第9章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 109},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 5}},Jump = {To = 10101,Param = 109}},
							[2] = {Id = 107302,Title = "通关普通第10章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 110},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 10}},Jump = {To = 10101,Param = 110}},
							[3] = {Id = 107303,Title = "通关普通第11章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 111},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 20}},Jump = {To = 10101,Param = 111}},
							[4] = {Id = 107304,Title = "通关普通第12章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 112},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 30}},Jump = {To = 10101,Param = 112}},
							[5] = {Id = 107305,Title = "通关普通第13章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 113},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 40}},Jump = {To = 10101,Param = 113}},
							[6] = {Id = 107306,Title = "通关困难第7章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 207},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 5}},Jump = {To = 10101,Param = 207}},
							[7] = {Id = 107307,Title = "通关困难第8章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 208},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 10}},Jump = {To = 10101,Param = 208}},
							[8] = {Id = 107308,Title = "通关困难第9章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 209},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 20}},Jump = {To = 10101,Param = 209}},
							[9] = {Id = 107309,Title = "通关困难第10章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 210},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 30}},Jump = {To = 10101,Param = 210}},
							[10] = {Id = 107310,Title = "通关困难第11章",Condition = 2010101,CountType = 1,Param = {[1] = 10,[2] = 211},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 40}},Jump = {To = 10101,Param = 211}},
							[11] = {Id = 107311,Title = "通关芦花-风30层",Condition = 2010101,CountType = 1,Param = {[1] = 30,[2] = 401},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 10}},Jump = {To = 10201,Param = 1}},
							[12] = {Id = 107312,Title = "通关芦花-风50层",Condition = 2010101,CountType = 1,Param = {[1] = 50,[2] = 401},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 20}},Jump = {To = 10201,Param = 1}},
							[13] = {Id = 107313,Title = "通关芦花-花30层",Condition = 2010101,CountType = 1,Param = {[1] = 30,[2] = 402},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 10}},Jump = {To = 10201,Param = 2}},
							[14] = {Id = 107314,Title = "通关芦花-花50层",Condition = 2010101,CountType = 1,Param = {[1] = 50,[2] = 402},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 20}},Jump = {To = 10201,Param = 2}},
							[15] = {Id = 107315,Title = "通关芦花-雪30层",Condition = 2010101,CountType = 1,Param = {[1] = 30,[2] = 403},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 10}},Jump = {To = 10201,Param = 3}},
							[16] = {Id = 107316,Title = "通关芦花-雪50层",Condition = 2010101,CountType = 1,Param = {[1] = 50,[2] = 403},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 20}},Jump = {To = 10201,Param = 3}},
							[17] = {Id = 107317,Title = "通关芦花-月30层",Condition = 2010101,CountType = 1,Param = {[1] = 30,[2] = 404},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 10}},Jump = {To = 10201,Param = 4}},
							[18] = {Id = 107318,Title = "通关芦花-月50层",Condition = 2010101,CountType = 1,Param = {[1] = 50,[2] = 404},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 20}},Jump = {To = 10201,Param = 4}},
							[19] = {Id = 107319,Title = "击杀一个地煞6的恶灵",Condition = 2030101,CountType = 1,Param = {[1] = 1,[2] = 506},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 30}},Jump = {To = 10301,Param = 506}},
							[20] = {Id = 107320,Title = "击杀一个地煞7的恶灵",Condition = 2030101,CountType = 1,Param = {[1] = 1,[2] = 507},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 40}},Jump = {To = 10301,Param = 507}},
							[21] = {Id = 107321,Title = "击杀一个地煞8的恶灵",Condition = 2030101,CountType = 1,Param = {[1] = 1,[2] = 508},Score = 1,Reward = {[1] = {Id = 1401002,Num = 12500},[2] = {Id = 1603003,Num = 50}},Jump = {To = 10301,Param = 508}}
						}
					},
					[4] = {
						TabName = "折价限购",
						Goods = {
							[1] = {Id = 107401,Times = 1,Title = _T("紫色材料"),Cost = {[1] = {Id = 1401010,OrgVal = 1000,Val = 500}},Score = 1,Award = {[1] = {Id = 1603003,Val = 1000}}},
							[2] = {Id = 107402,Times = 1,Title = _T("橙色材料"),Cost = {[1] = {Id = 1401010,OrgVal = 1000,Val = 500}},Score = 1,Award = {[1] = {Id = 1603004,Val = 200}}},
							[3] = {Id = 107403,Times = 2,Title = _T("初级三才"),Cost = {[1] = {Id = 1401010,OrgVal = 500,Val = 250}},Score = 1,Award = {[1] = {Id = 1603005,Val = 50}}},
							[4] = {Id = 107404,Times = 2,Title = _T("中级三才"),Cost = {[1] = {Id = 1401010,OrgVal = 1200,Val = 600}},Score = 1,Award = {[1] = {Id = 1603006,Val = 50}}},
							[5] = {Id = 107405,Times = 2,Title = _T("高级三才"),Cost = {[1] = {Id = 1401010,OrgVal = 3500,Val = 1750}},Score = 2,Award = {[1] = {Id = 1603007,Val = 50}}},
							[6] = {Id = 107406,Times = 3,Title = _T("抽卡不停"),Cost = {[1] = {Id = 1401010,OrgVal = 2880,Val = 1580}},Score = 2,Award = {[1] = {Id = 1602001,Val = 10}}}
						}
					}
				}
			}
		},
		Awards = {
			[1] = {Id = 100001,Num = 15,Reward = {[1] = {Id = 1602001,Num = 10}}},
			[2] = {Id = 100002,Num = 30,Reward = {[1] = {Id = 1602001,Num = 15}}},
			[3] = {Id = 100003,Num = 50,Reward = {[1] = {Id = 1602001,Num = 20}}},
			[4] = {Id = 100004,Num = 100,Reward = {[1] = {Id = 1602001,Num = 25}}},
			[5] = {Id = 100005,Num = 300,Reward = {[1] = {Id = 1602001,Num = 30}}}
		}
	}
}