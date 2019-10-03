--[[
--note:
奖励表，配置没有随机的掉落
colums:
{Id,ID} ,{AwardTimes,奖励次数} ,{Award[1].Id,奖励Id1} ,{Award[1].Num,奖励数量1} ,{Award[2].Id,奖励Id2} ,{Award[2].Num,奖励数量2} ,{Award[3].Id,奖励道具3} ,{Award[3].Num,数量3} ,{Award[4].Id,奖励道具4} ,{Award[4].Num,数量4}
primary key:
#0 [Award]: Id
]]
local _T = LangUtil.Language
return{
	[1011] = {Id = 1011,AwardTimes = 1,Award = {[1] = {Id = 1401002,Num = 240},[2] = {Id = 1603001,Num = 3},[3] = {Id = 1401010,Num = 20}}}--新手引导奖励
}