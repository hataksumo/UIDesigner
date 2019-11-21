--[[
output from excel skill.技能.xlsx
--note:

colums:
{Group,组} ,{Title,标题} ,{Desc,描述} ,{Loc,位置} ,{DebrisId,道具ID} ,{Exp,经验}
primary key:
#0 [技能突破碎片组]: Group
#1 [技能突破碎片]: Group,HelpCol,Loc
]]
local _T = LangUtil.Language
return{
	[1] = {
		Title = _T("任意SR卡牌残魂"),
		Desc = _T("从左侧列表选取任意残魂，长按可快速添加"),
		Debris = {
			[1] = {DebrisId = 1701001,Exp = 1},
			[2] = {DebrisId = 1701003,Exp = 1},
			[3] = {DebrisId = 1701009,Exp = 1},
			[4] = {DebrisId = 1701014,Exp = 1},
			[5] = {DebrisId = 1701020,Exp = 1},
			[6] = {DebrisId = 1702002,Exp = 1},
			[7] = {DebrisId = 1702005,Exp = 1},
			[8] = {DebrisId = 1702014,Exp = 1},
			[9] = {DebrisId = 1702020,Exp = 1},
			[10] = {DebrisId = 1702021,Exp = 1}
		}
	},
	[2] = {
		Title = _T("任意SR寄灵人残魂"),
		Desc = _T("从左侧列表选取任意残魂，长按可快速添加"),
		Debris = {
			[1] = {DebrisId = 1701001,Exp = 1},
			[2] = {DebrisId = 1701003,Exp = 1},
			[3] = {DebrisId = 1701009,Exp = 1},
			[4] = {DebrisId = 1701014,Exp = 1},
			[5] = {DebrisId = 1701020,Exp = 1}
		}
	},
	[3] = {
		Title = _T("任意SR守护灵残魂"),
		Desc = _T("从左侧列表选取任意残魂，长按可快速添加"),
		Debris = {
			[1] = {DebrisId = 1702002,Exp = 1},
			[2] = {DebrisId = 1702005,Exp = 1},
			[3] = {DebrisId = 1702014,Exp = 1},
			[4] = {DebrisId = 1702020,Exp = 1},
			[5] = {DebrisId = 1702021,Exp = 1}
		}
	}
}