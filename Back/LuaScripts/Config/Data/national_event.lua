--[[
--note:

colums:
{Id,Id} ,{Name,名称} ,{Des,描述} ,{Target,目标} ,{Type,功能类型
1、全地图[CounterMax]块Lv[Params]资源点被占领(Params不填则为全等级)
2、全地图激活城镇总数量达到[CounterMax]个
3、人数超过[Params]人的联盟数量达到[CounterMax]个
4、全服消灭Lv[Params]讨伐怪数量达到[CounterMax]个(Params不填则为全等级)
5、全地图[CounterMax]个卫都被占领
6、结束时联盟占领[CounterMax]个卫都(倒计时结束判定)
7、[CounterMax]个联盟角逐势力值排名(倒计时结束判定)
8、全服联盟攻占所属域以外的卫都数[CounterMax]个
9、[CounterMax]个域的域都全部被占领
10、中心域域都被占领
11、全地图[Params]个域都被同图[CounterMax]个联盟占领} ,{Params,条件限制} ,{CounterMax,条件计数} ,{CounterType,计数类型
0、纪事开始后计数

1、始终计数(发生就计数，时候减少也不会影响之前的计数)

2、持有计数(有增有减，随动)} ,{ExpireTime,持续时间(小时)} ,{RewardType,领取类型
1、全服可领奖
2、达成的联盟成员可领奖
3、在排行榜内的可领奖} ,{Reward[1].type,奖励类型} ,{Reward[1].value,奖励数值} ,{RewardText,跟随前端展示}
primary key:
#0 [国战纪事]: Id
]]
local _T = LangUtil.Language
return{
	[1] = {Id = 1,Name = "初入国战",Des = "初入江湖",Target = "【目标】：全地图%s块%s资源点被占领",Type = 1,CounterMax = 3000,CounterType = 1,ExpireTime = 48,RewardType = 1,Reward = {[1] = {type = 1401010,value = {200}}},RewardText = "全服获得灵玉%s"},
	[2] = {Id = 2,Name = "开拓者",Des = "开疆拓土，乃将帅之所为",Target = "【目标】：全地图激活城镇总数量达到%s个",Type = 2,CounterMax = 5000,CounterType = 1,ExpireTime = 48,RewardType = 1,Reward = {[1] = {type = 1401010,value = {300}}},RewardText = "全服获得灵玉%s"},
	[3] = {Id = 3,Name = "霸主崛起",Des = "起于草莽，结与四方",Target = "【目标】：人数超过%s人的联盟数量达到%s个",Type = 3,Params = 30,CounterMax = 8,CounterType = 2,ExpireTime = 48,RewardType = 1,Reward = {[1] = {type = 1401010,value = {300}}},RewardText = "全服获得灵玉%s"},
	[4] = {Id = 4,Name = "战乱之地",Des = "卧榻之侧岂可共眠",Target = "【目标】：全服消灭%s讨伐怪数量达到%s个",Type = 4,CounterMax = 3000,CounterType = 0,ExpireTime = 48,RewardType = 1,Reward = {[1] = {type = 1401010,value = {300}}},RewardText = "全服获得灵玉%s"},
	[5] = {Id = 5,Name = "开拓者II",Des = "以战养战，徐徐图之",Target = "【目标】：全地图%s块Lv%s资源点被占领",Type = 1,Params = 4,CounterMax = 2000,CounterType = 2,ExpireTime = 48,RewardType = 1,Reward = {[1] = {type = 1401010,value = {300}}},RewardText = "全服获得灵玉%s"},
	[6] = {Id = 6,Name = "烽火狼烟",Des = "起烽火，望狼烟",Target = "【目标】：全地图%s个卫都被占领",Type = 5,CounterMax = 4,CounterType = 2,ExpireTime = 48,RewardType = 1,Reward = {[1] = {type = 1401010,value = {300}}},RewardText = "全服获得灵玉%s"},
	[7] = {Id = 7,Name = "同心协力",Des = "潜龙在渊，隐雷无声",Target = "【目标】：结束时联盟占领%s个卫都",Type = 6,CounterMax = 3,CounterType = 2,ExpireTime = 96,RewardType = 2,Reward = {[1] = {type = 1401010,value = {300}}},RewardText = "联盟成员获得灵玉%s"},
	[8] = {Id = 8,Name = "乱世争锋",Des = "惊蛰而起，势如破竹",Target = "【目标】：%s个联盟角逐势力值排名",Type = 7,CounterMax = 10,CounterType = 2,ExpireTime = 96,RewardType = 3,Reward = {[1] = {type = 1401010,value = {1600,1000,1000,600,600,300,300,300,300,300}}},RewardText = "第一名获得灵玉%s"},
	[9] = {Id = 9,Name = "合纵连横",Des = "纵横捭阖，横击外敌",Target = "【目标】：全服联盟攻占所属域以外的卫都数%s个",Type = 8,CounterMax = 10,CounterType = 2,ExpireTime = 96,RewardType = 1,Reward = {[1] = {type = 1401010,value = {300}}},RewardText = "全服获得灵玉%s"},
	[10] = {Id = 10,Name = "荡寇除暴",Des = "攘夷荡寇",Target = "【目标】：全服消灭%s讨伐怪数量达到%s",Type = 4,CounterMax = 20000,CounterType = 0,ExpireTime = 72,RewardType = 1,Reward = {[1] = {type = 1401010,value = {300}}},RewardText = "全服获得灵玉%s"},
	[11] = {Id = 11,Name = "全军出击",Des = "乱世必争",Target = "【目标】：%s个域的域都全部被占领",Type = 9,CounterMax = 5,CounterType = 2,RewardType = 2,Reward = {[1] = {type = 1401010,value = {300}}},RewardText = "联盟成员获得灵玉%s"},
	[12] = {Id = 12,Name = "霸主之势",Des = "定鼎之威",Target = "【目标】：中心域域都被占领",Type = 10,CounterMax = 1,CounterType = 2,RewardType = 2,Reward = {[1] = {type = 1401010,value = {400}}},RewardText = "联盟成员获得灵玉%s"},
	[13] = {Id = 13,Name = "灵域传说",Des = "镇魂镇灵",Target = "【目标】：全地图%s个域都被同一个联盟占领",Type = 11,Params = 7,CounterMax = 1,CounterType = 2,RewardType = 2,Reward = {[1] = {type = 1401010,value = {1500}}},RewardText = "联盟成员获得灵玉%s"}
}