--[[
output from excel shop.商店.xlsx
--note:

colums:
{ShopId,商店ID} ,{Uid,页签唯一ID} ,{TagName,页签名} ,{TagIcon,页签图标} ,{ResBarId,资源栏ID}
primary key:
#0 [商店页签]: Uid
]]
local _T = LangUtil.Language
return{
	[1] = {ShopId = 1,TagName = "灵玉商城",ResBarId = 37},
	[2] = {ShopId = 2,TagName = "珍品商城",ResBarId = 24},
	[3] = {ShopId = 2,TagName = "杂货铺",ResBarId = 26},
	[4] = {ShopId = 3,TagName = "荣誉商城",ResBarId = 27},
	[5] = {ShopId = 3,TagName = "芦花商城",ResBarId = 29},
	[6] = {ShopId = 1,TagName = "礼包商城",ResBarId = 37}
}