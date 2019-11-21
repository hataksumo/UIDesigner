--[[
output from excel drill.教学关卡.xlsx
--note:

colums:
{ID,唯一键} ,{Name,分类名称} ,{SortID,排序ID} ,{Picture,标签图片}
primary key:
#0 [标签页]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,Name = "基本操作训练",SortID = 1,Picture = "ui_dtex_Jixunying_001"},
	[2] = {ID = 2,Name = "行动模式训练",SortID = 2,Picture = "ui_dtex_Jixunying_002"},
	[3] = {ID = 3,Name = "进阶策略训练",SortID = 3,Picture = "ui_dtex_Jixunying_003"},
	[4] = {ID = 4,Name = "综合训练",SortID = 4,Picture = "ui_dtex_Jixunying_003"}
}