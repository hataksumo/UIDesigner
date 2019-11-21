--[[
output from excel draw.抽卡.xlsx
--note:

colums:
{ID,唯一键} ,{CardPool,卡池类型} ,{PoolName,卡池名称} ,{RandomCount,抽取次数} ,{Cost[1].Id,抽卡消耗1Id} ,{Cost[1].Val,抽卡消耗1数量}
primary key:
#0 [随机池]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,CardPool = 1,PoolName = "守护灵单抽",RandomCount = 1,Cost = {[1] = {Id = 1602001,Val = 1}}},
	[2] = {ID = 2,CardPool = 1,PoolName = "守护灵十连",RandomCount = 10,Cost = {[1] = {Id = 1602001,Val = 10}}},
	[3] = {ID = 3,CardPool = 2,PoolName = "新手卡池单抽",RandomCount = 1,Cost = {[1] = {Id = 1602003,Val = 1}}},
	[4] = {ID = 4,CardPool = 2,PoolName = "新手卡池十连",RandomCount = 10,Cost = {[1] = {Id = 1602003,Val = 10}}},
	[5] = {ID = 5,CardPool = 3,PoolName = "破碎守护灵单抽",RandomCount = 1,Cost = {[1] = {Id = 1602002,Val = 1}}},
	[6] = {ID = 6,CardPool = 3,PoolName = "破碎守护灵十连",RandomCount = 10,Cost = {[1] = {Id = 1602002,Val = 10}}},
	[7] = {ID = 7,CardPool = 4,PoolName = "寄灵人单抽",RandomCount = 1,Cost = {[1] = {Id = 1601001,Val = 1}}},
	[8] = {ID = 8,CardPool = 4,PoolName = "寄灵人十连",RandomCount = 10,Cost = {[1] = {Id = 1601001,Val = 10}}}
}