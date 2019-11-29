--[[
output from excel eqp.装备.xlsx
--note:

colums:
{LvId,等级段Id} ,{LvMin,等级Min} ,{LvMax,等级Max} ,{Name,名字} ,{Desc,打造描述} ,{Id,ID} ,{Pos,位置} ,{Pic,图片} ,{Cost[1].Id,消耗道具} ,{Cost[1].Val,消耗值}
primary key:
#0 [装备锻造等级组]: LvId
#1 [装备锻造]: LvId,HelpCol,Pos
]]
local _T = LangUtil.Language
return{
	[1] = {
		LvMin = 1,
		LvMax = 20,
		Name = _T("锻造者1"),
		Desc = _T("能够打造出20级的装备"),
		Equips = {
			[1] = {Id = 1,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 100}}},
			[2] = {Id = 2,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 50}}},
			[3] = {Id = 3,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 50}}},
			[4] = {Id = 4,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 50}}},
			[5] = {Id = 5,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 50}}},
			[6] = {Id = 6,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 50}}},
			[7] = {Id = 7,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 75}}},
			[8] = {Id = 8,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 75}}}
		}
	},
	[2] = {
		LvMin = 20,
		LvMax = 30,
		Name = _T("锻造者2"),
		Desc = _T("能够打造出20级，40级的装备"),
		Equips = {
			[1] = {Id = 9,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 110}}},
			[2] = {Id = 10,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 55}}},
			[3] = {Id = 11,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 55}}},
			[4] = {Id = 12,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 55}}},
			[5] = {Id = 13,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 55}}},
			[6] = {Id = 14,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 55}}},
			[7] = {Id = 15,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 85}}},
			[8] = {Id = 16,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 85}}}
		}
	},
	[3] = {
		LvMin = 30,
		LvMax = 40,
		Name = _T("锻造者3"),
		Desc = _T("能够打造出20级，40级的装备"),
		Equips = {
			[1] = {Id = 17,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 130}}},
			[2] = {Id = 18,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 65}}},
			[3] = {Id = 19,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 65}}},
			[4] = {Id = 20,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 65}}},
			[5] = {Id = 21,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 65}}},
			[6] = {Id = 22,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 65}}},
			[7] = {Id = 23,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 100}}},
			[8] = {Id = 24,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 100}}}
		}
	},
	[4] = {
		LvMin = 40,
		LvMax = 50,
		Name = _T("锻造者4"),
		Desc = _T("能够打造出20级，40级，60级的装备"),
		Equips = {
			[1] = {Id = 25,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 150}}},
			[2] = {Id = 26,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 75}}},
			[3] = {Id = 27,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 75}}},
			[4] = {Id = 28,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 75}}},
			[5] = {Id = 29,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 75}}},
			[6] = {Id = 30,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 75}}},
			[7] = {Id = 31,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 115}}},
			[8] = {Id = 32,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 115}}}
		}
	},
	[5] = {
		LvMin = 50,
		LvMax = 60,
		Name = _T("锻造者5"),
		Desc = _T("能够打造出20级，40级，60级的装备"),
		Equips = {
			[1] = {Id = 33,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 170}}},
			[2] = {Id = 34,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 85}}},
			[3] = {Id = 35,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 85}}},
			[4] = {Id = 36,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 85}}},
			[5] = {Id = 37,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 85}}},
			[6] = {Id = 38,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 85}}},
			[7] = {Id = 39,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 130}}},
			[8] = {Id = 40,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 130}}}
		}
	},
	[6] = {
		LvMin = 60,
		LvMax = 70,
		Name = _T("锻造者6"),
		Desc = _T("能够打造出40级，60级，80级的装备"),
		Equips = {
			[1] = {Id = 41,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 200}}},
			[2] = {Id = 42,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 100}}},
			[3] = {Id = 43,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 100}}},
			[4] = {Id = 44,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 100}}},
			[5] = {Id = 45,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 100}}},
			[6] = {Id = 46,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 100}}},
			[7] = {Id = 47,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 150}}},
			[8] = {Id = 48,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 150}}}
		}
	},
	[7] = {
		LvMin = 70,
		LvMax = 80,
		Name = _T("锻造者7"),
		Desc = _T("能够打造出40级，60级，80级的装备"),
		Equips = {
			[1] = {Id = 49,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 220}}},
			[2] = {Id = 50,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 110}}},
			[3] = {Id = 51,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 110}}},
			[4] = {Id = 52,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 110}}},
			[5] = {Id = 53,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 110}}},
			[6] = {Id = 54,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 110}}},
			[7] = {Id = 55,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 165}}},
			[8] = {Id = 56,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 165}}}
		}
	},
	[8] = {
		LvMin = 80,
		LvMax = 85,
		Name = _T("锻造者8"),
		Desc = _T("能够打造出60级，80级的装备"),
		Equips = {
			[1] = {Id = 57,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 240}}},
			[2] = {Id = 58,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 120}}},
			[3] = {Id = 59,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 120}}},
			[4] = {Id = 60,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 120}}},
			[5] = {Id = 61,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 120}}},
			[6] = {Id = 62,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 120}}},
			[7] = {Id = 63,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 180}}},
			[8] = {Id = 64,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 180}}}
		}
	},
	[9] = {
		LvMin = 85,
		LvMax = 90,
		Name = _T("锻造者9"),
		Desc = _T("能够打造出60级，80级，90级的装备"),
		Equips = {
			[1] = {Id = 65,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 300}}},
			[2] = {Id = 66,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 150}}},
			[3] = {Id = 67,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 150}}},
			[4] = {Id = 68,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 150}}},
			[5] = {Id = 69,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 150}}},
			[6] = {Id = 70,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 150}}},
			[7] = {Id = 71,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 225}}},
			[8] = {Id = 72,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 225}}}
		}
	},
	[10] = {
		LvMin = 90,
		LvMax = 95,
		Name = _T("锻造者10"),
		Desc = _T("能够打造出80级，90级的装备"),
		Equips = {
			[1] = {Id = 73,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 330}}},
			[2] = {Id = 74,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 165}}},
			[3] = {Id = 75,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 165}}},
			[4] = {Id = 76,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 165}}},
			[5] = {Id = 77,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 165}}},
			[6] = {Id = 78,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 165}}},
			[7] = {Id = 79,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 250}}},
			[8] = {Id = 80,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 250}}}
		}
	},
	[11] = {
		LvMin = 95,
		LvMax = 100,
		Name = _T("锻造者11"),
		Desc = _T("能够打造出80级，90级，100级的装备"),
		Equips = {
			[1] = {Id = 81,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 370}}},
			[2] = {Id = 82,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 185}}},
			[3] = {Id = 83,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 185}}},
			[4] = {Id = 84,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 185}}},
			[5] = {Id = 85,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 185}}},
			[6] = {Id = 86,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 185}}},
			[7] = {Id = 87,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 280}}},
			[8] = {Id = 88,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 280}}}
		}
	},
	[12] = {
		LvMin = 100,
		LvMax = 105,
		Name = _T("锻造者12"),
		Desc = _T("能够打造出90级，100级的装备"),
		Equips = {
			[1] = {Id = 89,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 410}}},
			[2] = {Id = 90,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 205}}},
			[3] = {Id = 91,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 205}}},
			[4] = {Id = 92,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 205}}},
			[5] = {Id = 93,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 205}}},
			[6] = {Id = 94,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 205}}},
			[7] = {Id = 95,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 310}}},
			[8] = {Id = 96,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 310}}}
		}
	},
	[13] = {
		LvMin = 105,
		LvMax = 110,
		Name = _T("锻造者13"),
		Desc = _T("能够打造出90级，100级，110级的装备"),
		Equips = {
			[1] = {Id = 97,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 450}}},
			[2] = {Id = 98,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 225}}},
			[3] = {Id = 99,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 225}}},
			[4] = {Id = 100,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 225}}},
			[5] = {Id = 101,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 225}}},
			[6] = {Id = 102,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 225}}},
			[7] = {Id = 103,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 340}}},
			[8] = {Id = 104,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 340}}}
		}
	},
	[14] = {
		LvMin = 110,
		LvMax = 115,
		Name = _T("锻造者14"),
		Desc = _T("能够打造出100级，110级的装备"),
		Equips = {
			[1] = {Id = 105,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 480}}},
			[2] = {Id = 106,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 240}}},
			[3] = {Id = 107,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 240}}},
			[4] = {Id = 108,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 240}}},
			[5] = {Id = 109,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 240}}},
			[6] = {Id = 110,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 240}}},
			[7] = {Id = 111,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 360}}},
			[8] = {Id = 112,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 360}}}
		}
	},
	[15] = {
		LvMin = 115,
		LvMax = 120,
		Name = _T("锻造者15"),
		Desc = _T("能够打造出100级，110级，120级的装备"),
		Equips = {
			[1] = {Id = 113,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 570}}},
			[2] = {Id = 114,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 285}}},
			[3] = {Id = 115,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 285}}},
			[4] = {Id = 116,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 285}}},
			[5] = {Id = 117,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 285}}},
			[6] = {Id = 118,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 285}}},
			[7] = {Id = 119,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 430}}},
			[8] = {Id = 120,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 430}}}
		}
	},
	[16] = {
		LvMin = 120,
		LvMax = 125,
		Name = _T("锻造者16"),
		Desc = _T("能够打造出110级，120级的装备"),
		Equips = {
			[1] = {Id = 121,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 610}}},
			[2] = {Id = 122,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 305}}},
			[3] = {Id = 123,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 305}}},
			[4] = {Id = 124,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 305}}},
			[5] = {Id = 125,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 305}}},
			[6] = {Id = 126,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 305}}},
			[7] = {Id = 127,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 460}}},
			[8] = {Id = 128,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 460}}}
		}
	},
	[17] = {
		LvMin = 125,
		LvMax = 130,
		Name = _T("锻造者17"),
		Desc = _T("能够打造出110级，120级，130级的装备"),
		Equips = {
			[1] = {Id = 129,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 710}}},
			[2] = {Id = 130,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 355}}},
			[3] = {Id = 131,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 355}}},
			[4] = {Id = 132,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 355}}},
			[5] = {Id = 133,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 355}}},
			[6] = {Id = 134,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 355}}},
			[7] = {Id = 135,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 535}}},
			[8] = {Id = 136,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 535}}}
		}
	},
	[18] = {
		LvMin = 130,
		LvMax = 135,
		Name = _T("锻造者18"),
		Desc = _T("能够打造出120级，130级的装备"),
		Equips = {
			[1] = {Id = 137,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 770}}},
			[2] = {Id = 138,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 385}}},
			[3] = {Id = 139,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 385}}},
			[4] = {Id = 140,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 385}}},
			[5] = {Id = 141,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 385}}},
			[6] = {Id = 142,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 385}}},
			[7] = {Id = 143,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 580}}},
			[8] = {Id = 144,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 580}}}
		}
	},
	[19] = {
		LvMin = 135,
		LvMax = 140,
		Name = _T("锻造者19"),
		Desc = _T("能够打造出120级，130级，140级的装备"),
		Equips = {
			[1] = {Id = 145,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 860}}},
			[2] = {Id = 146,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 430}}},
			[3] = {Id = 147,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 430}}},
			[4] = {Id = 148,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 430}}},
			[5] = {Id = 149,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 430}}},
			[6] = {Id = 150,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 430}}},
			[7] = {Id = 151,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 645}}},
			[8] = {Id = 152,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 645}}}
		}
	},
	[20] = {
		LvMin = 140,
		LvMax = 145,
		Name = _T("锻造者20"),
		Desc = _T("能够打造出130级，140级的装备"),
		Equips = {
			[1] = {Id = 153,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 920}}},
			[2] = {Id = 154,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 460}}},
			[3] = {Id = 155,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 460}}},
			[4] = {Id = 156,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 460}}},
			[5] = {Id = 157,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 460}}},
			[6] = {Id = 158,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 460}}},
			[7] = {Id = 159,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 690}}},
			[8] = {Id = 160,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 690}}}
		}
	},
	[21] = {
		LvMin = 145,
		LvMax = 150,
		Name = _T("锻造者21"),
		Desc = _T("能够打造出130级，140级，150级的装备"),
		Equips = {
			[1] = {Id = 161,Name = _T("灵器锻造"),Pic = "ui_dtex_Equ_01",Cost = {[1] = {Id = 1401015,Val = 1100}}},
			[2] = {Id = 162,Name = _T("头盔锻造"),Pic = "ui_dtex_Equ_02",Cost = {[1] = {Id = 1401015,Val = 550}}},
			[3] = {Id = 163,Name = _T("铠甲锻造"),Pic = "ui_dtex_Equ_03",Cost = {[1] = {Id = 1401015,Val = 550}}},
			[4] = {Id = 164,Name = _T("裤子锻造"),Pic = "ui_dtex_Equ_04",Cost = {[1] = {Id = 1401015,Val = 550}}},
			[5] = {Id = 165,Name = _T("鞋子锻造"),Pic = "ui_dtex_Equ_05",Cost = {[1] = {Id = 1401015,Val = 550}}},
			[6] = {Id = 166,Name = _T("护手锻造"),Pic = "ui_dtex_Equ_06",Cost = {[1] = {Id = 1401015,Val = 550}}},
			[7] = {Id = 167,Name = _T("项链锻造"),Pic = "ui_dtex_Equ_07",Cost = {[1] = {Id = 1401015,Val = 825}}},
			[8] = {Id = 168,Name = _T("戒指锻造"),Pic = "ui_dtex_Equ_08",Cost = {[1] = {Id = 1401015,Val = 825}}}
		}
	}
}