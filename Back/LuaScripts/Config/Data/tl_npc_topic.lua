--[[
output from excel detective.灵探系统.xlsx
--note:

colums:
{PersonId,人物Id} ,{TopicId,话题Id} ,{Hello,话题} ,{IniDialogId,初始对话Id} ,{UlockDialogIds,解锁对话组Id}
primary key:
#0 [对白主题]: Id
]]
local _T = LangUtil.Language
return{
	[10101] = {PersonId = 101,TopicId = 10101,Hello = "刘珊珊介绍",IniDialogId = 1010101},
	[10102] = {PersonId = 101,TopicId = 10102,Hello = "刘珊珊介绍案情",IniDialogId = 1010201,UlockDialogIds = {1040101}},
	[10103] = {PersonId = 101,TopicId = 10103,Hello = "刘珊珊说星座",IniDialogId = 1010301},
	[10201] = {PersonId = 102,TopicId = 10201,Hello = "沈梦介绍案情",IniDialogId = 1020101},
	[10202] = {PersonId = 102,TopicId = 10202,Hello = "沈梦白手套",IniDialogId = 1020201},
	[10301] = {PersonId = 103,TopicId = 10301,Hello = "林轩介绍案情",IniDialogId = 1030101},
	[10401] = {PersonId = 104,TopicId = 10401,Hello = "大东介绍案情",IniDialogId = 1040101}
}