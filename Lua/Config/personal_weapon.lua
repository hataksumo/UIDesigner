--[[
output from excel excluWp.专属武器.xlsx
--note:
守护灵拥有专属武器，这是专属武器的配置。专属武器可以消耗对应武将碎片解锁。解锁后和强化，解封，幻化。专属武器激活后则可获得基础属性奖励。
专属武器魂珠的配置，描述了专属武器各主子的开启条件。
描述专属武器每个柱子强化的消耗与属性，以及成功概率。实际成功率读ST[i].P，如果i>ST.Length，则必然成功。失败则祝福值提升FvUp，如果祝福值大于ST[i].MaxV，i+=1;
专属武器的解封，可获得属性或被动技能。消耗对应将魂碎片进行武器解封。
colums:
{WpID,专属武器ID} ,{CardId,卡牌ID} ,{Name,武器名} ,{Quality,品质} ,{Icon,图标} ,{Id,ID} ,{LvLimit,等级限制} ,{PreLv,上一级等级} ,{UnsealLv,解封等级} ,{Prop[1].Id,属性Id1} ,{Prop[1].Val,属性值1} ,{Prop[1].Sum,属性总值1} ,{Prop[2].Id,属性Id2} ,{Prop[2].Val,属性值2} ,{Prop[2].Sum,属性总值2} ,{Prop[3].Id,属性Id3} ,{Prop[3].Val,属性值3} ,{Prop[3].Sum,属性总值3} ,{Cost[1].Id,消耗道具Id1} ,{Cost[1].Val,消耗道具值1} ,{Cost[2].Id,消耗道具Id2} ,{Cost[2].Val,消耗道具值2} ,{Cost[3].Id,消耗道具Id3} ,{Cost[3].Val,消耗道具值3} ,{StrenthSuccessRate,强化成功率} ,{Fv,失败提升祝福值} ,{MaxV,最高祝福值} ,{HelpCol,辅助列} ,{Lv,等级} ,{Pskill[1],被动技能} ,{PSkillLevel[1],效果等级} ,{Pskill[2],被动技能} ,{PSkillLevel[2],效果等级} ,{WeaponPrefab,武器预设}
primary key:
#0 [专属武器]: WpID
#1 [专属武器龙珠]: WpID,HelpCol,Pos
#2 [新专属武器强化]: WpID,HelpCol,Pos,HelpCol1,Lv
#3 [专属武器解封]: WpID,HelpCol,Lv
]]
local _T = LangUtil.Language
return{
	[1102001] = {
		CardId = 1102001,
		Name = _T("青龙偃月刀"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501001",
		HunZhu = {
			[1] = {
				Id = 200101,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--关羽魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 24,Sum = 24},[2] = {Id = 112,Val = 10,Sum = 10},[3] = {Id = 113,Val = 188,Sum = 188}},Cost = {[1] = {Id = 1401002,Val = 160},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--关羽魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 38,Sum = 62},[2] = {Id = 112,Val = 14,Sum = 24},[3] = {Id = 113,Val = 282,Sum = 470}},Cost = {[1] = {Id = 1401002,Val = 245},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--关羽魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 112},[2] = {Id = 112,Val = 19,Sum = 43},[3] = {Id = 113,Val = 376,Sum = 846}},Cost = {[1] = {Id = 1401002,Val = 405},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--关羽魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 186},[2] = {Id = 112,Val = 30,Sum = 73},[3] = {Id = 113,Val = 564,Sum = 1410}},Cost = {[1] = {Id = 1401002,Val = 520},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--关羽魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 285},[2] = {Id = 112,Val = 40,Sum = 113},[3] = {Id = 113,Val = 752,Sum = 2162}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--关羽魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 123,Sum = 408},[2] = {Id = 112,Val = 49,Sum = 162},[3] = {Id = 113,Val = 941,Sum = 3103}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--关羽魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 149,Sum = 557},[2] = {Id = 112,Val = 59,Sum = 221},[3] = {Id = 113,Val = 1128,Sum = 4231}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--关羽魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 173,Sum = 730},[2] = {Id = 112,Val = 70,Sum = 291},[3] = {Id = 113,Val = 1316,Sum = 5547}},Cost = {[1] = {Id = 1401002,Val = 1055},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--关羽魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 928},[2] = {Id = 112,Val = 79,Sum = 370},[3] = {Id = 113,Val = 1505,Sum = 7052}},Cost = {[1] = {Id = 1401002,Val = 1315},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--关羽魂珠-1 等级-9
				}
			},--关羽专属武器魂珠-1
			[2] = {
				Id = 200102,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--关羽魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 39,Sum = 39},[2] = {Id = 112,Val = 16,Sum = 16},[3] = {Id = 113,Val = 298,Sum = 298}},Cost = {[1] = {Id = 1401002,Val = 445},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--关羽魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 98},[2] = {Id = 112,Val = 24,Sum = 40},[3] = {Id = 113,Val = 446,Sum = 744}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--关羽魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 78,Sum = 176},[2] = {Id = 112,Val = 31,Sum = 71},[3] = {Id = 113,Val = 595,Sum = 1339}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--关羽魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 117,Sum = 293},[2] = {Id = 112,Val = 47,Sum = 118},[3] = {Id = 113,Val = 892,Sum = 2231}},Cost = {[1] = {Id = 1401002,Val = 710},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--关羽魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 449},[2] = {Id = 112,Val = 62,Sum = 180},[3] = {Id = 113,Val = 1189,Sum = 3420}},Cost = {[1] = {Id = 1401002,Val = 1080},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--关羽魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 195,Sum = 644},[2] = {Id = 112,Val = 78,Sum = 258},[3] = {Id = 113,Val = 1487,Sum = 4907}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--关羽魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 234,Sum = 878},[2] = {Id = 112,Val = 94,Sum = 352},[3] = {Id = 113,Val = 1784,Sum = 6691}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--关羽魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 273,Sum = 1151},[2] = {Id = 112,Val = 109,Sum = 461},[3] = {Id = 113,Val = 2082,Sum = 8773}},Cost = {[1] = {Id = 1401002,Val = 2150},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--关羽魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 1463},[2] = {Id = 112,Val = 125,Sum = 586},[3] = {Id = 113,Val = 2380,Sum = 11153}},Cost = {[1] = {Id = 1401002,Val = 2870},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--关羽魂珠-2 等级-9
				}
			},--关羽专属武器魂珠-2
			[3] = {
				Id = 200103,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--关羽魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 56,Sum = 56},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 420,Sum = 420}},Cost = {[1] = {Id = 1401002,Val = 910},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--关羽魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 83,Sum = 139},[2] = {Id = 112,Val = 34,Sum = 56},[3] = {Id = 113,Val = 631,Sum = 1051}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--关羽魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 111,Sum = 250},[2] = {Id = 112,Val = 44,Sum = 100},[3] = {Id = 113,Val = 841,Sum = 1892}},Cost = {[1] = {Id = 1401002,Val = 1140},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--关羽魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 165,Sum = 415},[2] = {Id = 112,Val = 66,Sum = 166},[3] = {Id = 113,Val = 1261,Sum = 3153}},Cost = {[1] = {Id = 1401002,Val = 1095},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--关羽魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 636},[2] = {Id = 112,Val = 89,Sum = 255},[3] = {Id = 113,Val = 1682,Sum = 4835}},Cost = {[1] = {Id = 1401002,Val = 1485},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--关羽魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 276,Sum = 912},[2] = {Id = 112,Val = 110,Sum = 365},[3] = {Id = 113,Val = 2102,Sum = 6937}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--关羽魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 332,Sum = 1244},[2] = {Id = 112,Val = 132,Sum = 497},[3] = {Id = 113,Val = 2524,Sum = 9461}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--关羽魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 387,Sum = 1631},[2] = {Id = 112,Val = 155,Sum = 652},[3] = {Id = 113,Val = 2944,Sum = 12405}},Cost = {[1] = {Id = 1401002,Val = 2955},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--关羽魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 443,Sum = 2074},[2] = {Id = 112,Val = 176,Sum = 828},[3] = {Id = 113,Val = 3365,Sum = 15770}},Cost = {[1] = {Id = 1401002,Val = 3695},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--关羽魂珠-3 等级-9
				}
			},--关羽专属武器魂珠-3
			[4] = {
				Id = 200104,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--关羽魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 57},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 432,Sum = 432}},Cost = {[1] = {Id = 1401002,Val = 1480},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--关羽魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 86,Sum = 143},[2] = {Id = 112,Val = 34,Sum = 57},[3] = {Id = 113,Val = 647,Sum = 1079}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--关羽魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 114,Sum = 257},[2] = {Id = 112,Val = 46,Sum = 103},[3] = {Id = 113,Val = 863,Sum = 1942}},Cost = {[1] = {Id = 1401002,Val = 1235},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--关羽魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 427},[2] = {Id = 112,Val = 68,Sum = 171},[3] = {Id = 113,Val = 1295,Sum = 3237}},Cost = {[1] = {Id = 1401002,Val = 2370},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--关羽魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 654},[2] = {Id = 112,Val = 91,Sum = 262},[3] = {Id = 113,Val = 1726,Sum = 4963}},Cost = {[1] = {Id = 1401002,Val = 2405},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--关羽魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 938},[2] = {Id = 112,Val = 113,Sum = 375},[3] = {Id = 113,Val = 2158,Sum = 7121}},Cost = {[1] = {Id = 1401002,Val = 2390},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--关羽魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1279},[2] = {Id = 112,Val = 136,Sum = 511},[3] = {Id = 113,Val = 2588,Sum = 9709}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--关羽魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 396,Sum = 1675},[2] = {Id = 112,Val = 158,Sum = 669},[3] = {Id = 113,Val = 3020,Sum = 12729}},Cost = {[1] = {Id = 1401002,Val = 4790},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--关羽魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 453,Sum = 2128},[2] = {Id = 112,Val = 181,Sum = 850},[3] = {Id = 113,Val = 3451,Sum = 16180}},Cost = {[1] = {Id = 1401002,Val = 7190},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--关羽魂珠-4 等级-9
				}
			},--关羽专属武器魂珠-4
			[5] = {
				Id = 200105,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--关羽魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 71,Sum = 71},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 533,Sum = 533}},Cost = {[1] = {Id = 1401002,Val = 3085},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--关羽魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 105,Sum = 176},[2] = {Id = 112,Val = 42,Sum = 70},[3] = {Id = 113,Val = 799,Sum = 1332}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--关羽魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 316},[2] = {Id = 112,Val = 56,Sum = 126},[3] = {Id = 113,Val = 1066,Sum = 2398}},Cost = {[1] = {Id = 1401002,Val = 2570},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--关羽魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 210,Sum = 526},[2] = {Id = 112,Val = 84,Sum = 210},[3] = {Id = 113,Val = 1598,Sum = 3996}},Cost = {[1] = {Id = 1401002,Val = 3705},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--关羽魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 281,Sum = 807},[2] = {Id = 112,Val = 112,Sum = 322},[3] = {Id = 113,Val = 2131,Sum = 6127}},Cost = {[1] = {Id = 1401002,Val = 3760},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--关羽魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 350,Sum = 1157},[2] = {Id = 112,Val = 140,Sum = 462},[3] = {Id = 113,Val = 2664,Sum = 8791}},Cost = {[1] = {Id = 1401002,Val = 6230},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--关羽魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 420,Sum = 1577},[2] = {Id = 112,Val = 168,Sum = 630},[3] = {Id = 113,Val = 3197,Sum = 11988}},Cost = {[1] = {Id = 1401002,Val = 6245},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--关羽魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 489,Sum = 2066},[2] = {Id = 112,Val = 196,Sum = 826},[3] = {Id = 113,Val = 3730,Sum = 15718}},Cost = {[1] = {Id = 1401002,Val = 8740},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--关羽魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 2626},[2] = {Id = 112,Val = 224,Sum = 1050},[3] = {Id = 113,Val = 4261,Sum = 19979}},Cost = {[1] = {Id = 1401002,Val = 11240},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--关羽魂珠-5 等级-9
				}
			},--关羽专属武器魂珠-5
			[6] = {
				Id = 200106,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--关羽魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 86,Sum = 86},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 649,Sum = 649}},Cost = {[1] = {Id = 1401002,Val = 2905},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--关羽魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 128,Sum = 214},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 973,Sum = 1622}},Cost = {[1] = {Id = 1401002,Val = 4360},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--关羽魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 171,Sum = 385},[2] = {Id = 112,Val = 68,Sum = 154},[3] = {Id = 113,Val = 1298,Sum = 2920}},Cost = {[1] = {Id = 1401002,Val = 4840},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--关羽魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 255,Sum = 640},[2] = {Id = 112,Val = 102,Sum = 256},[3] = {Id = 113,Val = 1948,Sum = 4868}},Cost = {[1] = {Id = 1401002,Val = 6970},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--关羽魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 981},[2] = {Id = 112,Val = 137,Sum = 393},[3] = {Id = 113,Val = 2597,Sum = 7465}},Cost = {[1] = {Id = 1401002,Val = 7080},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--关羽魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 426,Sum = 1407},[2] = {Id = 112,Val = 170,Sum = 563},[3] = {Id = 113,Val = 3246,Sum = 10711}},Cost = {[1] = {Id = 1401002,Val = 9385},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--关羽魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 512,Sum = 1919},[2] = {Id = 112,Val = 204,Sum = 767},[3] = {Id = 113,Val = 3894,Sum = 14605}},Cost = {[1] = {Id = 1401002,Val = 11760},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--关羽魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 597,Sum = 2516},[2] = {Id = 112,Val = 239,Sum = 1006},[3] = {Id = 113,Val = 4543,Sum = 19148}},Cost = {[1] = {Id = 1401002,Val = 16445},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--关羽魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 683,Sum = 3199},[2] = {Id = 112,Val = 272,Sum = 1278},[3] = {Id = 113,Val = 5192,Sum = 24340}},Cost = {[1] = {Id = 1401002,Val = 18800},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--关羽魂珠-6 等级-9
				}
			},--关羽专属武器魂珠-6
			[7] = {
				Id = 200107,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--关羽魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 95,Sum = 95},[2] = {Id = 112,Val = 37,Sum = 37},[3] = {Id = 113,Val = 718,Sum = 718}},Cost = {[1] = {Id = 1401002,Val = 5710},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--关羽魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 141,Sum = 236},[2] = {Id = 112,Val = 56,Sum = 93},[3] = {Id = 113,Val = 1078,Sum = 1796}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--关羽魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 425},[2] = {Id = 112,Val = 76,Sum = 169},[3] = {Id = 113,Val = 1436,Sum = 3232}},Cost = {[1] = {Id = 1401002,Val = 7135},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--关羽魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 709},[2] = {Id = 112,Val = 113,Sum = 282},[3] = {Id = 113,Val = 2154,Sum = 5386}},Cost = {[1] = {Id = 1401002,Val = 9130},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--关羽魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1086},[2] = {Id = 112,Val = 151,Sum = 433},[3] = {Id = 113,Val = 2872,Sum = 8258}},Cost = {[1] = {Id = 1401002,Val = 9275},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--关羽魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 471,Sum = 1557},[2] = {Id = 112,Val = 188,Sum = 621},[3] = {Id = 113,Val = 3590,Sum = 11848}},Cost = {[1] = {Id = 1401002,Val = 11525},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--关羽魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 566,Sum = 2123},[2] = {Id = 112,Val = 227,Sum = 848},[3] = {Id = 113,Val = 4308,Sum = 16156}},Cost = {[1] = {Id = 1401002,Val = 16170},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--关羽魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 660,Sum = 2783},[2] = {Id = 112,Val = 264,Sum = 1112},[3] = {Id = 113,Val = 5027,Sum = 21183}},Cost = {[1] = {Id = 1401002,Val = 18465},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--关羽魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 755,Sum = 3538},[2] = {Id = 112,Val = 301,Sum = 1413},[3] = {Id = 113,Val = 5744,Sum = 26927}},Cost = {[1] = {Id = 1401002,Val = 23090},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--关羽魂珠-7 等级-9
				}
			},--关羽专属武器魂珠-7
			[8] = {
				Id = 200108,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--关羽魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 99},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 752,Sum = 752}},Cost = {[1] = {Id = 1401002,Val = 4865},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--关羽魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 149,Sum = 248},[2] = {Id = 112,Val = 59,Sum = 99},[3] = {Id = 113,Val = 1128,Sum = 1880}},Cost = {[1] = {Id = 1401002,Val = 5835},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--关羽魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 446},[2] = {Id = 112,Val = 79,Sum = 178},[3] = {Id = 113,Val = 1504,Sum = 3384}},Cost = {[1] = {Id = 1401002,Val = 8105},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--关羽魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 297,Sum = 743},[2] = {Id = 112,Val = 119,Sum = 297},[3] = {Id = 113,Val = 2256,Sum = 5640}},Cost = {[1] = {Id = 1401002,Val = 9340},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--关羽魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1138},[2] = {Id = 112,Val = 158,Sum = 455},[3] = {Id = 113,Val = 3008,Sum = 8648}},Cost = {[1] = {Id = 1401002,Val = 11855},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--关羽魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 494,Sum = 1632},[2] = {Id = 112,Val = 198,Sum = 653},[3] = {Id = 113,Val = 3760,Sum = 12408}},Cost = {[1] = {Id = 1401002,Val = 14145},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--关羽魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 593,Sum = 2225},[2] = {Id = 112,Val = 238,Sum = 891},[3] = {Id = 113,Val = 4512,Sum = 16920}},Cost = {[1] = {Id = 1401002,Val = 19690},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--关羽魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 692,Sum = 2917},[2] = {Id = 112,Val = 276,Sum = 1167},[3] = {Id = 113,Val = 5264,Sum = 22184}},Cost = {[1] = {Id = 1401002,Val = 23605},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--关羽魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 791,Sum = 3708},[2] = {Id = 112,Val = 316,Sum = 1483},[3] = {Id = 113,Val = 6017,Sum = 28201}},Cost = {[1] = {Id = 1401002,Val = 23615},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--关羽魂珠-8 等级-9
				}
			}--关羽专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--关羽专属武器解封-0
			[1] = {Pskill = {[1] = 130300111},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 36500},[2] = {Id = 1502001,Val = 80}}},--关羽专属武器解封-1
			[2] = {Pskill = {[1] = 130300111},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 75500},[2] = {Id = 1502001,Val = 80}}},--关羽专属武器解封-2
			[3] = {Pskill = {[1] = 130300111},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 168500},[2] = {Id = 1502001,Val = 120}}},--关羽专属武器解封-3
			[4] = {Pskill = {[1] = 130300111},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 295500},[2] = {Id = 1502001,Val = 120}}},--关羽专属武器解封-4
			[5] = {Pskill = {[1] = 130300111},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 732500},[2] = {Id = 1502001,Val = 160}}}--关羽专属武器解封-5
		}
	},--关羽专属武器
	[1102002] = {
		CardId = 1102002,
		Name = _T("碎岩"),
		Quality = 3,
		Icon = "ui_dtex_Equip_1501002",
		HunZhu = {
			[1] = {
				Id = 200201,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--许褚魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 14,Sum = 14},[2] = {Id = 112,Val = 8,Sum = 8},[3] = {Id = 113,Val = 173,Sum = 173}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--许褚魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 23,Sum = 37},[2] = {Id = 112,Val = 12,Sum = 20},[3] = {Id = 113,Val = 259,Sum = 432}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--许褚魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 67},[2] = {Id = 112,Val = 16,Sum = 36},[3] = {Id = 113,Val = 344,Sum = 776}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--许褚魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 111},[2] = {Id = 112,Val = 25,Sum = 61},[3] = {Id = 113,Val = 517,Sum = 1293}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--许褚魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 170},[2] = {Id = 112,Val = 33,Sum = 94},[3] = {Id = 113,Val = 690,Sum = 1983}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--许褚魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 244},[2] = {Id = 112,Val = 41,Sum = 135},[3] = {Id = 113,Val = 862,Sum = 2845}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--许褚魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 333},[2] = {Id = 112,Val = 49,Sum = 184},[3] = {Id = 113,Val = 1034,Sum = 3879}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--许褚魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 104,Sum = 437},[2] = {Id = 112,Val = 58,Sum = 242},[3] = {Id = 113,Val = 1207,Sum = 5086}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--许褚魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 556},[2] = {Id = 112,Val = 66,Sum = 308},[3] = {Id = 113,Val = 1379,Sum = 6465}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--许褚魂珠-1 等级-9
				}
			},--许褚专属武器魂珠-1
			[2] = {
				Id = 200202,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--许褚魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 23,Sum = 23},[2] = {Id = 112,Val = 13,Sum = 13},[3] = {Id = 113,Val = 273,Sum = 273}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--许褚魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 35,Sum = 58},[2] = {Id = 112,Val = 20,Sum = 33},[3] = {Id = 113,Val = 409,Sum = 682}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--许褚魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 105},[2] = {Id = 112,Val = 26,Sum = 59},[3] = {Id = 113,Val = 546,Sum = 1228}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--许褚魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 70,Sum = 175},[2] = {Id = 112,Val = 39,Sum = 98},[3] = {Id = 113,Val = 817,Sum = 2045}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--许褚魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 269},[2] = {Id = 112,Val = 52,Sum = 150},[3] = {Id = 113,Val = 1090,Sum = 3135}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--许褚魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 117,Sum = 386},[2] = {Id = 112,Val = 65,Sum = 215},[3] = {Id = 113,Val = 1363,Sum = 4498}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--许褚魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 526},[2] = {Id = 112,Val = 78,Sum = 293},[3] = {Id = 113,Val = 1636,Sum = 6134}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--许褚魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 164,Sum = 690},[2] = {Id = 112,Val = 91,Sum = 384},[3] = {Id = 113,Val = 1909,Sum = 8043}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--许褚魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 877},[2] = {Id = 112,Val = 104,Sum = 488},[3] = {Id = 113,Val = 2181,Sum = 10224}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--许褚魂珠-2 等级-9
				}
			},--许褚专属武器魂珠-2
			[3] = {
				Id = 200203,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--许褚魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 33,Sum = 33},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 385,Sum = 385}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--许褚魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 83},[2] = {Id = 112,Val = 28,Sum = 46},[3] = {Id = 113,Val = 579,Sum = 964}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--许褚魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 67,Sum = 150},[2] = {Id = 112,Val = 37,Sum = 83},[3] = {Id = 113,Val = 771,Sum = 1735}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--许褚魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 249},[2] = {Id = 112,Val = 55,Sum = 138},[3] = {Id = 113,Val = 1156,Sum = 2891}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--许褚魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 381},[2] = {Id = 112,Val = 74,Sum = 212},[3] = {Id = 113,Val = 1542,Sum = 4433}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--许褚魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 166,Sum = 547},[2] = {Id = 112,Val = 92,Sum = 304},[3] = {Id = 113,Val = 1927,Sum = 6360}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--许褚魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 199,Sum = 746},[2] = {Id = 112,Val = 110,Sum = 414},[3] = {Id = 113,Val = 2313,Sum = 8673}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--许褚魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 232,Sum = 978},[2] = {Id = 112,Val = 129,Sum = 543},[3] = {Id = 113,Val = 2698,Sum = 11371}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--许褚魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 266,Sum = 1244},[2] = {Id = 112,Val = 147,Sum = 690},[3] = {Id = 113,Val = 3084,Sum = 14455}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--许褚魂珠-3 等级-9
				}
			},--许褚专属武器魂珠-3
			[4] = {
				Id = 200204,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--许褚魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 34,Sum = 34},[2] = {Id = 112,Val = 19,Sum = 19},[3] = {Id = 113,Val = 396,Sum = 396}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--许褚魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 51,Sum = 85},[2] = {Id = 112,Val = 28,Sum = 47},[3] = {Id = 113,Val = 593,Sum = 989}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--许褚魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 153},[2] = {Id = 112,Val = 38,Sum = 85},[3] = {Id = 113,Val = 791,Sum = 1780}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--许褚魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 255},[2] = {Id = 112,Val = 57,Sum = 142},[3] = {Id = 113,Val = 1187,Sum = 2967}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--许褚魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 136,Sum = 391},[2] = {Id = 112,Val = 76,Sum = 218},[3] = {Id = 113,Val = 1582,Sum = 4549}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--许褚魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 561},[2] = {Id = 112,Val = 94,Sum = 312},[3] = {Id = 113,Val = 1978,Sum = 6527}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--许褚魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 765},[2] = {Id = 112,Val = 113,Sum = 425},[3] = {Id = 113,Val = 2373,Sum = 8900}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--许褚魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 238,Sum = 1003},[2] = {Id = 112,Val = 132,Sum = 557},[3] = {Id = 113,Val = 2769,Sum = 11669}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--许褚魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 1275},[2] = {Id = 112,Val = 151,Sum = 708},[3] = {Id = 113,Val = 3164,Sum = 14833}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--许褚魂珠-4 等级-9
				}
			},--许褚专属武器魂珠-4
			[5] = {
				Id = 200205,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--许褚魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 42,Sum = 42},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 488,Sum = 488}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--许褚魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 105},[2] = {Id = 112,Val = 35,Sum = 58},[3] = {Id = 113,Val = 733,Sum = 1221}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--许褚魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 189},[2] = {Id = 112,Val = 47,Sum = 105},[3] = {Id = 113,Val = 977,Sum = 2198}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--许褚魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 315},[2] = {Id = 112,Val = 70,Sum = 175},[3] = {Id = 113,Val = 1465,Sum = 3663}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--许褚魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 483},[2] = {Id = 112,Val = 93,Sum = 268},[3] = {Id = 113,Val = 1954,Sum = 5617}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--许褚魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 210,Sum = 693},[2] = {Id = 112,Val = 117,Sum = 385},[3] = {Id = 113,Val = 2442,Sum = 8059}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--许褚魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 945},[2] = {Id = 112,Val = 140,Sum = 525},[3] = {Id = 113,Val = 2930,Sum = 10989}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--许褚魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 293,Sum = 1238},[2] = {Id = 112,Val = 163,Sum = 688},[3] = {Id = 113,Val = 3419,Sum = 14408}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--许褚魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1574},[2] = {Id = 112,Val = 187,Sum = 875},[3] = {Id = 113,Val = 3906,Sum = 18314}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--许褚魂珠-5 等级-9
				}
			},--许褚专属武器魂珠-5
			[6] = {
				Id = 200206,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--许褚魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 51,Sum = 51},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 595,Sum = 595}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--许褚魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 128},[2] = {Id = 112,Val = 43,Sum = 71},[3] = {Id = 113,Val = 892,Sum = 1487}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--许褚魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 103,Sum = 231},[2] = {Id = 112,Val = 57,Sum = 128},[3] = {Id = 113,Val = 1190,Sum = 2677}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--许褚魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 153,Sum = 384},[2] = {Id = 112,Val = 85,Sum = 213},[3] = {Id = 113,Val = 1785,Sum = 4462}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--许褚魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 588},[2] = {Id = 112,Val = 114,Sum = 327},[3] = {Id = 113,Val = 2380,Sum = 6842}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--许褚魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 256,Sum = 844},[2] = {Id = 112,Val = 142,Sum = 469},[3] = {Id = 113,Val = 2976,Sum = 9818}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--许褚魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 307,Sum = 1151},[2] = {Id = 112,Val = 170,Sum = 639},[3] = {Id = 113,Val = 3570,Sum = 13388}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--许褚魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 358,Sum = 1509},[2] = {Id = 112,Val = 199,Sum = 838},[3] = {Id = 113,Val = 4165,Sum = 17553}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--许褚魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 410,Sum = 1919},[2] = {Id = 112,Val = 227,Sum = 1065},[3] = {Id = 113,Val = 4760,Sum = 22313}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--许褚魂珠-6 等级-9
				}
			},--许褚专属武器魂珠-6
			[7] = {
				Id = 200207,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--许褚魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 57},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 658,Sum = 658}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--许褚魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 85,Sum = 142},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 988,Sum = 1646}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--许褚魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 255},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1317,Sum = 2963}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--许褚魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 425},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1975,Sum = 4938}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--许褚魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 226,Sum = 651},[2] = {Id = 112,Val = 126,Sum = 361},[3] = {Id = 113,Val = 2632,Sum = 7570}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--许褚魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 283,Sum = 934},[2] = {Id = 112,Val = 157,Sum = 518},[3] = {Id = 113,Val = 3291,Sum = 10861}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--许褚魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 339,Sum = 1273},[2] = {Id = 112,Val = 189,Sum = 707},[3] = {Id = 113,Val = 3949,Sum = 14810}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--许褚魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 396,Sum = 1669},[2] = {Id = 112,Val = 220,Sum = 927},[3] = {Id = 113,Val = 4608,Sum = 19418}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--许褚魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 453,Sum = 2122},[2] = {Id = 112,Val = 251,Sum = 1178},[3] = {Id = 113,Val = 5266,Sum = 24684}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--许褚魂珠-7 等级-9
				}
			},--许褚专属武器魂珠-7
			[8] = {
				Id = 200208,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--许褚魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 59},[2] = {Id = 112,Val = 33,Sum = 33},[3] = {Id = 113,Val = 690,Sum = 690}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--许褚魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 148},[2] = {Id = 112,Val = 49,Sum = 82},[3] = {Id = 113,Val = 1034,Sum = 1724}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--许褚魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 267},[2] = {Id = 112,Val = 66,Sum = 148},[3] = {Id = 113,Val = 1378,Sum = 3102}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--许褚魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 178,Sum = 445},[2] = {Id = 112,Val = 99,Sum = 247},[3] = {Id = 113,Val = 2068,Sum = 5170}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--许褚魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 237,Sum = 682},[2] = {Id = 112,Val = 132,Sum = 379},[3] = {Id = 113,Val = 2758,Sum = 7928}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--许褚魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 296,Sum = 978},[2] = {Id = 112,Val = 165,Sum = 544},[3] = {Id = 113,Val = 3446,Sum = 11374}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--许褚魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 356,Sum = 1334},[2] = {Id = 112,Val = 198,Sum = 742},[3] = {Id = 113,Val = 4136,Sum = 15510}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--许褚魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 415,Sum = 1749},[2] = {Id = 112,Val = 230,Sum = 972},[3] = {Id = 113,Val = 4826,Sum = 20336}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--许褚魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 474,Sum = 2223},[2] = {Id = 112,Val = 263,Sum = 1235},[3] = {Id = 113,Val = 5515,Sum = 25851}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--许褚魂珠-8 等级-9
				}
			}--许褚专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--许褚专属武器解封-0
			[1] = {Pskill = {[1] = 130300211},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 18500},[2] = {Id = 1502002,Val = 40}}},--许褚专属武器解封-1
			[2] = {Pskill = {[1] = 130300211},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 37500},[2] = {Id = 1502002,Val = 40}}},--许褚专属武器解封-2
			[3] = {Pskill = {[1] = 130300211},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 84000},[2] = {Id = 1502002,Val = 60}}},--许褚专属武器解封-3
			[4] = {Pskill = {[1] = 130300211},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 148000},[2] = {Id = 1502002,Val = 60}}},--许褚专属武器解封-4
			[5] = {Pskill = {[1] = 130300211},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 366000},[2] = {Id = 1502002,Val = 80}}}--许褚专属武器解封-5
		}
	},--许褚专属武器
	[1102003] = {
		CardId = 1102003,
		Name = _T("狂鲨铁戟"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501003",
		HunZhu = {
			[1] = {
				Id = 200301,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--典韦魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 19,Sum = 19},[2] = {Id = 112,Val = 9,Sum = 9},[3] = {Id = 113,Val = 173,Sum = 173}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--典韦魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 49},[2] = {Id = 112,Val = 13,Sum = 22},[3] = {Id = 113,Val = 259,Sum = 432}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--典韦魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 89},[2] = {Id = 112,Val = 18,Sum = 40},[3] = {Id = 113,Val = 344,Sum = 776}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--典韦魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 148},[2] = {Id = 112,Val = 28,Sum = 68},[3] = {Id = 113,Val = 517,Sum = 1293}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--典韦魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 227},[2] = {Id = 112,Val = 36,Sum = 104},[3] = {Id = 113,Val = 690,Sum = 1983}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--典韦魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 98,Sum = 325},[2] = {Id = 112,Val = 45,Sum = 149},[3] = {Id = 113,Val = 862,Sum = 2845}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--典韦魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 444},[2] = {Id = 112,Val = 54,Sum = 203},[3] = {Id = 113,Val = 1034,Sum = 3879}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--典韦魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 138,Sum = 582},[2] = {Id = 112,Val = 64,Sum = 267},[3] = {Id = 113,Val = 1207,Sum = 5086}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--典韦魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 740},[2] = {Id = 112,Val = 73,Sum = 340},[3] = {Id = 113,Val = 1379,Sum = 6465}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--典韦魂珠-1 等级-9
				}
			},--典韦专属武器魂珠-1
			[2] = {
				Id = 200302,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--典韦魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 31,Sum = 31},[2] = {Id = 112,Val = 14,Sum = 14},[3] = {Id = 113,Val = 273,Sum = 273}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--典韦魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 78},[2] = {Id = 112,Val = 22,Sum = 36},[3] = {Id = 113,Val = 409,Sum = 682}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--典韦魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 62,Sum = 140},[2] = {Id = 112,Val = 29,Sum = 65},[3] = {Id = 113,Val = 546,Sum = 1228}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--典韦魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 234},[2] = {Id = 112,Val = 43,Sum = 108},[3] = {Id = 113,Val = 817,Sum = 2045}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--典韦魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 359},[2] = {Id = 112,Val = 57,Sum = 165},[3] = {Id = 113,Val = 1090,Sum = 3135}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--典韦魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 515},[2] = {Id = 112,Val = 72,Sum = 237},[3] = {Id = 113,Val = 1363,Sum = 4498}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--典韦魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 702},[2] = {Id = 112,Val = 86,Sum = 323},[3] = {Id = 113,Val = 1636,Sum = 6134}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--典韦魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 920},[2] = {Id = 112,Val = 100,Sum = 423},[3] = {Id = 113,Val = 1909,Sum = 8043}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--典韦魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 1170},[2] = {Id = 112,Val = 114,Sum = 537},[3] = {Id = 113,Val = 2181,Sum = 10224}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--典韦魂珠-2 等级-9
				}
			},--典韦专属武器魂珠-2
			[3] = {
				Id = 200303,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--典韦魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 385,Sum = 385}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--典韦魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 31,Sum = 51},[3] = {Id = 113,Val = 579,Sum = 964}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--典韦魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 199},[2] = {Id = 112,Val = 41,Sum = 92},[3] = {Id = 113,Val = 771,Sum = 1735}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--典韦魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 331},[2] = {Id = 112,Val = 61,Sum = 153},[3] = {Id = 113,Val = 1156,Sum = 2891}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--典韦魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 507},[2] = {Id = 112,Val = 81,Sum = 234},[3] = {Id = 113,Val = 1542,Sum = 4433}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--典韦魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 728},[2] = {Id = 112,Val = 101,Sum = 335},[3] = {Id = 113,Val = 1927,Sum = 6360}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--典韦魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 265,Sum = 993},[2] = {Id = 112,Val = 121,Sum = 456},[3] = {Id = 113,Val = 2313,Sum = 8673}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--典韦魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 310,Sum = 1303},[2] = {Id = 112,Val = 142,Sum = 598},[3] = {Id = 113,Val = 2698,Sum = 11371}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--典韦魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 354,Sum = 1657},[2] = {Id = 112,Val = 162,Sum = 760},[3] = {Id = 113,Val = 3084,Sum = 14455}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--典韦魂珠-3 等级-9
				}
			},--典韦专属武器魂珠-3
			[4] = {
				Id = 200304,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--典韦魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 46,Sum = 46},[2] = {Id = 112,Val = 21,Sum = 21},[3] = {Id = 113,Val = 396,Sum = 396}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--典韦魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 114},[2] = {Id = 112,Val = 31,Sum = 52},[3] = {Id = 113,Val = 593,Sum = 989}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--典韦魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 91,Sum = 205},[2] = {Id = 112,Val = 42,Sum = 94},[3] = {Id = 113,Val = 791,Sum = 1780}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--典韦魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 136,Sum = 341},[2] = {Id = 112,Val = 63,Sum = 157},[3] = {Id = 113,Val = 1187,Sum = 2967}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--典韦魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 181,Sum = 522},[2] = {Id = 112,Val = 84,Sum = 241},[3] = {Id = 113,Val = 1582,Sum = 4549}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--典韦魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 749},[2] = {Id = 112,Val = 103,Sum = 344},[3] = {Id = 113,Val = 1978,Sum = 6527}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--典韦魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 1021},[2] = {Id = 112,Val = 124,Sum = 468},[3] = {Id = 113,Val = 2373,Sum = 8900}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--典韦魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 317,Sum = 1338},[2] = {Id = 112,Val = 145,Sum = 613},[3] = {Id = 113,Val = 2769,Sum = 11669}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--典韦魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1700},[2] = {Id = 112,Val = 166,Sum = 779},[3] = {Id = 113,Val = 3164,Sum = 14833}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--典韦魂珠-4 等级-9
				}
			},--典韦专属武器魂珠-4
			[5] = {
				Id = 200305,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--典韦魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 56,Sum = 56},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 488,Sum = 488}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--典韦魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 140},[2] = {Id = 112,Val = 39,Sum = 64},[3] = {Id = 113,Val = 733,Sum = 1221}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--典韦魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 112,Sum = 252},[2] = {Id = 112,Val = 52,Sum = 116},[3] = {Id = 113,Val = 977,Sum = 2198}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--典韦魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 420},[2] = {Id = 112,Val = 77,Sum = 193},[3] = {Id = 113,Val = 1465,Sum = 3663}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--典韦魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 224,Sum = 644},[2] = {Id = 112,Val = 102,Sum = 295},[3] = {Id = 113,Val = 1954,Sum = 5617}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--典韦魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 924},[2] = {Id = 112,Val = 129,Sum = 424},[3] = {Id = 113,Val = 2442,Sum = 8059}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--典韦魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1260},[2] = {Id = 112,Val = 154,Sum = 578},[3] = {Id = 113,Val = 2930,Sum = 10989}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--典韦魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 391,Sum = 1651},[2] = {Id = 112,Val = 179,Sum = 757},[3] = {Id = 113,Val = 3419,Sum = 14408}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--典韦魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 448,Sum = 2099},[2] = {Id = 112,Val = 206,Sum = 963},[3] = {Id = 113,Val = 3906,Sum = 18314}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--典韦魂珠-5 等级-9
				}
			},--典韦专属武器魂珠-5
			[6] = {
				Id = 200306,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--典韦魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 68},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 595,Sum = 595}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--典韦魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 170},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 892,Sum = 1487}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--典韦魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 137,Sum = 307},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1190,Sum = 2677}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--典韦魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 511},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1785,Sum = 4462}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--典韦魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 783},[2] = {Id = 112,Val = 125,Sum = 360},[3] = {Id = 113,Val = 2380,Sum = 6842}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--典韦魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1124},[2] = {Id = 112,Val = 156,Sum = 516},[3] = {Id = 113,Val = 2976,Sum = 9818}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--典韦魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 409,Sum = 1533},[2] = {Id = 112,Val = 187,Sum = 703},[3] = {Id = 113,Val = 3570,Sum = 13388}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--典韦魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 478,Sum = 2011},[2] = {Id = 112,Val = 219,Sum = 922},[3] = {Id = 113,Val = 4165,Sum = 17553}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--典韦魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 546,Sum = 2557},[2] = {Id = 112,Val = 250,Sum = 1172},[3] = {Id = 113,Val = 4760,Sum = 22313}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--典韦魂珠-6 等级-9
				}
			},--典韦专属武器魂珠-6
			[7] = {
				Id = 200307,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--典韦魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 76},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 658,Sum = 658}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--典韦魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 189},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 988,Sum = 1646}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--典韦魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 340},[2] = {Id = 112,Val = 69,Sum = 155},[3] = {Id = 113,Val = 1317,Sum = 2963}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--典韦魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 567},[2] = {Id = 112,Val = 103,Sum = 258},[3] = {Id = 113,Val = 1975,Sum = 4938}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--典韦魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 301,Sum = 868},[2] = {Id = 112,Val = 139,Sum = 397},[3] = {Id = 113,Val = 2632,Sum = 7570}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--典韦魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1245},[2] = {Id = 112,Val = 173,Sum = 570},[3] = {Id = 113,Val = 3291,Sum = 10861}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--典韦魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 452,Sum = 1697},[2] = {Id = 112,Val = 208,Sum = 778},[3] = {Id = 113,Val = 3949,Sum = 14810}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--典韦魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 2225},[2] = {Id = 112,Val = 242,Sum = 1020},[3] = {Id = 113,Val = 4608,Sum = 19418}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--典韦魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 604,Sum = 2829},[2] = {Id = 112,Val = 276,Sum = 1296},[3] = {Id = 113,Val = 5266,Sum = 24684}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--典韦魂珠-7 等级-9
				}
			},--典韦专属武器魂珠-7
			[8] = {
				Id = 200308,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--典韦魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 79},[2] = {Id = 112,Val = 36,Sum = 36},[3] = {Id = 113,Val = 690,Sum = 690}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--典韦魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 198},[2] = {Id = 112,Val = 54,Sum = 90},[3] = {Id = 113,Val = 1034,Sum = 1724}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--典韦魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 356},[2] = {Id = 112,Val = 73,Sum = 163},[3] = {Id = 113,Val = 1378,Sum = 3102}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--典韦魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 238,Sum = 594},[2] = {Id = 112,Val = 109,Sum = 272},[3] = {Id = 113,Val = 2068,Sum = 5170}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--典韦魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 316,Sum = 910},[2] = {Id = 112,Val = 145,Sum = 417},[3] = {Id = 113,Val = 2758,Sum = 7928}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--典韦魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1305},[2] = {Id = 112,Val = 182,Sum = 599},[3] = {Id = 113,Val = 3446,Sum = 11374}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--典韦魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 474,Sum = 1779},[2] = {Id = 112,Val = 218,Sum = 817},[3] = {Id = 113,Val = 4136,Sum = 15510}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--典韦魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2332},[2] = {Id = 112,Val = 253,Sum = 1070},[3] = {Id = 113,Val = 4826,Sum = 20336}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--典韦魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 632,Sum = 2964},[2] = {Id = 112,Val = 289,Sum = 1359},[3] = {Id = 113,Val = 5515,Sum = 25851}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--典韦魂珠-8 等级-9
				}
			}--典韦专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--典韦专属武器解封-0
			[1] = {Pskill = {[1] = 130300311},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 25500},[2] = {Id = 1502003,Val = 80}}},--典韦专属武器解封-1
			[2] = {Pskill = {[1] = 130300311},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 52500},[2] = {Id = 1502003,Val = 80}}},--典韦专属武器解封-2
			[3] = {Pskill = {[1] = 130300311},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 118000},[2] = {Id = 1502003,Val = 120}}},--典韦专属武器解封-3
			[4] = {Pskill = {[1] = 130300311},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 207000},[2] = {Id = 1502003,Val = 120}}},--典韦专属武器解封-4
			[5] = {Pskill = {[1] = 130300311},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 512500},[2] = {Id = 1502003,Val = 160}}}--典韦专属武器解封-5
		}
	},--典韦专属武器
	[1102005] = {
		CardId = 1102005,
		Name = _T("清风化煞"),
		Quality = 3,
		Icon = "ui_dtex_Equip_1501005",
		HunZhu = {
			[1] = {
				Id = 200501,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--李轩辕魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 14,Sum = 14},[2] = {Id = 112,Val = 8,Sum = 8},[3] = {Id = 113,Val = 173,Sum = 173}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--李轩辕魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 23,Sum = 37},[2] = {Id = 112,Val = 12,Sum = 20},[3] = {Id = 113,Val = 259,Sum = 432}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--李轩辕魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 67},[2] = {Id = 112,Val = 16,Sum = 36},[3] = {Id = 113,Val = 344,Sum = 776}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--李轩辕魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 111},[2] = {Id = 112,Val = 25,Sum = 61},[3] = {Id = 113,Val = 517,Sum = 1293}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--李轩辕魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 170},[2] = {Id = 112,Val = 33,Sum = 94},[3] = {Id = 113,Val = 690,Sum = 1983}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--李轩辕魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 244},[2] = {Id = 112,Val = 41,Sum = 135},[3] = {Id = 113,Val = 862,Sum = 2845}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--李轩辕魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 333},[2] = {Id = 112,Val = 49,Sum = 184},[3] = {Id = 113,Val = 1034,Sum = 3879}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--李轩辕魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 104,Sum = 437},[2] = {Id = 112,Val = 58,Sum = 242},[3] = {Id = 113,Val = 1207,Sum = 5086}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--李轩辕魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 556},[2] = {Id = 112,Val = 66,Sum = 308},[3] = {Id = 113,Val = 1379,Sum = 6465}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--李轩辕魂珠-1 等级-9
				}
			},--李轩辕专属武器魂珠-1
			[2] = {
				Id = 200502,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--李轩辕魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 23,Sum = 23},[2] = {Id = 112,Val = 13,Sum = 13},[3] = {Id = 113,Val = 273,Sum = 273}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--李轩辕魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 35,Sum = 58},[2] = {Id = 112,Val = 20,Sum = 33},[3] = {Id = 113,Val = 409,Sum = 682}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--李轩辕魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 105},[2] = {Id = 112,Val = 26,Sum = 59},[3] = {Id = 113,Val = 546,Sum = 1228}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--李轩辕魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 70,Sum = 175},[2] = {Id = 112,Val = 39,Sum = 98},[3] = {Id = 113,Val = 817,Sum = 2045}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--李轩辕魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 269},[2] = {Id = 112,Val = 52,Sum = 150},[3] = {Id = 113,Val = 1090,Sum = 3135}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--李轩辕魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 117,Sum = 386},[2] = {Id = 112,Val = 65,Sum = 215},[3] = {Id = 113,Val = 1363,Sum = 4498}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--李轩辕魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 526},[2] = {Id = 112,Val = 78,Sum = 293},[3] = {Id = 113,Val = 1636,Sum = 6134}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--李轩辕魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 164,Sum = 690},[2] = {Id = 112,Val = 91,Sum = 384},[3] = {Id = 113,Val = 1909,Sum = 8043}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--李轩辕魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 877},[2] = {Id = 112,Val = 104,Sum = 488},[3] = {Id = 113,Val = 2181,Sum = 10224}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--李轩辕魂珠-2 等级-9
				}
			},--李轩辕专属武器魂珠-2
			[3] = {
				Id = 200503,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--李轩辕魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 33,Sum = 33},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 385,Sum = 385}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--李轩辕魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 83},[2] = {Id = 112,Val = 28,Sum = 46},[3] = {Id = 113,Val = 579,Sum = 964}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--李轩辕魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 67,Sum = 150},[2] = {Id = 112,Val = 37,Sum = 83},[3] = {Id = 113,Val = 771,Sum = 1735}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--李轩辕魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 249},[2] = {Id = 112,Val = 55,Sum = 138},[3] = {Id = 113,Val = 1156,Sum = 2891}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--李轩辕魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 381},[2] = {Id = 112,Val = 74,Sum = 212},[3] = {Id = 113,Val = 1542,Sum = 4433}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--李轩辕魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 166,Sum = 547},[2] = {Id = 112,Val = 92,Sum = 304},[3] = {Id = 113,Val = 1927,Sum = 6360}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--李轩辕魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 199,Sum = 746},[2] = {Id = 112,Val = 110,Sum = 414},[3] = {Id = 113,Val = 2313,Sum = 8673}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--李轩辕魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 232,Sum = 978},[2] = {Id = 112,Val = 129,Sum = 543},[3] = {Id = 113,Val = 2698,Sum = 11371}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--李轩辕魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 266,Sum = 1244},[2] = {Id = 112,Val = 147,Sum = 690},[3] = {Id = 113,Val = 3084,Sum = 14455}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--李轩辕魂珠-3 等级-9
				}
			},--李轩辕专属武器魂珠-3
			[4] = {
				Id = 200504,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--李轩辕魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 34,Sum = 34},[2] = {Id = 112,Val = 19,Sum = 19},[3] = {Id = 113,Val = 396,Sum = 396}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--李轩辕魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 51,Sum = 85},[2] = {Id = 112,Val = 28,Sum = 47},[3] = {Id = 113,Val = 593,Sum = 989}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--李轩辕魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 153},[2] = {Id = 112,Val = 38,Sum = 85},[3] = {Id = 113,Val = 791,Sum = 1780}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--李轩辕魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 255},[2] = {Id = 112,Val = 57,Sum = 142},[3] = {Id = 113,Val = 1187,Sum = 2967}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--李轩辕魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 136,Sum = 391},[2] = {Id = 112,Val = 76,Sum = 218},[3] = {Id = 113,Val = 1582,Sum = 4549}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--李轩辕魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 561},[2] = {Id = 112,Val = 94,Sum = 312},[3] = {Id = 113,Val = 1978,Sum = 6527}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--李轩辕魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 765},[2] = {Id = 112,Val = 113,Sum = 425},[3] = {Id = 113,Val = 2373,Sum = 8900}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--李轩辕魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 238,Sum = 1003},[2] = {Id = 112,Val = 132,Sum = 557},[3] = {Id = 113,Val = 2769,Sum = 11669}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--李轩辕魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 1275},[2] = {Id = 112,Val = 151,Sum = 708},[3] = {Id = 113,Val = 3164,Sum = 14833}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--李轩辕魂珠-4 等级-9
				}
			},--李轩辕专属武器魂珠-4
			[5] = {
				Id = 200505,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--李轩辕魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 42,Sum = 42},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 488,Sum = 488}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--李轩辕魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 105},[2] = {Id = 112,Val = 35,Sum = 58},[3] = {Id = 113,Val = 733,Sum = 1221}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--李轩辕魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 189},[2] = {Id = 112,Val = 47,Sum = 105},[3] = {Id = 113,Val = 977,Sum = 2198}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--李轩辕魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 315},[2] = {Id = 112,Val = 70,Sum = 175},[3] = {Id = 113,Val = 1465,Sum = 3663}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--李轩辕魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 483},[2] = {Id = 112,Val = 93,Sum = 268},[3] = {Id = 113,Val = 1954,Sum = 5617}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--李轩辕魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 210,Sum = 693},[2] = {Id = 112,Val = 117,Sum = 385},[3] = {Id = 113,Val = 2442,Sum = 8059}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--李轩辕魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 945},[2] = {Id = 112,Val = 140,Sum = 525},[3] = {Id = 113,Val = 2930,Sum = 10989}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--李轩辕魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 293,Sum = 1238},[2] = {Id = 112,Val = 163,Sum = 688},[3] = {Id = 113,Val = 3419,Sum = 14408}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--李轩辕魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1574},[2] = {Id = 112,Val = 187,Sum = 875},[3] = {Id = 113,Val = 3906,Sum = 18314}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--李轩辕魂珠-5 等级-9
				}
			},--李轩辕专属武器魂珠-5
			[6] = {
				Id = 200506,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--李轩辕魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 51,Sum = 51},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 595,Sum = 595}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--李轩辕魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 128},[2] = {Id = 112,Val = 43,Sum = 71},[3] = {Id = 113,Val = 892,Sum = 1487}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--李轩辕魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 103,Sum = 231},[2] = {Id = 112,Val = 57,Sum = 128},[3] = {Id = 113,Val = 1190,Sum = 2677}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--李轩辕魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 153,Sum = 384},[2] = {Id = 112,Val = 85,Sum = 213},[3] = {Id = 113,Val = 1785,Sum = 4462}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--李轩辕魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 588},[2] = {Id = 112,Val = 114,Sum = 327},[3] = {Id = 113,Val = 2380,Sum = 6842}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--李轩辕魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 256,Sum = 844},[2] = {Id = 112,Val = 142,Sum = 469},[3] = {Id = 113,Val = 2976,Sum = 9818}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--李轩辕魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 307,Sum = 1151},[2] = {Id = 112,Val = 170,Sum = 639},[3] = {Id = 113,Val = 3570,Sum = 13388}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--李轩辕魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 358,Sum = 1509},[2] = {Id = 112,Val = 199,Sum = 838},[3] = {Id = 113,Val = 4165,Sum = 17553}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--李轩辕魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 410,Sum = 1919},[2] = {Id = 112,Val = 227,Sum = 1065},[3] = {Id = 113,Val = 4760,Sum = 22313}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--李轩辕魂珠-6 等级-9
				}
			},--李轩辕专属武器魂珠-6
			[7] = {
				Id = 200507,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--李轩辕魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 57},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 658,Sum = 658}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--李轩辕魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 85,Sum = 142},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 988,Sum = 1646}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--李轩辕魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 255},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1317,Sum = 2963}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--李轩辕魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 425},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1975,Sum = 4938}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--李轩辕魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 226,Sum = 651},[2] = {Id = 112,Val = 126,Sum = 361},[3] = {Id = 113,Val = 2632,Sum = 7570}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--李轩辕魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 283,Sum = 934},[2] = {Id = 112,Val = 157,Sum = 518},[3] = {Id = 113,Val = 3291,Sum = 10861}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--李轩辕魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 339,Sum = 1273},[2] = {Id = 112,Val = 189,Sum = 707},[3] = {Id = 113,Val = 3949,Sum = 14810}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--李轩辕魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 396,Sum = 1669},[2] = {Id = 112,Val = 220,Sum = 927},[3] = {Id = 113,Val = 4608,Sum = 19418}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--李轩辕魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 453,Sum = 2122},[2] = {Id = 112,Val = 251,Sum = 1178},[3] = {Id = 113,Val = 5266,Sum = 24684}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--李轩辕魂珠-7 等级-9
				}
			},--李轩辕专属武器魂珠-7
			[8] = {
				Id = 200508,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--李轩辕魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 59},[2] = {Id = 112,Val = 33,Sum = 33},[3] = {Id = 113,Val = 690,Sum = 690}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--李轩辕魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 148},[2] = {Id = 112,Val = 49,Sum = 82},[3] = {Id = 113,Val = 1034,Sum = 1724}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--李轩辕魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 267},[2] = {Id = 112,Val = 66,Sum = 148},[3] = {Id = 113,Val = 1378,Sum = 3102}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--李轩辕魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 178,Sum = 445},[2] = {Id = 112,Val = 99,Sum = 247},[3] = {Id = 113,Val = 2068,Sum = 5170}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--李轩辕魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 237,Sum = 682},[2] = {Id = 112,Val = 132,Sum = 379},[3] = {Id = 113,Val = 2758,Sum = 7928}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--李轩辕魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 296,Sum = 978},[2] = {Id = 112,Val = 165,Sum = 544},[3] = {Id = 113,Val = 3446,Sum = 11374}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--李轩辕魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 356,Sum = 1334},[2] = {Id = 112,Val = 198,Sum = 742},[3] = {Id = 113,Val = 4136,Sum = 15510}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--李轩辕魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 415,Sum = 1749},[2] = {Id = 112,Val = 230,Sum = 972},[3] = {Id = 113,Val = 4826,Sum = 20336}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--李轩辕魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 474,Sum = 2223},[2] = {Id = 112,Val = 263,Sum = 1235},[3] = {Id = 113,Val = 5515,Sum = 25851}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--李轩辕魂珠-8 等级-9
				}
			}--李轩辕专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--李轩辕专属武器解封-0
			[1] = {Pskill = {[1] = 130300511},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 22000},[2] = {Id = 1502005,Val = 40}}},--李轩辕专属武器解封-1
			[2] = {Pskill = {[1] = 130300511},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 45000},[2] = {Id = 1502005,Val = 40}}},--李轩辕专属武器解封-2
			[3] = {Pskill = {[1] = 130300511},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 101000},[2] = {Id = 1502005,Val = 60}}},--李轩辕专属武器解封-3
			[4] = {Pskill = {[1] = 130300511},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 177500},[2] = {Id = 1502005,Val = 60}}},--李轩辕专属武器解封-4
			[5] = {Pskill = {[1] = 130300511},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 439500},[2] = {Id = 1502005,Val = 80}}}--李轩辕专属武器解封-5
		}
	},--李轩辕专属武器
	[1102006] = {
		CardId = 1102006,
		Name = _T("破军"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501006",
		HunZhu = {
			[1] = {
				Id = 200601,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--项羽魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 22,Sum = 22},[2] = {Id = 112,Val = 12,Sum = 12},[3] = {Id = 113,Val = 212,Sum = 212}},Cost = {[1] = {Id = 1401002,Val = 160},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--项羽魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 34,Sum = 56},[2] = {Id = 112,Val = 18,Sum = 30},[3] = {Id = 113,Val = 317,Sum = 529}},Cost = {[1] = {Id = 1401002,Val = 245},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--项羽魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 45,Sum = 101},[2] = {Id = 112,Val = 24,Sum = 54},[3] = {Id = 113,Val = 423,Sum = 952}},Cost = {[1] = {Id = 1401002,Val = 405},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--项羽魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 167},[2] = {Id = 112,Val = 38,Sum = 92},[3] = {Id = 113,Val = 635,Sum = 1587}},Cost = {[1] = {Id = 1401002,Val = 520},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--项羽魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 256},[2] = {Id = 112,Val = 50,Sum = 142},[3] = {Id = 113,Val = 846,Sum = 2433}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--项羽魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 111,Sum = 367},[2] = {Id = 112,Val = 62,Sum = 204},[3] = {Id = 113,Val = 1058,Sum = 3491}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--项羽魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 134,Sum = 501},[2] = {Id = 112,Val = 74,Sum = 278},[3] = {Id = 113,Val = 1269,Sum = 4760}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--项羽魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 155,Sum = 656},[2] = {Id = 112,Val = 87,Sum = 365},[3] = {Id = 113,Val = 1481,Sum = 6241}},Cost = {[1] = {Id = 1401002,Val = 1055},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--项羽魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 178,Sum = 834},[2] = {Id = 112,Val = 99,Sum = 464},[3] = {Id = 113,Val = 1693,Sum = 7934}},Cost = {[1] = {Id = 1401002,Val = 1315},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--项羽魂珠-1 等级-9
				}
			},--项羽专属武器魂珠-1
			[2] = {
				Id = 200602,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--项羽魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 35,Sum = 35},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 335,Sum = 335}},Cost = {[1] = {Id = 1401002,Val = 445},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--项羽魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 53,Sum = 88},[2] = {Id = 112,Val = 30,Sum = 50},[3] = {Id = 113,Val = 502,Sum = 837}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--项羽魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 70,Sum = 158},[2] = {Id = 112,Val = 39,Sum = 89},[3] = {Id = 113,Val = 670,Sum = 1507}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--项羽魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 105,Sum = 263},[2] = {Id = 112,Val = 59,Sum = 148},[3] = {Id = 113,Val = 1003,Sum = 2510}},Cost = {[1] = {Id = 1401002,Val = 710},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--项羽魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 403},[2] = {Id = 112,Val = 78,Sum = 226},[3] = {Id = 113,Val = 1338,Sum = 3848}},Cost = {[1] = {Id = 1401002,Val = 1080},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--项羽魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 579},[2] = {Id = 112,Val = 98,Sum = 324},[3] = {Id = 113,Val = 1673,Sum = 5521}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--项羽魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 211,Sum = 790},[2] = {Id = 112,Val = 117,Sum = 441},[3] = {Id = 113,Val = 2007,Sum = 7528}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--项羽魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 246,Sum = 1036},[2] = {Id = 112,Val = 137,Sum = 578},[3] = {Id = 113,Val = 2342,Sum = 9870}},Cost = {[1] = {Id = 1401002,Val = 2150},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--项羽魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 281,Sum = 1317},[2] = {Id = 112,Val = 156,Sum = 734},[3] = {Id = 113,Val = 2677,Sum = 12547}},Cost = {[1] = {Id = 1401002,Val = 2870},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--项羽魂珠-2 等级-9
				}
			},--项羽专属武器魂珠-2
			[3] = {
				Id = 200603,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--项羽魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 50},[2] = {Id = 112,Val = 27,Sum = 27},[3] = {Id = 113,Val = 473,Sum = 473}},Cost = {[1] = {Id = 1401002,Val = 910},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--项羽魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 124},[2] = {Id = 112,Val = 42,Sum = 69},[3] = {Id = 113,Val = 710,Sum = 1183}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--项羽魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 224},[2] = {Id = 112,Val = 56,Sum = 125},[3] = {Id = 113,Val = 946,Sum = 2129}},Cost = {[1] = {Id = 1401002,Val = 1140},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--项羽魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 149,Sum = 373},[2] = {Id = 112,Val = 83,Sum = 208},[3] = {Id = 113,Val = 1419,Sum = 3548}},Cost = {[1] = {Id = 1401002,Val = 1095},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--项羽魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 571},[2] = {Id = 112,Val = 111,Sum = 319},[3] = {Id = 113,Val = 1893,Sum = 5441}},Cost = {[1] = {Id = 1401002,Val = 1485},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--项羽魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 248,Sum = 819},[2] = {Id = 112,Val = 138,Sum = 457},[3] = {Id = 113,Val = 2365,Sum = 7806}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--项羽魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 298,Sum = 1117},[2] = {Id = 112,Val = 165,Sum = 622},[3] = {Id = 113,Val = 2839,Sum = 10645}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--项羽魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 348,Sum = 1465},[2] = {Id = 112,Val = 194,Sum = 816},[3] = {Id = 113,Val = 3312,Sum = 13957}},Cost = {[1] = {Id = 1401002,Val = 2955},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--项羽魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 398,Sum = 1863},[2] = {Id = 112,Val = 221,Sum = 1037},[3] = {Id = 113,Val = 3785,Sum = 17742}},Cost = {[1] = {Id = 1401002,Val = 3695},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--项羽魂珠-3 等级-9
				}
			},--项羽专属武器魂珠-3
			[4] = {
				Id = 200604,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--项羽魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 51,Sum = 51},[2] = {Id = 112,Val = 29,Sum = 29},[3] = {Id = 113,Val = 486,Sum = 486}},Cost = {[1] = {Id = 1401002,Val = 1480},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--项羽魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 128},[2] = {Id = 112,Val = 42,Sum = 71},[3] = {Id = 113,Val = 728,Sum = 1214}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--项羽魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 103,Sum = 231},[2] = {Id = 112,Val = 57,Sum = 128},[3] = {Id = 113,Val = 971,Sum = 2185}},Cost = {[1] = {Id = 1401002,Val = 1235},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--项羽魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 153,Sum = 384},[2] = {Id = 112,Val = 86,Sum = 214},[3] = {Id = 113,Val = 1457,Sum = 3642}},Cost = {[1] = {Id = 1401002,Val = 2370},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--项羽魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 588},[2] = {Id = 112,Val = 114,Sum = 328},[3] = {Id = 113,Val = 1941,Sum = 5583}},Cost = {[1] = {Id = 1401002,Val = 2405},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--项羽魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 255,Sum = 843},[2] = {Id = 112,Val = 141,Sum = 469},[3] = {Id = 113,Val = 2427,Sum = 8010}},Cost = {[1] = {Id = 1401002,Val = 2390},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--项羽魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 306,Sum = 1149},[2] = {Id = 112,Val = 170,Sum = 639},[3] = {Id = 113,Val = 2912,Sum = 10922}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--项羽魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 356,Sum = 1505},[2] = {Id = 112,Val = 198,Sum = 837},[3] = {Id = 113,Val = 3398,Sum = 14320}},Cost = {[1] = {Id = 1401002,Val = 4790},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--项羽魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 408,Sum = 1913},[2] = {Id = 112,Val = 227,Sum = 1064},[3] = {Id = 113,Val = 3883,Sum = 18203}},Cost = {[1] = {Id = 1401002,Val = 7190},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--项羽魂珠-4 等级-9
				}
			},--项羽专属武器魂珠-4
			[5] = {
				Id = 200605,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--项羽魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 35,Sum = 35},[3] = {Id = 113,Val = 599,Sum = 599}},Cost = {[1] = {Id = 1401002,Val = 3085},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--项羽魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 95,Sum = 158},[2] = {Id = 112,Val = 53,Sum = 88},[3] = {Id = 113,Val = 899,Sum = 1498}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--项羽魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 284},[2] = {Id = 112,Val = 71,Sum = 159},[3] = {Id = 113,Val = 1199,Sum = 2697}},Cost = {[1] = {Id = 1401002,Val = 2570},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--项羽魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 473},[2] = {Id = 112,Val = 105,Sum = 264},[3] = {Id = 113,Val = 1798,Sum = 4495}},Cost = {[1] = {Id = 1401002,Val = 3705},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--项羽魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 725},[2] = {Id = 112,Val = 140,Sum = 404},[3] = {Id = 113,Val = 2398,Sum = 6893}},Cost = {[1] = {Id = 1401002,Val = 3760},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--项羽魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 315,Sum = 1040},[2] = {Id = 112,Val = 176,Sum = 580},[3] = {Id = 113,Val = 2997,Sum = 9890}},Cost = {[1] = {Id = 1401002,Val = 6230},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--项羽魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1418},[2] = {Id = 112,Val = 210,Sum = 790},[3] = {Id = 113,Val = 3596,Sum = 13486}},Cost = {[1] = {Id = 1401002,Val = 6245},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--项羽魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1858},[2] = {Id = 112,Val = 245,Sum = 1035},[3] = {Id = 113,Val = 4196,Sum = 17682}},Cost = {[1] = {Id = 1401002,Val = 8740},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--项羽魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 2362},[2] = {Id = 112,Val = 281,Sum = 1316},[3] = {Id = 113,Val = 4794,Sum = 22476}},Cost = {[1] = {Id = 1401002,Val = 11240},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--项羽魂珠-5 等级-9
				}
			},--项羽专属武器魂珠-5
			[6] = {
				Id = 200606,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--项羽魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 77},[2] = {Id = 112,Val = 42,Sum = 42},[3] = {Id = 113,Val = 730,Sum = 730}},Cost = {[1] = {Id = 1401002,Val = 2905},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--项羽魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 115,Sum = 192},[2] = {Id = 112,Val = 65,Sum = 107},[3] = {Id = 113,Val = 1095,Sum = 1825}},Cost = {[1] = {Id = 1401002,Val = 4360},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--项羽魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 346},[2] = {Id = 112,Val = 86,Sum = 193},[3] = {Id = 113,Val = 1461,Sum = 3286}},Cost = {[1] = {Id = 1401002,Val = 4840},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--项羽魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 230,Sum = 576},[2] = {Id = 112,Val = 128,Sum = 321},[3] = {Id = 113,Val = 2191,Sum = 5477}},Cost = {[1] = {Id = 1401002,Val = 6970},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--项羽魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 306,Sum = 882},[2] = {Id = 112,Val = 171,Sum = 492},[3] = {Id = 113,Val = 2921,Sum = 8398}},Cost = {[1] = {Id = 1401002,Val = 7080},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--项羽魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 383,Sum = 1265},[2] = {Id = 112,Val = 213,Sum = 705},[3] = {Id = 113,Val = 3652,Sum = 12050}},Cost = {[1] = {Id = 1401002,Val = 9385},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--项羽魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 460,Sum = 1725},[2] = {Id = 112,Val = 255,Sum = 960},[3] = {Id = 113,Val = 4381,Sum = 16431}},Cost = {[1] = {Id = 1401002,Val = 11760},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--项羽魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 537,Sum = 2262},[2] = {Id = 112,Val = 299,Sum = 1259},[3] = {Id = 113,Val = 5111,Sum = 21542}},Cost = {[1] = {Id = 1401002,Val = 16445},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--项羽魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 614,Sum = 2876},[2] = {Id = 112,Val = 341,Sum = 1600},[3] = {Id = 113,Val = 5841,Sum = 27383}},Cost = {[1] = {Id = 1401002,Val = 18800},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--项羽魂珠-6 等级-9
				}
			},--项羽专属武器魂珠-6
			[7] = {
				Id = 200607,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--项羽魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 85,Sum = 85},[2] = {Id = 112,Val = 47,Sum = 47},[3] = {Id = 113,Val = 807,Sum = 807}},Cost = {[1] = {Id = 1401002,Val = 5710},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--项羽魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 127,Sum = 212},[2] = {Id = 112,Val = 71,Sum = 118},[3] = {Id = 113,Val = 1212,Sum = 2019}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--项羽魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 382},[2] = {Id = 112,Val = 95,Sum = 213},[3] = {Id = 113,Val = 1616,Sum = 3635}},Cost = {[1] = {Id = 1401002,Val = 7135},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--项羽魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 255,Sum = 637},[2] = {Id = 112,Val = 141,Sum = 354},[3] = {Id = 113,Val = 2423,Sum = 6058}},Cost = {[1] = {Id = 1401002,Val = 9130},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--项羽魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 339,Sum = 976},[2] = {Id = 112,Val = 189,Sum = 543},[3] = {Id = 113,Val = 3231,Sum = 9289}},Cost = {[1] = {Id = 1401002,Val = 9275},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--项羽魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 424,Sum = 1400},[2] = {Id = 112,Val = 236,Sum = 779},[3] = {Id = 113,Val = 4039,Sum = 13328}},Cost = {[1] = {Id = 1401002,Val = 11525},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--项羽魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 509,Sum = 1909},[2] = {Id = 112,Val = 284,Sum = 1063},[3] = {Id = 113,Val = 4847,Sum = 18175}},Cost = {[1] = {Id = 1401002,Val = 16170},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--项羽魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 594,Sum = 2503},[2] = {Id = 112,Val = 330,Sum = 1393},[3] = {Id = 113,Val = 5655,Sum = 23830}},Cost = {[1] = {Id = 1401002,Val = 18465},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--项羽魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 679,Sum = 3182},[2] = {Id = 112,Val = 377,Sum = 1770},[3] = {Id = 113,Val = 6462,Sum = 30292}},Cost = {[1] = {Id = 1401002,Val = 23090},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--项羽魂珠-7 等级-9
				}
			},--项羽专属武器魂珠-7
			[8] = {
				Id = 200608,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--项羽魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 89},[2] = {Id = 112,Val = 50,Sum = 50},[3] = {Id = 113,Val = 846,Sum = 846}},Cost = {[1] = {Id = 1401002,Val = 4865},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--项羽魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 134,Sum = 223},[2] = {Id = 112,Val = 74,Sum = 124},[3] = {Id = 113,Val = 1269,Sum = 2115}},Cost = {[1] = {Id = 1401002,Val = 5835},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--项羽魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 178,Sum = 401},[2] = {Id = 112,Val = 99,Sum = 223},[3] = {Id = 113,Val = 1692,Sum = 3807}},Cost = {[1] = {Id = 1401002,Val = 8105},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--项羽魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 267,Sum = 668},[2] = {Id = 112,Val = 149,Sum = 372},[3] = {Id = 113,Val = 2538,Sum = 6345}},Cost = {[1] = {Id = 1401002,Val = 9340},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--项羽魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 355,Sum = 1023},[2] = {Id = 112,Val = 198,Sum = 570},[3] = {Id = 113,Val = 3384,Sum = 9729}},Cost = {[1] = {Id = 1401002,Val = 11855},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--项羽魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 444,Sum = 1467},[2] = {Id = 112,Val = 248,Sum = 818},[3] = {Id = 113,Val = 4230,Sum = 13959}},Cost = {[1] = {Id = 1401002,Val = 14145},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--项羽魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 533,Sum = 2000},[2] = {Id = 112,Val = 297,Sum = 1115},[3] = {Id = 113,Val = 5076,Sum = 19035}},Cost = {[1] = {Id = 1401002,Val = 19690},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--项羽魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 622,Sum = 2622},[2] = {Id = 112,Val = 345,Sum = 1460},[3] = {Id = 113,Val = 5922,Sum = 24957}},Cost = {[1] = {Id = 1401002,Val = 23605},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--项羽魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 711,Sum = 3333},[2] = {Id = 112,Val = 395,Sum = 1855},[3] = {Id = 113,Val = 6769,Sum = 31726}},Cost = {[1] = {Id = 1401002,Val = 23615},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--项羽魂珠-8 等级-9
				}
			}--项羽专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--项羽专属武器解封-0
			[1] = {Pskill = {[1] = 130300611},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 36500},[2] = {Id = 1502006,Val = 80}}},--项羽专属武器解封-1
			[2] = {Pskill = {[1] = 130300611},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 75500},[2] = {Id = 1502006,Val = 80}}},--项羽专属武器解封-2
			[3] = {Pskill = {[1] = 130300611},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 168500},[2] = {Id = 1502006,Val = 120}}},--项羽专属武器解封-3
			[4] = {Pskill = {[1] = 130300611},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 295500},[2] = {Id = 1502006,Val = 120}}},--项羽专属武器解封-4
			[5] = {Pskill = {[1] = 130300611},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 732500},[2] = {Id = 1502006,Val = 160}}}--项羽专属武器解封-5
		}
	},--项羽专属武器
	[1102007] = {
		CardId = 1102007,
		Name = _T("阿尔法拉"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501007",
		HunZhu = {
			[1] = {
				Id = 200701,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--天使缇娜魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 19,Sum = 19},[2] = {Id = 112,Val = 9,Sum = 9},[3] = {Id = 113,Val = 173,Sum = 173}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--天使缇娜魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 49},[2] = {Id = 112,Val = 13,Sum = 22},[3] = {Id = 113,Val = 259,Sum = 432}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--天使缇娜魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 89},[2] = {Id = 112,Val = 18,Sum = 40},[3] = {Id = 113,Val = 344,Sum = 776}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--天使缇娜魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 148},[2] = {Id = 112,Val = 28,Sum = 68},[3] = {Id = 113,Val = 517,Sum = 1293}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--天使缇娜魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 227},[2] = {Id = 112,Val = 36,Sum = 104},[3] = {Id = 113,Val = 690,Sum = 1983}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--天使缇娜魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 98,Sum = 325},[2] = {Id = 112,Val = 45,Sum = 149},[3] = {Id = 113,Val = 862,Sum = 2845}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--天使缇娜魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 444},[2] = {Id = 112,Val = 54,Sum = 203},[3] = {Id = 113,Val = 1034,Sum = 3879}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--天使缇娜魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 138,Sum = 582},[2] = {Id = 112,Val = 64,Sum = 267},[3] = {Id = 113,Val = 1207,Sum = 5086}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--天使缇娜魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 740},[2] = {Id = 112,Val = 73,Sum = 340},[3] = {Id = 113,Val = 1379,Sum = 6465}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--天使缇娜魂珠-1 等级-9
				}
			},--天使缇娜专属武器魂珠-1
			[2] = {
				Id = 200702,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--天使缇娜魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 31,Sum = 31},[2] = {Id = 112,Val = 14,Sum = 14},[3] = {Id = 113,Val = 273,Sum = 273}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--天使缇娜魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 78},[2] = {Id = 112,Val = 22,Sum = 36},[3] = {Id = 113,Val = 409,Sum = 682}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--天使缇娜魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 62,Sum = 140},[2] = {Id = 112,Val = 29,Sum = 65},[3] = {Id = 113,Val = 546,Sum = 1228}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--天使缇娜魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 234},[2] = {Id = 112,Val = 43,Sum = 108},[3] = {Id = 113,Val = 817,Sum = 2045}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--天使缇娜魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 359},[2] = {Id = 112,Val = 57,Sum = 165},[3] = {Id = 113,Val = 1090,Sum = 3135}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--天使缇娜魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 515},[2] = {Id = 112,Val = 72,Sum = 237},[3] = {Id = 113,Val = 1363,Sum = 4498}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--天使缇娜魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 702},[2] = {Id = 112,Val = 86,Sum = 323},[3] = {Id = 113,Val = 1636,Sum = 6134}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--天使缇娜魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 920},[2] = {Id = 112,Val = 100,Sum = 423},[3] = {Id = 113,Val = 1909,Sum = 8043}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--天使缇娜魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 1170},[2] = {Id = 112,Val = 114,Sum = 537},[3] = {Id = 113,Val = 2181,Sum = 10224}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--天使缇娜魂珠-2 等级-9
				}
			},--天使缇娜专属武器魂珠-2
			[3] = {
				Id = 200703,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--天使缇娜魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 385,Sum = 385}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--天使缇娜魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 31,Sum = 51},[3] = {Id = 113,Val = 579,Sum = 964}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--天使缇娜魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 199},[2] = {Id = 112,Val = 41,Sum = 92},[3] = {Id = 113,Val = 771,Sum = 1735}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--天使缇娜魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 331},[2] = {Id = 112,Val = 61,Sum = 153},[3] = {Id = 113,Val = 1156,Sum = 2891}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--天使缇娜魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 507},[2] = {Id = 112,Val = 81,Sum = 234},[3] = {Id = 113,Val = 1542,Sum = 4433}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--天使缇娜魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 728},[2] = {Id = 112,Val = 101,Sum = 335},[3] = {Id = 113,Val = 1927,Sum = 6360}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--天使缇娜魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 265,Sum = 993},[2] = {Id = 112,Val = 121,Sum = 456},[3] = {Id = 113,Val = 2313,Sum = 8673}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--天使缇娜魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 310,Sum = 1303},[2] = {Id = 112,Val = 142,Sum = 598},[3] = {Id = 113,Val = 2698,Sum = 11371}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--天使缇娜魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 354,Sum = 1657},[2] = {Id = 112,Val = 162,Sum = 760},[3] = {Id = 113,Val = 3084,Sum = 14455}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--天使缇娜魂珠-3 等级-9
				}
			},--天使缇娜专属武器魂珠-3
			[4] = {
				Id = 200704,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--天使缇娜魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 46,Sum = 46},[2] = {Id = 112,Val = 21,Sum = 21},[3] = {Id = 113,Val = 396,Sum = 396}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--天使缇娜魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 114},[2] = {Id = 112,Val = 31,Sum = 52},[3] = {Id = 113,Val = 593,Sum = 989}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--天使缇娜魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 91,Sum = 205},[2] = {Id = 112,Val = 42,Sum = 94},[3] = {Id = 113,Val = 791,Sum = 1780}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--天使缇娜魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 136,Sum = 341},[2] = {Id = 112,Val = 63,Sum = 157},[3] = {Id = 113,Val = 1187,Sum = 2967}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--天使缇娜魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 181,Sum = 522},[2] = {Id = 112,Val = 84,Sum = 241},[3] = {Id = 113,Val = 1582,Sum = 4549}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--天使缇娜魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 749},[2] = {Id = 112,Val = 103,Sum = 344},[3] = {Id = 113,Val = 1978,Sum = 6527}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--天使缇娜魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 1021},[2] = {Id = 112,Val = 124,Sum = 468},[3] = {Id = 113,Val = 2373,Sum = 8900}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--天使缇娜魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 317,Sum = 1338},[2] = {Id = 112,Val = 145,Sum = 613},[3] = {Id = 113,Val = 2769,Sum = 11669}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--天使缇娜魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1700},[2] = {Id = 112,Val = 166,Sum = 779},[3] = {Id = 113,Val = 3164,Sum = 14833}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--天使缇娜魂珠-4 等级-9
				}
			},--天使缇娜专属武器魂珠-4
			[5] = {
				Id = 200705,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--天使缇娜魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 56,Sum = 56},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 488,Sum = 488}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--天使缇娜魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 140},[2] = {Id = 112,Val = 39,Sum = 64},[3] = {Id = 113,Val = 733,Sum = 1221}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--天使缇娜魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 112,Sum = 252},[2] = {Id = 112,Val = 52,Sum = 116},[3] = {Id = 113,Val = 977,Sum = 2198}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--天使缇娜魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 420},[2] = {Id = 112,Val = 77,Sum = 193},[3] = {Id = 113,Val = 1465,Sum = 3663}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--天使缇娜魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 224,Sum = 644},[2] = {Id = 112,Val = 102,Sum = 295},[3] = {Id = 113,Val = 1954,Sum = 5617}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--天使缇娜魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 924},[2] = {Id = 112,Val = 129,Sum = 424},[3] = {Id = 113,Val = 2442,Sum = 8059}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--天使缇娜魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1260},[2] = {Id = 112,Val = 154,Sum = 578},[3] = {Id = 113,Val = 2930,Sum = 10989}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--天使缇娜魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 391,Sum = 1651},[2] = {Id = 112,Val = 179,Sum = 757},[3] = {Id = 113,Val = 3419,Sum = 14408}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--天使缇娜魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 448,Sum = 2099},[2] = {Id = 112,Val = 206,Sum = 963},[3] = {Id = 113,Val = 3906,Sum = 18314}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--天使缇娜魂珠-5 等级-9
				}
			},--天使缇娜专属武器魂珠-5
			[6] = {
				Id = 200706,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--天使缇娜魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 68},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 595,Sum = 595}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--天使缇娜魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 170},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 892,Sum = 1487}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--天使缇娜魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 137,Sum = 307},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1190,Sum = 2677}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--天使缇娜魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 511},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1785,Sum = 4462}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--天使缇娜魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 783},[2] = {Id = 112,Val = 125,Sum = 360},[3] = {Id = 113,Val = 2380,Sum = 6842}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--天使缇娜魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1124},[2] = {Id = 112,Val = 156,Sum = 516},[3] = {Id = 113,Val = 2976,Sum = 9818}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--天使缇娜魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 409,Sum = 1533},[2] = {Id = 112,Val = 187,Sum = 703},[3] = {Id = 113,Val = 3570,Sum = 13388}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--天使缇娜魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 478,Sum = 2011},[2] = {Id = 112,Val = 219,Sum = 922},[3] = {Id = 113,Val = 4165,Sum = 17553}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--天使缇娜魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 546,Sum = 2557},[2] = {Id = 112,Val = 250,Sum = 1172},[3] = {Id = 113,Val = 4760,Sum = 22313}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--天使缇娜魂珠-6 等级-9
				}
			},--天使缇娜专属武器魂珠-6
			[7] = {
				Id = 200707,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--天使缇娜魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 76},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 658,Sum = 658}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--天使缇娜魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 189},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 988,Sum = 1646}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--天使缇娜魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 340},[2] = {Id = 112,Val = 69,Sum = 155},[3] = {Id = 113,Val = 1317,Sum = 2963}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--天使缇娜魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 567},[2] = {Id = 112,Val = 103,Sum = 258},[3] = {Id = 113,Val = 1975,Sum = 4938}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--天使缇娜魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 301,Sum = 868},[2] = {Id = 112,Val = 139,Sum = 397},[3] = {Id = 113,Val = 2632,Sum = 7570}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--天使缇娜魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1245},[2] = {Id = 112,Val = 173,Sum = 570},[3] = {Id = 113,Val = 3291,Sum = 10861}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--天使缇娜魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 452,Sum = 1697},[2] = {Id = 112,Val = 208,Sum = 778},[3] = {Id = 113,Val = 3949,Sum = 14810}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--天使缇娜魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 2225},[2] = {Id = 112,Val = 242,Sum = 1020},[3] = {Id = 113,Val = 4608,Sum = 19418}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--天使缇娜魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 604,Sum = 2829},[2] = {Id = 112,Val = 276,Sum = 1296},[3] = {Id = 113,Val = 5266,Sum = 24684}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--天使缇娜魂珠-7 等级-9
				}
			},--天使缇娜专属武器魂珠-7
			[8] = {
				Id = 200708,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--天使缇娜魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 79},[2] = {Id = 112,Val = 36,Sum = 36},[3] = {Id = 113,Val = 690,Sum = 690}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--天使缇娜魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 198},[2] = {Id = 112,Val = 54,Sum = 90},[3] = {Id = 113,Val = 1034,Sum = 1724}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--天使缇娜魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 356},[2] = {Id = 112,Val = 73,Sum = 163},[3] = {Id = 113,Val = 1378,Sum = 3102}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--天使缇娜魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 238,Sum = 594},[2] = {Id = 112,Val = 109,Sum = 272},[3] = {Id = 113,Val = 2068,Sum = 5170}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--天使缇娜魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 316,Sum = 910},[2] = {Id = 112,Val = 145,Sum = 417},[3] = {Id = 113,Val = 2758,Sum = 7928}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--天使缇娜魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1305},[2] = {Id = 112,Val = 182,Sum = 599},[3] = {Id = 113,Val = 3446,Sum = 11374}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--天使缇娜魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 474,Sum = 1779},[2] = {Id = 112,Val = 218,Sum = 817},[3] = {Id = 113,Val = 4136,Sum = 15510}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--天使缇娜魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2332},[2] = {Id = 112,Val = 253,Sum = 1070},[3] = {Id = 113,Val = 4826,Sum = 20336}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--天使缇娜魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 632,Sum = 2964},[2] = {Id = 112,Val = 289,Sum = 1359},[3] = {Id = 113,Val = 5515,Sum = 25851}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--天使缇娜魂珠-8 等级-9
				}
			}--天使缇娜专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--天使缇娜专属武器解封-0
			[1] = {Pskill = {[1] = 130300711},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 25500},[2] = {Id = 1502007,Val = 80}}},--天使缇娜专属武器解封-1
			[2] = {Pskill = {[1] = 130300711},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 52500},[2] = {Id = 1502007,Val = 80}}},--天使缇娜专属武器解封-2
			[3] = {Pskill = {[1] = 130300711},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 118000},[2] = {Id = 1502007,Val = 120}}},--天使缇娜专属武器解封-3
			[4] = {Pskill = {[1] = 130300711},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 207000},[2] = {Id = 1502007,Val = 120}}},--天使缇娜专属武器解封-4
			[5] = {Pskill = {[1] = 130300711},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 512500},[2] = {Id = 1502007,Val = 160}}}--天使缇娜专属武器解封-5
		}
	},--天使缇娜专属武器
	[1102008] = {
		CardId = 1102008,
		Name = _T("娑伽罗之刃"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501008",
		HunZhu = {
			[1] = {
				Id = 200801,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯渊魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 19,Sum = 19},[2] = {Id = 112,Val = 8,Sum = 8},[3] = {Id = 113,Val = 236,Sum = 236}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯渊魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 49},[2] = {Id = 112,Val = 12,Sum = 20},[3] = {Id = 113,Val = 353,Sum = 589}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯渊魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 89},[2] = {Id = 112,Val = 16,Sum = 36},[3] = {Id = 113,Val = 470,Sum = 1059}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯渊魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 148},[2] = {Id = 112,Val = 25,Sum = 61},[3] = {Id = 113,Val = 705,Sum = 1764}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯渊魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 227},[2] = {Id = 112,Val = 33,Sum = 94},[3] = {Id = 113,Val = 941,Sum = 2705}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--夏侯渊魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 98,Sum = 325},[2] = {Id = 112,Val = 41,Sum = 135},[3] = {Id = 113,Val = 1176,Sum = 3881}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--夏侯渊魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 444},[2] = {Id = 112,Val = 49,Sum = 184},[3] = {Id = 113,Val = 1410,Sum = 5291}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--夏侯渊魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 138,Sum = 582},[2] = {Id = 112,Val = 58,Sum = 242},[3] = {Id = 113,Val = 1646,Sum = 6937}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--夏侯渊魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 740},[2] = {Id = 112,Val = 66,Sum = 308},[3] = {Id = 113,Val = 1881,Sum = 8818}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--夏侯渊魂珠-1 等级-9
				}
			},--夏侯渊专属武器魂珠-1
			[2] = {
				Id = 200802,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯渊魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 31,Sum = 31},[2] = {Id = 112,Val = 13,Sum = 13},[3] = {Id = 113,Val = 372,Sum = 372}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--夏侯渊魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 78},[2] = {Id = 112,Val = 20,Sum = 33},[3] = {Id = 113,Val = 558,Sum = 930}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯渊魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 62,Sum = 140},[2] = {Id = 112,Val = 26,Sum = 59},[3] = {Id = 113,Val = 744,Sum = 1674}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯渊魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 234},[2] = {Id = 112,Val = 39,Sum = 98},[3] = {Id = 113,Val = 1115,Sum = 2789}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯渊魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 359},[2] = {Id = 112,Val = 52,Sum = 150},[3] = {Id = 113,Val = 1487,Sum = 4276}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--夏侯渊魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 515},[2] = {Id = 112,Val = 65,Sum = 215},[3] = {Id = 113,Val = 1859,Sum = 6135}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯渊魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 702},[2] = {Id = 112,Val = 78,Sum = 293},[3] = {Id = 113,Val = 2231,Sum = 8366}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯渊魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 920},[2] = {Id = 112,Val = 91,Sum = 384},[3] = {Id = 113,Val = 2603,Sum = 10969}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--夏侯渊魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 1170},[2] = {Id = 112,Val = 104,Sum = 488},[3] = {Id = 113,Val = 2975,Sum = 13944}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--夏侯渊魂珠-2 等级-9
				}
			},--夏侯渊专属武器魂珠-2
			[3] = {
				Id = 200803,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯渊魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 525,Sum = 525}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--夏侯渊魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 28,Sum = 46},[3] = {Id = 113,Val = 789,Sum = 1314}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯渊魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 199},[2] = {Id = 112,Val = 37,Sum = 83},[3] = {Id = 113,Val = 1052,Sum = 2366}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯渊魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 331},[2] = {Id = 112,Val = 55,Sum = 138},[3] = {Id = 113,Val = 1577,Sum = 3943}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯渊魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 507},[2] = {Id = 112,Val = 74,Sum = 212},[3] = {Id = 113,Val = 2103,Sum = 6046}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--夏侯渊魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 728},[2] = {Id = 112,Val = 92,Sum = 304},[3] = {Id = 113,Val = 2628,Sum = 8674}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--夏侯渊魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 265,Sum = 993},[2] = {Id = 112,Val = 110,Sum = 414},[3] = {Id = 113,Val = 3155,Sum = 11829}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--夏侯渊魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 310,Sum = 1303},[2] = {Id = 112,Val = 129,Sum = 543},[3] = {Id = 113,Val = 3680,Sum = 15509}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--夏侯渊魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 354,Sum = 1657},[2] = {Id = 112,Val = 147,Sum = 690},[3] = {Id = 113,Val = 4206,Sum = 19715}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--夏侯渊魂珠-3 等级-9
				}
			},--夏侯渊专属武器魂珠-3
			[4] = {
				Id = 200804,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯渊魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 46,Sum = 46},[2] = {Id = 112,Val = 19,Sum = 19},[3] = {Id = 113,Val = 540,Sum = 540}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯渊魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 114},[2] = {Id = 112,Val = 28,Sum = 47},[3] = {Id = 113,Val = 809,Sum = 1349}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--夏侯渊魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 91,Sum = 205},[2] = {Id = 112,Val = 38,Sum = 85},[3] = {Id = 113,Val = 1079,Sum = 2428}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--夏侯渊魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 136,Sum = 341},[2] = {Id = 112,Val = 57,Sum = 142},[3] = {Id = 113,Val = 1619,Sum = 4047}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--夏侯渊魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 181,Sum = 522},[2] = {Id = 112,Val = 76,Sum = 218},[3] = {Id = 113,Val = 2157,Sum = 6204}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--夏侯渊魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 749},[2] = {Id = 112,Val = 94,Sum = 312},[3] = {Id = 113,Val = 2697,Sum = 8901}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--夏侯渊魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 1021},[2] = {Id = 112,Val = 113,Sum = 425},[3] = {Id = 113,Val = 3236,Sum = 12137}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--夏侯渊魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 317,Sum = 1338},[2] = {Id = 112,Val = 132,Sum = 557},[3] = {Id = 113,Val = 3776,Sum = 15913}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--夏侯渊魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1700},[2] = {Id = 112,Val = 151,Sum = 708},[3] = {Id = 113,Val = 4314,Sum = 20227}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--夏侯渊魂珠-4 等级-9
				}
			},--夏侯渊专属武器魂珠-4
			[5] = {
				Id = 200805,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯渊魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 56,Sum = 56},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 666,Sum = 666}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯渊魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 140},[2] = {Id = 112,Val = 35,Sum = 58},[3] = {Id = 113,Val = 999,Sum = 1665}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--夏侯渊魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 112,Sum = 252},[2] = {Id = 112,Val = 47,Sum = 105},[3] = {Id = 113,Val = 1332,Sum = 2997}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--夏侯渊魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 420},[2] = {Id = 112,Val = 70,Sum = 175},[3] = {Id = 113,Val = 1998,Sum = 4995}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--夏侯渊魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 224,Sum = 644},[2] = {Id = 112,Val = 93,Sum = 268},[3] = {Id = 113,Val = 2664,Sum = 7659}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--夏侯渊魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 924},[2] = {Id = 112,Val = 117,Sum = 385},[3] = {Id = 113,Val = 3330,Sum = 10989}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--夏侯渊魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1260},[2] = {Id = 112,Val = 140,Sum = 525},[3] = {Id = 113,Val = 3996,Sum = 14985}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--夏侯渊魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 391,Sum = 1651},[2] = {Id = 112,Val = 163,Sum = 688},[3] = {Id = 113,Val = 4662,Sum = 19647}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--夏侯渊魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 448,Sum = 2099},[2] = {Id = 112,Val = 187,Sum = 875},[3] = {Id = 113,Val = 5327,Sum = 24974}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--夏侯渊魂珠-5 等级-9
				}
			},--夏侯渊专属武器魂珠-5
			[6] = {
				Id = 200806,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯渊魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 68},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 812,Sum = 812}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯渊魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 170},[2] = {Id = 112,Val = 43,Sum = 71},[3] = {Id = 113,Val = 1217,Sum = 2029}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯渊魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 137,Sum = 307},[2] = {Id = 112,Val = 57,Sum = 128},[3] = {Id = 113,Val = 1623,Sum = 3652}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--夏侯渊魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 511},[2] = {Id = 112,Val = 85,Sum = 213},[3] = {Id = 113,Val = 2435,Sum = 6087}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯渊魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 783},[2] = {Id = 112,Val = 114,Sum = 327},[3] = {Id = 113,Val = 3246,Sum = 9333}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--夏侯渊魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1124},[2] = {Id = 112,Val = 142,Sum = 469},[3] = {Id = 113,Val = 4058,Sum = 13391}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--夏侯渊魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 409,Sum = 1533},[2] = {Id = 112,Val = 170,Sum = 639},[3] = {Id = 113,Val = 4868,Sum = 18259}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--夏侯渊魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 478,Sum = 2011},[2] = {Id = 112,Val = 199,Sum = 838},[3] = {Id = 113,Val = 5679,Sum = 23938}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--夏侯渊魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 546,Sum = 2557},[2] = {Id = 112,Val = 227,Sum = 1065},[3] = {Id = 113,Val = 6491,Sum = 30429}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--夏侯渊魂珠-6 等级-9
				}
			},--夏侯渊专属武器魂珠-6
			[7] = {
				Id = 200807,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯渊魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 76},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 897,Sum = 897}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--夏侯渊魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 189},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 1347,Sum = 2244}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯渊魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 340},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1796,Sum = 4040}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯渊魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 567},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 2693,Sum = 6733}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯渊魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 301,Sum = 868},[2] = {Id = 112,Val = 126,Sum = 361},[3] = {Id = 113,Val = 3590,Sum = 10323}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--夏侯渊魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1245},[2] = {Id = 112,Val = 157,Sum = 518},[3] = {Id = 113,Val = 4488,Sum = 14811}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--夏侯渊魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 452,Sum = 1697},[2] = {Id = 112,Val = 189,Sum = 707},[3] = {Id = 113,Val = 5385,Sum = 20196}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--夏侯渊魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 2225},[2] = {Id = 112,Val = 220,Sum = 927},[3] = {Id = 113,Val = 6284,Sum = 26480}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--夏侯渊魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 604,Sum = 2829},[2] = {Id = 112,Val = 251,Sum = 1178},[3] = {Id = 113,Val = 7181,Sum = 33661}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--夏侯渊魂珠-7 等级-9
				}
			},--夏侯渊专属武器魂珠-7
			[8] = {
				Id = 200808,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯渊魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 79},[2] = {Id = 112,Val = 33,Sum = 33},[3] = {Id = 113,Val = 941,Sum = 941}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--夏侯渊魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 198},[2] = {Id = 112,Val = 49,Sum = 82},[3] = {Id = 113,Val = 1410,Sum = 2351}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--夏侯渊魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 356},[2] = {Id = 112,Val = 66,Sum = 148},[3] = {Id = 113,Val = 1880,Sum = 4231}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--夏侯渊魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 238,Sum = 594},[2] = {Id = 112,Val = 99,Sum = 247},[3] = {Id = 113,Val = 2820,Sum = 7051}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--夏侯渊魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 316,Sum = 910},[2] = {Id = 112,Val = 132,Sum = 379},[3] = {Id = 113,Val = 3761,Sum = 10812}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--夏侯渊魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1305},[2] = {Id = 112,Val = 165,Sum = 544},[3] = {Id = 113,Val = 4700,Sum = 15512}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--夏侯渊魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 474,Sum = 1779},[2] = {Id = 112,Val = 198,Sum = 742},[3] = {Id = 113,Val = 5640,Sum = 21152}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--夏侯渊魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2332},[2] = {Id = 112,Val = 230,Sum = 972},[3] = {Id = 113,Val = 6581,Sum = 27733}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--夏侯渊魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 632,Sum = 2964},[2] = {Id = 112,Val = 263,Sum = 1235},[3] = {Id = 113,Val = 7521,Sum = 35254}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--夏侯渊魂珠-8 等级-9
				}
			}--夏侯渊专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--夏侯渊专属武器解封-0
			[1] = {Pskill = {[1] = 130300811},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 29000},[2] = {Id = 1502008,Val = 80}}},--夏侯渊专属武器解封-1
			[2] = {Pskill = {[1] = 130300811},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 60500},[2] = {Id = 1502008,Val = 80}}},--夏侯渊专属武器解封-2
			[3] = {Pskill = {[1] = 130300811},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 135000},[2] = {Id = 1502008,Val = 120}}},--夏侯渊专属武器解封-3
			[4] = {Pskill = {[1] = 130300811},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 236500},[2] = {Id = 1502008,Val = 120}}},--夏侯渊专属武器解封-4
			[5] = {Pskill = {[1] = 130300811},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 586000},[2] = {Id = 1502008,Val = 160}}}--夏侯渊专属武器解封-5
		}
	},--夏侯渊专属武器
	[1102009] = {
		CardId = 1102009,
		Name = _T("白龙"),
		Quality = 3,
		Icon = "ui_dtex_Equip_1501009",
		HunZhu = {
			[1] = {
				Id = 200901,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--徐晃魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 18,Sum = 18},[2] = {Id = 112,Val = 10,Sum = 10},[3] = {Id = 113,Val = 157,Sum = 157}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--徐晃魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 28,Sum = 46},[2] = {Id = 112,Val = 14,Sum = 24},[3] = {Id = 113,Val = 235,Sum = 392}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--徐晃魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 36,Sum = 82},[2] = {Id = 112,Val = 19,Sum = 43},[3] = {Id = 113,Val = 313,Sum = 705}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--徐晃魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 54,Sum = 136},[2] = {Id = 112,Val = 30,Sum = 73},[3] = {Id = 113,Val = 470,Sum = 1175}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--徐晃魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 73,Sum = 209},[2] = {Id = 112,Val = 40,Sum = 113},[3] = {Id = 113,Val = 627,Sum = 1802}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--徐晃魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 299},[2] = {Id = 112,Val = 49,Sum = 162},[3] = {Id = 113,Val = 784,Sum = 2586}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--徐晃魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 109,Sum = 408},[2] = {Id = 112,Val = 59,Sum = 221},[3] = {Id = 113,Val = 940,Sum = 3526}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--徐晃魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 127,Sum = 535},[2] = {Id = 112,Val = 70,Sum = 291},[3] = {Id = 113,Val = 1097,Sum = 4623}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--徐晃魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 145,Sum = 680},[2] = {Id = 112,Val = 79,Sum = 370},[3] = {Id = 113,Val = 1254,Sum = 5877}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--徐晃魂珠-1 等级-9
				}
			},--徐晃专属武器魂珠-1
			[2] = {
				Id = 200902,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--徐晃魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 29,Sum = 29},[2] = {Id = 112,Val = 16,Sum = 16},[3] = {Id = 113,Val = 248,Sum = 248}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--徐晃魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 43,Sum = 72},[2] = {Id = 112,Val = 24,Sum = 40},[3] = {Id = 113,Val = 372,Sum = 620}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--徐晃魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 129},[2] = {Id = 112,Val = 31,Sum = 71},[3] = {Id = 113,Val = 496,Sum = 1116}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--徐晃魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 86,Sum = 215},[2] = {Id = 112,Val = 47,Sum = 118},[3] = {Id = 113,Val = 743,Sum = 1859}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--徐晃魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 114,Sum = 329},[2] = {Id = 112,Val = 62,Sum = 180},[3] = {Id = 113,Val = 991,Sum = 2850}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--徐晃魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 143,Sum = 472},[2] = {Id = 112,Val = 78,Sum = 258},[3] = {Id = 113,Val = 1239,Sum = 4089}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--徐晃魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 172,Sum = 644},[2] = {Id = 112,Val = 94,Sum = 352},[3] = {Id = 113,Val = 1487,Sum = 5576}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--徐晃魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 844},[2] = {Id = 112,Val = 109,Sum = 461},[3] = {Id = 113,Val = 1735,Sum = 7311}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--徐晃魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 229,Sum = 1073},[2] = {Id = 112,Val = 125,Sum = 586},[3] = {Id = 113,Val = 1983,Sum = 9294}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--徐晃魂珠-2 等级-9
				}
			},--徐晃专属武器魂珠-2
			[3] = {
				Id = 200903,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--徐晃魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 41,Sum = 41},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 350,Sum = 350}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--徐晃魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 61,Sum = 102},[2] = {Id = 112,Val = 34,Sum = 56},[3] = {Id = 113,Val = 526,Sum = 876}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--徐晃魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 81,Sum = 183},[2] = {Id = 112,Val = 44,Sum = 100},[3] = {Id = 113,Val = 701,Sum = 1577}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--徐晃魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 121,Sum = 304},[2] = {Id = 112,Val = 66,Sum = 166},[3] = {Id = 113,Val = 1051,Sum = 2628}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--徐晃魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 466},[2] = {Id = 112,Val = 89,Sum = 255},[3] = {Id = 113,Val = 1402,Sum = 4030}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--徐晃魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 202,Sum = 668},[2] = {Id = 112,Val = 110,Sum = 365},[3] = {Id = 113,Val = 1752,Sum = 5782}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--徐晃魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 243,Sum = 911},[2] = {Id = 112,Val = 132,Sum = 497},[3] = {Id = 113,Val = 2103,Sum = 7885}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--徐晃魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 1195},[2] = {Id = 112,Val = 155,Sum = 652},[3] = {Id = 113,Val = 2453,Sum = 10338}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--徐晃魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 325,Sum = 1520},[2] = {Id = 112,Val = 176,Sum = 828},[3] = {Id = 113,Val = 2804,Sum = 13142}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--徐晃魂珠-3 等级-9
				}
			},--徐晃专属武器魂珠-3
			[4] = {
				Id = 200904,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--徐晃魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 42,Sum = 42},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 360,Sum = 360}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--徐晃魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 105},[2] = {Id = 112,Val = 34,Sum = 57},[3] = {Id = 113,Val = 539,Sum = 899}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--徐晃魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 189},[2] = {Id = 112,Val = 46,Sum = 103},[3] = {Id = 113,Val = 719,Sum = 1618}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--徐晃魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 124,Sum = 313},[2] = {Id = 112,Val = 68,Sum = 171},[3] = {Id = 113,Val = 1079,Sum = 2697}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--徐晃魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 166,Sum = 479},[2] = {Id = 112,Val = 91,Sum = 262},[3] = {Id = 113,Val = 1438,Sum = 4135}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--徐晃魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 687},[2] = {Id = 112,Val = 113,Sum = 375},[3] = {Id = 113,Val = 1798,Sum = 5933}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--徐晃魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 937},[2] = {Id = 112,Val = 136,Sum = 511},[3] = {Id = 113,Val = 2157,Sum = 8090}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--徐晃魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 290,Sum = 1227},[2] = {Id = 112,Val = 158,Sum = 669},[3] = {Id = 113,Val = 2517,Sum = 10607}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--徐晃魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 332,Sum = 1559},[2] = {Id = 112,Val = 181,Sum = 850},[3] = {Id = 113,Val = 2876,Sum = 13483}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--徐晃魂珠-4 等级-9
				}
			},--徐晃专属武器魂珠-4
			[5] = {
				Id = 200905,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--徐晃魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 52,Sum = 52},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 444,Sum = 444}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--徐晃魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 129},[2] = {Id = 112,Val = 42,Sum = 70},[3] = {Id = 113,Val = 666,Sum = 1110}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--徐晃魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 231},[2] = {Id = 112,Val = 56,Sum = 126},[3] = {Id = 113,Val = 888,Sum = 1998}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--徐晃魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 385},[2] = {Id = 112,Val = 84,Sum = 210},[3] = {Id = 113,Val = 1332,Sum = 3330}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--徐晃魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 206,Sum = 591},[2] = {Id = 112,Val = 112,Sum = 322},[3] = {Id = 113,Val = 1776,Sum = 5106}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--徐晃魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 256,Sum = 847},[2] = {Id = 112,Val = 140,Sum = 462},[3] = {Id = 113,Val = 2220,Sum = 7326}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--徐晃魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 1155},[2] = {Id = 112,Val = 168,Sum = 630},[3] = {Id = 113,Val = 2664,Sum = 9990}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--徐晃魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 359,Sum = 1514},[2] = {Id = 112,Val = 196,Sum = 826},[3] = {Id = 113,Val = 3108,Sum = 13098}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--徐晃魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 410,Sum = 1924},[2] = {Id = 112,Val = 224,Sum = 1050},[3] = {Id = 113,Val = 3551,Sum = 16649}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--徐晃魂珠-5 等级-9
				}
			},--徐晃专属武器魂珠-5
			[6] = {
				Id = 200906,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--徐晃魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 541,Sum = 541}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--徐晃魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 157},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 811,Sum = 1352}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--徐晃魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 282},[2] = {Id = 112,Val = 68,Sum = 154},[3] = {Id = 113,Val = 1082,Sum = 2434}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--徐晃魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 469},[2] = {Id = 112,Val = 102,Sum = 256},[3] = {Id = 113,Val = 1623,Sum = 4057}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--徐晃魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 719},[2] = {Id = 112,Val = 137,Sum = 393},[3] = {Id = 113,Val = 2164,Sum = 6221}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--徐晃魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 1031},[2] = {Id = 112,Val = 170,Sum = 563},[3] = {Id = 113,Val = 2705,Sum = 8926}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--徐晃魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 375,Sum = 1406},[2] = {Id = 112,Val = 204,Sum = 767},[3] = {Id = 113,Val = 3245,Sum = 12171}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--徐晃魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 438,Sum = 1844},[2] = {Id = 112,Val = 239,Sum = 1006},[3] = {Id = 113,Val = 3786,Sum = 15957}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--徐晃魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 501,Sum = 2345},[2] = {Id = 112,Val = 272,Sum = 1278},[3] = {Id = 113,Val = 4327,Sum = 20284}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--徐晃魂珠-6 等级-9
				}
			},--徐晃专属武器魂珠-6
			[7] = {
				Id = 200907,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--徐晃魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 69,Sum = 69},[2] = {Id = 112,Val = 37,Sum = 37},[3] = {Id = 113,Val = 598,Sum = 598}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--徐晃魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 103,Sum = 172},[2] = {Id = 112,Val = 56,Sum = 93},[3] = {Id = 113,Val = 898,Sum = 1496}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--徐晃魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 139,Sum = 311},[2] = {Id = 112,Val = 76,Sum = 169},[3] = {Id = 113,Val = 1197,Sum = 2693}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--徐晃魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 519},[2] = {Id = 112,Val = 113,Sum = 282},[3] = {Id = 113,Val = 1795,Sum = 4488}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--徐晃魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 276,Sum = 795},[2] = {Id = 112,Val = 151,Sum = 433},[3] = {Id = 113,Val = 2393,Sum = 6881}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--徐晃魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 345,Sum = 1140},[2] = {Id = 112,Val = 188,Sum = 621},[3] = {Id = 113,Val = 2992,Sum = 9873}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--徐晃魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 415,Sum = 1555},[2] = {Id = 112,Val = 227,Sum = 848},[3] = {Id = 113,Val = 3590,Sum = 13463}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--徐晃魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 484,Sum = 2039},[2] = {Id = 112,Val = 264,Sum = 1112},[3] = {Id = 113,Val = 4189,Sum = 17652}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--徐晃魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2592},[2] = {Id = 112,Val = 301,Sum = 1413},[3] = {Id = 113,Val = 4787,Sum = 22439}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--徐晃魂珠-7 等级-9
				}
			},--徐晃专属武器魂珠-7
			[8] = {
				Id = 200908,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--徐晃魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 73,Sum = 73},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 627,Sum = 627}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--徐晃魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 109,Sum = 182},[2] = {Id = 112,Val = 59,Sum = 99},[3] = {Id = 113,Val = 940,Sum = 1567}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--徐晃魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 145,Sum = 327},[2] = {Id = 112,Val = 79,Sum = 178},[3] = {Id = 113,Val = 1253,Sum = 2820}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--徐晃魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 545},[2] = {Id = 112,Val = 119,Sum = 297},[3] = {Id = 113,Val = 1880,Sum = 4700}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--徐晃魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 289,Sum = 834},[2] = {Id = 112,Val = 158,Sum = 455},[3] = {Id = 113,Val = 2507,Sum = 7207}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--徐晃魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1196},[2] = {Id = 112,Val = 198,Sum = 653},[3] = {Id = 113,Val = 3133,Sum = 10340}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--徐晃魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 435,Sum = 1631},[2] = {Id = 112,Val = 238,Sum = 891},[3] = {Id = 113,Val = 3760,Sum = 14100}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--徐晃魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 507,Sum = 2138},[2] = {Id = 112,Val = 276,Sum = 1167},[3] = {Id = 113,Val = 4387,Sum = 18487}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--徐晃魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 580,Sum = 2718},[2] = {Id = 112,Val = 316,Sum = 1483},[3] = {Id = 113,Val = 5014,Sum = 23501}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--徐晃魂珠-8 等级-9
				}
			}--徐晃专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--徐晃专属武器解封-0
			[1] = {Pskill = {[1] = 130300911},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 22000},[2] = {Id = 1502009,Val = 40}}},--徐晃专属武器解封-1
			[2] = {Pskill = {[1] = 130300911},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 45000},[2] = {Id = 1502009,Val = 40}}},--徐晃专属武器解封-2
			[3] = {Pskill = {[1] = 130300911},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 101000},[2] = {Id = 1502009,Val = 60}}},--徐晃专属武器解封-3
			[4] = {Pskill = {[1] = 130300911},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 177500},[2] = {Id = 1502009,Val = 60}}},--徐晃专属武器解封-4
			[5] = {Pskill = {[1] = 130300911},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 439500},[2] = {Id = 1502009,Val = 80}}}--徐晃专属武器解封-5
		}
	},--徐晃专属武器
	[1102010] = {
		CardId = 1102010,
		Name = _T("流光·幻影"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501010",
		HunZhu = {
			[1] = {
				Id = 201001,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张郃魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 22,Sum = 22},[2] = {Id = 112,Val = 9,Sum = 9},[3] = {Id = 113,Val = 157,Sum = 157}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张郃魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 34,Sum = 56},[2] = {Id = 112,Val = 13,Sum = 22},[3] = {Id = 113,Val = 235,Sum = 392}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张郃魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 45,Sum = 101},[2] = {Id = 112,Val = 18,Sum = 40},[3] = {Id = 113,Val = 313,Sum = 705}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张郃魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 167},[2] = {Id = 112,Val = 28,Sum = 68},[3] = {Id = 113,Val = 470,Sum = 1175}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张郃魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 256},[2] = {Id = 112,Val = 36,Sum = 104},[3] = {Id = 113,Val = 627,Sum = 1802}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--张郃魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 111,Sum = 367},[2] = {Id = 112,Val = 45,Sum = 149},[3] = {Id = 113,Val = 784,Sum = 2586}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--张郃魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 134,Sum = 501},[2] = {Id = 112,Val = 54,Sum = 203},[3] = {Id = 113,Val = 940,Sum = 3526}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--张郃魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 155,Sum = 656},[2] = {Id = 112,Val = 64,Sum = 267},[3] = {Id = 113,Val = 1097,Sum = 4623}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--张郃魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 178,Sum = 834},[2] = {Id = 112,Val = 73,Sum = 340},[3] = {Id = 113,Val = 1254,Sum = 5877}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--张郃魂珠-1 等级-9
				}
			},--张郃专属武器魂珠-1
			[2] = {
				Id = 201002,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张郃魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 35,Sum = 35},[2] = {Id = 112,Val = 14,Sum = 14},[3] = {Id = 113,Val = 248,Sum = 248}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--张郃魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 53,Sum = 88},[2] = {Id = 112,Val = 22,Sum = 36},[3] = {Id = 113,Val = 372,Sum = 620}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张郃魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 70,Sum = 158},[2] = {Id = 112,Val = 29,Sum = 65},[3] = {Id = 113,Val = 496,Sum = 1116}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张郃魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 105,Sum = 263},[2] = {Id = 112,Val = 43,Sum = 108},[3] = {Id = 113,Val = 743,Sum = 1859}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张郃魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 403},[2] = {Id = 112,Val = 57,Sum = 165},[3] = {Id = 113,Val = 991,Sum = 2850}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--张郃魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 579},[2] = {Id = 112,Val = 72,Sum = 237},[3] = {Id = 113,Val = 1239,Sum = 4089}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张郃魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 211,Sum = 790},[2] = {Id = 112,Val = 86,Sum = 323},[3] = {Id = 113,Val = 1487,Sum = 5576}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张郃魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 246,Sum = 1036},[2] = {Id = 112,Val = 100,Sum = 423},[3] = {Id = 113,Val = 1735,Sum = 7311}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--张郃魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 281,Sum = 1317},[2] = {Id = 112,Val = 114,Sum = 537},[3] = {Id = 113,Val = 1983,Sum = 9294}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--张郃魂珠-2 等级-9
				}
			},--张郃专属武器魂珠-2
			[3] = {
				Id = 201003,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张郃魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 50},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 350,Sum = 350}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--张郃魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 124},[2] = {Id = 112,Val = 31,Sum = 51},[3] = {Id = 113,Val = 526,Sum = 876}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张郃魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 224},[2] = {Id = 112,Val = 41,Sum = 92},[3] = {Id = 113,Val = 701,Sum = 1577}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张郃魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 149,Sum = 373},[2] = {Id = 112,Val = 61,Sum = 153},[3] = {Id = 113,Val = 1051,Sum = 2628}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张郃魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 571},[2] = {Id = 112,Val = 81,Sum = 234},[3] = {Id = 113,Val = 1402,Sum = 4030}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--张郃魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 248,Sum = 819},[2] = {Id = 112,Val = 101,Sum = 335},[3] = {Id = 113,Val = 1752,Sum = 5782}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--张郃魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 298,Sum = 1117},[2] = {Id = 112,Val = 121,Sum = 456},[3] = {Id = 113,Val = 2103,Sum = 7885}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--张郃魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 348,Sum = 1465},[2] = {Id = 112,Val = 142,Sum = 598},[3] = {Id = 113,Val = 2453,Sum = 10338}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--张郃魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 398,Sum = 1863},[2] = {Id = 112,Val = 162,Sum = 760},[3] = {Id = 113,Val = 2804,Sum = 13142}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--张郃魂珠-3 等级-9
				}
			},--张郃专属武器魂珠-3
			[4] = {
				Id = 201004,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张郃魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 51,Sum = 51},[2] = {Id = 112,Val = 21,Sum = 21},[3] = {Id = 113,Val = 360,Sum = 360}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张郃魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 128},[2] = {Id = 112,Val = 31,Sum = 52},[3] = {Id = 113,Val = 539,Sum = 899}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--张郃魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 103,Sum = 231},[2] = {Id = 112,Val = 42,Sum = 94},[3] = {Id = 113,Val = 719,Sum = 1618}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--张郃魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 153,Sum = 384},[2] = {Id = 112,Val = 63,Sum = 157},[3] = {Id = 113,Val = 1079,Sum = 2697}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--张郃魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 588},[2] = {Id = 112,Val = 84,Sum = 241},[3] = {Id = 113,Val = 1438,Sum = 4135}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--张郃魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 255,Sum = 843},[2] = {Id = 112,Val = 103,Sum = 344},[3] = {Id = 113,Val = 1798,Sum = 5933}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--张郃魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 306,Sum = 1149},[2] = {Id = 112,Val = 124,Sum = 468},[3] = {Id = 113,Val = 2157,Sum = 8090}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--张郃魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 356,Sum = 1505},[2] = {Id = 112,Val = 145,Sum = 613},[3] = {Id = 113,Val = 2517,Sum = 10607}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--张郃魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 408,Sum = 1913},[2] = {Id = 112,Val = 166,Sum = 779},[3] = {Id = 113,Val = 2876,Sum = 13483}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--张郃魂珠-4 等级-9
				}
			},--张郃专属武器魂珠-4
			[5] = {
				Id = 201005,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张郃魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 444,Sum = 444}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张郃魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 95,Sum = 158},[2] = {Id = 112,Val = 39,Sum = 64},[3] = {Id = 113,Val = 666,Sum = 1110}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--张郃魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 284},[2] = {Id = 112,Val = 52,Sum = 116},[3] = {Id = 113,Val = 888,Sum = 1998}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--张郃魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 473},[2] = {Id = 112,Val = 77,Sum = 193},[3] = {Id = 113,Val = 1332,Sum = 3330}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--张郃魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 725},[2] = {Id = 112,Val = 102,Sum = 295},[3] = {Id = 113,Val = 1776,Sum = 5106}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--张郃魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 315,Sum = 1040},[2] = {Id = 112,Val = 129,Sum = 424},[3] = {Id = 113,Val = 2220,Sum = 7326}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--张郃魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1418},[2] = {Id = 112,Val = 154,Sum = 578},[3] = {Id = 113,Val = 2664,Sum = 9990}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--张郃魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1858},[2] = {Id = 112,Val = 179,Sum = 757},[3] = {Id = 113,Val = 3108,Sum = 13098}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--张郃魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 2362},[2] = {Id = 112,Val = 206,Sum = 963},[3] = {Id = 113,Val = 3551,Sum = 16649}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--张郃魂珠-5 等级-9
				}
			},--张郃专属武器魂珠-5
			[6] = {
				Id = 201006,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张郃魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 77},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 541,Sum = 541}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张郃魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 115,Sum = 192},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 811,Sum = 1352}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张郃魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 346},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1082,Sum = 2434}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--张郃魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 230,Sum = 576},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1623,Sum = 4057}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张郃魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 306,Sum = 882},[2] = {Id = 112,Val = 125,Sum = 360},[3] = {Id = 113,Val = 2164,Sum = 6221}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--张郃魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 383,Sum = 1265},[2] = {Id = 112,Val = 156,Sum = 516},[3] = {Id = 113,Val = 2705,Sum = 8926}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--张郃魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 460,Sum = 1725},[2] = {Id = 112,Val = 187,Sum = 703},[3] = {Id = 113,Val = 3245,Sum = 12171}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--张郃魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 537,Sum = 2262},[2] = {Id = 112,Val = 219,Sum = 922},[3] = {Id = 113,Val = 3786,Sum = 15957}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--张郃魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 614,Sum = 2876},[2] = {Id = 112,Val = 250,Sum = 1172},[3] = {Id = 113,Val = 4327,Sum = 20284}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--张郃魂珠-6 等级-9
				}
			},--张郃专属武器魂珠-6
			[7] = {
				Id = 201007,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张郃魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 85,Sum = 85},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 598,Sum = 598}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--张郃魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 127,Sum = 212},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 898,Sum = 1496}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张郃魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 382},[2] = {Id = 112,Val = 69,Sum = 155},[3] = {Id = 113,Val = 1197,Sum = 2693}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张郃魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 255,Sum = 637},[2] = {Id = 112,Val = 103,Sum = 258},[3] = {Id = 113,Val = 1795,Sum = 4488}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张郃魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 339,Sum = 976},[2] = {Id = 112,Val = 139,Sum = 397},[3] = {Id = 113,Val = 2393,Sum = 6881}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--张郃魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 424,Sum = 1400},[2] = {Id = 112,Val = 173,Sum = 570},[3] = {Id = 113,Val = 2992,Sum = 9873}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--张郃魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 509,Sum = 1909},[2] = {Id = 112,Val = 208,Sum = 778},[3] = {Id = 113,Val = 3590,Sum = 13463}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--张郃魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 594,Sum = 2503},[2] = {Id = 112,Val = 242,Sum = 1020},[3] = {Id = 113,Val = 4189,Sum = 17652}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--张郃魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 679,Sum = 3182},[2] = {Id = 112,Val = 276,Sum = 1296},[3] = {Id = 113,Val = 4787,Sum = 22439}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--张郃魂珠-7 等级-9
				}
			},--张郃专属武器魂珠-7
			[8] = {
				Id = 201008,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张郃魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 89},[2] = {Id = 112,Val = 36,Sum = 36},[3] = {Id = 113,Val = 627,Sum = 627}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--张郃魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 134,Sum = 223},[2] = {Id = 112,Val = 54,Sum = 90},[3] = {Id = 113,Val = 940,Sum = 1567}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--张郃魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 178,Sum = 401},[2] = {Id = 112,Val = 73,Sum = 163},[3] = {Id = 113,Val = 1253,Sum = 2820}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--张郃魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 267,Sum = 668},[2] = {Id = 112,Val = 109,Sum = 272},[3] = {Id = 113,Val = 1880,Sum = 4700}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--张郃魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 355,Sum = 1023},[2] = {Id = 112,Val = 145,Sum = 417},[3] = {Id = 113,Val = 2507,Sum = 7207}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--张郃魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 444,Sum = 1467},[2] = {Id = 112,Val = 182,Sum = 599},[3] = {Id = 113,Val = 3133,Sum = 10340}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--张郃魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 533,Sum = 2000},[2] = {Id = 112,Val = 218,Sum = 817},[3] = {Id = 113,Val = 3760,Sum = 14100}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--张郃魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 622,Sum = 2622},[2] = {Id = 112,Val = 253,Sum = 1070},[3] = {Id = 113,Val = 4387,Sum = 18487}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--张郃魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 711,Sum = 3333},[2] = {Id = 112,Val = 289,Sum = 1359},[3] = {Id = 113,Val = 5014,Sum = 23501}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--张郃魂珠-8 等级-9
				}
			}--张郃专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--张郃专属武器解封-0
			[1] = {Pskill = {[1] = 130301011},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 29000},[2] = {Id = 1502010,Val = 80}}},--张郃专属武器解封-1
			[2] = {Pskill = {[1] = 130301011},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 60500},[2] = {Id = 1502010,Val = 80}}},--张郃专属武器解封-2
			[3] = {Pskill = {[1] = 130301011},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 135000},[2] = {Id = 1502010,Val = 120}}},--张郃专属武器解封-3
			[4] = {Pskill = {[1] = 130301011},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 236500},[2] = {Id = 1502010,Val = 120}}},--张郃专属武器解封-4
			[5] = {Pskill = {[1] = 130301011},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 586000},[2] = {Id = 1502010,Val = 160}}}--张郃专属武器解封-5
		}
	},--张郃专属武器
	[1102011] = {
		CardId = 1102011,
		Name = _T("丈八蛇矛"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501011",
		HunZhu = {
			[1] = {
				Id = 201101,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张飞魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 16,Sum = 16},[2] = {Id = 112,Val = 9,Sum = 9},[3] = {Id = 113,Val = 212,Sum = 212}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张飞魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 25,Sum = 41},[2] = {Id = 112,Val = 13,Sum = 22},[3] = {Id = 113,Val = 317,Sum = 529}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张飞魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 33,Sum = 74},[2] = {Id = 112,Val = 18,Sum = 40},[3] = {Id = 113,Val = 423,Sum = 952}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张飞魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 49,Sum = 123},[2] = {Id = 112,Val = 28,Sum = 68},[3] = {Id = 113,Val = 635,Sum = 1587}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张飞魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 189},[2] = {Id = 112,Val = 36,Sum = 104},[3] = {Id = 113,Val = 846,Sum = 2433}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--张飞魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 82,Sum = 271},[2] = {Id = 112,Val = 45,Sum = 149},[3] = {Id = 113,Val = 1058,Sum = 3491}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--张飞魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 370},[2] = {Id = 112,Val = 54,Sum = 203},[3] = {Id = 113,Val = 1269,Sum = 4760}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--张飞魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 115,Sum = 485},[2] = {Id = 112,Val = 64,Sum = 267},[3] = {Id = 113,Val = 1481,Sum = 6241}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--张飞魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 617},[2] = {Id = 112,Val = 73,Sum = 340},[3] = {Id = 113,Val = 1693,Sum = 7934}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--张飞魂珠-1 等级-9
				}
			},--张飞专属武器魂珠-1
			[2] = {
				Id = 201102,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张飞魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 26,Sum = 26},[2] = {Id = 112,Val = 14,Sum = 14},[3] = {Id = 113,Val = 335,Sum = 335}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--张飞魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 39,Sum = 65},[2] = {Id = 112,Val = 22,Sum = 36},[3] = {Id = 113,Val = 502,Sum = 837}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张飞魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 52,Sum = 117},[2] = {Id = 112,Val = 29,Sum = 65},[3] = {Id = 113,Val = 670,Sum = 1507}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张飞魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 78,Sum = 195},[2] = {Id = 112,Val = 43,Sum = 108},[3] = {Id = 113,Val = 1003,Sum = 2510}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张飞魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 104,Sum = 299},[2] = {Id = 112,Val = 57,Sum = 165},[3] = {Id = 113,Val = 1338,Sum = 3848}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--张飞魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 130,Sum = 429},[2] = {Id = 112,Val = 72,Sum = 237},[3] = {Id = 113,Val = 1673,Sum = 5521}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张飞魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 585},[2] = {Id = 112,Val = 86,Sum = 323},[3] = {Id = 113,Val = 2007,Sum = 7528}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张飞魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 182,Sum = 767},[2] = {Id = 112,Val = 100,Sum = 423},[3] = {Id = 113,Val = 2342,Sum = 9870}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--张飞魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 975},[2] = {Id = 112,Val = 114,Sum = 537},[3] = {Id = 113,Val = 2677,Sum = 12547}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--张飞魂珠-2 等级-9
				}
			},--张飞专属武器魂珠-2
			[3] = {
				Id = 201103,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张飞魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 37,Sum = 37},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 473,Sum = 473}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--张飞魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 55,Sum = 92},[2] = {Id = 112,Val = 31,Sum = 51},[3] = {Id = 113,Val = 710,Sum = 1183}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张飞魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 166},[2] = {Id = 112,Val = 41,Sum = 92},[3] = {Id = 113,Val = 946,Sum = 2129}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张飞魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 276},[2] = {Id = 112,Val = 61,Sum = 153},[3] = {Id = 113,Val = 1419,Sum = 3548}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张飞魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 147,Sum = 423},[2] = {Id = 112,Val = 81,Sum = 234},[3] = {Id = 113,Val = 1893,Sum = 5441}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--张飞魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 184,Sum = 607},[2] = {Id = 112,Val = 101,Sum = 335},[3] = {Id = 113,Val = 2365,Sum = 7806}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--张飞魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 828},[2] = {Id = 112,Val = 121,Sum = 456},[3] = {Id = 113,Val = 2839,Sum = 10645}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--张飞魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 258,Sum = 1086},[2] = {Id = 112,Val = 142,Sum = 598},[3] = {Id = 113,Val = 3312,Sum = 13957}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--张飞魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 295,Sum = 1381},[2] = {Id = 112,Val = 162,Sum = 760},[3] = {Id = 113,Val = 3785,Sum = 17742}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--张飞魂珠-3 等级-9
				}
			},--张飞专属武器魂珠-3
			[4] = {
				Id = 201104,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张飞魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 38,Sum = 38},[2] = {Id = 112,Val = 21,Sum = 21},[3] = {Id = 113,Val = 486,Sum = 486}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张飞魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 95},[2] = {Id = 112,Val = 31,Sum = 52},[3] = {Id = 113,Val = 728,Sum = 1214}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--张飞魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 171},[2] = {Id = 112,Val = 42,Sum = 94},[3] = {Id = 113,Val = 971,Sum = 2185}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--张飞魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 284},[2] = {Id = 112,Val = 63,Sum = 157},[3] = {Id = 113,Val = 1457,Sum = 3642}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--张飞魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 435},[2] = {Id = 112,Val = 84,Sum = 241},[3] = {Id = 113,Val = 1941,Sum = 5583}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--张飞魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 624},[2] = {Id = 112,Val = 103,Sum = 344},[3] = {Id = 113,Val = 2427,Sum = 8010}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--张飞魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 851},[2] = {Id = 112,Val = 124,Sum = 468},[3] = {Id = 113,Val = 2912,Sum = 10922}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--张飞魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 1115},[2] = {Id = 112,Val = 145,Sum = 613},[3] = {Id = 113,Val = 3398,Sum = 14320}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--张飞魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 302,Sum = 1417},[2] = {Id = 112,Val = 166,Sum = 779},[3] = {Id = 113,Val = 3883,Sum = 18203}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--张飞魂珠-4 等级-9
				}
			},--张飞专属武器魂珠-4
			[5] = {
				Id = 201105,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张飞魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 47},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 599,Sum = 599}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张飞魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 70,Sum = 117},[2] = {Id = 112,Val = 39,Sum = 64},[3] = {Id = 113,Val = 899,Sum = 1498}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--张飞魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 93,Sum = 210},[2] = {Id = 112,Val = 52,Sum = 116},[3] = {Id = 113,Val = 1199,Sum = 2697}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--张飞魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 350},[2] = {Id = 112,Val = 77,Sum = 193},[3] = {Id = 113,Val = 1798,Sum = 4495}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--张飞魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 537},[2] = {Id = 112,Val = 102,Sum = 295},[3] = {Id = 113,Val = 2398,Sum = 6893}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--张飞魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 233,Sum = 770},[2] = {Id = 112,Val = 129,Sum = 424},[3] = {Id = 113,Val = 2997,Sum = 9890}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--张飞魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 1050},[2] = {Id = 112,Val = 154,Sum = 578},[3] = {Id = 113,Val = 3596,Sum = 13486}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--张飞魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 326,Sum = 1376},[2] = {Id = 112,Val = 179,Sum = 757},[3] = {Id = 113,Val = 4196,Sum = 17682}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--张飞魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 373,Sum = 1749},[2] = {Id = 112,Val = 206,Sum = 963},[3] = {Id = 113,Val = 4794,Sum = 22476}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--张飞魂珠-5 等级-9
				}
			},--张飞专属武器魂珠-5
			[6] = {
				Id = 201106,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张飞魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 57},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 730,Sum = 730}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张飞魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 85,Sum = 142},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 1095,Sum = 1825}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张飞魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 114,Sum = 256},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1461,Sum = 3286}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--张飞魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 426},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 2191,Sum = 5477}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张飞魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 653},[2] = {Id = 112,Val = 125,Sum = 360},[3] = {Id = 113,Val = 2921,Sum = 8398}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--张飞魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 937},[2] = {Id = 112,Val = 156,Sum = 516},[3] = {Id = 113,Val = 3652,Sum = 12050}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--张飞魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1278},[2] = {Id = 112,Val = 187,Sum = 703},[3] = {Id = 113,Val = 4381,Sum = 16431}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--张飞魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 398,Sum = 1676},[2] = {Id = 112,Val = 219,Sum = 922},[3] = {Id = 113,Val = 5111,Sum = 21542}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--张飞魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 455,Sum = 2131},[2] = {Id = 112,Val = 250,Sum = 1172},[3] = {Id = 113,Val = 5841,Sum = 27383}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--张飞魂珠-6 等级-9
				}
			},--张飞专属武器魂珠-6
			[7] = {
				Id = 201107,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张飞魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 807,Sum = 807}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--张飞魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 157},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 1212,Sum = 2019}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张飞魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 283},[2] = {Id = 112,Val = 69,Sum = 155},[3] = {Id = 113,Val = 1616,Sum = 3635}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张飞魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 472},[2] = {Id = 112,Val = 103,Sum = 258},[3] = {Id = 113,Val = 2423,Sum = 6058}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张飞魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 251,Sum = 723},[2] = {Id = 112,Val = 139,Sum = 397},[3] = {Id = 113,Val = 3231,Sum = 9289}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--张飞魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 314,Sum = 1037},[2] = {Id = 112,Val = 173,Sum = 570},[3] = {Id = 113,Val = 4039,Sum = 13328}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--张飞魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1414},[2] = {Id = 112,Val = 208,Sum = 778},[3] = {Id = 113,Val = 4847,Sum = 18175}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--张飞魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1854},[2] = {Id = 112,Val = 242,Sum = 1020},[3] = {Id = 113,Val = 5655,Sum = 23830}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--张飞魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 503,Sum = 2357},[2] = {Id = 112,Val = 276,Sum = 1296},[3] = {Id = 113,Val = 6462,Sum = 30292}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--张飞魂珠-7 等级-9
				}
			},--张飞专属武器魂珠-7
			[8] = {
				Id = 201108,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--张飞魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 66},[2] = {Id = 112,Val = 36,Sum = 36},[3] = {Id = 113,Val = 846,Sum = 846}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--张飞魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 165},[2] = {Id = 112,Val = 54,Sum = 90},[3] = {Id = 113,Val = 1269,Sum = 2115}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--张飞魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 297},[2] = {Id = 112,Val = 73,Sum = 163},[3] = {Id = 113,Val = 1692,Sum = 3807}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--张飞魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 495},[2] = {Id = 112,Val = 109,Sum = 272},[3] = {Id = 113,Val = 2538,Sum = 6345}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--张飞魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 263,Sum = 758},[2] = {Id = 112,Val = 145,Sum = 417},[3] = {Id = 113,Val = 3384,Sum = 9729}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--张飞魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 329,Sum = 1087},[2] = {Id = 112,Val = 182,Sum = 599},[3] = {Id = 113,Val = 4230,Sum = 13959}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--张飞魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1482},[2] = {Id = 112,Val = 218,Sum = 817},[3] = {Id = 113,Val = 5076,Sum = 19035}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--张飞魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 461,Sum = 1943},[2] = {Id = 112,Val = 253,Sum = 1070},[3] = {Id = 113,Val = 5922,Sum = 24957}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--张飞魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 527,Sum = 2470},[2] = {Id = 112,Val = 289,Sum = 1359},[3] = {Id = 113,Val = 6769,Sum = 31726}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--张飞魂珠-8 等级-9
				}
			}--张飞专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--张飞专属武器解封-0
			[1] = {Pskill = {[1] = 130301111},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 29000},[2] = {Id = 1502011,Val = 80}}},--张飞专属武器解封-1
			[2] = {Pskill = {[1] = 130301111},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 60500},[2] = {Id = 1502011,Val = 80}}},--张飞专属武器解封-2
			[3] = {Pskill = {[1] = 130301111},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 135000},[2] = {Id = 1502011,Val = 120}}},--张飞专属武器解封-3
			[4] = {Pskill = {[1] = 130301111},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 236500},[2] = {Id = 1502011,Val = 120}}},--张飞专属武器解封-4
			[5] = {Pskill = {[1] = 130301111},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 586000},[2] = {Id = 1502011,Val = 160}}}--张飞专属武器解封-5
		}
	},--张飞专属武器
	[1102012] = {
		CardId = 1102012,
		Name = _T("鬼哭地狱"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501012",
		HunZhu = {
			[1] = {
				Id = 201201,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯惇魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 19,Sum = 19},[2] = {Id = 112,Val = 10,Sum = 10},[3] = {Id = 113,Val = 236,Sum = 236}},Cost = {[1] = {Id = 1401002,Val = 160},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯惇魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 49},[2] = {Id = 112,Val = 14,Sum = 24},[3] = {Id = 113,Val = 353,Sum = 589}},Cost = {[1] = {Id = 1401002,Val = 245},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯惇魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 89},[2] = {Id = 112,Val = 19,Sum = 43},[3] = {Id = 113,Val = 470,Sum = 1059}},Cost = {[1] = {Id = 1401002,Val = 405},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯惇魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 148},[2] = {Id = 112,Val = 30,Sum = 73},[3] = {Id = 113,Val = 705,Sum = 1764}},Cost = {[1] = {Id = 1401002,Val = 520},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯惇魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 227},[2] = {Id = 112,Val = 40,Sum = 113},[3] = {Id = 113,Val = 941,Sum = 2705}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--夏侯惇魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 98,Sum = 325},[2] = {Id = 112,Val = 49,Sum = 162},[3] = {Id = 113,Val = 1176,Sum = 3881}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--夏侯惇魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 444},[2] = {Id = 112,Val = 59,Sum = 221},[3] = {Id = 113,Val = 1410,Sum = 5291}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--夏侯惇魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 138,Sum = 582},[2] = {Id = 112,Val = 70,Sum = 291},[3] = {Id = 113,Val = 1646,Sum = 6937}},Cost = {[1] = {Id = 1401002,Val = 1055},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--夏侯惇魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 740},[2] = {Id = 112,Val = 79,Sum = 370},[3] = {Id = 113,Val = 1881,Sum = 8818}},Cost = {[1] = {Id = 1401002,Val = 1315},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--夏侯惇魂珠-1 等级-9
				}
			},--夏侯惇专属武器魂珠-1
			[2] = {
				Id = 201202,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯惇魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 31,Sum = 31},[2] = {Id = 112,Val = 16,Sum = 16},[3] = {Id = 113,Val = 372,Sum = 372}},Cost = {[1] = {Id = 1401002,Val = 445},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--夏侯惇魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 78},[2] = {Id = 112,Val = 24,Sum = 40},[3] = {Id = 113,Val = 558,Sum = 930}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯惇魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 62,Sum = 140},[2] = {Id = 112,Val = 31,Sum = 71},[3] = {Id = 113,Val = 744,Sum = 1674}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯惇魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 234},[2] = {Id = 112,Val = 47,Sum = 118},[3] = {Id = 113,Val = 1115,Sum = 2789}},Cost = {[1] = {Id = 1401002,Val = 710},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯惇魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 359},[2] = {Id = 112,Val = 62,Sum = 180},[3] = {Id = 113,Val = 1487,Sum = 4276}},Cost = {[1] = {Id = 1401002,Val = 1080},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--夏侯惇魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 515},[2] = {Id = 112,Val = 78,Sum = 258},[3] = {Id = 113,Val = 1859,Sum = 6135}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯惇魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 702},[2] = {Id = 112,Val = 94,Sum = 352},[3] = {Id = 113,Val = 2231,Sum = 8366}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯惇魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 920},[2] = {Id = 112,Val = 109,Sum = 461},[3] = {Id = 113,Val = 2603,Sum = 10969}},Cost = {[1] = {Id = 1401002,Val = 2150},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--夏侯惇魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 1170},[2] = {Id = 112,Val = 125,Sum = 586},[3] = {Id = 113,Val = 2975,Sum = 13944}},Cost = {[1] = {Id = 1401002,Val = 2870},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--夏侯惇魂珠-2 等级-9
				}
			},--夏侯惇专属武器魂珠-2
			[3] = {
				Id = 201203,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯惇魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 525,Sum = 525}},Cost = {[1] = {Id = 1401002,Val = 910},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--夏侯惇魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 34,Sum = 56},[3] = {Id = 113,Val = 789,Sum = 1314}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯惇魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 199},[2] = {Id = 112,Val = 44,Sum = 100},[3] = {Id = 113,Val = 1052,Sum = 2366}},Cost = {[1] = {Id = 1401002,Val = 1140},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯惇魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 331},[2] = {Id = 112,Val = 66,Sum = 166},[3] = {Id = 113,Val = 1577,Sum = 3943}},Cost = {[1] = {Id = 1401002,Val = 1095},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯惇魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 507},[2] = {Id = 112,Val = 89,Sum = 255},[3] = {Id = 113,Val = 2103,Sum = 6046}},Cost = {[1] = {Id = 1401002,Val = 1485},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--夏侯惇魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 728},[2] = {Id = 112,Val = 110,Sum = 365},[3] = {Id = 113,Val = 2628,Sum = 8674}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--夏侯惇魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 265,Sum = 993},[2] = {Id = 112,Val = 132,Sum = 497},[3] = {Id = 113,Val = 3155,Sum = 11829}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--夏侯惇魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 310,Sum = 1303},[2] = {Id = 112,Val = 155,Sum = 652},[3] = {Id = 113,Val = 3680,Sum = 15509}},Cost = {[1] = {Id = 1401002,Val = 2955},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--夏侯惇魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 354,Sum = 1657},[2] = {Id = 112,Val = 176,Sum = 828},[3] = {Id = 113,Val = 4206,Sum = 19715}},Cost = {[1] = {Id = 1401002,Val = 3695},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--夏侯惇魂珠-3 等级-9
				}
			},--夏侯惇专属武器魂珠-3
			[4] = {
				Id = 201204,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯惇魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 46,Sum = 46},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 540,Sum = 540}},Cost = {[1] = {Id = 1401002,Val = 1480},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯惇魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 114},[2] = {Id = 112,Val = 34,Sum = 57},[3] = {Id = 113,Val = 809,Sum = 1349}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--夏侯惇魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 91,Sum = 205},[2] = {Id = 112,Val = 46,Sum = 103},[3] = {Id = 113,Val = 1079,Sum = 2428}},Cost = {[1] = {Id = 1401002,Val = 1235},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--夏侯惇魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 136,Sum = 341},[2] = {Id = 112,Val = 68,Sum = 171},[3] = {Id = 113,Val = 1619,Sum = 4047}},Cost = {[1] = {Id = 1401002,Val = 2370},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--夏侯惇魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 181,Sum = 522},[2] = {Id = 112,Val = 91,Sum = 262},[3] = {Id = 113,Val = 2157,Sum = 6204}},Cost = {[1] = {Id = 1401002,Val = 2405},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--夏侯惇魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 749},[2] = {Id = 112,Val = 113,Sum = 375},[3] = {Id = 113,Val = 2697,Sum = 8901}},Cost = {[1] = {Id = 1401002,Val = 2390},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--夏侯惇魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 1021},[2] = {Id = 112,Val = 136,Sum = 511},[3] = {Id = 113,Val = 3236,Sum = 12137}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--夏侯惇魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 317,Sum = 1338},[2] = {Id = 112,Val = 158,Sum = 669},[3] = {Id = 113,Val = 3776,Sum = 15913}},Cost = {[1] = {Id = 1401002,Val = 4790},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--夏侯惇魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1700},[2] = {Id = 112,Val = 181,Sum = 850},[3] = {Id = 113,Val = 4314,Sum = 20227}},Cost = {[1] = {Id = 1401002,Val = 7190},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--夏侯惇魂珠-4 等级-9
				}
			},--夏侯惇专属武器魂珠-4
			[5] = {
				Id = 201205,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯惇魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 56,Sum = 56},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 666,Sum = 666}},Cost = {[1] = {Id = 1401002,Val = 3085},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯惇魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 140},[2] = {Id = 112,Val = 42,Sum = 70},[3] = {Id = 113,Val = 999,Sum = 1665}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--夏侯惇魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 112,Sum = 252},[2] = {Id = 112,Val = 56,Sum = 126},[3] = {Id = 113,Val = 1332,Sum = 2997}},Cost = {[1] = {Id = 1401002,Val = 2570},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--夏侯惇魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 420},[2] = {Id = 112,Val = 84,Sum = 210},[3] = {Id = 113,Val = 1998,Sum = 4995}},Cost = {[1] = {Id = 1401002,Val = 3705},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--夏侯惇魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 224,Sum = 644},[2] = {Id = 112,Val = 112,Sum = 322},[3] = {Id = 113,Val = 2664,Sum = 7659}},Cost = {[1] = {Id = 1401002,Val = 3760},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--夏侯惇魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 924},[2] = {Id = 112,Val = 140,Sum = 462},[3] = {Id = 113,Val = 3330,Sum = 10989}},Cost = {[1] = {Id = 1401002,Val = 6230},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--夏侯惇魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1260},[2] = {Id = 112,Val = 168,Sum = 630},[3] = {Id = 113,Val = 3996,Sum = 14985}},Cost = {[1] = {Id = 1401002,Val = 6245},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--夏侯惇魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 391,Sum = 1651},[2] = {Id = 112,Val = 196,Sum = 826},[3] = {Id = 113,Val = 4662,Sum = 19647}},Cost = {[1] = {Id = 1401002,Val = 8740},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--夏侯惇魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 448,Sum = 2099},[2] = {Id = 112,Val = 224,Sum = 1050},[3] = {Id = 113,Val = 5327,Sum = 24974}},Cost = {[1] = {Id = 1401002,Val = 11240},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--夏侯惇魂珠-5 等级-9
				}
			},--夏侯惇专属武器魂珠-5
			[6] = {
				Id = 201206,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯惇魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 68},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 812,Sum = 812}},Cost = {[1] = {Id = 1401002,Val = 2905},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯惇魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 170},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 1217,Sum = 2029}},Cost = {[1] = {Id = 1401002,Val = 4360},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯惇魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 137,Sum = 307},[2] = {Id = 112,Val = 68,Sum = 154},[3] = {Id = 113,Val = 1623,Sum = 3652}},Cost = {[1] = {Id = 1401002,Val = 4840},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--夏侯惇魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 511},[2] = {Id = 112,Val = 102,Sum = 256},[3] = {Id = 113,Val = 2435,Sum = 6087}},Cost = {[1] = {Id = 1401002,Val = 6970},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯惇魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 783},[2] = {Id = 112,Val = 137,Sum = 393},[3] = {Id = 113,Val = 3246,Sum = 9333}},Cost = {[1] = {Id = 1401002,Val = 7080},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--夏侯惇魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1124},[2] = {Id = 112,Val = 170,Sum = 563},[3] = {Id = 113,Val = 4058,Sum = 13391}},Cost = {[1] = {Id = 1401002,Val = 9385},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--夏侯惇魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 409,Sum = 1533},[2] = {Id = 112,Val = 204,Sum = 767},[3] = {Id = 113,Val = 4868,Sum = 18259}},Cost = {[1] = {Id = 1401002,Val = 11760},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--夏侯惇魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 478,Sum = 2011},[2] = {Id = 112,Val = 239,Sum = 1006},[3] = {Id = 113,Val = 5679,Sum = 23938}},Cost = {[1] = {Id = 1401002,Val = 16445},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--夏侯惇魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 546,Sum = 2557},[2] = {Id = 112,Val = 272,Sum = 1278},[3] = {Id = 113,Val = 6491,Sum = 30429}},Cost = {[1] = {Id = 1401002,Val = 18800},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--夏侯惇魂珠-6 等级-9
				}
			},--夏侯惇专属武器魂珠-6
			[7] = {
				Id = 201207,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯惇魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 76},[2] = {Id = 112,Val = 37,Sum = 37},[3] = {Id = 113,Val = 897,Sum = 897}},Cost = {[1] = {Id = 1401002,Val = 5710},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--夏侯惇魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 189},[2] = {Id = 112,Val = 56,Sum = 93},[3] = {Id = 113,Val = 1347,Sum = 2244}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯惇魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 340},[2] = {Id = 112,Val = 76,Sum = 169},[3] = {Id = 113,Val = 1796,Sum = 4040}},Cost = {[1] = {Id = 1401002,Val = 7135},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯惇魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 567},[2] = {Id = 112,Val = 113,Sum = 282},[3] = {Id = 113,Val = 2693,Sum = 6733}},Cost = {[1] = {Id = 1401002,Val = 9130},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯惇魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 301,Sum = 868},[2] = {Id = 112,Val = 151,Sum = 433},[3] = {Id = 113,Val = 3590,Sum = 10323}},Cost = {[1] = {Id = 1401002,Val = 9275},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--夏侯惇魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1245},[2] = {Id = 112,Val = 188,Sum = 621},[3] = {Id = 113,Val = 4488,Sum = 14811}},Cost = {[1] = {Id = 1401002,Val = 11525},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--夏侯惇魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 452,Sum = 1697},[2] = {Id = 112,Val = 227,Sum = 848},[3] = {Id = 113,Val = 5385,Sum = 20196}},Cost = {[1] = {Id = 1401002,Val = 16170},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--夏侯惇魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 2225},[2] = {Id = 112,Val = 264,Sum = 1112},[3] = {Id = 113,Val = 6284,Sum = 26480}},Cost = {[1] = {Id = 1401002,Val = 18465},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--夏侯惇魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 604,Sum = 2829},[2] = {Id = 112,Val = 301,Sum = 1413},[3] = {Id = 113,Val = 7181,Sum = 33661}},Cost = {[1] = {Id = 1401002,Val = 23090},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--夏侯惇魂珠-7 等级-9
				}
			},--夏侯惇专属武器魂珠-7
			[8] = {
				Id = 201208,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--夏侯惇魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 79},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 941,Sum = 941}},Cost = {[1] = {Id = 1401002,Val = 4865},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--夏侯惇魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 198},[2] = {Id = 112,Val = 59,Sum = 99},[3] = {Id = 113,Val = 1410,Sum = 2351}},Cost = {[1] = {Id = 1401002,Val = 5835},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--夏侯惇魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 356},[2] = {Id = 112,Val = 79,Sum = 178},[3] = {Id = 113,Val = 1880,Sum = 4231}},Cost = {[1] = {Id = 1401002,Val = 8105},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--夏侯惇魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 238,Sum = 594},[2] = {Id = 112,Val = 119,Sum = 297},[3] = {Id = 113,Val = 2820,Sum = 7051}},Cost = {[1] = {Id = 1401002,Val = 9340},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--夏侯惇魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 316,Sum = 910},[2] = {Id = 112,Val = 158,Sum = 455},[3] = {Id = 113,Val = 3761,Sum = 10812}},Cost = {[1] = {Id = 1401002,Val = 11855},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--夏侯惇魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1305},[2] = {Id = 112,Val = 198,Sum = 653},[3] = {Id = 113,Val = 4700,Sum = 15512}},Cost = {[1] = {Id = 1401002,Val = 14145},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--夏侯惇魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 474,Sum = 1779},[2] = {Id = 112,Val = 238,Sum = 891},[3] = {Id = 113,Val = 5640,Sum = 21152}},Cost = {[1] = {Id = 1401002,Val = 19690},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--夏侯惇魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2332},[2] = {Id = 112,Val = 276,Sum = 1167},[3] = {Id = 113,Val = 6581,Sum = 27733}},Cost = {[1] = {Id = 1401002,Val = 23605},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--夏侯惇魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 632,Sum = 2964},[2] = {Id = 112,Val = 316,Sum = 1483},[3] = {Id = 113,Val = 7521,Sum = 35254}},Cost = {[1] = {Id = 1401002,Val = 23615},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--夏侯惇魂珠-8 等级-9
				}
			}--夏侯惇专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--夏侯惇专属武器解封-0
			[1] = {Pskill = {[1] = 130301211},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 36500},[2] = {Id = 1502012,Val = 80}}},--夏侯惇专属武器解封-1
			[2] = {Pskill = {[1] = 130301211},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 75500},[2] = {Id = 1502012,Val = 80}}},--夏侯惇专属武器解封-2
			[3] = {Pskill = {[1] = 130301211},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 168500},[2] = {Id = 1502012,Val = 120}}},--夏侯惇专属武器解封-3
			[4] = {Pskill = {[1] = 130301211},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 295500},[2] = {Id = 1502012,Val = 120}}},--夏侯惇专属武器解封-4
			[5] = {Pskill = {[1] = 130301211},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 732500},[2] = {Id = 1502012,Val = 160}}}--夏侯惇专属武器解封-5
		}
	},--夏侯惇专属武器
	[1102014] = {
		CardId = 1102014,
		Name = _T("镔铁盘龙棍"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501014",
		HunZhu = {
			[1] = {
				Id = 201401,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--石灵明魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 16,Sum = 16},[2] = {Id = 112,Val = 8,Sum = 8},[3] = {Id = 113,Val = 157,Sum = 157}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--石灵明魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 25,Sum = 41},[2] = {Id = 112,Val = 12,Sum = 20},[3] = {Id = 113,Val = 235,Sum = 392}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--石灵明魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 33,Sum = 74},[2] = {Id = 112,Val = 16,Sum = 36},[3] = {Id = 113,Val = 313,Sum = 705}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--石灵明魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 49,Sum = 123},[2] = {Id = 112,Val = 25,Sum = 61},[3] = {Id = 113,Val = 470,Sum = 1175}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--石灵明魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 189},[2] = {Id = 112,Val = 33,Sum = 94},[3] = {Id = 113,Val = 627,Sum = 1802}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--石灵明魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 82,Sum = 271},[2] = {Id = 112,Val = 41,Sum = 135},[3] = {Id = 113,Val = 784,Sum = 2586}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--石灵明魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 370},[2] = {Id = 112,Val = 49,Sum = 184},[3] = {Id = 113,Val = 940,Sum = 3526}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--石灵明魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 115,Sum = 485},[2] = {Id = 112,Val = 58,Sum = 242},[3] = {Id = 113,Val = 1097,Sum = 4623}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--石灵明魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 617},[2] = {Id = 112,Val = 66,Sum = 308},[3] = {Id = 113,Val = 1254,Sum = 5877}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--石灵明魂珠-1 等级-9
				}
			},--石灵明专属武器魂珠-1
			[2] = {
				Id = 201402,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--石灵明魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 26,Sum = 26},[2] = {Id = 112,Val = 13,Sum = 13},[3] = {Id = 113,Val = 248,Sum = 248}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--石灵明魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 39,Sum = 65},[2] = {Id = 112,Val = 20,Sum = 33},[3] = {Id = 113,Val = 372,Sum = 620}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--石灵明魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 52,Sum = 117},[2] = {Id = 112,Val = 26,Sum = 59},[3] = {Id = 113,Val = 496,Sum = 1116}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--石灵明魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 78,Sum = 195},[2] = {Id = 112,Val = 39,Sum = 98},[3] = {Id = 113,Val = 743,Sum = 1859}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--石灵明魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 104,Sum = 299},[2] = {Id = 112,Val = 52,Sum = 150},[3] = {Id = 113,Val = 991,Sum = 2850}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--石灵明魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 130,Sum = 429},[2] = {Id = 112,Val = 65,Sum = 215},[3] = {Id = 113,Val = 1239,Sum = 4089}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--石灵明魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 585},[2] = {Id = 112,Val = 78,Sum = 293},[3] = {Id = 113,Val = 1487,Sum = 5576}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--石灵明魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 182,Sum = 767},[2] = {Id = 112,Val = 91,Sum = 384},[3] = {Id = 113,Val = 1735,Sum = 7311}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--石灵明魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 975},[2] = {Id = 112,Val = 104,Sum = 488},[3] = {Id = 113,Val = 1983,Sum = 9294}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--石灵明魂珠-2 等级-9
				}
			},--石灵明专属武器魂珠-2
			[3] = {
				Id = 201403,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--石灵明魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 37,Sum = 37},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 350,Sum = 350}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--石灵明魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 55,Sum = 92},[2] = {Id = 112,Val = 28,Sum = 46},[3] = {Id = 113,Val = 526,Sum = 876}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--石灵明魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 166},[2] = {Id = 112,Val = 37,Sum = 83},[3] = {Id = 113,Val = 701,Sum = 1577}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--石灵明魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 276},[2] = {Id = 112,Val = 55,Sum = 138},[3] = {Id = 113,Val = 1051,Sum = 2628}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--石灵明魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 147,Sum = 423},[2] = {Id = 112,Val = 74,Sum = 212},[3] = {Id = 113,Val = 1402,Sum = 4030}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--石灵明魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 184,Sum = 607},[2] = {Id = 112,Val = 92,Sum = 304},[3] = {Id = 113,Val = 1752,Sum = 5782}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--石灵明魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 828},[2] = {Id = 112,Val = 110,Sum = 414},[3] = {Id = 113,Val = 2103,Sum = 7885}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--石灵明魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 258,Sum = 1086},[2] = {Id = 112,Val = 129,Sum = 543},[3] = {Id = 113,Val = 2453,Sum = 10338}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--石灵明魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 295,Sum = 1381},[2] = {Id = 112,Val = 147,Sum = 690},[3] = {Id = 113,Val = 2804,Sum = 13142}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--石灵明魂珠-3 等级-9
				}
			},--石灵明专属武器魂珠-3
			[4] = {
				Id = 201404,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--石灵明魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 38,Sum = 38},[2] = {Id = 112,Val = 19,Sum = 19},[3] = {Id = 113,Val = 360,Sum = 360}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--石灵明魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 95},[2] = {Id = 112,Val = 28,Sum = 47},[3] = {Id = 113,Val = 539,Sum = 899}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--石灵明魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 171},[2] = {Id = 112,Val = 38,Sum = 85},[3] = {Id = 113,Val = 719,Sum = 1618}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--石灵明魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 284},[2] = {Id = 112,Val = 57,Sum = 142},[3] = {Id = 113,Val = 1079,Sum = 2697}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--石灵明魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 435},[2] = {Id = 112,Val = 76,Sum = 218},[3] = {Id = 113,Val = 1438,Sum = 4135}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--石灵明魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 624},[2] = {Id = 112,Val = 94,Sum = 312},[3] = {Id = 113,Val = 1798,Sum = 5933}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--石灵明魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 851},[2] = {Id = 112,Val = 113,Sum = 425},[3] = {Id = 113,Val = 2157,Sum = 8090}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--石灵明魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 1115},[2] = {Id = 112,Val = 132,Sum = 557},[3] = {Id = 113,Val = 2517,Sum = 10607}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--石灵明魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 302,Sum = 1417},[2] = {Id = 112,Val = 151,Sum = 708},[3] = {Id = 113,Val = 2876,Sum = 13483}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--石灵明魂珠-4 等级-9
				}
			},--石灵明专属武器魂珠-4
			[5] = {
				Id = 201405,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--石灵明魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 47},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 444,Sum = 444}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--石灵明魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 70,Sum = 117},[2] = {Id = 112,Val = 35,Sum = 58},[3] = {Id = 113,Val = 666,Sum = 1110}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--石灵明魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 93,Sum = 210},[2] = {Id = 112,Val = 47,Sum = 105},[3] = {Id = 113,Val = 888,Sum = 1998}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--石灵明魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 350},[2] = {Id = 112,Val = 70,Sum = 175},[3] = {Id = 113,Val = 1332,Sum = 3330}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--石灵明魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 537},[2] = {Id = 112,Val = 93,Sum = 268},[3] = {Id = 113,Val = 1776,Sum = 5106}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--石灵明魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 233,Sum = 770},[2] = {Id = 112,Val = 117,Sum = 385},[3] = {Id = 113,Val = 2220,Sum = 7326}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--石灵明魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 1050},[2] = {Id = 112,Val = 140,Sum = 525},[3] = {Id = 113,Val = 2664,Sum = 9990}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--石灵明魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 326,Sum = 1376},[2] = {Id = 112,Val = 163,Sum = 688},[3] = {Id = 113,Val = 3108,Sum = 13098}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--石灵明魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 373,Sum = 1749},[2] = {Id = 112,Val = 187,Sum = 875},[3] = {Id = 113,Val = 3551,Sum = 16649}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--石灵明魂珠-5 等级-9
				}
			},--石灵明专属武器魂珠-5
			[6] = {
				Id = 201406,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--石灵明魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 57},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 541,Sum = 541}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--石灵明魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 85,Sum = 142},[2] = {Id = 112,Val = 43,Sum = 71},[3] = {Id = 113,Val = 811,Sum = 1352}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--石灵明魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 114,Sum = 256},[2] = {Id = 112,Val = 57,Sum = 128},[3] = {Id = 113,Val = 1082,Sum = 2434}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--石灵明魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 426},[2] = {Id = 112,Val = 85,Sum = 213},[3] = {Id = 113,Val = 1623,Sum = 4057}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--石灵明魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 653},[2] = {Id = 112,Val = 114,Sum = 327},[3] = {Id = 113,Val = 2164,Sum = 6221}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--石灵明魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 937},[2] = {Id = 112,Val = 142,Sum = 469},[3] = {Id = 113,Val = 2705,Sum = 8926}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--石灵明魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1278},[2] = {Id = 112,Val = 170,Sum = 639},[3] = {Id = 113,Val = 3245,Sum = 12171}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--石灵明魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 398,Sum = 1676},[2] = {Id = 112,Val = 199,Sum = 838},[3] = {Id = 113,Val = 3786,Sum = 15957}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--石灵明魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 455,Sum = 2131},[2] = {Id = 112,Val = 227,Sum = 1065},[3] = {Id = 113,Val = 4327,Sum = 20284}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--石灵明魂珠-6 等级-9
				}
			},--石灵明专属武器魂珠-6
			[7] = {
				Id = 201407,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--石灵明魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 598,Sum = 598}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--石灵明魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 157},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 898,Sum = 1496}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--石灵明魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 283},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1197,Sum = 2693}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--石灵明魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 472},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1795,Sum = 4488}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--石灵明魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 251,Sum = 723},[2] = {Id = 112,Val = 126,Sum = 361},[3] = {Id = 113,Val = 2393,Sum = 6881}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--石灵明魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 314,Sum = 1037},[2] = {Id = 112,Val = 157,Sum = 518},[3] = {Id = 113,Val = 2992,Sum = 9873}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--石灵明魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1414},[2] = {Id = 112,Val = 189,Sum = 707},[3] = {Id = 113,Val = 3590,Sum = 13463}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--石灵明魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1854},[2] = {Id = 112,Val = 220,Sum = 927},[3] = {Id = 113,Val = 4189,Sum = 17652}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--石灵明魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 503,Sum = 2357},[2] = {Id = 112,Val = 251,Sum = 1178},[3] = {Id = 113,Val = 4787,Sum = 22439}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--石灵明魂珠-7 等级-9
				}
			},--石灵明专属武器魂珠-7
			[8] = {
				Id = 201408,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--石灵明魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 66},[2] = {Id = 112,Val = 33,Sum = 33},[3] = {Id = 113,Val = 627,Sum = 627}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--石灵明魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 165},[2] = {Id = 112,Val = 49,Sum = 82},[3] = {Id = 113,Val = 940,Sum = 1567}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--石灵明魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 297},[2] = {Id = 112,Val = 66,Sum = 148},[3] = {Id = 113,Val = 1253,Sum = 2820}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--石灵明魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 495},[2] = {Id = 112,Val = 99,Sum = 247},[3] = {Id = 113,Val = 1880,Sum = 4700}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--石灵明魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 263,Sum = 758},[2] = {Id = 112,Val = 132,Sum = 379},[3] = {Id = 113,Val = 2507,Sum = 7207}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--石灵明魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 329,Sum = 1087},[2] = {Id = 112,Val = 165,Sum = 544},[3] = {Id = 113,Val = 3133,Sum = 10340}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--石灵明魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1482},[2] = {Id = 112,Val = 198,Sum = 742},[3] = {Id = 113,Val = 3760,Sum = 14100}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--石灵明魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 461,Sum = 1943},[2] = {Id = 112,Val = 230,Sum = 972},[3] = {Id = 113,Val = 4387,Sum = 18487}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--石灵明魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 527,Sum = 2470},[2] = {Id = 112,Val = 263,Sum = 1235},[3] = {Id = 113,Val = 5014,Sum = 23501}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--石灵明魂珠-8 等级-9
				}
			}--石灵明专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--石灵明专属武器解封-0
			[1] = {Pskill = {[1] = 130301411},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 22000},[2] = {Id = 1502014,Val = 40}}},--石灵明专属武器解封-1
			[2] = {Pskill = {[1] = 130301411},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 45000},[2] = {Id = 1502014,Val = 40}}},--石灵明专属武器解封-2
			[3] = {Pskill = {[1] = 130301411},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 101000},[2] = {Id = 1502014,Val = 60}}},--石灵明专属武器解封-3
			[4] = {Pskill = {[1] = 130301411},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 177500},[2] = {Id = 1502014,Val = 60}}},--石灵明专属武器解封-4
			[5] = {Pskill = {[1] = 130301411},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 439500},[2] = {Id = 1502014,Val = 80}}}--石灵明专属武器解封-5
		}
	},--石灵明专属武器
	[1102016] = {
		CardId = 1102016,
		Name = _T("诸神的裁决"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501016",
		HunZhu = {
			[1] = {
				Id = 201601,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--西方龙魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 18,Sum = 18},[2] = {Id = 112,Val = 10,Sum = 10},[3] = {Id = 113,Val = 212,Sum = 212}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--西方龙魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 28,Sum = 46},[2] = {Id = 112,Val = 14,Sum = 24},[3] = {Id = 113,Val = 317,Sum = 529}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--西方龙魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 36,Sum = 82},[2] = {Id = 112,Val = 19,Sum = 43},[3] = {Id = 113,Val = 423,Sum = 952}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--西方龙魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 54,Sum = 136},[2] = {Id = 112,Val = 30,Sum = 73},[3] = {Id = 113,Val = 635,Sum = 1587}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--西方龙魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 73,Sum = 209},[2] = {Id = 112,Val = 40,Sum = 113},[3] = {Id = 113,Val = 846,Sum = 2433}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--西方龙魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 299},[2] = {Id = 112,Val = 49,Sum = 162},[3] = {Id = 113,Val = 1058,Sum = 3491}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--西方龙魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 109,Sum = 408},[2] = {Id = 112,Val = 59,Sum = 221},[3] = {Id = 113,Val = 1269,Sum = 4760}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--西方龙魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 127,Sum = 535},[2] = {Id = 112,Val = 70,Sum = 291},[3] = {Id = 113,Val = 1481,Sum = 6241}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--西方龙魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 145,Sum = 680},[2] = {Id = 112,Val = 79,Sum = 370},[3] = {Id = 113,Val = 1693,Sum = 7934}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--西方龙魂珠-1 等级-9
				}
			},--西方龙专属武器魂珠-1
			[2] = {
				Id = 201602,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--西方龙魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 29,Sum = 29},[2] = {Id = 112,Val = 16,Sum = 16},[3] = {Id = 113,Val = 335,Sum = 335}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--西方龙魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 43,Sum = 72},[2] = {Id = 112,Val = 24,Sum = 40},[3] = {Id = 113,Val = 502,Sum = 837}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--西方龙魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 129},[2] = {Id = 112,Val = 31,Sum = 71},[3] = {Id = 113,Val = 670,Sum = 1507}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--西方龙魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 86,Sum = 215},[2] = {Id = 112,Val = 47,Sum = 118},[3] = {Id = 113,Val = 1003,Sum = 2510}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--西方龙魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 114,Sum = 329},[2] = {Id = 112,Val = 62,Sum = 180},[3] = {Id = 113,Val = 1338,Sum = 3848}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--西方龙魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 143,Sum = 472},[2] = {Id = 112,Val = 78,Sum = 258},[3] = {Id = 113,Val = 1673,Sum = 5521}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--西方龙魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 172,Sum = 644},[2] = {Id = 112,Val = 94,Sum = 352},[3] = {Id = 113,Val = 2007,Sum = 7528}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--西方龙魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 844},[2] = {Id = 112,Val = 109,Sum = 461},[3] = {Id = 113,Val = 2342,Sum = 9870}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--西方龙魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 229,Sum = 1073},[2] = {Id = 112,Val = 125,Sum = 586},[3] = {Id = 113,Val = 2677,Sum = 12547}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--西方龙魂珠-2 等级-9
				}
			},--西方龙专属武器魂珠-2
			[3] = {
				Id = 201603,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--西方龙魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 41,Sum = 41},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 473,Sum = 473}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--西方龙魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 61,Sum = 102},[2] = {Id = 112,Val = 34,Sum = 56},[3] = {Id = 113,Val = 710,Sum = 1183}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--西方龙魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 81,Sum = 183},[2] = {Id = 112,Val = 44,Sum = 100},[3] = {Id = 113,Val = 946,Sum = 2129}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--西方龙魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 121,Sum = 304},[2] = {Id = 112,Val = 66,Sum = 166},[3] = {Id = 113,Val = 1419,Sum = 3548}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--西方龙魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 466},[2] = {Id = 112,Val = 89,Sum = 255},[3] = {Id = 113,Val = 1893,Sum = 5441}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--西方龙魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 202,Sum = 668},[2] = {Id = 112,Val = 110,Sum = 365},[3] = {Id = 113,Val = 2365,Sum = 7806}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--西方龙魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 243,Sum = 911},[2] = {Id = 112,Val = 132,Sum = 497},[3] = {Id = 113,Val = 2839,Sum = 10645}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--西方龙魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 1195},[2] = {Id = 112,Val = 155,Sum = 652},[3] = {Id = 113,Val = 3312,Sum = 13957}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--西方龙魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 325,Sum = 1520},[2] = {Id = 112,Val = 176,Sum = 828},[3] = {Id = 113,Val = 3785,Sum = 17742}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--西方龙魂珠-3 等级-9
				}
			},--西方龙专属武器魂珠-3
			[4] = {
				Id = 201604,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--西方龙魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 42,Sum = 42},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 486,Sum = 486}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--西方龙魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 105},[2] = {Id = 112,Val = 34,Sum = 57},[3] = {Id = 113,Val = 728,Sum = 1214}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--西方龙魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 189},[2] = {Id = 112,Val = 46,Sum = 103},[3] = {Id = 113,Val = 971,Sum = 2185}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--西方龙魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 124,Sum = 313},[2] = {Id = 112,Val = 68,Sum = 171},[3] = {Id = 113,Val = 1457,Sum = 3642}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--西方龙魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 166,Sum = 479},[2] = {Id = 112,Val = 91,Sum = 262},[3] = {Id = 113,Val = 1941,Sum = 5583}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--西方龙魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 687},[2] = {Id = 112,Val = 113,Sum = 375},[3] = {Id = 113,Val = 2427,Sum = 8010}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--西方龙魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 937},[2] = {Id = 112,Val = 136,Sum = 511},[3] = {Id = 113,Val = 2912,Sum = 10922}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--西方龙魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 290,Sum = 1227},[2] = {Id = 112,Val = 158,Sum = 669},[3] = {Id = 113,Val = 3398,Sum = 14320}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--西方龙魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 332,Sum = 1559},[2] = {Id = 112,Val = 181,Sum = 850},[3] = {Id = 113,Val = 3883,Sum = 18203}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--西方龙魂珠-4 等级-9
				}
			},--西方龙专属武器魂珠-4
			[5] = {
				Id = 201605,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--西方龙魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 52,Sum = 52},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 599,Sum = 599}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--西方龙魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 129},[2] = {Id = 112,Val = 42,Sum = 70},[3] = {Id = 113,Val = 899,Sum = 1498}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--西方龙魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 231},[2] = {Id = 112,Val = 56,Sum = 126},[3] = {Id = 113,Val = 1199,Sum = 2697}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--西方龙魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 385},[2] = {Id = 112,Val = 84,Sum = 210},[3] = {Id = 113,Val = 1798,Sum = 4495}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--西方龙魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 206,Sum = 591},[2] = {Id = 112,Val = 112,Sum = 322},[3] = {Id = 113,Val = 2398,Sum = 6893}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--西方龙魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 256,Sum = 847},[2] = {Id = 112,Val = 140,Sum = 462},[3] = {Id = 113,Val = 2997,Sum = 9890}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--西方龙魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 1155},[2] = {Id = 112,Val = 168,Sum = 630},[3] = {Id = 113,Val = 3596,Sum = 13486}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--西方龙魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 359,Sum = 1514},[2] = {Id = 112,Val = 196,Sum = 826},[3] = {Id = 113,Val = 4196,Sum = 17682}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--西方龙魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 410,Sum = 1924},[2] = {Id = 112,Val = 224,Sum = 1050},[3] = {Id = 113,Val = 4794,Sum = 22476}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--西方龙魂珠-5 等级-9
				}
			},--西方龙专属武器魂珠-5
			[6] = {
				Id = 201606,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--西方龙魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 730,Sum = 730}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--西方龙魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 157},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 1095,Sum = 1825}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--西方龙魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 282},[2] = {Id = 112,Val = 68,Sum = 154},[3] = {Id = 113,Val = 1461,Sum = 3286}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--西方龙魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 469},[2] = {Id = 112,Val = 102,Sum = 256},[3] = {Id = 113,Val = 2191,Sum = 5477}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--西方龙魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 719},[2] = {Id = 112,Val = 137,Sum = 393},[3] = {Id = 113,Val = 2921,Sum = 8398}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--西方龙魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 1031},[2] = {Id = 112,Val = 170,Sum = 563},[3] = {Id = 113,Val = 3652,Sum = 12050}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--西方龙魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 375,Sum = 1406},[2] = {Id = 112,Val = 204,Sum = 767},[3] = {Id = 113,Val = 4381,Sum = 16431}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--西方龙魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 438,Sum = 1844},[2] = {Id = 112,Val = 239,Sum = 1006},[3] = {Id = 113,Val = 5111,Sum = 21542}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--西方龙魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 501,Sum = 2345},[2] = {Id = 112,Val = 272,Sum = 1278},[3] = {Id = 113,Val = 5841,Sum = 27383}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--西方龙魂珠-6 等级-9
				}
			},--西方龙专属武器魂珠-6
			[7] = {
				Id = 201607,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--西方龙魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 69,Sum = 69},[2] = {Id = 112,Val = 37,Sum = 37},[3] = {Id = 113,Val = 807,Sum = 807}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--西方龙魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 103,Sum = 172},[2] = {Id = 112,Val = 56,Sum = 93},[3] = {Id = 113,Val = 1212,Sum = 2019}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--西方龙魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 139,Sum = 311},[2] = {Id = 112,Val = 76,Sum = 169},[3] = {Id = 113,Val = 1616,Sum = 3635}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--西方龙魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 519},[2] = {Id = 112,Val = 113,Sum = 282},[3] = {Id = 113,Val = 2423,Sum = 6058}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--西方龙魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 276,Sum = 795},[2] = {Id = 112,Val = 151,Sum = 433},[3] = {Id = 113,Val = 3231,Sum = 9289}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--西方龙魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 345,Sum = 1140},[2] = {Id = 112,Val = 188,Sum = 621},[3] = {Id = 113,Val = 4039,Sum = 13328}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--西方龙魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 415,Sum = 1555},[2] = {Id = 112,Val = 227,Sum = 848},[3] = {Id = 113,Val = 4847,Sum = 18175}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--西方龙魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 484,Sum = 2039},[2] = {Id = 112,Val = 264,Sum = 1112},[3] = {Id = 113,Val = 5655,Sum = 23830}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--西方龙魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2592},[2] = {Id = 112,Val = 301,Sum = 1413},[3] = {Id = 113,Val = 6462,Sum = 30292}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--西方龙魂珠-7 等级-9
				}
			},--西方龙专属武器魂珠-7
			[8] = {
				Id = 201608,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--西方龙魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 73,Sum = 73},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 846,Sum = 846}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--西方龙魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 109,Sum = 182},[2] = {Id = 112,Val = 59,Sum = 99},[3] = {Id = 113,Val = 1269,Sum = 2115}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--西方龙魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 145,Sum = 327},[2] = {Id = 112,Val = 79,Sum = 178},[3] = {Id = 113,Val = 1692,Sum = 3807}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--西方龙魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 545},[2] = {Id = 112,Val = 119,Sum = 297},[3] = {Id = 113,Val = 2538,Sum = 6345}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--西方龙魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 289,Sum = 834},[2] = {Id = 112,Val = 158,Sum = 455},[3] = {Id = 113,Val = 3384,Sum = 9729}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--西方龙魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1196},[2] = {Id = 112,Val = 198,Sum = 653},[3] = {Id = 113,Val = 4230,Sum = 13959}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--西方龙魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 435,Sum = 1631},[2] = {Id = 112,Val = 238,Sum = 891},[3] = {Id = 113,Val = 5076,Sum = 19035}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--西方龙魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 507,Sum = 2138},[2] = {Id = 112,Val = 276,Sum = 1167},[3] = {Id = 113,Val = 5922,Sum = 24957}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--西方龙魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 580,Sum = 2718},[2] = {Id = 112,Val = 316,Sum = 1483},[3] = {Id = 113,Val = 6769,Sum = 31726}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--西方龙魂珠-8 等级-9
				}
			}--西方龙专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--西方龙专属武器解封-0
			[1] = {Pskill = {[1] = 130301611},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 25500},[2] = {Id = 1502016,Val = 80}}},--西方龙专属武器解封-1
			[2] = {Pskill = {[1] = 130301611},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 52500},[2] = {Id = 1502016,Val = 80}}},--西方龙专属武器解封-2
			[3] = {Pskill = {[1] = 130301611},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 118000},[2] = {Id = 1502016,Val = 120}}},--西方龙专属武器解封-3
			[4] = {Pskill = {[1] = 130301611},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 207000},[2] = {Id = 1502016,Val = 120}}},--西方龙专属武器解封-4
			[5] = {Pskill = {[1] = 130301611},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 512500},[2] = {Id = 1502016,Val = 160}}}--西方龙专属武器解封-5
		}
	},--西方龙专属武器
	[1102017] = {
		CardId = 1102017,
		Name = _T("黑色死神"),
		Quality = 3,
		Icon = "ui_dtex_Equip_1501017",
		HunZhu = {
			[1] = {
				Id = 201701,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--飞廉魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 22,Sum = 22},[2] = {Id = 112,Val = 8,Sum = 8},[3] = {Id = 113,Val = 157,Sum = 157}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--飞廉魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 34,Sum = 56},[2] = {Id = 112,Val = 12,Sum = 20},[3] = {Id = 113,Val = 235,Sum = 392}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--飞廉魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 45,Sum = 101},[2] = {Id = 112,Val = 16,Sum = 36},[3] = {Id = 113,Val = 313,Sum = 705}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--飞廉魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 167},[2] = {Id = 112,Val = 25,Sum = 61},[3] = {Id = 113,Val = 470,Sum = 1175}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--飞廉魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 256},[2] = {Id = 112,Val = 33,Sum = 94},[3] = {Id = 113,Val = 627,Sum = 1802}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--飞廉魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 111,Sum = 367},[2] = {Id = 112,Val = 41,Sum = 135},[3] = {Id = 113,Val = 784,Sum = 2586}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--飞廉魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 134,Sum = 501},[2] = {Id = 112,Val = 49,Sum = 184},[3] = {Id = 113,Val = 940,Sum = 3526}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--飞廉魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 155,Sum = 656},[2] = {Id = 112,Val = 58,Sum = 242},[3] = {Id = 113,Val = 1097,Sum = 4623}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--飞廉魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 178,Sum = 834},[2] = {Id = 112,Val = 66,Sum = 308},[3] = {Id = 113,Val = 1254,Sum = 5877}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--飞廉魂珠-1 等级-9
				}
			},--飞廉专属武器魂珠-1
			[2] = {
				Id = 201702,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--飞廉魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 35,Sum = 35},[2] = {Id = 112,Val = 13,Sum = 13},[3] = {Id = 113,Val = 248,Sum = 248}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--飞廉魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 53,Sum = 88},[2] = {Id = 112,Val = 20,Sum = 33},[3] = {Id = 113,Val = 372,Sum = 620}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--飞廉魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 70,Sum = 158},[2] = {Id = 112,Val = 26,Sum = 59},[3] = {Id = 113,Val = 496,Sum = 1116}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--飞廉魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 105,Sum = 263},[2] = {Id = 112,Val = 39,Sum = 98},[3] = {Id = 113,Val = 743,Sum = 1859}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--飞廉魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 403},[2] = {Id = 112,Val = 52,Sum = 150},[3] = {Id = 113,Val = 991,Sum = 2850}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--飞廉魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 579},[2] = {Id = 112,Val = 65,Sum = 215},[3] = {Id = 113,Val = 1239,Sum = 4089}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--飞廉魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 211,Sum = 790},[2] = {Id = 112,Val = 78,Sum = 293},[3] = {Id = 113,Val = 1487,Sum = 5576}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--飞廉魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 246,Sum = 1036},[2] = {Id = 112,Val = 91,Sum = 384},[3] = {Id = 113,Val = 1735,Sum = 7311}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--飞廉魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 281,Sum = 1317},[2] = {Id = 112,Val = 104,Sum = 488},[3] = {Id = 113,Val = 1983,Sum = 9294}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--飞廉魂珠-2 等级-9
				}
			},--飞廉专属武器魂珠-2
			[3] = {
				Id = 201703,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--飞廉魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 50},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 350,Sum = 350}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--飞廉魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 124},[2] = {Id = 112,Val = 28,Sum = 46},[3] = {Id = 113,Val = 526,Sum = 876}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--飞廉魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 224},[2] = {Id = 112,Val = 37,Sum = 83},[3] = {Id = 113,Val = 701,Sum = 1577}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--飞廉魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 149,Sum = 373},[2] = {Id = 112,Val = 55,Sum = 138},[3] = {Id = 113,Val = 1051,Sum = 2628}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--飞廉魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 571},[2] = {Id = 112,Val = 74,Sum = 212},[3] = {Id = 113,Val = 1402,Sum = 4030}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--飞廉魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 248,Sum = 819},[2] = {Id = 112,Val = 92,Sum = 304},[3] = {Id = 113,Val = 1752,Sum = 5782}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--飞廉魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 298,Sum = 1117},[2] = {Id = 112,Val = 110,Sum = 414},[3] = {Id = 113,Val = 2103,Sum = 7885}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--飞廉魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 348,Sum = 1465},[2] = {Id = 112,Val = 129,Sum = 543},[3] = {Id = 113,Val = 2453,Sum = 10338}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--飞廉魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 398,Sum = 1863},[2] = {Id = 112,Val = 147,Sum = 690},[3] = {Id = 113,Val = 2804,Sum = 13142}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--飞廉魂珠-3 等级-9
				}
			},--飞廉专属武器魂珠-3
			[4] = {
				Id = 201704,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--飞廉魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 51,Sum = 51},[2] = {Id = 112,Val = 19,Sum = 19},[3] = {Id = 113,Val = 360,Sum = 360}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--飞廉魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 128},[2] = {Id = 112,Val = 28,Sum = 47},[3] = {Id = 113,Val = 539,Sum = 899}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--飞廉魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 103,Sum = 231},[2] = {Id = 112,Val = 38,Sum = 85},[3] = {Id = 113,Val = 719,Sum = 1618}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--飞廉魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 153,Sum = 384},[2] = {Id = 112,Val = 57,Sum = 142},[3] = {Id = 113,Val = 1079,Sum = 2697}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--飞廉魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 588},[2] = {Id = 112,Val = 76,Sum = 218},[3] = {Id = 113,Val = 1438,Sum = 4135}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--飞廉魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 255,Sum = 843},[2] = {Id = 112,Val = 94,Sum = 312},[3] = {Id = 113,Val = 1798,Sum = 5933}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--飞廉魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 306,Sum = 1149},[2] = {Id = 112,Val = 113,Sum = 425},[3] = {Id = 113,Val = 2157,Sum = 8090}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--飞廉魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 356,Sum = 1505},[2] = {Id = 112,Val = 132,Sum = 557},[3] = {Id = 113,Val = 2517,Sum = 10607}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--飞廉魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 408,Sum = 1913},[2] = {Id = 112,Val = 151,Sum = 708},[3] = {Id = 113,Val = 2876,Sum = 13483}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--飞廉魂珠-4 等级-9
				}
			},--飞廉专属武器魂珠-4
			[5] = {
				Id = 201705,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--飞廉魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 444,Sum = 444}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--飞廉魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 95,Sum = 158},[2] = {Id = 112,Val = 35,Sum = 58},[3] = {Id = 113,Val = 666,Sum = 1110}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--飞廉魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 284},[2] = {Id = 112,Val = 47,Sum = 105},[3] = {Id = 113,Val = 888,Sum = 1998}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--飞廉魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 473},[2] = {Id = 112,Val = 70,Sum = 175},[3] = {Id = 113,Val = 1332,Sum = 3330}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--飞廉魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 725},[2] = {Id = 112,Val = 93,Sum = 268},[3] = {Id = 113,Val = 1776,Sum = 5106}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--飞廉魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 315,Sum = 1040},[2] = {Id = 112,Val = 117,Sum = 385},[3] = {Id = 113,Val = 2220,Sum = 7326}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--飞廉魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1418},[2] = {Id = 112,Val = 140,Sum = 525},[3] = {Id = 113,Val = 2664,Sum = 9990}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--飞廉魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1858},[2] = {Id = 112,Val = 163,Sum = 688},[3] = {Id = 113,Val = 3108,Sum = 13098}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--飞廉魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 2362},[2] = {Id = 112,Val = 187,Sum = 875},[3] = {Id = 113,Val = 3551,Sum = 16649}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--飞廉魂珠-5 等级-9
				}
			},--飞廉专属武器魂珠-5
			[6] = {
				Id = 201706,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--飞廉魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 77},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 541,Sum = 541}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--飞廉魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 115,Sum = 192},[2] = {Id = 112,Val = 43,Sum = 71},[3] = {Id = 113,Val = 811,Sum = 1352}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--飞廉魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 346},[2] = {Id = 112,Val = 57,Sum = 128},[3] = {Id = 113,Val = 1082,Sum = 2434}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--飞廉魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 230,Sum = 576},[2] = {Id = 112,Val = 85,Sum = 213},[3] = {Id = 113,Val = 1623,Sum = 4057}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--飞廉魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 306,Sum = 882},[2] = {Id = 112,Val = 114,Sum = 327},[3] = {Id = 113,Val = 2164,Sum = 6221}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--飞廉魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 383,Sum = 1265},[2] = {Id = 112,Val = 142,Sum = 469},[3] = {Id = 113,Val = 2705,Sum = 8926}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--飞廉魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 460,Sum = 1725},[2] = {Id = 112,Val = 170,Sum = 639},[3] = {Id = 113,Val = 3245,Sum = 12171}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--飞廉魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 537,Sum = 2262},[2] = {Id = 112,Val = 199,Sum = 838},[3] = {Id = 113,Val = 3786,Sum = 15957}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--飞廉魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 614,Sum = 2876},[2] = {Id = 112,Val = 227,Sum = 1065},[3] = {Id = 113,Val = 4327,Sum = 20284}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--飞廉魂珠-6 等级-9
				}
			},--飞廉专属武器魂珠-6
			[7] = {
				Id = 201707,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--飞廉魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 85,Sum = 85},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 598,Sum = 598}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--飞廉魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 127,Sum = 212},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 898,Sum = 1496}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--飞廉魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 382},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1197,Sum = 2693}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--飞廉魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 255,Sum = 637},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1795,Sum = 4488}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--飞廉魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 339,Sum = 976},[2] = {Id = 112,Val = 126,Sum = 361},[3] = {Id = 113,Val = 2393,Sum = 6881}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--飞廉魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 424,Sum = 1400},[2] = {Id = 112,Val = 157,Sum = 518},[3] = {Id = 113,Val = 2992,Sum = 9873}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--飞廉魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 509,Sum = 1909},[2] = {Id = 112,Val = 189,Sum = 707},[3] = {Id = 113,Val = 3590,Sum = 13463}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--飞廉魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 594,Sum = 2503},[2] = {Id = 112,Val = 220,Sum = 927},[3] = {Id = 113,Val = 4189,Sum = 17652}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--飞廉魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 679,Sum = 3182},[2] = {Id = 112,Val = 251,Sum = 1178},[3] = {Id = 113,Val = 4787,Sum = 22439}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--飞廉魂珠-7 等级-9
				}
			},--飞廉专属武器魂珠-7
			[8] = {
				Id = 201708,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--飞廉魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 89},[2] = {Id = 112,Val = 33,Sum = 33},[3] = {Id = 113,Val = 627,Sum = 627}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--飞廉魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 134,Sum = 223},[2] = {Id = 112,Val = 49,Sum = 82},[3] = {Id = 113,Val = 940,Sum = 1567}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--飞廉魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 178,Sum = 401},[2] = {Id = 112,Val = 66,Sum = 148},[3] = {Id = 113,Val = 1253,Sum = 2820}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--飞廉魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 267,Sum = 668},[2] = {Id = 112,Val = 99,Sum = 247},[3] = {Id = 113,Val = 1880,Sum = 4700}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--飞廉魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 355,Sum = 1023},[2] = {Id = 112,Val = 132,Sum = 379},[3] = {Id = 113,Val = 2507,Sum = 7207}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--飞廉魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 444,Sum = 1467},[2] = {Id = 112,Val = 165,Sum = 544},[3] = {Id = 113,Val = 3133,Sum = 10340}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--飞廉魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 533,Sum = 2000},[2] = {Id = 112,Val = 198,Sum = 742},[3] = {Id = 113,Val = 3760,Sum = 14100}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--飞廉魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 622,Sum = 2622},[2] = {Id = 112,Val = 230,Sum = 972},[3] = {Id = 113,Val = 4387,Sum = 18487}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--飞廉魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 711,Sum = 3333},[2] = {Id = 112,Val = 263,Sum = 1235},[3] = {Id = 113,Val = 5014,Sum = 23501}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--飞廉魂珠-8 等级-9
				}
			}--飞廉专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--飞廉专属武器解封-0
			[1] = {Pskill = {[1] = 130301711},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 18500},[2] = {Id = 1502017,Val = 40}}},--飞廉专属武器解封-1
			[2] = {Pskill = {[1] = 130301711},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 37500},[2] = {Id = 1502017,Val = 40}}},--飞廉专属武器解封-2
			[3] = {Pskill = {[1] = 130301711},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 84000},[2] = {Id = 1502017,Val = 60}}},--飞廉专属武器解封-3
			[4] = {Pskill = {[1] = 130301711},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 148000},[2] = {Id = 1502017,Val = 60}}},--飞廉专属武器解封-4
			[5] = {Pskill = {[1] = 130301711},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 366000},[2] = {Id = 1502017,Val = 80}}}--飞廉专属武器解封-5
		}
	},--飞廉专属武器
	[1102020] = {
		CardId = 1102020,
		Name = _T("百战陷阵枪"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501020",
		HunZhu = {
			[1] = {
				Id = 202001,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--高顺魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 18,Sum = 18},[2] = {Id = 112,Val = 8,Sum = 8},[3] = {Id = 113,Val = 157,Sum = 157}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--高顺魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 28,Sum = 46},[2] = {Id = 112,Val = 12,Sum = 20},[3] = {Id = 113,Val = 235,Sum = 392}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--高顺魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 36,Sum = 82},[2] = {Id = 112,Val = 16,Sum = 36},[3] = {Id = 113,Val = 313,Sum = 705}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--高顺魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 54,Sum = 136},[2] = {Id = 112,Val = 25,Sum = 61},[3] = {Id = 113,Val = 470,Sum = 1175}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--高顺魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 73,Sum = 209},[2] = {Id = 112,Val = 33,Sum = 94},[3] = {Id = 113,Val = 627,Sum = 1802}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--高顺魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 299},[2] = {Id = 112,Val = 41,Sum = 135},[3] = {Id = 113,Val = 784,Sum = 2586}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--高顺魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 109,Sum = 408},[2] = {Id = 112,Val = 49,Sum = 184},[3] = {Id = 113,Val = 940,Sum = 3526}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--高顺魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 127,Sum = 535},[2] = {Id = 112,Val = 58,Sum = 242},[3] = {Id = 113,Val = 1097,Sum = 4623}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--高顺魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 145,Sum = 680},[2] = {Id = 112,Val = 66,Sum = 308},[3] = {Id = 113,Val = 1254,Sum = 5877}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--高顺魂珠-1 等级-9
				}
			},--高顺专属武器魂珠-1
			[2] = {
				Id = 202002,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--高顺魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 29,Sum = 29},[2] = {Id = 112,Val = 13,Sum = 13},[3] = {Id = 113,Val = 248,Sum = 248}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--高顺魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 43,Sum = 72},[2] = {Id = 112,Val = 20,Sum = 33},[3] = {Id = 113,Val = 372,Sum = 620}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--高顺魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 129},[2] = {Id = 112,Val = 26,Sum = 59},[3] = {Id = 113,Val = 496,Sum = 1116}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--高顺魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 86,Sum = 215},[2] = {Id = 112,Val = 39,Sum = 98},[3] = {Id = 113,Val = 743,Sum = 1859}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--高顺魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 114,Sum = 329},[2] = {Id = 112,Val = 52,Sum = 150},[3] = {Id = 113,Val = 991,Sum = 2850}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--高顺魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 143,Sum = 472},[2] = {Id = 112,Val = 65,Sum = 215},[3] = {Id = 113,Val = 1239,Sum = 4089}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--高顺魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 172,Sum = 644},[2] = {Id = 112,Val = 78,Sum = 293},[3] = {Id = 113,Val = 1487,Sum = 5576}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--高顺魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 844},[2] = {Id = 112,Val = 91,Sum = 384},[3] = {Id = 113,Val = 1735,Sum = 7311}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--高顺魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 229,Sum = 1073},[2] = {Id = 112,Val = 104,Sum = 488},[3] = {Id = 113,Val = 1983,Sum = 9294}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--高顺魂珠-2 等级-9
				}
			},--高顺专属武器魂珠-2
			[3] = {
				Id = 202003,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--高顺魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 41,Sum = 41},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 350,Sum = 350}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--高顺魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 61,Sum = 102},[2] = {Id = 112,Val = 28,Sum = 46},[3] = {Id = 113,Val = 526,Sum = 876}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--高顺魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 81,Sum = 183},[2] = {Id = 112,Val = 37,Sum = 83},[3] = {Id = 113,Val = 701,Sum = 1577}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--高顺魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 121,Sum = 304},[2] = {Id = 112,Val = 55,Sum = 138},[3] = {Id = 113,Val = 1051,Sum = 2628}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--高顺魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 466},[2] = {Id = 112,Val = 74,Sum = 212},[3] = {Id = 113,Val = 1402,Sum = 4030}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--高顺魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 202,Sum = 668},[2] = {Id = 112,Val = 92,Sum = 304},[3] = {Id = 113,Val = 1752,Sum = 5782}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--高顺魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 243,Sum = 911},[2] = {Id = 112,Val = 110,Sum = 414},[3] = {Id = 113,Val = 2103,Sum = 7885}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--高顺魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 1195},[2] = {Id = 112,Val = 129,Sum = 543},[3] = {Id = 113,Val = 2453,Sum = 10338}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--高顺魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 325,Sum = 1520},[2] = {Id = 112,Val = 147,Sum = 690},[3] = {Id = 113,Val = 2804,Sum = 13142}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--高顺魂珠-3 等级-9
				}
			},--高顺专属武器魂珠-3
			[4] = {
				Id = 202004,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--高顺魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 42,Sum = 42},[2] = {Id = 112,Val = 19,Sum = 19},[3] = {Id = 113,Val = 360,Sum = 360}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--高顺魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 105},[2] = {Id = 112,Val = 28,Sum = 47},[3] = {Id = 113,Val = 539,Sum = 899}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--高顺魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 189},[2] = {Id = 112,Val = 38,Sum = 85},[3] = {Id = 113,Val = 719,Sum = 1618}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--高顺魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 124,Sum = 313},[2] = {Id = 112,Val = 57,Sum = 142},[3] = {Id = 113,Val = 1079,Sum = 2697}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--高顺魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 166,Sum = 479},[2] = {Id = 112,Val = 76,Sum = 218},[3] = {Id = 113,Val = 1438,Sum = 4135}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--高顺魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 687},[2] = {Id = 112,Val = 94,Sum = 312},[3] = {Id = 113,Val = 1798,Sum = 5933}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--高顺魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 937},[2] = {Id = 112,Val = 113,Sum = 425},[3] = {Id = 113,Val = 2157,Sum = 8090}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--高顺魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 290,Sum = 1227},[2] = {Id = 112,Val = 132,Sum = 557},[3] = {Id = 113,Val = 2517,Sum = 10607}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--高顺魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 332,Sum = 1559},[2] = {Id = 112,Val = 151,Sum = 708},[3] = {Id = 113,Val = 2876,Sum = 13483}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--高顺魂珠-4 等级-9
				}
			},--高顺专属武器魂珠-4
			[5] = {
				Id = 202005,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--高顺魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 52,Sum = 52},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 444,Sum = 444}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--高顺魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 129},[2] = {Id = 112,Val = 35,Sum = 58},[3] = {Id = 113,Val = 666,Sum = 1110}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--高顺魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 231},[2] = {Id = 112,Val = 47,Sum = 105},[3] = {Id = 113,Val = 888,Sum = 1998}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--高顺魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 385},[2] = {Id = 112,Val = 70,Sum = 175},[3] = {Id = 113,Val = 1332,Sum = 3330}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--高顺魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 206,Sum = 591},[2] = {Id = 112,Val = 93,Sum = 268},[3] = {Id = 113,Val = 1776,Sum = 5106}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--高顺魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 256,Sum = 847},[2] = {Id = 112,Val = 117,Sum = 385},[3] = {Id = 113,Val = 2220,Sum = 7326}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--高顺魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 1155},[2] = {Id = 112,Val = 140,Sum = 525},[3] = {Id = 113,Val = 2664,Sum = 9990}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--高顺魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 359,Sum = 1514},[2] = {Id = 112,Val = 163,Sum = 688},[3] = {Id = 113,Val = 3108,Sum = 13098}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--高顺魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 410,Sum = 1924},[2] = {Id = 112,Val = 187,Sum = 875},[3] = {Id = 113,Val = 3551,Sum = 16649}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--高顺魂珠-5 等级-9
				}
			},--高顺专属武器魂珠-5
			[6] = {
				Id = 202006,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--高顺魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 541,Sum = 541}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--高顺魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 157},[2] = {Id = 112,Val = 43,Sum = 71},[3] = {Id = 113,Val = 811,Sum = 1352}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--高顺魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 282},[2] = {Id = 112,Val = 57,Sum = 128},[3] = {Id = 113,Val = 1082,Sum = 2434}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--高顺魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 469},[2] = {Id = 112,Val = 85,Sum = 213},[3] = {Id = 113,Val = 1623,Sum = 4057}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--高顺魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 719},[2] = {Id = 112,Val = 114,Sum = 327},[3] = {Id = 113,Val = 2164,Sum = 6221}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--高顺魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 1031},[2] = {Id = 112,Val = 142,Sum = 469},[3] = {Id = 113,Val = 2705,Sum = 8926}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--高顺魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 375,Sum = 1406},[2] = {Id = 112,Val = 170,Sum = 639},[3] = {Id = 113,Val = 3245,Sum = 12171}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--高顺魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 438,Sum = 1844},[2] = {Id = 112,Val = 199,Sum = 838},[3] = {Id = 113,Val = 3786,Sum = 15957}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--高顺魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 501,Sum = 2345},[2] = {Id = 112,Val = 227,Sum = 1065},[3] = {Id = 113,Val = 4327,Sum = 20284}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--高顺魂珠-6 等级-9
				}
			},--高顺专属武器魂珠-6
			[7] = {
				Id = 202007,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--高顺魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 69,Sum = 69},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 598,Sum = 598}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--高顺魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 103,Sum = 172},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 898,Sum = 1496}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--高顺魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 139,Sum = 311},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1197,Sum = 2693}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--高顺魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 519},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1795,Sum = 4488}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--高顺魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 276,Sum = 795},[2] = {Id = 112,Val = 126,Sum = 361},[3] = {Id = 113,Val = 2393,Sum = 6881}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--高顺魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 345,Sum = 1140},[2] = {Id = 112,Val = 157,Sum = 518},[3] = {Id = 113,Val = 2992,Sum = 9873}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--高顺魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 415,Sum = 1555},[2] = {Id = 112,Val = 189,Sum = 707},[3] = {Id = 113,Val = 3590,Sum = 13463}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--高顺魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 484,Sum = 2039},[2] = {Id = 112,Val = 220,Sum = 927},[3] = {Id = 113,Val = 4189,Sum = 17652}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--高顺魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2592},[2] = {Id = 112,Val = 251,Sum = 1178},[3] = {Id = 113,Val = 4787,Sum = 22439}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--高顺魂珠-7 等级-9
				}
			},--高顺专属武器魂珠-7
			[8] = {
				Id = 202008,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--高顺魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 73,Sum = 73},[2] = {Id = 112,Val = 33,Sum = 33},[3] = {Id = 113,Val = 627,Sum = 627}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--高顺魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 109,Sum = 182},[2] = {Id = 112,Val = 49,Sum = 82},[3] = {Id = 113,Val = 940,Sum = 1567}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--高顺魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 145,Sum = 327},[2] = {Id = 112,Val = 66,Sum = 148},[3] = {Id = 113,Val = 1253,Sum = 2820}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--高顺魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 545},[2] = {Id = 112,Val = 99,Sum = 247},[3] = {Id = 113,Val = 1880,Sum = 4700}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--高顺魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 289,Sum = 834},[2] = {Id = 112,Val = 132,Sum = 379},[3] = {Id = 113,Val = 2507,Sum = 7207}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--高顺魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1196},[2] = {Id = 112,Val = 165,Sum = 544},[3] = {Id = 113,Val = 3133,Sum = 10340}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--高顺魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 435,Sum = 1631},[2] = {Id = 112,Val = 198,Sum = 742},[3] = {Id = 113,Val = 3760,Sum = 14100}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--高顺魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 507,Sum = 2138},[2] = {Id = 112,Val = 230,Sum = 972},[3] = {Id = 113,Val = 4387,Sum = 18487}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--高顺魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 580,Sum = 2718},[2] = {Id = 112,Val = 263,Sum = 1235},[3] = {Id = 113,Val = 5014,Sum = 23501}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--高顺魂珠-8 等级-9
				}
			}--高顺专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--高顺专属武器解封-0
			[1] = {Pskill = {[1] = 130302011},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 22000},[2] = {Id = 1502020,Val = 40}}},--高顺专属武器解封-1
			[2] = {Pskill = {[1] = 130302011},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 45000},[2] = {Id = 1502020,Val = 40}}},--高顺专属武器解封-2
			[3] = {Pskill = {[1] = 130302011},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 101000},[2] = {Id = 1502020,Val = 60}}},--高顺专属武器解封-3
			[4] = {Pskill = {[1] = 130302011},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 177500},[2] = {Id = 1502020,Val = 60}}},--高顺专属武器解封-4
			[5] = {Pskill = {[1] = 130302011},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 439500},[2] = {Id = 1502020,Val = 80}}}--高顺专属武器解封-5
		}
	},--高顺专属武器
	[1102021] = {
		CardId = 1102021,
		Name = _T("断灭一闪"),
		Quality = 3,
		Icon = "ui_dtex_Equip_1501021",
		HunZhu = {
			[1] = {
				Id = 202101,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--烈风螳螂魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 19,Sum = 19},[2] = {Id = 112,Val = 8,Sum = 8},[3] = {Id = 113,Val = 126,Sum = 126}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--烈风螳螂魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 49},[2] = {Id = 112,Val = 12,Sum = 20},[3] = {Id = 113,Val = 188,Sum = 314}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--烈风螳螂魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 89},[2] = {Id = 112,Val = 16,Sum = 36},[3] = {Id = 113,Val = 250,Sum = 564}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--烈风螳螂魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 148},[2] = {Id = 112,Val = 25,Sum = 61},[3] = {Id = 113,Val = 376,Sum = 940}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--烈风螳螂魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 227},[2] = {Id = 112,Val = 33,Sum = 94},[3] = {Id = 113,Val = 502,Sum = 1442}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--烈风螳螂魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 98,Sum = 325},[2] = {Id = 112,Val = 41,Sum = 135},[3] = {Id = 113,Val = 627,Sum = 2069}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--烈风螳螂魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 444},[2] = {Id = 112,Val = 49,Sum = 184},[3] = {Id = 113,Val = 752,Sum = 2821}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--烈风螳螂魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 138,Sum = 582},[2] = {Id = 112,Val = 58,Sum = 242},[3] = {Id = 113,Val = 878,Sum = 3699}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--烈风螳螂魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 740},[2] = {Id = 112,Val = 66,Sum = 308},[3] = {Id = 113,Val = 1003,Sum = 4702}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--烈风螳螂魂珠-1 等级-9
				}
			},--烈风螳螂专属武器魂珠-1
			[2] = {
				Id = 202102,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--烈风螳螂魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 31,Sum = 31},[2] = {Id = 112,Val = 13,Sum = 13},[3] = {Id = 113,Val = 198,Sum = 198}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--烈风螳螂魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 78},[2] = {Id = 112,Val = 20,Sum = 33},[3] = {Id = 113,Val = 298,Sum = 496}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--烈风螳螂魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 62,Sum = 140},[2] = {Id = 112,Val = 26,Sum = 59},[3] = {Id = 113,Val = 397,Sum = 893}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--烈风螳螂魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 234},[2] = {Id = 112,Val = 39,Sum = 98},[3] = {Id = 113,Val = 594,Sum = 1487}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--烈风螳螂魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 359},[2] = {Id = 112,Val = 52,Sum = 150},[3] = {Id = 113,Val = 793,Sum = 2280}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--烈风螳螂魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 515},[2] = {Id = 112,Val = 65,Sum = 215},[3] = {Id = 113,Val = 991,Sum = 3271}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--烈风螳螂魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 702},[2] = {Id = 112,Val = 78,Sum = 293},[3] = {Id = 113,Val = 1190,Sum = 4461}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--烈风螳螂魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 920},[2] = {Id = 112,Val = 91,Sum = 384},[3] = {Id = 113,Val = 1388,Sum = 5849}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--烈风螳螂魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 1170},[2] = {Id = 112,Val = 104,Sum = 488},[3] = {Id = 113,Val = 1586,Sum = 7435}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--烈风螳螂魂珠-2 等级-9
				}
			},--烈风螳螂专属武器魂珠-2
			[3] = {
				Id = 202103,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--烈风螳螂魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 280,Sum = 280}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--烈风螳螂魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 28,Sum = 46},[3] = {Id = 113,Val = 421,Sum = 701}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--烈风螳螂魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 199},[2] = {Id = 112,Val = 37,Sum = 83},[3] = {Id = 113,Val = 561,Sum = 1262}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--烈风螳螂魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 331},[2] = {Id = 112,Val = 55,Sum = 138},[3] = {Id = 113,Val = 841,Sum = 2103}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--烈风螳螂魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 507},[2] = {Id = 112,Val = 74,Sum = 212},[3] = {Id = 113,Val = 1122,Sum = 3225}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--烈风螳螂魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 728},[2] = {Id = 112,Val = 92,Sum = 304},[3] = {Id = 113,Val = 1402,Sum = 4627}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--烈风螳螂魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 265,Sum = 993},[2] = {Id = 112,Val = 110,Sum = 414},[3] = {Id = 113,Val = 1682,Sum = 6309}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--烈风螳螂魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 310,Sum = 1303},[2] = {Id = 112,Val = 129,Sum = 543},[3] = {Id = 113,Val = 1962,Sum = 8271}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--烈风螳螂魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 354,Sum = 1657},[2] = {Id = 112,Val = 147,Sum = 690},[3] = {Id = 113,Val = 2243,Sum = 10514}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--烈风螳螂魂珠-3 等级-9
				}
			},--烈风螳螂专属武器魂珠-3
			[4] = {
				Id = 202104,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--烈风螳螂魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 46,Sum = 46},[2] = {Id = 112,Val = 19,Sum = 19},[3] = {Id = 113,Val = 288,Sum = 288}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--烈风螳螂魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 114},[2] = {Id = 112,Val = 28,Sum = 47},[3] = {Id = 113,Val = 431,Sum = 719}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--烈风螳螂魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 91,Sum = 205},[2] = {Id = 112,Val = 38,Sum = 85},[3] = {Id = 113,Val = 575,Sum = 1294}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--烈风螳螂魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 136,Sum = 341},[2] = {Id = 112,Val = 57,Sum = 142},[3] = {Id = 113,Val = 863,Sum = 2157}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--烈风螳螂魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 181,Sum = 522},[2] = {Id = 112,Val = 76,Sum = 218},[3] = {Id = 113,Val = 1150,Sum = 3307}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--烈风螳螂魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 749},[2] = {Id = 112,Val = 94,Sum = 312},[3] = {Id = 113,Val = 1438,Sum = 4745}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--烈风螳螂魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 1021},[2] = {Id = 112,Val = 113,Sum = 425},[3] = {Id = 113,Val = 1726,Sum = 6471}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--烈风螳螂魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 317,Sum = 1338},[2] = {Id = 112,Val = 132,Sum = 557},[3] = {Id = 113,Val = 2014,Sum = 8485}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--烈风螳螂魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1700},[2] = {Id = 112,Val = 151,Sum = 708},[3] = {Id = 113,Val = 2301,Sum = 10786}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--烈风螳螂魂珠-4 等级-9
				}
			},--烈风螳螂专属武器魂珠-4
			[5] = {
				Id = 202105,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--烈风螳螂魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 56,Sum = 56},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 355,Sum = 355}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--烈风螳螂魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 140},[2] = {Id = 112,Val = 35,Sum = 58},[3] = {Id = 113,Val = 533,Sum = 888}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--烈风螳螂魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 112,Sum = 252},[2] = {Id = 112,Val = 47,Sum = 105},[3] = {Id = 113,Val = 710,Sum = 1598}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--烈风螳螂魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 420},[2] = {Id = 112,Val = 70,Sum = 175},[3] = {Id = 113,Val = 1066,Sum = 2664}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--烈风螳螂魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 224,Sum = 644},[2] = {Id = 112,Val = 93,Sum = 268},[3] = {Id = 113,Val = 1421,Sum = 4085}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--烈风螳螂魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 924},[2] = {Id = 112,Val = 117,Sum = 385},[3] = {Id = 113,Val = 1776,Sum = 5861}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--烈风螳螂魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1260},[2] = {Id = 112,Val = 140,Sum = 525},[3] = {Id = 113,Val = 2131,Sum = 7992}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--烈风螳螂魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 391,Sum = 1651},[2] = {Id = 112,Val = 163,Sum = 688},[3] = {Id = 113,Val = 2486,Sum = 10478}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--烈风螳螂魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 448,Sum = 2099},[2] = {Id = 112,Val = 187,Sum = 875},[3] = {Id = 113,Val = 2841,Sum = 13319}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--烈风螳螂魂珠-5 等级-9
				}
			},--烈风螳螂专属武器魂珠-5
			[6] = {
				Id = 202106,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--烈风螳螂魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 68},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 433,Sum = 433}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--烈风螳螂魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 170},[2] = {Id = 112,Val = 43,Sum = 71},[3] = {Id = 113,Val = 649,Sum = 1082}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--烈风螳螂魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 137,Sum = 307},[2] = {Id = 112,Val = 57,Sum = 128},[3] = {Id = 113,Val = 866,Sum = 1948}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--烈风螳螂魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 511},[2] = {Id = 112,Val = 85,Sum = 213},[3] = {Id = 113,Val = 1298,Sum = 3246}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--烈风螳螂魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 783},[2] = {Id = 112,Val = 114,Sum = 327},[3] = {Id = 113,Val = 1731,Sum = 4977}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--烈风螳螂魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1124},[2] = {Id = 112,Val = 142,Sum = 469},[3] = {Id = 113,Val = 2164,Sum = 7141}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--烈风螳螂魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 409,Sum = 1533},[2] = {Id = 112,Val = 170,Sum = 639},[3] = {Id = 113,Val = 2596,Sum = 9737}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--烈风螳螂魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 478,Sum = 2011},[2] = {Id = 112,Val = 199,Sum = 838},[3] = {Id = 113,Val = 3029,Sum = 12766}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--烈风螳螂魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 546,Sum = 2557},[2] = {Id = 112,Val = 227,Sum = 1065},[3] = {Id = 113,Val = 3462,Sum = 16228}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--烈风螳螂魂珠-6 等级-9
				}
			},--烈风螳螂专属武器魂珠-6
			[7] = {
				Id = 202107,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--烈风螳螂魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 76},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 478,Sum = 478}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--烈风螳螂魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 189},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 718,Sum = 1196}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--烈风螳螂魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 340},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 958,Sum = 2154}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--烈风螳螂魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 567},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1436,Sum = 3590}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--烈风螳螂魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 301,Sum = 868},[2] = {Id = 112,Val = 126,Sum = 361},[3] = {Id = 113,Val = 1914,Sum = 5504}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--烈风螳螂魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1245},[2] = {Id = 112,Val = 157,Sum = 518},[3] = {Id = 113,Val = 2394,Sum = 7898}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--烈风螳螂魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 452,Sum = 1697},[2] = {Id = 112,Val = 189,Sum = 707},[3] = {Id = 113,Val = 2872,Sum = 10770}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--烈风螳螂魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 2225},[2] = {Id = 112,Val = 220,Sum = 927},[3] = {Id = 113,Val = 3351,Sum = 14121}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--烈风螳螂魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 604,Sum = 2829},[2] = {Id = 112,Val = 251,Sum = 1178},[3] = {Id = 113,Val = 3830,Sum = 17951}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--烈风螳螂魂珠-7 等级-9
				}
			},--烈风螳螂专属武器魂珠-7
			[8] = {
				Id = 202108,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--烈风螳螂魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 79},[2] = {Id = 112,Val = 33,Sum = 33},[3] = {Id = 113,Val = 502,Sum = 502}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--烈风螳螂魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 198},[2] = {Id = 112,Val = 49,Sum = 82},[3] = {Id = 113,Val = 752,Sum = 1254}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--烈风螳螂魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 356},[2] = {Id = 112,Val = 66,Sum = 148},[3] = {Id = 113,Val = 1002,Sum = 2256}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--烈风螳螂魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 238,Sum = 594},[2] = {Id = 112,Val = 99,Sum = 247},[3] = {Id = 113,Val = 1504,Sum = 3760}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--烈风螳螂魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 316,Sum = 910},[2] = {Id = 112,Val = 132,Sum = 379},[3] = {Id = 113,Val = 2006,Sum = 5766}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--烈风螳螂魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1305},[2] = {Id = 112,Val = 165,Sum = 544},[3] = {Id = 113,Val = 2506,Sum = 8272}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--烈风螳螂魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 474,Sum = 1779},[2] = {Id = 112,Val = 198,Sum = 742},[3] = {Id = 113,Val = 3008,Sum = 11280}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--烈风螳螂魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2332},[2] = {Id = 112,Val = 230,Sum = 972},[3] = {Id = 113,Val = 3510,Sum = 14790}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--烈风螳螂魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 632,Sum = 2964},[2] = {Id = 112,Val = 263,Sum = 1235},[3] = {Id = 113,Val = 4011,Sum = 18801}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--烈风螳螂魂珠-8 等级-9
				}
			}--烈风螳螂专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--烈风螳螂专属武器解封-0
			[1] = {Pskill = {[1] = 130302111,[2] = 130302112},PSkillLevel = {[1] = 1,[2] = 1},Cost = {[1] = {Id = 1401002,Val = 18500},[2] = {Id = 1502021,Val = 40}}},--烈风螳螂专属武器解封-1
			[2] = {Pskill = {[1] = 130302111,[2] = 130302112},PSkillLevel = {[1] = 2,[2] = 2},Cost = {[1] = {Id = 1401002,Val = 37500},[2] = {Id = 1502021,Val = 40}}},--烈风螳螂专属武器解封-2
			[3] = {Pskill = {[1] = 130302111,[2] = 130302112},PSkillLevel = {[1] = 3,[2] = 3},Cost = {[1] = {Id = 1401002,Val = 84000},[2] = {Id = 1502021,Val = 60}}},--烈风螳螂专属武器解封-3
			[4] = {Pskill = {[1] = 130302111,[2] = 130302112},PSkillLevel = {[1] = 4,[2] = 4},Cost = {[1] = {Id = 1401002,Val = 148000},[2] = {Id = 1502021,Val = 60}}},--烈风螳螂专属武器解封-4
			[5] = {Pskill = {[1] = 130302111,[2] = 130302112},PSkillLevel = {[1] = 5,[2] = 5},Cost = {[1] = {Id = 1401002,Val = 366000},[2] = {Id = 1502021,Val = 80}}}--烈风螳螂专属武器解封-5
		}
	},--烈风螳螂专属武器
	[1102024] = {
		CardId = 1102024,
		Name = _T("朱仙专属武器"),
		Quality = 3,
		Icon = "ui_dtex_Equip_1501022",
		HunZhu = {
			[1] = {
				Id = 202401,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--朱仙魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 16,Sum = 16},[2] = {Id = 112,Val = 8,Sum = 8},[3] = {Id = 113,Val = 157,Sum = 157}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--朱仙魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 25,Sum = 41},[2] = {Id = 112,Val = 12,Sum = 20},[3] = {Id = 113,Val = 235,Sum = 392}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--朱仙魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 33,Sum = 74},[2] = {Id = 112,Val = 16,Sum = 36},[3] = {Id = 113,Val = 313,Sum = 705}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--朱仙魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 49,Sum = 123},[2] = {Id = 112,Val = 25,Sum = 61},[3] = {Id = 113,Val = 470,Sum = 1175}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--朱仙魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 189},[2] = {Id = 112,Val = 33,Sum = 94},[3] = {Id = 113,Val = 627,Sum = 1802}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--朱仙魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 82,Sum = 271},[2] = {Id = 112,Val = 41,Sum = 135},[3] = {Id = 113,Val = 784,Sum = 2586}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--朱仙魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 370},[2] = {Id = 112,Val = 49,Sum = 184},[3] = {Id = 113,Val = 940,Sum = 3526}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--朱仙魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 115,Sum = 485},[2] = {Id = 112,Val = 58,Sum = 242},[3] = {Id = 113,Val = 1097,Sum = 4623}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--朱仙魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 617},[2] = {Id = 112,Val = 66,Sum = 308},[3] = {Id = 113,Val = 1254,Sum = 5877}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--朱仙魂珠-1 等级-9
				}
			},--朱仙专属武器魂珠-1
			[2] = {
				Id = 202402,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--朱仙魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 26,Sum = 26},[2] = {Id = 112,Val = 13,Sum = 13},[3] = {Id = 113,Val = 248,Sum = 248}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--朱仙魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 39,Sum = 65},[2] = {Id = 112,Val = 20,Sum = 33},[3] = {Id = 113,Val = 372,Sum = 620}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--朱仙魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 52,Sum = 117},[2] = {Id = 112,Val = 26,Sum = 59},[3] = {Id = 113,Val = 496,Sum = 1116}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--朱仙魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 78,Sum = 195},[2] = {Id = 112,Val = 39,Sum = 98},[3] = {Id = 113,Val = 743,Sum = 1859}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--朱仙魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 104,Sum = 299},[2] = {Id = 112,Val = 52,Sum = 150},[3] = {Id = 113,Val = 991,Sum = 2850}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--朱仙魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 130,Sum = 429},[2] = {Id = 112,Val = 65,Sum = 215},[3] = {Id = 113,Val = 1239,Sum = 4089}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--朱仙魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 585},[2] = {Id = 112,Val = 78,Sum = 293},[3] = {Id = 113,Val = 1487,Sum = 5576}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--朱仙魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 182,Sum = 767},[2] = {Id = 112,Val = 91,Sum = 384},[3] = {Id = 113,Val = 1735,Sum = 7311}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--朱仙魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 975},[2] = {Id = 112,Val = 104,Sum = 488},[3] = {Id = 113,Val = 1983,Sum = 9294}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--朱仙魂珠-2 等级-9
				}
			},--朱仙专属武器魂珠-2
			[3] = {
				Id = 202403,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--朱仙魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 37,Sum = 37},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 350,Sum = 350}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--朱仙魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 55,Sum = 92},[2] = {Id = 112,Val = 28,Sum = 46},[3] = {Id = 113,Val = 526,Sum = 876}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--朱仙魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 166},[2] = {Id = 112,Val = 37,Sum = 83},[3] = {Id = 113,Val = 701,Sum = 1577}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--朱仙魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 276},[2] = {Id = 112,Val = 55,Sum = 138},[3] = {Id = 113,Val = 1051,Sum = 2628}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--朱仙魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 147,Sum = 423},[2] = {Id = 112,Val = 74,Sum = 212},[3] = {Id = 113,Val = 1402,Sum = 4030}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--朱仙魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 184,Sum = 607},[2] = {Id = 112,Val = 92,Sum = 304},[3] = {Id = 113,Val = 1752,Sum = 5782}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--朱仙魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 828},[2] = {Id = 112,Val = 110,Sum = 414},[3] = {Id = 113,Val = 2103,Sum = 7885}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--朱仙魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 258,Sum = 1086},[2] = {Id = 112,Val = 129,Sum = 543},[3] = {Id = 113,Val = 2453,Sum = 10338}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--朱仙魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 295,Sum = 1381},[2] = {Id = 112,Val = 147,Sum = 690},[3] = {Id = 113,Val = 2804,Sum = 13142}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--朱仙魂珠-3 等级-9
				}
			},--朱仙专属武器魂珠-3
			[4] = {
				Id = 202404,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--朱仙魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 38,Sum = 38},[2] = {Id = 112,Val = 19,Sum = 19},[3] = {Id = 113,Val = 360,Sum = 360}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--朱仙魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 95},[2] = {Id = 112,Val = 28,Sum = 47},[3] = {Id = 113,Val = 539,Sum = 899}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--朱仙魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 171},[2] = {Id = 112,Val = 38,Sum = 85},[3] = {Id = 113,Val = 719,Sum = 1618}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--朱仙魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 284},[2] = {Id = 112,Val = 57,Sum = 142},[3] = {Id = 113,Val = 1079,Sum = 2697}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--朱仙魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 435},[2] = {Id = 112,Val = 76,Sum = 218},[3] = {Id = 113,Val = 1438,Sum = 4135}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--朱仙魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 624},[2] = {Id = 112,Val = 94,Sum = 312},[3] = {Id = 113,Val = 1798,Sum = 5933}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--朱仙魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 851},[2] = {Id = 112,Val = 113,Sum = 425},[3] = {Id = 113,Val = 2157,Sum = 8090}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--朱仙魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 1115},[2] = {Id = 112,Val = 132,Sum = 557},[3] = {Id = 113,Val = 2517,Sum = 10607}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--朱仙魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 302,Sum = 1417},[2] = {Id = 112,Val = 151,Sum = 708},[3] = {Id = 113,Val = 2876,Sum = 13483}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--朱仙魂珠-4 等级-9
				}
			},--朱仙专属武器魂珠-4
			[5] = {
				Id = 202405,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--朱仙魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 47},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 444,Sum = 444}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--朱仙魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 70,Sum = 117},[2] = {Id = 112,Val = 35,Sum = 58},[3] = {Id = 113,Val = 666,Sum = 1110}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--朱仙魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 93,Sum = 210},[2] = {Id = 112,Val = 47,Sum = 105},[3] = {Id = 113,Val = 888,Sum = 1998}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--朱仙魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 350},[2] = {Id = 112,Val = 70,Sum = 175},[3] = {Id = 113,Val = 1332,Sum = 3330}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--朱仙魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 537},[2] = {Id = 112,Val = 93,Sum = 268},[3] = {Id = 113,Val = 1776,Sum = 5106}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--朱仙魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 233,Sum = 770},[2] = {Id = 112,Val = 117,Sum = 385},[3] = {Id = 113,Val = 2220,Sum = 7326}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--朱仙魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 1050},[2] = {Id = 112,Val = 140,Sum = 525},[3] = {Id = 113,Val = 2664,Sum = 9990}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--朱仙魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 326,Sum = 1376},[2] = {Id = 112,Val = 163,Sum = 688},[3] = {Id = 113,Val = 3108,Sum = 13098}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--朱仙魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 373,Sum = 1749},[2] = {Id = 112,Val = 187,Sum = 875},[3] = {Id = 113,Val = 3551,Sum = 16649}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--朱仙魂珠-5 等级-9
				}
			},--朱仙专属武器魂珠-5
			[6] = {
				Id = 202406,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--朱仙魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 57},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 541,Sum = 541}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--朱仙魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 85,Sum = 142},[2] = {Id = 112,Val = 43,Sum = 71},[3] = {Id = 113,Val = 811,Sum = 1352}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--朱仙魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 114,Sum = 256},[2] = {Id = 112,Val = 57,Sum = 128},[3] = {Id = 113,Val = 1082,Sum = 2434}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--朱仙魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 426},[2] = {Id = 112,Val = 85,Sum = 213},[3] = {Id = 113,Val = 1623,Sum = 4057}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--朱仙魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 653},[2] = {Id = 112,Val = 114,Sum = 327},[3] = {Id = 113,Val = 2164,Sum = 6221}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--朱仙魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 937},[2] = {Id = 112,Val = 142,Sum = 469},[3] = {Id = 113,Val = 2705,Sum = 8926}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--朱仙魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1278},[2] = {Id = 112,Val = 170,Sum = 639},[3] = {Id = 113,Val = 3245,Sum = 12171}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--朱仙魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 398,Sum = 1676},[2] = {Id = 112,Val = 199,Sum = 838},[3] = {Id = 113,Val = 3786,Sum = 15957}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--朱仙魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 455,Sum = 2131},[2] = {Id = 112,Val = 227,Sum = 1065},[3] = {Id = 113,Val = 4327,Sum = 20284}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--朱仙魂珠-6 等级-9
				}
			},--朱仙专属武器魂珠-6
			[7] = {
				Id = 202407,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--朱仙魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 598,Sum = 598}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--朱仙魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 157},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 898,Sum = 1496}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--朱仙魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 283},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1197,Sum = 2693}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--朱仙魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 472},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1795,Sum = 4488}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--朱仙魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 251,Sum = 723},[2] = {Id = 112,Val = 126,Sum = 361},[3] = {Id = 113,Val = 2393,Sum = 6881}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--朱仙魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 314,Sum = 1037},[2] = {Id = 112,Val = 157,Sum = 518},[3] = {Id = 113,Val = 2992,Sum = 9873}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--朱仙魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1414},[2] = {Id = 112,Val = 189,Sum = 707},[3] = {Id = 113,Val = 3590,Sum = 13463}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--朱仙魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1854},[2] = {Id = 112,Val = 220,Sum = 927},[3] = {Id = 113,Val = 4189,Sum = 17652}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--朱仙魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 503,Sum = 2357},[2] = {Id = 112,Val = 251,Sum = 1178},[3] = {Id = 113,Val = 4787,Sum = 22439}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--朱仙魂珠-7 等级-9
				}
			},--朱仙专属武器魂珠-7
			[8] = {
				Id = 202408,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--朱仙魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 66},[2] = {Id = 112,Val = 33,Sum = 33},[3] = {Id = 113,Val = 627,Sum = 627}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--朱仙魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 165},[2] = {Id = 112,Val = 49,Sum = 82},[3] = {Id = 113,Val = 940,Sum = 1567}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--朱仙魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 297},[2] = {Id = 112,Val = 66,Sum = 148},[3] = {Id = 113,Val = 1253,Sum = 2820}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--朱仙魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 495},[2] = {Id = 112,Val = 99,Sum = 247},[3] = {Id = 113,Val = 1880,Sum = 4700}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--朱仙魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 263,Sum = 758},[2] = {Id = 112,Val = 132,Sum = 379},[3] = {Id = 113,Val = 2507,Sum = 7207}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--朱仙魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 329,Sum = 1087},[2] = {Id = 112,Val = 165,Sum = 544},[3] = {Id = 113,Val = 3133,Sum = 10340}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--朱仙魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1482},[2] = {Id = 112,Val = 198,Sum = 742},[3] = {Id = 113,Val = 3760,Sum = 14100}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--朱仙魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 461,Sum = 1943},[2] = {Id = 112,Val = 230,Sum = 972},[3] = {Id = 113,Val = 4387,Sum = 18487}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--朱仙魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 527,Sum = 2470},[2] = {Id = 112,Val = 263,Sum = 1235},[3] = {Id = 113,Val = 5014,Sum = 23501}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--朱仙魂珠-8 等级-9
				}
			}--朱仙专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--朱仙专属武器解封-0
			[1] = {Pskill = {[1] = 130302411},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 18500},[2] = {Id = 1502024,Val = 40}}},--朱仙专属武器解封-1
			[2] = {Pskill = {[1] = 130302411},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 37500},[2] = {Id = 1502024,Val = 40}}},--朱仙专属武器解封-2
			[3] = {Pskill = {[1] = 130302411},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 84000},[2] = {Id = 1502024,Val = 60}}},--朱仙专属武器解封-3
			[4] = {Pskill = {[1] = 130302411},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 148000},[2] = {Id = 1502024,Val = 60}}},--朱仙专属武器解封-4
			[5] = {Pskill = {[1] = 130302411},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 366000},[2] = {Id = 1502024,Val = 80}}}--朱仙专属武器解封-5
		}
	},--朱仙专属武器
	[1102026] = {
		CardId = 1102026,
		Name = _T("风雷黄金棍"),
		Quality = 3,
		Icon = "ui_dtex_Equip_1501026",
		HunZhu = {
			[1] = {
				Id = 202601,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--雷震子魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 19,Sum = 19},[2] = {Id = 112,Val = 7,Sum = 7},[3] = {Id = 113,Val = 141,Sum = 141}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--雷震子魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 49},[2] = {Id = 112,Val = 11,Sum = 18},[3] = {Id = 113,Val = 212,Sum = 353}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--雷震子魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 89},[2] = {Id = 112,Val = 14,Sum = 32},[3] = {Id = 113,Val = 282,Sum = 635}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--雷震子魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 148},[2] = {Id = 112,Val = 23,Sum = 55},[3] = {Id = 113,Val = 423,Sum = 1058}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--雷震子魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 227},[2] = {Id = 112,Val = 30,Sum = 85},[3] = {Id = 113,Val = 564,Sum = 1622}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--雷震子魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 98,Sum = 325},[2] = {Id = 112,Val = 37,Sum = 122},[3] = {Id = 113,Val = 706,Sum = 2328}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--雷震子魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 444},[2] = {Id = 112,Val = 44,Sum = 166},[3] = {Id = 113,Val = 846,Sum = 3174}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--雷震子魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 138,Sum = 582},[2] = {Id = 112,Val = 52,Sum = 218},[3] = {Id = 113,Val = 987,Sum = 4161}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--雷震子魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 740},[2] = {Id = 112,Val = 59,Sum = 277},[3] = {Id = 113,Val = 1129,Sum = 5290}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--雷震子魂珠-1 等级-9
				}
			},--雷震子专属武器魂珠-1
			[2] = {
				Id = 202602,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--雷震子魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 31,Sum = 31},[2] = {Id = 112,Val = 12,Sum = 12},[3] = {Id = 113,Val = 223,Sum = 223}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--雷震子魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 78},[2] = {Id = 112,Val = 18,Sum = 30},[3] = {Id = 113,Val = 335,Sum = 558}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--雷震子魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 62,Sum = 140},[2] = {Id = 112,Val = 23,Sum = 53},[3] = {Id = 113,Val = 446,Sum = 1004}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--雷震子魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 234},[2] = {Id = 112,Val = 35,Sum = 88},[3] = {Id = 113,Val = 669,Sum = 1673}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--雷震子魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 359},[2] = {Id = 112,Val = 47,Sum = 135},[3] = {Id = 113,Val = 892,Sum = 2565}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--雷震子魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 515},[2] = {Id = 112,Val = 59,Sum = 194},[3] = {Id = 113,Val = 1115,Sum = 3680}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--雷震子魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 702},[2] = {Id = 112,Val = 70,Sum = 264},[3] = {Id = 113,Val = 1338,Sum = 5018}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--雷震子魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 920},[2] = {Id = 112,Val = 82,Sum = 346},[3] = {Id = 113,Val = 1562,Sum = 6580}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--雷震子魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 1170},[2] = {Id = 112,Val = 94,Sum = 440},[3] = {Id = 113,Val = 1785,Sum = 8365}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--雷震子魂珠-2 等级-9
				}
			},--雷震子专属武器魂珠-2
			[3] = {
				Id = 202603,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--雷震子魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 16,Sum = 16},[3] = {Id = 113,Val = 315,Sum = 315}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--雷震子魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 25,Sum = 41},[3] = {Id = 113,Val = 473,Sum = 788}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--雷震子魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 199},[2] = {Id = 112,Val = 33,Sum = 74},[3] = {Id = 113,Val = 631,Sum = 1419}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--雷震子魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 331},[2] = {Id = 112,Val = 50,Sum = 124},[3] = {Id = 113,Val = 946,Sum = 2365}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--雷震子魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 507},[2] = {Id = 112,Val = 67,Sum = 191},[3] = {Id = 113,Val = 1262,Sum = 3627}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--雷震子魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 728},[2] = {Id = 112,Val = 83,Sum = 274},[3] = {Id = 113,Val = 1577,Sum = 5204}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--雷震子魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 265,Sum = 993},[2] = {Id = 112,Val = 99,Sum = 373},[3] = {Id = 113,Val = 1893,Sum = 7097}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--雷震子魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 310,Sum = 1303},[2] = {Id = 112,Val = 116,Sum = 489},[3] = {Id = 113,Val = 2208,Sum = 9305}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--雷震子魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 354,Sum = 1657},[2] = {Id = 112,Val = 132,Sum = 621},[3] = {Id = 113,Val = 2524,Sum = 11829}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--雷震子魂珠-3 等级-9
				}
			},--雷震子专属武器魂珠-3
			[4] = {
				Id = 202604,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--雷震子魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 46,Sum = 46},[2] = {Id = 112,Val = 17,Sum = 17},[3] = {Id = 113,Val = 324,Sum = 324}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--雷震子魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 114},[2] = {Id = 112,Val = 25,Sum = 42},[3] = {Id = 113,Val = 485,Sum = 809}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--雷震子魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 91,Sum = 205},[2] = {Id = 112,Val = 34,Sum = 76},[3] = {Id = 113,Val = 647,Sum = 1456}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--雷震子魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 136,Sum = 341},[2] = {Id = 112,Val = 51,Sum = 127},[3] = {Id = 113,Val = 971,Sum = 2427}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--雷震子魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 181,Sum = 522},[2] = {Id = 112,Val = 68,Sum = 195},[3] = {Id = 113,Val = 1294,Sum = 3721}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--雷震子魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 749},[2] = {Id = 112,Val = 85,Sum = 280},[3] = {Id = 113,Val = 1618,Sum = 5339}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--雷震子魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 1021},[2] = {Id = 112,Val = 102,Sum = 382},[3] = {Id = 113,Val = 1941,Sum = 7280}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--雷震子魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 317,Sum = 1338},[2] = {Id = 112,Val = 119,Sum = 501},[3] = {Id = 113,Val = 2265,Sum = 9545}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--雷震子魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1700},[2] = {Id = 112,Val = 136,Sum = 637},[3] = {Id = 113,Val = 2588,Sum = 12133}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--雷震子魂珠-4 等级-9
				}
			},--雷震子专属武器魂珠-4
			[5] = {
				Id = 202605,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--雷震子魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 56,Sum = 56},[2] = {Id = 112,Val = 21,Sum = 21},[3] = {Id = 113,Val = 400,Sum = 400}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--雷震子魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 140},[2] = {Id = 112,Val = 32,Sum = 53},[3] = {Id = 113,Val = 599,Sum = 999}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--雷震子魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 112,Sum = 252},[2] = {Id = 112,Val = 42,Sum = 95},[3] = {Id = 113,Val = 799,Sum = 1798}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--雷震子魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 420},[2] = {Id = 112,Val = 63,Sum = 158},[3] = {Id = 113,Val = 1199,Sum = 2997}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--雷震子魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 224,Sum = 644},[2] = {Id = 112,Val = 84,Sum = 242},[3] = {Id = 113,Val = 1598,Sum = 4595}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--雷震子魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 924},[2] = {Id = 112,Val = 105,Sum = 347},[3] = {Id = 113,Val = 1998,Sum = 6593}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--雷震子魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1260},[2] = {Id = 112,Val = 126,Sum = 473},[3] = {Id = 113,Val = 2398,Sum = 8991}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--雷震子魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 391,Sum = 1651},[2] = {Id = 112,Val = 147,Sum = 620},[3] = {Id = 113,Val = 2797,Sum = 11788}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--雷震子魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 448,Sum = 2099},[2] = {Id = 112,Val = 168,Sum = 788},[3] = {Id = 113,Val = 3196,Sum = 14984}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--雷震子魂珠-5 等级-9
				}
			},--雷震子专属武器魂珠-5
			[6] = {
				Id = 202606,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--雷震子魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 68},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 487,Sum = 487}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--雷震子魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 170},[2] = {Id = 112,Val = 39,Sum = 64},[3] = {Id = 113,Val = 730,Sum = 1217}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--雷震子魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 137,Sum = 307},[2] = {Id = 112,Val = 51,Sum = 115},[3] = {Id = 113,Val = 974,Sum = 2191}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--雷震子魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 511},[2] = {Id = 112,Val = 77,Sum = 192},[3] = {Id = 113,Val = 1461,Sum = 3652}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--雷震子魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 783},[2] = {Id = 112,Val = 103,Sum = 295},[3] = {Id = 113,Val = 1948,Sum = 5600}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--雷震子魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1124},[2] = {Id = 112,Val = 128,Sum = 423},[3] = {Id = 113,Val = 2435,Sum = 8035}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--雷震子魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 409,Sum = 1533},[2] = {Id = 112,Val = 153,Sum = 576},[3] = {Id = 113,Val = 2921,Sum = 10956}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--雷震子魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 478,Sum = 2011},[2] = {Id = 112,Val = 179,Sum = 755},[3] = {Id = 113,Val = 3407,Sum = 14363}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--雷震子魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 546,Sum = 2557},[2] = {Id = 112,Val = 204,Sum = 959},[3] = {Id = 113,Val = 3894,Sum = 18257}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--雷震子魂珠-6 等级-9
				}
			},--雷震子专属武器魂珠-6
			[7] = {
				Id = 202607,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--雷震子魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 76},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 538,Sum = 538}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--雷震子魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 189},[2] = {Id = 112,Val = 42,Sum = 70},[3] = {Id = 113,Val = 808,Sum = 1346}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--雷震子魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 340},[2] = {Id = 112,Val = 57,Sum = 127},[3] = {Id = 113,Val = 1077,Sum = 2423}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--雷震子魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 567},[2] = {Id = 112,Val = 85,Sum = 212},[3] = {Id = 113,Val = 1616,Sum = 4039}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--雷震子魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 301,Sum = 868},[2] = {Id = 112,Val = 113,Sum = 325},[3] = {Id = 113,Val = 2154,Sum = 6193}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--雷震子魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1245},[2] = {Id = 112,Val = 141,Sum = 466},[3] = {Id = 113,Val = 2693,Sum = 8886}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--雷震子魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 452,Sum = 1697},[2] = {Id = 112,Val = 170,Sum = 636},[3] = {Id = 113,Val = 3231,Sum = 12117}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--雷震子魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 2225},[2] = {Id = 112,Val = 198,Sum = 834},[3] = {Id = 113,Val = 3770,Sum = 15887}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--雷震子魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 604,Sum = 2829},[2] = {Id = 112,Val = 226,Sum = 1060},[3] = {Id = 113,Val = 4308,Sum = 20195}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--雷震子魂珠-7 等级-9
				}
			},--雷震子专属武器魂珠-7
			[8] = {
				Id = 202608,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--雷震子魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 79},[2] = {Id = 112,Val = 30,Sum = 30},[3] = {Id = 113,Val = 564,Sum = 564}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--雷震子魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 198},[2] = {Id = 112,Val = 44,Sum = 74},[3] = {Id = 113,Val = 846,Sum = 1410}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--雷震子魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 356},[2] = {Id = 112,Val = 59,Sum = 133},[3] = {Id = 113,Val = 1128,Sum = 2538}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--雷震子魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 238,Sum = 594},[2] = {Id = 112,Val = 89,Sum = 222},[3] = {Id = 113,Val = 1692,Sum = 4230}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--雷震子魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 316,Sum = 910},[2] = {Id = 112,Val = 119,Sum = 341},[3] = {Id = 113,Val = 2256,Sum = 6486}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--雷震子魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1305},[2] = {Id = 112,Val = 149,Sum = 490},[3] = {Id = 113,Val = 2820,Sum = 9306}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--雷震子魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 474,Sum = 1779},[2] = {Id = 112,Val = 178,Sum = 668},[3] = {Id = 113,Val = 3384,Sum = 12690}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--雷震子魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2332},[2] = {Id = 112,Val = 207,Sum = 875},[3] = {Id = 113,Val = 3948,Sum = 16638}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--雷震子魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 632,Sum = 2964},[2] = {Id = 112,Val = 237,Sum = 1112},[3] = {Id = 113,Val = 4513,Sum = 21151}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--雷震子魂珠-8 等级-9
				}
			}--雷震子专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--雷震子专属武器解封-0
			[1] = {Pskill = {[1] = 130302611},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 18500},[2] = {Id = 1502026,Val = 40}}},--雷震子专属武器解封-1
			[2] = {Pskill = {[1] = 130302611},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 37500},[2] = {Id = 1502026,Val = 40}}},--雷震子专属武器解封-2
			[3] = {Pskill = {[1] = 130302611},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 84000},[2] = {Id = 1502026,Val = 60}}},--雷震子专属武器解封-3
			[4] = {Pskill = {[1] = 130302611},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 148000},[2] = {Id = 1502026,Val = 60}}},--雷震子专属武器解封-4
			[5] = {Pskill = {[1] = 130302611},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 366000},[2] = {Id = 1502026,Val = 80}}}--雷震子专属武器解封-5
		}
	},--雷震子专属武器
	[1102028] = {
		CardId = 1102028,
		Name = _T("方天画戟"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501028",
		HunZhu = {
			[1] = {
				Id = 202801,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--吕布魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 22,Sum = 22},[2] = {Id = 112,Val = 11,Sum = 11},[3] = {Id = 113,Val = 188,Sum = 188}},Cost = {[1] = {Id = 1401002,Val = 160},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--吕布魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 34,Sum = 56},[2] = {Id = 112,Val = 16,Sum = 27},[3] = {Id = 113,Val = 282,Sum = 470}},Cost = {[1] = {Id = 1401002,Val = 245},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--吕布魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 45,Sum = 101},[2] = {Id = 112,Val = 22,Sum = 49},[3] = {Id = 113,Val = 376,Sum = 846}},Cost = {[1] = {Id = 1401002,Val = 405},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--吕布魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 167},[2] = {Id = 112,Val = 34,Sum = 83},[3] = {Id = 113,Val = 564,Sum = 1410}},Cost = {[1] = {Id = 1401002,Val = 520},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--吕布魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 256},[2] = {Id = 112,Val = 45,Sum = 128},[3] = {Id = 113,Val = 752,Sum = 2162}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--吕布魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 111,Sum = 367},[2] = {Id = 112,Val = 55,Sum = 183},[3] = {Id = 113,Val = 941,Sum = 3103}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--吕布魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 134,Sum = 501},[2] = {Id = 112,Val = 66,Sum = 249},[3] = {Id = 113,Val = 1128,Sum = 4231}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--吕布魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 155,Sum = 656},[2] = {Id = 112,Val = 78,Sum = 327},[3] = {Id = 113,Val = 1316,Sum = 5547}},Cost = {[1] = {Id = 1401002,Val = 1055},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--吕布魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 178,Sum = 834},[2] = {Id = 112,Val = 89,Sum = 416},[3] = {Id = 113,Val = 1505,Sum = 7052}},Cost = {[1] = {Id = 1401002,Val = 1315},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--吕布魂珠-1 等级-9
				}
			},--吕布专属武器魂珠-1
			[2] = {
				Id = 202802,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--吕布魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 35,Sum = 35},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 298,Sum = 298}},Cost = {[1] = {Id = 1401002,Val = 445},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--吕布魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 53,Sum = 88},[2] = {Id = 112,Val = 27,Sum = 45},[3] = {Id = 113,Val = 446,Sum = 744}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--吕布魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 70,Sum = 158},[2] = {Id = 112,Val = 35,Sum = 80},[3] = {Id = 113,Val = 595,Sum = 1339}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--吕布魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 105,Sum = 263},[2] = {Id = 112,Val = 53,Sum = 133},[3] = {Id = 113,Val = 892,Sum = 2231}},Cost = {[1] = {Id = 1401002,Val = 710},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--吕布魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 403},[2] = {Id = 112,Val = 70,Sum = 203},[3] = {Id = 113,Val = 1189,Sum = 3420}},Cost = {[1] = {Id = 1401002,Val = 1080},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--吕布魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 579},[2] = {Id = 112,Val = 88,Sum = 291},[3] = {Id = 113,Val = 1487,Sum = 4907}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--吕布魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 211,Sum = 790},[2] = {Id = 112,Val = 105,Sum = 396},[3] = {Id = 113,Val = 1784,Sum = 6691}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--吕布魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 246,Sum = 1036},[2] = {Id = 112,Val = 123,Sum = 519},[3] = {Id = 113,Val = 2082,Sum = 8773}},Cost = {[1] = {Id = 1401002,Val = 2150},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--吕布魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 281,Sum = 1317},[2] = {Id = 112,Val = 140,Sum = 659},[3] = {Id = 113,Val = 2380,Sum = 11153}},Cost = {[1] = {Id = 1401002,Val = 2870},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--吕布魂珠-2 等级-9
				}
			},--吕布专属武器魂珠-2
			[3] = {
				Id = 202803,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--吕布魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 50},[2] = {Id = 112,Val = 24,Sum = 24},[3] = {Id = 113,Val = 420,Sum = 420}},Cost = {[1] = {Id = 1401002,Val = 910},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--吕布魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 124},[2] = {Id = 112,Val = 38,Sum = 62},[3] = {Id = 113,Val = 631,Sum = 1051}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--吕布魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 224},[2] = {Id = 112,Val = 50,Sum = 112},[3] = {Id = 113,Val = 841,Sum = 1892}},Cost = {[1] = {Id = 1401002,Val = 1140},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--吕布魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 149,Sum = 373},[2] = {Id = 112,Val = 74,Sum = 186},[3] = {Id = 113,Val = 1261,Sum = 3153}},Cost = {[1] = {Id = 1401002,Val = 1095},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--吕布魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 571},[2] = {Id = 112,Val = 100,Sum = 286},[3] = {Id = 113,Val = 1682,Sum = 4835}},Cost = {[1] = {Id = 1401002,Val = 1485},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--吕布魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 248,Sum = 819},[2] = {Id = 112,Val = 124,Sum = 410},[3] = {Id = 113,Val = 2102,Sum = 6937}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--吕布魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 298,Sum = 1117},[2] = {Id = 112,Val = 149,Sum = 559},[3] = {Id = 113,Val = 2524,Sum = 9461}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--吕布魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 348,Sum = 1465},[2] = {Id = 112,Val = 174,Sum = 733},[3] = {Id = 113,Val = 2944,Sum = 12405}},Cost = {[1] = {Id = 1401002,Val = 2955},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--吕布魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 398,Sum = 1863},[2] = {Id = 112,Val = 198,Sum = 931},[3] = {Id = 113,Val = 3365,Sum = 15770}},Cost = {[1] = {Id = 1401002,Val = 3695},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--吕布魂珠-3 等级-9
				}
			},--吕布专属武器魂珠-3
			[4] = {
				Id = 202804,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--吕布魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 51,Sum = 51},[2] = {Id = 112,Val = 26,Sum = 26},[3] = {Id = 113,Val = 432,Sum = 432}},Cost = {[1] = {Id = 1401002,Val = 1480},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--吕布魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 128},[2] = {Id = 112,Val = 38,Sum = 64},[3] = {Id = 113,Val = 647,Sum = 1079}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--吕布魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 103,Sum = 231},[2] = {Id = 112,Val = 51,Sum = 115},[3] = {Id = 113,Val = 863,Sum = 1942}},Cost = {[1] = {Id = 1401002,Val = 1235},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--吕布魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 153,Sum = 384},[2] = {Id = 112,Val = 77,Sum = 192},[3] = {Id = 113,Val = 1295,Sum = 3237}},Cost = {[1] = {Id = 1401002,Val = 2370},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--吕布魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 588},[2] = {Id = 112,Val = 103,Sum = 295},[3] = {Id = 113,Val = 1726,Sum = 4963}},Cost = {[1] = {Id = 1401002,Val = 2405},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--吕布魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 255,Sum = 843},[2] = {Id = 112,Val = 127,Sum = 422},[3] = {Id = 113,Val = 2158,Sum = 7121}},Cost = {[1] = {Id = 1401002,Val = 2390},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--吕布魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 306,Sum = 1149},[2] = {Id = 112,Val = 153,Sum = 575},[3] = {Id = 113,Val = 2588,Sum = 9709}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--吕布魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 356,Sum = 1505},[2] = {Id = 112,Val = 178,Sum = 753},[3] = {Id = 113,Val = 3020,Sum = 12729}},Cost = {[1] = {Id = 1401002,Val = 4790},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--吕布魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 408,Sum = 1913},[2] = {Id = 112,Val = 204,Sum = 957},[3] = {Id = 113,Val = 3451,Sum = 16180}},Cost = {[1] = {Id = 1401002,Val = 7190},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--吕布魂珠-4 等级-9
				}
			},--吕布专属武器魂珠-4
			[5] = {
				Id = 202805,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--吕布魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 533,Sum = 533}},Cost = {[1] = {Id = 1401002,Val = 3085},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--吕布魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 95,Sum = 158},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 799,Sum = 1332}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--吕布魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 284},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1066,Sum = 2398}},Cost = {[1] = {Id = 1401002,Val = 2570},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--吕布魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 473},[2] = {Id = 112,Val = 95,Sum = 236},[3] = {Id = 113,Val = 1598,Sum = 3996}},Cost = {[1] = {Id = 1401002,Val = 3705},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--吕布魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 725},[2] = {Id = 112,Val = 126,Sum = 362},[3] = {Id = 113,Val = 2131,Sum = 6127}},Cost = {[1] = {Id = 1401002,Val = 3760},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--吕布魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 315,Sum = 1040},[2] = {Id = 112,Val = 158,Sum = 520},[3] = {Id = 113,Val = 2664,Sum = 8791}},Cost = {[1] = {Id = 1401002,Val = 6230},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--吕布魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1418},[2] = {Id = 112,Val = 189,Sum = 709},[3] = {Id = 113,Val = 3197,Sum = 11988}},Cost = {[1] = {Id = 1401002,Val = 6245},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--吕布魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1858},[2] = {Id = 112,Val = 220,Sum = 929},[3] = {Id = 113,Val = 3730,Sum = 15718}},Cost = {[1] = {Id = 1401002,Val = 8740},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--吕布魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 2362},[2] = {Id = 112,Val = 252,Sum = 1181},[3] = {Id = 113,Val = 4261,Sum = 19979}},Cost = {[1] = {Id = 1401002,Val = 11240},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--吕布魂珠-5 等级-9
				}
			},--吕布专属武器魂珠-5
			[6] = {
				Id = 202806,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--吕布魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 77},[2] = {Id = 112,Val = 38,Sum = 38},[3] = {Id = 113,Val = 649,Sum = 649}},Cost = {[1] = {Id = 1401002,Val = 2905},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--吕布魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 115,Sum = 192},[2] = {Id = 112,Val = 58,Sum = 96},[3] = {Id = 113,Val = 973,Sum = 1622}},Cost = {[1] = {Id = 1401002,Val = 4360},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--吕布魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 346},[2] = {Id = 112,Val = 77,Sum = 173},[3] = {Id = 113,Val = 1298,Sum = 2920}},Cost = {[1] = {Id = 1401002,Val = 4840},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--吕布魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 230,Sum = 576},[2] = {Id = 112,Val = 115,Sum = 288},[3] = {Id = 113,Val = 1948,Sum = 4868}},Cost = {[1] = {Id = 1401002,Val = 6970},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--吕布魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 306,Sum = 882},[2] = {Id = 112,Val = 154,Sum = 442},[3] = {Id = 113,Val = 2597,Sum = 7465}},Cost = {[1] = {Id = 1401002,Val = 7080},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--吕布魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 383,Sum = 1265},[2] = {Id = 112,Val = 192,Sum = 634},[3] = {Id = 113,Val = 3246,Sum = 10711}},Cost = {[1] = {Id = 1401002,Val = 9385},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--吕布魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 460,Sum = 1725},[2] = {Id = 112,Val = 230,Sum = 864},[3] = {Id = 113,Val = 3894,Sum = 14605}},Cost = {[1] = {Id = 1401002,Val = 11760},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--吕布魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 537,Sum = 2262},[2] = {Id = 112,Val = 269,Sum = 1133},[3] = {Id = 113,Val = 4543,Sum = 19148}},Cost = {[1] = {Id = 1401002,Val = 16445},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--吕布魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 614,Sum = 2876},[2] = {Id = 112,Val = 306,Sum = 1439},[3] = {Id = 113,Val = 5192,Sum = 24340}},Cost = {[1] = {Id = 1401002,Val = 18800},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--吕布魂珠-6 等级-9
				}
			},--吕布专属武器魂珠-6
			[7] = {
				Id = 202807,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--吕布魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 85,Sum = 85},[2] = {Id = 112,Val = 42,Sum = 42},[3] = {Id = 113,Val = 718,Sum = 718}},Cost = {[1] = {Id = 1401002,Val = 5710},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--吕布魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 127,Sum = 212},[2] = {Id = 112,Val = 63,Sum = 105},[3] = {Id = 113,Val = 1078,Sum = 1796}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--吕布魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 382},[2] = {Id = 112,Val = 85,Sum = 190},[3] = {Id = 113,Val = 1436,Sum = 3232}},Cost = {[1] = {Id = 1401002,Val = 7135},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--吕布魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 255,Sum = 637},[2] = {Id = 112,Val = 127,Sum = 317},[3] = {Id = 113,Val = 2154,Sum = 5386}},Cost = {[1] = {Id = 1401002,Val = 9130},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--吕布魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 339,Sum = 976},[2] = {Id = 112,Val = 170,Sum = 487},[3] = {Id = 113,Val = 2872,Sum = 8258}},Cost = {[1] = {Id = 1401002,Val = 9275},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--吕布魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 424,Sum = 1400},[2] = {Id = 112,Val = 212,Sum = 699},[3] = {Id = 113,Val = 3590,Sum = 11848}},Cost = {[1] = {Id = 1401002,Val = 11525},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--吕布魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 509,Sum = 1909},[2] = {Id = 112,Val = 255,Sum = 954},[3] = {Id = 113,Val = 4308,Sum = 16156}},Cost = {[1] = {Id = 1401002,Val = 16170},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--吕布魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 594,Sum = 2503},[2] = {Id = 112,Val = 297,Sum = 1251},[3] = {Id = 113,Val = 5027,Sum = 21183}},Cost = {[1] = {Id = 1401002,Val = 18465},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--吕布魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 679,Sum = 3182},[2] = {Id = 112,Val = 339,Sum = 1590},[3] = {Id = 113,Val = 5744,Sum = 26927}},Cost = {[1] = {Id = 1401002,Val = 23090},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--吕布魂珠-7 等级-9
				}
			},--吕布专属武器魂珠-7
			[8] = {
				Id = 202808,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--吕布魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 89},[2] = {Id = 112,Val = 45,Sum = 45},[3] = {Id = 113,Val = 752,Sum = 752}},Cost = {[1] = {Id = 1401002,Val = 4865},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--吕布魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 134,Sum = 223},[2] = {Id = 112,Val = 66,Sum = 111},[3] = {Id = 113,Val = 1128,Sum = 1880}},Cost = {[1] = {Id = 1401002,Val = 5835},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--吕布魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 178,Sum = 401},[2] = {Id = 112,Val = 89,Sum = 200},[3] = {Id = 113,Val = 1504,Sum = 3384}},Cost = {[1] = {Id = 1401002,Val = 8105},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--吕布魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 267,Sum = 668},[2] = {Id = 112,Val = 134,Sum = 334},[3] = {Id = 113,Val = 2256,Sum = 5640}},Cost = {[1] = {Id = 1401002,Val = 9340},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--吕布魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 355,Sum = 1023},[2] = {Id = 112,Val = 178,Sum = 512},[3] = {Id = 113,Val = 3008,Sum = 8648}},Cost = {[1] = {Id = 1401002,Val = 11855},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--吕布魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 444,Sum = 1467},[2] = {Id = 112,Val = 223,Sum = 735},[3] = {Id = 113,Val = 3760,Sum = 12408}},Cost = {[1] = {Id = 1401002,Val = 14145},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--吕布魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 533,Sum = 2000},[2] = {Id = 112,Val = 267,Sum = 1002},[3] = {Id = 113,Val = 4512,Sum = 16920}},Cost = {[1] = {Id = 1401002,Val = 19690},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--吕布魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 622,Sum = 2622},[2] = {Id = 112,Val = 311,Sum = 1313},[3] = {Id = 113,Val = 5264,Sum = 22184}},Cost = {[1] = {Id = 1401002,Val = 23605},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--吕布魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 711,Sum = 3333},[2] = {Id = 112,Val = 355,Sum = 1668},[3] = {Id = 113,Val = 6017,Sum = 28201}},Cost = {[1] = {Id = 1401002,Val = 23615},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--吕布魂珠-8 等级-9
				}
			}--吕布专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--吕布专属武器解封-0
			[1] = {Pskill = {[1] = 130302811},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 36500},[2] = {Id = 1502028,Val = 80}}},--吕布专属武器解封-1
			[2] = {Pskill = {[1] = 130302811},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 75500},[2] = {Id = 1502028,Val = 80}}},--吕布专属武器解封-2
			[3] = {Pskill = {[1] = 130302811},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 168500},[2] = {Id = 1502028,Val = 120}}},--吕布专属武器解封-3
			[4] = {Pskill = {[1] = 130302811},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 295500},[2] = {Id = 1502028,Val = 120}}},--吕布专属武器解封-4
			[5] = {Pskill = {[1] = 130302811},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 732500},[2] = {Id = 1502028,Val = 160}}}--吕布专属武器解封-5
		}
	},--吕布专属武器
	[1102030] = {
		CardId = 1102030,
		Name = _T("小乙玉笛"),
		Quality = 3,
		Icon = "ui_dtex_Equip_1501030",
		HunZhu = {
			[1] = {
				Id = 203001,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--燕青魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 18,Sum = 18},[2] = {Id = 112,Val = 9,Sum = 9},[3] = {Id = 113,Val = 157,Sum = 157}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--燕青魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 28,Sum = 46},[2] = {Id = 112,Val = 13,Sum = 22},[3] = {Id = 113,Val = 235,Sum = 392}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--燕青魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 36,Sum = 82},[2] = {Id = 112,Val = 18,Sum = 40},[3] = {Id = 113,Val = 313,Sum = 705}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--燕青魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 54,Sum = 136},[2] = {Id = 112,Val = 28,Sum = 68},[3] = {Id = 113,Val = 470,Sum = 1175}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--燕青魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 73,Sum = 209},[2] = {Id = 112,Val = 36,Sum = 104},[3] = {Id = 113,Val = 627,Sum = 1802}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--燕青魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 299},[2] = {Id = 112,Val = 45,Sum = 149},[3] = {Id = 113,Val = 784,Sum = 2586}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--燕青魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 109,Sum = 408},[2] = {Id = 112,Val = 54,Sum = 203},[3] = {Id = 113,Val = 940,Sum = 3526}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--燕青魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 127,Sum = 535},[2] = {Id = 112,Val = 64,Sum = 267},[3] = {Id = 113,Val = 1097,Sum = 4623}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--燕青魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 145,Sum = 680},[2] = {Id = 112,Val = 73,Sum = 340},[3] = {Id = 113,Val = 1254,Sum = 5877}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--燕青魂珠-1 等级-9
				}
			},--燕青专属武器魂珠-1
			[2] = {
				Id = 203002,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--燕青魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 29,Sum = 29},[2] = {Id = 112,Val = 14,Sum = 14},[3] = {Id = 113,Val = 248,Sum = 248}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--燕青魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 43,Sum = 72},[2] = {Id = 112,Val = 22,Sum = 36},[3] = {Id = 113,Val = 372,Sum = 620}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--燕青魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 129},[2] = {Id = 112,Val = 29,Sum = 65},[3] = {Id = 113,Val = 496,Sum = 1116}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--燕青魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 86,Sum = 215},[2] = {Id = 112,Val = 43,Sum = 108},[3] = {Id = 113,Val = 743,Sum = 1859}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--燕青魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 114,Sum = 329},[2] = {Id = 112,Val = 57,Sum = 165},[3] = {Id = 113,Val = 991,Sum = 2850}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--燕青魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 143,Sum = 472},[2] = {Id = 112,Val = 72,Sum = 237},[3] = {Id = 113,Val = 1239,Sum = 4089}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--燕青魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 172,Sum = 644},[2] = {Id = 112,Val = 86,Sum = 323},[3] = {Id = 113,Val = 1487,Sum = 5576}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--燕青魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 844},[2] = {Id = 112,Val = 100,Sum = 423},[3] = {Id = 113,Val = 1735,Sum = 7311}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--燕青魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 229,Sum = 1073},[2] = {Id = 112,Val = 114,Sum = 537},[3] = {Id = 113,Val = 1983,Sum = 9294}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--燕青魂珠-2 等级-9
				}
			},--燕青专属武器魂珠-2
			[3] = {
				Id = 203003,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--燕青魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 41,Sum = 41},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 350,Sum = 350}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--燕青魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 61,Sum = 102},[2] = {Id = 112,Val = 31,Sum = 51},[3] = {Id = 113,Val = 526,Sum = 876}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--燕青魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 81,Sum = 183},[2] = {Id = 112,Val = 41,Sum = 92},[3] = {Id = 113,Val = 701,Sum = 1577}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--燕青魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 121,Sum = 304},[2] = {Id = 112,Val = 61,Sum = 153},[3] = {Id = 113,Val = 1051,Sum = 2628}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--燕青魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 466},[2] = {Id = 112,Val = 81,Sum = 234},[3] = {Id = 113,Val = 1402,Sum = 4030}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--燕青魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 202,Sum = 668},[2] = {Id = 112,Val = 101,Sum = 335},[3] = {Id = 113,Val = 1752,Sum = 5782}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--燕青魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 243,Sum = 911},[2] = {Id = 112,Val = 121,Sum = 456},[3] = {Id = 113,Val = 2103,Sum = 7885}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--燕青魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 1195},[2] = {Id = 112,Val = 142,Sum = 598},[3] = {Id = 113,Val = 2453,Sum = 10338}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--燕青魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 325,Sum = 1520},[2] = {Id = 112,Val = 162,Sum = 760},[3] = {Id = 113,Val = 2804,Sum = 13142}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--燕青魂珠-3 等级-9
				}
			},--燕青专属武器魂珠-3
			[4] = {
				Id = 203004,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--燕青魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 42,Sum = 42},[2] = {Id = 112,Val = 21,Sum = 21},[3] = {Id = 113,Val = 360,Sum = 360}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--燕青魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 105},[2] = {Id = 112,Val = 31,Sum = 52},[3] = {Id = 113,Val = 539,Sum = 899}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--燕青魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 189},[2] = {Id = 112,Val = 42,Sum = 94},[3] = {Id = 113,Val = 719,Sum = 1618}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--燕青魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 124,Sum = 313},[2] = {Id = 112,Val = 63,Sum = 157},[3] = {Id = 113,Val = 1079,Sum = 2697}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--燕青魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 166,Sum = 479},[2] = {Id = 112,Val = 84,Sum = 241},[3] = {Id = 113,Val = 1438,Sum = 4135}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--燕青魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 687},[2] = {Id = 112,Val = 103,Sum = 344},[3] = {Id = 113,Val = 1798,Sum = 5933}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--燕青魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 937},[2] = {Id = 112,Val = 124,Sum = 468},[3] = {Id = 113,Val = 2157,Sum = 8090}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--燕青魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 290,Sum = 1227},[2] = {Id = 112,Val = 145,Sum = 613},[3] = {Id = 113,Val = 2517,Sum = 10607}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--燕青魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 332,Sum = 1559},[2] = {Id = 112,Val = 166,Sum = 779},[3] = {Id = 113,Val = 2876,Sum = 13483}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--燕青魂珠-4 等级-9
				}
			},--燕青专属武器魂珠-4
			[5] = {
				Id = 203005,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--燕青魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 52,Sum = 52},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 444,Sum = 444}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--燕青魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 77,Sum = 129},[2] = {Id = 112,Val = 39,Sum = 64},[3] = {Id = 113,Val = 666,Sum = 1110}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--燕青魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 231},[2] = {Id = 112,Val = 52,Sum = 116},[3] = {Id = 113,Val = 888,Sum = 1998}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--燕青魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 385},[2] = {Id = 112,Val = 77,Sum = 193},[3] = {Id = 113,Val = 1332,Sum = 3330}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--燕青魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 206,Sum = 591},[2] = {Id = 112,Val = 102,Sum = 295},[3] = {Id = 113,Val = 1776,Sum = 5106}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--燕青魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 256,Sum = 847},[2] = {Id = 112,Val = 129,Sum = 424},[3] = {Id = 113,Val = 2220,Sum = 7326}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--燕青魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 1155},[2] = {Id = 112,Val = 154,Sum = 578},[3] = {Id = 113,Val = 2664,Sum = 9990}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--燕青魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 359,Sum = 1514},[2] = {Id = 112,Val = 179,Sum = 757},[3] = {Id = 113,Val = 3108,Sum = 13098}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--燕青魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 410,Sum = 1924},[2] = {Id = 112,Val = 206,Sum = 963},[3] = {Id = 113,Val = 3551,Sum = 16649}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--燕青魂珠-5 等级-9
				}
			},--燕青专属武器魂珠-5
			[6] = {
				Id = 203006,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--燕青魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 541,Sum = 541}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--燕青魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 157},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 811,Sum = 1352}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--燕青魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 282},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1082,Sum = 2434}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--燕青魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 469},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1623,Sum = 4057}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--燕青魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 719},[2] = {Id = 112,Val = 125,Sum = 360},[3] = {Id = 113,Val = 2164,Sum = 6221}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--燕青魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 1031},[2] = {Id = 112,Val = 156,Sum = 516},[3] = {Id = 113,Val = 2705,Sum = 8926}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--燕青魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 375,Sum = 1406},[2] = {Id = 112,Val = 187,Sum = 703},[3] = {Id = 113,Val = 3245,Sum = 12171}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--燕青魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 438,Sum = 1844},[2] = {Id = 112,Val = 219,Sum = 922},[3] = {Id = 113,Val = 3786,Sum = 15957}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--燕青魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 501,Sum = 2345},[2] = {Id = 112,Val = 250,Sum = 1172},[3] = {Id = 113,Val = 4327,Sum = 20284}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--燕青魂珠-6 等级-9
				}
			},--燕青专属武器魂珠-6
			[7] = {
				Id = 203007,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--燕青魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 69,Sum = 69},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 598,Sum = 598}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--燕青魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 103,Sum = 172},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 898,Sum = 1496}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--燕青魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 139,Sum = 311},[2] = {Id = 112,Val = 69,Sum = 155},[3] = {Id = 113,Val = 1197,Sum = 2693}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--燕青魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 519},[2] = {Id = 112,Val = 103,Sum = 258},[3] = {Id = 113,Val = 1795,Sum = 4488}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--燕青魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 276,Sum = 795},[2] = {Id = 112,Val = 139,Sum = 397},[3] = {Id = 113,Val = 2393,Sum = 6881}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--燕青魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 345,Sum = 1140},[2] = {Id = 112,Val = 173,Sum = 570},[3] = {Id = 113,Val = 2992,Sum = 9873}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--燕青魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 415,Sum = 1555},[2] = {Id = 112,Val = 208,Sum = 778},[3] = {Id = 113,Val = 3590,Sum = 13463}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--燕青魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 484,Sum = 2039},[2] = {Id = 112,Val = 242,Sum = 1020},[3] = {Id = 113,Val = 4189,Sum = 17652}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--燕青魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2592},[2] = {Id = 112,Val = 276,Sum = 1296},[3] = {Id = 113,Val = 4787,Sum = 22439}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--燕青魂珠-7 等级-9
				}
			},--燕青专属武器魂珠-7
			[8] = {
				Id = 203008,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--燕青魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 73,Sum = 73},[2] = {Id = 112,Val = 36,Sum = 36},[3] = {Id = 113,Val = 627,Sum = 627}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--燕青魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 109,Sum = 182},[2] = {Id = 112,Val = 54,Sum = 90},[3] = {Id = 113,Val = 940,Sum = 1567}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--燕青魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 145,Sum = 327},[2] = {Id = 112,Val = 73,Sum = 163},[3] = {Id = 113,Val = 1253,Sum = 2820}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--燕青魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 545},[2] = {Id = 112,Val = 109,Sum = 272},[3] = {Id = 113,Val = 1880,Sum = 4700}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--燕青魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 289,Sum = 834},[2] = {Id = 112,Val = 145,Sum = 417},[3] = {Id = 113,Val = 2507,Sum = 7207}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--燕青魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1196},[2] = {Id = 112,Val = 182,Sum = 599},[3] = {Id = 113,Val = 3133,Sum = 10340}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--燕青魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 435,Sum = 1631},[2] = {Id = 112,Val = 218,Sum = 817},[3] = {Id = 113,Val = 3760,Sum = 14100}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--燕青魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 507,Sum = 2138},[2] = {Id = 112,Val = 253,Sum = 1070},[3] = {Id = 113,Val = 4387,Sum = 18487}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--燕青魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 580,Sum = 2718},[2] = {Id = 112,Val = 289,Sum = 1359},[3] = {Id = 113,Val = 5014,Sum = 23501}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--燕青魂珠-8 等级-9
				}
			}--燕青专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--燕青专属武器解封-0
			[1] = {Pskill = {[1] = 130303011},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 22000},[2] = {Id = 1502030,Val = 40}}},--燕青专属武器解封-1
			[2] = {Pskill = {[1] = 130303011},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 45000},[2] = {Id = 1502030,Val = 40}}},--燕青专属武器解封-2
			[3] = {Pskill = {[1] = 130303011},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 101000},[2] = {Id = 1502030,Val = 60}}},--燕青专属武器解封-3
			[4] = {Pskill = {[1] = 130303011},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 177500},[2] = {Id = 1502030,Val = 60}}},--燕青专属武器解封-4
			[5] = {Pskill = {[1] = 130303011},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 439500},[2] = {Id = 1502030,Val = 80}}}--燕青专属武器解封-5
		}
	},--燕青专属武器
	[1102031] = {
		CardId = 1102031,
		Name = _T("虎头錾金枪"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501031",
		HunZhu = {
			[1] = {
				Id = 203101,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--秦琼魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 19,Sum = 19},[2] = {Id = 112,Val = 10,Sum = 10},[3] = {Id = 113,Val = 188,Sum = 188}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--秦琼魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 49},[2] = {Id = 112,Val = 14,Sum = 24},[3] = {Id = 113,Val = 282,Sum = 470}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--秦琼魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 89},[2] = {Id = 112,Val = 19,Sum = 43},[3] = {Id = 113,Val = 376,Sum = 846}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--秦琼魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 148},[2] = {Id = 112,Val = 30,Sum = 73},[3] = {Id = 113,Val = 564,Sum = 1410}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--秦琼魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 227},[2] = {Id = 112,Val = 40,Sum = 113},[3] = {Id = 113,Val = 752,Sum = 2162}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--秦琼魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 98,Sum = 325},[2] = {Id = 112,Val = 49,Sum = 162},[3] = {Id = 113,Val = 941,Sum = 3103}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--秦琼魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 444},[2] = {Id = 112,Val = 59,Sum = 221},[3] = {Id = 113,Val = 1128,Sum = 4231}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--秦琼魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 138,Sum = 582},[2] = {Id = 112,Val = 70,Sum = 291},[3] = {Id = 113,Val = 1316,Sum = 5547}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--秦琼魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 740},[2] = {Id = 112,Val = 79,Sum = 370},[3] = {Id = 113,Val = 1505,Sum = 7052}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--秦琼魂珠-1 等级-9
				}
			},--秦琼专属武器魂珠-1
			[2] = {
				Id = 203102,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--秦琼魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 31,Sum = 31},[2] = {Id = 112,Val = 16,Sum = 16},[3] = {Id = 113,Val = 298,Sum = 298}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--秦琼魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 78},[2] = {Id = 112,Val = 24,Sum = 40},[3] = {Id = 113,Val = 446,Sum = 744}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--秦琼魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 62,Sum = 140},[2] = {Id = 112,Val = 31,Sum = 71},[3] = {Id = 113,Val = 595,Sum = 1339}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--秦琼魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 234},[2] = {Id = 112,Val = 47,Sum = 118},[3] = {Id = 113,Val = 892,Sum = 2231}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--秦琼魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 359},[2] = {Id = 112,Val = 62,Sum = 180},[3] = {Id = 113,Val = 1189,Sum = 3420}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--秦琼魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 515},[2] = {Id = 112,Val = 78,Sum = 258},[3] = {Id = 113,Val = 1487,Sum = 4907}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--秦琼魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 702},[2] = {Id = 112,Val = 94,Sum = 352},[3] = {Id = 113,Val = 1784,Sum = 6691}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--秦琼魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 920},[2] = {Id = 112,Val = 109,Sum = 461},[3] = {Id = 113,Val = 2082,Sum = 8773}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--秦琼魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 1170},[2] = {Id = 112,Val = 125,Sum = 586},[3] = {Id = 113,Val = 2380,Sum = 11153}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--秦琼魂珠-2 等级-9
				}
			},--秦琼专属武器魂珠-2
			[3] = {
				Id = 203103,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--秦琼魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 420,Sum = 420}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--秦琼魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 34,Sum = 56},[3] = {Id = 113,Val = 631,Sum = 1051}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--秦琼魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 199},[2] = {Id = 112,Val = 44,Sum = 100},[3] = {Id = 113,Val = 841,Sum = 1892}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--秦琼魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 331},[2] = {Id = 112,Val = 66,Sum = 166},[3] = {Id = 113,Val = 1261,Sum = 3153}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--秦琼魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 507},[2] = {Id = 112,Val = 89,Sum = 255},[3] = {Id = 113,Val = 1682,Sum = 4835}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--秦琼魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 728},[2] = {Id = 112,Val = 110,Sum = 365},[3] = {Id = 113,Val = 2102,Sum = 6937}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--秦琼魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 265,Sum = 993},[2] = {Id = 112,Val = 132,Sum = 497},[3] = {Id = 113,Val = 2524,Sum = 9461}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--秦琼魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 310,Sum = 1303},[2] = {Id = 112,Val = 155,Sum = 652},[3] = {Id = 113,Val = 2944,Sum = 12405}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--秦琼魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 354,Sum = 1657},[2] = {Id = 112,Val = 176,Sum = 828},[3] = {Id = 113,Val = 3365,Sum = 15770}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--秦琼魂珠-3 等级-9
				}
			},--秦琼专属武器魂珠-3
			[4] = {
				Id = 203104,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--秦琼魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 46,Sum = 46},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 432,Sum = 432}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--秦琼魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 114},[2] = {Id = 112,Val = 34,Sum = 57},[3] = {Id = 113,Val = 647,Sum = 1079}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--秦琼魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 91,Sum = 205},[2] = {Id = 112,Val = 46,Sum = 103},[3] = {Id = 113,Val = 863,Sum = 1942}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--秦琼魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 136,Sum = 341},[2] = {Id = 112,Val = 68,Sum = 171},[3] = {Id = 113,Val = 1295,Sum = 3237}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--秦琼魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 181,Sum = 522},[2] = {Id = 112,Val = 91,Sum = 262},[3] = {Id = 113,Val = 1726,Sum = 4963}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--秦琼魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 749},[2] = {Id = 112,Val = 113,Sum = 375},[3] = {Id = 113,Val = 2158,Sum = 7121}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--秦琼魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 1021},[2] = {Id = 112,Val = 136,Sum = 511},[3] = {Id = 113,Val = 2588,Sum = 9709}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--秦琼魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 317,Sum = 1338},[2] = {Id = 112,Val = 158,Sum = 669},[3] = {Id = 113,Val = 3020,Sum = 12729}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--秦琼魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1700},[2] = {Id = 112,Val = 181,Sum = 850},[3] = {Id = 113,Val = 3451,Sum = 16180}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--秦琼魂珠-4 等级-9
				}
			},--秦琼专属武器魂珠-4
			[5] = {
				Id = 203105,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--秦琼魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 56,Sum = 56},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 533,Sum = 533}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--秦琼魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 140},[2] = {Id = 112,Val = 42,Sum = 70},[3] = {Id = 113,Val = 799,Sum = 1332}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--秦琼魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 112,Sum = 252},[2] = {Id = 112,Val = 56,Sum = 126},[3] = {Id = 113,Val = 1066,Sum = 2398}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--秦琼魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 420},[2] = {Id = 112,Val = 84,Sum = 210},[3] = {Id = 113,Val = 1598,Sum = 3996}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--秦琼魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 224,Sum = 644},[2] = {Id = 112,Val = 112,Sum = 322},[3] = {Id = 113,Val = 2131,Sum = 6127}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--秦琼魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 924},[2] = {Id = 112,Val = 140,Sum = 462},[3] = {Id = 113,Val = 2664,Sum = 8791}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--秦琼魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1260},[2] = {Id = 112,Val = 168,Sum = 630},[3] = {Id = 113,Val = 3197,Sum = 11988}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--秦琼魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 391,Sum = 1651},[2] = {Id = 112,Val = 196,Sum = 826},[3] = {Id = 113,Val = 3730,Sum = 15718}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--秦琼魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 448,Sum = 2099},[2] = {Id = 112,Val = 224,Sum = 1050},[3] = {Id = 113,Val = 4261,Sum = 19979}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--秦琼魂珠-5 等级-9
				}
			},--秦琼专属武器魂珠-5
			[6] = {
				Id = 203106,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--秦琼魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 68},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 649,Sum = 649}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--秦琼魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 170},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 973,Sum = 1622}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--秦琼魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 137,Sum = 307},[2] = {Id = 112,Val = 68,Sum = 154},[3] = {Id = 113,Val = 1298,Sum = 2920}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--秦琼魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 511},[2] = {Id = 112,Val = 102,Sum = 256},[3] = {Id = 113,Val = 1948,Sum = 4868}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--秦琼魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 783},[2] = {Id = 112,Val = 137,Sum = 393},[3] = {Id = 113,Val = 2597,Sum = 7465}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--秦琼魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1124},[2] = {Id = 112,Val = 170,Sum = 563},[3] = {Id = 113,Val = 3246,Sum = 10711}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--秦琼魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 409,Sum = 1533},[2] = {Id = 112,Val = 204,Sum = 767},[3] = {Id = 113,Val = 3894,Sum = 14605}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--秦琼魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 478,Sum = 2011},[2] = {Id = 112,Val = 239,Sum = 1006},[3] = {Id = 113,Val = 4543,Sum = 19148}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--秦琼魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 546,Sum = 2557},[2] = {Id = 112,Val = 272,Sum = 1278},[3] = {Id = 113,Val = 5192,Sum = 24340}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--秦琼魂珠-6 等级-9
				}
			},--秦琼专属武器魂珠-6
			[7] = {
				Id = 203107,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--秦琼魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 76},[2] = {Id = 112,Val = 37,Sum = 37},[3] = {Id = 113,Val = 718,Sum = 718}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--秦琼魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 189},[2] = {Id = 112,Val = 56,Sum = 93},[3] = {Id = 113,Val = 1078,Sum = 1796}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--秦琼魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 340},[2] = {Id = 112,Val = 76,Sum = 169},[3] = {Id = 113,Val = 1436,Sum = 3232}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--秦琼魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 567},[2] = {Id = 112,Val = 113,Sum = 282},[3] = {Id = 113,Val = 2154,Sum = 5386}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--秦琼魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 301,Sum = 868},[2] = {Id = 112,Val = 151,Sum = 433},[3] = {Id = 113,Val = 2872,Sum = 8258}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--秦琼魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1245},[2] = {Id = 112,Val = 188,Sum = 621},[3] = {Id = 113,Val = 3590,Sum = 11848}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--秦琼魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 452,Sum = 1697},[2] = {Id = 112,Val = 227,Sum = 848},[3] = {Id = 113,Val = 4308,Sum = 16156}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--秦琼魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 2225},[2] = {Id = 112,Val = 264,Sum = 1112},[3] = {Id = 113,Val = 5027,Sum = 21183}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--秦琼魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 604,Sum = 2829},[2] = {Id = 112,Val = 301,Sum = 1413},[3] = {Id = 113,Val = 5744,Sum = 26927}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--秦琼魂珠-7 等级-9
				}
			},--秦琼专属武器魂珠-7
			[8] = {
				Id = 203108,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--秦琼魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 79},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 752,Sum = 752}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--秦琼魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 198},[2] = {Id = 112,Val = 59,Sum = 99},[3] = {Id = 113,Val = 1128,Sum = 1880}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--秦琼魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 356},[2] = {Id = 112,Val = 79,Sum = 178},[3] = {Id = 113,Val = 1504,Sum = 3384}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--秦琼魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 238,Sum = 594},[2] = {Id = 112,Val = 119,Sum = 297},[3] = {Id = 113,Val = 2256,Sum = 5640}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--秦琼魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 316,Sum = 910},[2] = {Id = 112,Val = 158,Sum = 455},[3] = {Id = 113,Val = 3008,Sum = 8648}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--秦琼魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1305},[2] = {Id = 112,Val = 198,Sum = 653},[3] = {Id = 113,Val = 3760,Sum = 12408}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--秦琼魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 474,Sum = 1779},[2] = {Id = 112,Val = 238,Sum = 891},[3] = {Id = 113,Val = 4512,Sum = 16920}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--秦琼魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2332},[2] = {Id = 112,Val = 276,Sum = 1167},[3] = {Id = 113,Val = 5264,Sum = 22184}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--秦琼魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 632,Sum = 2964},[2] = {Id = 112,Val = 316,Sum = 1483},[3] = {Id = 113,Val = 6017,Sum = 28201}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--秦琼魂珠-8 等级-9
				}
			}--秦琼专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--秦琼专属武器解封-0
			[1] = {Pskill = {[1] = 130303111},PSkillLevel = {[1] = 1},Cost = {[1] = {Id = 1401002,Val = 29000},[2] = {Id = 1502031,Val = 80}}},--秦琼专属武器解封-1
			[2] = {Pskill = {[1] = 130303111},PSkillLevel = {[1] = 2},Cost = {[1] = {Id = 1401002,Val = 60500},[2] = {Id = 1502031,Val = 80}}},--秦琼专属武器解封-2
			[3] = {Pskill = {[1] = 130303111},PSkillLevel = {[1] = 3},Cost = {[1] = {Id = 1401002,Val = 135000},[2] = {Id = 1502031,Val = 120}}},--秦琼专属武器解封-3
			[4] = {Pskill = {[1] = 130303111},PSkillLevel = {[1] = 4},Cost = {[1] = {Id = 1401002,Val = 236500},[2] = {Id = 1502031,Val = 120}}},--秦琼专属武器解封-4
			[5] = {Pskill = {[1] = 130303111},PSkillLevel = {[1] = 5},Cost = {[1] = {Id = 1401002,Val = 586000},[2] = {Id = 1502031,Val = 160}}}--秦琼专属武器解封-5
		}
	},--秦琼专属武器
	[1102996] = {
		CardId = 1102996,
		Name = _T("UR守护灵专属武器"),
		Quality = 5,
		Icon = "ui_dtex_Equip_1501996",
		HunZhu = {
			[1] = {
				Id = 299601,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 24,Sum = 24},[2] = {Id = 112,Val = 10,Sum = 10},[3] = {Id = 113,Val = 188,Sum = 188}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--UR守护灵魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 38,Sum = 62},[2] = {Id = 112,Val = 14,Sum = 24},[3] = {Id = 113,Val = 282,Sum = 470}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--UR守护灵魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 112},[2] = {Id = 112,Val = 19,Sum = 43},[3] = {Id = 113,Val = 376,Sum = 846}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--UR守护灵魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 186},[2] = {Id = 112,Val = 30,Sum = 73},[3] = {Id = 113,Val = 564,Sum = 1410}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--UR守护灵魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 285},[2] = {Id = 112,Val = 40,Sum = 113},[3] = {Id = 113,Val = 752,Sum = 2162}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--UR守护灵魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 123,Sum = 408},[2] = {Id = 112,Val = 49,Sum = 162},[3] = {Id = 113,Val = 941,Sum = 3103}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--UR守护灵魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 149,Sum = 557},[2] = {Id = 112,Val = 59,Sum = 221},[3] = {Id = 113,Val = 1128,Sum = 4231}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--UR守护灵魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 173,Sum = 730},[2] = {Id = 112,Val = 70,Sum = 291},[3] = {Id = 113,Val = 1316,Sum = 5547}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--UR守护灵魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 928},[2] = {Id = 112,Val = 79,Sum = 370},[3] = {Id = 113,Val = 1505,Sum = 7052}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--UR守护灵魂珠-1 等级-9
				}
			},--UR守护灵专属武器魂珠-1
			[2] = {
				Id = 299602,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 39,Sum = 39},[2] = {Id = 112,Val = 16,Sum = 16},[3] = {Id = 113,Val = 298,Sum = 298}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--UR守护灵魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 98},[2] = {Id = 112,Val = 24,Sum = 40},[3] = {Id = 113,Val = 446,Sum = 744}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--UR守护灵魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 78,Sum = 176},[2] = {Id = 112,Val = 31,Sum = 71},[3] = {Id = 113,Val = 595,Sum = 1339}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--UR守护灵魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 117,Sum = 293},[2] = {Id = 112,Val = 47,Sum = 118},[3] = {Id = 113,Val = 892,Sum = 2231}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--UR守护灵魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 449},[2] = {Id = 112,Val = 62,Sum = 180},[3] = {Id = 113,Val = 1189,Sum = 3420}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--UR守护灵魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 195,Sum = 644},[2] = {Id = 112,Val = 78,Sum = 258},[3] = {Id = 113,Val = 1487,Sum = 4907}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--UR守护灵魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 234,Sum = 878},[2] = {Id = 112,Val = 94,Sum = 352},[3] = {Id = 113,Val = 1784,Sum = 6691}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--UR守护灵魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 273,Sum = 1151},[2] = {Id = 112,Val = 109,Sum = 461},[3] = {Id = 113,Val = 2082,Sum = 8773}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--UR守护灵魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 1463},[2] = {Id = 112,Val = 125,Sum = 586},[3] = {Id = 113,Val = 2380,Sum = 11153}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--UR守护灵魂珠-2 等级-9
				}
			},--UR守护灵专属武器魂珠-2
			[3] = {
				Id = 299603,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 56,Sum = 56},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 420,Sum = 420}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--UR守护灵魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 83,Sum = 139},[2] = {Id = 112,Val = 34,Sum = 56},[3] = {Id = 113,Val = 631,Sum = 1051}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--UR守护灵魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 111,Sum = 250},[2] = {Id = 112,Val = 44,Sum = 100},[3] = {Id = 113,Val = 841,Sum = 1892}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--UR守护灵魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 165,Sum = 415},[2] = {Id = 112,Val = 66,Sum = 166},[3] = {Id = 113,Val = 1261,Sum = 3153}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--UR守护灵魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 636},[2] = {Id = 112,Val = 89,Sum = 255},[3] = {Id = 113,Val = 1682,Sum = 4835}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--UR守护灵魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 276,Sum = 912},[2] = {Id = 112,Val = 110,Sum = 365},[3] = {Id = 113,Val = 2102,Sum = 6937}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--UR守护灵魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 332,Sum = 1244},[2] = {Id = 112,Val = 132,Sum = 497},[3] = {Id = 113,Val = 2524,Sum = 9461}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--UR守护灵魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 387,Sum = 1631},[2] = {Id = 112,Val = 155,Sum = 652},[3] = {Id = 113,Val = 2944,Sum = 12405}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--UR守护灵魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 443,Sum = 2074},[2] = {Id = 112,Val = 176,Sum = 828},[3] = {Id = 113,Val = 3365,Sum = 15770}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--UR守护灵魂珠-3 等级-9
				}
			},--UR守护灵专属武器魂珠-3
			[4] = {
				Id = 299604,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 57},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 432,Sum = 432}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--UR守护灵魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 86,Sum = 143},[2] = {Id = 112,Val = 34,Sum = 57},[3] = {Id = 113,Val = 647,Sum = 1079}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--UR守护灵魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 114,Sum = 257},[2] = {Id = 112,Val = 46,Sum = 103},[3] = {Id = 113,Val = 863,Sum = 1942}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--UR守护灵魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 427},[2] = {Id = 112,Val = 68,Sum = 171},[3] = {Id = 113,Val = 1295,Sum = 3237}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--UR守护灵魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 654},[2] = {Id = 112,Val = 91,Sum = 262},[3] = {Id = 113,Val = 1726,Sum = 4963}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--UR守护灵魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 938},[2] = {Id = 112,Val = 113,Sum = 375},[3] = {Id = 113,Val = 2158,Sum = 7121}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--UR守护灵魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1279},[2] = {Id = 112,Val = 136,Sum = 511},[3] = {Id = 113,Val = 2588,Sum = 9709}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--UR守护灵魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 396,Sum = 1675},[2] = {Id = 112,Val = 158,Sum = 669},[3] = {Id = 113,Val = 3020,Sum = 12729}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--UR守护灵魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 453,Sum = 2128},[2] = {Id = 112,Val = 181,Sum = 850},[3] = {Id = 113,Val = 3451,Sum = 16180}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--UR守护灵魂珠-4 等级-9
				}
			},--UR守护灵专属武器魂珠-4
			[5] = {
				Id = 299605,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 71,Sum = 71},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 533,Sum = 533}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--UR守护灵魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 105,Sum = 176},[2] = {Id = 112,Val = 42,Sum = 70},[3] = {Id = 113,Val = 799,Sum = 1332}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--UR守护灵魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 316},[2] = {Id = 112,Val = 56,Sum = 126},[3] = {Id = 113,Val = 1066,Sum = 2398}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--UR守护灵魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 210,Sum = 526},[2] = {Id = 112,Val = 84,Sum = 210},[3] = {Id = 113,Val = 1598,Sum = 3996}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--UR守护灵魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 281,Sum = 807},[2] = {Id = 112,Val = 112,Sum = 322},[3] = {Id = 113,Val = 2131,Sum = 6127}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--UR守护灵魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 350,Sum = 1157},[2] = {Id = 112,Val = 140,Sum = 462},[3] = {Id = 113,Val = 2664,Sum = 8791}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--UR守护灵魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 420,Sum = 1577},[2] = {Id = 112,Val = 168,Sum = 630},[3] = {Id = 113,Val = 3197,Sum = 11988}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--UR守护灵魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 489,Sum = 2066},[2] = {Id = 112,Val = 196,Sum = 826},[3] = {Id = 113,Val = 3730,Sum = 15718}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--UR守护灵魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 2626},[2] = {Id = 112,Val = 224,Sum = 1050},[3] = {Id = 113,Val = 4261,Sum = 19979}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--UR守护灵魂珠-5 等级-9
				}
			},--UR守护灵专属武器魂珠-5
			[6] = {
				Id = 299606,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 86,Sum = 86},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 649,Sum = 649}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--UR守护灵魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 128,Sum = 214},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 973,Sum = 1622}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--UR守护灵魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 171,Sum = 385},[2] = {Id = 112,Val = 68,Sum = 154},[3] = {Id = 113,Val = 1298,Sum = 2920}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--UR守护灵魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 255,Sum = 640},[2] = {Id = 112,Val = 102,Sum = 256},[3] = {Id = 113,Val = 1948,Sum = 4868}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--UR守护灵魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 981},[2] = {Id = 112,Val = 137,Sum = 393},[3] = {Id = 113,Val = 2597,Sum = 7465}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--UR守护灵魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 426,Sum = 1407},[2] = {Id = 112,Val = 170,Sum = 563},[3] = {Id = 113,Val = 3246,Sum = 10711}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--UR守护灵魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 512,Sum = 1919},[2] = {Id = 112,Val = 204,Sum = 767},[3] = {Id = 113,Val = 3894,Sum = 14605}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--UR守护灵魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 597,Sum = 2516},[2] = {Id = 112,Val = 239,Sum = 1006},[3] = {Id = 113,Val = 4543,Sum = 19148}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--UR守护灵魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 683,Sum = 3199},[2] = {Id = 112,Val = 272,Sum = 1278},[3] = {Id = 113,Val = 5192,Sum = 24340}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--UR守护灵魂珠-6 等级-9
				}
			},--UR守护灵专属武器魂珠-6
			[7] = {
				Id = 299607,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 95,Sum = 95},[2] = {Id = 112,Val = 37,Sum = 37},[3] = {Id = 113,Val = 718,Sum = 718}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--UR守护灵魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 141,Sum = 236},[2] = {Id = 112,Val = 56,Sum = 93},[3] = {Id = 113,Val = 1078,Sum = 1796}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--UR守护灵魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 425},[2] = {Id = 112,Val = 76,Sum = 169},[3] = {Id = 113,Val = 1436,Sum = 3232}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--UR守护灵魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 709},[2] = {Id = 112,Val = 113,Sum = 282},[3] = {Id = 113,Val = 2154,Sum = 5386}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--UR守护灵魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1086},[2] = {Id = 112,Val = 151,Sum = 433},[3] = {Id = 113,Val = 2872,Sum = 8258}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--UR守护灵魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 471,Sum = 1557},[2] = {Id = 112,Val = 188,Sum = 621},[3] = {Id = 113,Val = 3590,Sum = 11848}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--UR守护灵魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 566,Sum = 2123},[2] = {Id = 112,Val = 227,Sum = 848},[3] = {Id = 113,Val = 4308,Sum = 16156}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--UR守护灵魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 660,Sum = 2783},[2] = {Id = 112,Val = 264,Sum = 1112},[3] = {Id = 113,Val = 5027,Sum = 21183}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--UR守护灵魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 755,Sum = 3538},[2] = {Id = 112,Val = 301,Sum = 1413},[3] = {Id = 113,Val = 5744,Sum = 26927}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--UR守护灵魂珠-7 等级-9
				}
			},--UR守护灵专属武器魂珠-7
			[8] = {
				Id = 299608,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 99},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 752,Sum = 752}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--UR守护灵魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 149,Sum = 248},[2] = {Id = 112,Val = 59,Sum = 99},[3] = {Id = 113,Val = 1128,Sum = 1880}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--UR守护灵魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 446},[2] = {Id = 112,Val = 79,Sum = 178},[3] = {Id = 113,Val = 1504,Sum = 3384}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--UR守护灵魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 297,Sum = 743},[2] = {Id = 112,Val = 119,Sum = 297},[3] = {Id = 113,Val = 2256,Sum = 5640}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--UR守护灵魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1138},[2] = {Id = 112,Val = 158,Sum = 455},[3] = {Id = 113,Val = 3008,Sum = 8648}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--UR守护灵魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 494,Sum = 1632},[2] = {Id = 112,Val = 198,Sum = 653},[3] = {Id = 113,Val = 3760,Sum = 12408}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--UR守护灵魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 593,Sum = 2225},[2] = {Id = 112,Val = 238,Sum = 891},[3] = {Id = 113,Val = 4512,Sum = 16920}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--UR守护灵魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 692,Sum = 2917},[2] = {Id = 112,Val = 276,Sum = 1167},[3] = {Id = 113,Val = 5264,Sum = 22184}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--UR守护灵魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 791,Sum = 3708},[2] = {Id = 112,Val = 316,Sum = 1483},[3] = {Id = 113,Val = 6017,Sum = 28201}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--UR守护灵魂珠-8 等级-9
				}
			}--UR守护灵专属武器魂珠-8
		}
	},--UR守护灵专属武器
	[1102997] = {
		CardId = 1102997,
		Name = _T("SSR守护灵专属武器"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501997",
		HunZhu = {
			[1] = {
				Id = 299701,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 19,Sum = 19},[2] = {Id = 112,Val = 9,Sum = 9},[3] = {Id = 113,Val = 173,Sum = 173}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SSR守护灵魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 49},[2] = {Id = 112,Val = 13,Sum = 22},[3] = {Id = 113,Val = 259,Sum = 432}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SSR守护灵魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 89},[2] = {Id = 112,Val = 18,Sum = 40},[3] = {Id = 113,Val = 344,Sum = 776}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SSR守护灵魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 148},[2] = {Id = 112,Val = 28,Sum = 68},[3] = {Id = 113,Val = 517,Sum = 1293}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SSR守护灵魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 227},[2] = {Id = 112,Val = 36,Sum = 104},[3] = {Id = 113,Val = 690,Sum = 1983}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--SSR守护灵魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 98,Sum = 325},[2] = {Id = 112,Val = 45,Sum = 149},[3] = {Id = 113,Val = 862,Sum = 2845}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--SSR守护灵魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 444},[2] = {Id = 112,Val = 54,Sum = 203},[3] = {Id = 113,Val = 1034,Sum = 3879}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--SSR守护灵魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 138,Sum = 582},[2] = {Id = 112,Val = 64,Sum = 267},[3] = {Id = 113,Val = 1207,Sum = 5086}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--SSR守护灵魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 740},[2] = {Id = 112,Val = 73,Sum = 340},[3] = {Id = 113,Val = 1379,Sum = 6465}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--SSR守护灵魂珠-1 等级-9
				}
			},--SSR守护灵专属武器魂珠-1
			[2] = {
				Id = 299702,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 31,Sum = 31},[2] = {Id = 112,Val = 14,Sum = 14},[3] = {Id = 113,Val = 273,Sum = 273}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--SSR守护灵魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 78},[2] = {Id = 112,Val = 22,Sum = 36},[3] = {Id = 113,Val = 409,Sum = 682}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SSR守护灵魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 62,Sum = 140},[2] = {Id = 112,Val = 29,Sum = 65},[3] = {Id = 113,Val = 546,Sum = 1228}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SSR守护灵魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 234},[2] = {Id = 112,Val = 43,Sum = 108},[3] = {Id = 113,Val = 817,Sum = 2045}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SSR守护灵魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 359},[2] = {Id = 112,Val = 57,Sum = 165},[3] = {Id = 113,Val = 1090,Sum = 3135}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--SSR守护灵魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 515},[2] = {Id = 112,Val = 72,Sum = 237},[3] = {Id = 113,Val = 1363,Sum = 4498}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SSR守护灵魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 702},[2] = {Id = 112,Val = 86,Sum = 323},[3] = {Id = 113,Val = 1636,Sum = 6134}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SSR守护灵魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 218,Sum = 920},[2] = {Id = 112,Val = 100,Sum = 423},[3] = {Id = 113,Val = 1909,Sum = 8043}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--SSR守护灵魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 1170},[2] = {Id = 112,Val = 114,Sum = 537},[3] = {Id = 113,Val = 2181,Sum = 10224}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--SSR守护灵魂珠-2 等级-9
				}
			},--SSR守护灵专属武器魂珠-2
			[3] = {
				Id = 299703,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 385,Sum = 385}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--SSR守护灵魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 31,Sum = 51},[3] = {Id = 113,Val = 579,Sum = 964}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SSR守护灵魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 89,Sum = 199},[2] = {Id = 112,Val = 41,Sum = 92},[3] = {Id = 113,Val = 771,Sum = 1735}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SSR守护灵魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 331},[2] = {Id = 112,Val = 61,Sum = 153},[3] = {Id = 113,Val = 1156,Sum = 2891}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SSR守护灵魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 507},[2] = {Id = 112,Val = 81,Sum = 234},[3] = {Id = 113,Val = 1542,Sum = 4433}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--SSR守护灵魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 728},[2] = {Id = 112,Val = 101,Sum = 335},[3] = {Id = 113,Val = 1927,Sum = 6360}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--SSR守护灵魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 265,Sum = 993},[2] = {Id = 112,Val = 121,Sum = 456},[3] = {Id = 113,Val = 2313,Sum = 8673}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--SSR守护灵魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 310,Sum = 1303},[2] = {Id = 112,Val = 142,Sum = 598},[3] = {Id = 113,Val = 2698,Sum = 11371}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--SSR守护灵魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 354,Sum = 1657},[2] = {Id = 112,Val = 162,Sum = 760},[3] = {Id = 113,Val = 3084,Sum = 14455}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--SSR守护灵魂珠-3 等级-9
				}
			},--SSR守护灵专属武器魂珠-3
			[4] = {
				Id = 299704,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 46,Sum = 46},[2] = {Id = 112,Val = 21,Sum = 21},[3] = {Id = 113,Val = 396,Sum = 396}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SSR守护灵魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 114},[2] = {Id = 112,Val = 31,Sum = 52},[3] = {Id = 113,Val = 593,Sum = 989}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--SSR守护灵魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 91,Sum = 205},[2] = {Id = 112,Val = 42,Sum = 94},[3] = {Id = 113,Val = 791,Sum = 1780}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--SSR守护灵魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 136,Sum = 341},[2] = {Id = 112,Val = 63,Sum = 157},[3] = {Id = 113,Val = 1187,Sum = 2967}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--SSR守护灵魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 181,Sum = 522},[2] = {Id = 112,Val = 84,Sum = 241},[3] = {Id = 113,Val = 1582,Sum = 4549}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--SSR守护灵魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 749},[2] = {Id = 112,Val = 103,Sum = 344},[3] = {Id = 113,Val = 1978,Sum = 6527}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--SSR守护灵魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 1021},[2] = {Id = 112,Val = 124,Sum = 468},[3] = {Id = 113,Val = 2373,Sum = 8900}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--SSR守护灵魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 317,Sum = 1338},[2] = {Id = 112,Val = 145,Sum = 613},[3] = {Id = 113,Val = 2769,Sum = 11669}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--SSR守护灵魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 362,Sum = 1700},[2] = {Id = 112,Val = 166,Sum = 779},[3] = {Id = 113,Val = 3164,Sum = 14833}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--SSR守护灵魂珠-4 等级-9
				}
			},--SSR守护灵专属武器魂珠-4
			[5] = {
				Id = 299705,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 56,Sum = 56},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 488,Sum = 488}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SSR守护灵魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 84,Sum = 140},[2] = {Id = 112,Val = 39,Sum = 64},[3] = {Id = 113,Val = 733,Sum = 1221}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--SSR守护灵魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 112,Sum = 252},[2] = {Id = 112,Val = 52,Sum = 116},[3] = {Id = 113,Val = 977,Sum = 2198}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--SSR守护灵魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 420},[2] = {Id = 112,Val = 77,Sum = 193},[3] = {Id = 113,Val = 1465,Sum = 3663}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--SSR守护灵魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 224,Sum = 644},[2] = {Id = 112,Val = 102,Sum = 295},[3] = {Id = 113,Val = 1954,Sum = 5617}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--SSR守护灵魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 924},[2] = {Id = 112,Val = 129,Sum = 424},[3] = {Id = 113,Val = 2442,Sum = 8059}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--SSR守护灵魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1260},[2] = {Id = 112,Val = 154,Sum = 578},[3] = {Id = 113,Val = 2930,Sum = 10989}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--SSR守护灵魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 391,Sum = 1651},[2] = {Id = 112,Val = 179,Sum = 757},[3] = {Id = 113,Val = 3419,Sum = 14408}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--SSR守护灵魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 448,Sum = 2099},[2] = {Id = 112,Val = 206,Sum = 963},[3] = {Id = 113,Val = 3906,Sum = 18314}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--SSR守护灵魂珠-5 等级-9
				}
			},--SSR守护灵专属武器魂珠-5
			[6] = {
				Id = 299706,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 68},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 595,Sum = 595}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SSR守护灵魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 102,Sum = 170},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 892,Sum = 1487}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SSR守护灵魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 137,Sum = 307},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1190,Sum = 2677}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--SSR守护灵魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 204,Sum = 511},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1785,Sum = 4462}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SSR守护灵魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 272,Sum = 783},[2] = {Id = 112,Val = 125,Sum = 360},[3] = {Id = 113,Val = 2380,Sum = 6842}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--SSR守护灵魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1124},[2] = {Id = 112,Val = 156,Sum = 516},[3] = {Id = 113,Val = 2976,Sum = 9818}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--SSR守护灵魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 409,Sum = 1533},[2] = {Id = 112,Val = 187,Sum = 703},[3] = {Id = 113,Val = 3570,Sum = 13388}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--SSR守护灵魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 478,Sum = 2011},[2] = {Id = 112,Val = 219,Sum = 922},[3] = {Id = 113,Val = 4165,Sum = 17553}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--SSR守护灵魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 546,Sum = 2557},[2] = {Id = 112,Val = 250,Sum = 1172},[3] = {Id = 113,Val = 4760,Sum = 22313}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--SSR守护灵魂珠-6 等级-9
				}
			},--SSR守护灵专属武器魂珠-6
			[7] = {
				Id = 299707,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 76},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 658,Sum = 658}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--SSR守护灵魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 189},[2] = {Id = 112,Val = 52,Sum = 86},[3] = {Id = 113,Val = 988,Sum = 1646}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SSR守护灵魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 340},[2] = {Id = 112,Val = 69,Sum = 155},[3] = {Id = 113,Val = 1317,Sum = 2963}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SSR守护灵魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 567},[2] = {Id = 112,Val = 103,Sum = 258},[3] = {Id = 113,Val = 1975,Sum = 4938}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SSR守护灵魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 301,Sum = 868},[2] = {Id = 112,Val = 139,Sum = 397},[3] = {Id = 113,Val = 2632,Sum = 7570}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--SSR守护灵魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1245},[2] = {Id = 112,Val = 173,Sum = 570},[3] = {Id = 113,Val = 3291,Sum = 10861}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--SSR守护灵魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 452,Sum = 1697},[2] = {Id = 112,Val = 208,Sum = 778},[3] = {Id = 113,Val = 3949,Sum = 14810}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--SSR守护灵魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 2225},[2] = {Id = 112,Val = 242,Sum = 1020},[3] = {Id = 113,Val = 4608,Sum = 19418}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--SSR守护灵魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 604,Sum = 2829},[2] = {Id = 112,Val = 276,Sum = 1296},[3] = {Id = 113,Val = 5266,Sum = 24684}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--SSR守护灵魂珠-7 等级-9
				}
			},--SSR守护灵专属武器魂珠-7
			[8] = {
				Id = 299708,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 79},[2] = {Id = 112,Val = 36,Sum = 36},[3] = {Id = 113,Val = 690,Sum = 690}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--SSR守护灵魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 119,Sum = 198},[2] = {Id = 112,Val = 54,Sum = 90},[3] = {Id = 113,Val = 1034,Sum = 1724}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--SSR守护灵魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 356},[2] = {Id = 112,Val = 73,Sum = 163},[3] = {Id = 113,Val = 1378,Sum = 3102}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--SSR守护灵魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 238,Sum = 594},[2] = {Id = 112,Val = 109,Sum = 272},[3] = {Id = 113,Val = 2068,Sum = 5170}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--SSR守护灵魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 316,Sum = 910},[2] = {Id = 112,Val = 145,Sum = 417},[3] = {Id = 113,Val = 2758,Sum = 7928}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--SSR守护灵魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1305},[2] = {Id = 112,Val = 182,Sum = 599},[3] = {Id = 113,Val = 3446,Sum = 11374}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--SSR守护灵魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 474,Sum = 1779},[2] = {Id = 112,Val = 218,Sum = 817},[3] = {Id = 113,Val = 4136,Sum = 15510}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--SSR守护灵魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 553,Sum = 2332},[2] = {Id = 112,Val = 253,Sum = 1070},[3] = {Id = 113,Val = 4826,Sum = 20336}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--SSR守护灵魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 632,Sum = 2964},[2] = {Id = 112,Val = 289,Sum = 1359},[3] = {Id = 113,Val = 5515,Sum = 25851}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--SSR守护灵魂珠-8 等级-9
				}
			}--SSR守护灵专属武器魂珠-8
		}
	},--SSR守护灵专属武器
	[1102998] = {
		CardId = 1102998,
		Name = _T("SR守护灵专属武器"),
		Quality = 3,
		Icon = "ui_dtex_Equip_1501998",
		HunZhu = {
			[1] = {
				Id = 299801,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 16,Sum = 16},[2] = {Id = 112,Val = 8,Sum = 8},[3] = {Id = 113,Val = 157,Sum = 157}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SR守护灵魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 25,Sum = 41},[2] = {Id = 112,Val = 12,Sum = 20},[3] = {Id = 113,Val = 235,Sum = 392}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SR守护灵魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 33,Sum = 74},[2] = {Id = 112,Val = 16,Sum = 36},[3] = {Id = 113,Val = 313,Sum = 705}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SR守护灵魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 49,Sum = 123},[2] = {Id = 112,Val = 25,Sum = 61},[3] = {Id = 113,Val = 470,Sum = 1175}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SR守护灵魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 189},[2] = {Id = 112,Val = 33,Sum = 94},[3] = {Id = 113,Val = 627,Sum = 1802}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--SR守护灵魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 82,Sum = 271},[2] = {Id = 112,Val = 41,Sum = 135},[3] = {Id = 113,Val = 784,Sum = 2586}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--SR守护灵魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 370},[2] = {Id = 112,Val = 49,Sum = 184},[3] = {Id = 113,Val = 940,Sum = 3526}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--SR守护灵魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 115,Sum = 485},[2] = {Id = 112,Val = 58,Sum = 242},[3] = {Id = 113,Val = 1097,Sum = 4623}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--SR守护灵魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 617},[2] = {Id = 112,Val = 66,Sum = 308},[3] = {Id = 113,Val = 1254,Sum = 5877}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--SR守护灵魂珠-1 等级-9
				}
			},--SR守护灵专属武器魂珠-1
			[2] = {
				Id = 299802,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 26,Sum = 26},[2] = {Id = 112,Val = 13,Sum = 13},[3] = {Id = 113,Val = 248,Sum = 248}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--SR守护灵魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 39,Sum = 65},[2] = {Id = 112,Val = 20,Sum = 33},[3] = {Id = 113,Val = 372,Sum = 620}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SR守护灵魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 52,Sum = 117},[2] = {Id = 112,Val = 26,Sum = 59},[3] = {Id = 113,Val = 496,Sum = 1116}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SR守护灵魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 78,Sum = 195},[2] = {Id = 112,Val = 39,Sum = 98},[3] = {Id = 113,Val = 743,Sum = 1859}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SR守护灵魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 104,Sum = 299},[2] = {Id = 112,Val = 52,Sum = 150},[3] = {Id = 113,Val = 991,Sum = 2850}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--SR守护灵魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 130,Sum = 429},[2] = {Id = 112,Val = 65,Sum = 215},[3] = {Id = 113,Val = 1239,Sum = 4089}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SR守护灵魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 585},[2] = {Id = 112,Val = 78,Sum = 293},[3] = {Id = 113,Val = 1487,Sum = 5576}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SR守护灵魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 182,Sum = 767},[2] = {Id = 112,Val = 91,Sum = 384},[3] = {Id = 113,Val = 1735,Sum = 7311}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--SR守护灵魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 975},[2] = {Id = 112,Val = 104,Sum = 488},[3] = {Id = 113,Val = 1983,Sum = 9294}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--SR守护灵魂珠-2 等级-9
				}
			},--SR守护灵专属武器魂珠-2
			[3] = {
				Id = 299803,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 37,Sum = 37},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 350,Sum = 350}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--SR守护灵魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 55,Sum = 92},[2] = {Id = 112,Val = 28,Sum = 46},[3] = {Id = 113,Val = 526,Sum = 876}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SR守护灵魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 166},[2] = {Id = 112,Val = 37,Sum = 83},[3] = {Id = 113,Val = 701,Sum = 1577}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SR守护灵魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 276},[2] = {Id = 112,Val = 55,Sum = 138},[3] = {Id = 113,Val = 1051,Sum = 2628}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SR守护灵魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 147,Sum = 423},[2] = {Id = 112,Val = 74,Sum = 212},[3] = {Id = 113,Val = 1402,Sum = 4030}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--SR守护灵魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 184,Sum = 607},[2] = {Id = 112,Val = 92,Sum = 304},[3] = {Id = 113,Val = 1752,Sum = 5782}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--SR守护灵魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 221,Sum = 828},[2] = {Id = 112,Val = 110,Sum = 414},[3] = {Id = 113,Val = 2103,Sum = 7885}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--SR守护灵魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 258,Sum = 1086},[2] = {Id = 112,Val = 129,Sum = 543},[3] = {Id = 113,Val = 2453,Sum = 10338}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--SR守护灵魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 295,Sum = 1381},[2] = {Id = 112,Val = 147,Sum = 690},[3] = {Id = 113,Val = 2804,Sum = 13142}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--SR守护灵魂珠-3 等级-9
				}
			},--SR守护灵专属武器魂珠-3
			[4] = {
				Id = 299804,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 38,Sum = 38},[2] = {Id = 112,Val = 19,Sum = 19},[3] = {Id = 113,Val = 360,Sum = 360}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SR守护灵魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 95},[2] = {Id = 112,Val = 28,Sum = 47},[3] = {Id = 113,Val = 539,Sum = 899}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--SR守护灵魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 76,Sum = 171},[2] = {Id = 112,Val = 38,Sum = 85},[3] = {Id = 113,Val = 719,Sum = 1618}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--SR守护灵魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 113,Sum = 284},[2] = {Id = 112,Val = 57,Sum = 142},[3] = {Id = 113,Val = 1079,Sum = 2697}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--SR守护灵魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 435},[2] = {Id = 112,Val = 76,Sum = 218},[3] = {Id = 113,Val = 1438,Sum = 4135}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--SR守护灵魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 624},[2] = {Id = 112,Val = 94,Sum = 312},[3] = {Id = 113,Val = 1798,Sum = 5933}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--SR守护灵魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 851},[2] = {Id = 112,Val = 113,Sum = 425},[3] = {Id = 113,Val = 2157,Sum = 8090}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--SR守护灵魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 1115},[2] = {Id = 112,Val = 132,Sum = 557},[3] = {Id = 113,Val = 2517,Sum = 10607}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--SR守护灵魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 302,Sum = 1417},[2] = {Id = 112,Val = 151,Sum = 708},[3] = {Id = 113,Val = 2876,Sum = 13483}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--SR守护灵魂珠-4 等级-9
				}
			},--SR守护灵专属武器魂珠-4
			[5] = {
				Id = 299805,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 47,Sum = 47},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 444,Sum = 444}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SR守护灵魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 70,Sum = 117},[2] = {Id = 112,Val = 35,Sum = 58},[3] = {Id = 113,Val = 666,Sum = 1110}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--SR守护灵魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 93,Sum = 210},[2] = {Id = 112,Val = 47,Sum = 105},[3] = {Id = 113,Val = 888,Sum = 1998}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--SR守护灵魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 350},[2] = {Id = 112,Val = 70,Sum = 175},[3] = {Id = 113,Val = 1332,Sum = 3330}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--SR守护灵魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 187,Sum = 537},[2] = {Id = 112,Val = 93,Sum = 268},[3] = {Id = 113,Val = 1776,Sum = 5106}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--SR守护灵魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 233,Sum = 770},[2] = {Id = 112,Val = 117,Sum = 385},[3] = {Id = 113,Val = 2220,Sum = 7326}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--SR守护灵魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 1050},[2] = {Id = 112,Val = 140,Sum = 525},[3] = {Id = 113,Val = 2664,Sum = 9990}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--SR守护灵魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 326,Sum = 1376},[2] = {Id = 112,Val = 163,Sum = 688},[3] = {Id = 113,Val = 3108,Sum = 13098}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--SR守护灵魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 373,Sum = 1749},[2] = {Id = 112,Val = 187,Sum = 875},[3] = {Id = 113,Val = 3551,Sum = 16649}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--SR守护灵魂珠-5 等级-9
				}
			},--SR守护灵专属武器魂珠-5
			[6] = {
				Id = 299806,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 57,Sum = 57},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 541,Sum = 541}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SR守护灵魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 85,Sum = 142},[2] = {Id = 112,Val = 43,Sum = 71},[3] = {Id = 113,Val = 811,Sum = 1352}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SR守护灵魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 114,Sum = 256},[2] = {Id = 112,Val = 57,Sum = 128},[3] = {Id = 113,Val = 1082,Sum = 2434}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--SR守护灵魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 170,Sum = 426},[2] = {Id = 112,Val = 85,Sum = 213},[3] = {Id = 113,Val = 1623,Sum = 4057}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SR守护灵魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 653},[2] = {Id = 112,Val = 114,Sum = 327},[3] = {Id = 113,Val = 2164,Sum = 6221}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--SR守护灵魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 284,Sum = 937},[2] = {Id = 112,Val = 142,Sum = 469},[3] = {Id = 113,Val = 2705,Sum = 8926}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--SR守护灵魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 1278},[2] = {Id = 112,Val = 170,Sum = 639},[3] = {Id = 113,Val = 3245,Sum = 12171}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--SR守护灵魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 398,Sum = 1676},[2] = {Id = 112,Val = 199,Sum = 838},[3] = {Id = 113,Val = 3786,Sum = 15957}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--SR守护灵魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 455,Sum = 2131},[2] = {Id = 112,Val = 227,Sum = 1065},[3] = {Id = 113,Val = 4327,Sum = 20284}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--SR守护灵魂珠-6 等级-9
				}
			},--SR守护灵专属武器魂珠-6
			[7] = {
				Id = 299807,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 63,Sum = 63},[2] = {Id = 112,Val = 31,Sum = 31},[3] = {Id = 113,Val = 598,Sum = 598}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--SR守护灵魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 94,Sum = 157},[2] = {Id = 112,Val = 47,Sum = 78},[3] = {Id = 113,Val = 898,Sum = 1496}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SR守护灵魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 283},[2] = {Id = 112,Val = 63,Sum = 141},[3] = {Id = 113,Val = 1197,Sum = 2693}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SR守护灵魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 472},[2] = {Id = 112,Val = 94,Sum = 235},[3] = {Id = 113,Val = 1795,Sum = 4488}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SR守护灵魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 251,Sum = 723},[2] = {Id = 112,Val = 126,Sum = 361},[3] = {Id = 113,Val = 2393,Sum = 6881}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--SR守护灵魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 314,Sum = 1037},[2] = {Id = 112,Val = 157,Sum = 518},[3] = {Id = 113,Val = 2992,Sum = 9873}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--SR守护灵魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 377,Sum = 1414},[2] = {Id = 112,Val = 189,Sum = 707},[3] = {Id = 113,Val = 3590,Sum = 13463}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--SR守护灵魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1854},[2] = {Id = 112,Val = 220,Sum = 927},[3] = {Id = 113,Val = 4189,Sum = 17652}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--SR守护灵魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 503,Sum = 2357},[2] = {Id = 112,Val = 251,Sum = 1178},[3] = {Id = 113,Val = 4787,Sum = 22439}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--SR守护灵魂珠-7 等级-9
				}
			},--SR守护灵专属武器魂珠-7
			[8] = {
				Id = 299808,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 66},[2] = {Id = 112,Val = 33,Sum = 33},[3] = {Id = 113,Val = 627,Sum = 627}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--SR守护灵魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 99,Sum = 165},[2] = {Id = 112,Val = 49,Sum = 82},[3] = {Id = 113,Val = 940,Sum = 1567}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--SR守护灵魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 297},[2] = {Id = 112,Val = 66,Sum = 148},[3] = {Id = 113,Val = 1253,Sum = 2820}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--SR守护灵魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 495},[2] = {Id = 112,Val = 99,Sum = 247},[3] = {Id = 113,Val = 1880,Sum = 4700}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--SR守护灵魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 263,Sum = 758},[2] = {Id = 112,Val = 132,Sum = 379},[3] = {Id = 113,Val = 2507,Sum = 7207}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--SR守护灵魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 329,Sum = 1087},[2] = {Id = 112,Val = 165,Sum = 544},[3] = {Id = 113,Val = 3133,Sum = 10340}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--SR守护灵魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 395,Sum = 1482},[2] = {Id = 112,Val = 198,Sum = 742},[3] = {Id = 113,Val = 3760,Sum = 14100}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--SR守护灵魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 461,Sum = 1943},[2] = {Id = 112,Val = 230,Sum = 972},[3] = {Id = 113,Val = 4387,Sum = 18487}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--SR守护灵魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 527,Sum = 2470},[2] = {Id = 112,Val = 263,Sum = 1235},[3] = {Id = 113,Val = 5014,Sum = 23501}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--SR守护灵魂珠-8 等级-9
				}
			}--SR守护灵专属武器魂珠-8
		}
	},--SR守护灵专属武器
	[1102999] = {
		CardId = 1102999,
		Name = _T("R守护灵专属武器"),
		Quality = 2,
		Icon = "ui_dtex_Equip_1501999",
		HunZhu = {
			[1] = {
				Id = 299901,
				Icon = "ui_dtex_Item_1603016",
				Name = "乾位",
				LvLimit = 40,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 13,Sum = 13},[2] = {Id = 112,Val = 6,Sum = 6},[3] = {Id = 113,Val = 126,Sum = 126}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--R守护灵魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 20,Sum = 33},[2] = {Id = 112,Val = 10,Sum = 16},[3] = {Id = 113,Val = 188,Sum = 314}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--R守护灵魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 26,Sum = 59},[2] = {Id = 112,Val = 13,Sum = 29},[3] = {Id = 113,Val = 250,Sum = 564}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--R守护灵魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 39,Sum = 98},[2] = {Id = 112,Val = 20,Sum = 49},[3] = {Id = 113,Val = 376,Sum = 940}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--R守护灵魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 53,Sum = 151},[2] = {Id = 112,Val = 26,Sum = 75},[3] = {Id = 113,Val = 502,Sum = 1442}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--R守护灵魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 217},[2] = {Id = 112,Val = 33,Sum = 108},[3] = {Id = 113,Val = 627,Sum = 2069}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--R守护灵魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 296},[2] = {Id = 112,Val = 39,Sum = 147},[3] = {Id = 113,Val = 752,Sum = 2821}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--R守护灵魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 92,Sum = 388},[2] = {Id = 112,Val = 46,Sum = 193},[3] = {Id = 113,Val = 878,Sum = 3699}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--R守护灵魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 106,Sum = 494},[2] = {Id = 112,Val = 53,Sum = 246},[3] = {Id = 113,Val = 1003,Sum = 4702}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--R守护灵魂珠-1 等级-9
				}
			},--R守护灵专属武器魂珠-1
			[2] = {
				Id = 299902,
				Icon = "ui_dtex_Item_1603017",
				Name = "坤位",
				LvLimit = 55,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 21,Sum = 21},[2] = {Id = 112,Val = 10,Sum = 10},[3] = {Id = 113,Val = 198,Sum = 198}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--R守护灵魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 31,Sum = 52},[2] = {Id = 112,Val = 16,Sum = 26},[3] = {Id = 113,Val = 298,Sum = 496}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--R守护灵魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 42,Sum = 94},[2] = {Id = 112,Val = 21,Sum = 47},[3] = {Id = 113,Val = 397,Sum = 893}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--R守护灵魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 62,Sum = 156},[2] = {Id = 112,Val = 31,Sum = 78},[3] = {Id = 113,Val = 594,Sum = 1487}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--R守护灵魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 83,Sum = 239},[2] = {Id = 112,Val = 42,Sum = 120},[3] = {Id = 113,Val = 793,Sum = 2280}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--R守护灵魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 104,Sum = 343},[2] = {Id = 112,Val = 52,Sum = 172},[3] = {Id = 113,Val = 991,Sum = 3271}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--R守护灵魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 125,Sum = 468},[2] = {Id = 112,Val = 62,Sum = 234},[3] = {Id = 113,Val = 1190,Sum = 4461}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--R守护灵魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 146,Sum = 614},[2] = {Id = 112,Val = 73,Sum = 307},[3] = {Id = 113,Val = 1388,Sum = 5849}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--R守护灵魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 166,Sum = 780},[2] = {Id = 112,Val = 83,Sum = 390},[3] = {Id = 113,Val = 1586,Sum = 7435}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--R守护灵魂珠-2 等级-9
				}
			},--R守护灵专属武器魂珠-2
			[3] = {
				Id = 299903,
				Icon = "ui_dtex_Item_1603018",
				Name = "巽位",
				LvLimit = 75,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 30},[2] = {Id = 112,Val = 14,Sum = 14},[3] = {Id = 113,Val = 280,Sum = 280}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--R守护灵魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 74},[2] = {Id = 112,Val = 22,Sum = 36},[3] = {Id = 113,Val = 421,Sum = 701}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--R守护灵魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 59,Sum = 133},[2] = {Id = 112,Val = 30,Sum = 66},[3] = {Id = 113,Val = 561,Sum = 1262}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--R守护灵魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 221},[2] = {Id = 112,Val = 44,Sum = 110},[3] = {Id = 113,Val = 841,Sum = 2103}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--R守护灵魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 118,Sum = 339},[2] = {Id = 112,Val = 59,Sum = 169},[3] = {Id = 113,Val = 1122,Sum = 3225}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--R守护灵魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 147,Sum = 486},[2] = {Id = 112,Val = 74,Sum = 243},[3] = {Id = 113,Val = 1402,Sum = 4627}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--R守护灵魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 177,Sum = 663},[2] = {Id = 112,Val = 88,Sum = 331},[3] = {Id = 113,Val = 1682,Sum = 6309}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--R守护灵魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 206,Sum = 869},[2] = {Id = 112,Val = 103,Sum = 434},[3] = {Id = 113,Val = 1962,Sum = 8271}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--R守护灵魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 236,Sum = 1105},[2] = {Id = 112,Val = 118,Sum = 552},[3] = {Id = 113,Val = 2243,Sum = 10514}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--R守护灵魂珠-3 等级-9
				}
			},--R守护灵专属武器魂珠-3
			[4] = {
				Id = 299904,
				Icon = "ui_dtex_Item_1603019",
				Name = "震位",
				LvLimit = 85,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 30,Sum = 30},[2] = {Id = 112,Val = 15,Sum = 15},[3] = {Id = 113,Val = 288,Sum = 288}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--R守护灵魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 46,Sum = 76},[2] = {Id = 112,Val = 22,Sum = 37},[3] = {Id = 113,Val = 431,Sum = 719}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--R守护灵魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 61,Sum = 137},[2] = {Id = 112,Val = 30,Sum = 67},[3] = {Id = 113,Val = 575,Sum = 1294}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--R守护灵魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 227},[2] = {Id = 112,Val = 46,Sum = 113},[3] = {Id = 113,Val = 863,Sum = 2157}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--R守护灵魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 121,Sum = 348},[2] = {Id = 112,Val = 61,Sum = 174},[3] = {Id = 113,Val = 1150,Sum = 3307}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--R守护灵魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 499},[2] = {Id = 112,Val = 75,Sum = 249},[3] = {Id = 113,Val = 1438,Sum = 4745}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--R守护灵魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 182,Sum = 681},[2] = {Id = 112,Val = 90,Sum = 339},[3] = {Id = 113,Val = 1726,Sum = 6471}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--R守护灵魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 211,Sum = 892},[2] = {Id = 112,Val = 106,Sum = 445},[3] = {Id = 113,Val = 2014,Sum = 8485}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--R守护灵魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 242,Sum = 1134},[2] = {Id = 112,Val = 121,Sum = 566},[3] = {Id = 113,Val = 2301,Sum = 10786}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--R守护灵魂珠-4 等级-9
				}
			},--R守护灵专属武器魂珠-4
			[5] = {
				Id = 299905,
				Icon = "ui_dtex_Item_1603020",
				Name = "坎位",
				LvLimit = 110,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 38,Sum = 38},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 355,Sum = 355}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--R守护灵魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 56,Sum = 94},[2] = {Id = 112,Val = 28,Sum = 46},[3] = {Id = 113,Val = 533,Sum = 888}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--R守护灵魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 74,Sum = 168},[2] = {Id = 112,Val = 38,Sum = 84},[3] = {Id = 113,Val = 710,Sum = 1598}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--R守护灵魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 112,Sum = 280},[2] = {Id = 112,Val = 56,Sum = 140},[3] = {Id = 113,Val = 1066,Sum = 2664}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--R守护灵魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 150,Sum = 430},[2] = {Id = 112,Val = 74,Sum = 214},[3] = {Id = 113,Val = 1421,Sum = 4085}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--R守护灵魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 186,Sum = 616},[2] = {Id = 112,Val = 94,Sum = 308},[3] = {Id = 113,Val = 1776,Sum = 5861}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--R守护灵魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 224,Sum = 840},[2] = {Id = 112,Val = 112,Sum = 420},[3] = {Id = 113,Val = 2131,Sum = 7992}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--R守护灵魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 261,Sum = 1101},[2] = {Id = 112,Val = 130,Sum = 550},[3] = {Id = 113,Val = 2486,Sum = 10478}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--R守护灵魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 298,Sum = 1399},[2] = {Id = 112,Val = 150,Sum = 700},[3] = {Id = 113,Val = 2841,Sum = 13319}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--R守护灵魂珠-5 等级-9
				}
			},--R守护灵专属武器魂珠-5
			[6] = {
				Id = 299906,
				Icon = "ui_dtex_Item_1603021",
				Name = "离位",
				LvLimit = 125,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 46,Sum = 46},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 433,Sum = 433}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--R守护灵魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 114},[2] = {Id = 112,Val = 34,Sum = 56},[3] = {Id = 113,Val = 649,Sum = 1082}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--R守护灵魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 91,Sum = 205},[2] = {Id = 112,Val = 46,Sum = 102},[3] = {Id = 113,Val = 866,Sum = 1948}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--R守护灵魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 136,Sum = 341},[2] = {Id = 112,Val = 68,Sum = 170},[3] = {Id = 113,Val = 1298,Sum = 3246}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--R守护灵魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 182,Sum = 523},[2] = {Id = 112,Val = 91,Sum = 261},[3] = {Id = 113,Val = 1731,Sum = 4977}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--R守护灵魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 227,Sum = 750},[2] = {Id = 112,Val = 114,Sum = 375},[3] = {Id = 113,Val = 2164,Sum = 7141}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--R守护灵魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 273,Sum = 1023},[2] = {Id = 112,Val = 136,Sum = 511},[3] = {Id = 113,Val = 2596,Sum = 9737}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--R守护灵魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 318,Sum = 1341},[2] = {Id = 112,Val = 159,Sum = 670},[3] = {Id = 113,Val = 3029,Sum = 12766}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--R守护灵魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 364,Sum = 1705},[2] = {Id = 112,Val = 182,Sum = 852},[3] = {Id = 113,Val = 3462,Sum = 16228}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--R守护灵魂珠-6 等级-9
				}
			},--R守护灵专属武器魂珠-6
			[7] = {
				Id = 299907,
				Icon = "ui_dtex_Item_1603022",
				Name = "艮位",
				LvLimit = 135,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 50},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 478,Sum = 478}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--R守护灵魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 75,Sum = 125},[2] = {Id = 112,Val = 38,Sum = 63},[3] = {Id = 113,Val = 718,Sum = 1196}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--R守护灵魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 101,Sum = 226},[2] = {Id = 112,Val = 50,Sum = 113},[3] = {Id = 113,Val = 958,Sum = 2154}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--R守护灵魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 151,Sum = 377},[2] = {Id = 112,Val = 75,Sum = 188},[3] = {Id = 113,Val = 1436,Sum = 3590}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--R守护灵魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 201,Sum = 578},[2] = {Id = 112,Val = 101,Sum = 289},[3] = {Id = 113,Val = 1914,Sum = 5504}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--R守护灵魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 251,Sum = 829},[2] = {Id = 112,Val = 126,Sum = 415},[3] = {Id = 113,Val = 2394,Sum = 7898}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--R守护灵魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 302,Sum = 1131},[2] = {Id = 112,Val = 151,Sum = 566},[3] = {Id = 113,Val = 2872,Sum = 10770}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--R守护灵魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1483},[2] = {Id = 112,Val = 176,Sum = 742},[3] = {Id = 113,Val = 3351,Sum = 14121}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--R守护灵魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 402,Sum = 1885},[2] = {Id = 112,Val = 201,Sum = 943},[3] = {Id = 113,Val = 3830,Sum = 17951}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--R守护灵魂珠-7 等级-9
				}
			},--R守护灵专属武器魂珠-7
			[8] = {
				Id = 299908,
				Icon = "ui_dtex_Item_1603023",
				Name = "兑位",
				LvLimit = 150,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 53,Sum = 53},[2] = {Id = 112,Val = 26,Sum = 26},[3] = {Id = 113,Val = 502,Sum = 502}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--R守护灵魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 79,Sum = 132},[2] = {Id = 112,Val = 39,Sum = 65},[3] = {Id = 113,Val = 752,Sum = 1254}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--R守护灵魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 106,Sum = 238},[2] = {Id = 112,Val = 53,Sum = 118},[3] = {Id = 113,Val = 1002,Sum = 2256}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--R守护灵魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 158,Sum = 396},[2] = {Id = 112,Val = 79,Sum = 197},[3] = {Id = 113,Val = 1504,Sum = 3760}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--R守护灵魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 210,Sum = 606},[2] = {Id = 112,Val = 106,Sum = 303},[3] = {Id = 113,Val = 2006,Sum = 5766}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--R守护灵魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 263,Sum = 869},[2] = {Id = 112,Val = 132,Sum = 435},[3] = {Id = 113,Val = 2506,Sum = 8272}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--R守护灵魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 316,Sum = 1185},[2] = {Id = 112,Val = 158,Sum = 593},[3] = {Id = 113,Val = 3008,Sum = 11280}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--R守护灵魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 369,Sum = 1554},[2] = {Id = 112,Val = 184,Sum = 777},[3] = {Id = 113,Val = 3510,Sum = 14790}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--R守护灵魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 422,Sum = 1976},[2] = {Id = 112,Val = 210,Sum = 987},[3] = {Id = 113,Val = 4011,Sum = 18801}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--R守护灵魂珠-8 等级-9
				}
			}--R守护灵专属武器魂珠-8
		}
	}--R守护灵专属武器
}