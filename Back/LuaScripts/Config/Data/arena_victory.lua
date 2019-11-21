--[[
output from excel arena.竞技场.xlsx
--note:

colums:
{ID,唯一键} ,{Type,白银0 黄金1 } ,{Victory,胜点} ,{Award[1].id,道具ID1} ,{Award[1].val,道具数量1} ,{Award[2].id,道具ID2} ,{Award[2].val,道具数量2}
primary key:
#0 [竞技场胜点宝箱]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,Type = 0,Victory = 6,Award = {[1] = {id = 1401008,val = 50},[2] = {id = 1401010,val = 10}}},
	[2] = {ID = 2,Type = 0,Victory = 12,Award = {[1] = {id = 1401008,val = 50},[2] = {id = 1401010,val = 15}}},
	[3] = {ID = 3,Type = 0,Victory = 20,Award = {[1] = {id = 1401008,val = 100},[2] = {id = 1401010,val = 20}}},
	[4] = {ID = 4,Type = 1,Victory = 6,Award = {[1] = {id = 1401008,val = 50},[2] = {id = 1401010,val = 30}}},
	[5] = {ID = 5,Type = 1,Victory = 12,Award = {[1] = {id = 1401008,val = 100},[2] = {id = 1401010,val = 40}}},
	[6] = {ID = 6,Type = 1,Victory = 20,Award = {[1] = {id = 1401008,val = 150},[2] = {id = 1602001,val = 1}}}
}