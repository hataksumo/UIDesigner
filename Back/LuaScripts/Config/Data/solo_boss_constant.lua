--[[
--note:

colums:
{ID,唯一键} ,{Cost[1].Id,单人Boss挑战券id} ,{Cost[1].Val,单人BOSS挑战券数量} ,{SoloFlushTime,单人Boss刷新时间} ,{SoloTicketFlushCount,单人Boss挑战券每日奖励数量} ,{SoloTicketMaxCount,挑战券最大拥有数量}
primary key:
#0 [solo_boss_constant]: ID
]]
return{
	[1] = {Cost = {[1] = {Id = 1604002,Val = 1}},SoloFlushTime = "5:00:00",SoloTicketFlushCount = 5,SoloTicketMaxCount = 2000}
}