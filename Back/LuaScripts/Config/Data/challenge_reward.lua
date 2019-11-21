--[[
output from excel arena.竞技场.xlsx
--note:

colums:
{ID,唯一键} ,{Rank,排名} ,{Reward,单位奖励} ,{ArenaType,竞技场类型1-黄金，0-白银}
primary key:
#0 [挑战奖励]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,Rank = 1,Reward = 500,ArenaType = 1},
	[2] = {ID = 2,Rank = 2,Reward = 400,ArenaType = 1},
	[3] = {ID = 3,Rank = 3,Reward = 300,ArenaType = 1},
	[4] = {ID = 4,Rank = 4,Reward = 200,ArenaType = 1},
	[5] = {ID = 5,Rank = 5,Reward = 100,ArenaType = 1},
	[6] = {ID = 6,Rank = 10,Reward = 50,ArenaType = 1},
	[7] = {ID = 7,Rank = 20,Reward = 30,ArenaType = 1},
	[8] = {ID = 8,Rank = 50,Reward = 20,ArenaType = 1},
	[9] = {ID = 9,Rank = 100,Reward = 10,ArenaType = 1},
	[10] = {ID = 10,Rank = 500,Reward = 5,ArenaType = 1},
	[11] = {ID = 11,Rank = 1000,Reward = 4,ArenaType = 1},
	[12] = {ID = 12,Rank = 1,Reward = 500,ArenaType = 0},
	[13] = {ID = 13,Rank = 2,Reward = 400,ArenaType = 0},
	[14] = {ID = 14,Rank = 3,Reward = 300,ArenaType = 0},
	[15] = {ID = 15,Rank = 4,Reward = 200,ArenaType = 0},
	[16] = {ID = 16,Rank = 5,Reward = 100,ArenaType = 0},
	[17] = {ID = 17,Rank = 10,Reward = 50,ArenaType = 0},
	[18] = {ID = 18,Rank = 20,Reward = 30,ArenaType = 0},
	[19] = {ID = 19,Rank = 50,Reward = 20,ArenaType = 0},
	[20] = {ID = 20,Rank = 100,Reward = 10,ArenaType = 0},
	[21] = {ID = 21,Rank = 500,Reward = 5,ArenaType = 0},
	[22] = {ID = 22,Rank = 1000,Reward = 4,ArenaType = 0}
}