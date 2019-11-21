--[[
--note:

colums:
{ID,唯一键} ,{Desc,描述} ,{ShowIcon,显示图标} ,{Type,增益类别
1水晶颜色
2性别
3守护灵类型} ,{ExtendRule,扩展规则}
primary key:
#0 [solo_boss_category]: ID
]]
return{
	[101001] = {Desc = "红水晶",ShowIcon = "ui_dtex_Other_010",Type = 1,ExtendRule = "1"},
	[101002] = {Desc = "黄水晶",ShowIcon = "ui_dtex_Other_011",Type = 1,ExtendRule = "2"},
	[101003] = {Desc = "蓝水晶",ShowIcon = "ui_dtex_Other_009",Type = 1,ExtendRule = "3"},
	[102001] = {Desc = "男人",ShowIcon = "ui_dtex_Other_001",Type = 2,ExtendRule = "1"},
	[102002] = {Desc = "女人",ShowIcon = "ui_dtex_Other_002",Type = 2,ExtendRule = "2"},
	[103001] = {Desc = "神武灵",ShowIcon = "ui_dtex_Other_010",Type = 3,ExtendRule = "1"},
	[103002] = {Desc = "魔武灵",ShowIcon = "ui_dtex_Other_011",Type = 3,ExtendRule = "2"},
	[103003] = {Desc = "仙武灵",ShowIcon = "ui_dtex_Other_009",Type = 3,ExtendRule = "3"},
	[103004] = {Desc = "兽武灵",ShowIcon = "ui_dtex_Other_011",Type = 3,ExtendRule = "4"},
	[103005] = {Desc = "人武灵",ShowIcon = "ui_dtex_Other_009",Type = 3,ExtendRule = "5"}
}