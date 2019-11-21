--[[
output from excel operAct.运营活动.xlsx
--note:
客户端配置在线礼包的表
colums:
{ID,唯一键} ,{Day,时间} ,{Title,标题} ,{Award[1].id,奖励ID3} ,{Award[1].val,奖励数量3} ,{Award[2].id,奖励ID1} ,{Award[2].val,奖励数量1} ,{Award[3].id,奖励ID2} ,{Award[3].val,奖励数量2}
primary key:
#0 [七日礼包]: ID
]]
local _T = LangUtil.Language
return{
	[301] = {Day = 1,Title = "欢迎新人",Award = {[1] = {id = 1401010,val = 1288}}},
	[302] = {Day = 2,Title = "次日登陆",Award = {[1] = {id = 1601001,val = 10}}},
	[303] = {Day = 3,Title = "3日登陆",Award = {[1] = {id = 1502002,val = 40}}},
	[304] = {Day = 4,Title = "4日登陆",Award = {[1] = {id = 2002411,val = 1},[2] = {id = 2102411,val = 1}}},
	[305] = {Day = 5,Title = "5日登陆",Award = {[1] = {id = 1605007,val = 5},[2] = {id = 1609001,val = 30}}},
	[306] = {Day = 6,Title = "6日登陆",Award = {[1] = {id = 1605018,val = 5}}},
	[307] = {Day = 7,Title = "7日登陆",Award = {[1] = {id = 1601001,val = 10}}},
	[308] = {Day = 8,Title = "8日登陆",Award = {[1] = {id = 1602001,val = 10},[2] = {id = 1401010,val = 1000}}}
}