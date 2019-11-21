--[[
output from excel recommend.每日推荐.xlsx
--note:

colums:
{ID,唯一键} ,{Picture,图片底图素材} ,{Class,奖励内容文本}
primary key:
#0 [recommend_reward]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {Picture = "ui_t_Daily_005",Class = "经验"},
	[2] = {Picture = "ui_t_Daily_004",Class = "钻石"},
	[3] = {Picture = "ui_t_Daily_006",Class = "金币"},
	[4] = {Picture = "ui_t_Daily_004",Class = "材料"}
}