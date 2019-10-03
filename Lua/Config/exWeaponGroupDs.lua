--[[
--note:

colums:
{Note,名称Id} ,{WpId,专属武器Id} ,{Weight,权重}
primary key:
#0 [专属武器分类]: SubQua,HelpCol,Loc
]]
local _T = LangUtil.Language
return{
	[1] = {
		wps = {
			[1] = {Note = "许褚碎片",WpId = 1102002,Weight = 2000},
			[2] = {Note = "烈风螳螂碎片",WpId = 1102021,Weight = 2000},
			[3] = {Note = "朱仙碎片",WpId = 1102024,Weight = 2000},
			[4] = {Note = "雷震子碎片",WpId = 1102026,Weight = 2000},
			[5] = {Note = "飞廉碎片",WpId = 1102017,Weight = 2000}
		}
	},
	[2] = {
		wps = {
			[1] = {Note = "李轩辕碎片",WpId = 1102005,Weight = 2000},
			[2] = {Note = "徐晃碎片",WpId = 1102009,Weight = 2000},
			[3] = {Note = "石灵明碎片",WpId = 1102014,Weight = 2000},
			[4] = {Note = "高顺碎片",WpId = 1102020,Weight = 2000},
			[5] = {Note = "燕青碎片",WpId = 1102030,Weight = 2000}
		}
	},
	[3] = {
		wps = {
			[1] = {Note = "典韦碎片",WpId = 1102003,Weight = 5000},
			[2] = {Note = "西方龙碎片",WpId = 1102016,Weight = 5000}
		}
	},
	[4] = {
		wps = {
			[1] = {Note = "张郃碎片",WpId = 1102010,Weight = 3000},
			[2] = {Note = "张飞碎片",WpId = 1102011,Weight = 4000},
			[3] = {Note = "秦琼碎片",WpId = 1102031,Weight = 3000}
		}
	},
	[5] = {
		wps = {
			[1] = {Note = "关羽碎片",WpId = 1102001,Weight = 2500},
			[2] = {Note = "夏侯惇碎片",WpId = 1102012,Weight = 2500},
			[3] = {Note = "吕布碎片",WpId = 1102028,Weight = 2500},
			[4] = {Note = "项羽碎片",WpId = 1102006,Weight = 2500}
		}
	}
}