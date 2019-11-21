--[[
output from excel ranklist.排行榜.xlsx
--note:
排行榜
排行榜
colums:
{TabId,ID} ,{Title,页签1} ,{HelpCol,辅助列} ,{Loc,位置}
primary key:
#0 [大页签]: TabId
#1 [排行榜]: TabId,HelpCol,Loc
]]
local _T = LangUtil.Language
return{
	[1] = {
		Title = "芦花古楼",
		Subs = {
			[1] = {Title = "综合"},
			[2] = {Title = "风"},
			[3] = {Title = "花"},
			[4] = {Title = "雪"},
			[5] = {Title = "月"}
		}
	},
	[2] = {
		Title = "竞技场",
		Subs = {
			[1] = {Title = "综合"},
			[2] = {Title = "白银"}
		}
	},
	[3] = {
		Title = "财富",
		Subs = {
			[1] = {Title = "综合"}
		}
	},
	[4] = {
		Title = "卡牌",
		Subs = {
			[1] = {Title = "战力"}
		}
	},
	[5] = {
		Title = "等级",
		Subs = {
			[1] = {Title = "等级"}
		}
	},
	[6] = {
		Title = "关卡",
		Subs = {
			[1] = {Title = "星星"}
		}
	},
	[7] = {
		Subs = {
			[2] = {Title = "关卡数"}
		}
	}
}