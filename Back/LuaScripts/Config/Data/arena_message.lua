--[[
output from excel arena.竞技场.xlsx
--note:

colums:
{ID,ID} ,{BuyTicketTimes,挑战购买次数} ,{CostGem,挑战券钻石} ,{FlushTime,刷新时间} ,{FlushPrice,刷新价格} ,{MaxBuyTimes,最大购买次数} ,{InitTicket,初始挑战券} ,{RankCritical,白银黄金临界值} ,{BuyIncrease,购买消耗物品增长率abcd公式} ,{IncreaseRange,匹配每次扩展的区间} ,{Honor,高中低胜利获得的荣誉点} ,{VictoryPoint,高中低胜利获得的胜点} ,{ArenaPos,地图坐标ID} ,{InitScore,玩家初始积分}
primary key:
#0 [竞技场常量]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,BuyTicketTimes = 5,CostGem = 20,FlushTime = 180,FlushPrice = 10,MaxBuyTimes = 5,InitTicket = 20,RankCritical = 99999,BuyIncrease = {0,0,1,1},IncreaseRange = 10,Honor = {30,20,10},VictoryPoint = {4,3,2},ArenaPos = 1,InitScore = 1000}
}