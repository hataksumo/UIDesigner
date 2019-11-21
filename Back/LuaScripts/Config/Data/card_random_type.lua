--[[
output from excel draw.抽卡.xlsx
--note:

设定抽卡次数为times
先看FirstBox，如果抽卡次数和其中的times相等，则走他的掉落。
再看CycleBox，倒着遍历，如果times-phase>0 并且 MOD(times-phase,inteval)==0，则走他的掉落
如果没有保底掉落，则走NormalDrop
colums:
{ID,唯一键} ,{PoolName,卡池名称} ,{Type,1 寄灵人
2 守护灵} ,{SubType,任务统计类型
1 低级
2 高级} ,{StartTime,开启时间} ,{EndTime,结束时间} ,{CardComponent,卡池控件名称} ,{Bg,背景图片} ,{PageSign,页签图片} ,{Model,模型} ,{OpenType,抽卡项开启条件} ,{OpenParams[1],开启参数1} ,{OpenParams[2],开启参数2} ,{ResBarId,资源栏ID} ,{ResBarId1,抽卡展示资源栏ID} ,{NormalDrop,普通掉落} ,{CycleBox[1].id,循环抽Id1} ,{CycleBox[1].inteval,循环抽间隔1} ,{CycleBox[1].phase,循环抽间隔相位} ,{CycleBox[2].id,循环抽Id2} ,{CycleBox[2].inteval,循环抽间隔2} ,{CycleBox[2].phase,循环抽相位2} ,{FirstBox[1].id,首次掉落Id1} ,{FirstBox[1].times,首次掉落次数1} ,{FirstBox[2].id,首次掉落Id2} ,{FirstBox[2].times,首次掉落次数2} ,{FirstBox[3].id,首次掉落Id3} ,{FirstBox[3].times,首次掉落次数3} ,{FirstBox[4].id,首次掉落Id4} ,{FirstBox[4].times,首次掉落次数4} ,{FirstBox[5].id,首次掉落Id5} ,{FirstBox[5].times,首次掉落次数5} ,{FirstBox[6].id,首次掉落Id6} ,{FirstBox[6].times,首次掉落次数6} ,{FirstBox[7].id,首次掉落Id7} ,{FirstBox[7].times,首次掉落次数7} ,{FirstBox[8].id,首次掉落Id6} ,{FirstBox[8].times,首次掉落次数6} ,{FirstBox[9].id,首次掉落Id7} ,{FirstBox[9].times,首次掉落次数7} ,{HelpCol,辅助列} ,{Loc,数组位} ,{CardId,卡牌ID}
primary key:
#0 [随机类型]: ID
#1 [卡池]: ID,HelpCol,Loc
]]
local _T = LangUtil.Language
return{
	[1] = {
		PoolName = "高级感灵  万里挑一",
		Type = 2,
		SubType = 2,
		StartTime = "2018-11-15 00:00:00",
		EndTime = "2099-11-15 00:00:00",
		Bg = "ui_t_Gacha_002",
		PageSign = "ui_dtex_Tapicon_110",
		OpenType = 1050101,
		OpenParams = {[1] = 1},
		ResBarId = 16,
		ResBarId1 = 16,
		NormalDrop = 1004,
		CycleBox = {[1] = {id = 1005,inteval = 10,phase = 0},[2] = {id = 1006,inteval = 30,phase = 0}},
		FirstBox = {[1] = {id = 1013,times = 1},[2] = {id = 1014,times = 2}},
		CardPool = {
			[1] = 1102001,
			[2] = 1102002,
			[3] = 1102003,
			[4] = 1102004,
			[5] = 1102005,
			[6] = 1102006,
			[7] = 1102007,
			[8] = 1102009,
			[9] = 1102010,
			[10] = 1102011,
			[11] = 1102012,
			[12] = 1102013,
			[13] = 1102014,
			[14] = 1102015,
			[15] = 1102016,
			[16] = 1102017,
			[17] = 1102018,
			[18] = 1102019,
			[19] = 1102020,
			[20] = 1102021,
			[21] = 1102050
		}
	},
	[2] = {
		PoolName = "新手卡池  乘风破浪",
		Type = 2,
		SubType = 2,
		StartTime = "2018-11-15 00:00:00",
		EndTime = "2099-11-15 00:00:00",
		Bg = "ui_t_Gacha_002",
		PageSign = "ui_dtex_Tapicon_110",
		OpenType = 1050101,
		OpenParams = {[1] = 1},
		ResBarId = 19,
		ResBarId1 = 19,
		NormalDrop = 1021,
		FirstBox = {[1] = {id = 1016,times = 4},[2] = {id = 1022,times = 10},[3] = {id = 1023,times = 20},[4] = {id = 1024,times = 30}},
		CardPool = {
			[1] = 1102001,
			[2] = 1102002,
			[3] = 1102003,
			[4] = 1102004,
			[5] = 1102005,
			[6] = 1102006,
			[7] = 1102007,
			[8] = 1102009,
			[9] = 1102010,
			[10] = 1102011,
			[11] = 1102012,
			[12] = 1102013,
			[13] = 1102014,
			[14] = 1102015,
			[15] = 1102016,
			[16] = 1102017,
			[17] = 1102018,
			[18] = 1102019,
			[19] = 1102020,
			[20] = 1102021,
			[21] = 1102050
		},
		IsUp = {
			[1] = 1102001,
			[2] = 1102011
		}
	},
	[3] = {
		PoolName = "初级感灵  百里挑一",
		Type = 2,
		SubType = 1,
		StartTime = "2018-11-15 00:00:00",
		EndTime = "2099-11-15 00:00:00",
		Bg = "ui_t_Gacha_002",
		PageSign = "ui_dtex_Tapicon_111",
		OpenType = 1050101,
		OpenParams = {[1] = 1},
		ResBarId = 17,
		ResBarId1 = 17,
		NormalDrop = 1019,
		CycleBox = {[1] = {id = 1020,inteval = 10,phase = 3}},
		CardPool = {
			[1] = 1102001,
			[2] = 1102002,
			[3] = 1102003,
			[4] = 1102004,
			[5] = 1102005,
			[6] = 1102006,
			[7] = 1102007,
			[8] = 1102009,
			[9] = 1102010,
			[10] = 1102011,
			[11] = 1102012,
			[12] = 1102013,
			[13] = 1102014,
			[14] = 1102015,
			[15] = 1102016,
			[16] = 1102017,
			[17] = 1102018,
			[18] = 1102019,
			[19] = 1102020,
			[20] = 1102021,
			[21] = 1102050
		}
	},
	[4] = {
		PoolName = "寄灵人",
		Type = 1,
		SubType = 2,
		StartTime = "2018-11-15 00:00:00",
		EndTime = "2099-11-15 00:00:00",
		Bg = "ui_t_Gacha_002",
		PageSign = "ui_dtex_Tapicon_112",
		OpenType = 1050101,
		OpenParams = {[1] = 40},
		ResBarId = 18,
		ResBarId1 = 18,
		NormalDrop = 1003,
		CardPool = {
			[1] = 1101001,
			[2] = 1101002,
			[3] = 1101003,
			[4] = 1101004,
			[5] = 1101005,
			[6] = 1101006,
			[7] = 1101007,
			[8] = 1101008,
			[9] = 1101009,
			[10] = 1101010,
			[11] = 1101011,
			[12] = 1101012,
			[13] = 1101013,
			[14] = 1101014,
			[15] = 1101015,
			[16] = 1101042
		}
	}
}