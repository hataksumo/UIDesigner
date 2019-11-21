--[[
output from excel operAct.运营活动.xlsx
--note:
客户端配置在线礼包的表
colums:
{ID,唯一键} ,{Minute,时间} ,{Award[1].id,奖励ID3} ,{Award[1].val,奖励数量3} ,{Award[2].id,奖励ID2} ,{Award[2].val,奖励数量2} ,{Award[3].id,奖励ID1} ,{Award[3].val,奖励数量1}
primary key:
#0 [在线礼包]: ID
]]
local _T = LangUtil.Language
return{
	[201] = {Minute = 5,Award = {[1] = {id = 1401010,val = 25},[2] = {id = 1401002,val = 10000},[3] = {id = 1401003,val = 10000}}},
	[202] = {Minute = 10,Award = {[1] = {id = 1602001,val = 1},[2] = {id = 1401010,val = 25},[3] = {id = 1401002,val = 10000}}},
	[203] = {Minute = 15,Award = {[1] = {id = 1401010,val = 50},[2] = {id = 1401002,val = 10000},[3] = {id = 1401003,val = 10000}}},
	[204] = {Minute = 30,Award = {[1] = {id = 1602001,val = 1},[2] = {id = 1401010,val = 50},[3] = {id = 1401002,val = 10000}}},
	[205] = {Minute = 45,Award = {[1] = {id = 1401010,val = 50},[2] = {id = 1401002,val = 10000},[3] = {id = 1401003,val = 10000}}},
	[206] = {Minute = 60,Award = {[1] = {id = 1401010,val = 50},[2] = {id = 1603001,val = 100},[3] = {id = 1401002,val = 10000}}},
	[207] = {Minute = 90,Award = {[1] = {id = 1401001,val = 648},[2] = {id = 1401010,val = 75},[3] = {id = 1401002,val = 10000}}},
	[208] = {Minute = 120,Award = {[1] = {id = 1602001,val = 2},[2] = {id = 1401010,val = 125},[3] = {id = 1401002,val = 10000}}}
}