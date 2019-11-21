--[[
output from excel national_tanlent国战天赋表.xlsx
--note:
国战天赋
colums:
{ID,ID} ,{Tanlent_Type,天赋类型
1科技2战斗} ,{TanlentId,天赋ID} ,{Tanlent_Name,天赋名称} ,{Tanlent1_CorpsId,军团id
配置了该项，表示只在该军团下，该天赋才生效} ,{Prop[1].Id,属性1ID} ,{Prop[1].Val,属性1值} ,{Prop[2].Id,属性2ID} ,{Prop[2].Val,属性2值} ,{Prop[3].Id,属性3ID} ,{Prop[3].Val,属性3值} ,{Tanlent_Range,天赋作用范围（多用于战斗）
1.所在队伍
2.卡牌自身3.全局} ,{Tanlent_Unlock,1-5级天赋解锁
所需统御等级} ,{Tanlent_Value,天赋1-5等级效果} ,{Description,描述} ,{Icon,技能图标}
primary key:
#0 [国战天赋]: ID
]]
local _T = LangUtil.Language
return{
	[1] = {ID = 1,Tanlent_Type = 1,TanlentId = 1,Tanlent_Name = "伐木精通II",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "银木产量提高%s",Icon = "icon_1311002"},
	[2] = {ID = 2,Tanlent_Type = 1,TanlentId = 2,Tanlent_Name = "冶炼精通II",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "赤铁产量提高%s",Icon = "icon_1311003"},
	[3] = {ID = 3,Tanlent_Type = 1,TanlentId = 3,Tanlent_Name = "采石精通II",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "精石产量提高%s",Icon = "icon_1311004"},
	[4] = {ID = 4,Tanlent_Type = 1,TanlentId = 4,Tanlent_Name = "耕犁精通II",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "灵谷产量提高%s",Icon = "icon_1311005"},
	[5] = {ID = 5,Tanlent_Type = 1,TanlentId = 5,Tanlent_Name = "高效利用II",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.05,0.1,0.15,0.2,0.25},Description = "全部资源产量提高%s",Icon = "icon_1309020"},
	[6] = {ID = 6,Tanlent_Type = 1,TanlentId = 6,Tanlent_Name = "仓库储量上限",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {10000,20000,30000,60000,100000},Description = "仓库资源容量提升%s",Icon = "icon_1311006"},
	[7] = {ID = 7,Tanlent_Type = 1,TanlentId = 7,Tanlent_Name = "采集银木",Tanlent_Range = 1,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "采集获得银木数量提升%s",Icon = "icon_1311007"},
	[8] = {ID = 8,Tanlent_Type = 1,TanlentId = 8,Tanlent_Name = "采集赤铁",Tanlent_Range = 1,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "采集获得赤铁数量提升%s",Icon = "icon_1311008"},
	[9] = {ID = 9,Tanlent_Type = 1,TanlentId = 9,Tanlent_Name = "采集灵谷",Tanlent_Range = 1,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "采集获得灵谷数量提升%s",Icon = "icon_1311009"},
	[10] = {ID = 10,Tanlent_Type = 1,TanlentId = 10,Tanlent_Name = "采集精石",Tanlent_Range = 1,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "采集获得精石数量提升%s",Icon = "icon_1311010"},
	[11] = {ID = 11,Tanlent_Type = 1,TanlentId = 11,Tanlent_Name = "采集加速",Tanlent_Range = 1,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "提升采集速度%s",Icon = "icon_1311011"},
	[12] = {ID = 12,Tanlent_Type = 1,TanlentId = 12,Tanlent_Name = "采集加成",Tanlent_Range = 1,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "采集获得资源数量提升%s",Icon = "icon_1309007"},
	[13] = {ID = 13,Tanlent_Type = 1,TanlentId = 13,Tanlent_Name = "行军加速",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "队伍行军速度提升%s",Icon = "icon_1311013"},
	[14] = {ID = 14,Tanlent_Type = 1,TanlentId = 14,Tanlent_Name = "科研加速",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "科技研究速度提升%s",Icon = "icon_1309009"},
	[15] = {ID = 15,Tanlent_Type = 1,TanlentId = 15,Tanlent_Name = "行动力上限",Tanlent_Range = 2,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {5,10,15,20,25},Description = "卡牌行动力上限提升%s",Icon = "icon_1309010"},
	[16] = {ID = 16,Tanlent_Type = 1,TanlentId = 16,Tanlent_Name = "行动力恢复",Tanlent_Range = 2,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "卡牌行动力恢复速度提高%s",Icon = "icon_1309011"},
	[17] = {ID = 17,Tanlent_Type = 1,TanlentId = 17,Tanlent_Name = "征募加速",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "征募速度提升",Icon = "icon_1311014"},
	[18] = {ID = 18,Tanlent_Type = 1,TanlentId = 18,Tanlent_Name = "军力上限",Tanlent_Range = 2,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {100,200,300,400,500},Description = "卡牌军力值上限提升%s",Icon = "icon_1311018"},
	[19] = {ID = 19,Tanlent_Type = 1,TanlentId = 22,Tanlent_Name = "伤害提升",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "造成伤害提升%s",Icon = "icon_1309014"},
	[20] = {ID = 20,Tanlent_Type = 1,TanlentId = 23,Tanlent_Name = "伤害减免",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "受到伤害减免%s",Icon = "icon_1309015"},
	[21] = {ID = 21,Tanlent_Type = 1,TanlentId = 26,Tanlent_Name = "伐木精通",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.05,0.1,0.15,0.2,0.25},Description = "银木产量提高%s",Icon = "icon_1311002"},
	[22] = {ID = 22,Tanlent_Type = 1,TanlentId = 27,Tanlent_Name = "冶炼精通",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.05,0.1,0.15,0.2,0.25},Description = "赤铁产量提高%s",Icon = "icon_1311003"},
	[23] = {ID = 23,Tanlent_Type = 1,TanlentId = 28,Tanlent_Name = "采石精通",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.05,0.1,0.15,0.2,0.25},Description = "精石产量提高%s",Icon = "icon_1311004"},
	[24] = {ID = 24,Tanlent_Type = 1,TanlentId = 29,Tanlent_Name = "耕犁精通",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.05,0.1,0.15,0.2,0.25},Description = "灵谷产量提高%s",Icon = "icon_1311005"},
	[25] = {ID = 25,Tanlent_Type = 1,TanlentId = 30,Tanlent_Name = "高效利用",Tanlent_Range = 3,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.03,0.06,0.09,0.12,0.15},Description = "全部资源产量提高%s",Icon = "icon_1309020"},
	[26] = {ID = 26,Tanlent_Type = 1,TanlentId = 31,Tanlent_Name = "征募消耗资源降低",Tanlent_Range = 2,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "征募消耗资源降低%s",Icon = "icon_1311015"},
	[27] = {ID = 27,Tanlent_Type = 1,TanlentId = 34,Tanlent_Name = "行军加速",Tanlent_Range = 1,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "队伍行军速度提升%s",Icon = "icon_1311013"},
	[28] = {ID = 28,Tanlent_Type = 1,TanlentId = 35,Tanlent_Name = "征募加速",Tanlent_Range = 2,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "征募速度提升%s",Icon = "icon_1311014"},
	[29] = {ID = 29,Tanlent_Type = 1,TanlentId = 36,Tanlent_Name = "伤害提升",Tanlent_Range = 2,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "造成伤害提升%s",Icon = "icon_1309023"},
	[30] = {ID = 30,Tanlent_Type = 1,TanlentId = 37,Tanlent_Name = "伤害减免",Tanlent_Range = 2,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "受到伤害减免%s",Icon = "icon_1309024"},
	[31] = {ID = 31,Tanlent_Type = 1,TanlentId = 38,Tanlent_Name = "虎豹王骑-征募速度",Tanlent1_CorpsId = 2,Tanlent_Range = 2,Tanlent_Unlock = {2,10,20,30,40},Tanlent_Value = {0.1,0.2,0.3,0.4,0.5},Description = "在虎豹王骑军团中，征募速度提高%s",Icon = "icon_1309025"}
}