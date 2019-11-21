--[[
output from excel MuPBoss.千机黑刹.xlsx
--note:

colums:
{MaxBonusTimes,最大奖励次数} ,{BonusCD,奖励次数回复冷却
单位：小时} ,{OpenTime,整点} ,{OpeningDuration,活动持续时长
单位：小时} ,{RefreshBossCostType,刷新首领所需货币类型} ,{RefreshBossCost,刷新首领的阶梯价格} ,{CaptainStartTime,房主开始倒计时
单位：秒} ,{TeamInitialSpirit,每支队伍初始行动力} ,{SpiritCostPerGrid,队伍每移动一地格消耗的行动力} ,{BuySpiritCostType,购买行动力道具所需货币类型} ,{BuySpiritCost,购买行动力道具的价格} ,{TeamVisualRadius,队伍的可视范围
以自身为中心，半径几地格} ,{TeamDarkRadius,轻迷雾半径
可视范围向外延伸几个地格；此范围内重迷雾变为轻迷雾} ,{TeamMoveSpeed,队伍移动速度
(地格数/秒)}
primary key:
#0 [千机黑刹常数配置]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {MaxBonusTimes = 3,BonusCD = 8,OpenTime = {12,18},OpeningDuration = 2,RefreshBossCostType = 1401010,RefreshBossCost = {0,5,10,20,30,50,75,100,150,200},CaptainStartTime = 30,TeamInitialSpirit = 100,SpiritCostPerGrid = 2,BuySpiritCostType = 1401010,BuySpiritCost = 20,TeamVisualRadius = 2,TeamDarkRadius = 2,TeamMoveSpeed = 2.5}
}