--[[
output from excel forceRating.战力评估.xlsx
--note:
卡牌传记副本关卡
colums:
{Id,ID} ,{Level.min,最小玩家等级} ,{Level.max,最大玩家等级} ,{Force,推荐战力} ,{System[1].Id,系统[1]ID} ,{System[1].Icon,系统[1]图标} ,{System[1].Name,系统[1]养成目标} ,{System[1].Force,系统[1]标准战力} ,{System[1].JumpTo,系统[1]跳转ID} ,{System[1].JumpParam,系统[1]跳转参数} ,{System[2].Id,系统[2]ID} ,{System[2].Icon,系统[2]图标} ,{System[2].Name,系统[2]养成目标} ,{System[2].Force,系统[2]标准战力} ,{System[2].JumpTo,系统[2]跳转ID} ,{System[2].JumpParam,系统[2]跳转参数} ,{System[3].Id,系统[3]ID} ,{System[3].Icon,系统[3]图标} ,{System[3].Name,系统[3]养成目标} ,{System[3].Force,系统[3]标准战力} ,{System[3].JumpTo,系统[3]跳转ID} ,{System[3].JumpParam,系统[3]跳转参数} ,{System[4].Id,系统[4]ID} ,{System[4].Icon,系统[4]图标} ,{System[4].Name,系统[4]养成目标} ,{System[4].Force,系统[4]标准战力} ,{System[4].JumpTo,系统[4]跳转ID} ,{System[4].JumpParam,系统[4]跳转参数} ,{System[5].Id,系统[5]ID} ,{System[5].Icon,系统[5]图标} ,{System[5].Name,系统[5]养成目标} ,{System[5].Force,系统[5]标准战力} ,{System[5].JumpTo,系统[5]跳转ID} ,{System[5].JumpParam,系统[5]跳转参数}
primary key:
#0 [战力评估]: Id
]]
local _T = LangUtil.Language
return{
	[1] = {Id = 1,Level = {min = 1,max = 9},Force = 20000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("初级御灵学徒（升级守护灵)"),Force = 14,JumpTo = 20200}}},
	[2] = {Id = 2,Level = {min = 10,max = 19},Force = 40000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("中级御灵学徒（升级守护灵)"),Force = 28,JumpTo = 20200}}},
	[3] = {Id = 3,Level = {min = 20,max = 29},Force = 100000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("高级御灵学徒（升级守护灵)"),Force = 42,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("装备学徒（装备强化等级）"),Force = 480,JumpTo = 20100}}},
	[4] = {Id = 4,Level = {min = 30,max = 39},Force = 200000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("初级御灵使者（升级守护灵)"),Force = 56,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("初级装备使者（装备强化等级）"),Force = 720,JumpTo = 20100}}},
	[5] = {Id = 5,Level = {min = 40,max = 49},Force = 400000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("中级御灵使者（升级守护灵)"),Force = 70,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("中级装备使者（装备强化等级）"),Force = 960,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("专属武器使者"),Force = 9,JumpTo = 20200}}},
	[6] = {Id = 6,Level = {min = 50,max = 59},Force = 600000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("高级御灵使者（升级守护灵)"),Force = 84,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("高级装备使者（装备强化等级）"),Force = 1200,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("高级专属武器使者"),Force = 18,JumpTo = 20200},[4] = {Id = 203,Icon = "ui_dtex_Item_1606022",Name = _T("神器使者"),Force = 35,JumpTo = 20500}}},
	[7] = {Id = 7,Level = {min = 60,max = 69},Force = 1000000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("初级御灵大师（升级守护灵)"),Force = 98,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("初级装备大师（装备强化等级）"),Force = 1440,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("初级专属武器大师"),Force = 27,JumpTo = 20200},[4] = {Id = 203,Icon = "ui_dtex_Item_1606022",Name = _T("初级神器大师"),Force = 70,JumpTo = 20500}}},
	[8] = {Id = 8,Level = {min = 70,max = 79},Force = 1400000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("中级御灵大师（升级守护灵)"),Force = 112,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("中级装备大师（装备强化等级）"),Force = 1680,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("中级专属武器大师"),Force = 36,JumpTo = 20200},[4] = {Id = 203,Icon = "ui_dtex_Item_1606022",Name = _T("中级神器大师"),Force = 105,JumpTo = 20500}}},
	[9] = {Id = 9,Level = {min = 80,max = 89},Force = 2000000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("高级御灵大师（升级守护灵)"),Force = 126,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("高级装备大师（装备强化等级）"),Force = 1920,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("高级专属武器大师"),Force = 45,JumpTo = 20200},[4] = {Id = 203,Icon = "ui_dtex_Item_1606022",Name = _T("高级神器大师"),Force = 140,JumpTo = 20500}}},
	[10] = {Id = 10,Level = {min = 90,max = 99},Force = 3000000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("初级御灵导师（升级守护灵)"),Force = 140,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("初级装备导师（装备强化等级）"),Force = 2160,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("初级专属武器导师"),Force = 54,JumpTo = 20200},[4] = {Id = 203,Icon = "ui_dtex_Item_1606022",Name = _T("初级神器导师"),Force = 175,JumpTo = 20500}}},
	[11] = {Id = 11,Level = {min = 100,max = 109},Force = 4000000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("中级御灵导师（升级守护灵)"),Force = 154,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("中级装备导师（装备强化等级）"),Force = 2400,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("中级专属武器导师"),Force = 63,JumpTo = 20200},[4] = {Id = 203,Icon = "ui_dtex_Item_1606022",Name = _T("中级神器导师"),Force = 210,JumpTo = 20500}}},
	[12] = {Id = 12,Level = {min = 110,max = 119},Force = 5500000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("高级御灵导师（升级守护灵)"),Force = 168,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("高级装备导师（装备强化等级）"),Force = 2640,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("高级专属武器导师"),Force = 72,JumpTo = 20200},[4] = {Id = 203,Icon = "ui_dtex_Item_1606022",Name = _T("高级神器导师"),Force = 245,JumpTo = 20500}}},
	[13] = {Id = 13,Level = {min = 120,max = 129},Force = 7000000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("初级御灵宗师（升级守护灵)"),Force = 182,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("初级装备宗师（装备强化等级）"),Force = 2880,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("初级专属武器宗师"),Force = 81,JumpTo = 20200},[4] = {Id = 203,Icon = "ui_dtex_Item_1606022",Name = _T("初级神器宗师"),Force = 280,JumpTo = 20500}}},
	[14] = {Id = 14,Level = {min = 130,max = 139},Force = 10000000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("中级御灵宗师（升级守护灵)"),Force = 196,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("中级装备宗师（装备强化等级）"),Force = 3120,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("中级专属武器宗师"),Force = 90,JumpTo = 20200},[4] = {Id = 203,Icon = "ui_dtex_Item_1606022",Name = _T("中级神器宗师"),Force = 315,JumpTo = 20500}}},
	[15] = {Id = 15,Level = {min = 140,max = 149},Force = 13000000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("高级御灵宗师（升级守护灵)"),Force = 210,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("高级装备宗师（装备强化等级）"),Force = 3360,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("高级专属武器宗师"),Force = 99,JumpTo = 20200},[4] = {Id = 203,Icon = "ui_dtex_Item_1606022",Name = _T("高级神器宗师"),Force = 350,JumpTo = 20500}}},
	[16] = {Id = 16,Level = {min = 150,max = 1000},Force = 20000000,System = {[1] = {Id = 202,Icon = "ui_t_c2_677",Name = _T("神级御灵宗师（升级守护灵)"),Force = 224,JumpTo = 20200},[2] = {Id = 313,Icon = "ui_t_c2_653",Name = _T("神级装备宗师（装备强化等级）"),Force = 3600,JumpTo = 20100},[3] = {Id = 20204,Icon = "ui_dtex_Equip_1501011",Name = _T("神级专属武器宗师"),Force = 108,JumpTo = 20200},[4] = {Id = 203,Icon = "ui_dtex_Item_1606022",Name = _T("神级神器宗师"),Force = 385,JumpTo = 20500}}}
}