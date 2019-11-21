--[[
output from excel national_map地图.xlsx
--note:

colums:
{Id,行id} ,{GroupId,组id} ,{Up,排名上限} ,{Down,排名下限} ,{RankAward[1].Id,奖励} ,{RankAward[1].Val,奖励值}
primary key:
#0 [攻城战排行奖励]: GroupId,Loc
]]
local _T = LangUtil.Language
return{
	[1001] = {
		[1] = {Id = 1,Up = 1,Down = 1,RankAward = {[1] = {Id = 1401010,Val = 500}}},--杀敌排行首占
		[2] = {Id = 2,Up = 2,Down = 2,RankAward = {[1] = {Id = 1401010,Val = 300}}},--杀敌排行首占
		[3] = {Id = 3,Up = 3,Down = 3,RankAward = {[1] = {Id = 1401010,Val = 200}}},--杀敌排行首占
		[4] = {Id = 4,Up = 4,Down = 10,RankAward = {[1] = {Id = 1401010,Val = 100}}}--杀敌排行首占
	},
	[2001] = {
		[1] = {Id = 5,Up = 1,Down = 1,RankAward = {[1] = {Id = 1401010,Val = 500}}},--破城排行首占
		[2] = {Id = 6,Up = 2,Down = 2,RankAward = {[1] = {Id = 1401010,Val = 300}}},--破城排行首占
		[3] = {Id = 7,Up = 3,Down = 3,RankAward = {[1] = {Id = 1401010,Val = 200}}},--破城排行首占
		[4] = {Id = 8,Up = 4,Down = 10,RankAward = {[1] = {Id = 1401010,Val = 100}}}--破城排行首占
	}
}