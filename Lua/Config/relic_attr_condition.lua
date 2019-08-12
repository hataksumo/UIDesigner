--[[
--note:
配置全局属性的筛选器。该筛选id的mask与卡牌的mask相与值大于0，则可把该属性加个对应卡牌
colums:
{Id,ID} ,{Desc,描述} ,{mask,掩码}
primary key:
#0 [全局属性筛选器]: Id
]]
local _T = LangUtil.Language
return{
	[101] = {Desc = "红水晶的卡牌",mask = {3}},--红水晶的卡牌
	[102] = {Desc = "黄水晶的卡牌",mask = {5}},--黄水晶的卡牌
	[103] = {Desc = "蓝水晶的卡牌",mask = {9}},--蓝水晶的卡牌
	[104] = {Desc = "所有寄灵人",mask = {16}},--所有寄灵人
	[105] = {Desc = "所有守护灵",mask = {32}},--所有守护灵
	[106] = {Desc = "所有人",mask = {65535}},--所有人
	[107] = {Desc = "女性寄灵人",mask = {16,128}}--女性寄灵人
}