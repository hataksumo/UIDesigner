--[[
--note:

colums:
{LvId,等级段Id} ,{LvMin,等级Min} ,{LvMax,等级Max} ,{Name,名字} ,{Id,ID} ,{Pos,位置} ,{Pic,图片} ,{Cost[1].Id,消耗道具} ,{Cost[1].Val,消耗值} ,{Cost[2].Id,消耗道具} ,{Cost[2].Val,消耗值}
primary key:
#0 [装备锻造等级组]: LvId
#1 [装备锻造]: LvId,HelpCol,Pos
]]
local _T = LangUtil.Language
return{
	[1] = {
		LvMin = 1,
		LvMax = 29,
		Name = _T("锻造者1"),
		Equips = {
			[1] = {Id = 1,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 100},[2] = {Id = 1401002,Val = 630}}},
			[2] = {Id = 2,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 50},[2] = {Id = 1401002,Val = 315}}},
			[3] = {Id = 3,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 50},[2] = {Id = 1401002,Val = 315}}},
			[4] = {Id = 4,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 50},[2] = {Id = 1401002,Val = 315}}},
			[5] = {Id = 5,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 50},[2] = {Id = 1401002,Val = 315}}},
			[6] = {Id = 6,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 50},[2] = {Id = 1401002,Val = 315}}},
			[7] = {Id = 7,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 75},[2] = {Id = 1401002,Val = 472}}},
			[8] = {Id = 8,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 75},[2] = {Id = 1401002,Val = 472}}}
		}
	},
	[2] = {
		LvMin = 30,
		LvMax = 39,
		Name = _T("锻造者2"),
		Equips = {
			[1] = {Id = 9,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 150},[2] = {Id = 1401002,Val = 760}}},
			[2] = {Id = 10,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 75},[2] = {Id = 1401002,Val = 380}}},
			[3] = {Id = 11,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 75},[2] = {Id = 1401002,Val = 380}}},
			[4] = {Id = 12,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 75},[2] = {Id = 1401002,Val = 380}}},
			[5] = {Id = 13,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 75},[2] = {Id = 1401002,Val = 380}}},
			[6] = {Id = 14,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 75},[2] = {Id = 1401002,Val = 380}}},
			[7] = {Id = 15,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 112},[2] = {Id = 1401002,Val = 570}}},
			[8] = {Id = 16,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 112},[2] = {Id = 1401002,Val = 570}}}
		}
	},
	[3] = {
		LvMin = 40,
		LvMax = 49,
		Name = _T("锻造者3"),
		Equips = {
			[1] = {Id = 17,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 200},[2] = {Id = 1401002,Val = 1110}}},
			[2] = {Id = 18,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 100},[2] = {Id = 1401002,Val = 555}}},
			[3] = {Id = 19,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 100},[2] = {Id = 1401002,Val = 555}}},
			[4] = {Id = 20,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 100},[2] = {Id = 1401002,Val = 555}}},
			[5] = {Id = 21,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 100},[2] = {Id = 1401002,Val = 555}}},
			[6] = {Id = 22,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 100},[2] = {Id = 1401002,Val = 555}}},
			[7] = {Id = 23,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 150},[2] = {Id = 1401002,Val = 832}}},
			[8] = {Id = 24,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 150},[2] = {Id = 1401002,Val = 832}}}
		}
	},
	[4] = {
		LvMin = 50,
		LvMax = 59,
		Name = _T("锻造者4"),
		Equips = {
			[1] = {Id = 25,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 250},[2] = {Id = 1401002,Val = 1220}}},
			[2] = {Id = 26,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 125},[2] = {Id = 1401002,Val = 610}}},
			[3] = {Id = 27,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 125},[2] = {Id = 1401002,Val = 610}}},
			[4] = {Id = 28,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 125},[2] = {Id = 1401002,Val = 610}}},
			[5] = {Id = 29,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 125},[2] = {Id = 1401002,Val = 610}}},
			[6] = {Id = 30,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 125},[2] = {Id = 1401002,Val = 610}}},
			[7] = {Id = 31,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 187},[2] = {Id = 1401002,Val = 915}}},
			[8] = {Id = 32,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 187},[2] = {Id = 1401002,Val = 915}}}
		}
	},
	[5] = {
		LvMin = 60,
		LvMax = 69,
		Name = _T("锻造者5"),
		Equips = {
			[1] = {Id = 33,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 300},[2] = {Id = 1401002,Val = 1310}}},
			[2] = {Id = 34,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 150},[2] = {Id = 1401002,Val = 655}}},
			[3] = {Id = 35,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 150},[2] = {Id = 1401002,Val = 655}}},
			[4] = {Id = 36,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 150},[2] = {Id = 1401002,Val = 655}}},
			[5] = {Id = 37,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 150},[2] = {Id = 1401002,Val = 655}}},
			[6] = {Id = 38,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 150},[2] = {Id = 1401002,Val = 655}}},
			[7] = {Id = 39,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 225},[2] = {Id = 1401002,Val = 982}}},
			[8] = {Id = 40,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 225},[2] = {Id = 1401002,Val = 982}}}
		}
	},
	[6] = {
		LvMin = 70,
		LvMax = 79,
		Name = _T("锻造者6"),
		Equips = {
			[1] = {Id = 41,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 400},[2] = {Id = 1401002,Val = 1380}}},
			[2] = {Id = 42,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 200},[2] = {Id = 1401002,Val = 690}}},
			[3] = {Id = 43,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 200},[2] = {Id = 1401002,Val = 690}}},
			[4] = {Id = 44,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 200},[2] = {Id = 1401002,Val = 690}}},
			[5] = {Id = 45,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 200},[2] = {Id = 1401002,Val = 690}}},
			[6] = {Id = 46,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 200},[2] = {Id = 1401002,Val = 690}}},
			[7] = {Id = 47,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 300},[2] = {Id = 1401002,Val = 1035}}},
			[8] = {Id = 48,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 300},[2] = {Id = 1401002,Val = 1035}}}
		}
	},
	[7] = {
		LvMin = 80,
		LvMax = 89,
		Name = _T("锻造者7"),
		Equips = {
			[1] = {Id = 49,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 600},[2] = {Id = 1401002,Val = 1600}}},
			[2] = {Id = 50,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 300},[2] = {Id = 1401002,Val = 800}}},
			[3] = {Id = 51,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 300},[2] = {Id = 1401002,Val = 800}}},
			[4] = {Id = 52,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 300},[2] = {Id = 1401002,Val = 800}}},
			[5] = {Id = 53,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 300},[2] = {Id = 1401002,Val = 800}}},
			[6] = {Id = 54,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 300},[2] = {Id = 1401002,Val = 800}}},
			[7] = {Id = 55,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 450},[2] = {Id = 1401002,Val = 1200}}},
			[8] = {Id = 56,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 450},[2] = {Id = 1401002,Val = 1200}}}
		}
	},
	[8] = {
		LvMin = 90,
		LvMax = 99,
		Name = _T("锻造者8"),
		Equips = {
			[1] = {Id = 57,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 700},[2] = {Id = 1401002,Val = 1700}}},
			[2] = {Id = 58,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 350},[2] = {Id = 1401002,Val = 850}}},
			[3] = {Id = 59,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 350},[2] = {Id = 1401002,Val = 850}}},
			[4] = {Id = 60,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 350},[2] = {Id = 1401002,Val = 850}}},
			[5] = {Id = 61,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 350},[2] = {Id = 1401002,Val = 850}}},
			[6] = {Id = 62,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 350},[2] = {Id = 1401002,Val = 850}}},
			[7] = {Id = 63,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 525},[2] = {Id = 1401002,Val = 1275}}},
			[8] = {Id = 64,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 525},[2] = {Id = 1401002,Val = 1275}}}
		}
	},
	[9] = {
		LvMin = 100,
		LvMax = 109,
		Name = _T("锻造者9"),
		Equips = {
			[1] = {Id = 65,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 750},[2] = {Id = 1401002,Val = 1710}}},
			[2] = {Id = 66,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 375},[2] = {Id = 1401002,Val = 855}}},
			[3] = {Id = 67,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 375},[2] = {Id = 1401002,Val = 855}}},
			[4] = {Id = 68,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 375},[2] = {Id = 1401002,Val = 855}}},
			[5] = {Id = 69,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 375},[2] = {Id = 1401002,Val = 855}}},
			[6] = {Id = 70,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 375},[2] = {Id = 1401002,Val = 855}}},
			[7] = {Id = 71,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 562},[2] = {Id = 1401002,Val = 1282}}},
			[8] = {Id = 72,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 562},[2] = {Id = 1401002,Val = 1282}}}
		}
	},
	[10] = {
		LvMin = 110,
		LvMax = 119,
		Name = _T("锻造者10"),
		Equips = {
			[1] = {Id = 73,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 850},[2] = {Id = 1401002,Val = 1910}}},
			[2] = {Id = 74,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 425},[2] = {Id = 1401002,Val = 955}}},
			[3] = {Id = 75,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 425},[2] = {Id = 1401002,Val = 955}}},
			[4] = {Id = 76,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 425},[2] = {Id = 1401002,Val = 955}}},
			[5] = {Id = 77,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 425},[2] = {Id = 1401002,Val = 955}}},
			[6] = {Id = 78,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 425},[2] = {Id = 1401002,Val = 955}}},
			[7] = {Id = 79,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 637},[2] = {Id = 1401002,Val = 1432}}},
			[8] = {Id = 80,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 637},[2] = {Id = 1401002,Val = 1432}}}
		}
	},
	[11] = {
		LvMin = 120,
		LvMax = 129,
		Name = _T("锻造者11"),
		Equips = {
			[1] = {Id = 81,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 1050},[2] = {Id = 1401002,Val = 1910}}},
			[2] = {Id = 82,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 525},[2] = {Id = 1401002,Val = 955}}},
			[3] = {Id = 83,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 525},[2] = {Id = 1401002,Val = 955}}},
			[4] = {Id = 84,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 525},[2] = {Id = 1401002,Val = 955}}},
			[5] = {Id = 85,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 525},[2] = {Id = 1401002,Val = 955}}},
			[6] = {Id = 86,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 525},[2] = {Id = 1401002,Val = 955}}},
			[7] = {Id = 87,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 787},[2] = {Id = 1401002,Val = 1432}}},
			[8] = {Id = 88,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 787},[2] = {Id = 1401002,Val = 1432}}}
		}
	},
	[12] = {
		LvMin = 130,
		LvMax = 139,
		Name = _T("锻造者12"),
		Equips = {
			[1] = {Id = 89,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 1250},[2] = {Id = 1401002,Val = 2070}}},
			[2] = {Id = 90,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 625},[2] = {Id = 1401002,Val = 1035}}},
			[3] = {Id = 91,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 625},[2] = {Id = 1401002,Val = 1035}}},
			[4] = {Id = 92,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 625},[2] = {Id = 1401002,Val = 1035}}},
			[5] = {Id = 93,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 625},[2] = {Id = 1401002,Val = 1035}}},
			[6] = {Id = 94,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 625},[2] = {Id = 1401002,Val = 1035}}},
			[7] = {Id = 95,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 937},[2] = {Id = 1401002,Val = 1552}}},
			[8] = {Id = 96,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 937},[2] = {Id = 1401002,Val = 1552}}}
		}
	},
	[13] = {
		LvMin = 140,
		LvMax = 150,
		Name = _T("锻造者13"),
		Equips = {
			[1] = {Id = 97,Name = _T("武器锻造"),Pic = "WuQi",Cost = {[1] = {Id = 1401015,Val = 1450},[2] = {Id = 1401002,Val = 2270}}},
			[2] = {Id = 98,Name = _T("头盔锻造"),Pic = "TouKui",Cost = {[1] = {Id = 1401015,Val = 725},[2] = {Id = 1401002,Val = 1135}}},
			[3] = {Id = 99,Name = _T("肩甲锻造"),Pic = "JianJia",Cost = {[1] = {Id = 1401015,Val = 725},[2] = {Id = 1401002,Val = 1135}}},
			[4] = {Id = 100,Name = _T("衣服锻造"),Pic = "YiFu",Cost = {[1] = {Id = 1401015,Val = 725},[2] = {Id = 1401002,Val = 1135}}},
			[5] = {Id = 101,Name = _T("鞋子锻造"),Pic = "XieZi",Cost = {[1] = {Id = 1401015,Val = 725},[2] = {Id = 1401002,Val = 1135}}},
			[6] = {Id = 102,Name = _T("护手锻造"),Pic = "HuShou",Cost = {[1] = {Id = 1401015,Val = 725},[2] = {Id = 1401002,Val = 1135}}},
			[7] = {Id = 103,Name = _T("项链锻造"),Pic = "XiangLian",Cost = {[1] = {Id = 1401015,Val = 1087},[2] = {Id = 1401002,Val = 1702}}},
			[8] = {Id = 104,Name = _T("戒指锻造"),Pic = "JieZhi",Cost = {[1] = {Id = 1401015,Val = 1087},[2] = {Id = 1401002,Val = 1702}}}
		}
	}
}