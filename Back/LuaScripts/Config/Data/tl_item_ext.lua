--[[
output from excel detective.灵探系统.xlsx
--note:

colums:
{Id,Id} ,{City,城市} ,{ItemId,道具Id} ,{IsUsefull,是否有用} ,{RspMsg,使用回复}
primary key:
#0 [剧情道具]: Id
]]
local _T = LangUtil.Language
return{
	[101010125] = {Id = 101010125,City = 101,ItemId = 101010125,RspMsg = "你用船票到售票处租了船，新地点开启！"},--船票
	[101010132] = {Id = 101010132,City = 101,ItemId = 101010132,RspMsg = "你用紫光灯照射了手套，发现了一些指纹"}--一盏紫光灯
}