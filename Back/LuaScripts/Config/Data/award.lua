--[[
output from excel drop.掉落表.xlsx
--note:
奖励表，配置没有随机的掉落
colums:
{Id,ID} ,{AwardTimes,奖励次数} ,{Award[1].Id,奖励Id1} ,{Award[1].Num,奖励数量1} ,{Award[2].Id,奖励Id2} ,{Award[2].Num,奖励数量2} ,{Award[3].Id,奖励道具3} ,{Award[3].Num,数量3} ,{Award[4].Id,奖励道具4} ,{Award[4].Num,数量4}
primary key:
#0 [Award]: Id
]]
local _T = LangUtil.Language
return{
	[1011] = {Id = 1011,AwardTimes = 1,Award = {[1] = {Id = 1401002,Num = 240},[2] = {Id = 1603001,Num = 3},[3] = {Id = 1401010,Num = 20}}},--新手引导奖励
	[1012] = {Id = 1012,AwardTimes = 1,Award = {[1] = {Id = 1401010,Num = 100}}},--新手引导-钻石
	[1013] = {Id = 1013,AwardTimes = 1,Award = {[1] = {Id = 1602003,Num = 1}}},--新手引导-新手抽卡券
	[1014] = {Id = 1014,AwardTimes = 1,Award = {[1] = {Id = 1603001,Num = 20}}},--新手引导-绿色材料
	[1015] = {Id = 1015,AwardTimes = 1,Award = {[1] = {Id = 1702015,Num = 20}}},--新手引导-于禁碎片
	[1016] = {Id = 1016,AwardTimes = 1,Award = {[1] = {Id = 1401015,Num = 500}}},--新手引导-熔炼精华
	[1017] = {Id = 1017,AwardTimes = 1,Award = {[1] = {Id = 1606003,Num = 1},[2] = {Id = 1401002,Num = 10000}}},--新手引导-神器
	[1018] = {Id = 1018,AwardTimes = 1,Award = {[1] = {Id = 1054,Num = 1}}}--新手引导-镇邪
}