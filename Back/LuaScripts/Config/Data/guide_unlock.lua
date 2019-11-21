--[[
output from excel guide.引导.xlsx
--note:

colums:
{ID,id} ,{des,} ,{lock_id,解锁} ,{group,组}
primary key:
#0 [guide_unlock]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {des = "感灵",lock_id = 302,group = {9}},
	[2] = {des = "点击冒险1-1",lock_id = 101,group = {10}},
	[3] = {des = "点击突破",lock_id = 202,group = {11,12,13}},
	[4] = {des = "点击装配技能",lock_id = 20202,group = {14,15}},
	[5] = {des = "兑换技能",lock_id = 204,group = {16,17}},
	[6] = {des = "探险",lock_id = 106,group = {18,19,20}},
	[7] = {des = "装备",lock_id = 313,group = {21,22}},
	[8] = {des = "熔炼",lock_id = 318,group = {23,24}},
	[9] = {des = "神器",lock_id = 203,group = {25,26}},
	[10] = {des = "传记",lock_id = 319,group = {27}},
	[11] = {des = "地狱道",lock_id = 205,group = {28}},
	[12] = {des = "通灵",lock_id = 305,group = {29}},
	[13] = {des = "竞技场",lock_id = 104,group = {30}},
	[14] = {des = "失恋宝库",lock_id = 107,group = {31}},
	[15] = {des = "恶灵入侵",lock_id = 103,group = {32}},
	[16] = {des = "楼花鼓楼",lock_id = 102,group = {33}},
	[17] = {des = "困难关卡",lock_id = 10102,group = {34}},
	[18] = {des = "竞技场",lock_id = 311,group = {35}},
	[19] = {des = "寄灵人抽卡",lock_id = 32003,group = {36}},
	[20] = {des = "国战",lock_id = 401,group = {37}}
}