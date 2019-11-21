--[[
output from excel shop.商店.xlsx
--note:

colums:
{Name,名字} ,{ShopIcon,图标} ,{IsShow,是否显示}
primary key:
#0 [商店类型]: ShopId
]]
local _T = LangUtil.Language
return{
	[1] = {Name = "灵玉商店",IsShow = true},
	[2] = {Name = "杂货店",IsShow = true},
	[3] = {Name = "积分商店",IsShow = true}
}