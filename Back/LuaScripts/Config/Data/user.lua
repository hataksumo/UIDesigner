--[[
output from excel basicInfo.基础信息.xlsx
--note:

colums:
{ID,唯一键} ,{Icon,头像} ,{level,初始等级} ,{MaxLevel,最大等级}
primary key:
#0 [User表]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {Icon = "???",level = 1,MaxLevel = 100}
}