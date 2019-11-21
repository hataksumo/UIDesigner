--[[
output from excel detective.灵探系统.xlsx
--note:

colums:
{CityId,城市Id} ,{Loc,顺位} ,{Name,名字} ,{UnlockRequired[1],解锁需要条件1
} ,{UnlockRequired[2],解锁需要条件2
} ,{UnlockRequired[3],解锁需要条件3
} ,{RspMsg,解锁提示}
primary key:
#0 [城市]: Id
]]
local _T = LangUtil.Language
return{
	[101] = {CityId = 101,Loc = 1,Name = "北京",UnlockRequired = {[1] = 10101001}},
	[102] = {CityId = 102,Loc = 2,Name = "上海",UnlockRequired = {[1] = 10101002,[2] = 10101003},RspMsg = "玩家等级达到150级解锁且通关普通第1章"}
}