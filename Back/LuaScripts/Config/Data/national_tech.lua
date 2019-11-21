--[[
output from excel national_tech国战科技.xlsx
--note:

colums:
{TechId,Id } ,{TechName,名称} ,{TechDes,描述} ,{TechIcon,icon} ,{Pos.x,坐标x} ,{Pos.y,坐标y} ,{Next,后置科技，多后置以#连接} ,{Front[1].Id,前置1科技} ,{Front[1].Lv,前置1等级} ,{Front[2].Id,前置2科技} ,{Front[2].Lv,前置2等级} ,{Front[3].Id,前置3科技} ,{Front[3].Lv,前置3等级} ,{Front[4].Id,前置4科技} ,{Front[4].Lv,前置4等级} ,{LvMax,等级上限} ,{ActivationEffectName,满级激活效果名称} ,{ActivationEffect.Type,满级激活效果类型} ,{ActivationEffect.Numeric,效果数值类型
1.百分比
2.数值} ,{ActivationEffect.Value,效果数值} ,{TechLv,等级} ,{EffectName[1],效果1名称} ,{Effect[1].Type,效果类型1} ,{Effect[1].Numeric,效果数值类型1
1.百分比
2.数值} ,{Effect[1].Value,效果数值1} ,{EffectName[2],效果2名称} ,{Effect[2].Type,效果类型2} ,{Effect[2].Numeric,效果数值类型2
1.百分比
2.数值} ,{Effect[2].Value,效果数值2} ,{EffectName[3],效果3名称} ,{Effect[3].Type,效果类型3} ,{Effect[3].Numeric,效果数值类型3
1.百分比
2.数值} ,{Effect[3].Value,效果数值3} ,{Time,耗时(秒)} ,{Cost[1].Id,消耗资源类型1} ,{Cost[1].Val,消耗数量} ,{Cost[2].Id,消耗资源类型2} ,{Cost[2].Val,消耗数量} ,{Cost[3].Id,消耗资源类型3} ,{Cost[3].Val,消耗数量} ,{Cost[4].Id,消耗资源类型4} ,{Cost[4].Val,消耗数量} ,{Cost[5].Id,消耗资源类型5} ,{Cost[5].Val,消耗数量}
primary key:
#0 [科技主表]: TechId
#1 [科技等级效果表]: TechId,HelpCol,TechLv
]]
local _T = LangUtil.Language
return{
	[6100001] = {
		TechName = "主科技",
		TechDes = "主科技",
		TechIcon = "icon_1311001",
		Pos = {x = 1,y = 4},
		Next = {6101001,6101002,6102001},
		LvMax = 8,
		Lv = {
			[1] = {EffectName = {[1] = "领地数量上限",[2] = "队列上限",[3] = "统率上限"},Effect = {[1] = {Type = 44,Numeric = 2,Value = 1},[2] = {Type = 21,Numeric = 2,Value = 0},[3] = {Type = 52,Numeric = 2,Value = 2}},Time = 120,Cost = {[1] = {Id = 6000001,Val = 2400},[2] = {Id = 6000002,Val = 2400},[3] = {Id = 6000003,Val = 7200},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "领地数量上限",[2] = "队列上限",[3] = "统率上限"},Effect = {[1] = {Type = 44,Numeric = 2,Value = 2},[2] = {Type = 21,Numeric = 2,Value = 0},[3] = {Type = 52,Numeric = 2,Value = 4}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 6000},[2] = {Id = 6000002,Val = 6000},[3] = {Id = 6000003,Val = 18000},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "领地数量上限",[2] = "队列上限",[3] = "统率上限"},Effect = {[1] = {Type = 44,Numeric = 2,Value = 4},[2] = {Type = 21,Numeric = 2,Value = 0},[3] = {Type = 52,Numeric = 2,Value = 6}},Time = 1800,Cost = {[1] = {Id = 6000001,Val = 24000},[2] = {Id = 6000002,Val = 24000},[3] = {Id = 6000003,Val = 48000},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "领地数量上限",[2] = "队列上限",[3] = "统率上限"},Effect = {[1] = {Type = 44,Numeric = 2,Value = 6},[2] = {Type = 21,Numeric = 2,Value = 1},[3] = {Type = 52,Numeric = 2,Value = 10}},Time = 3600,Cost = {[1] = {Id = 6000001,Val = 96000},[2] = {Id = 6000002,Val = 96000},[3] = {Id = 6000003,Val = 288000},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "领地数量上限",[2] = "队列上限",[3] = "统率上限"},Effect = {[1] = {Type = 44,Numeric = 2,Value = 8},[2] = {Type = 21,Numeric = 2,Value = 1},[3] = {Type = 52,Numeric = 2,Value = 14}},Time = 7200,Cost = {[1] = {Id = 6000001,Val = 192000},[2] = {Id = 6000002,Val = 192000},[3] = {Id = 6000003,Val = 576000},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "领地数量上限",[2] = "队列上限",[3] = "统率上限"},Effect = {[1] = {Type = 44,Numeric = 2,Value = 10},[2] = {Type = 21,Numeric = 2,Value = 1},[3] = {Type = 52,Numeric = 2,Value = 18}},Time = 14400,Cost = {[1] = {Id = 6000001,Val = 380000},[2] = {Id = 6000002,Val = 380000},[3] = {Id = 6000003,Val = 700000},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "领地数量上限",[2] = "队列上限"},Effect = {[1] = {Type = 44,Numeric = 2,Value = 12},[2] = {Type = 21,Numeric = 2,Value = 1}},Time = 43200,Cost = {[1] = {Id = 6000001,Val = 450000},[2] = {Id = 6000002,Val = 450000},[3] = {Id = 6000003,Val = 900000},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "领地数量上限",[2] = "队列上限"},Effect = {[1] = {Type = 44,Numeric = 2,Value = 14},[2] = {Type = 21,Numeric = 2,Value = 2}},Time = 86400,Cost = {[1] = {Id = 6000001,Val = 650000},[2] = {Id = 6000002,Val = 650000},[3] = {Id = 6000003,Val = 1200000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6101001] = {
		TechName = "银木产量",
		TechDes = "银木产量提高",
		TechIcon = "icon_1311002",
		Pos = {x = 2,y = 1},
		Next = {6101003},
		Front = {[1] = {Id = 6100001,Lv = 1}},
		LvMax = 20,
		ActivationEffectName = "仓库储量上限",
		ActivationEffect = {Type = 6,Numeric = 2,Value = 50000},
		Lv = {
			[1] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 120}},Time = 60,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 360},[3] = {Id = 6000003,Val = 360},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 240}},Time = 120,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 720},[3] = {Id = 6000003,Val = 720},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 360}},Time = 180,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 1080},[3] = {Id = 6000003,Val = 1080},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 480}},Time = 300,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 1440},[3] = {Id = 6000003,Val = 1440},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 600}},Time = 600,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 1800},[3] = {Id = 6000003,Val = 1800},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 720}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 4320},[3] = {Id = 6000003,Val = 4320},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 840}},Time = 1200,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 5760},[3] = {Id = 6000003,Val = 5760},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 960}},Time = 1800,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 6480},[3] = {Id = 6000003,Val = 6480},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 1080}},Time = 3600,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 7200},[3] = {Id = 6000003,Val = 7200},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 1200}},Time = 5400,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 19800},[3] = {Id = 6000003,Val = 19800},[4] = {Id = 6000004,Val = 0}}},
			[11] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 1400}},Time = 7200,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 21600},[3] = {Id = 6000003,Val = 21600},[4] = {Id = 6000004,Val = 0}}},
			[12] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 1600}},Time = 9000,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 23400},[3] = {Id = 6000003,Val = 23400},[4] = {Id = 6000004,Val = 0}}},
			[13] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 1800}},Time = 12000,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 25200},[3] = {Id = 6000003,Val = 25200},[4] = {Id = 6000004,Val = 0}}},
			[14] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 2000}},Time = 14400,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 27000},[3] = {Id = 6000003,Val = 27000},[4] = {Id = 6000004,Val = 0}}},
			[15] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 2200}},Time = 16800,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 28800},[3] = {Id = 6000003,Val = 28800},[4] = {Id = 6000004,Val = 0}}},
			[16] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 2400}},Time = 19800,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 35000},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 0}}},
			[17] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 2600}},Time = 23400,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 48000},[3] = {Id = 6000003,Val = 48000},[4] = {Id = 6000004,Val = 0}}},
			[18] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 2800}},Time = 27600,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 60000},[3] = {Id = 6000003,Val = 60000},[4] = {Id = 6000004,Val = 0}}},
			[19] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 3000}},Time = 31800,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 72000},[3] = {Id = 6000003,Val = 72000},[4] = {Id = 6000004,Val = 0}}},
			[20] = {EffectName = {[1] = "伐木精通"},Effect = {[1] = {Type = 26,Numeric = 2,Value = 3200}},Time = 37200,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 89000},[3] = {Id = 6000003,Val = 89000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6101002] = {
		TechName = "赤铁产量",
		TechDes = "赤铁产量提高",
		TechIcon = "icon_1311003",
		Pos = {x = 2,y = 3},
		Next = {6101004},
		Front = {[1] = {Id = 6100001,Lv = 1}},
		LvMax = 20,
		ActivationEffectName = "仓库储量上限",
		ActivationEffect = {Type = 6,Numeric = 2,Value = 50000},
		Lv = {
			[1] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 120}},Time = 60,Cost = {[1] = {Id = 6000001,Val = 360},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 360},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 240}},Time = 120,Cost = {[1] = {Id = 6000001,Val = 720},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 720},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 360}},Time = 180,Cost = {[1] = {Id = 6000001,Val = 1080},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 1080},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 480}},Time = 300,Cost = {[1] = {Id = 6000001,Val = 1440},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 1440},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 600}},Time = 600,Cost = {[1] = {Id = 6000001,Val = 1800},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 1800},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 720}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 4320},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 4320},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 840}},Time = 1200,Cost = {[1] = {Id = 6000001,Val = 5760},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 5760},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 960}},Time = 1800,Cost = {[1] = {Id = 6000001,Val = 6480},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 6480},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 1080}},Time = 3600,Cost = {[1] = {Id = 6000001,Val = 7200},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 7200},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 1200}},Time = 5400,Cost = {[1] = {Id = 6000001,Val = 19800},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 19800},[4] = {Id = 6000004,Val = 0}}},
			[11] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 1400}},Time = 7200,Cost = {[1] = {Id = 6000001,Val = 21600},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 21600},[4] = {Id = 6000004,Val = 0}}},
			[12] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 1600}},Time = 9000,Cost = {[1] = {Id = 6000001,Val = 23400},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 23400},[4] = {Id = 6000004,Val = 0}}},
			[13] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 1800}},Time = 12000,Cost = {[1] = {Id = 6000001,Val = 25200},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 25200},[4] = {Id = 6000004,Val = 0}}},
			[14] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 2000}},Time = 14400,Cost = {[1] = {Id = 6000001,Val = 27000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 27000},[4] = {Id = 6000004,Val = 0}}},
			[15] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 2200}},Time = 16800,Cost = {[1] = {Id = 6000001,Val = 28800},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 28800},[4] = {Id = 6000004,Val = 0}}},
			[16] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 2400}},Time = 19800,Cost = {[1] = {Id = 6000001,Val = 35000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 0}}},
			[17] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 2600}},Time = 23400,Cost = {[1] = {Id = 6000001,Val = 48000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 48000},[4] = {Id = 6000004,Val = 0}}},
			[18] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 2800}},Time = 27600,Cost = {[1] = {Id = 6000001,Val = 60000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 60000},[4] = {Id = 6000004,Val = 0}}},
			[19] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 3000}},Time = 31800,Cost = {[1] = {Id = 6000001,Val = 72000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 72000},[4] = {Id = 6000004,Val = 0}}},
			[20] = {EffectName = {[1] = "冶炼精通"},Effect = {[1] = {Type = 27,Numeric = 2,Value = 3200}},Time = 37200,Cost = {[1] = {Id = 6000001,Val = 89000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 89000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6101003] = {
		TechName = "精石产量",
		TechDes = "精石产量提高",
		TechIcon = "icon_1311004",
		Pos = {x = 3,y = 1},
		Next = {6101005},
		Front = {[1] = {Id = 6101001,Lv = 1}},
		LvMax = 20,
		ActivationEffectName = "仓库储量上限",
		ActivationEffect = {Type = 6,Numeric = 2,Value = 50000},
		Lv = {
			[1] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 120}},Time = 60,Cost = {[1] = {Id = 6000001,Val = 360},[2] = {Id = 6000002,Val = 360},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 240}},Time = 120,Cost = {[1] = {Id = 6000001,Val = 720},[2] = {Id = 6000002,Val = 720},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 360}},Time = 180,Cost = {[1] = {Id = 6000001,Val = 1080},[2] = {Id = 6000002,Val = 1080},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 480}},Time = 300,Cost = {[1] = {Id = 6000001,Val = 1440},[2] = {Id = 6000002,Val = 1440},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 600}},Time = 600,Cost = {[1] = {Id = 6000001,Val = 1800},[2] = {Id = 6000002,Val = 1800},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 720}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 4320},[2] = {Id = 6000002,Val = 4320},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 840}},Time = 1200,Cost = {[1] = {Id = 6000001,Val = 5760},[2] = {Id = 6000002,Val = 5760},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 960}},Time = 1800,Cost = {[1] = {Id = 6000001,Val = 6480},[2] = {Id = 6000002,Val = 6480},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 1080}},Time = 3600,Cost = {[1] = {Id = 6000001,Val = 7200},[2] = {Id = 6000002,Val = 7200},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 1200}},Time = 5400,Cost = {[1] = {Id = 6000001,Val = 19800},[2] = {Id = 6000002,Val = 19800},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[11] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 1400}},Time = 7200,Cost = {[1] = {Id = 6000001,Val = 21600},[2] = {Id = 6000002,Val = 21600},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[12] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 1600}},Time = 9000,Cost = {[1] = {Id = 6000001,Val = 23400},[2] = {Id = 6000002,Val = 23400},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[13] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 1800}},Time = 12000,Cost = {[1] = {Id = 6000001,Val = 25200},[2] = {Id = 6000002,Val = 25200},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[14] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 2000}},Time = 14400,Cost = {[1] = {Id = 6000001,Val = 27000},[2] = {Id = 6000002,Val = 27000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[15] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 2200}},Time = 16800,Cost = {[1] = {Id = 6000001,Val = 28800},[2] = {Id = 6000002,Val = 28800},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[16] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 2400}},Time = 19800,Cost = {[1] = {Id = 6000001,Val = 35000},[2] = {Id = 6000002,Val = 35000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[17] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 2600}},Time = 23400,Cost = {[1] = {Id = 6000001,Val = 48000},[2] = {Id = 6000002,Val = 48000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[18] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 2800}},Time = 27600,Cost = {[1] = {Id = 6000001,Val = 60000},[2] = {Id = 6000002,Val = 60000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[19] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 3000}},Time = 31800,Cost = {[1] = {Id = 6000001,Val = 72000},[2] = {Id = 6000002,Val = 72000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[20] = {EffectName = {[1] = "采石精通"},Effect = {[1] = {Type = 28,Numeric = 2,Value = 3200}},Time = 37200,Cost = {[1] = {Id = 6000001,Val = 89000},[2] = {Id = 6000002,Val = 89000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6101004] = {
		TechName = "灵谷产量",
		TechDes = "灵谷产量提高",
		TechIcon = "icon_1311005",
		Pos = {x = 3,y = 3},
		Next = {6101005},
		Front = {[1] = {Id = 6101002,Lv = 1}},
		LvMax = 20,
		ActivationEffectName = "仓库储量上限",
		ActivationEffect = {Type = 6,Numeric = 2,Value = 50000},
		Lv = {
			[1] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 120}},Time = 60,Cost = {[1] = {Id = 6000001,Val = 180},[2] = {Id = 6000002,Val = 180},[3] = {Id = 6000003,Val = 360},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 240}},Time = 120,Cost = {[1] = {Id = 6000001,Val = 360},[2] = {Id = 6000002,Val = 360},[3] = {Id = 6000003,Val = 720},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 360}},Time = 180,Cost = {[1] = {Id = 6000001,Val = 540},[2] = {Id = 6000002,Val = 540},[3] = {Id = 6000003,Val = 1080},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 480}},Time = 300,Cost = {[1] = {Id = 6000001,Val = 720},[2] = {Id = 6000002,Val = 720},[3] = {Id = 6000003,Val = 1440},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 600}},Time = 600,Cost = {[1] = {Id = 6000001,Val = 900},[2] = {Id = 6000002,Val = 900},[3] = {Id = 6000003,Val = 1800},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 720}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 2160},[2] = {Id = 6000002,Val = 2160},[3] = {Id = 6000003,Val = 4320},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 840}},Time = 1200,Cost = {[1] = {Id = 6000001,Val = 2880},[2] = {Id = 6000002,Val = 2880},[3] = {Id = 6000003,Val = 5760},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 960}},Time = 1800,Cost = {[1] = {Id = 6000001,Val = 3240},[2] = {Id = 6000002,Val = 3240},[3] = {Id = 6000003,Val = 6480},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 1080}},Time = 3600,Cost = {[1] = {Id = 6000001,Val = 3600},[2] = {Id = 6000002,Val = 3600},[3] = {Id = 6000003,Val = 7200},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 1200}},Time = 5400,Cost = {[1] = {Id = 6000001,Val = 9900},[2] = {Id = 6000002,Val = 9900},[3] = {Id = 6000003,Val = 19800},[4] = {Id = 6000004,Val = 0}}},
			[11] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 1400}},Time = 7200,Cost = {[1] = {Id = 6000001,Val = 10800},[2] = {Id = 6000002,Val = 10800},[3] = {Id = 6000003,Val = 21600},[4] = {Id = 6000004,Val = 0}}},
			[12] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 1600}},Time = 9000,Cost = {[1] = {Id = 6000001,Val = 11700},[2] = {Id = 6000002,Val = 11700},[3] = {Id = 6000003,Val = 23400},[4] = {Id = 6000004,Val = 0}}},
			[13] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 1800}},Time = 12000,Cost = {[1] = {Id = 6000001,Val = 12600},[2] = {Id = 6000002,Val = 12600},[3] = {Id = 6000003,Val = 25200},[4] = {Id = 6000004,Val = 0}}},
			[14] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 2000}},Time = 14400,Cost = {[1] = {Id = 6000001,Val = 13500},[2] = {Id = 6000002,Val = 13500},[3] = {Id = 6000003,Val = 27000},[4] = {Id = 6000004,Val = 0}}},
			[15] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 2200}},Time = 16800,Cost = {[1] = {Id = 6000001,Val = 14400},[2] = {Id = 6000002,Val = 14400},[3] = {Id = 6000003,Val = 28800},[4] = {Id = 6000004,Val = 0}}},
			[16] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 2400}},Time = 19800,Cost = {[1] = {Id = 6000001,Val = 17500},[2] = {Id = 6000002,Val = 17500},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 0}}},
			[17] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 2600}},Time = 23400,Cost = {[1] = {Id = 6000001,Val = 24000},[2] = {Id = 6000002,Val = 24000},[3] = {Id = 6000003,Val = 48000},[4] = {Id = 6000004,Val = 0}}},
			[18] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 2800}},Time = 27600,Cost = {[1] = {Id = 6000001,Val = 30000},[2] = {Id = 6000002,Val = 30000},[3] = {Id = 6000003,Val = 60000},[4] = {Id = 6000004,Val = 0}}},
			[19] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 3000}},Time = 31800,Cost = {[1] = {Id = 6000001,Val = 36000},[2] = {Id = 6000002,Val = 36000},[3] = {Id = 6000003,Val = 72000},[4] = {Id = 6000004,Val = 0}}},
			[20] = {EffectName = {[1] = "耕犁精通"},Effect = {[1] = {Type = 29,Numeric = 2,Value = 3200}},Time = 37200,Cost = {[1] = {Id = 6000001,Val = 44500},[2] = {Id = 6000002,Val = 44500},[3] = {Id = 6000003,Val = 89000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6101005] = {
		TechName = "仓库",
		TechDes = "仓库资源容量提升",
		TechIcon = "icon_1311006",
		Pos = {x = 4,y = 2},
		Next = {6101006,6101007},
		Front = {[1] = {Id = 6101003,Lv = 3},[2] = {Id = 6101004,Lv = 3}},
		LvMax = 20,
		Lv = {
			[1] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 10000}},Time = 60,Cost = {[1] = {Id = 6000001,Val = 300},[2] = {Id = 6000002,Val = 300},[3] = {Id = 6000003,Val = 400},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 50000}},Time = 120,Cost = {[1] = {Id = 6000001,Val = 600},[2] = {Id = 6000002,Val = 600},[3] = {Id = 6000003,Val = 800},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 80000}},Time = 600,Cost = {[1] = {Id = 6000001,Val = 1200},[2] = {Id = 6000002,Val = 1200},[3] = {Id = 6000003,Val = 1600},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 120000}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 3000},[2] = {Id = 6000002,Val = 3000},[3] = {Id = 6000003,Val = 4000},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 180000}},Time = 1800,Cost = {[1] = {Id = 6000001,Val = 6000},[2] = {Id = 6000002,Val = 6000},[3] = {Id = 6000003,Val = 8000},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 250000}},Time = 3600,Cost = {[1] = {Id = 6000001,Val = 12000},[2] = {Id = 6000002,Val = 12000},[3] = {Id = 6000003,Val = 16000},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 320000}},Time = 7200,Cost = {[1] = {Id = 6000001,Val = 18000},[2] = {Id = 6000002,Val = 18000},[3] = {Id = 6000003,Val = 24000},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 400000}},Time = 43200,Cost = {[1] = {Id = 6000001,Val = 30000},[2] = {Id = 6000002,Val = 30000},[3] = {Id = 6000003,Val = 40000},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 520000}},Time = 72000,Cost = {[1] = {Id = 6000001,Val = 36000},[2] = {Id = 6000002,Val = 36000},[3] = {Id = 6000003,Val = 48000},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 640000}},Time = 86400,Cost = {[1] = {Id = 6000001,Val = 45000},[2] = {Id = 6000002,Val = 45000},[3] = {Id = 6000003,Val = 60000},[4] = {Id = 6000004,Val = 0}}},
			[11] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 760000}},Time = 100800,Cost = {[1] = {Id = 6000001,Val = 54000},[2] = {Id = 6000002,Val = 54000},[3] = {Id = 6000003,Val = 72000},[4] = {Id = 6000004,Val = 0}}},
			[12] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 800000}},Time = 115200,Cost = {[1] = {Id = 6000001,Val = 69000},[2] = {Id = 6000002,Val = 69000},[3] = {Id = 6000003,Val = 92000},[4] = {Id = 6000004,Val = 0}}},
			[13] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 920000}},Time = 129600,Cost = {[1] = {Id = 6000001,Val = 84000},[2] = {Id = 6000002,Val = 84000},[3] = {Id = 6000003,Val = 112000},[4] = {Id = 6000004,Val = 0}}},
			[14] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 1080000}},Time = 144000,Cost = {[1] = {Id = 6000001,Val = 99000},[2] = {Id = 6000002,Val = 99000},[3] = {Id = 6000003,Val = 132000},[4] = {Id = 6000004,Val = 0}}},
			[15] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 1250000}},Time = 158400,Cost = {[1] = {Id = 6000001,Val = 114000},[2] = {Id = 6000002,Val = 114000},[3] = {Id = 6000003,Val = 152000},[4] = {Id = 6000004,Val = 0}}},
			[16] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 1400000}},Time = 172800,Cost = {[1] = {Id = 6000001,Val = 134000},[2] = {Id = 6000002,Val = 134000},[3] = {Id = 6000003,Val = 177000},[4] = {Id = 6000004,Val = 0}}},
			[17] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 1550000}},Time = 187200,Cost = {[1] = {Id = 6000001,Val = 154000},[2] = {Id = 6000002,Val = 154000},[3] = {Id = 6000003,Val = 202000},[4] = {Id = 6000004,Val = 0}}},
			[18] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 1700000}},Time = 201600,Cost = {[1] = {Id = 6000001,Val = 174000},[2] = {Id = 6000002,Val = 174000},[3] = {Id = 6000003,Val = 227000},[4] = {Id = 6000004,Val = 0}}},
			[19] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 1850000}},Time = 216000,Cost = {[1] = {Id = 6000001,Val = 194000},[2] = {Id = 6000002,Val = 194000},[3] = {Id = 6000003,Val = 252000},[4] = {Id = 6000004,Val = 0}}},
			[20] = {EffectName = {[1] = "仓库储量上限"},Effect = {[1] = {Type = 6,Numeric = 2,Value = 2000000}},Time = 230400,Cost = {[1] = {Id = 6000001,Val = 214000},[2] = {Id = 6000002,Val = 214000},[3] = {Id = 6000003,Val = 277000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6101006] = {
		TechName = "采集木产量",
		TechDes = "采集获得银木数量提升",
		TechIcon = "icon_1311007",
		Pos = {x = 5,y = 1},
		Next = {6101008},
		Front = {[1] = {Id = 6101005,Lv = 5}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "采集银木"},Effect = {[1] = {Type = 7,Numeric = 1,Value = 0.02}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 5500},[3] = {Id = 6000003,Val = 5500},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "采集银木"},Effect = {[1] = {Type = 7,Numeric = 1,Value = 0.04}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 15000},[3] = {Id = 6000003,Val = 15000},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "采集银木"},Effect = {[1] = {Type = 7,Numeric = 1,Value = 0.06}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 25000},[3] = {Id = 6000003,Val = 25000},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "采集银木"},Effect = {[1] = {Type = 7,Numeric = 1,Value = 0.08}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 35000},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "采集银木"},Effect = {[1] = {Type = 7,Numeric = 1,Value = 0.1}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 50000},[3] = {Id = 6000003,Val = 50000},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "采集银木"},Effect = {[1] = {Type = 7,Numeric = 1,Value = 0.12}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 60000},[3] = {Id = 6000003,Val = 60000},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "采集银木"},Effect = {[1] = {Type = 7,Numeric = 1,Value = 0.14}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 70000},[3] = {Id = 6000003,Val = 70000},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "采集银木"},Effect = {[1] = {Type = 7,Numeric = 1,Value = 0.16}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 75000},[3] = {Id = 6000003,Val = 75000},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "采集银木"},Effect = {[1] = {Type = 7,Numeric = 1,Value = 0.18}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 85000},[3] = {Id = 6000003,Val = 85000},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "采集银木"},Effect = {[1] = {Type = 7,Numeric = 1,Value = 0.2}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 0},[2] = {Id = 6000002,Val = 90000},[3] = {Id = 6000003,Val = 90000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6101007] = {
		TechName = "采集铁产量",
		TechDes = "采集获得赤铁数量提升",
		TechIcon = "icon_1311008",
		Pos = {x = 5,y = 3},
		Next = {6101009},
		Front = {[1] = {Id = 6101005,Lv = 5}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "采集赤铁"},Effect = {[1] = {Type = 8,Numeric = 1,Value = 0.02}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 5500},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 5500},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "采集赤铁"},Effect = {[1] = {Type = 8,Numeric = 1,Value = 0.04}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 15000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 15000},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "采集赤铁"},Effect = {[1] = {Type = 8,Numeric = 1,Value = 0.06}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 25000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 25000},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "采集赤铁"},Effect = {[1] = {Type = 8,Numeric = 1,Value = 0.08}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 35000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "采集赤铁"},Effect = {[1] = {Type = 8,Numeric = 1,Value = 0.1}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 50000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 50000},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "采集赤铁"},Effect = {[1] = {Type = 8,Numeric = 1,Value = 0.12}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 60000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 60000},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "采集赤铁"},Effect = {[1] = {Type = 8,Numeric = 1,Value = 0.14}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 70000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 70000},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "采集赤铁"},Effect = {[1] = {Type = 8,Numeric = 1,Value = 0.16}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 75000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 75000},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "采集赤铁"},Effect = {[1] = {Type = 8,Numeric = 1,Value = 0.18}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 85000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 85000},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "采集赤铁"},Effect = {[1] = {Type = 8,Numeric = 1,Value = 0.2}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 90000},[2] = {Id = 6000002,Val = 0},[3] = {Id = 6000003,Val = 90000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6101008] = {
		TechName = "采集石产量",
		TechDes = "采集获得精石数量提升",
		TechIcon = "icon_1311009",
		Pos = {x = 6,y = 1},
		Next = {6101010},
		Front = {[1] = {Id = 6101006,Lv = 3}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "采集精石"},Effect = {[1] = {Type = 9,Numeric = 1,Value = 0.02}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 5500},[2] = {Id = 6000002,Val = 5500},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "采集精石"},Effect = {[1] = {Type = 9,Numeric = 1,Value = 0.04}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 15000},[2] = {Id = 6000002,Val = 15000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "采集精石"},Effect = {[1] = {Type = 9,Numeric = 1,Value = 0.06}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 25000},[2] = {Id = 6000002,Val = 25000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "采集精石"},Effect = {[1] = {Type = 9,Numeric = 1,Value = 0.08}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 35000},[2] = {Id = 6000002,Val = 35000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "采集精石"},Effect = {[1] = {Type = 9,Numeric = 1,Value = 0.1}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 50000},[2] = {Id = 6000002,Val = 50000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "采集精石"},Effect = {[1] = {Type = 9,Numeric = 1,Value = 0.12}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 60000},[2] = {Id = 6000002,Val = 60000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "采集精石"},Effect = {[1] = {Type = 9,Numeric = 1,Value = 0.14}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 70000},[2] = {Id = 6000002,Val = 70000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "采集精石"},Effect = {[1] = {Type = 9,Numeric = 1,Value = 0.16}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 75000},[2] = {Id = 6000002,Val = 75000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "采集精石"},Effect = {[1] = {Type = 9,Numeric = 1,Value = 0.18}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 85000},[2] = {Id = 6000002,Val = 85000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "采集精石"},Effect = {[1] = {Type = 9,Numeric = 1,Value = 0.2}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 90000},[2] = {Id = 6000002,Val = 90000},[3] = {Id = 6000003,Val = 0},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6101009] = {
		TechName = "采集粮产量",
		TechDes = "采集获得灵谷数量提升",
		TechIcon = "icon_1311010",
		Pos = {x = 6,y = 3},
		Next = {6101010},
		Front = {[1] = {Id = 6101007,Lv = 3}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "采集灵谷"},Effect = {[1] = {Type = 10,Numeric = 1,Value = 0.02}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 2750},[2] = {Id = 6000002,Val = 2750},[3] = {Id = 6000003,Val = 5500},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "采集灵谷"},Effect = {[1] = {Type = 10,Numeric = 1,Value = 0.04}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 7500},[2] = {Id = 6000002,Val = 7500},[3] = {Id = 6000003,Val = 15000},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "采集灵谷"},Effect = {[1] = {Type = 10,Numeric = 1,Value = 0.06}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 12500},[2] = {Id = 6000002,Val = 12500},[3] = {Id = 6000003,Val = 25000},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "采集灵谷"},Effect = {[1] = {Type = 10,Numeric = 1,Value = 0.08}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 17500},[2] = {Id = 6000002,Val = 17500},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "采集灵谷"},Effect = {[1] = {Type = 10,Numeric = 1,Value = 0.1}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 25000},[2] = {Id = 6000002,Val = 25000},[3] = {Id = 6000003,Val = 50000},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "采集灵谷"},Effect = {[1] = {Type = 10,Numeric = 1,Value = 0.12}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 30000},[2] = {Id = 6000002,Val = 30000},[3] = {Id = 6000003,Val = 60000},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "采集灵谷"},Effect = {[1] = {Type = 10,Numeric = 1,Value = 0.14}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 35000},[2] = {Id = 6000002,Val = 35000},[3] = {Id = 6000003,Val = 70000},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "采集灵谷"},Effect = {[1] = {Type = 10,Numeric = 1,Value = 0.16}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 37500},[2] = {Id = 6000002,Val = 37500},[3] = {Id = 6000003,Val = 75000},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "采集灵谷"},Effect = {[1] = {Type = 10,Numeric = 1,Value = 0.18}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 42500},[2] = {Id = 6000002,Val = 42500},[3] = {Id = 6000003,Val = 85000},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "采集灵谷"},Effect = {[1] = {Type = 10,Numeric = 1,Value = 0.2}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 45000},[2] = {Id = 6000002,Val = 45000},[3] = {Id = 6000003,Val = 90000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6101010] = {
		TechName = "采集速度",
		TechDes = "采集资源速度提高",
		TechIcon = "icon_1311011",
		Pos = {x = 7,y = 2},
		Front = {[1] = {Id = 6101008,Lv = 5},[2] = {Id = 6101009,Lv = 5}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "采集加速"},Effect = {[1] = {Type = 11,Numeric = 1,Value = 0.02}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 5500},[2] = {Id = 6000002,Val = 5500},[3] = {Id = 6000003,Val = 5500},[4] = {Id = 6000004,Val = 5500}}},
			[2] = {EffectName = {[1] = "采集加速"},Effect = {[1] = {Type = 11,Numeric = 1,Value = 0.04}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 15000},[2] = {Id = 6000002,Val = 15000},[3] = {Id = 6000003,Val = 15000},[4] = {Id = 6000004,Val = 15000}}},
			[3] = {EffectName = {[1] = "采集加速"},Effect = {[1] = {Type = 11,Numeric = 1,Value = 0.06}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 25000},[2] = {Id = 6000002,Val = 25000},[3] = {Id = 6000003,Val = 25000},[4] = {Id = 6000004,Val = 25000}}},
			[4] = {EffectName = {[1] = "采集加速"},Effect = {[1] = {Type = 11,Numeric = 1,Value = 0.08}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 35000},[2] = {Id = 6000002,Val = 35000},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 35000}}},
			[5] = {EffectName = {[1] = "采集加速"},Effect = {[1] = {Type = 11,Numeric = 1,Value = 0.1}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 50000},[2] = {Id = 6000002,Val = 50000},[3] = {Id = 6000003,Val = 50000},[4] = {Id = 6000004,Val = 50000}}},
			[6] = {EffectName = {[1] = "采集加速"},Effect = {[1] = {Type = 11,Numeric = 1,Value = 0.12}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 60000},[2] = {Id = 6000002,Val = 60000},[3] = {Id = 6000003,Val = 60000},[4] = {Id = 6000004,Val = 60000}}},
			[7] = {EffectName = {[1] = "采集加速"},Effect = {[1] = {Type = 11,Numeric = 1,Value = 0.14}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 70000},[2] = {Id = 6000002,Val = 70000},[3] = {Id = 6000003,Val = 70000},[4] = {Id = 6000004,Val = 70000}}},
			[8] = {EffectName = {[1] = "采集加速"},Effect = {[1] = {Type = 11,Numeric = 1,Value = 0.16}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 75000},[2] = {Id = 6000002,Val = 75000},[3] = {Id = 6000003,Val = 75000},[4] = {Id = 6000004,Val = 75000}}},
			[9] = {EffectName = {[1] = "采集加速"},Effect = {[1] = {Type = 11,Numeric = 1,Value = 0.18}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 85000},[2] = {Id = 6000002,Val = 85000},[3] = {Id = 6000003,Val = 85000},[4] = {Id = 6000004,Val = 85000}}},
			[10] = {EffectName = {[1] = "采集加速"},Effect = {[1] = {Type = 11,Numeric = 1,Value = 0.2}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 90000},[2] = {Id = 6000002,Val = 90000},[3] = {Id = 6000003,Val = 90000},[4] = {Id = 6000004,Val = 90000}}}
		}
	},
	[6102001] = {
		TechName = "军团数量",
		TechDes = "可解锁军团数量上限",
		TechIcon = "icon_1311012",
		Pos = {x = 2,y = 6},
		Next = {6102002},
		Front = {[1] = {Id = 6100001,Lv = 1}},
		LvMax = 4,
		Lv = {
			[1] = {EffectName = {[1] = "军团数量"},Effect = {[1] = {Type = 51,Numeric = 2,Value = 1}},Time = 300,Cost = {[1] = {Id = 6000001,Val = 28000},[2] = {Id = 6000002,Val = 28000},[3] = {Id = 6000003,Val = 28000},[4] = {Id = 6000004,Val = 52000}}},
			[2] = {EffectName = {[1] = "军团数量"},Effect = {[1] = {Type = 51,Numeric = 2,Value = 2}},Time = 1100,Cost = {[1] = {Id = 6000001,Val = 56000},[2] = {Id = 6000002,Val = 56000},[3] = {Id = 6000003,Val = 56000},[4] = {Id = 6000004,Val = 104000}}},
			[3] = {EffectName = {[1] = "军团数量"},Effect = {[1] = {Type = 51,Numeric = 2,Value = 3}},Time = 3800,Cost = {[1] = {Id = 6000001,Val = 80000},[2] = {Id = 6000002,Val = 80000},[3] = {Id = 6000003,Val = 80000},[4] = {Id = 6000004,Val = 160000}}},
			[4] = {EffectName = {[1] = "军团数量"},Effect = {[1] = {Type = 51,Numeric = 2,Value = 4}},Time = 9380,Cost = {[1] = {Id = 6000001,Val = 110000},[2] = {Id = 6000002,Val = 110000},[3] = {Id = 6000003,Val = 110000},[4] = {Id = 6000004,Val = 220000}}}
		}
	},
	[6102002] = {
		TechName = "行军速度",
		TechDes = "队伍行军速度提升",
		TechIcon = "icon_1311013",
		Pos = {x = 3,y = 6},
		Next = {6102003,6102004},
		Front = {[1] = {Id = 6102001,Lv = 1}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "行军加速"},Effect = {[1] = {Type = 13,Numeric = 1,Value = 0.01}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 15000},[2] = {Id = 6000002,Val = 15000},[3] = {Id = 6000003,Val = 15000},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "行军加速"},Effect = {[1] = {Type = 13,Numeric = 1,Value = 0.02}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 20000},[2] = {Id = 6000002,Val = 20000},[3] = {Id = 6000003,Val = 20000},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "行军加速"},Effect = {[1] = {Type = 13,Numeric = 1,Value = 0.03}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 30000},[2] = {Id = 6000002,Val = 30000},[3] = {Id = 6000003,Val = 30000},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "行军加速"},Effect = {[1] = {Type = 13,Numeric = 1,Value = 0.04}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 40000},[2] = {Id = 6000002,Val = 40000},[3] = {Id = 6000003,Val = 40000},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "行军加速"},Effect = {[1] = {Type = 13,Numeric = 1,Value = 0.05}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 80000},[2] = {Id = 6000002,Val = 80000},[3] = {Id = 6000003,Val = 80000},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "行军加速"},Effect = {[1] = {Type = 13,Numeric = 1,Value = 0.06}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 100000},[2] = {Id = 6000002,Val = 100000},[3] = {Id = 6000003,Val = 100000},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "行军加速"},Effect = {[1] = {Type = 13,Numeric = 1,Value = 0.07}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 120000},[2] = {Id = 6000002,Val = 120000},[3] = {Id = 6000003,Val = 120000},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "行军加速"},Effect = {[1] = {Type = 13,Numeric = 1,Value = 0.08}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 140000},[2] = {Id = 6000002,Val = 140000},[3] = {Id = 6000003,Val = 140000},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "行军加速"},Effect = {[1] = {Type = 13,Numeric = 1,Value = 0.09}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 160000},[2] = {Id = 6000002,Val = 160000},[3] = {Id = 6000003,Val = 160000},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "行军加速"},Effect = {[1] = {Type = 13,Numeric = 1,Value = 0.1}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 180000},[2] = {Id = 6000002,Val = 180000},[3] = {Id = 6000003,Val = 180000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6102003] = {
		TechName = "征募速度",
		TechDes = "征募速度提升",
		TechIcon = "icon_1311014",
		Pos = {x = 4,y = 5},
		Next = {6102005},
		Front = {[1] = {Id = 6102002,Lv = 3}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "征募加速"},Effect = {[1] = {Type = 17,Numeric = 1,Value = 0.01}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 15000},[2] = {Id = 6000002,Val = 15000},[3] = {Id = 6000003,Val = 15000},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "征募加速"},Effect = {[1] = {Type = 17,Numeric = 1,Value = 0.02}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 20000},[2] = {Id = 6000002,Val = 20000},[3] = {Id = 6000003,Val = 20000},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "征募加速"},Effect = {[1] = {Type = 17,Numeric = 1,Value = 0.03}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 30000},[2] = {Id = 6000002,Val = 30000},[3] = {Id = 6000003,Val = 30000},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "征募加速"},Effect = {[1] = {Type = 17,Numeric = 1,Value = 0.04}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 40000},[2] = {Id = 6000002,Val = 40000},[3] = {Id = 6000003,Val = 40000},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "征募加速"},Effect = {[1] = {Type = 17,Numeric = 1,Value = 0.05}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 80000},[2] = {Id = 6000002,Val = 80000},[3] = {Id = 6000003,Val = 80000},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "征募加速"},Effect = {[1] = {Type = 17,Numeric = 1,Value = 0.06}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 100000},[2] = {Id = 6000002,Val = 100000},[3] = {Id = 6000003,Val = 100000},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "征募加速"},Effect = {[1] = {Type = 17,Numeric = 1,Value = 0.07}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 120000},[2] = {Id = 6000002,Val = 120000},[3] = {Id = 6000003,Val = 120000},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "征募加速"},Effect = {[1] = {Type = 17,Numeric = 1,Value = 0.08}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 140000},[2] = {Id = 6000002,Val = 140000},[3] = {Id = 6000003,Val = 140000},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "征募加速"},Effect = {[1] = {Type = 17,Numeric = 1,Value = 0.09}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 160000},[2] = {Id = 6000002,Val = 160000},[3] = {Id = 6000003,Val = 160000},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "征募加速"},Effect = {[1] = {Type = 17,Numeric = 1,Value = 0.1}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 180000},[2] = {Id = 6000002,Val = 180000},[3] = {Id = 6000003,Val = 180000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6102004] = {
		TechName = "征募消耗",
		TechDes = "征募消耗资源降低",
		TechIcon = "icon_1311015",
		Pos = {x = 4,y = 7},
		Next = {6102006},
		Front = {[1] = {Id = 6102002,Lv = 3}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "征募消耗降低"},Effect = {[1] = {Type = 31,Numeric = 1,Value = 0.01}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 15000},[2] = {Id = 6000002,Val = 15000},[3] = {Id = 6000003,Val = 15000},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "征募消耗降低"},Effect = {[1] = {Type = 31,Numeric = 1,Value = 0.02}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 20000},[2] = {Id = 6000002,Val = 20000},[3] = {Id = 6000003,Val = 20000},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "征募消耗降低"},Effect = {[1] = {Type = 31,Numeric = 1,Value = 0.03}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 30000},[2] = {Id = 6000002,Val = 30000},[3] = {Id = 6000003,Val = 30000},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "征募消耗降低"},Effect = {[1] = {Type = 31,Numeric = 1,Value = 0.04}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 40000},[2] = {Id = 6000002,Val = 40000},[3] = {Id = 6000003,Val = 40000},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "征募消耗降低"},Effect = {[1] = {Type = 31,Numeric = 1,Value = 0.05}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 80000},[2] = {Id = 6000002,Val = 80000},[3] = {Id = 6000003,Val = 80000},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "征募消耗降低"},Effect = {[1] = {Type = 31,Numeric = 1,Value = 0.06}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 100000},[2] = {Id = 6000002,Val = 100000},[3] = {Id = 6000003,Val = 100000},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "征募消耗降低"},Effect = {[1] = {Type = 31,Numeric = 1,Value = 0.07}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 120000},[2] = {Id = 6000002,Val = 120000},[3] = {Id = 6000003,Val = 120000},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "征募消耗降低"},Effect = {[1] = {Type = 31,Numeric = 1,Value = 0.08}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 140000},[2] = {Id = 6000002,Val = 140000},[3] = {Id = 6000003,Val = 140000},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "征募消耗降低"},Effect = {[1] = {Type = 31,Numeric = 1,Value = 0.09}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 160000},[2] = {Id = 6000002,Val = 160000},[3] = {Id = 6000003,Val = 160000},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "征募消耗降低"},Effect = {[1] = {Type = 31,Numeric = 1,Value = 0.1}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 180000},[2] = {Id = 6000002,Val = 180000},[3] = {Id = 6000003,Val = 180000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6102005] = {
		TechName = "采集解锁",
		TechDes = "解锁队伍的采集功能",
		TechIcon = "icon_1311016",
		Pos = {x = 5,y = 5},
		Next = {6102007},
		Front = {[1] = {Id = 6102003,Lv = 3}},
		LvMax = 1,
		Lv = {
			[1] = {EffectName = {[1] = "采集解锁"},Effect = {[1] = {Type = 25,Numeric = 2,Value = 1}},Time = 3600,Cost = {[1] = {Id = 6000001,Val = 280000},[2] = {Id = 6000002,Val = 280000},[3] = {Id = 6000003,Val = 520000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6102006] = {
		TechName = "驻守解锁",
		TechDes = "解锁队伍的驻守功能",
		TechIcon = "icon_1311017",
		Pos = {x = 5,y = 7},
		Next = {6102007},
		Front = {[1] = {Id = 6102004,Lv = 3}},
		LvMax = 1,
		Lv = {
			[1] = {EffectName = {[1] = "驻守解锁"},Effect = {[1] = {Type = 24,Numeric = 2,Value = 1}},Time = 3600,Cost = {[1] = {Id = 6000001,Val = 280000},[2] = {Id = 6000002,Val = 280000},[3] = {Id = 6000003,Val = 520000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6102007] = {
		TechName = "军力强化",
		TechDes = "卡牌军力值上限提升",
		TechIcon = "icon_1311018",
		Pos = {x = 6,y = 6},
		Next = {6102008,6102009},
		Front = {[1] = {Id = 6102005,Lv = 1},[2] = {Id = 6102006,Lv = 1}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "军力上限"},Effect = {[1] = {Type = 18,Numeric = 2,Value = 200}},Time = 3600,Cost = {[1] = {Id = 6000001,Val = 20000},[2] = {Id = 6000002,Val = 20000},[3] = {Id = 6000003,Val = 40000},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "军力上限"},Effect = {[1] = {Type = 18,Numeric = 2,Value = 400}},Time = 7200,Cost = {[1] = {Id = 6000001,Val = 22500},[2] = {Id = 6000002,Val = 22500},[3] = {Id = 6000003,Val = 45000},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "军力上限"},Effect = {[1] = {Type = 18,Numeric = 2,Value = 600}},Time = 10800,Cost = {[1] = {Id = 6000001,Val = 25000},[2] = {Id = 6000002,Val = 25000},[3] = {Id = 6000003,Val = 50000},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "军力上限"},Effect = {[1] = {Type = 18,Numeric = 2,Value = 800}},Time = 14400,Cost = {[1] = {Id = 6000001,Val = 27500},[2] = {Id = 6000002,Val = 27500},[3] = {Id = 6000003,Val = 55000},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "军力上限"},Effect = {[1] = {Type = 18,Numeric = 2,Value = 1000}},Time = 18000,Cost = {[1] = {Id = 6000001,Val = 30000},[2] = {Id = 6000002,Val = 30000},[3] = {Id = 6000003,Val = 60000},[4] = {Id = 6000004,Val = 0}}},
			[6] = {EffectName = {[1] = "军力上限"},Effect = {[1] = {Type = 18,Numeric = 2,Value = 1200}},Time = 21600,Cost = {[1] = {Id = 6000001,Val = 35000},[2] = {Id = 6000002,Val = 35000},[3] = {Id = 6000003,Val = 70000},[4] = {Id = 6000004,Val = 0}}},
			[7] = {EffectName = {[1] = "军力上限"},Effect = {[1] = {Type = 18,Numeric = 2,Value = 1400}},Time = 25200,Cost = {[1] = {Id = 6000001,Val = 40000},[2] = {Id = 6000002,Val = 40000},[3] = {Id = 6000003,Val = 80000},[4] = {Id = 6000004,Val = 0}}},
			[8] = {EffectName = {[1] = "军力上限"},Effect = {[1] = {Type = 18,Numeric = 2,Value = 1600}},Time = 28800,Cost = {[1] = {Id = 6000001,Val = 50000},[2] = {Id = 6000002,Val = 50000},[3] = {Id = 6000003,Val = 100000},[4] = {Id = 6000004,Val = 0}}},
			[9] = {EffectName = {[1] = "军力上限"},Effect = {[1] = {Type = 18,Numeric = 2,Value = 1800}},Time = 32400,Cost = {[1] = {Id = 6000001,Val = 70000},[2] = {Id = 6000002,Val = 70000},[3] = {Id = 6000003,Val = 140000},[4] = {Id = 6000004,Val = 0}}},
			[10] = {EffectName = {[1] = "军力上限"},Effect = {[1] = {Type = 18,Numeric = 2,Value = 2000}},Time = 36000,Cost = {[1] = {Id = 6000001,Val = 100000},[2] = {Id = 6000002,Val = 100000},[3] = {Id = 6000003,Val = 200000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6102008] = {
		TechName = "虎豹王骑",
		TechDes = "提升虎豹王骑驻守时受到伤害降低效果与伤害",
		TechIcon = "icon_1311012",
		Pos = {x = 7,y = 5},
		Next = {6102010},
		Front = {[1] = {Id = 6102007,Lv = 5}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "虎豹王骑-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 45,Numeric = 1,Value = 0.005},[2] = {Type = 36,Numeric = 1,Value = 0.005}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 6500},[2] = {Id = 6000002,Val = 6500},[3] = {Id = 6000003,Val = 11750},[4] = {Id = 6000004,Val = 6500}}},
			[2] = {EffectName = {[1] = "虎豹王骑-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 45,Numeric = 1,Value = 0.01},[2] = {Type = 36,Numeric = 1,Value = 0.01}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 19000},[2] = {Id = 6000002,Val = 19000},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 19000}}},
			[3] = {EffectName = {[1] = "虎豹王骑-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 45,Numeric = 1,Value = 0.015},[2] = {Type = 36,Numeric = 1,Value = 0.015}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 32000},[2] = {Id = 6000002,Val = 32000},[3] = {Id = 6000003,Val = 58000},[4] = {Id = 6000004,Val = 32000}}},
			[4] = {EffectName = {[1] = "虎豹王骑-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 45,Numeric = 1,Value = 0.02},[2] = {Type = 36,Numeric = 1,Value = 0.02}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 45000},[2] = {Id = 6000002,Val = 45000},[3] = {Id = 6000003,Val = 82000},[4] = {Id = 6000004,Val = 45000}}},
			[5] = {EffectName = {[1] = "虎豹王骑-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 45,Numeric = 1,Value = 0.025},[2] = {Type = 36,Numeric = 1,Value = 0.025}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 57000},[2] = {Id = 6000002,Val = 57000},[3] = {Id = 6000003,Val = 105000},[4] = {Id = 6000004,Val = 57000}}},
			[6] = {EffectName = {[1] = "虎豹王骑-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 45,Numeric = 1,Value = 0.03},[2] = {Type = 36,Numeric = 1,Value = 0.03}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 76000},[2] = {Id = 6000002,Val = 76000},[3] = {Id = 6000003,Val = 140000},[4] = {Id = 6000004,Val = 76000}}},
			[7] = {EffectName = {[1] = "虎豹王骑-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 45,Numeric = 1,Value = 0.035},[2] = {Type = 36,Numeric = 1,Value = 0.035}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 89000},[2] = {Id = 6000002,Val = 89000},[3] = {Id = 6000003,Val = 165000},[4] = {Id = 6000004,Val = 89000}}},
			[8] = {EffectName = {[1] = "虎豹王骑-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 45,Numeric = 1,Value = 0.04},[2] = {Type = 36,Numeric = 1,Value = 0.04}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 96000},[2] = {Id = 6000002,Val = 96000},[3] = {Id = 6000003,Val = 176000},[4] = {Id = 6000004,Val = 96000}}},
			[9] = {EffectName = {[1] = "虎豹王骑-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 45,Numeric = 1,Value = 0.045},[2] = {Type = 36,Numeric = 1,Value = 0.045}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 102000},[2] = {Id = 6000002,Val = 102000},[3] = {Id = 6000003,Val = 188000},[4] = {Id = 6000004,Val = 102000}}},
			[10] = {EffectName = {[1] = "虎豹王骑-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 45,Numeric = 1,Value = 0.05},[2] = {Type = 36,Numeric = 1,Value = 0.05}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 115000},[2] = {Id = 6000002,Val = 115000},[3] = {Id = 6000003,Val = 211000},[4] = {Id = 6000004,Val = 115000}}}
		}
	},
	[6102009] = {
		TechName = "车下灵卫",
		TechDes = "提升车下灵卫采集获得资源量收益与伤害",
		TechIcon = "icon_1311012",
		Pos = {x = 7,y = 7},
		Next = {6102011},
		Front = {[1] = {Id = 6102007,Lv = 5}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "车下灵卫-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 46,Numeric = 1,Value = 0.005},[2] = {Type = 36,Numeric = 1,Value = 0.005}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 6500},[2] = {Id = 6000002,Val = 6500},[3] = {Id = 6000003,Val = 11750},[4] = {Id = 6000004,Val = 6500}}},
			[2] = {EffectName = {[1] = "车下灵卫-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 46,Numeric = 1,Value = 0.01},[2] = {Type = 36,Numeric = 1,Value = 0.01}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 19000},[2] = {Id = 6000002,Val = 19000},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 19000}}},
			[3] = {EffectName = {[1] = "车下灵卫-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 46,Numeric = 1,Value = 0.015},[2] = {Type = 36,Numeric = 1,Value = 0.015}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 32000},[2] = {Id = 6000002,Val = 32000},[3] = {Id = 6000003,Val = 58000},[4] = {Id = 6000004,Val = 32000}}},
			[4] = {EffectName = {[1] = "车下灵卫-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 46,Numeric = 1,Value = 0.02},[2] = {Type = 36,Numeric = 1,Value = 0.02}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 45000},[2] = {Id = 6000002,Val = 45000},[3] = {Id = 6000003,Val = 82000},[4] = {Id = 6000004,Val = 45000}}},
			[5] = {EffectName = {[1] = "车下灵卫-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 46,Numeric = 1,Value = 0.025},[2] = {Type = 36,Numeric = 1,Value = 0.025}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 57000},[2] = {Id = 6000002,Val = 57000},[3] = {Id = 6000003,Val = 105000},[4] = {Id = 6000004,Val = 57000}}},
			[6] = {EffectName = {[1] = "车下灵卫-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 46,Numeric = 1,Value = 0.03},[2] = {Type = 36,Numeric = 1,Value = 0.03}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 76000},[2] = {Id = 6000002,Val = 76000},[3] = {Id = 6000003,Val = 140000},[4] = {Id = 6000004,Val = 76000}}},
			[7] = {EffectName = {[1] = "车下灵卫-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 46,Numeric = 1,Value = 0.035},[2] = {Type = 36,Numeric = 1,Value = 0.035}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 89000},[2] = {Id = 6000002,Val = 89000},[3] = {Id = 6000003,Val = 165000},[4] = {Id = 6000004,Val = 89000}}},
			[8] = {EffectName = {[1] = "车下灵卫-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 46,Numeric = 1,Value = 0.04},[2] = {Type = 36,Numeric = 1,Value = 0.04}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 96000},[2] = {Id = 6000002,Val = 96000},[3] = {Id = 6000003,Val = 176000},[4] = {Id = 6000004,Val = 96000}}},
			[9] = {EffectName = {[1] = "车下灵卫-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 46,Numeric = 1,Value = 0.045},[2] = {Type = 36,Numeric = 1,Value = 0.045}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 102000},[2] = {Id = 6000002,Val = 102000},[3] = {Id = 6000003,Val = 188000},[4] = {Id = 6000004,Val = 102000}}},
			[10] = {EffectName = {[1] = "车下灵卫-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 46,Numeric = 1,Value = 0.05},[2] = {Type = 36,Numeric = 1,Value = 0.05}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 115000},[2] = {Id = 6000002,Val = 115000},[3] = {Id = 6000003,Val = 211000},[4] = {Id = 6000004,Val = 115000}}}
		}
	},
	[6102010] = {
		TechName = "无当玄军",
		TechDes = "提升无当玄军行军速度与伤害",
		TechIcon = "icon_1311012",
		Pos = {x = 8,y = 5},
		Next = {6102012},
		Front = {[1] = {Id = 6102008,Lv = 3}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "无当玄军-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 47,Numeric = 1,Value = 0.005},[2] = {Type = 36,Numeric = 1,Value = 0.005}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 6500},[2] = {Id = 6000002,Val = 6500},[3] = {Id = 6000003,Val = 11750},[4] = {Id = 6000004,Val = 6500}}},
			[2] = {EffectName = {[1] = "无当玄军-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 47,Numeric = 1,Value = 0.01},[2] = {Type = 36,Numeric = 1,Value = 0.01}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 19000},[2] = {Id = 6000002,Val = 19000},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 19000}}},
			[3] = {EffectName = {[1] = "无当玄军-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 47,Numeric = 1,Value = 0.015},[2] = {Type = 36,Numeric = 1,Value = 0.015}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 32000},[2] = {Id = 6000002,Val = 32000},[3] = {Id = 6000003,Val = 58000},[4] = {Id = 6000004,Val = 32000}}},
			[4] = {EffectName = {[1] = "无当玄军-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 47,Numeric = 1,Value = 0.02},[2] = {Type = 36,Numeric = 1,Value = 0.02}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 45000},[2] = {Id = 6000002,Val = 45000},[3] = {Id = 6000003,Val = 82000},[4] = {Id = 6000004,Val = 45000}}},
			[5] = {EffectName = {[1] = "无当玄军-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 47,Numeric = 1,Value = 0.025},[2] = {Type = 36,Numeric = 1,Value = 0.025}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 57000},[2] = {Id = 6000002,Val = 57000},[3] = {Id = 6000003,Val = 105000},[4] = {Id = 6000004,Val = 57000}}},
			[6] = {EffectName = {[1] = "无当玄军-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 47,Numeric = 1,Value = 0.03},[2] = {Type = 36,Numeric = 1,Value = 0.03}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 76000},[2] = {Id = 6000002,Val = 76000},[3] = {Id = 6000003,Val = 140000},[4] = {Id = 6000004,Val = 76000}}},
			[7] = {EffectName = {[1] = "无当玄军-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 47,Numeric = 1,Value = 0.035},[2] = {Type = 36,Numeric = 1,Value = 0.035}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 89000},[2] = {Id = 6000002,Val = 89000},[3] = {Id = 6000003,Val = 165000},[4] = {Id = 6000004,Val = 89000}}},
			[8] = {EffectName = {[1] = "无当玄军-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 47,Numeric = 1,Value = 0.04},[2] = {Type = 36,Numeric = 1,Value = 0.04}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 96000},[2] = {Id = 6000002,Val = 96000},[3] = {Id = 6000003,Val = 176000},[4] = {Id = 6000004,Val = 96000}}},
			[9] = {EffectName = {[1] = "无当玄军-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 47,Numeric = 1,Value = 0.045},[2] = {Type = 36,Numeric = 1,Value = 0.045}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 102000},[2] = {Id = 6000002,Val = 102000},[3] = {Id = 6000003,Val = 188000},[4] = {Id = 6000004,Val = 102000}}},
			[10] = {EffectName = {[1] = "无当玄军-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 47,Numeric = 1,Value = 0.05},[2] = {Type = 36,Numeric = 1,Value = 0.05}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 115000},[2] = {Id = 6000002,Val = 115000},[3] = {Id = 6000003,Val = 211000},[4] = {Id = 6000004,Val = 115000}}}
		}
	},
	[6102011] = {
		TechName = "魔导军团",
		TechDes = "提升魔导军团卡牌行动力上限与伤害",
		TechIcon = "icon_1311012",
		Pos = {x = 8,y = 7},
		Next = {6102013},
		Front = {[1] = {Id = 6102009,Lv = 3}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "魔导军团-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 48,Numeric = 2,Value = 1},[2] = {Type = 36,Numeric = 1,Value = 0.005}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 6500},[2] = {Id = 6000002,Val = 6500},[3] = {Id = 6000003,Val = 11750},[4] = {Id = 6000004,Val = 6500}}},
			[2] = {EffectName = {[1] = "魔导军团-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 48,Numeric = 2,Value = 2},[2] = {Type = 36,Numeric = 1,Value = 0.01}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 19000},[2] = {Id = 6000002,Val = 19000},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 19000}}},
			[3] = {EffectName = {[1] = "魔导军团-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 48,Numeric = 2,Value = 3},[2] = {Type = 36,Numeric = 1,Value = 0.015}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 32000},[2] = {Id = 6000002,Val = 32000},[3] = {Id = 6000003,Val = 58000},[4] = {Id = 6000004,Val = 32000}}},
			[4] = {EffectName = {[1] = "魔导军团-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 48,Numeric = 2,Value = 4},[2] = {Type = 36,Numeric = 1,Value = 0.02}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 45000},[2] = {Id = 6000002,Val = 45000},[3] = {Id = 6000003,Val = 82000},[4] = {Id = 6000004,Val = 45000}}},
			[5] = {EffectName = {[1] = "魔导军团-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 48,Numeric = 2,Value = 5},[2] = {Type = 36,Numeric = 1,Value = 0.025}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 57000},[2] = {Id = 6000002,Val = 57000},[3] = {Id = 6000003,Val = 105000},[4] = {Id = 6000004,Val = 57000}}},
			[6] = {EffectName = {[1] = "魔导军团-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 48,Numeric = 2,Value = 6},[2] = {Type = 36,Numeric = 1,Value = 0.03}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 76000},[2] = {Id = 6000002,Val = 76000},[3] = {Id = 6000003,Val = 140000},[4] = {Id = 6000004,Val = 76000}}},
			[7] = {EffectName = {[1] = "魔导军团-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 48,Numeric = 2,Value = 7},[2] = {Type = 36,Numeric = 1,Value = 0.035}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 89000},[2] = {Id = 6000002,Val = 89000},[3] = {Id = 6000003,Val = 165000},[4] = {Id = 6000004,Val = 89000}}},
			[8] = {EffectName = {[1] = "魔导军团-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 48,Numeric = 2,Value = 8},[2] = {Type = 36,Numeric = 1,Value = 0.04}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 96000},[2] = {Id = 6000002,Val = 96000},[3] = {Id = 6000003,Val = 176000},[4] = {Id = 6000004,Val = 96000}}},
			[9] = {EffectName = {[1] = "魔导军团-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 48,Numeric = 2,Value = 9},[2] = {Type = 36,Numeric = 1,Value = 0.045}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 102000},[2] = {Id = 6000002,Val = 102000},[3] = {Id = 6000003,Val = 188000},[4] = {Id = 6000004,Val = 102000}}},
			[10] = {EffectName = {[1] = "魔导军团-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 48,Numeric = 2,Value = 10},[2] = {Type = 36,Numeric = 1,Value = 0.05}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 115000},[2] = {Id = 6000002,Val = 115000},[3] = {Id = 6000003,Val = 211000},[4] = {Id = 6000004,Val = 115000}}}
		}
	},
	[6102012] = {
		TechName = "天罡武灵",
		TechDes = "提升天罡武灵守护灵造成伤害",
		TechIcon = "icon_1311012",
		Pos = {x = 9,y = 5},
		Front = {[1] = {Id = 6102010,Lv = 3}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "天罡武灵-强化"},Effect = {[1] = {Type = 49,Numeric = 1,Value = 0.01}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 6500},[2] = {Id = 6000002,Val = 6500},[3] = {Id = 6000003,Val = 11750},[4] = {Id = 6000004,Val = 6500}}},
			[2] = {EffectName = {[1] = "天罡武灵-强化"},Effect = {[1] = {Type = 49,Numeric = 1,Value = 0.02}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 19000},[2] = {Id = 6000002,Val = 19000},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 19000}}},
			[3] = {EffectName = {[1] = "天罡武灵-强化"},Effect = {[1] = {Type = 49,Numeric = 1,Value = 0.03}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 32000},[2] = {Id = 6000002,Val = 32000},[3] = {Id = 6000003,Val = 58000},[4] = {Id = 6000004,Val = 32000}}},
			[4] = {EffectName = {[1] = "天罡武灵-强化"},Effect = {[1] = {Type = 49,Numeric = 1,Value = 0.04}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 45000},[2] = {Id = 6000002,Val = 45000},[3] = {Id = 6000003,Val = 82000},[4] = {Id = 6000004,Val = 45000}}},
			[5] = {EffectName = {[1] = "天罡武灵-强化"},Effect = {[1] = {Type = 49,Numeric = 1,Value = 0.05}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 57000},[2] = {Id = 6000002,Val = 57000},[3] = {Id = 6000003,Val = 105000},[4] = {Id = 6000004,Val = 57000}}},
			[6] = {EffectName = {[1] = "天罡武灵-强化"},Effect = {[1] = {Type = 49,Numeric = 1,Value = 0.06}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 76000},[2] = {Id = 6000002,Val = 76000},[3] = {Id = 6000003,Val = 140000},[4] = {Id = 6000004,Val = 76000}}},
			[7] = {EffectName = {[1] = "天罡武灵-强化"},Effect = {[1] = {Type = 49,Numeric = 1,Value = 0.07}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 89000},[2] = {Id = 6000002,Val = 89000},[3] = {Id = 6000003,Val = 165000},[4] = {Id = 6000004,Val = 89000}}},
			[8] = {EffectName = {[1] = "天罡武灵-强化"},Effect = {[1] = {Type = 49,Numeric = 1,Value = 0.08}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 96000},[2] = {Id = 6000002,Val = 96000},[3] = {Id = 6000003,Val = 176000},[4] = {Id = 6000004,Val = 96000}}},
			[9] = {EffectName = {[1] = "天罡武灵-强化"},Effect = {[1] = {Type = 49,Numeric = 1,Value = 0.09}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 102000},[2] = {Id = 6000002,Val = 102000},[3] = {Id = 6000003,Val = 188000},[4] = {Id = 6000004,Val = 102000}}},
			[10] = {EffectName = {[1] = "天罡武灵-强化"},Effect = {[1] = {Type = 49,Numeric = 1,Value = 0.1}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 115000},[2] = {Id = 6000002,Val = 115000},[3] = {Id = 6000003,Val = 211000},[4] = {Id = 6000004,Val = 115000}}}
		}
	},
	[6102013] = {
		TechName = "隐灵甲士",
		TechDes = "提升隐灵甲士资源区行军速度与伤害",
		TechIcon = "icon_1311012",
		Pos = {x = 9,y = 7},
		Front = {[1] = {Id = 6102011,Lv = 3}},
		LvMax = 10,
		Lv = {
			[1] = {EffectName = {[1] = "隐灵甲士-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 50,Numeric = 1,Value = 0.01},[2] = {Type = 36,Numeric = 1,Value = 0.005}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 6500},[2] = {Id = 6000002,Val = 6500},[3] = {Id = 6000003,Val = 11750},[4] = {Id = 6000004,Val = 6500}}},
			[2] = {EffectName = {[1] = "隐灵甲士-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 50,Numeric = 1,Value = 0.02},[2] = {Type = 36,Numeric = 1,Value = 0.01}},Time = 1070,Cost = {[1] = {Id = 6000001,Val = 19000},[2] = {Id = 6000002,Val = 19000},[3] = {Id = 6000003,Val = 35000},[4] = {Id = 6000004,Val = 19000}}},
			[3] = {EffectName = {[1] = "隐灵甲士-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 50,Numeric = 1,Value = 0.03},[2] = {Type = 36,Numeric = 1,Value = 0.015}},Time = 1500,Cost = {[1] = {Id = 6000001,Val = 32000},[2] = {Id = 6000002,Val = 32000},[3] = {Id = 6000003,Val = 58000},[4] = {Id = 6000004,Val = 32000}}},
			[4] = {EffectName = {[1] = "隐灵甲士-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 50,Numeric = 1,Value = 0.04},[2] = {Type = 36,Numeric = 1,Value = 0.02}},Time = 2340,Cost = {[1] = {Id = 6000001,Val = 45000},[2] = {Id = 6000002,Val = 45000},[3] = {Id = 6000003,Val = 82000},[4] = {Id = 6000004,Val = 45000}}},
			[5] = {EffectName = {[1] = "隐灵甲士-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 50,Numeric = 1,Value = 0.05},[2] = {Type = 36,Numeric = 1,Value = 0.025}},Time = 3700,Cost = {[1] = {Id = 6000001,Val = 57000},[2] = {Id = 6000002,Val = 57000},[3] = {Id = 6000003,Val = 105000},[4] = {Id = 6000004,Val = 57000}}},
			[6] = {EffectName = {[1] = "隐灵甲士-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 50,Numeric = 1,Value = 0.06},[2] = {Type = 36,Numeric = 1,Value = 0.03}},Time = 5720,Cost = {[1] = {Id = 6000001,Val = 76000},[2] = {Id = 6000002,Val = 76000},[3] = {Id = 6000003,Val = 140000},[4] = {Id = 6000004,Val = 76000}}},
			[7] = {EffectName = {[1] = "隐灵甲士-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 50,Numeric = 1,Value = 0.07},[2] = {Type = 36,Numeric = 1,Value = 0.035}},Time = 8530,Cost = {[1] = {Id = 6000001,Val = 89000},[2] = {Id = 6000002,Val = 89000},[3] = {Id = 6000003,Val = 165000},[4] = {Id = 6000004,Val = 89000}}},
			[8] = {EffectName = {[1] = "隐灵甲士-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 50,Numeric = 1,Value = 0.08},[2] = {Type = 36,Numeric = 1,Value = 0.04}},Time = 12260,Cost = {[1] = {Id = 6000001,Val = 96000},[2] = {Id = 6000002,Val = 96000},[3] = {Id = 6000003,Val = 176000},[4] = {Id = 6000004,Val = 96000}}},
			[9] = {EffectName = {[1] = "隐灵甲士-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 50,Numeric = 1,Value = 0.09},[2] = {Type = 36,Numeric = 1,Value = 0.045}},Time = 17060,Cost = {[1] = {Id = 6000001,Val = 102000},[2] = {Id = 6000002,Val = 102000},[3] = {Id = 6000003,Val = 188000},[4] = {Id = 6000004,Val = 102000}}},
			[10] = {EffectName = {[1] = "隐灵甲士-强化",[2] = "伤害提升"},Effect = {[1] = {Type = 50,Numeric = 1,Value = 0.1},[2] = {Type = 36,Numeric = 1,Value = 0.05}},Time = 23040,Cost = {[1] = {Id = 6000001,Val = 115000},[2] = {Id = 6000002,Val = 115000},[3] = {Id = 6000003,Val = 211000},[4] = {Id = 6000004,Val = 115000}}}
		}
	},
	[6102014] = {
		TechName = "阵位开放",
		TechDes = "可配置第三名寄灵人的队伍数量",
		TechIcon = "icon_1311012",
		Pos = {x = 1,y = 1},
		LvMax = 5,
		Lv = {
			[1] = {EffectName = {[1] = "阵位开放"},Effect = {[1] = {Type = 53,Numeric = 2,Value = 1}},Time = 900,Cost = {[1] = {Id = 6000001,Val = 6000},[2] = {Id = 6000002,Val = 6000},[3] = {Id = 6000003,Val = 8000},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "阵位开放"},Effect = {[1] = {Type = 53,Numeric = 2,Value = 2}},Time = 3600,Cost = {[1] = {Id = 6000001,Val = 24000},[2] = {Id = 6000002,Val = 24000},[3] = {Id = 6000003,Val = 32000},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "阵位开放"},Effect = {[1] = {Type = 53,Numeric = 2,Value = 3}},Time = 7200,Cost = {[1] = {Id = 6000001,Val = 54000},[2] = {Id = 6000002,Val = 54000},[3] = {Id = 6000003,Val = 72000},[4] = {Id = 6000004,Val = 0}}},
			[4] = {EffectName = {[1] = "阵位开放"},Effect = {[1] = {Type = 53,Numeric = 2,Value = 4}},Time = 14400,Cost = {[1] = {Id = 6000001,Val = 78000},[2] = {Id = 6000002,Val = 78000},[3] = {Id = 6000003,Val = 104000},[4] = {Id = 6000004,Val = 0}}},
			[5] = {EffectName = {[1] = "阵位开放"},Effect = {[1] = {Type = 53,Numeric = 2,Value = 5}},Time = 28800,Cost = {[1] = {Id = 6000001,Val = 125000},[2] = {Id = 6000002,Val = 125000},[3] = {Id = 6000003,Val = 150000},[4] = {Id = 6000004,Val = 0}}}
		}
	},
	[6102015] = {
		Lv = {
			[1] = {EffectName = {[1] = "COST上限增加"},Effect = {[1] = {Type = 52,Numeric = 2,Value = 2}},Time = 18000,Cost = {[1] = {Id = 6000001,Val = 50000},[2] = {Id = 6000002,Val = 50000},[3] = {Id = 6000003,Val = 150000},[4] = {Id = 6000004,Val = 0}}},
			[2] = {EffectName = {[1] = "COST上限增加"},Effect = {[1] = {Type = 52,Numeric = 2,Value = 4}},Time = 36000,Cost = {[1] = {Id = 6000001,Val = 100000},[2] = {Id = 6000002,Val = 100000},[3] = {Id = 6000003,Val = 200000},[4] = {Id = 6000004,Val = 0}}},
			[3] = {EffectName = {[1] = "COST上限增加"},Effect = {[1] = {Type = 52,Numeric = 2,Value = 6}},Time = 72000,Cost = {[1] = {Id = 6000001,Val = 200000},[2] = {Id = 6000002,Val = 200000},[3] = {Id = 6000003,Val = 300000},[4] = {Id = 6000004,Val = 0}}}
		}
	}
}