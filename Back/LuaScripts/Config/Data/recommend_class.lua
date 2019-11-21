--[[
output from excel recommend.每日推荐.xlsx
--note:

colums:
{ID,唯一键} ,{ResetTime,推荐类型名称}
primary key:
#0 [recommend_class]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ResetTime = "日常玩法"},
	[2] = {ResetTime = "限时活动"}
}