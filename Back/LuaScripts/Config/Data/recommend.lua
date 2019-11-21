--[[
output from excel recommend.每日推荐.xlsx
--note:

colums:
{ID,唯一键} ,{Class,所属推荐类型组id} ,{Name,推荐活动名称} ,{Icon,活动玩法的图标} ,{Param1,简略奖励信息图} ,{Condition,奖励图片} ,{Des,活动玩法描述} ,{Funcion,指向玩法}
primary key:
#0 [recommend]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {Class = 1,Name = "个人boss",Icon = "ui_dtex_funcion_1",Param1 = {1,2,3},Condition = {1401002,1401003,1401006},Des = "玩法介绍的文本，待补充"},
	[2] = {Class = 1,Name = "个人竞技",Icon = "ui_dtex_funcion_2",Param1 = {1,2},Condition = {1401002,1401003,1401006},Des = "玩法介绍的文本，待补充"},
	[3] = {Class = 1,Name = "芦花古楼",Icon = "ui_dtex_funcion_3",Param1 = {1},Condition = {1401002,1401003,1401006},Des = "玩法介绍的文本，待补充"},
	[4] = {Class = 1,Name = "教学关卡",Icon = "ui_dtex_funcion_4",Param1 = {1,2,3},Condition = {1401002,1401003,1401006},Des = "玩法介绍的文本，待补充"},
	[5] = {Class = 2,Name = "实时竞技",Icon = "ui_dtex_funcion_5",Param1 = {1,2},Condition = {1401002,1401003,1401006},Des = "玩法介绍的文本，待补充"},
	[6] = {Class = 2,Name = "国战攻城",Icon = "ui_dtex_funcion_6",Param1 = {1},Condition = {1401002,1401003,1401006},Des = "玩法介绍的文本，待补充"}
}