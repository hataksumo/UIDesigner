--[[
output from excel detective.灵探系统.xlsx
--note:

colums:
{Pic,图片} ,{CaseId,案件ID} ,{Condition,条件Id} ,{Param[1],条件1} ,{Param[2],条件2} ,{Param[3],条件3}
primary key:
#0 [灵探系统条件]: Id
]]
local _T = LangUtil.Language
return{
	[10101001] = {CaseId = 10101,Condition = 5040001,Param = {[1] = 15}},--玩家等级到达15级
	[10101002] = {CaseId = 10101,Condition = 5040001,Param = {[1] = 150}},--玩家等级到达150级
	[10101003] = {CaseId = 10101,Condition = 5040002,Param = {[1] = 1,[2] = 10110}},--通关普通第1章
	[10101004] = {CaseId = 10101,Condition = 5040003,Param = {[1] = 1,[2] = 101010128}},--获得关键线索死者背包
	[10101005] = {CaseId = 10101,Condition = 5040003,Param = {[1] = 1,[2] = 101010130}},--获得线索病历
	[10101006] = {CaseId = 10101,Condition = 5040005,Param = {[1] = 1,[2] = 10401}},--与大东对话后
	[10101007] = {CaseId = 10101,Condition = 5040003,Param = {[1] = 1,[2] = 101010124}},--获得线索白手套指纹
	[10101008] = {CaseId = 10101,Condition = 5040005,Param = {[1] = 1,[2] = 10103}},--与刘珊珊说星座后
	[10101009] = {CaseId = 10101,Condition = 5040009,Param = {[1] = 1,[2] = 10101}}--完成案件-1
}