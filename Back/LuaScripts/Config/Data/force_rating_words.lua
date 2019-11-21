--[[
output from excel forceRating.战力评估.xlsx
--note:

colums:
{Id,Id} ,{ForcePer.min,与标准战力的最小比值} ,{ForcePer.max,与标准战力的最大比值} ,{Words,进度评价}
primary key:
#0 [进度评价]: Id
]]
local _T = LangUtil.Language
return{
	[1] = {Id = 1,ForcePer = {min = 0,max = 0.75},Words = "ui_dtex_Quality_111"},
	[2] = {Id = 2,ForcePer = {min = 0.75,max = 1},Words = "ui_dtex_Quality_114"},
	[3] = {Id = 3,ForcePer = {min = 1,max = 1.15},Words = "ui_dtex_Quality_113"},
	[4] = {Id = 4,ForcePer = {min = 1.15,max = 1.3},Words = "ui_dtex_Quality_115"},
	[5] = {Id = 5,ForcePer = {min = 1.3,max = 1.5},Words = "ui_dtex_Quality_116"},
	[6] = {Id = 6,ForcePer = {min = 1.5,max = 1000},Words = "ui_dtex_Quality_112"}
}