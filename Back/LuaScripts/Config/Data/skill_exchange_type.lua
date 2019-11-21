--[[
output from excel shop.商店.xlsx
--note:

colums:
{ID,id} ,{Type,技能类型} ,{TagName,页签名} ,{ResBarId,资源栏ID}
primary key:
#0 [技能兑换页签]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,Type = 1,TagName = "阴"},
	[2] = {ID = 2,Type = 2,TagName = "阳"}
}