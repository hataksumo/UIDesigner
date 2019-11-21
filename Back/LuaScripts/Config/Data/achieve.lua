--[[
output from excel achieve.成就.xlsx
--note:
1级成就页签
2级成就页签
各成就项的配置
colums:
{TabA,ID} ,{Name,名字} ,{TotalPoint,总分} ,{ModuleType,模块类型
1、卡牌层
9001、国战-赛季1} ,{HelpCol1,辅助列1} ,{TabB,ID2} ,{HelpCol2,辅助列2} ,{Id,成就ID} ,{Des,成就描述} ,{Condition,条件类型} ,{Param[1],参数1} ,{Param[2],参数2} ,{Award[1].id,掉落ID1} ,{Award[1].val,掉落值1} ,{Award[2].id,掉落ID2} ,{Award[2].val,掉落值2} ,{RewardPonits,}
primary key:
#0 [成就1级页签]: TabA
#1 [成就2级页签]: TabA,HelpCol1,TabB
#2 [成就领奖]: TabA,HelpCol1,TabB,HelpCol2,Id
]]
local _T = LangUtil.Language
return{
	[1] = {
		Name = _T("足迹"),
		TotalPoint = 240,
		ModuleType = 1,
		SubTabs = {
			[1] = {
				Name = _T("历程"),
				Achieves = {
					[1010101] = {Name = _T("次日之约"),Des = _T("累计登陆%s天"),Condition = 4090103,Param = {[1] = 2},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1010102] = {Name = _T("七日之约"),Des = _T("累计登陆%s天"),Condition = 4090103,Param = {[1] = 7},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1010103] = {Name = _T("满月之约"),Des = _T("累计登陆%s天"),Condition = 4090103,Param = {[1] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1010104] = {Name = _T("百日之约"),Des = _T("累计登陆%s天"),Condition = 4090103,Param = {[1] = 100},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[2] = {
				Name = _T("财富"),
				Achieves = {
					[1020101] = {Name = _T("腰缠万贯（一）"),Des = _T("累计获得%s游戏币"),Condition = 4030102,Param = {[1] = 100000,[2] = 1401002},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020102] = {Name = _T("腰缠万贯（二）"),Des = _T("累计获得%s游戏币"),Condition = 4030102,Param = {[1] = 1000000,[2] = 1401002},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020103] = {Name = _T("腰缠万贯（三）"),Des = _T("累计获得%s游戏币"),Condition = 4030102,Param = {[1] = 10000000,[2] = 1401002},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020104] = {Name = _T("腰缠万贯（四）"),Des = _T("累计获得%s游戏币"),Condition = 4030102,Param = {[1] = 100000000,[2] = 1401002},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020201] = {Name = _T("挥金如土（一）"),Des = _T("累计消耗%s游戏币"),Condition = 4040102,Param = {[1] = 200000,[2] = 1401002},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020202] = {Name = _T("挥金如土（二）"),Des = _T("累计消耗%s游戏币"),Condition = 4040102,Param = {[1] = 2000000,[2] = 1401002},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020203] = {Name = _T("挥金如土（三）"),Des = _T("累计消耗%s游戏币"),Condition = 4040102,Param = {[1] = 20000000,[2] = 1401002},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020204] = {Name = _T("挥金如土（四）"),Des = _T("累计消耗%s游戏币"),Condition = 4040102,Param = {[1] = 200000000,[2] = 1401002},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020301] = {Name = _T("恭喜发财（一）"),Des = _T("累计获得%s灵玉"),Condition = 4030102,Param = {[1] = 100,[2] = 1401010},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020302] = {Name = _T("恭喜发财（二）"),Des = _T("累计获得%s灵玉"),Condition = 4030102,Param = {[1] = 1000,[2] = 1401010},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020303] = {Name = _T("恭喜发财（三）"),Des = _T("累计获得%s灵玉"),Condition = 4030102,Param = {[1] = 10000,[2] = 1401010},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020304] = {Name = _T("恭喜发财（四）"),Des = _T("累计获得%s灵玉"),Condition = 4030102,Param = {[1] = 100000,[2] = 1401010},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020401] = {Name = _T("壕无人性（一）"),Des = _T("累计消耗%s灵玉"),Condition = 4040102,Param = {[1] = 200,[2] = 1401010},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020402] = {Name = _T("壕无人性（二）"),Des = _T("累计消耗%s灵玉"),Condition = 4040102,Param = {[1] = 2000,[2] = 1401010},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020403] = {Name = _T("壕无人性（三）"),Des = _T("累计消耗%s灵玉"),Condition = 4040102,Param = {[1] = 20000,[2] = 1401010},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020404] = {Name = _T("壕无人性（四）"),Des = _T("累计消耗%s灵玉"),Condition = 4040102,Param = {[1] = 200000,[2] = 1401010},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020501] = {Name = _T("家里有矿（一）"),Des = _T("累计充值%s元"),Condition = 4100101,Param = {[1] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020502] = {Name = _T("家里有矿（二）"),Des = _T("累计充值%s元"),Condition = 4100101,Param = {[1] = 100},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020503] = {Name = _T("家里有矿（三）"),Des = _T("累计充值%s元"),Condition = 4100101,Param = {[1] = 1000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[1020504] = {Name = _T("家里有矿（四）"),Des = _T("累计充值%s元"),Condition = 4100101,Param = {[1] = 10000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			}
		}
	},
	[2] = {
		Name = _T("成长"),
		TotalPoint = 470,
		ModuleType = 1,
		SubTabs = {
			[1] = {
				Name = _T("账号"),
				Achieves = {
					[2010101] = {Name = _T("成长快乐（一）"),Des = _T("账号等级达到%s级"),Condition = 1050101,Param = {[1] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2010102] = {Name = _T("成长快乐（二）"),Des = _T("账号等级达到%s级"),Condition = 1050101,Param = {[1] = 20},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2010103] = {Name = _T("成长快乐（三）"),Des = _T("账号等级达到%s级"),Condition = 1050101,Param = {[1] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2010104] = {Name = _T("成长快乐（四）"),Des = _T("账号等级达到%s级"),Condition = 1050101,Param = {[1] = 40},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2010105] = {Name = _T("成长快乐（五）"),Des = _T("账号等级达到%s级"),Condition = 1050101,Param = {[1] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2010106] = {Name = _T("成长快乐（六）"),Des = _T("账号等级达到%s级"),Condition = 1050101,Param = {[1] = 60},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[2] = {
				Name = _T("卡牌"),
				Achieves = {
					[2020201] = {Name = _T("守护灵升级（一）"),Des = _T("拥有%s个15级守护灵"),Condition = 1010103,Param = {[1] = 1,[2] = 15},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020202] = {Name = _T("守护灵升级（二）"),Des = _T("拥有%s个30级守护灵"),Condition = 1010103,Param = {[1] = 1,[2] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020203] = {Name = _T("守护灵升级（三）"),Des = _T("拥有%s个45级守护灵"),Condition = 1010103,Param = {[1] = 1,[2] = 45},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020204] = {Name = _T("守护灵升级（四）"),Des = _T("拥有%s个60级守护灵"),Condition = 1010103,Param = {[1] = 1,[2] = 60},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020205] = {Name = _T("守护灵升级（五）"),Des = _T("拥有%s个15级守护灵"),Condition = 1010103,Param = {[1] = 3,[2] = 15},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020206] = {Name = _T("守护灵升级（六）"),Des = _T("拥有%s个30级守护灵"),Condition = 1010103,Param = {[1] = 3,[2] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020207] = {Name = _T("守护灵升级（七）"),Des = _T("拥有%s个45级守护灵"),Condition = 1010103,Param = {[1] = 3,[2] = 45},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020208] = {Name = _T("守护灵升级（八）"),Des = _T("拥有%s个60级守护灵"),Condition = 1010103,Param = {[1] = 3,[2] = 60},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020301] = {Name = _T("卡牌升星（一）"),Des = _T("拥有%s个2星卡牌"),Condition = 1010303,Param = {[1] = 1,[2] = 2},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020302] = {Name = _T("卡牌升星（二）"),Des = _T("拥有%s个3星卡牌"),Condition = 1010303,Param = {[1] = 1,[2] = 3},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020303] = {Name = _T("卡牌升星（三）"),Des = _T("拥有%s个4星卡牌"),Condition = 1010303,Param = {[1] = 1,[2] = 4},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020304] = {Name = _T("卡牌升星（四）"),Des = _T("拥有%s个5星卡牌"),Condition = 1010303,Param = {[1] = 1,[2] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020305] = {Name = _T("卡牌升星（五）"),Des = _T("拥有%s个2星卡牌"),Condition = 1010303,Param = {[1] = 3,[2] = 2},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020306] = {Name = _T("卡牌升星（六）"),Des = _T("拥有%s个3星卡牌"),Condition = 1010303,Param = {[1] = 3,[2] = 3},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020307] = {Name = _T("卡牌升星（七）"),Des = _T("拥有%s个4星卡牌"),Condition = 1010303,Param = {[1] = 3,[2] = 4},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2020308] = {Name = _T("卡牌升星（八）"),Des = _T("拥有%s个5星卡牌"),Condition = 1010303,Param = {[1] = 3,[2] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[3] = {
				Name = _T("技能"),
				Achieves = {
					[2030101] = {Name = _T("技能娴熟（一）"),Des = _T("累计消耗%s技能经验"),Condition = 4030102,Param = {[1] = 20000,[2] = 1401005},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2030102] = {Name = _T("技能娴熟（二）"),Des = _T("累计消耗%s技能经验"),Condition = 4030102,Param = {[1] = 100000,[2] = 1401005},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2030103] = {Name = _T("技能娴熟（三）"),Des = _T("累计消耗%s技能经验"),Condition = 4030102,Param = {[1] = 500000,[2] = 1401005},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2030104] = {Name = _T("技能娴熟（四）"),Des = _T("累计消耗%s技能经验"),Condition = 4030102,Param = {[1] = 2000000,[2] = 1401005},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2030201] = {Name = _T("技多不压身（一）"),Des = _T("累计兑换%s个技能"),Condition = 1040103,Param = {[1] = 6},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2030202] = {Name = _T("技多不压身（二）"),Des = _T("累计兑换%s个技能"),Condition = 1040103,Param = {[1] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2030203] = {Name = _T("技多不压身（三）"),Des = _T("累计兑换%s个技能"),Condition = 1040103,Param = {[1] = 100},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2030204] = {Name = _T("技多不压身（四）"),Des = _T("累计兑换%s个技能"),Condition = 1040103,Param = {[1] = 200},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[4] = {
				Name = _T("专属武器"),
				Achieves = {
					[2040101] = {Name = _T("全副武装（一）"),Des = _T("累计激活%s个专属武器"),Condition = 1030302,Param = {[1] = 1},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040102] = {Name = _T("全副武装（二）"),Des = _T("累计激活%s个专属武器"),Condition = 1030302,Param = {[1] = 3},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040103] = {Name = _T("全副武装（三）"),Des = _T("累计激活%s个专属武器"),Condition = 1030302,Param = {[1] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040104] = {Name = _T("全副武装（四）"),Des = _T("累计激活%s个专属武器"),Condition = 1030302,Param = {[1] = 15},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040105] = {Name = _T("全副武装（五）"),Des = _T("累计激活%s个专属武器"),Condition = 1030302,Param = {[1] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040201] = {Name = _T("装备精良（一）"),Des = _T("专属武器强化总等级达到%s级"),Condition = 1030105,Param = {[1] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040202] = {Name = _T("装备精良（二）"),Des = _T("专属武器强化总等级达到%s级"),Condition = 1030105,Param = {[1] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040203] = {Name = _T("装备精良（三）"),Des = _T("专属武器强化总等级达到%s级"),Condition = 1030105,Param = {[1] = 100},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040204] = {Name = _T("装备精良（四）"),Des = _T("专属武器强化总等级达到%s级"),Condition = 1030105,Param = {[1] = 150},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040205] = {Name = _T("装备精良（五）"),Des = _T("专属武器强化总等级达到%s级"),Condition = 1030105,Param = {[1] = 300},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040301] = {Name = _T("装备解封（一）"),Des = _T("专属武器解封总次数达到%s次"),Condition = 1030201,Param = {[1] = 3},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040302] = {Name = _T("装备解封（二）"),Des = _T("专属武器解封总次数达到%s次"),Condition = 1030201,Param = {[1] = 9},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040303] = {Name = _T("装备解封（三）"),Des = _T("专属武器解封总次数达到%s次"),Condition = 1030201,Param = {[1] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040304] = {Name = _T("装备解封（四）"),Des = _T("专属武器解封总次数达到%s次"),Condition = 1030201,Param = {[1] = 45},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2040305] = {Name = _T("装备解封（五）"),Des = _T("专属武器解封总次数达到%s次"),Condition = 1030201,Param = {[1] = 90},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[5] = {
				Name = _T("神器"),
				Achieves = {
					[2050101] = {Name = _T("神兵利器（一）"),Des = _T("拥有%s个10级神器"),Condition = 1020203,Param = {[1] = 1,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[2050201] = {Name = _T("神器等级（一）"),Des = _T("神器组件等级总和达到%s级"),Condition = 1020205,Param = {[1] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			}
		}
	},
	[3] = {
		Name = _T("剧情"),
		TotalPoint = 80,
		ModuleType = 1,
		SubTabs = {
			[1] = {
				Name = _T("普通剧情"),
				Achieves = {
					[3010101] = {Name = _T("普通剧情-1"),Des = _T("通关第一章普通剧情"),Condition = 2010101,Param = {[1] = 9,[2] = 101},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[3010102] = {Name = _T("普通剧情-2"),Des = _T("通关第二章普通剧情"),Condition = 2010102,Param = {[1] = 9,[2] = 102},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[3010103] = {Name = _T("普通剧情-3"),Des = _T("通关第三章普通剧情"),Condition = 2010102,Param = {[1] = 9,[2] = 103},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[3010104] = {Name = _T("普通剧情-4"),Des = _T("通关第四章普通剧情"),Condition = 2010102,Param = {[1] = 9,[2] = 104},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[3010105] = {Name = _T("普通剧情-5"),Des = _T("通关第五章普通剧情"),Condition = 2010102,Param = {[1] = 9,[2] = 105},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[3010106] = {Name = _T("普通剧情-6"),Des = _T("通关第六章普通剧情"),Condition = 2010102,Param = {[1] = 9,[2] = 106},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[2] = {
				Name = _T("困难剧情"),
				Achieves = {
					[3020101] = {Name = _T("困难剧情"),Des = _T("通关第一章困难剧情"),Condition = 2010102,Param = {[1] = 9,[2] = 201},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[3] = {
				Name = _T("剧情星级"),
				Achieves = {
					[3030101] = {Name = _T("剧情星级"),Des = _T("剧情总星数达到%s颗"),Condition = 2010103,Param = {[1] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			}
		}
	},
	[4] = {
		Name = _T("玩法"),
		TotalPoint = 90,
		ModuleType = 1,
		SubTabs = {
			[1] = {
				Name = _T("派遣巡逻"),
				Achieves = {
					[4010101] = {Name = _T("掘地三尺"),Des = _T("派遣巡逻总时长达到%s小时"),Condition = 2040301,Param = {[1] = 1},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[4010201] = {Name = _T("快速巡逻"),Des = _T("使用%s次快速派遣"),Condition = 2040201,Param = {[1] = 12},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[2] = {
				Name = _T("恶灵入侵"),
				Achieves = {
					[4020101] = {Name = _T("降妖伏魔"),Des = _T("击杀地角星"),Condition = 2010102,Param = {[1] = 1,[2] = 404},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[4020201] = {Name = _T("斩妖除魔"),Des = _T("通关%s次个人boss"),Condition = 2030101,Param = {[1] = 3,[2] = 1},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[3] = {
				Name = _T("芦花古楼"),
				Achieves = {
					[4030101] = {Name = _T("芦花古楼"),Des = _T("芦花古楼总通关数达到%s关"),Condition = 2020101,Param = {[1] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[4030201] = {Name = _T("风门挑战"),Des = _T("风门挑战达到%s关"),Condition = 2010101,Param = {[1] = 10,[2] = 401},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[4030301] = {Name = _T("花门挑战"),Des = _T("花门挑战达到%s关"),Condition = 2010101,Param = {[1] = 10,[2] = 402},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[4030401] = {Name = _T("雪门挑战"),Des = _T("雪门挑战达到%s关"),Condition = 2010101,Param = {[1] = 10,[2] = 403},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[4030501] = {Name = _T("月门挑战"),Des = _T("月门挑战达到%s关"),Condition = 2010101,Param = {[1] = 10,[2] = 404},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			}
		}
	},
	[5] = {
		Name = _T("竞技"),
		TotalPoint = 30,
		ModuleType = 1,
		SubTabs = {
			[1] = {
				Name = _T("个人竞技"),
				Achieves = {
					[5010101] = {Name = _T("百战百胜"),Des = _T("个人竞技场胜利%s次"),Condition = 3010202,Param = {[1] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[5010201] = {Name = _T("屡败屡战"),Des = _T("个人竞技场失败%s次"),Condition = 3010203,Param = {[1] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[5010301] = {Name = _T("功成名就"),Des = _T("竞技场最高积分达到%s分"),Condition = 3010101,Param = {[1] = 1200},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			}
		}
	},
	[6] = {
		Name = _T("收集"),
		TotalPoint = 60,
		ModuleType = 1,
		SubTabs = {
			[1] = {
				Name = _T("卡牌"),
				Achieves = {
					[6010101] = {Name = _T("寄灵人集结"),Des = _T("拥有%s个寄灵人"),Condition = 1010504,Param = {[1] = 3},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[6010201] = {Name = _T("守护灵集结"),Des = _T("拥有%s个守护灵"),Condition = 1010505,Param = {[1] = 3},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[6010301] = {Name = _T("人丁兴旺"),Des = _T("拥有%s个SSR寄灵人"),Condition = 1010506,Param = {[1] = 1,[2] = 4},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[6010401] = {Name = _T("人杰地灵"),Des = _T("拥有%s个SSR守护灵"),Condition = 1010507,Param = {[1] = 1,[2] = 4},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[2] = {
				Name = _T("扭蛋"),
				Achieves = {
					[6020101] = {Name = _T("寄灵人扭蛋"),Des = _T("普通寄灵人扭蛋%s次"),Condition = 4060102,Param = {[1] = 10,[2] = 1},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[6020201] = {Name = _T("守护灵扭蛋"),Des = _T("普通守护灵扭蛋%s次"),Condition = 4060103,Param = {[1] = 10,[2] = 2},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			}
		}
	},
	[7] = {
		Name = _T("社交"),
		TotalPoint = 10,
		ModuleType = 1,
		SubTabs = {
			[1] = {
				Name = _T("聊天"),
				Achieves = {
					[7020101] = {Name = _T("好友"),Des = _T("拥有%s位好友"),Condition = 4110101,Param = {[1] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[2] = {Name = _T("好友")}
		}
	},
	[8] = {
		Name = _T("国战"),
		TotalPoint = 1230,
		ModuleType = 9001,
		SubTabs = {
			[1] = {
				Name = _T("发展"),
				Achieves = {
					[9110101] = {Name = _T("资源产量"),Des = _T("银木产量达到5000/小时"),Condition = 90101,Param = {[1] = 5000,[2] = 6000001},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110102] = {Name = _T("资源产量"),Des = _T("银木产量达到20000/小时"),Condition = 90101,Param = {[1] = 20000,[2] = 6000001},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110103] = {Name = _T("资源产量"),Des = _T("银木产量达到50000/小时"),Condition = 90101,Param = {[1] = 50000,[2] = 6000001},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110104] = {Name = _T("资源产量"),Des = _T("赤铁产量达到5000/小时"),Condition = 90101,Param = {[1] = 5000,[2] = 6000002},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110105] = {Name = _T("资源产量"),Des = _T("赤铁产量达到20000/小时"),Condition = 90101,Param = {[1] = 20000,[2] = 6000002},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110106] = {Name = _T("资源产量"),Des = _T("赤铁产量达到50000/小时"),Condition = 90101,Param = {[1] = 50000,[2] = 6000002},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110107] = {Name = _T("资源产量"),Des = _T("精石产量达到5000/小时"),Condition = 90101,Param = {[1] = 5000,[2] = 6000003},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110108] = {Name = _T("资源产量"),Des = _T("精石产量达到20000/小时"),Condition = 90101,Param = {[1] = 20000,[2] = 6000003},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110109] = {Name = _T("资源产量"),Des = _T("精石产量达到50000/小时"),Condition = 90101,Param = {[1] = 50000,[2] = 6000003},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110110] = {Name = _T("资源产量"),Des = _T("灵谷产量达到5000/小时"),Condition = 90101,Param = {[1] = 5000,[2] = 6000004},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110111] = {Name = _T("资源产量"),Des = _T("灵谷产量达到20000/小时"),Condition = 90101,Param = {[1] = 20000,[2] = 6000004},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110112] = {Name = _T("资源产量"),Des = _T("灵谷产量达到50000/小时"),Condition = 90101,Param = {[1] = 50000,[2] = 6000004},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110201] = {Name = _T("科技实验"),Des = _T("研究科技总等级达到5级"),Condition = 90102,Param = {[1] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110202] = {Name = _T("科技实验"),Des = _T("研究科技总等级达到10级"),Condition = 90102,Param = {[1] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110203] = {Name = _T("科技实验"),Des = _T("研究科技总等级达到20级"),Condition = 90102,Param = {[1] = 20},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110204] = {Name = _T("科技实验"),Des = _T("研究科技总等级达到30级"),Condition = 90102,Param = {[1] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110301] = {Name = _T("高端科技"),Des = _T("达到满级的科技数量达到3个"),Condition = 90103,Param = {[1] = 3},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110302] = {Name = _T("高端科技"),Des = _T("达到满级的科技数量达到5个"),Condition = 90103,Param = {[1] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110401] = {Name = _T("开疆拓土"),Des = _T("激活城镇总数达到5个"),Condition = 90104,Param = {[1] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110402] = {Name = _T("开疆拓土"),Des = _T("激活城镇总数达到10个"),Condition = 90104,Param = {[1] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110403] = {Name = _T("开疆拓土"),Des = _T("激活城镇总数达到15个"),Condition = 90104,Param = {[1] = 15},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110404] = {Name = _T("开疆拓土"),Des = _T("激活城镇总数达到20个"),Condition = 90104,Param = {[1] = 20},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110405] = {Name = _T("开疆拓土"),Des = _T("激活城镇总数达到25个"),Condition = 90104,Param = {[1] = 25},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110406] = {Name = _T("开疆拓土"),Des = _T("激活城镇总数达到30个"),Condition = 90104,Param = {[1] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110407] = {Name = _T("开疆拓土"),Des = _T("激活城镇总数达到50个"),Condition = 90104,Param = {[1] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110408] = {Name = _T("开疆拓土"),Des = _T("激活城镇总数达到70个"),Condition = 90104,Param = {[1] = 70},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9110409] = {Name = _T("开疆拓土"),Des = _T("激活城镇总数达到100个"),Condition = 90104,Param = {[1] = 100},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[2] = {
				Name = _T("征服"),
				Achieves = {
					[9120101] = {Name = _T("资源占领"),Des = _T("占领1级以上资源点5块"),Condition = 90201,Param = {[1] = 5,[2] = 1},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120102] = {Name = _T("资源占领"),Des = _T("占领2级以上资源点5块"),Condition = 90201,Param = {[1] = 5,[2] = 2},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120103] = {Name = _T("资源占领"),Des = _T("占领3级以上资源点5块"),Condition = 90201,Param = {[1] = 5,[2] = 3},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120104] = {Name = _T("资源占领"),Des = _T("占领4级以上资源点5块"),Condition = 90201,Param = {[1] = 5,[2] = 4},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120105] = {Name = _T("资源占领"),Des = _T("占领5级以上资源点5块"),Condition = 90201,Param = {[1] = 5,[2] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120106] = {Name = _T("资源占领"),Des = _T("占领5级以上资源点10块"),Condition = 90201,Param = {[1] = 5,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120107] = {Name = _T("资源占领"),Des = _T("占领6级以上资源点5块"),Condition = 90201,Param = {[1] = 6,[2] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120108] = {Name = _T("资源占领"),Des = _T("占领6级以上资源点10块"),Condition = 90201,Param = {[1] = 6,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120109] = {Name = _T("资源占领"),Des = _T("占领7级以上资源点10块"),Condition = 90201,Param = {[1] = 7,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120110] = {Name = _T("资源占领"),Des = _T("占领8级以上资源点10块"),Condition = 90201,Param = {[1] = 8,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120111] = {Name = _T("资源占领"),Des = _T("占领9级以上资源点10块"),Condition = 90201,Param = {[1] = 9,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120201] = {Name = _T("领地上限"),Des = _T("占领领地数量达到10块"),Condition = 90202,Param = {[1] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120202] = {Name = _T("领地上限"),Des = _T("占领领地数量达到30块"),Condition = 90202,Param = {[1] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120203] = {Name = _T("领地上限"),Des = _T("占领领地数量达到50块"),Condition = 90202,Param = {[1] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120204] = {Name = _T("领地上限"),Des = _T("占领领地数量达到70块"),Condition = 90202,Param = {[1] = 70},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120205] = {Name = _T("领地上限"),Des = _T("占领领地数量达到100块"),Condition = 90202,Param = {[1] = 100},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120206] = {Name = _T("领地上限"),Des = _T("占领领地数量达到150块"),Condition = 90202,Param = {[1] = 150},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120301] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区1级以上野怪5个"),Condition = 90203,Param = {[1] = 5,[2] = 1},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120302] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区2级以上野怪5个"),Condition = 90203,Param = {[1] = 5,[2] = 2},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120303] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区3级以上野怪5个"),Condition = 90203,Param = {[1] = 5,[2] = 3},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120304] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区4级以上野怪5个"),Condition = 90203,Param = {[1] = 5,[2] = 4},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120305] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区5级以上野怪5个"),Condition = 90203,Param = {[1] = 5,[2] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120306] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区6级以上野怪5个"),Condition = 90203,Param = {[1] = 6,[2] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120307] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区6级以上野怪10个"),Condition = 90203,Param = {[1] = 6,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120308] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区7级以上野怪5个"),Condition = 90203,Param = {[1] = 7,[2] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120309] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区7级以上野怪10个"),Condition = 90203,Param = {[1] = 7,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120310] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区8级以上野怪5个"),Condition = 90203,Param = {[1] = 8,[2] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120311] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区8级以上野怪10个"),Condition = 90203,Param = {[1] = 8,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120312] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区9级以上野怪5个"),Condition = 90203,Param = {[1] = 9,[2] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120313] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区9级以上野怪10个"),Condition = 90203,Param = {[1] = 9,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120314] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区10级以上野怪5个"),Condition = 90203,Param = {[1] = 10,[2] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120315] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区10级以上野怪10个"),Condition = 90203,Param = {[1] = 10,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120316] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区10级以上野怪30个"),Condition = 90203,Param = {[1] = 10,[2] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120317] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区10级以上野怪50个"),Condition = 90203,Param = {[1] = 10,[2] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120318] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区11级以上野怪10个"),Condition = 90203,Param = {[1] = 11,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120319] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区11级以上野怪30个"),Condition = 90203,Param = {[1] = 11,[2] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120320] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区11级以上野怪50个"),Condition = 90203,Param = {[1] = 11,[2] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120321] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区12级以上野怪10个"),Condition = 90203,Param = {[1] = 12,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120322] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区12级以上野怪30个"),Condition = 90203,Param = {[1] = 12,[2] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120323] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区12级以上野怪50个"),Condition = 90203,Param = {[1] = 12,[2] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120324] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区13级以上野怪10个"),Condition = 90203,Param = {[1] = 13,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120325] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区13级以上野怪30个"),Condition = 90203,Param = {[1] = 13,[2] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120326] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区13级以上野怪50个"),Condition = 90203,Param = {[1] = 13,[2] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120327] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区14级以上野怪10个"),Condition = 90203,Param = {[1] = 14,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120328] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区14级以上野怪30个"),Condition = 90203,Param = {[1] = 14,[2] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120329] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区14级以上野怪50个"),Condition = 90203,Param = {[1] = 14,[2] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120330] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区15级以上野怪10个"),Condition = 90203,Param = {[1] = 15,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120331] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区15级以上野怪30个"),Condition = 90203,Param = {[1] = 15,[2] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120332] = {Name = _T("讨伐令"),Des = _T("消灭讨伐区15级以上野怪50个"),Condition = 90203,Param = {[1] = 15,[2] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120401] = {Name = _T("掠夺"),Des = _T("攻占其他势力占领的领地5块"),Condition = 90204,Param = {[1] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120402] = {Name = _T("掠夺"),Des = _T("攻占其他势力占领的领地10块"),Condition = 90204,Param = {[1] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120403] = {Name = _T("掠夺"),Des = _T("攻占其他势力占领的领地20块"),Condition = 90204,Param = {[1] = 20},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120501] = {Name = _T("剿匪"),Des = _T("剿灭城镇匪怪的数量达到10个"),Condition = 90205,Param = {[1] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120502] = {Name = _T("剿匪"),Des = _T("剿灭城镇匪怪的数量达到30个"),Condition = 90205,Param = {[1] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120503] = {Name = _T("剿匪"),Des = _T("剿灭城镇匪怪的数量达到50个"),Condition = 90205,Param = {[1] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120504] = {Name = _T("剿匪"),Des = _T("剿灭城镇匪怪的数量达到100个"),Condition = 90205,Param = {[1] = 100},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120505] = {Name = _T("剿匪"),Des = _T("剿灭城镇匪怪的数量达到150个"),Condition = 90205,Param = {[1] = 150},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120506] = {Name = _T("剿匪"),Des = _T("剿灭城镇匪怪的数量达到200个"),Condition = 90205,Param = {[1] = 200},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120601] = {Name = _T("掠夺"),Des = _T("打掉其他势力领地和建筑耐久总之达到1000"),Condition = 90206,Param = {[1] = 1000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120602] = {Name = _T("掠夺"),Des = _T("打掉其他势力领地和建筑耐久总之达到2000"),Condition = 90206,Param = {[1] = 2000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120603] = {Name = _T("掠夺"),Des = _T("打掉其他势力领地和建筑耐久总之达到4000"),Condition = 90206,Param = {[1] = 4000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120701] = {Name = _T("英雄榜"),Des = _T("进入攻城战排行榜1次"),Condition = 90207,Param = {[1] = 1},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120702] = {Name = _T("英雄榜"),Des = _T("进入攻城战排行榜2次"),Condition = 90207,Param = {[1] = 2},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120703] = {Name = _T("英雄榜"),Des = _T("进入攻城战排行榜3次"),Condition = 90207,Param = {[1] = 3},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120704] = {Name = _T("英雄榜"),Des = _T("进入攻城战排行榜4次"),Condition = 90207,Param = {[1] = 4},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9120705] = {Name = _T("英雄榜"),Des = _T("进入攻城战排行榜5次"),Condition = 90207,Param = {[1] = 5},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[3] = {
				Name = _T("培养"),
				Achieves = {
					[9130101] = {Name = _T("统御等级"),Des = _T("任意英雄统御等级达到20"),Condition = 90301,Param = {[1] = 20},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9130102] = {Name = _T("统御等级"),Des = _T("任意英雄统御等级达到35"),Condition = 90301,Param = {[1] = 35},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9130103] = {Name = _T("统御等级"),Des = _T("任意英雄统御等级达到50"),Condition = 90301,Param = {[1] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9130201] = {Name = _T("统御等级"),Des = _T("统御等级30级的英雄数量达到6个"),Condition = 90302,Param = {[1] = 30,[2] = 6},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9130202] = {Name = _T("统御等级"),Des = _T("统御等级30级的英雄数量达到10个"),Condition = 90302,Param = {[1] = 30,[2] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9130203] = {Name = _T("统御等级"),Des = _T("统御等级30级的英雄数量达到15个"),Condition = 90302,Param = {[1] = 30,[2] = 15},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9130301] = {Name = _T("征募"),Des = _T("总计征募军力值达到50000"),Condition = 90303,Param = {[1] = 50000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9130302] = {Name = _T("征募"),Des = _T("总计征募军力值达到200000"),Condition = 90303,Param = {[1] = 200000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9130303] = {Name = _T("征募"),Des = _T("总计征募军力值达到500000"),Condition = 90303,Param = {[1] = 500000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[4] = {
				Name = _T("指挥"),
				Achieves = {
					[9140101] = {Name = _T("声望"),Des = _T("声望等级达到10级"),Condition = 90401,Param = {[1] = 10},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140102] = {Name = _T("声望"),Des = _T("声望等级达到15级"),Condition = 90401,Param = {[1] = 15},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140103] = {Name = _T("声望"),Des = _T("声望等级达到20级"),Condition = 90401,Param = {[1] = 20},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140104] = {Name = _T("声望"),Des = _T("声望等级达到25级"),Condition = 90401,Param = {[1] = 25},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140105] = {Name = _T("声望"),Des = _T("声望等级达到30级"),Condition = 90401,Param = {[1] = 30},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140106] = {Name = _T("声望"),Des = _T("声望等级达到40级"),Condition = 90401,Param = {[1] = 40},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140107] = {Name = _T("声望"),Des = _T("声望等级达到50级"),Condition = 90401,Param = {[1] = 50},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140201] = {Name = _T("势力"),Des = _T("势力值达到100"),Condition = 90402,Param = {[1] = 100},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140202] = {Name = _T("势力"),Des = _T("势力值达到300"),Condition = 90402,Param = {[1] = 300},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140203] = {Name = _T("势力"),Des = _T("势力值达到500"),Condition = 90402,Param = {[1] = 500},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140204] = {Name = _T("势力"),Des = _T("势力值达到1000"),Condition = 90402,Param = {[1] = 1000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140205] = {Name = _T("势力"),Des = _T("势力值达到3000"),Condition = 90402,Param = {[1] = 3000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140206] = {Name = _T("势力"),Des = _T("势力值达到5000"),Condition = 90402,Param = {[1] = 5000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140207] = {Name = _T("势力"),Des = _T("势力值达到7000"),Condition = 90402,Param = {[1] = 7000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140208] = {Name = _T("势力"),Des = _T("势力值达到10000"),Condition = 90402,Param = {[1] = 10000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140209] = {Name = _T("势力"),Des = _T("势力值达到15000"),Condition = 90402,Param = {[1] = 15000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9140210] = {Name = _T("势力"),Des = _T("势力值达到20000"),Condition = 90402,Param = {[1] = 20000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			},
			[5] = {
				Name = _T("联盟"),
				Achieves = {
					[9150101] = {Name = _T("联盟贡献"),Des = _T("个人联盟总贡献达到1000"),Condition = 90501,Param = {[1] = 1000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9150102] = {Name = _T("联盟贡献"),Des = _T("个人联盟总贡献达到5000"),Condition = 90501,Param = {[1] = 5000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9150103] = {Name = _T("联盟贡献"),Des = _T("个人联盟总贡献达到10000"),Condition = 90501,Param = {[1] = 10000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10},
					[9150104] = {Name = _T("联盟贡献"),Des = _T("个人联盟总贡献达到50000"),Condition = 90501,Param = {[1] = 50000},Award = {[1] = {id = 1401002,val = 100},[2] = {id = 1401010,val = 5}},RewardPonits = 10}
				}
			}
		}
	}
}