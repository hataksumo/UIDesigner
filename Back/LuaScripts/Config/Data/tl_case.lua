--[[
output from excel detective.灵探系统.xlsx
--note:

colums:
{CityId,城市Id} ,{CaseId,案件Id} ,{Type,案件类型 1主线2随机} ,{Name,案件名字} ,{UnlockRequired[1],解锁需要条件1
} ,{UnlockRequired[2],解锁需要条件2
} ,{UnlockRequired[3],解锁需要条件3
} ,{EndRequired[1],结束条件1
} ,{EndRequired[2],结束条件2
} ,{EndRequired[3],结束条件3
} ,{Story,故事回顾} ,{CriminalNpc,嫌疑人} ,{CriminalSuspects,嫌疑人组} ,{AdduceIniDialogId,举证对话Id} ,{WrongReplay,错误回复} ,{AdduceWords,举证台词}
primary key:
#0 [案件]: Id
#1 [举证]: Id
]]
local _T = LangUtil.Language
return{
	[10101] = {CityId = 101,CaseId = 10101,Type = 1,Name = _T("北京案件-1"),Story = "这是北京案件1的故事回顾",CriminalNpc = 103,CriminalSuspects = {101,102,103,104},AdduceIniDialogId = 1010101,WrongReplay = "完全不懂你在讲什么",AdduceWords = "凶手就是你！%s！"},
	[10102] = {CityId = 101,CaseId = 10102,Type = 2,Name = _T("北京案件-2"),UnlockRequired = {[1] = 10101009}}
}