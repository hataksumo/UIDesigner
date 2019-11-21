--[[
output from excel detective.灵探系统.xlsx
--note:

colums:
{CityId,城市ID} ,{CaseId,案件Id} ,{PosId,事件点预设Id} ,{UnlockRequired[1],解锁需要条件1
} ,{UnlockRequired[2],解锁需要条件2
} ,{UnlockRequired[3],解锁需要条件3
} ,{IniState,初始状态}
primary key:
#0 [事件]: Id
]]
local _T = LangUtil.Language
return{
	[1010101] = {CityId = 101,CaseId = 10101,PosId = {0,750},IniState = 1},
	[1010102] = {CityId = 101,CaseId = 10101,PosId = {-650,375},UnlockRequired = {[1] = 10101004},IniState = 1}
}