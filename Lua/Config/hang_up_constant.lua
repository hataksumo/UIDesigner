--[[
--note:
派遣章节关卡常量表
colums:
{ID,唯一键} ,{Time1,第一巡逻时长（分钟）} ,{Time2,第二巡逻时长（分钟）} ,{Time3,第三巡逻时长（分钟）} ,{QuickPassNeedItem,快速巡逻所需的派遣令道具ID} ,{QuickPassNeedItemNum,快速巡逻所需的派遣令数量} ,{QuickPassReardTime,快速巡逻相当于巡逻多长时间} ,{RewardTime,每获得一次必得奖励所需的巡逻时长(分钟)} ,{CostStamina,每获得一次必得奖励所需的体力}
primary key:
#0 [挂机派遣常量]: ID
]]
return{
	[1] = {Time1 = 60,Time2 = 240,Time3 = 480,QuickPassNeedItem = 1604001,QuickPassNeedItemNum = 1,QuickPassReardTime = 120,RewardTime = 6,CostStamina = 0}
}