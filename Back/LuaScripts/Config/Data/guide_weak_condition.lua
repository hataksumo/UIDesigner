--[[
output from excel guide.引导.xlsx
--note:

colums:
{ID,ID} ,{condition,条件1 时间 2 等级 3 关卡4教学失败2次5当前关卡走引导} ,{param,参数} ,{isweak,0 强制引导  1  弱引导} ,{group,执行组}
primary key:
#0 [guide_weak_condition]: ID
]]
local _T = LangUtil.Language
return{
	[1001] = {condition = 1,param = 10101,isweak = true,group = 100},
	[1002] = {condition = 1,param = 10103,isweak = true,group = 101},
	[1003] = {condition = 1,param = 10109,isweak = true,group = 102},
	[1004] = {condition = 1,param = 10110,isweak = true,group = 103},
	[1005] = {condition = 1,param = 10201,isweak = true,group = 104},
	[1006] = {condition = 1,param = 10301,isweak = true,group = 105},
	[1007] = {condition = 1,param = 10401,isweak = true,group = 106},
	[1008] = {condition = 1,param = 10501,isweak = true,group = 107},
}