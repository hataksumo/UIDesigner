--[[
--note:
守护灵拥有专属武器，这是专属武器的配置。专属武器可以消耗对应武将碎片解锁。解锁后和强化，解封，幻化。专属武器激活后则可获得基础属性奖励。
专属武器魂珠的配置，描述了专属武器各主子的开启条件。
描述专属武器每个柱子强化的消耗与属性，以及成功概率。实际成功率读ST[i].P，如果i>ST.Length，则必然成功。失败则祝福值提升FvUp，如果祝福值大于ST[i].MaxV，i+=1;
专属武器的解封，可获得属性或被动技能。消耗对应将魂碎片进行武器解封。
colums:
{WpID,专属武器ID} ,{CardId,卡牌ID} ,{Name,武器名} ,{Quality,品质} ,{Icon,图标} ,{Id,ID} ,{LvLimit,等级限制} ,{PreLv,上一级等级} ,{UnsealLv,解封等级} ,{Prop[1].Id,属性Id1} ,{Prop[1].Val,属性值1} ,{Prop[1].Sum,属性总值1} ,{Prop[2].Id,属性Id2} ,{Prop[2].Val,属性值2} ,{Prop[2].Sum,属性总值2} ,{Prop[3].Id,属性Id3} ,{Prop[3].Val,属性值3} ,{Prop[3].Sum,属性总值3} ,{Cost[1].Id,消耗道具Id1} ,{Cost[1].Val,消耗道具值1} ,{Cost[2].Id,消耗道具Id2} ,{Cost[2].Val,消耗道具值2} ,{Cost[3].Id,消耗道具Id3} ,{Cost[3].Val,消耗道具值3} ,{StrenthSuccessRate,强化成功率} ,{Fv,失败提升祝福值} ,{MaxV,最高祝福值} ,{HelpCol,辅助列} ,{Lv,等级} ,{PSkill,被动技能} ,{PSkillLevel,效果等级} ,{WeaponPrefab,武器预设}
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
					[1] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 60},[2] = {Id = 112,Val = 24,Sum = 24},[3] = {Id = 113,Val = 960,Sum = 960}},Cost = {[1] = {Id = 1401002,Val = 160},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--关羽魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 150},[2] = {Id = 112,Val = 36,Sum = 60},[3] = {Id = 113,Val = 1440,Sum = 2400}},Cost = {[1] = {Id = 1401002,Val = 245},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--关羽魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 270},[2] = {Id = 112,Val = 48,Sum = 108},[3] = {Id = 113,Val = 1920,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 405},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--关羽魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 450},[2] = {Id = 112,Val = 72,Sum = 180},[3] = {Id = 113,Val = 2880,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 520},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--关羽魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 690},[2] = {Id = 112,Val = 96,Sum = 276},[3] = {Id = 113,Val = 3840,Sum = 11040}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--关羽魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 300,Sum = 990},[2] = {Id = 112,Val = 120,Sum = 396},[3] = {Id = 113,Val = 4800,Sum = 15840}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--关羽魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 360,Sum = 1350},[2] = {Id = 112,Val = 144,Sum = 540},[3] = {Id = 113,Val = 5760,Sum = 21600}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--关羽魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 420,Sum = 1770},[2] = {Id = 112,Val = 168,Sum = 708},[3] = {Id = 113,Val = 6720,Sum = 28320}},Cost = {[1] = {Id = 1401002,Val = 1055},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--关羽魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 2250},[2] = {Id = 112,Val = 192,Sum = 900},[3] = {Id = 113,Val = 7680,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 1315},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--关羽魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 75,Sum = 75},[2] = {Id = 112,Val = 30,Sum = 30},[3] = {Id = 113,Val = 1200,Sum = 1200}},Cost = {[1] = {Id = 1401002,Val = 445},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--关羽魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 195},[2] = {Id = 112,Val = 48,Sum = 78},[3] = {Id = 113,Val = 1920,Sum = 3120}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--关羽魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 150,Sum = 345},[2] = {Id = 112,Val = 60,Sum = 138},[3] = {Id = 113,Val = 2400,Sum = 5520}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--关羽魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 585},[2] = {Id = 112,Val = 96,Sum = 234},[3] = {Id = 113,Val = 3840,Sum = 9360}},Cost = {[1] = {Id = 1401002,Val = 710},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--关羽魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 330,Sum = 915},[2] = {Id = 112,Val = 132,Sum = 366},[3] = {Id = 113,Val = 5280,Sum = 14640}},Cost = {[1] = {Id = 1401002,Val = 1080},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--关羽魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 420,Sum = 1335},[2] = {Id = 112,Val = 168,Sum = 534},[3] = {Id = 113,Val = 6720,Sum = 21360}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--关羽魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1815},[2] = {Id = 112,Val = 192,Sum = 726},[3] = {Id = 113,Val = 7680,Sum = 29040}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--关羽魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 570,Sum = 2385},[2] = {Id = 112,Val = 228,Sum = 954},[3] = {Id = 113,Val = 9120,Sum = 38160}},Cost = {[1] = {Id = 1401002,Val = 2150},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--关羽魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 675,Sum = 3060},[2] = {Id = 112,Val = 270,Sum = 1224},[3] = {Id = 113,Val = 10800,Sum = 48960}},Cost = {[1] = {Id = 1401002,Val = 2870},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--关羽魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 120},[2] = {Id = 112,Val = 48,Sum = 48},[3] = {Id = 113,Val = 1920,Sum = 1920}},Cost = {[1] = {Id = 1401002,Val = 910},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--关羽魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 300},[2] = {Id = 112,Val = 72,Sum = 120},[3] = {Id = 113,Val = 2880,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--关羽魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 540},[2] = {Id = 112,Val = 96,Sum = 216},[3] = {Id = 113,Val = 3840,Sum = 8640}},Cost = {[1] = {Id = 1401002,Val = 1140},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--关羽魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 360,Sum = 900},[2] = {Id = 112,Val = 144,Sum = 360},[3] = {Id = 113,Val = 5760,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 1095},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--关羽魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1380},[2] = {Id = 112,Val = 192,Sum = 552},[3] = {Id = 113,Val = 7680,Sum = 22080}},Cost = {[1] = {Id = 1401002,Val = 1485},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--关羽魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 600,Sum = 1980},[2] = {Id = 112,Val = 240,Sum = 792},[3] = {Id = 113,Val = 9600,Sum = 31680}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--关羽魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 720,Sum = 2700},[2] = {Id = 112,Val = 288,Sum = 1080},[3] = {Id = 113,Val = 11520,Sum = 43200}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--关羽魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 840,Sum = 3540},[2] = {Id = 112,Val = 336,Sum = 1416},[3] = {Id = 113,Val = 13440,Sum = 56640}},Cost = {[1] = {Id = 1401002,Val = 2955},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--关羽魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 4500},[2] = {Id = 112,Val = 384,Sum = 1800},[3] = {Id = 113,Val = 15360,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 3695},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--关羽魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 150,Sum = 150},[2] = {Id = 112,Val = 60,Sum = 60},[3] = {Id = 113,Val = 2400,Sum = 2400}},Cost = {[1] = {Id = 1401002,Val = 1480},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--关羽魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 390},[2] = {Id = 112,Val = 96,Sum = 156},[3] = {Id = 113,Val = 3840,Sum = 6240}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--关羽魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 330,Sum = 720},[2] = {Id = 112,Val = 132,Sum = 288},[3] = {Id = 113,Val = 5280,Sum = 11520}},Cost = {[1] = {Id = 1401002,Val = 1235},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--关羽魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1200},[2] = {Id = 112,Val = 192,Sum = 480},[3] = {Id = 113,Val = 7680,Sum = 19200}},Cost = {[1] = {Id = 1401002,Val = 2370},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--关羽魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 630,Sum = 1830},[2] = {Id = 112,Val = 252,Sum = 732},[3] = {Id = 113,Val = 10080,Sum = 29280}},Cost = {[1] = {Id = 1401002,Val = 2405},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--关羽魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 825,Sum = 2655},[2] = {Id = 112,Val = 330,Sum = 1062},[3] = {Id = 113,Val = 13200,Sum = 42480}},Cost = {[1] = {Id = 1401002,Val = 2390},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--关羽魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 975,Sum = 3630},[2] = {Id = 112,Val = 390,Sum = 1452},[3] = {Id = 113,Val = 15600,Sum = 58080}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--关羽魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1125,Sum = 4755},[2] = {Id = 112,Val = 450,Sum = 1902},[3] = {Id = 113,Val = 18000,Sum = 76080}},Cost = {[1] = {Id = 1401002,Val = 4790},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--关羽魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1275,Sum = 6030},[2] = {Id = 112,Val = 510,Sum = 2412},[3] = {Id = 113,Val = 20400,Sum = 96480}},Cost = {[1] = {Id = 1401002,Val = 7190},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--关羽魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 210,Sum = 210},[2] = {Id = 112,Val = 84,Sum = 84},[3] = {Id = 113,Val = 3360,Sum = 3360}},Cost = {[1] = {Id = 1401002,Val = 3085},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--关羽魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 300,Sum = 510},[2] = {Id = 112,Val = 120,Sum = 204},[3] = {Id = 113,Val = 4800,Sum = 8160}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--关羽魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 390,Sum = 900},[2] = {Id = 112,Val = 156,Sum = 360},[3] = {Id = 113,Val = 6240,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 2570},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--关羽魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 600,Sum = 1500},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 9600,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 3705},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--关羽魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2280},[2] = {Id = 112,Val = 312,Sum = 912},[3] = {Id = 113,Val = 12480,Sum = 36480}},Cost = {[1] = {Id = 1401002,Val = 3760},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--关羽魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 975,Sum = 3255},[2] = {Id = 112,Val = 390,Sum = 1302},[3] = {Id = 113,Val = 15600,Sum = 52080}},Cost = {[1] = {Id = 1401002,Val = 6230},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--关羽魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1200,Sum = 4455},[2] = {Id = 112,Val = 480,Sum = 1782},[3] = {Id = 113,Val = 19200,Sum = 71280}},Cost = {[1] = {Id = 1401002,Val = 6245},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--关羽魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1425,Sum = 5880},[2] = {Id = 112,Val = 570,Sum = 2352},[3] = {Id = 113,Val = 22800,Sum = 94080}},Cost = {[1] = {Id = 1401002,Val = 8740},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--关羽魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1650,Sum = 7530},[2] = {Id = 112,Val = 660,Sum = 3012},[3] = {Id = 113,Val = 26400,Sum = 120480}},Cost = {[1] = {Id = 1401002,Val = 11240},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--关羽魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 240},[2] = {Id = 112,Val = 96,Sum = 96},[3] = {Id = 113,Val = 3840,Sum = 3840}},Cost = {[1] = {Id = 1401002,Val = 2905},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--关羽魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 360,Sum = 600},[2] = {Id = 112,Val = 144,Sum = 240},[3] = {Id = 113,Val = 5760,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 4360},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--关羽魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1080},[2] = {Id = 112,Val = 192,Sum = 432},[3] = {Id = 113,Val = 7680,Sum = 17280}},Cost = {[1] = {Id = 1401002,Val = 4840},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--关羽魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 720,Sum = 1800},[2] = {Id = 112,Val = 288,Sum = 720},[3] = {Id = 113,Val = 11520,Sum = 28800}},Cost = {[1] = {Id = 1401002,Val = 6970},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--关羽魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 2760},[2] = {Id = 112,Val = 384,Sum = 1104},[3] = {Id = 113,Val = 15360,Sum = 44160}},Cost = {[1] = {Id = 1401002,Val = 7080},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--关羽魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1200,Sum = 3960},[2] = {Id = 112,Val = 480,Sum = 1584},[3] = {Id = 113,Val = 19200,Sum = 63360}},Cost = {[1] = {Id = 1401002,Val = 9385},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--关羽魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1440,Sum = 5400},[2] = {Id = 112,Val = 576,Sum = 2160},[3] = {Id = 113,Val = 23040,Sum = 86400}},Cost = {[1] = {Id = 1401002,Val = 11760},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--关羽魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 840,Sum = 6240},[2] = {Id = 112,Val = 336,Sum = 2496},[3] = {Id = 113,Val = 13440,Sum = 99840}},Cost = {[1] = {Id = 1401002,Val = 16445},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--关羽魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1920,Sum = 8160},[2] = {Id = 112,Val = 768,Sum = 3264},[3] = {Id = 113,Val = 30720,Sum = 130560}},Cost = {[1] = {Id = 1401002,Val = 18800},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--关羽魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 270,Sum = 270},[2] = {Id = 112,Val = 108,Sum = 108},[3] = {Id = 113,Val = 4320,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 5710},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--关羽魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 420,Sum = 690},[2] = {Id = 112,Val = 168,Sum = 276},[3] = {Id = 113,Val = 6720,Sum = 11040}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--关羽魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 570,Sum = 1260},[2] = {Id = 112,Val = 228,Sum = 504},[3] = {Id = 113,Val = 9120,Sum = 20160}},Cost = {[1] = {Id = 1401002,Val = 7135},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--关羽魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 840,Sum = 2100},[2] = {Id = 112,Val = 336,Sum = 840},[3] = {Id = 113,Val = 13440,Sum = 33600}},Cost = {[1] = {Id = 1401002,Val = 9130},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--关羽魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1125,Sum = 3225},[2] = {Id = 112,Val = 450,Sum = 1290},[3] = {Id = 113,Val = 18000,Sum = 51600}},Cost = {[1] = {Id = 1401002,Val = 9275},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--关羽魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1380,Sum = 4605},[2] = {Id = 112,Val = 552,Sum = 1842},[3] = {Id = 113,Val = 22080,Sum = 73680}},Cost = {[1] = {Id = 1401002,Val = 11525},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--关羽魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1800,Sum = 6405},[2] = {Id = 112,Val = 720,Sum = 2562},[3] = {Id = 113,Val = 28800,Sum = 102480}},Cost = {[1] = {Id = 1401002,Val = 16170},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--关羽魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1950,Sum = 8355},[2] = {Id = 112,Val = 780,Sum = 3342},[3] = {Id = 113,Val = 31200,Sum = 133680}},Cost = {[1] = {Id = 1401002,Val = 18465},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--关羽魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2250,Sum = 10605},[2] = {Id = 112,Val = 900,Sum = 4242},[3] = {Id = 113,Val = 36000,Sum = 169680}},Cost = {[1] = {Id = 1401002,Val = 23090},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--关羽魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 300,Sum = 300},[2] = {Id = 112,Val = 120,Sum = 120},[3] = {Id = 113,Val = 4800,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 4865},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--关羽魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 780},[2] = {Id = 112,Val = 192,Sum = 312},[3] = {Id = 113,Val = 7680,Sum = 12480}},Cost = {[1] = {Id = 1401002,Val = 5835},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--关羽魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 645,Sum = 1425},[2] = {Id = 112,Val = 258,Sum = 570},[3] = {Id = 113,Val = 10320,Sum = 22800}},Cost = {[1] = {Id = 1401002,Val = 8105},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--关羽魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 2385},[2] = {Id = 112,Val = 384,Sum = 954},[3] = {Id = 113,Val = 15360,Sum = 38160}},Cost = {[1] = {Id = 1401002,Val = 9340},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--关羽魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1275,Sum = 3660},[2] = {Id = 112,Val = 510,Sum = 1464},[3] = {Id = 113,Val = 20400,Sum = 58560}},Cost = {[1] = {Id = 1401002,Val = 11855},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--关羽魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1590,Sum = 5250},[2] = {Id = 112,Val = 636,Sum = 2100},[3] = {Id = 113,Val = 25440,Sum = 84000}},Cost = {[1] = {Id = 1401002,Val = 14145},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--关羽魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1905,Sum = 7155},[2] = {Id = 112,Val = 762,Sum = 2862},[3] = {Id = 113,Val = 30480,Sum = 114480}},Cost = {[1] = {Id = 1401002,Val = 19690},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--关羽魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 2220,Sum = 9375},[2] = {Id = 112,Val = 888,Sum = 3750},[3] = {Id = 113,Val = 35520,Sum = 150000}},Cost = {[1] = {Id = 1401002,Val = 23605},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--关羽魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2550,Sum = 11925},[2] = {Id = 112,Val = 1020,Sum = 4770},[3] = {Id = 113,Val = 40800,Sum = 190800}},Cost = {[1] = {Id = 1401002,Val = 23615},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--关羽魂珠-8 等级-9
				}
			}--关羽专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--关羽专属武器解封-0
			[1] = {PSkill = 130300111,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 36500},[2] = {Id = 1502001,Val = 80}}},--关羽专属武器解封-1
			[2] = {PSkill = 130300111,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 75500},[2] = {Id = 1502001,Val = 80}}},--关羽专属武器解封-2
			[3] = {PSkill = 130300111,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 168500},[2] = {Id = 1502001,Val = 120}}},--关羽专属武器解封-3
			[4] = {PSkill = 130300111,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 295500},[2] = {Id = 1502001,Val = 120}}},--关羽专属武器解封-4
			[5] = {PSkill = 130300111,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 732500},[2] = {Id = 1502001,Val = 160}}}--关羽专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 36,Sum = 36},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 880,Sum = 880}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--许褚魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 54,Sum = 90},[2] = {Id = 112,Val = 30,Sum = 50},[3] = {Id = 113,Val = 1320,Sum = 2200}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--许褚魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 162},[2] = {Id = 112,Val = 40,Sum = 90},[3] = {Id = 113,Val = 1760,Sum = 3960}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--许褚魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 270},[2] = {Id = 112,Val = 60,Sum = 150},[3] = {Id = 113,Val = 2640,Sum = 6600}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--许褚魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 414},[2] = {Id = 112,Val = 80,Sum = 230},[3] = {Id = 113,Val = 3520,Sum = 10120}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--许褚魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 594},[2] = {Id = 112,Val = 100,Sum = 330},[3] = {Id = 113,Val = 4400,Sum = 14520}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--许褚魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 810},[2] = {Id = 112,Val = 120,Sum = 450},[3] = {Id = 113,Val = 5280,Sum = 19800}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--许褚魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 1062},[2] = {Id = 112,Val = 140,Sum = 590},[3] = {Id = 113,Val = 6160,Sum = 25960}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--许褚魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1350},[2] = {Id = 112,Val = 160,Sum = 750},[3] = {Id = 113,Val = 7040,Sum = 33000}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--许褚魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 45,Sum = 45},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 1100,Sum = 1100}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--许褚魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 117},[2] = {Id = 112,Val = 40,Sum = 65},[3] = {Id = 113,Val = 1760,Sum = 2860}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--许褚魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 207},[2] = {Id = 112,Val = 50,Sum = 115},[3] = {Id = 113,Val = 2200,Sum = 5060}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--许褚魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 351},[2] = {Id = 112,Val = 80,Sum = 195},[3] = {Id = 113,Val = 3520,Sum = 8580}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--许褚魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 549},[2] = {Id = 112,Val = 110,Sum = 305},[3] = {Id = 113,Val = 4840,Sum = 13420}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--许褚魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 801},[2] = {Id = 112,Val = 140,Sum = 445},[3] = {Id = 113,Val = 6160,Sum = 19580}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--许褚魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1089},[2] = {Id = 112,Val = 160,Sum = 605},[3] = {Id = 113,Val = 7040,Sum = 26620}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--许褚魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 342,Sum = 1431},[2] = {Id = 112,Val = 190,Sum = 795},[3] = {Id = 113,Val = 8360,Sum = 34980}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--许褚魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 405,Sum = 1836},[2] = {Id = 112,Val = 225,Sum = 1020},[3] = {Id = 113,Val = 9900,Sum = 44880}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--许褚魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 72},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 1760,Sum = 1760}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--许褚魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 180},[2] = {Id = 112,Val = 60,Sum = 100},[3] = {Id = 113,Val = 2640,Sum = 4400}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--许褚魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 324},[2] = {Id = 112,Val = 80,Sum = 180},[3] = {Id = 113,Val = 3520,Sum = 7920}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--许褚魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 540},[2] = {Id = 112,Val = 120,Sum = 300},[3] = {Id = 113,Val = 5280,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--许褚魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 828},[2] = {Id = 112,Val = 160,Sum = 460},[3] = {Id = 113,Val = 7040,Sum = 20240}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--许褚魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 360,Sum = 1188},[2] = {Id = 112,Val = 200,Sum = 660},[3] = {Id = 113,Val = 8800,Sum = 29040}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--许褚魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1620},[2] = {Id = 112,Val = 240,Sum = 900},[3] = {Id = 113,Val = 10560,Sum = 39600}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--许褚魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 2124},[2] = {Id = 112,Val = 280,Sum = 1180},[3] = {Id = 113,Val = 12320,Sum = 51920}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--许褚魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 2700},[2] = {Id = 112,Val = 320,Sum = 1500},[3] = {Id = 113,Val = 14080,Sum = 66000}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--许褚魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 90},[2] = {Id = 112,Val = 50,Sum = 50},[3] = {Id = 113,Val = 2200,Sum = 2200}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--许褚魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 234},[2] = {Id = 112,Val = 80,Sum = 130},[3] = {Id = 113,Val = 3520,Sum = 5720}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--许褚魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 432},[2] = {Id = 112,Val = 110,Sum = 240},[3] = {Id = 113,Val = 4840,Sum = 10560}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--许褚魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 720},[2] = {Id = 112,Val = 160,Sum = 400},[3] = {Id = 113,Val = 7040,Sum = 17600}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--许褚魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1098},[2] = {Id = 112,Val = 210,Sum = 610},[3] = {Id = 113,Val = 9240,Sum = 26840}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--许褚魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 495,Sum = 1593},[2] = {Id = 112,Val = 275,Sum = 885},[3] = {Id = 113,Val = 12100,Sum = 38940}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--许褚魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 585,Sum = 2178},[2] = {Id = 112,Val = 325,Sum = 1210},[3] = {Id = 113,Val = 14300,Sum = 53240}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--许褚魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 675,Sum = 2853},[2] = {Id = 112,Val = 375,Sum = 1585},[3] = {Id = 113,Val = 16500,Sum = 69740}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--许褚魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 765,Sum = 3618},[2] = {Id = 112,Val = 425,Sum = 2010},[3] = {Id = 113,Val = 18700,Sum = 88440}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--许褚魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 126},[2] = {Id = 112,Val = 70,Sum = 70},[3] = {Id = 113,Val = 3080,Sum = 3080}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--许褚魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 306},[2] = {Id = 112,Val = 100,Sum = 170},[3] = {Id = 113,Val = 4400,Sum = 7480}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--许褚魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 234,Sum = 540},[2] = {Id = 112,Val = 130,Sum = 300},[3] = {Id = 113,Val = 5720,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--许褚魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 360,Sum = 900},[2] = {Id = 112,Val = 200,Sum = 500},[3] = {Id = 113,Val = 8800,Sum = 22000}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--许褚魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 468,Sum = 1368},[2] = {Id = 112,Val = 260,Sum = 760},[3] = {Id = 113,Val = 11440,Sum = 33440}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--许褚魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 585,Sum = 1953},[2] = {Id = 112,Val = 325,Sum = 1085},[3] = {Id = 113,Val = 14300,Sum = 47740}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--许褚魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 720,Sum = 2673},[2] = {Id = 112,Val = 400,Sum = 1485},[3] = {Id = 113,Val = 17600,Sum = 65340}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--许褚魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 855,Sum = 3528},[2] = {Id = 112,Val = 475,Sum = 1960},[3] = {Id = 113,Val = 20900,Sum = 86240}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--许褚魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 990,Sum = 4518},[2] = {Id = 112,Val = 550,Sum = 2510},[3] = {Id = 113,Val = 24200,Sum = 110440}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--许褚魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 144},[2] = {Id = 112,Val = 80,Sum = 80},[3] = {Id = 113,Val = 3520,Sum = 3520}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--许褚魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 360},[2] = {Id = 112,Val = 120,Sum = 200},[3] = {Id = 113,Val = 5280,Sum = 8800}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--许褚魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 648},[2] = {Id = 112,Val = 160,Sum = 360},[3] = {Id = 113,Val = 7040,Sum = 15840}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--许褚魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1080},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 10560,Sum = 26400}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--许褚魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1656},[2] = {Id = 112,Val = 320,Sum = 920},[3] = {Id = 113,Val = 14080,Sum = 40480}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--许褚魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 720,Sum = 2376},[2] = {Id = 112,Val = 400,Sum = 1320},[3] = {Id = 113,Val = 17600,Sum = 58080}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--许褚魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 3240},[2] = {Id = 112,Val = 480,Sum = 1800},[3] = {Id = 113,Val = 21120,Sum = 79200}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--许褚魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 3744},[2] = {Id = 112,Val = 280,Sum = 2080},[3] = {Id = 113,Val = 12320,Sum = 91520}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--许褚魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1152,Sum = 4896},[2] = {Id = 112,Val = 640,Sum = 2720},[3] = {Id = 113,Val = 28160,Sum = 119680}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--许褚魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 162},[2] = {Id = 112,Val = 90,Sum = 90},[3] = {Id = 113,Val = 3960,Sum = 3960}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--许褚魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 414},[2] = {Id = 112,Val = 140,Sum = 230},[3] = {Id = 113,Val = 6160,Sum = 10120}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--许褚魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 342,Sum = 756},[2] = {Id = 112,Val = 190,Sum = 420},[3] = {Id = 113,Val = 8360,Sum = 18480}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--许褚魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 1260},[2] = {Id = 112,Val = 280,Sum = 700},[3] = {Id = 113,Val = 12320,Sum = 30800}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--许褚魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 675,Sum = 1935},[2] = {Id = 112,Val = 375,Sum = 1075},[3] = {Id = 113,Val = 16500,Sum = 47300}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--许褚魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 828,Sum = 2763},[2] = {Id = 112,Val = 460,Sum = 1535},[3] = {Id = 113,Val = 20240,Sum = 67540}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--许褚魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1080,Sum = 3843},[2] = {Id = 112,Val = 600,Sum = 2135},[3] = {Id = 113,Val = 26400,Sum = 93940}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--许褚魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1170,Sum = 5013},[2] = {Id = 112,Val = 650,Sum = 2785},[3] = {Id = 113,Val = 28600,Sum = 122540}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--许褚魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1350,Sum = 6363},[2] = {Id = 112,Val = 750,Sum = 3535},[3] = {Id = 113,Val = 33000,Sum = 155540}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--许褚魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 180},[2] = {Id = 112,Val = 100,Sum = 100},[3] = {Id = 113,Val = 4400,Sum = 4400}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--许褚魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 468},[2] = {Id = 112,Val = 160,Sum = 260},[3] = {Id = 113,Val = 7040,Sum = 11440}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--许褚魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 387,Sum = 855},[2] = {Id = 112,Val = 215,Sum = 475},[3] = {Id = 113,Val = 9460,Sum = 20900}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--许褚魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1431},[2] = {Id = 112,Val = 320,Sum = 795},[3] = {Id = 113,Val = 14080,Sum = 34980}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--许褚魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 765,Sum = 2196},[2] = {Id = 112,Val = 425,Sum = 1220},[3] = {Id = 113,Val = 18700,Sum = 53680}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--许褚魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 954,Sum = 3150},[2] = {Id = 112,Val = 530,Sum = 1750},[3] = {Id = 113,Val = 23320,Sum = 77000}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--许褚魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1143,Sum = 4293},[2] = {Id = 112,Val = 635,Sum = 2385},[3] = {Id = 113,Val = 27940,Sum = 104940}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--许褚魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1332,Sum = 5625},[2] = {Id = 112,Val = 740,Sum = 3125},[3] = {Id = 113,Val = 32560,Sum = 137500}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--许褚魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1530,Sum = 7155},[2] = {Id = 112,Val = 850,Sum = 3975},[3] = {Id = 113,Val = 37400,Sum = 174900}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--许褚魂珠-8 等级-9
				}
			}--许褚专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--许褚专属武器解封-0
			[1] = {PSkill = 130300211,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 18500},[2] = {Id = 1502002,Val = 40}}},--许褚专属武器解封-1
			[2] = {PSkill = 130300211,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 37500},[2] = {Id = 1502002,Val = 40}}},--许褚专属武器解封-2
			[3] = {PSkill = 130300211,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 84000},[2] = {Id = 1502002,Val = 60}}},--许褚专属武器解封-3
			[4] = {PSkill = 130300211,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 148000},[2] = {Id = 1502002,Val = 60}}},--许褚专属武器解封-4
			[5] = {PSkill = 130300211,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 366000},[2] = {Id = 1502002,Val = 80}}}--许褚专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 48,Sum = 48},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 880,Sum = 880}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--典韦魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 120},[2] = {Id = 112,Val = 33,Sum = 55},[3] = {Id = 113,Val = 1320,Sum = 2200}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--典韦魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 216},[2] = {Id = 112,Val = 44,Sum = 99},[3] = {Id = 113,Val = 1760,Sum = 3960}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--典韦魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 360},[2] = {Id = 112,Val = 66,Sum = 165},[3] = {Id = 113,Val = 2640,Sum = 6600}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--典韦魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 552},[2] = {Id = 112,Val = 88,Sum = 253},[3] = {Id = 113,Val = 3520,Sum = 10120}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--典韦魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 792},[2] = {Id = 112,Val = 110,Sum = 363},[3] = {Id = 113,Val = 4400,Sum = 14520}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--典韦魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1080},[2] = {Id = 112,Val = 132,Sum = 495},[3] = {Id = 113,Val = 5280,Sum = 19800}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--典韦魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1416},[2] = {Id = 112,Val = 154,Sum = 649},[3] = {Id = 113,Val = 6160,Sum = 25960}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--典韦魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1800},[2] = {Id = 112,Val = 176,Sum = 825},[3] = {Id = 113,Val = 7040,Sum = 33000}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--典韦魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 60},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 1100,Sum = 1100}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--典韦魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 156},[2] = {Id = 112,Val = 44,Sum = 72},[3] = {Id = 113,Val = 1760,Sum = 2860}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--典韦魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 276},[2] = {Id = 112,Val = 55,Sum = 127},[3] = {Id = 113,Val = 2200,Sum = 5060}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--典韦魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 468},[2] = {Id = 112,Val = 88,Sum = 215},[3] = {Id = 113,Val = 3520,Sum = 8580}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--典韦魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 732},[2] = {Id = 112,Val = 121,Sum = 336},[3] = {Id = 113,Val = 4840,Sum = 13420}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--典韦魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1068},[2] = {Id = 112,Val = 154,Sum = 490},[3] = {Id = 113,Val = 6160,Sum = 19580}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--典韦魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1452},[2] = {Id = 112,Val = 176,Sum = 666},[3] = {Id = 113,Val = 7040,Sum = 26620}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--典韦魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1908},[2] = {Id = 112,Val = 209,Sum = 875},[3] = {Id = 113,Val = 8360,Sum = 34980}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--典韦魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 2448},[2] = {Id = 112,Val = 248,Sum = 1123},[3] = {Id = 113,Val = 9900,Sum = 44880}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--典韦魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 96},[2] = {Id = 112,Val = 44,Sum = 44},[3] = {Id = 113,Val = 1760,Sum = 1760}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--典韦魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 240},[2] = {Id = 112,Val = 66,Sum = 110},[3] = {Id = 113,Val = 2640,Sum = 4400}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--典韦魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 432},[2] = {Id = 112,Val = 88,Sum = 198},[3] = {Id = 113,Val = 3520,Sum = 7920}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--典韦魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 720},[2] = {Id = 112,Val = 132,Sum = 330},[3] = {Id = 113,Val = 5280,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--典韦魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1104},[2] = {Id = 112,Val = 176,Sum = 506},[3] = {Id = 113,Val = 7040,Sum = 20240}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--典韦魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1584},[2] = {Id = 112,Val = 220,Sum = 726},[3] = {Id = 113,Val = 8800,Sum = 29040}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--典韦魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 2160},[2] = {Id = 112,Val = 264,Sum = 990},[3] = {Id = 113,Val = 10560,Sum = 39600}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--典韦魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 2832},[2] = {Id = 112,Val = 308,Sum = 1298},[3] = {Id = 113,Val = 12320,Sum = 51920}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--典韦魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 3600},[2] = {Id = 112,Val = 352,Sum = 1650},[3] = {Id = 113,Val = 14080,Sum = 66000}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--典韦魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 120},[2] = {Id = 112,Val = 55,Sum = 55},[3] = {Id = 113,Val = 2200,Sum = 2200}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--典韦魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 312},[2] = {Id = 112,Val = 88,Sum = 143},[3] = {Id = 113,Val = 3520,Sum = 5720}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--典韦魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 576},[2] = {Id = 112,Val = 121,Sum = 264},[3] = {Id = 113,Val = 4840,Sum = 10560}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--典韦魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 960},[2] = {Id = 112,Val = 176,Sum = 440},[3] = {Id = 113,Val = 7040,Sum = 17600}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--典韦魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 1464},[2] = {Id = 112,Val = 231,Sum = 671},[3] = {Id = 113,Val = 9240,Sum = 26840}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--典韦魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 660,Sum = 2124},[2] = {Id = 112,Val = 303,Sum = 974},[3] = {Id = 113,Val = 12100,Sum = 38940}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--典韦魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2904},[2] = {Id = 112,Val = 358,Sum = 1332},[3] = {Id = 113,Val = 14300,Sum = 53240}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--典韦魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 3804},[2] = {Id = 112,Val = 413,Sum = 1745},[3] = {Id = 113,Val = 16500,Sum = 69740}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--典韦魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 4824},[2] = {Id = 112,Val = 468,Sum = 2213},[3] = {Id = 113,Val = 18700,Sum = 88440}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--典韦魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 168},[2] = {Id = 112,Val = 77,Sum = 77},[3] = {Id = 113,Val = 3080,Sum = 3080}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--典韦魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 408},[2] = {Id = 112,Val = 110,Sum = 187},[3] = {Id = 113,Val = 4400,Sum = 7480}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--典韦魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 720},[2] = {Id = 112,Val = 143,Sum = 330},[3] = {Id = 113,Val = 5720,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--典韦魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1200},[2] = {Id = 112,Val = 220,Sum = 550},[3] = {Id = 113,Val = 8800,Sum = 22000}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--典韦魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 624,Sum = 1824},[2] = {Id = 112,Val = 286,Sum = 836},[3] = {Id = 113,Val = 11440,Sum = 33440}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--典韦魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2604},[2] = {Id = 112,Val = 358,Sum = 1194},[3] = {Id = 113,Val = 14300,Sum = 47740}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--典韦魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3564},[2] = {Id = 112,Val = 440,Sum = 1634},[3] = {Id = 113,Val = 17600,Sum = 65340}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--典韦魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1140,Sum = 4704},[2] = {Id = 112,Val = 523,Sum = 2157},[3] = {Id = 113,Val = 20900,Sum = 86240}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--典韦魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 6024},[2] = {Id = 112,Val = 605,Sum = 2762},[3] = {Id = 113,Val = 24200,Sum = 110440}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--典韦魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 192},[2] = {Id = 112,Val = 88,Sum = 88},[3] = {Id = 113,Val = 3520,Sum = 3520}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--典韦魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 480},[2] = {Id = 112,Val = 132,Sum = 220},[3] = {Id = 113,Val = 5280,Sum = 8800}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--典韦魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 864},[2] = {Id = 112,Val = 176,Sum = 396},[3] = {Id = 113,Val = 7040,Sum = 15840}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--典韦魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1440},[2] = {Id = 112,Val = 264,Sum = 660},[3] = {Id = 113,Val = 10560,Sum = 26400}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--典韦魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 2208},[2] = {Id = 112,Val = 352,Sum = 1012},[3] = {Id = 113,Val = 14080,Sum = 40480}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--典韦魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3168},[2] = {Id = 112,Val = 440,Sum = 1452},[3] = {Id = 113,Val = 17600,Sum = 58080}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--典韦魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1152,Sum = 4320},[2] = {Id = 112,Val = 528,Sum = 1980},[3] = {Id = 113,Val = 21120,Sum = 79200}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--典韦魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 4992},[2] = {Id = 112,Val = 308,Sum = 2288},[3] = {Id = 113,Val = 12320,Sum = 91520}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--典韦魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1536,Sum = 6528},[2] = {Id = 112,Val = 704,Sum = 2992},[3] = {Id = 113,Val = 28160,Sum = 119680}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--典韦魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 216},[2] = {Id = 112,Val = 99,Sum = 99},[3] = {Id = 113,Val = 3960,Sum = 3960}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--典韦魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 552},[2] = {Id = 112,Val = 154,Sum = 253},[3] = {Id = 113,Val = 6160,Sum = 10120}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--典韦魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1008},[2] = {Id = 112,Val = 209,Sum = 462},[3] = {Id = 113,Val = 8360,Sum = 18480}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--典韦魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 1680},[2] = {Id = 112,Val = 308,Sum = 770},[3] = {Id = 113,Val = 12320,Sum = 30800}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--典韦魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 2580},[2] = {Id = 112,Val = 413,Sum = 1183},[3] = {Id = 113,Val = 16500,Sum = 47300}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--典韦魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1104,Sum = 3684},[2] = {Id = 112,Val = 506,Sum = 1689},[3] = {Id = 113,Val = 20240,Sum = 67540}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--典韦魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1440,Sum = 5124},[2] = {Id = 112,Val = 660,Sum = 2349},[3] = {Id = 113,Val = 26400,Sum = 93940}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--典韦魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1560,Sum = 6684},[2] = {Id = 112,Val = 715,Sum = 3064},[3] = {Id = 113,Val = 28600,Sum = 122540}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--典韦魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1800,Sum = 8484},[2] = {Id = 112,Val = 825,Sum = 3889},[3] = {Id = 113,Val = 33000,Sum = 155540}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--典韦魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 240},[2] = {Id = 112,Val = 110,Sum = 110},[3] = {Id = 113,Val = 4400,Sum = 4400}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--典韦魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 624},[2] = {Id = 112,Val = 176,Sum = 286},[3] = {Id = 113,Val = 7040,Sum = 11440}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--典韦魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 516,Sum = 1140},[2] = {Id = 112,Val = 237,Sum = 523},[3] = {Id = 113,Val = 9460,Sum = 20900}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--典韦魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 1908},[2] = {Id = 112,Val = 352,Sum = 875},[3] = {Id = 113,Val = 14080,Sum = 34980}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--典韦魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 2928},[2] = {Id = 112,Val = 468,Sum = 1343},[3] = {Id = 113,Val = 18700,Sum = 53680}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--典韦魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1272,Sum = 4200},[2] = {Id = 112,Val = 583,Sum = 1926},[3] = {Id = 113,Val = 23320,Sum = 77000}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--典韦魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1524,Sum = 5724},[2] = {Id = 112,Val = 699,Sum = 2625},[3] = {Id = 113,Val = 27940,Sum = 104940}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--典韦魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1776,Sum = 7500},[2] = {Id = 112,Val = 814,Sum = 3439},[3] = {Id = 113,Val = 32560,Sum = 137500}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--典韦魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2040,Sum = 9540},[2] = {Id = 112,Val = 935,Sum = 4374},[3] = {Id = 113,Val = 37400,Sum = 174900}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--典韦魂珠-8 等级-9
				}
			}--典韦专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--典韦专属武器解封-0
			[1] = {PSkill = 130300311,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 25500},[2] = {Id = 1502003,Val = 80}}},--典韦专属武器解封-1
			[2] = {PSkill = 130300311,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 52500},[2] = {Id = 1502003,Val = 80}}},--典韦专属武器解封-2
			[3] = {PSkill = 130300311,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 118000},[2] = {Id = 1502003,Val = 120}}},--典韦专属武器解封-3
			[4] = {PSkill = 130300311,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 207000},[2] = {Id = 1502003,Val = 120}}},--典韦专属武器解封-4
			[5] = {PSkill = 130300311,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 512500},[2] = {Id = 1502003,Val = 160}}}--典韦专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 36,Sum = 36},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 880,Sum = 880}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--李轩辕魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 54,Sum = 90},[2] = {Id = 112,Val = 30,Sum = 50},[3] = {Id = 113,Val = 1320,Sum = 2200}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--李轩辕魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 162},[2] = {Id = 112,Val = 40,Sum = 90},[3] = {Id = 113,Val = 1760,Sum = 3960}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--李轩辕魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 270},[2] = {Id = 112,Val = 60,Sum = 150},[3] = {Id = 113,Val = 2640,Sum = 6600}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--李轩辕魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 414},[2] = {Id = 112,Val = 80,Sum = 230},[3] = {Id = 113,Val = 3520,Sum = 10120}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--李轩辕魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 594},[2] = {Id = 112,Val = 100,Sum = 330},[3] = {Id = 113,Val = 4400,Sum = 14520}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--李轩辕魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 810},[2] = {Id = 112,Val = 120,Sum = 450},[3] = {Id = 113,Val = 5280,Sum = 19800}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--李轩辕魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 1062},[2] = {Id = 112,Val = 140,Sum = 590},[3] = {Id = 113,Val = 6160,Sum = 25960}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--李轩辕魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1350},[2] = {Id = 112,Val = 160,Sum = 750},[3] = {Id = 113,Val = 7040,Sum = 33000}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--李轩辕魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 45,Sum = 45},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 1100,Sum = 1100}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--李轩辕魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 117},[2] = {Id = 112,Val = 40,Sum = 65},[3] = {Id = 113,Val = 1760,Sum = 2860}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--李轩辕魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 207},[2] = {Id = 112,Val = 50,Sum = 115},[3] = {Id = 113,Val = 2200,Sum = 5060}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--李轩辕魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 351},[2] = {Id = 112,Val = 80,Sum = 195},[3] = {Id = 113,Val = 3520,Sum = 8580}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--李轩辕魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 549},[2] = {Id = 112,Val = 110,Sum = 305},[3] = {Id = 113,Val = 4840,Sum = 13420}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--李轩辕魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 801},[2] = {Id = 112,Val = 140,Sum = 445},[3] = {Id = 113,Val = 6160,Sum = 19580}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--李轩辕魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1089},[2] = {Id = 112,Val = 160,Sum = 605},[3] = {Id = 113,Val = 7040,Sum = 26620}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--李轩辕魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 342,Sum = 1431},[2] = {Id = 112,Val = 190,Sum = 795},[3] = {Id = 113,Val = 8360,Sum = 34980}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--李轩辕魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 405,Sum = 1836},[2] = {Id = 112,Val = 225,Sum = 1020},[3] = {Id = 113,Val = 9900,Sum = 44880}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--李轩辕魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 72},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 1760,Sum = 1760}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--李轩辕魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 180},[2] = {Id = 112,Val = 60,Sum = 100},[3] = {Id = 113,Val = 2640,Sum = 4400}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--李轩辕魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 324},[2] = {Id = 112,Val = 80,Sum = 180},[3] = {Id = 113,Val = 3520,Sum = 7920}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--李轩辕魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 540},[2] = {Id = 112,Val = 120,Sum = 300},[3] = {Id = 113,Val = 5280,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--李轩辕魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 828},[2] = {Id = 112,Val = 160,Sum = 460},[3] = {Id = 113,Val = 7040,Sum = 20240}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--李轩辕魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 360,Sum = 1188},[2] = {Id = 112,Val = 200,Sum = 660},[3] = {Id = 113,Val = 8800,Sum = 29040}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--李轩辕魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1620},[2] = {Id = 112,Val = 240,Sum = 900},[3] = {Id = 113,Val = 10560,Sum = 39600}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--李轩辕魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 2124},[2] = {Id = 112,Val = 280,Sum = 1180},[3] = {Id = 113,Val = 12320,Sum = 51920}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--李轩辕魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 2700},[2] = {Id = 112,Val = 320,Sum = 1500},[3] = {Id = 113,Val = 14080,Sum = 66000}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--李轩辕魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 90},[2] = {Id = 112,Val = 50,Sum = 50},[3] = {Id = 113,Val = 2200,Sum = 2200}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--李轩辕魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 234},[2] = {Id = 112,Val = 80,Sum = 130},[3] = {Id = 113,Val = 3520,Sum = 5720}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--李轩辕魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 432},[2] = {Id = 112,Val = 110,Sum = 240},[3] = {Id = 113,Val = 4840,Sum = 10560}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--李轩辕魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 720},[2] = {Id = 112,Val = 160,Sum = 400},[3] = {Id = 113,Val = 7040,Sum = 17600}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--李轩辕魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1098},[2] = {Id = 112,Val = 210,Sum = 610},[3] = {Id = 113,Val = 9240,Sum = 26840}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--李轩辕魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 495,Sum = 1593},[2] = {Id = 112,Val = 275,Sum = 885},[3] = {Id = 113,Val = 12100,Sum = 38940}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--李轩辕魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 585,Sum = 2178},[2] = {Id = 112,Val = 325,Sum = 1210},[3] = {Id = 113,Val = 14300,Sum = 53240}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--李轩辕魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 675,Sum = 2853},[2] = {Id = 112,Val = 375,Sum = 1585},[3] = {Id = 113,Val = 16500,Sum = 69740}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--李轩辕魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 765,Sum = 3618},[2] = {Id = 112,Val = 425,Sum = 2010},[3] = {Id = 113,Val = 18700,Sum = 88440}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--李轩辕魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 126},[2] = {Id = 112,Val = 70,Sum = 70},[3] = {Id = 113,Val = 3080,Sum = 3080}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--李轩辕魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 306},[2] = {Id = 112,Val = 100,Sum = 170},[3] = {Id = 113,Val = 4400,Sum = 7480}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--李轩辕魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 234,Sum = 540},[2] = {Id = 112,Val = 130,Sum = 300},[3] = {Id = 113,Val = 5720,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--李轩辕魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 360,Sum = 900},[2] = {Id = 112,Val = 200,Sum = 500},[3] = {Id = 113,Val = 8800,Sum = 22000}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--李轩辕魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 468,Sum = 1368},[2] = {Id = 112,Val = 260,Sum = 760},[3] = {Id = 113,Val = 11440,Sum = 33440}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--李轩辕魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 585,Sum = 1953},[2] = {Id = 112,Val = 325,Sum = 1085},[3] = {Id = 113,Val = 14300,Sum = 47740}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--李轩辕魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 720,Sum = 2673},[2] = {Id = 112,Val = 400,Sum = 1485},[3] = {Id = 113,Val = 17600,Sum = 65340}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--李轩辕魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 855,Sum = 3528},[2] = {Id = 112,Val = 475,Sum = 1960},[3] = {Id = 113,Val = 20900,Sum = 86240}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--李轩辕魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 990,Sum = 4518},[2] = {Id = 112,Val = 550,Sum = 2510},[3] = {Id = 113,Val = 24200,Sum = 110440}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--李轩辕魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 144},[2] = {Id = 112,Val = 80,Sum = 80},[3] = {Id = 113,Val = 3520,Sum = 3520}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--李轩辕魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 360},[2] = {Id = 112,Val = 120,Sum = 200},[3] = {Id = 113,Val = 5280,Sum = 8800}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--李轩辕魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 648},[2] = {Id = 112,Val = 160,Sum = 360},[3] = {Id = 113,Val = 7040,Sum = 15840}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--李轩辕魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1080},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 10560,Sum = 26400}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--李轩辕魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1656},[2] = {Id = 112,Val = 320,Sum = 920},[3] = {Id = 113,Val = 14080,Sum = 40480}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--李轩辕魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 720,Sum = 2376},[2] = {Id = 112,Val = 400,Sum = 1320},[3] = {Id = 113,Val = 17600,Sum = 58080}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--李轩辕魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 3240},[2] = {Id = 112,Val = 480,Sum = 1800},[3] = {Id = 113,Val = 21120,Sum = 79200}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--李轩辕魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 3744},[2] = {Id = 112,Val = 280,Sum = 2080},[3] = {Id = 113,Val = 12320,Sum = 91520}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--李轩辕魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1152,Sum = 4896},[2] = {Id = 112,Val = 640,Sum = 2720},[3] = {Id = 113,Val = 28160,Sum = 119680}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--李轩辕魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 162},[2] = {Id = 112,Val = 90,Sum = 90},[3] = {Id = 113,Val = 3960,Sum = 3960}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--李轩辕魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 414},[2] = {Id = 112,Val = 140,Sum = 230},[3] = {Id = 113,Val = 6160,Sum = 10120}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--李轩辕魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 342,Sum = 756},[2] = {Id = 112,Val = 190,Sum = 420},[3] = {Id = 113,Val = 8360,Sum = 18480}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--李轩辕魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 1260},[2] = {Id = 112,Val = 280,Sum = 700},[3] = {Id = 113,Val = 12320,Sum = 30800}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--李轩辕魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 675,Sum = 1935},[2] = {Id = 112,Val = 375,Sum = 1075},[3] = {Id = 113,Val = 16500,Sum = 47300}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--李轩辕魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 828,Sum = 2763},[2] = {Id = 112,Val = 460,Sum = 1535},[3] = {Id = 113,Val = 20240,Sum = 67540}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--李轩辕魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1080,Sum = 3843},[2] = {Id = 112,Val = 600,Sum = 2135},[3] = {Id = 113,Val = 26400,Sum = 93940}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--李轩辕魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1170,Sum = 5013},[2] = {Id = 112,Val = 650,Sum = 2785},[3] = {Id = 113,Val = 28600,Sum = 122540}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--李轩辕魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1350,Sum = 6363},[2] = {Id = 112,Val = 750,Sum = 3535},[3] = {Id = 113,Val = 33000,Sum = 155540}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--李轩辕魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 180},[2] = {Id = 112,Val = 100,Sum = 100},[3] = {Id = 113,Val = 4400,Sum = 4400}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--李轩辕魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 468},[2] = {Id = 112,Val = 160,Sum = 260},[3] = {Id = 113,Val = 7040,Sum = 11440}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--李轩辕魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 387,Sum = 855},[2] = {Id = 112,Val = 215,Sum = 475},[3] = {Id = 113,Val = 9460,Sum = 20900}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--李轩辕魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1431},[2] = {Id = 112,Val = 320,Sum = 795},[3] = {Id = 113,Val = 14080,Sum = 34980}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--李轩辕魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 765,Sum = 2196},[2] = {Id = 112,Val = 425,Sum = 1220},[3] = {Id = 113,Val = 18700,Sum = 53680}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--李轩辕魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 954,Sum = 3150},[2] = {Id = 112,Val = 530,Sum = 1750},[3] = {Id = 113,Val = 23320,Sum = 77000}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--李轩辕魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1143,Sum = 4293},[2] = {Id = 112,Val = 635,Sum = 2385},[3] = {Id = 113,Val = 27940,Sum = 104940}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--李轩辕魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1332,Sum = 5625},[2] = {Id = 112,Val = 740,Sum = 3125},[3] = {Id = 113,Val = 32560,Sum = 137500}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--李轩辕魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1530,Sum = 7155},[2] = {Id = 112,Val = 850,Sum = 3975},[3] = {Id = 113,Val = 37400,Sum = 174900}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--李轩辕魂珠-8 等级-9
				}
			}--李轩辕专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--李轩辕专属武器解封-0
			[1] = {PSkill = 130300511,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 22000},[2] = {Id = 1502005,Val = 40}}},--李轩辕专属武器解封-1
			[2] = {PSkill = 130300511,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 45000},[2] = {Id = 1502005,Val = 40}}},--李轩辕专属武器解封-2
			[3] = {PSkill = 130300511,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 101000},[2] = {Id = 1502005,Val = 60}}},--李轩辕专属武器解封-3
			[4] = {PSkill = 130300511,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 177500},[2] = {Id = 1502005,Val = 60}}},--李轩辕专属武器解封-4
			[5] = {PSkill = 130300511,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 439500},[2] = {Id = 1502005,Val = 80}}}--李轩辕专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 54,Sum = 54},[2] = {Id = 112,Val = 30,Sum = 30},[3] = {Id = 113,Val = 1080,Sum = 1080}},Cost = {[1] = {Id = 1401002,Val = 160},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--项羽魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 81,Sum = 135},[2] = {Id = 112,Val = 45,Sum = 75},[3] = {Id = 113,Val = 1620,Sum = 2700}},Cost = {[1] = {Id = 1401002,Val = 245},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--项羽魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 243},[2] = {Id = 112,Val = 60,Sum = 135},[3] = {Id = 113,Val = 2160,Sum = 4860}},Cost = {[1] = {Id = 1401002,Val = 405},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--项羽魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 405},[2] = {Id = 112,Val = 90,Sum = 225},[3] = {Id = 113,Val = 3240,Sum = 8100}},Cost = {[1] = {Id = 1401002,Val = 520},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--项羽魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 621},[2] = {Id = 112,Val = 120,Sum = 345},[3] = {Id = 113,Val = 4320,Sum = 12420}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--项羽魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 270,Sum = 891},[2] = {Id = 112,Val = 150,Sum = 495},[3] = {Id = 113,Val = 5400,Sum = 17820}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--项羽魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 324,Sum = 1215},[2] = {Id = 112,Val = 180,Sum = 675},[3] = {Id = 113,Val = 6480,Sum = 24300}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--项羽魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1593},[2] = {Id = 112,Val = 210,Sum = 885},[3] = {Id = 113,Val = 7560,Sum = 31860}},Cost = {[1] = {Id = 1401002,Val = 1055},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--项羽魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 2025},[2] = {Id = 112,Val = 240,Sum = 1125},[3] = {Id = 113,Val = 8640,Sum = 40500}},Cost = {[1] = {Id = 1401002,Val = 1315},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--项羽魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 68},[2] = {Id = 112,Val = 38,Sum = 38},[3] = {Id = 113,Val = 1350,Sum = 1350}},Cost = {[1] = {Id = 1401002,Val = 445},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--项羽魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 176},[2] = {Id = 112,Val = 60,Sum = 98},[3] = {Id = 113,Val = 2160,Sum = 3510}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--项羽魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 135,Sum = 311},[2] = {Id = 112,Val = 75,Sum = 173},[3] = {Id = 113,Val = 2700,Sum = 6210}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--项羽魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 527},[2] = {Id = 112,Val = 120,Sum = 293},[3] = {Id = 113,Val = 4320,Sum = 10530}},Cost = {[1] = {Id = 1401002,Val = 710},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--项羽魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 297,Sum = 824},[2] = {Id = 112,Val = 165,Sum = 458},[3] = {Id = 113,Val = 5940,Sum = 16470}},Cost = {[1] = {Id = 1401002,Val = 1080},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--项羽魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1202},[2] = {Id = 112,Val = 210,Sum = 668},[3] = {Id = 113,Val = 7560,Sum = 24030}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--项羽魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1634},[2] = {Id = 112,Val = 240,Sum = 908},[3] = {Id = 113,Val = 8640,Sum = 32670}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--项羽魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 513,Sum = 2147},[2] = {Id = 112,Val = 285,Sum = 1193},[3] = {Id = 113,Val = 10260,Sum = 42930}},Cost = {[1] = {Id = 1401002,Val = 2150},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--项羽魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 608,Sum = 2755},[2] = {Id = 112,Val = 338,Sum = 1531},[3] = {Id = 113,Val = 12150,Sum = 55080}},Cost = {[1] = {Id = 1401002,Val = 2870},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--项羽魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 108},[2] = {Id = 112,Val = 60,Sum = 60},[3] = {Id = 113,Val = 2160,Sum = 2160}},Cost = {[1] = {Id = 1401002,Val = 910},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--项羽魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 270},[2] = {Id = 112,Val = 90,Sum = 150},[3] = {Id = 113,Val = 3240,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--项羽魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 486},[2] = {Id = 112,Val = 120,Sum = 270},[3] = {Id = 113,Val = 4320,Sum = 9720}},Cost = {[1] = {Id = 1401002,Val = 1140},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--项羽魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 324,Sum = 810},[2] = {Id = 112,Val = 180,Sum = 450},[3] = {Id = 113,Val = 6480,Sum = 16200}},Cost = {[1] = {Id = 1401002,Val = 1095},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--项羽魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1242},[2] = {Id = 112,Val = 240,Sum = 690},[3] = {Id = 113,Val = 8640,Sum = 24840}},Cost = {[1] = {Id = 1401002,Val = 1485},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--项羽魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 1782},[2] = {Id = 112,Val = 300,Sum = 990},[3] = {Id = 113,Val = 10800,Sum = 35640}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--项羽魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 648,Sum = 2430},[2] = {Id = 112,Val = 360,Sum = 1350},[3] = {Id = 113,Val = 12960,Sum = 48600}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--项羽魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 756,Sum = 3186},[2] = {Id = 112,Val = 420,Sum = 1770},[3] = {Id = 113,Val = 15120,Sum = 63720}},Cost = {[1] = {Id = 1401002,Val = 2955},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--项羽魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 4050},[2] = {Id = 112,Val = 480,Sum = 2250},[3] = {Id = 113,Val = 17280,Sum = 81000}},Cost = {[1] = {Id = 1401002,Val = 3695},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--项羽魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 135,Sum = 135},[2] = {Id = 112,Val = 75,Sum = 75},[3] = {Id = 113,Val = 2700,Sum = 2700}},Cost = {[1] = {Id = 1401002,Val = 1480},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--项羽魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 351},[2] = {Id = 112,Val = 120,Sum = 195},[3] = {Id = 113,Val = 4320,Sum = 7020}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--项羽魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 297,Sum = 648},[2] = {Id = 112,Val = 165,Sum = 360},[3] = {Id = 113,Val = 5940,Sum = 12960}},Cost = {[1] = {Id = 1401002,Val = 1235},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--项羽魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1080},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 8640,Sum = 21600}},Cost = {[1] = {Id = 1401002,Val = 2370},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--项羽魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 567,Sum = 1647},[2] = {Id = 112,Val = 315,Sum = 915},[3] = {Id = 113,Val = 11340,Sum = 32940}},Cost = {[1] = {Id = 1401002,Val = 2405},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--项羽魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 743,Sum = 2390},[2] = {Id = 112,Val = 413,Sum = 1328},[3] = {Id = 113,Val = 14850,Sum = 47790}},Cost = {[1] = {Id = 1401002,Val = 2390},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--项羽魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 878,Sum = 3268},[2] = {Id = 112,Val = 488,Sum = 1816},[3] = {Id = 113,Val = 17550,Sum = 65340}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--项羽魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1013,Sum = 4281},[2] = {Id = 112,Val = 563,Sum = 2379},[3] = {Id = 113,Val = 20250,Sum = 85590}},Cost = {[1] = {Id = 1401002,Val = 4790},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--项羽魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1148,Sum = 5429},[2] = {Id = 112,Val = 638,Sum = 3017},[3] = {Id = 113,Val = 22950,Sum = 108540}},Cost = {[1] = {Id = 1401002,Val = 7190},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--项羽魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 189},[2] = {Id = 112,Val = 105,Sum = 105},[3] = {Id = 113,Val = 3780,Sum = 3780}},Cost = {[1] = {Id = 1401002,Val = 3085},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--项羽魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 270,Sum = 459},[2] = {Id = 112,Val = 150,Sum = 255},[3] = {Id = 113,Val = 5400,Sum = 9180}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--项羽魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 351,Sum = 810},[2] = {Id = 112,Val = 195,Sum = 450},[3] = {Id = 113,Val = 7020,Sum = 16200}},Cost = {[1] = {Id = 1401002,Val = 2570},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--项羽魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 1350},[2] = {Id = 112,Val = 300,Sum = 750},[3] = {Id = 113,Val = 10800,Sum = 27000}},Cost = {[1] = {Id = 1401002,Val = 3705},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--项羽魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 702,Sum = 2052},[2] = {Id = 112,Val = 390,Sum = 1140},[3] = {Id = 113,Val = 14040,Sum = 41040}},Cost = {[1] = {Id = 1401002,Val = 3760},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--项羽魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 878,Sum = 2930},[2] = {Id = 112,Val = 488,Sum = 1628},[3] = {Id = 113,Val = 17550,Sum = 58590}},Cost = {[1] = {Id = 1401002,Val = 6230},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--项羽魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1080,Sum = 4010},[2] = {Id = 112,Val = 600,Sum = 2228},[3] = {Id = 113,Val = 21600,Sum = 80190}},Cost = {[1] = {Id = 1401002,Val = 6245},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--项羽魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1283,Sum = 5293},[2] = {Id = 112,Val = 713,Sum = 2941},[3] = {Id = 113,Val = 25650,Sum = 105840}},Cost = {[1] = {Id = 1401002,Val = 8740},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--项羽魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1485,Sum = 6778},[2] = {Id = 112,Val = 825,Sum = 3766},[3] = {Id = 113,Val = 29700,Sum = 135540}},Cost = {[1] = {Id = 1401002,Val = 11240},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--项羽魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 216},[2] = {Id = 112,Val = 120,Sum = 120},[3] = {Id = 113,Val = 4320,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 2905},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--项羽魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 324,Sum = 540},[2] = {Id = 112,Val = 180,Sum = 300},[3] = {Id = 113,Val = 6480,Sum = 10800}},Cost = {[1] = {Id = 1401002,Val = 4360},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--项羽魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 972},[2] = {Id = 112,Val = 240,Sum = 540},[3] = {Id = 113,Val = 8640,Sum = 19440}},Cost = {[1] = {Id = 1401002,Val = 4840},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--项羽魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 648,Sum = 1620},[2] = {Id = 112,Val = 360,Sum = 900},[3] = {Id = 113,Val = 12960,Sum = 32400}},Cost = {[1] = {Id = 1401002,Val = 6970},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--项羽魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 2484},[2] = {Id = 112,Val = 480,Sum = 1380},[3] = {Id = 113,Val = 17280,Sum = 49680}},Cost = {[1] = {Id = 1401002,Val = 7080},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--项羽魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1080,Sum = 3564},[2] = {Id = 112,Val = 600,Sum = 1980},[3] = {Id = 113,Val = 21600,Sum = 71280}},Cost = {[1] = {Id = 1401002,Val = 9385},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--项羽魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1296,Sum = 4860},[2] = {Id = 112,Val = 720,Sum = 2700},[3] = {Id = 113,Val = 25920,Sum = 97200}},Cost = {[1] = {Id = 1401002,Val = 11760},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--项羽魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 756,Sum = 5616},[2] = {Id = 112,Val = 420,Sum = 3120},[3] = {Id = 113,Val = 15120,Sum = 112320}},Cost = {[1] = {Id = 1401002,Val = 16445},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--项羽魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1728,Sum = 7344},[2] = {Id = 112,Val = 960,Sum = 4080},[3] = {Id = 113,Val = 34560,Sum = 146880}},Cost = {[1] = {Id = 1401002,Val = 18800},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--项羽魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 243,Sum = 243},[2] = {Id = 112,Val = 135,Sum = 135},[3] = {Id = 113,Val = 4860,Sum = 4860}},Cost = {[1] = {Id = 1401002,Val = 5710},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--项羽魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 621},[2] = {Id = 112,Val = 210,Sum = 345},[3] = {Id = 113,Val = 7560,Sum = 12420}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--项羽魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 513,Sum = 1134},[2] = {Id = 112,Val = 285,Sum = 630},[3] = {Id = 113,Val = 10260,Sum = 22680}},Cost = {[1] = {Id = 1401002,Val = 7135},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--项羽魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 756,Sum = 1890},[2] = {Id = 112,Val = 420,Sum = 1050},[3] = {Id = 113,Val = 15120,Sum = 37800}},Cost = {[1] = {Id = 1401002,Val = 9130},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--项羽魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1013,Sum = 2903},[2] = {Id = 112,Val = 563,Sum = 1613},[3] = {Id = 113,Val = 20250,Sum = 58050}},Cost = {[1] = {Id = 1401002,Val = 9275},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--项羽魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1242,Sum = 4145},[2] = {Id = 112,Val = 690,Sum = 2303},[3] = {Id = 113,Val = 24840,Sum = 82890}},Cost = {[1] = {Id = 1401002,Val = 11525},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--项羽魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1620,Sum = 5765},[2] = {Id = 112,Val = 900,Sum = 3203},[3] = {Id = 113,Val = 32400,Sum = 115290}},Cost = {[1] = {Id = 1401002,Val = 16170},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--项羽魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1755,Sum = 7520},[2] = {Id = 112,Val = 975,Sum = 4178},[3] = {Id = 113,Val = 35100,Sum = 150390}},Cost = {[1] = {Id = 1401002,Val = 18465},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--项羽魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2025,Sum = 9545},[2] = {Id = 112,Val = 1125,Sum = 5303},[3] = {Id = 113,Val = 40500,Sum = 190890}},Cost = {[1] = {Id = 1401002,Val = 23090},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--项羽魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 270,Sum = 270},[2] = {Id = 112,Val = 150,Sum = 150},[3] = {Id = 113,Val = 5400,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 4865},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--项羽魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 702},[2] = {Id = 112,Val = 240,Sum = 390},[3] = {Id = 113,Val = 8640,Sum = 14040}},Cost = {[1] = {Id = 1401002,Val = 5835},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--项羽魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 581,Sum = 1283},[2] = {Id = 112,Val = 323,Sum = 713},[3] = {Id = 113,Val = 11610,Sum = 25650}},Cost = {[1] = {Id = 1401002,Val = 8105},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--项羽魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 2147},[2] = {Id = 112,Val = 480,Sum = 1193},[3] = {Id = 113,Val = 17280,Sum = 42930}},Cost = {[1] = {Id = 1401002,Val = 9340},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--项羽魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1148,Sum = 3295},[2] = {Id = 112,Val = 638,Sum = 1831},[3] = {Id = 113,Val = 22950,Sum = 65880}},Cost = {[1] = {Id = 1401002,Val = 11855},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--项羽魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1431,Sum = 4726},[2] = {Id = 112,Val = 795,Sum = 2626},[3] = {Id = 113,Val = 28620,Sum = 94500}},Cost = {[1] = {Id = 1401002,Val = 14145},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--项羽魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1715,Sum = 6441},[2] = {Id = 112,Val = 953,Sum = 3579},[3] = {Id = 113,Val = 34290,Sum = 128790}},Cost = {[1] = {Id = 1401002,Val = 19690},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--项羽魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1998,Sum = 8439},[2] = {Id = 112,Val = 1110,Sum = 4689},[3] = {Id = 113,Val = 39960,Sum = 168750}},Cost = {[1] = {Id = 1401002,Val = 23605},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--项羽魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2295,Sum = 10734},[2] = {Id = 112,Val = 1275,Sum = 5964},[3] = {Id = 113,Val = 45900,Sum = 214650}},Cost = {[1] = {Id = 1401002,Val = 23615},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--项羽魂珠-8 等级-9
				}
			}--项羽专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--项羽专属武器解封-0
			[1] = {PSkill = 130300611,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 36500},[2] = {Id = 1502006,Val = 80}}},--项羽专属武器解封-1
			[2] = {PSkill = 130300611,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 75500},[2] = {Id = 1502006,Val = 80}}},--项羽专属武器解封-2
			[3] = {PSkill = 130300611,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 168500},[2] = {Id = 1502006,Val = 120}}},--项羽专属武器解封-3
			[4] = {PSkill = 130300611,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 295500},[2] = {Id = 1502006,Val = 120}}},--项羽专属武器解封-4
			[5] = {PSkill = 130300611,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 732500},[2] = {Id = 1502006,Val = 160}}}--项羽专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 48,Sum = 48},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 880,Sum = 880}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--天使缇娜魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 120},[2] = {Id = 112,Val = 33,Sum = 55},[3] = {Id = 113,Val = 1320,Sum = 2200}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--天使缇娜魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 216},[2] = {Id = 112,Val = 44,Sum = 99},[3] = {Id = 113,Val = 1760,Sum = 3960}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--天使缇娜魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 360},[2] = {Id = 112,Val = 66,Sum = 165},[3] = {Id = 113,Val = 2640,Sum = 6600}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--天使缇娜魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 552},[2] = {Id = 112,Val = 88,Sum = 253},[3] = {Id = 113,Val = 3520,Sum = 10120}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--天使缇娜魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 792},[2] = {Id = 112,Val = 110,Sum = 363},[3] = {Id = 113,Val = 4400,Sum = 14520}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--天使缇娜魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1080},[2] = {Id = 112,Val = 132,Sum = 495},[3] = {Id = 113,Val = 5280,Sum = 19800}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--天使缇娜魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1416},[2] = {Id = 112,Val = 154,Sum = 649},[3] = {Id = 113,Val = 6160,Sum = 25960}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--天使缇娜魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1800},[2] = {Id = 112,Val = 176,Sum = 825},[3] = {Id = 113,Val = 7040,Sum = 33000}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--天使缇娜魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 60},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 1100,Sum = 1100}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--天使缇娜魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 156},[2] = {Id = 112,Val = 44,Sum = 72},[3] = {Id = 113,Val = 1760,Sum = 2860}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--天使缇娜魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 276},[2] = {Id = 112,Val = 55,Sum = 127},[3] = {Id = 113,Val = 2200,Sum = 5060}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--天使缇娜魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 468},[2] = {Id = 112,Val = 88,Sum = 215},[3] = {Id = 113,Val = 3520,Sum = 8580}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--天使缇娜魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 732},[2] = {Id = 112,Val = 121,Sum = 336},[3] = {Id = 113,Val = 4840,Sum = 13420}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--天使缇娜魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1068},[2] = {Id = 112,Val = 154,Sum = 490},[3] = {Id = 113,Val = 6160,Sum = 19580}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--天使缇娜魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1452},[2] = {Id = 112,Val = 176,Sum = 666},[3] = {Id = 113,Val = 7040,Sum = 26620}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--天使缇娜魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1908},[2] = {Id = 112,Val = 209,Sum = 875},[3] = {Id = 113,Val = 8360,Sum = 34980}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--天使缇娜魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 2448},[2] = {Id = 112,Val = 248,Sum = 1123},[3] = {Id = 113,Val = 9900,Sum = 44880}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--天使缇娜魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 96},[2] = {Id = 112,Val = 44,Sum = 44},[3] = {Id = 113,Val = 1760,Sum = 1760}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--天使缇娜魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 240},[2] = {Id = 112,Val = 66,Sum = 110},[3] = {Id = 113,Val = 2640,Sum = 4400}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--天使缇娜魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 432},[2] = {Id = 112,Val = 88,Sum = 198},[3] = {Id = 113,Val = 3520,Sum = 7920}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--天使缇娜魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 720},[2] = {Id = 112,Val = 132,Sum = 330},[3] = {Id = 113,Val = 5280,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--天使缇娜魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1104},[2] = {Id = 112,Val = 176,Sum = 506},[3] = {Id = 113,Val = 7040,Sum = 20240}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--天使缇娜魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1584},[2] = {Id = 112,Val = 220,Sum = 726},[3] = {Id = 113,Val = 8800,Sum = 29040}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--天使缇娜魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 2160},[2] = {Id = 112,Val = 264,Sum = 990},[3] = {Id = 113,Val = 10560,Sum = 39600}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--天使缇娜魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 2832},[2] = {Id = 112,Val = 308,Sum = 1298},[3] = {Id = 113,Val = 12320,Sum = 51920}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--天使缇娜魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 3600},[2] = {Id = 112,Val = 352,Sum = 1650},[3] = {Id = 113,Val = 14080,Sum = 66000}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--天使缇娜魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 120},[2] = {Id = 112,Val = 55,Sum = 55},[3] = {Id = 113,Val = 2200,Sum = 2200}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--天使缇娜魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 312},[2] = {Id = 112,Val = 88,Sum = 143},[3] = {Id = 113,Val = 3520,Sum = 5720}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--天使缇娜魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 576},[2] = {Id = 112,Val = 121,Sum = 264},[3] = {Id = 113,Val = 4840,Sum = 10560}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--天使缇娜魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 960},[2] = {Id = 112,Val = 176,Sum = 440},[3] = {Id = 113,Val = 7040,Sum = 17600}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--天使缇娜魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 1464},[2] = {Id = 112,Val = 231,Sum = 671},[3] = {Id = 113,Val = 9240,Sum = 26840}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--天使缇娜魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 660,Sum = 2124},[2] = {Id = 112,Val = 303,Sum = 974},[3] = {Id = 113,Val = 12100,Sum = 38940}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--天使缇娜魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2904},[2] = {Id = 112,Val = 358,Sum = 1332},[3] = {Id = 113,Val = 14300,Sum = 53240}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--天使缇娜魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 3804},[2] = {Id = 112,Val = 413,Sum = 1745},[3] = {Id = 113,Val = 16500,Sum = 69740}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--天使缇娜魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 4824},[2] = {Id = 112,Val = 468,Sum = 2213},[3] = {Id = 113,Val = 18700,Sum = 88440}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--天使缇娜魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 168},[2] = {Id = 112,Val = 77,Sum = 77},[3] = {Id = 113,Val = 3080,Sum = 3080}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--天使缇娜魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 408},[2] = {Id = 112,Val = 110,Sum = 187},[3] = {Id = 113,Val = 4400,Sum = 7480}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--天使缇娜魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 720},[2] = {Id = 112,Val = 143,Sum = 330},[3] = {Id = 113,Val = 5720,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--天使缇娜魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1200},[2] = {Id = 112,Val = 220,Sum = 550},[3] = {Id = 113,Val = 8800,Sum = 22000}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--天使缇娜魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 624,Sum = 1824},[2] = {Id = 112,Val = 286,Sum = 836},[3] = {Id = 113,Val = 11440,Sum = 33440}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--天使缇娜魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2604},[2] = {Id = 112,Val = 358,Sum = 1194},[3] = {Id = 113,Val = 14300,Sum = 47740}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--天使缇娜魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3564},[2] = {Id = 112,Val = 440,Sum = 1634},[3] = {Id = 113,Val = 17600,Sum = 65340}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--天使缇娜魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1140,Sum = 4704},[2] = {Id = 112,Val = 523,Sum = 2157},[3] = {Id = 113,Val = 20900,Sum = 86240}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--天使缇娜魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 6024},[2] = {Id = 112,Val = 605,Sum = 2762},[3] = {Id = 113,Val = 24200,Sum = 110440}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--天使缇娜魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 192},[2] = {Id = 112,Val = 88,Sum = 88},[3] = {Id = 113,Val = 3520,Sum = 3520}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--天使缇娜魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 480},[2] = {Id = 112,Val = 132,Sum = 220},[3] = {Id = 113,Val = 5280,Sum = 8800}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--天使缇娜魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 864},[2] = {Id = 112,Val = 176,Sum = 396},[3] = {Id = 113,Val = 7040,Sum = 15840}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--天使缇娜魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1440},[2] = {Id = 112,Val = 264,Sum = 660},[3] = {Id = 113,Val = 10560,Sum = 26400}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--天使缇娜魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 2208},[2] = {Id = 112,Val = 352,Sum = 1012},[3] = {Id = 113,Val = 14080,Sum = 40480}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--天使缇娜魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3168},[2] = {Id = 112,Val = 440,Sum = 1452},[3] = {Id = 113,Val = 17600,Sum = 58080}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--天使缇娜魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1152,Sum = 4320},[2] = {Id = 112,Val = 528,Sum = 1980},[3] = {Id = 113,Val = 21120,Sum = 79200}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--天使缇娜魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 4992},[2] = {Id = 112,Val = 308,Sum = 2288},[3] = {Id = 113,Val = 12320,Sum = 91520}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--天使缇娜魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1536,Sum = 6528},[2] = {Id = 112,Val = 704,Sum = 2992},[3] = {Id = 113,Val = 28160,Sum = 119680}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--天使缇娜魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 216},[2] = {Id = 112,Val = 99,Sum = 99},[3] = {Id = 113,Val = 3960,Sum = 3960}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--天使缇娜魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 552},[2] = {Id = 112,Val = 154,Sum = 253},[3] = {Id = 113,Val = 6160,Sum = 10120}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--天使缇娜魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1008},[2] = {Id = 112,Val = 209,Sum = 462},[3] = {Id = 113,Val = 8360,Sum = 18480}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--天使缇娜魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 1680},[2] = {Id = 112,Val = 308,Sum = 770},[3] = {Id = 113,Val = 12320,Sum = 30800}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--天使缇娜魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 2580},[2] = {Id = 112,Val = 413,Sum = 1183},[3] = {Id = 113,Val = 16500,Sum = 47300}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--天使缇娜魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1104,Sum = 3684},[2] = {Id = 112,Val = 506,Sum = 1689},[3] = {Id = 113,Val = 20240,Sum = 67540}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--天使缇娜魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1440,Sum = 5124},[2] = {Id = 112,Val = 660,Sum = 2349},[3] = {Id = 113,Val = 26400,Sum = 93940}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--天使缇娜魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1560,Sum = 6684},[2] = {Id = 112,Val = 715,Sum = 3064},[3] = {Id = 113,Val = 28600,Sum = 122540}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--天使缇娜魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1800,Sum = 8484},[2] = {Id = 112,Val = 825,Sum = 3889},[3] = {Id = 113,Val = 33000,Sum = 155540}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--天使缇娜魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 240},[2] = {Id = 112,Val = 110,Sum = 110},[3] = {Id = 113,Val = 4400,Sum = 4400}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--天使缇娜魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 624},[2] = {Id = 112,Val = 176,Sum = 286},[3] = {Id = 113,Val = 7040,Sum = 11440}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--天使缇娜魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 516,Sum = 1140},[2] = {Id = 112,Val = 237,Sum = 523},[3] = {Id = 113,Val = 9460,Sum = 20900}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--天使缇娜魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 1908},[2] = {Id = 112,Val = 352,Sum = 875},[3] = {Id = 113,Val = 14080,Sum = 34980}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--天使缇娜魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 2928},[2] = {Id = 112,Val = 468,Sum = 1343},[3] = {Id = 113,Val = 18700,Sum = 53680}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--天使缇娜魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1272,Sum = 4200},[2] = {Id = 112,Val = 583,Sum = 1926},[3] = {Id = 113,Val = 23320,Sum = 77000}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--天使缇娜魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1524,Sum = 5724},[2] = {Id = 112,Val = 699,Sum = 2625},[3] = {Id = 113,Val = 27940,Sum = 104940}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--天使缇娜魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1776,Sum = 7500},[2] = {Id = 112,Val = 814,Sum = 3439},[3] = {Id = 113,Val = 32560,Sum = 137500}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--天使缇娜魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2040,Sum = 9540},[2] = {Id = 112,Val = 935,Sum = 4374},[3] = {Id = 113,Val = 37400,Sum = 174900}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--天使缇娜魂珠-8 等级-9
				}
			}--天使缇娜专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--天使缇娜专属武器解封-0
			[1] = {PSkill = 130300711,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 25500},[2] = {Id = 1502007,Val = 80}}},--天使缇娜专属武器解封-1
			[2] = {PSkill = 130300711,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 52500},[2] = {Id = 1502007,Val = 80}}},--天使缇娜专属武器解封-2
			[3] = {PSkill = 130300711,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 118000},[2] = {Id = 1502007,Val = 120}}},--天使缇娜专属武器解封-3
			[4] = {PSkill = 130300711,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 207000},[2] = {Id = 1502007,Val = 120}}},--天使缇娜专属武器解封-4
			[5] = {PSkill = 130300711,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 512500},[2] = {Id = 1502007,Val = 160}}}--天使缇娜专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 48,Sum = 48},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 1200,Sum = 1200}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯渊魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 120},[2] = {Id = 112,Val = 30,Sum = 50},[3] = {Id = 113,Val = 1800,Sum = 3000}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯渊魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 216},[2] = {Id = 112,Val = 40,Sum = 90},[3] = {Id = 113,Val = 2400,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯渊魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 360},[2] = {Id = 112,Val = 60,Sum = 150},[3] = {Id = 113,Val = 3600,Sum = 9000}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯渊魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 552},[2] = {Id = 112,Val = 80,Sum = 230},[3] = {Id = 113,Val = 4800,Sum = 13800}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--夏侯渊魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 792},[2] = {Id = 112,Val = 100,Sum = 330},[3] = {Id = 113,Val = 6000,Sum = 19800}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--夏侯渊魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1080},[2] = {Id = 112,Val = 120,Sum = 450},[3] = {Id = 113,Val = 7200,Sum = 27000}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--夏侯渊魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1416},[2] = {Id = 112,Val = 140,Sum = 590},[3] = {Id = 113,Val = 8400,Sum = 35400}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--夏侯渊魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1800},[2] = {Id = 112,Val = 160,Sum = 750},[3] = {Id = 113,Val = 9600,Sum = 45000}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--夏侯渊魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 60},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 1500,Sum = 1500}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--夏侯渊魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 156},[2] = {Id = 112,Val = 40,Sum = 65},[3] = {Id = 113,Val = 2400,Sum = 3900}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯渊魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 276},[2] = {Id = 112,Val = 50,Sum = 115},[3] = {Id = 113,Val = 3000,Sum = 6900}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯渊魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 468},[2] = {Id = 112,Val = 80,Sum = 195},[3] = {Id = 113,Val = 4800,Sum = 11700}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯渊魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 732},[2] = {Id = 112,Val = 110,Sum = 305},[3] = {Id = 113,Val = 6600,Sum = 18300}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--夏侯渊魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1068},[2] = {Id = 112,Val = 140,Sum = 445},[3] = {Id = 113,Val = 8400,Sum = 26700}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯渊魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1452},[2] = {Id = 112,Val = 160,Sum = 605},[3] = {Id = 113,Val = 9600,Sum = 36300}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯渊魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1908},[2] = {Id = 112,Val = 190,Sum = 795},[3] = {Id = 113,Val = 11400,Sum = 47700}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--夏侯渊魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 2448},[2] = {Id = 112,Val = 225,Sum = 1020},[3] = {Id = 113,Val = 13500,Sum = 61200}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--夏侯渊魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 96},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 2400,Sum = 2400}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--夏侯渊魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 240},[2] = {Id = 112,Val = 60,Sum = 100},[3] = {Id = 113,Val = 3600,Sum = 6000}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯渊魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 432},[2] = {Id = 112,Val = 80,Sum = 180},[3] = {Id = 113,Val = 4800,Sum = 10800}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯渊魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 720},[2] = {Id = 112,Val = 120,Sum = 300},[3] = {Id = 113,Val = 7200,Sum = 18000}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯渊魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1104},[2] = {Id = 112,Val = 160,Sum = 460},[3] = {Id = 113,Val = 9600,Sum = 27600}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--夏侯渊魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1584},[2] = {Id = 112,Val = 200,Sum = 660},[3] = {Id = 113,Val = 12000,Sum = 39600}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--夏侯渊魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 2160},[2] = {Id = 112,Val = 240,Sum = 900},[3] = {Id = 113,Val = 14400,Sum = 54000}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--夏侯渊魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 2832},[2] = {Id = 112,Val = 280,Sum = 1180},[3] = {Id = 113,Val = 16800,Sum = 70800}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--夏侯渊魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 3600},[2] = {Id = 112,Val = 320,Sum = 1500},[3] = {Id = 113,Val = 19200,Sum = 90000}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--夏侯渊魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 120},[2] = {Id = 112,Val = 50,Sum = 50},[3] = {Id = 113,Val = 3000,Sum = 3000}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯渊魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 312},[2] = {Id = 112,Val = 80,Sum = 130},[3] = {Id = 113,Val = 4800,Sum = 7800}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--夏侯渊魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 576},[2] = {Id = 112,Val = 110,Sum = 240},[3] = {Id = 113,Val = 6600,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--夏侯渊魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 960},[2] = {Id = 112,Val = 160,Sum = 400},[3] = {Id = 113,Val = 9600,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--夏侯渊魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 1464},[2] = {Id = 112,Val = 210,Sum = 610},[3] = {Id = 113,Val = 12600,Sum = 36600}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--夏侯渊魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 660,Sum = 2124},[2] = {Id = 112,Val = 275,Sum = 885},[3] = {Id = 113,Val = 16500,Sum = 53100}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--夏侯渊魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2904},[2] = {Id = 112,Val = 325,Sum = 1210},[3] = {Id = 113,Val = 19500,Sum = 72600}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--夏侯渊魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 3804},[2] = {Id = 112,Val = 375,Sum = 1585},[3] = {Id = 113,Val = 22500,Sum = 95100}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--夏侯渊魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 4824},[2] = {Id = 112,Val = 425,Sum = 2010},[3] = {Id = 113,Val = 25500,Sum = 120600}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--夏侯渊魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 168},[2] = {Id = 112,Val = 70,Sum = 70},[3] = {Id = 113,Val = 4200,Sum = 4200}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯渊魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 408},[2] = {Id = 112,Val = 100,Sum = 170},[3] = {Id = 113,Val = 6000,Sum = 10200}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--夏侯渊魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 720},[2] = {Id = 112,Val = 130,Sum = 300},[3] = {Id = 113,Val = 7800,Sum = 18000}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--夏侯渊魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1200},[2] = {Id = 112,Val = 200,Sum = 500},[3] = {Id = 113,Val = 12000,Sum = 30000}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--夏侯渊魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 624,Sum = 1824},[2] = {Id = 112,Val = 260,Sum = 760},[3] = {Id = 113,Val = 15600,Sum = 45600}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--夏侯渊魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2604},[2] = {Id = 112,Val = 325,Sum = 1085},[3] = {Id = 113,Val = 19500,Sum = 65100}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--夏侯渊魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3564},[2] = {Id = 112,Val = 400,Sum = 1485},[3] = {Id = 113,Val = 24000,Sum = 89100}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--夏侯渊魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1140,Sum = 4704},[2] = {Id = 112,Val = 475,Sum = 1960},[3] = {Id = 113,Val = 28500,Sum = 117600}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--夏侯渊魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 6024},[2] = {Id = 112,Val = 550,Sum = 2510},[3] = {Id = 113,Val = 33000,Sum = 150600}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--夏侯渊魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 192},[2] = {Id = 112,Val = 80,Sum = 80},[3] = {Id = 113,Val = 4800,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯渊魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 480},[2] = {Id = 112,Val = 120,Sum = 200},[3] = {Id = 113,Val = 7200,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯渊魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 864},[2] = {Id = 112,Val = 160,Sum = 360},[3] = {Id = 113,Val = 9600,Sum = 21600}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--夏侯渊魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1440},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 14400,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯渊魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 2208},[2] = {Id = 112,Val = 320,Sum = 920},[3] = {Id = 113,Val = 19200,Sum = 55200}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--夏侯渊魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3168},[2] = {Id = 112,Val = 400,Sum = 1320},[3] = {Id = 113,Val = 24000,Sum = 79200}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--夏侯渊魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1152,Sum = 4320},[2] = {Id = 112,Val = 480,Sum = 1800},[3] = {Id = 113,Val = 28800,Sum = 108000}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--夏侯渊魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 4992},[2] = {Id = 112,Val = 280,Sum = 2080},[3] = {Id = 113,Val = 16800,Sum = 124800}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--夏侯渊魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1536,Sum = 6528},[2] = {Id = 112,Val = 640,Sum = 2720},[3] = {Id = 113,Val = 38400,Sum = 163200}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--夏侯渊魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 216},[2] = {Id = 112,Val = 90,Sum = 90},[3] = {Id = 113,Val = 5400,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--夏侯渊魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 552},[2] = {Id = 112,Val = 140,Sum = 230},[3] = {Id = 113,Val = 8400,Sum = 13800}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯渊魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1008},[2] = {Id = 112,Val = 190,Sum = 420},[3] = {Id = 113,Val = 11400,Sum = 25200}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯渊魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 1680},[2] = {Id = 112,Val = 280,Sum = 700},[3] = {Id = 113,Val = 16800,Sum = 42000}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯渊魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 2580},[2] = {Id = 112,Val = 375,Sum = 1075},[3] = {Id = 113,Val = 22500,Sum = 64500}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--夏侯渊魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1104,Sum = 3684},[2] = {Id = 112,Val = 460,Sum = 1535},[3] = {Id = 113,Val = 27600,Sum = 92100}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--夏侯渊魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1440,Sum = 5124},[2] = {Id = 112,Val = 600,Sum = 2135},[3] = {Id = 113,Val = 36000,Sum = 128100}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--夏侯渊魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1560,Sum = 6684},[2] = {Id = 112,Val = 650,Sum = 2785},[3] = {Id = 113,Val = 39000,Sum = 167100}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--夏侯渊魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1800,Sum = 8484},[2] = {Id = 112,Val = 750,Sum = 3535},[3] = {Id = 113,Val = 45000,Sum = 212100}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--夏侯渊魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 240},[2] = {Id = 112,Val = 100,Sum = 100},[3] = {Id = 113,Val = 6000,Sum = 6000}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--夏侯渊魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 624},[2] = {Id = 112,Val = 160,Sum = 260},[3] = {Id = 113,Val = 9600,Sum = 15600}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--夏侯渊魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 516,Sum = 1140},[2] = {Id = 112,Val = 215,Sum = 475},[3] = {Id = 113,Val = 12900,Sum = 28500}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--夏侯渊魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 1908},[2] = {Id = 112,Val = 320,Sum = 795},[3] = {Id = 113,Val = 19200,Sum = 47700}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--夏侯渊魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 2928},[2] = {Id = 112,Val = 425,Sum = 1220},[3] = {Id = 113,Val = 25500,Sum = 73200}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--夏侯渊魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1272,Sum = 4200},[2] = {Id = 112,Val = 530,Sum = 1750},[3] = {Id = 113,Val = 31800,Sum = 105000}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--夏侯渊魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1524,Sum = 5724},[2] = {Id = 112,Val = 635,Sum = 2385},[3] = {Id = 113,Val = 38100,Sum = 143100}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--夏侯渊魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1776,Sum = 7500},[2] = {Id = 112,Val = 740,Sum = 3125},[3] = {Id = 113,Val = 44400,Sum = 187500}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--夏侯渊魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2040,Sum = 9540},[2] = {Id = 112,Val = 850,Sum = 3975},[3] = {Id = 113,Val = 51000,Sum = 238500}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--夏侯渊魂珠-8 等级-9
				}
			}--夏侯渊专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--夏侯渊专属武器解封-0
			[1] = {PSkill = 130300811,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 29000},[2] = {Id = 1502008,Val = 80}}},--夏侯渊专属武器解封-1
			[2] = {PSkill = 130300811,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 60500},[2] = {Id = 1502008,Val = 80}}},--夏侯渊专属武器解封-2
			[3] = {PSkill = 130300811,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 135000},[2] = {Id = 1502008,Val = 120}}},--夏侯渊专属武器解封-3
			[4] = {PSkill = 130300811,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 236500},[2] = {Id = 1502008,Val = 120}}},--夏侯渊专属武器解封-4
			[5] = {PSkill = 130300811,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 586000},[2] = {Id = 1502008,Val = 160}}}--夏侯渊专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 36,Sum = 36},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 960,Sum = 960}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--徐晃魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 54,Sum = 90},[2] = {Id = 112,Val = 30,Sum = 50},[3] = {Id = 113,Val = 1440,Sum = 2400}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--徐晃魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 162},[2] = {Id = 112,Val = 40,Sum = 90},[3] = {Id = 113,Val = 1920,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--徐晃魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 270},[2] = {Id = 112,Val = 60,Sum = 150},[3] = {Id = 113,Val = 2880,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--徐晃魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 414},[2] = {Id = 112,Val = 80,Sum = 230},[3] = {Id = 113,Val = 3840,Sum = 11040}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--徐晃魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 594},[2] = {Id = 112,Val = 100,Sum = 330},[3] = {Id = 113,Val = 4800,Sum = 15840}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--徐晃魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 810},[2] = {Id = 112,Val = 120,Sum = 450},[3] = {Id = 113,Val = 5760,Sum = 21600}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--徐晃魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 1062},[2] = {Id = 112,Val = 140,Sum = 590},[3] = {Id = 113,Val = 6720,Sum = 28320}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--徐晃魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1350},[2] = {Id = 112,Val = 160,Sum = 750},[3] = {Id = 113,Val = 7680,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--徐晃魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 45,Sum = 45},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 1200,Sum = 1200}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--徐晃魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 117},[2] = {Id = 112,Val = 40,Sum = 65},[3] = {Id = 113,Val = 1920,Sum = 3120}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--徐晃魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 207},[2] = {Id = 112,Val = 50,Sum = 115},[3] = {Id = 113,Val = 2400,Sum = 5520}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--徐晃魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 351},[2] = {Id = 112,Val = 80,Sum = 195},[3] = {Id = 113,Val = 3840,Sum = 9360}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--徐晃魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 549},[2] = {Id = 112,Val = 110,Sum = 305},[3] = {Id = 113,Val = 5280,Sum = 14640}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--徐晃魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 801},[2] = {Id = 112,Val = 140,Sum = 445},[3] = {Id = 113,Val = 6720,Sum = 21360}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--徐晃魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1089},[2] = {Id = 112,Val = 160,Sum = 605},[3] = {Id = 113,Val = 7680,Sum = 29040}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--徐晃魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 342,Sum = 1431},[2] = {Id = 112,Val = 190,Sum = 795},[3] = {Id = 113,Val = 9120,Sum = 38160}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--徐晃魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 405,Sum = 1836},[2] = {Id = 112,Val = 225,Sum = 1020},[3] = {Id = 113,Val = 10800,Sum = 48960}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--徐晃魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 72},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 1920,Sum = 1920}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--徐晃魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 180},[2] = {Id = 112,Val = 60,Sum = 100},[3] = {Id = 113,Val = 2880,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--徐晃魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 324},[2] = {Id = 112,Val = 80,Sum = 180},[3] = {Id = 113,Val = 3840,Sum = 8640}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--徐晃魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 540},[2] = {Id = 112,Val = 120,Sum = 300},[3] = {Id = 113,Val = 5760,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--徐晃魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 828},[2] = {Id = 112,Val = 160,Sum = 460},[3] = {Id = 113,Val = 7680,Sum = 22080}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--徐晃魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 360,Sum = 1188},[2] = {Id = 112,Val = 200,Sum = 660},[3] = {Id = 113,Val = 9600,Sum = 31680}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--徐晃魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1620},[2] = {Id = 112,Val = 240,Sum = 900},[3] = {Id = 113,Val = 11520,Sum = 43200}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--徐晃魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 2124},[2] = {Id = 112,Val = 280,Sum = 1180},[3] = {Id = 113,Val = 13440,Sum = 56640}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--徐晃魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 2700},[2] = {Id = 112,Val = 320,Sum = 1500},[3] = {Id = 113,Val = 15360,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--徐晃魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 90,Sum = 90},[2] = {Id = 112,Val = 50,Sum = 50},[3] = {Id = 113,Val = 2400,Sum = 2400}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--徐晃魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 234},[2] = {Id = 112,Val = 80,Sum = 130},[3] = {Id = 113,Val = 3840,Sum = 6240}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--徐晃魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 432},[2] = {Id = 112,Val = 110,Sum = 240},[3] = {Id = 113,Val = 5280,Sum = 11520}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--徐晃魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 720},[2] = {Id = 112,Val = 160,Sum = 400},[3] = {Id = 113,Val = 7680,Sum = 19200}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--徐晃魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1098},[2] = {Id = 112,Val = 210,Sum = 610},[3] = {Id = 113,Val = 10080,Sum = 29280}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--徐晃魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 495,Sum = 1593},[2] = {Id = 112,Val = 275,Sum = 885},[3] = {Id = 113,Val = 13200,Sum = 42480}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--徐晃魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 585,Sum = 2178},[2] = {Id = 112,Val = 325,Sum = 1210},[3] = {Id = 113,Val = 15600,Sum = 58080}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--徐晃魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 675,Sum = 2853},[2] = {Id = 112,Val = 375,Sum = 1585},[3] = {Id = 113,Val = 18000,Sum = 76080}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--徐晃魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 765,Sum = 3618},[2] = {Id = 112,Val = 425,Sum = 2010},[3] = {Id = 113,Val = 20400,Sum = 96480}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--徐晃魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 126,Sum = 126},[2] = {Id = 112,Val = 70,Sum = 70},[3] = {Id = 113,Val = 3360,Sum = 3360}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--徐晃魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 306},[2] = {Id = 112,Val = 100,Sum = 170},[3] = {Id = 113,Val = 4800,Sum = 8160}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--徐晃魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 234,Sum = 540},[2] = {Id = 112,Val = 130,Sum = 300},[3] = {Id = 113,Val = 6240,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--徐晃魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 360,Sum = 900},[2] = {Id = 112,Val = 200,Sum = 500},[3] = {Id = 113,Val = 9600,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--徐晃魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 468,Sum = 1368},[2] = {Id = 112,Val = 260,Sum = 760},[3] = {Id = 113,Val = 12480,Sum = 36480}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--徐晃魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 585,Sum = 1953},[2] = {Id = 112,Val = 325,Sum = 1085},[3] = {Id = 113,Val = 15600,Sum = 52080}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--徐晃魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 720,Sum = 2673},[2] = {Id = 112,Val = 400,Sum = 1485},[3] = {Id = 113,Val = 19200,Sum = 71280}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--徐晃魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 855,Sum = 3528},[2] = {Id = 112,Val = 475,Sum = 1960},[3] = {Id = 113,Val = 22800,Sum = 94080}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--徐晃魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 990,Sum = 4518},[2] = {Id = 112,Val = 550,Sum = 2510},[3] = {Id = 113,Val = 26400,Sum = 120480}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--徐晃魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 144},[2] = {Id = 112,Val = 80,Sum = 80},[3] = {Id = 113,Val = 3840,Sum = 3840}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--徐晃魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 360},[2] = {Id = 112,Val = 120,Sum = 200},[3] = {Id = 113,Val = 5760,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--徐晃魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 648},[2] = {Id = 112,Val = 160,Sum = 360},[3] = {Id = 113,Val = 7680,Sum = 17280}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--徐晃魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1080},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 11520,Sum = 28800}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--徐晃魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1656},[2] = {Id = 112,Val = 320,Sum = 920},[3] = {Id = 113,Val = 15360,Sum = 44160}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--徐晃魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 720,Sum = 2376},[2] = {Id = 112,Val = 400,Sum = 1320},[3] = {Id = 113,Val = 19200,Sum = 63360}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--徐晃魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 3240},[2] = {Id = 112,Val = 480,Sum = 1800},[3] = {Id = 113,Val = 23040,Sum = 86400}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--徐晃魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 3744},[2] = {Id = 112,Val = 280,Sum = 2080},[3] = {Id = 113,Val = 13440,Sum = 99840}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--徐晃魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1152,Sum = 4896},[2] = {Id = 112,Val = 640,Sum = 2720},[3] = {Id = 113,Val = 30720,Sum = 130560}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--徐晃魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 162},[2] = {Id = 112,Val = 90,Sum = 90},[3] = {Id = 113,Val = 4320,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--徐晃魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 414},[2] = {Id = 112,Val = 140,Sum = 230},[3] = {Id = 113,Val = 6720,Sum = 11040}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--徐晃魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 342,Sum = 756},[2] = {Id = 112,Val = 190,Sum = 420},[3] = {Id = 113,Val = 9120,Sum = 20160}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--徐晃魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 1260},[2] = {Id = 112,Val = 280,Sum = 700},[3] = {Id = 113,Val = 13440,Sum = 33600}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--徐晃魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 675,Sum = 1935},[2] = {Id = 112,Val = 375,Sum = 1075},[3] = {Id = 113,Val = 18000,Sum = 51600}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--徐晃魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 828,Sum = 2763},[2] = {Id = 112,Val = 460,Sum = 1535},[3] = {Id = 113,Val = 22080,Sum = 73680}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--徐晃魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1080,Sum = 3843},[2] = {Id = 112,Val = 600,Sum = 2135},[3] = {Id = 113,Val = 28800,Sum = 102480}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--徐晃魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1170,Sum = 5013},[2] = {Id = 112,Val = 650,Sum = 2785},[3] = {Id = 113,Val = 31200,Sum = 133680}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--徐晃魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1350,Sum = 6363},[2] = {Id = 112,Val = 750,Sum = 3535},[3] = {Id = 113,Val = 36000,Sum = 169680}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--徐晃魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 180},[2] = {Id = 112,Val = 100,Sum = 100},[3] = {Id = 113,Val = 4800,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--徐晃魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 468},[2] = {Id = 112,Val = 160,Sum = 260},[3] = {Id = 113,Val = 7680,Sum = 12480}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--徐晃魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 387,Sum = 855},[2] = {Id = 112,Val = 215,Sum = 475},[3] = {Id = 113,Val = 10320,Sum = 22800}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--徐晃魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1431},[2] = {Id = 112,Val = 320,Sum = 795},[3] = {Id = 113,Val = 15360,Sum = 38160}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--徐晃魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 765,Sum = 2196},[2] = {Id = 112,Val = 425,Sum = 1220},[3] = {Id = 113,Val = 20400,Sum = 58560}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--徐晃魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 954,Sum = 3150},[2] = {Id = 112,Val = 530,Sum = 1750},[3] = {Id = 113,Val = 25440,Sum = 84000}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--徐晃魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1143,Sum = 4293},[2] = {Id = 112,Val = 635,Sum = 2385},[3] = {Id = 113,Val = 30480,Sum = 114480}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--徐晃魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1332,Sum = 5625},[2] = {Id = 112,Val = 740,Sum = 3125},[3] = {Id = 113,Val = 35520,Sum = 150000}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--徐晃魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1530,Sum = 7155},[2] = {Id = 112,Val = 850,Sum = 3975},[3] = {Id = 113,Val = 40800,Sum = 190800}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--徐晃魂珠-8 等级-9
				}
			}--徐晃专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--徐晃专属武器解封-0
			[1] = {PSkill = 130300911,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 22000},[2] = {Id = 1502009,Val = 40}}},--徐晃专属武器解封-1
			[2] = {PSkill = 130300911,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 45000},[2] = {Id = 1502009,Val = 40}}},--徐晃专属武器解封-2
			[3] = {PSkill = 130300911,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 101000},[2] = {Id = 1502009,Val = 60}}},--徐晃专属武器解封-3
			[4] = {PSkill = 130300911,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 177500},[2] = {Id = 1502009,Val = 60}}},--徐晃专属武器解封-4
			[5] = {PSkill = 130300911,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 439500},[2] = {Id = 1502009,Val = 80}}}--徐晃专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 54,Sum = 54},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 800,Sum = 800}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张郃魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 81,Sum = 135},[2] = {Id = 112,Val = 33,Sum = 55},[3] = {Id = 113,Val = 1200,Sum = 2000}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张郃魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 243},[2] = {Id = 112,Val = 44,Sum = 99},[3] = {Id = 113,Val = 1600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张郃魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 405},[2] = {Id = 112,Val = 66,Sum = 165},[3] = {Id = 113,Val = 2400,Sum = 6000}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张郃魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 621},[2] = {Id = 112,Val = 88,Sum = 253},[3] = {Id = 113,Val = 3200,Sum = 9200}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--张郃魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 270,Sum = 891},[2] = {Id = 112,Val = 110,Sum = 363},[3] = {Id = 113,Val = 4000,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--张郃魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 324,Sum = 1215},[2] = {Id = 112,Val = 132,Sum = 495},[3] = {Id = 113,Val = 4800,Sum = 18000}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--张郃魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1593},[2] = {Id = 112,Val = 154,Sum = 649},[3] = {Id = 113,Val = 5600,Sum = 23600}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--张郃魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 2025},[2] = {Id = 112,Val = 176,Sum = 825},[3] = {Id = 113,Val = 6400,Sum = 30000}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--张郃魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 68},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 1000,Sum = 1000}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--张郃魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 176},[2] = {Id = 112,Val = 44,Sum = 72},[3] = {Id = 113,Val = 1600,Sum = 2600}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张郃魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 135,Sum = 311},[2] = {Id = 112,Val = 55,Sum = 127},[3] = {Id = 113,Val = 2000,Sum = 4600}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张郃魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 527},[2] = {Id = 112,Val = 88,Sum = 215},[3] = {Id = 113,Val = 3200,Sum = 7800}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张郃魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 297,Sum = 824},[2] = {Id = 112,Val = 121,Sum = 336},[3] = {Id = 113,Val = 4400,Sum = 12200}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--张郃魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1202},[2] = {Id = 112,Val = 154,Sum = 490},[3] = {Id = 113,Val = 5600,Sum = 17800}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张郃魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1634},[2] = {Id = 112,Val = 176,Sum = 666},[3] = {Id = 113,Val = 6400,Sum = 24200}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张郃魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 513,Sum = 2147},[2] = {Id = 112,Val = 209,Sum = 875},[3] = {Id = 113,Val = 7600,Sum = 31800}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--张郃魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 608,Sum = 2755},[2] = {Id = 112,Val = 248,Sum = 1123},[3] = {Id = 113,Val = 9000,Sum = 40800}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--张郃魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 108},[2] = {Id = 112,Val = 44,Sum = 44},[3] = {Id = 113,Val = 1600,Sum = 1600}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--张郃魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 270},[2] = {Id = 112,Val = 66,Sum = 110},[3] = {Id = 113,Val = 2400,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张郃魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 486},[2] = {Id = 112,Val = 88,Sum = 198},[3] = {Id = 113,Val = 3200,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张郃魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 324,Sum = 810},[2] = {Id = 112,Val = 132,Sum = 330},[3] = {Id = 113,Val = 4800,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张郃魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1242},[2] = {Id = 112,Val = 176,Sum = 506},[3] = {Id = 113,Val = 6400,Sum = 18400}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--张郃魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 1782},[2] = {Id = 112,Val = 220,Sum = 726},[3] = {Id = 113,Val = 8000,Sum = 26400}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--张郃魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 648,Sum = 2430},[2] = {Id = 112,Val = 264,Sum = 990},[3] = {Id = 113,Val = 9600,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--张郃魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 756,Sum = 3186},[2] = {Id = 112,Val = 308,Sum = 1298},[3] = {Id = 113,Val = 11200,Sum = 47200}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--张郃魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 4050},[2] = {Id = 112,Val = 352,Sum = 1650},[3] = {Id = 113,Val = 12800,Sum = 60000}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--张郃魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 135,Sum = 135},[2] = {Id = 112,Val = 55,Sum = 55},[3] = {Id = 113,Val = 2000,Sum = 2000}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张郃魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 351},[2] = {Id = 112,Val = 88,Sum = 143},[3] = {Id = 113,Val = 3200,Sum = 5200}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--张郃魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 297,Sum = 648},[2] = {Id = 112,Val = 121,Sum = 264},[3] = {Id = 113,Val = 4400,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--张郃魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1080},[2] = {Id = 112,Val = 176,Sum = 440},[3] = {Id = 113,Val = 6400,Sum = 16000}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--张郃魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 567,Sum = 1647},[2] = {Id = 112,Val = 231,Sum = 671},[3] = {Id = 113,Val = 8400,Sum = 24400}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--张郃魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 743,Sum = 2390},[2] = {Id = 112,Val = 303,Sum = 974},[3] = {Id = 113,Val = 11000,Sum = 35400}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--张郃魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 878,Sum = 3268},[2] = {Id = 112,Val = 358,Sum = 1332},[3] = {Id = 113,Val = 13000,Sum = 48400}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--张郃魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1013,Sum = 4281},[2] = {Id = 112,Val = 413,Sum = 1745},[3] = {Id = 113,Val = 15000,Sum = 63400}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--张郃魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1148,Sum = 5429},[2] = {Id = 112,Val = 468,Sum = 2213},[3] = {Id = 113,Val = 17000,Sum = 80400}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--张郃魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 189},[2] = {Id = 112,Val = 77,Sum = 77},[3] = {Id = 113,Val = 2800,Sum = 2800}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张郃魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 270,Sum = 459},[2] = {Id = 112,Val = 110,Sum = 187},[3] = {Id = 113,Val = 4000,Sum = 6800}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--张郃魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 351,Sum = 810},[2] = {Id = 112,Val = 143,Sum = 330},[3] = {Id = 113,Val = 5200,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--张郃魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 1350},[2] = {Id = 112,Val = 220,Sum = 550},[3] = {Id = 113,Val = 8000,Sum = 20000}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--张郃魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 702,Sum = 2052},[2] = {Id = 112,Val = 286,Sum = 836},[3] = {Id = 113,Val = 10400,Sum = 30400}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--张郃魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 878,Sum = 2930},[2] = {Id = 112,Val = 358,Sum = 1194},[3] = {Id = 113,Val = 13000,Sum = 43400}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--张郃魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1080,Sum = 4010},[2] = {Id = 112,Val = 440,Sum = 1634},[3] = {Id = 113,Val = 16000,Sum = 59400}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--张郃魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1283,Sum = 5293},[2] = {Id = 112,Val = 523,Sum = 2157},[3] = {Id = 113,Val = 19000,Sum = 78400}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--张郃魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1485,Sum = 6778},[2] = {Id = 112,Val = 605,Sum = 2762},[3] = {Id = 113,Val = 22000,Sum = 100400}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--张郃魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 216},[2] = {Id = 112,Val = 88,Sum = 88},[3] = {Id = 113,Val = 3200,Sum = 3200}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张郃魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 324,Sum = 540},[2] = {Id = 112,Val = 132,Sum = 220},[3] = {Id = 113,Val = 4800,Sum = 8000}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张郃魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 972},[2] = {Id = 112,Val = 176,Sum = 396},[3] = {Id = 113,Val = 6400,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--张郃魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 648,Sum = 1620},[2] = {Id = 112,Val = 264,Sum = 660},[3] = {Id = 113,Val = 9600,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张郃魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 2484},[2] = {Id = 112,Val = 352,Sum = 1012},[3] = {Id = 113,Val = 12800,Sum = 36800}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--张郃魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1080,Sum = 3564},[2] = {Id = 112,Val = 440,Sum = 1452},[3] = {Id = 113,Val = 16000,Sum = 52800}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--张郃魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1296,Sum = 4860},[2] = {Id = 112,Val = 528,Sum = 1980},[3] = {Id = 113,Val = 19200,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--张郃魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 756,Sum = 5616},[2] = {Id = 112,Val = 308,Sum = 2288},[3] = {Id = 113,Val = 11200,Sum = 83200}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--张郃魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1728,Sum = 7344},[2] = {Id = 112,Val = 704,Sum = 2992},[3] = {Id = 113,Val = 25600,Sum = 108800}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--张郃魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 243,Sum = 243},[2] = {Id = 112,Val = 99,Sum = 99},[3] = {Id = 113,Val = 3600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--张郃魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 621},[2] = {Id = 112,Val = 154,Sum = 253},[3] = {Id = 113,Val = 5600,Sum = 9200}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张郃魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 513,Sum = 1134},[2] = {Id = 112,Val = 209,Sum = 462},[3] = {Id = 113,Val = 7600,Sum = 16800}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张郃魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 756,Sum = 1890},[2] = {Id = 112,Val = 308,Sum = 770},[3] = {Id = 113,Val = 11200,Sum = 28000}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张郃魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1013,Sum = 2903},[2] = {Id = 112,Val = 413,Sum = 1183},[3] = {Id = 113,Val = 15000,Sum = 43000}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--张郃魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1242,Sum = 4145},[2] = {Id = 112,Val = 506,Sum = 1689},[3] = {Id = 113,Val = 18400,Sum = 61400}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--张郃魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1620,Sum = 5765},[2] = {Id = 112,Val = 660,Sum = 2349},[3] = {Id = 113,Val = 24000,Sum = 85400}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--张郃魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1755,Sum = 7520},[2] = {Id = 112,Val = 715,Sum = 3064},[3] = {Id = 113,Val = 26000,Sum = 111400}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--张郃魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2025,Sum = 9545},[2] = {Id = 112,Val = 825,Sum = 3889},[3] = {Id = 113,Val = 30000,Sum = 141400}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--张郃魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 270,Sum = 270},[2] = {Id = 112,Val = 110,Sum = 110},[3] = {Id = 113,Val = 4000,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--张郃魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 702},[2] = {Id = 112,Val = 176,Sum = 286},[3] = {Id = 113,Val = 6400,Sum = 10400}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--张郃魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 581,Sum = 1283},[2] = {Id = 112,Val = 237,Sum = 523},[3] = {Id = 113,Val = 8600,Sum = 19000}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--张郃魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 2147},[2] = {Id = 112,Val = 352,Sum = 875},[3] = {Id = 113,Val = 12800,Sum = 31800}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--张郃魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1148,Sum = 3295},[2] = {Id = 112,Val = 468,Sum = 1343},[3] = {Id = 113,Val = 17000,Sum = 48800}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--张郃魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1431,Sum = 4726},[2] = {Id = 112,Val = 583,Sum = 1926},[3] = {Id = 113,Val = 21200,Sum = 70000}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--张郃魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1715,Sum = 6441},[2] = {Id = 112,Val = 699,Sum = 2625},[3] = {Id = 113,Val = 25400,Sum = 95400}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--张郃魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1998,Sum = 8439},[2] = {Id = 112,Val = 814,Sum = 3439},[3] = {Id = 113,Val = 29600,Sum = 125000}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--张郃魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2295,Sum = 10734},[2] = {Id = 112,Val = 935,Sum = 4374},[3] = {Id = 113,Val = 34000,Sum = 159000}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--张郃魂珠-8 等级-9
				}
			}--张郃专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--张郃专属武器解封-0
			[1] = {PSkill = 130301011,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 29000},[2] = {Id = 1502010,Val = 80}}},--张郃专属武器解封-1
			[2] = {PSkill = 130301011,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 60500},[2] = {Id = 1502010,Val = 80}}},--张郃专属武器解封-2
			[3] = {PSkill = 130301011,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 135000},[2] = {Id = 1502010,Val = 120}}},--张郃专属武器解封-3
			[4] = {PSkill = 130301011,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 236500},[2] = {Id = 1502010,Val = 120}}},--张郃专属武器解封-4
			[5] = {PSkill = 130301011,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 586000},[2] = {Id = 1502010,Val = 160}}}--张郃专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 40},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 1080,Sum = 1080}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张飞魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 100},[2] = {Id = 112,Val = 33,Sum = 55},[3] = {Id = 113,Val = 1620,Sum = 2700}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张飞魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 180},[2] = {Id = 112,Val = 44,Sum = 99},[3] = {Id = 113,Val = 2160,Sum = 4860}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--张飞魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 300},[2] = {Id = 112,Val = 66,Sum = 165},[3] = {Id = 113,Val = 3240,Sum = 8100}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张飞魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 460},[2] = {Id = 112,Val = 88,Sum = 253},[3] = {Id = 113,Val = 4320,Sum = 12420}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--张飞魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 660},[2] = {Id = 112,Val = 110,Sum = 363},[3] = {Id = 113,Val = 5400,Sum = 17820}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--张飞魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 900},[2] = {Id = 112,Val = 132,Sum = 495},[3] = {Id = 113,Val = 6480,Sum = 24300}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--张飞魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 1180},[2] = {Id = 112,Val = 154,Sum = 649},[3] = {Id = 113,Val = 7560,Sum = 31860}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--张飞魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 1500},[2] = {Id = 112,Val = 176,Sum = 825},[3] = {Id = 113,Val = 8640,Sum = 40500}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--张飞魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 50},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 1350,Sum = 1350}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--张飞魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 130},[2] = {Id = 112,Val = 44,Sum = 72},[3] = {Id = 113,Val = 2160,Sum = 3510}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张飞魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 230},[2] = {Id = 112,Val = 55,Sum = 127},[3] = {Id = 113,Val = 2700,Sum = 6210}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张飞魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 390},[2] = {Id = 112,Val = 88,Sum = 215},[3] = {Id = 113,Val = 4320,Sum = 10530}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张飞魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 610},[2] = {Id = 112,Val = 121,Sum = 336},[3] = {Id = 113,Val = 5940,Sum = 16470}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--张飞魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 890},[2] = {Id = 112,Val = 154,Sum = 490},[3] = {Id = 113,Val = 7560,Sum = 24030}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张飞魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 1210},[2] = {Id = 112,Val = 176,Sum = 666},[3] = {Id = 113,Val = 8640,Sum = 32670}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张飞魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 380,Sum = 1590},[2] = {Id = 112,Val = 209,Sum = 875},[3] = {Id = 113,Val = 10260,Sum = 42930}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--张飞魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 450,Sum = 2040},[2] = {Id = 112,Val = 248,Sum = 1123},[3] = {Id = 113,Val = 12150,Sum = 55080}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--张飞魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 80},[2] = {Id = 112,Val = 44,Sum = 44},[3] = {Id = 113,Val = 2160,Sum = 2160}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--张飞魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 200},[2] = {Id = 112,Val = 66,Sum = 110},[3] = {Id = 113,Val = 3240,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张飞魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 360},[2] = {Id = 112,Val = 88,Sum = 198},[3] = {Id = 113,Val = 4320,Sum = 9720}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--张飞魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 600},[2] = {Id = 112,Val = 132,Sum = 330},[3] = {Id = 113,Val = 6480,Sum = 16200}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张飞魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 920},[2] = {Id = 112,Val = 176,Sum = 506},[3] = {Id = 113,Val = 8640,Sum = 24840}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--张飞魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 400,Sum = 1320},[2] = {Id = 112,Val = 220,Sum = 726},[3] = {Id = 113,Val = 10800,Sum = 35640}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--张飞魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1800},[2] = {Id = 112,Val = 264,Sum = 990},[3] = {Id = 113,Val = 12960,Sum = 48600}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--张飞魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 2360},[2] = {Id = 112,Val = 308,Sum = 1298},[3] = {Id = 113,Val = 15120,Sum = 63720}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--张飞魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 3000},[2] = {Id = 112,Val = 352,Sum = 1650},[3] = {Id = 113,Val = 17280,Sum = 81000}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--张飞魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 100},[2] = {Id = 112,Val = 55,Sum = 55},[3] = {Id = 113,Val = 2700,Sum = 2700}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张飞魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 260},[2] = {Id = 112,Val = 88,Sum = 143},[3] = {Id = 113,Val = 4320,Sum = 7020}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--张飞魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 480},[2] = {Id = 112,Val = 121,Sum = 264},[3] = {Id = 113,Val = 5940,Sum = 12960}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--张飞魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 800},[2] = {Id = 112,Val = 176,Sum = 440},[3] = {Id = 113,Val = 8640,Sum = 21600}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--张飞魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 420,Sum = 1220},[2] = {Id = 112,Val = 231,Sum = 671},[3] = {Id = 113,Val = 11340,Sum = 32940}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--张飞魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 550,Sum = 1770},[2] = {Id = 112,Val = 303,Sum = 974},[3] = {Id = 113,Val = 14850,Sum = 47790}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--张飞魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 650,Sum = 2420},[2] = {Id = 112,Val = 358,Sum = 1332},[3] = {Id = 113,Val = 17550,Sum = 65340}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--张飞魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 750,Sum = 3170},[2] = {Id = 112,Val = 413,Sum = 1745},[3] = {Id = 113,Val = 20250,Sum = 85590}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--张飞魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 850,Sum = 4020},[2] = {Id = 112,Val = 468,Sum = 2213},[3] = {Id = 113,Val = 22950,Sum = 108540}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--张飞魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 140},[2] = {Id = 112,Val = 77,Sum = 77},[3] = {Id = 113,Val = 3780,Sum = 3780}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--张飞魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 340},[2] = {Id = 112,Val = 110,Sum = 187},[3] = {Id = 113,Val = 5400,Sum = 9180}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--张飞魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 260,Sum = 600},[2] = {Id = 112,Val = 143,Sum = 330},[3] = {Id = 113,Val = 7020,Sum = 16200}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--张飞魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 400,Sum = 1000},[2] = {Id = 112,Val = 220,Sum = 550},[3] = {Id = 113,Val = 10800,Sum = 27000}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--张飞魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 520,Sum = 1520},[2] = {Id = 112,Val = 286,Sum = 836},[3] = {Id = 113,Val = 14040,Sum = 41040}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--张飞魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 650,Sum = 2170},[2] = {Id = 112,Val = 358,Sum = 1194},[3] = {Id = 113,Val = 17550,Sum = 58590}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--张飞魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 800,Sum = 2970},[2] = {Id = 112,Val = 440,Sum = 1634},[3] = {Id = 113,Val = 21600,Sum = 80190}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--张飞魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 950,Sum = 3920},[2] = {Id = 112,Val = 523,Sum = 2157},[3] = {Id = 113,Val = 25650,Sum = 105840}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--张飞魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1100,Sum = 5020},[2] = {Id = 112,Val = 605,Sum = 2762},[3] = {Id = 113,Val = 29700,Sum = 135540}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--张飞魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 160},[2] = {Id = 112,Val = 88,Sum = 88},[3] = {Id = 113,Val = 4320,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张飞魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 400},[2] = {Id = 112,Val = 132,Sum = 220},[3] = {Id = 113,Val = 6480,Sum = 10800}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--张飞魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 720},[2] = {Id = 112,Val = 176,Sum = 396},[3] = {Id = 113,Val = 8640,Sum = 19440}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--张飞魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1200},[2] = {Id = 112,Val = 264,Sum = 660},[3] = {Id = 113,Val = 12960,Sum = 32400}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张飞魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 1840},[2] = {Id = 112,Val = 352,Sum = 1012},[3] = {Id = 113,Val = 17280,Sum = 49680}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--张飞魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 800,Sum = 2640},[2] = {Id = 112,Val = 440,Sum = 1452},[3] = {Id = 113,Val = 21600,Sum = 71280}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--张飞魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3600},[2] = {Id = 112,Val = 528,Sum = 1980},[3] = {Id = 113,Val = 25920,Sum = 97200}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--张飞魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 4160},[2] = {Id = 112,Val = 308,Sum = 2288},[3] = {Id = 113,Val = 15120,Sum = 112320}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--张飞魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1280,Sum = 5440},[2] = {Id = 112,Val = 704,Sum = 2992},[3] = {Id = 113,Val = 34560,Sum = 146880}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--张飞魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 180},[2] = {Id = 112,Val = 99,Sum = 99},[3] = {Id = 113,Val = 4860,Sum = 4860}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--张飞魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 460},[2] = {Id = 112,Val = 154,Sum = 253},[3] = {Id = 113,Val = 7560,Sum = 12420}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张飞魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 380,Sum = 840},[2] = {Id = 112,Val = 209,Sum = 462},[3] = {Id = 113,Val = 10260,Sum = 22680}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--张飞魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 1400},[2] = {Id = 112,Val = 308,Sum = 770},[3] = {Id = 113,Val = 15120,Sum = 37800}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--张飞魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 750,Sum = 2150},[2] = {Id = 112,Val = 413,Sum = 1183},[3] = {Id = 113,Val = 20250,Sum = 58050}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--张飞魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 920,Sum = 3070},[2] = {Id = 112,Val = 506,Sum = 1689},[3] = {Id = 113,Val = 24840,Sum = 82890}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--张飞魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1200,Sum = 4270},[2] = {Id = 112,Val = 660,Sum = 2349},[3] = {Id = 113,Val = 32400,Sum = 115290}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--张飞魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1300,Sum = 5570},[2] = {Id = 112,Val = 715,Sum = 3064},[3] = {Id = 113,Val = 35100,Sum = 150390}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--张飞魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1500,Sum = 7070},[2] = {Id = 112,Val = 825,Sum = 3889},[3] = {Id = 113,Val = 40500,Sum = 190890}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--张飞魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 200},[2] = {Id = 112,Val = 110,Sum = 110},[3] = {Id = 113,Val = 5400,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--张飞魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 520},[2] = {Id = 112,Val = 176,Sum = 286},[3] = {Id = 113,Val = 8640,Sum = 14040}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--张飞魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 430,Sum = 950},[2] = {Id = 112,Val = 237,Sum = 523},[3] = {Id = 113,Val = 11610,Sum = 25650}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--张飞魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 1590},[2] = {Id = 112,Val = 352,Sum = 875},[3] = {Id = 113,Val = 17280,Sum = 42930}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--张飞魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 850,Sum = 2440},[2] = {Id = 112,Val = 468,Sum = 1343},[3] = {Id = 113,Val = 22950,Sum = 65880}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--张飞魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1060,Sum = 3500},[2] = {Id = 112,Val = 583,Sum = 1926},[3] = {Id = 113,Val = 28620,Sum = 94500}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--张飞魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1270,Sum = 4770},[2] = {Id = 112,Val = 699,Sum = 2625},[3] = {Id = 113,Val = 34290,Sum = 128790}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--张飞魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1480,Sum = 6250},[2] = {Id = 112,Val = 814,Sum = 3439},[3] = {Id = 113,Val = 39960,Sum = 168750}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--张飞魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1700,Sum = 7950},[2] = {Id = 112,Val = 935,Sum = 4374},[3] = {Id = 113,Val = 45900,Sum = 214650}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--张飞魂珠-8 等级-9
				}
			}--张飞专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--张飞专属武器解封-0
			[1] = {PSkill = 130301111,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 29000},[2] = {Id = 1502011,Val = 80}}},--张飞专属武器解封-1
			[2] = {PSkill = 130301111,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 60500},[2] = {Id = 1502011,Val = 80}}},--张飞专属武器解封-2
			[3] = {PSkill = 130301111,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 135000},[2] = {Id = 1502011,Val = 120}}},--张飞专属武器解封-3
			[4] = {PSkill = 130301111,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 236500},[2] = {Id = 1502011,Val = 120}}},--张飞专属武器解封-4
			[5] = {PSkill = 130301111,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 586000},[2] = {Id = 1502011,Val = 160}}}--张飞专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 48,Sum = 48},[2] = {Id = 112,Val = 24,Sum = 24},[3] = {Id = 113,Val = 1200,Sum = 1200}},Cost = {[1] = {Id = 1401002,Val = 160},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯惇魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 120},[2] = {Id = 112,Val = 36,Sum = 60},[3] = {Id = 113,Val = 1800,Sum = 3000}},Cost = {[1] = {Id = 1401002,Val = 245},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯惇魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 216},[2] = {Id = 112,Val = 48,Sum = 108},[3] = {Id = 113,Val = 2400,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 405},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--夏侯惇魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 360},[2] = {Id = 112,Val = 72,Sum = 180},[3] = {Id = 113,Val = 3600,Sum = 9000}},Cost = {[1] = {Id = 1401002,Val = 520},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯惇魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 552},[2] = {Id = 112,Val = 96,Sum = 276},[3] = {Id = 113,Val = 4800,Sum = 13800}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--夏侯惇魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 792},[2] = {Id = 112,Val = 120,Sum = 396},[3] = {Id = 113,Val = 6000,Sum = 19800}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--夏侯惇魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1080},[2] = {Id = 112,Val = 144,Sum = 540},[3] = {Id = 113,Val = 7200,Sum = 27000}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--夏侯惇魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1416},[2] = {Id = 112,Val = 168,Sum = 708},[3] = {Id = 113,Val = 8400,Sum = 35400}},Cost = {[1] = {Id = 1401002,Val = 1055},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--夏侯惇魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1800},[2] = {Id = 112,Val = 192,Sum = 900},[3] = {Id = 113,Val = 9600,Sum = 45000}},Cost = {[1] = {Id = 1401002,Val = 1315},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--夏侯惇魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 60},[2] = {Id = 112,Val = 30,Sum = 30},[3] = {Id = 113,Val = 1500,Sum = 1500}},Cost = {[1] = {Id = 1401002,Val = 445},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--夏侯惇魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 156},[2] = {Id = 112,Val = 48,Sum = 78},[3] = {Id = 113,Val = 2400,Sum = 3900}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯惇魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 276},[2] = {Id = 112,Val = 60,Sum = 138},[3] = {Id = 113,Val = 3000,Sum = 6900}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯惇魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 468},[2] = {Id = 112,Val = 96,Sum = 234},[3] = {Id = 113,Val = 4800,Sum = 11700}},Cost = {[1] = {Id = 1401002,Val = 710},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯惇魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 732},[2] = {Id = 112,Val = 132,Sum = 366},[3] = {Id = 113,Val = 6600,Sum = 18300}},Cost = {[1] = {Id = 1401002,Val = 1080},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--夏侯惇魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1068},[2] = {Id = 112,Val = 168,Sum = 534},[3] = {Id = 113,Val = 8400,Sum = 26700}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯惇魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1452},[2] = {Id = 112,Val = 192,Sum = 726},[3] = {Id = 113,Val = 9600,Sum = 36300}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯惇魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1908},[2] = {Id = 112,Val = 228,Sum = 954},[3] = {Id = 113,Val = 11400,Sum = 47700}},Cost = {[1] = {Id = 1401002,Val = 2150},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--夏侯惇魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 2448},[2] = {Id = 112,Val = 270,Sum = 1224},[3] = {Id = 113,Val = 13500,Sum = 61200}},Cost = {[1] = {Id = 1401002,Val = 2870},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--夏侯惇魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 96},[2] = {Id = 112,Val = 48,Sum = 48},[3] = {Id = 113,Val = 2400,Sum = 2400}},Cost = {[1] = {Id = 1401002,Val = 910},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--夏侯惇魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 240},[2] = {Id = 112,Val = 72,Sum = 120},[3] = {Id = 113,Val = 3600,Sum = 6000}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯惇魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 432},[2] = {Id = 112,Val = 96,Sum = 216},[3] = {Id = 113,Val = 4800,Sum = 10800}},Cost = {[1] = {Id = 1401002,Val = 1140},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--夏侯惇魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 720},[2] = {Id = 112,Val = 144,Sum = 360},[3] = {Id = 113,Val = 7200,Sum = 18000}},Cost = {[1] = {Id = 1401002,Val = 1095},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯惇魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1104},[2] = {Id = 112,Val = 192,Sum = 552},[3] = {Id = 113,Val = 9600,Sum = 27600}},Cost = {[1] = {Id = 1401002,Val = 1485},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--夏侯惇魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1584},[2] = {Id = 112,Val = 240,Sum = 792},[3] = {Id = 113,Val = 12000,Sum = 39600}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--夏侯惇魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 2160},[2] = {Id = 112,Val = 288,Sum = 1080},[3] = {Id = 113,Val = 14400,Sum = 54000}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--夏侯惇魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 2832},[2] = {Id = 112,Val = 336,Sum = 1416},[3] = {Id = 113,Val = 16800,Sum = 70800}},Cost = {[1] = {Id = 1401002,Val = 2955},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--夏侯惇魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 3600},[2] = {Id = 112,Val = 384,Sum = 1800},[3] = {Id = 113,Val = 19200,Sum = 90000}},Cost = {[1] = {Id = 1401002,Val = 3695},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--夏侯惇魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 120},[2] = {Id = 112,Val = 60,Sum = 60},[3] = {Id = 113,Val = 3000,Sum = 3000}},Cost = {[1] = {Id = 1401002,Val = 1480},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯惇魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 312},[2] = {Id = 112,Val = 96,Sum = 156},[3] = {Id = 113,Val = 4800,Sum = 7800}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--夏侯惇魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 576},[2] = {Id = 112,Val = 132,Sum = 288},[3] = {Id = 113,Val = 6600,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 1235},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--夏侯惇魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 960},[2] = {Id = 112,Val = 192,Sum = 480},[3] = {Id = 113,Val = 9600,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 2370},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--夏侯惇魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 1464},[2] = {Id = 112,Val = 252,Sum = 732},[3] = {Id = 113,Val = 12600,Sum = 36600}},Cost = {[1] = {Id = 1401002,Val = 2405},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--夏侯惇魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 660,Sum = 2124},[2] = {Id = 112,Val = 330,Sum = 1062},[3] = {Id = 113,Val = 16500,Sum = 53100}},Cost = {[1] = {Id = 1401002,Val = 2390},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--夏侯惇魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2904},[2] = {Id = 112,Val = 390,Sum = 1452},[3] = {Id = 113,Val = 19500,Sum = 72600}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--夏侯惇魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 3804},[2] = {Id = 112,Val = 450,Sum = 1902},[3] = {Id = 113,Val = 22500,Sum = 95100}},Cost = {[1] = {Id = 1401002,Val = 4790},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--夏侯惇魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 4824},[2] = {Id = 112,Val = 510,Sum = 2412},[3] = {Id = 113,Val = 25500,Sum = 120600}},Cost = {[1] = {Id = 1401002,Val = 7190},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--夏侯惇魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 168},[2] = {Id = 112,Val = 84,Sum = 84},[3] = {Id = 113,Val = 4200,Sum = 4200}},Cost = {[1] = {Id = 1401002,Val = 3085},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--夏侯惇魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 408},[2] = {Id = 112,Val = 120,Sum = 204},[3] = {Id = 113,Val = 6000,Sum = 10200}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--夏侯惇魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 720},[2] = {Id = 112,Val = 156,Sum = 360},[3] = {Id = 113,Val = 7800,Sum = 18000}},Cost = {[1] = {Id = 1401002,Val = 2570},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--夏侯惇魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1200},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 12000,Sum = 30000}},Cost = {[1] = {Id = 1401002,Val = 3705},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--夏侯惇魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 624,Sum = 1824},[2] = {Id = 112,Val = 312,Sum = 912},[3] = {Id = 113,Val = 15600,Sum = 45600}},Cost = {[1] = {Id = 1401002,Val = 3760},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--夏侯惇魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2604},[2] = {Id = 112,Val = 390,Sum = 1302},[3] = {Id = 113,Val = 19500,Sum = 65100}},Cost = {[1] = {Id = 1401002,Val = 6230},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--夏侯惇魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3564},[2] = {Id = 112,Val = 480,Sum = 1782},[3] = {Id = 113,Val = 24000,Sum = 89100}},Cost = {[1] = {Id = 1401002,Val = 6245},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--夏侯惇魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1140,Sum = 4704},[2] = {Id = 112,Val = 570,Sum = 2352},[3] = {Id = 113,Val = 28500,Sum = 117600}},Cost = {[1] = {Id = 1401002,Val = 8740},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--夏侯惇魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 6024},[2] = {Id = 112,Val = 660,Sum = 3012},[3] = {Id = 113,Val = 33000,Sum = 150600}},Cost = {[1] = {Id = 1401002,Val = 11240},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--夏侯惇魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 192},[2] = {Id = 112,Val = 96,Sum = 96},[3] = {Id = 113,Val = 4800,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 2905},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯惇魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 480},[2] = {Id = 112,Val = 144,Sum = 240},[3] = {Id = 113,Val = 7200,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 4360},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--夏侯惇魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 864},[2] = {Id = 112,Val = 192,Sum = 432},[3] = {Id = 113,Val = 9600,Sum = 21600}},Cost = {[1] = {Id = 1401002,Val = 4840},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--夏侯惇魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1440},[2] = {Id = 112,Val = 288,Sum = 720},[3] = {Id = 113,Val = 14400,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 6970},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯惇魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 2208},[2] = {Id = 112,Val = 384,Sum = 1104},[3] = {Id = 113,Val = 19200,Sum = 55200}},Cost = {[1] = {Id = 1401002,Val = 7080},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--夏侯惇魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3168},[2] = {Id = 112,Val = 480,Sum = 1584},[3] = {Id = 113,Val = 24000,Sum = 79200}},Cost = {[1] = {Id = 1401002,Val = 9385},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--夏侯惇魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1152,Sum = 4320},[2] = {Id = 112,Val = 576,Sum = 2160},[3] = {Id = 113,Val = 28800,Sum = 108000}},Cost = {[1] = {Id = 1401002,Val = 11760},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--夏侯惇魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 4992},[2] = {Id = 112,Val = 336,Sum = 2496},[3] = {Id = 113,Val = 16800,Sum = 124800}},Cost = {[1] = {Id = 1401002,Val = 16445},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--夏侯惇魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1536,Sum = 6528},[2] = {Id = 112,Val = 768,Sum = 3264},[3] = {Id = 113,Val = 38400,Sum = 163200}},Cost = {[1] = {Id = 1401002,Val = 18800},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--夏侯惇魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 216},[2] = {Id = 112,Val = 108,Sum = 108},[3] = {Id = 113,Val = 5400,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 5710},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--夏侯惇魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 552},[2] = {Id = 112,Val = 168,Sum = 276},[3] = {Id = 113,Val = 8400,Sum = 13800}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯惇魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1008},[2] = {Id = 112,Val = 228,Sum = 504},[3] = {Id = 113,Val = 11400,Sum = 25200}},Cost = {[1] = {Id = 1401002,Val = 7135},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--夏侯惇魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 1680},[2] = {Id = 112,Val = 336,Sum = 840},[3] = {Id = 113,Val = 16800,Sum = 42000}},Cost = {[1] = {Id = 1401002,Val = 9130},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--夏侯惇魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 2580},[2] = {Id = 112,Val = 450,Sum = 1290},[3] = {Id = 113,Val = 22500,Sum = 64500}},Cost = {[1] = {Id = 1401002,Val = 9275},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--夏侯惇魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1104,Sum = 3684},[2] = {Id = 112,Val = 552,Sum = 1842},[3] = {Id = 113,Val = 27600,Sum = 92100}},Cost = {[1] = {Id = 1401002,Val = 11525},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--夏侯惇魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1440,Sum = 5124},[2] = {Id = 112,Val = 720,Sum = 2562},[3] = {Id = 113,Val = 36000,Sum = 128100}},Cost = {[1] = {Id = 1401002,Val = 16170},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--夏侯惇魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1560,Sum = 6684},[2] = {Id = 112,Val = 780,Sum = 3342},[3] = {Id = 113,Val = 39000,Sum = 167100}},Cost = {[1] = {Id = 1401002,Val = 18465},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--夏侯惇魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1800,Sum = 8484},[2] = {Id = 112,Val = 900,Sum = 4242},[3] = {Id = 113,Val = 45000,Sum = 212100}},Cost = {[1] = {Id = 1401002,Val = 23090},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--夏侯惇魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 240},[2] = {Id = 112,Val = 120,Sum = 120},[3] = {Id = 113,Val = 6000,Sum = 6000}},Cost = {[1] = {Id = 1401002,Val = 4865},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--夏侯惇魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 624},[2] = {Id = 112,Val = 192,Sum = 312},[3] = {Id = 113,Val = 9600,Sum = 15600}},Cost = {[1] = {Id = 1401002,Val = 5835},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--夏侯惇魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 516,Sum = 1140},[2] = {Id = 112,Val = 258,Sum = 570},[3] = {Id = 113,Val = 12900,Sum = 28500}},Cost = {[1] = {Id = 1401002,Val = 8105},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--夏侯惇魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 1908},[2] = {Id = 112,Val = 384,Sum = 954},[3] = {Id = 113,Val = 19200,Sum = 47700}},Cost = {[1] = {Id = 1401002,Val = 9340},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--夏侯惇魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 2928},[2] = {Id = 112,Val = 510,Sum = 1464},[3] = {Id = 113,Val = 25500,Sum = 73200}},Cost = {[1] = {Id = 1401002,Val = 11855},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--夏侯惇魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1272,Sum = 4200},[2] = {Id = 112,Val = 636,Sum = 2100},[3] = {Id = 113,Val = 31800,Sum = 105000}},Cost = {[1] = {Id = 1401002,Val = 14145},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--夏侯惇魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1524,Sum = 5724},[2] = {Id = 112,Val = 762,Sum = 2862},[3] = {Id = 113,Val = 38100,Sum = 143100}},Cost = {[1] = {Id = 1401002,Val = 19690},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--夏侯惇魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1776,Sum = 7500},[2] = {Id = 112,Val = 888,Sum = 3750},[3] = {Id = 113,Val = 44400,Sum = 187500}},Cost = {[1] = {Id = 1401002,Val = 23605},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--夏侯惇魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2040,Sum = 9540},[2] = {Id = 112,Val = 1020,Sum = 4770},[3] = {Id = 113,Val = 51000,Sum = 238500}},Cost = {[1] = {Id = 1401002,Val = 23615},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--夏侯惇魂珠-8 等级-9
				}
			}--夏侯惇专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--夏侯惇专属武器解封-0
			[1] = {PSkill = 130301211,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 36500},[2] = {Id = 1502012,Val = 80}}},--夏侯惇专属武器解封-1
			[2] = {PSkill = 130301211,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 75500},[2] = {Id = 1502012,Val = 80}}},--夏侯惇专属武器解封-2
			[3] = {PSkill = 130301211,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 168500},[2] = {Id = 1502012,Val = 120}}},--夏侯惇专属武器解封-3
			[4] = {PSkill = 130301211,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 295500},[2] = {Id = 1502012,Val = 120}}},--夏侯惇专属武器解封-4
			[5] = {PSkill = 130301211,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 732500},[2] = {Id = 1502012,Val = 160}}}--夏侯惇专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 40},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 800,Sum = 800}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--石灵明魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 100},[2] = {Id = 112,Val = 30,Sum = 50},[3] = {Id = 113,Val = 1200,Sum = 2000}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--石灵明魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 180},[2] = {Id = 112,Val = 40,Sum = 90},[3] = {Id = 113,Val = 1600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--石灵明魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 300},[2] = {Id = 112,Val = 60,Sum = 150},[3] = {Id = 113,Val = 2400,Sum = 6000}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--石灵明魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 460},[2] = {Id = 112,Val = 80,Sum = 230},[3] = {Id = 113,Val = 3200,Sum = 9200}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--石灵明魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 660},[2] = {Id = 112,Val = 100,Sum = 330},[3] = {Id = 113,Val = 4000,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--石灵明魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 900},[2] = {Id = 112,Val = 120,Sum = 450},[3] = {Id = 113,Val = 4800,Sum = 18000}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--石灵明魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 1180},[2] = {Id = 112,Val = 140,Sum = 590},[3] = {Id = 113,Val = 5600,Sum = 23600}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--石灵明魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 1500},[2] = {Id = 112,Val = 160,Sum = 750},[3] = {Id = 113,Val = 6400,Sum = 30000}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--石灵明魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 50},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 1000,Sum = 1000}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--石灵明魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 130},[2] = {Id = 112,Val = 40,Sum = 65},[3] = {Id = 113,Val = 1600,Sum = 2600}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--石灵明魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 230},[2] = {Id = 112,Val = 50,Sum = 115},[3] = {Id = 113,Val = 2000,Sum = 4600}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--石灵明魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 390},[2] = {Id = 112,Val = 80,Sum = 195},[3] = {Id = 113,Val = 3200,Sum = 7800}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--石灵明魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 610},[2] = {Id = 112,Val = 110,Sum = 305},[3] = {Id = 113,Val = 4400,Sum = 12200}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--石灵明魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 890},[2] = {Id = 112,Val = 140,Sum = 445},[3] = {Id = 113,Val = 5600,Sum = 17800}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--石灵明魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 1210},[2] = {Id = 112,Val = 160,Sum = 605},[3] = {Id = 113,Val = 6400,Sum = 24200}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--石灵明魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 380,Sum = 1590},[2] = {Id = 112,Val = 190,Sum = 795},[3] = {Id = 113,Val = 7600,Sum = 31800}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--石灵明魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 450,Sum = 2040},[2] = {Id = 112,Val = 225,Sum = 1020},[3] = {Id = 113,Val = 9000,Sum = 40800}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--石灵明魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 80},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 1600,Sum = 1600}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--石灵明魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 200},[2] = {Id = 112,Val = 60,Sum = 100},[3] = {Id = 113,Val = 2400,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--石灵明魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 360},[2] = {Id = 112,Val = 80,Sum = 180},[3] = {Id = 113,Val = 3200,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--石灵明魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 600},[2] = {Id = 112,Val = 120,Sum = 300},[3] = {Id = 113,Val = 4800,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--石灵明魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 920},[2] = {Id = 112,Val = 160,Sum = 460},[3] = {Id = 113,Val = 6400,Sum = 18400}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--石灵明魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 400,Sum = 1320},[2] = {Id = 112,Val = 200,Sum = 660},[3] = {Id = 113,Val = 8000,Sum = 26400}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--石灵明魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1800},[2] = {Id = 112,Val = 240,Sum = 900},[3] = {Id = 113,Val = 9600,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--石灵明魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 2360},[2] = {Id = 112,Val = 280,Sum = 1180},[3] = {Id = 113,Val = 11200,Sum = 47200}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--石灵明魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 3000},[2] = {Id = 112,Val = 320,Sum = 1500},[3] = {Id = 113,Val = 12800,Sum = 60000}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--石灵明魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 100},[2] = {Id = 112,Val = 50,Sum = 50},[3] = {Id = 113,Val = 2000,Sum = 2000}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--石灵明魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 260},[2] = {Id = 112,Val = 80,Sum = 130},[3] = {Id = 113,Val = 3200,Sum = 5200}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--石灵明魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 480},[2] = {Id = 112,Val = 110,Sum = 240},[3] = {Id = 113,Val = 4400,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--石灵明魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 800},[2] = {Id = 112,Val = 160,Sum = 400},[3] = {Id = 113,Val = 6400,Sum = 16000}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--石灵明魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 420,Sum = 1220},[2] = {Id = 112,Val = 210,Sum = 610},[3] = {Id = 113,Val = 8400,Sum = 24400}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--石灵明魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 550,Sum = 1770},[2] = {Id = 112,Val = 275,Sum = 885},[3] = {Id = 113,Val = 11000,Sum = 35400}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--石灵明魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 650,Sum = 2420},[2] = {Id = 112,Val = 325,Sum = 1210},[3] = {Id = 113,Val = 13000,Sum = 48400}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--石灵明魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 750,Sum = 3170},[2] = {Id = 112,Val = 375,Sum = 1585},[3] = {Id = 113,Val = 15000,Sum = 63400}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--石灵明魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 850,Sum = 4020},[2] = {Id = 112,Val = 425,Sum = 2010},[3] = {Id = 113,Val = 17000,Sum = 80400}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--石灵明魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 140},[2] = {Id = 112,Val = 70,Sum = 70},[3] = {Id = 113,Val = 2800,Sum = 2800}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--石灵明魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 340},[2] = {Id = 112,Val = 100,Sum = 170},[3] = {Id = 113,Val = 4000,Sum = 6800}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--石灵明魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 260,Sum = 600},[2] = {Id = 112,Val = 130,Sum = 300},[3] = {Id = 113,Val = 5200,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--石灵明魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 400,Sum = 1000},[2] = {Id = 112,Val = 200,Sum = 500},[3] = {Id = 113,Val = 8000,Sum = 20000}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--石灵明魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 520,Sum = 1520},[2] = {Id = 112,Val = 260,Sum = 760},[3] = {Id = 113,Val = 10400,Sum = 30400}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--石灵明魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 650,Sum = 2170},[2] = {Id = 112,Val = 325,Sum = 1085},[3] = {Id = 113,Val = 13000,Sum = 43400}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--石灵明魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 800,Sum = 2970},[2] = {Id = 112,Val = 400,Sum = 1485},[3] = {Id = 113,Val = 16000,Sum = 59400}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--石灵明魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 950,Sum = 3920},[2] = {Id = 112,Val = 475,Sum = 1960},[3] = {Id = 113,Val = 19000,Sum = 78400}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--石灵明魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1100,Sum = 5020},[2] = {Id = 112,Val = 550,Sum = 2510},[3] = {Id = 113,Val = 22000,Sum = 100400}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--石灵明魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 160},[2] = {Id = 112,Val = 80,Sum = 80},[3] = {Id = 113,Val = 3200,Sum = 3200}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--石灵明魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 400},[2] = {Id = 112,Val = 120,Sum = 200},[3] = {Id = 113,Val = 4800,Sum = 8000}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--石灵明魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 720},[2] = {Id = 112,Val = 160,Sum = 360},[3] = {Id = 113,Val = 6400,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--石灵明魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1200},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 9600,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--石灵明魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 1840},[2] = {Id = 112,Val = 320,Sum = 920},[3] = {Id = 113,Val = 12800,Sum = 36800}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--石灵明魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 800,Sum = 2640},[2] = {Id = 112,Val = 400,Sum = 1320},[3] = {Id = 113,Val = 16000,Sum = 52800}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--石灵明魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3600},[2] = {Id = 112,Val = 480,Sum = 1800},[3] = {Id = 113,Val = 19200,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--石灵明魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 4160},[2] = {Id = 112,Val = 280,Sum = 2080},[3] = {Id = 113,Val = 11200,Sum = 83200}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--石灵明魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1280,Sum = 5440},[2] = {Id = 112,Val = 640,Sum = 2720},[3] = {Id = 113,Val = 25600,Sum = 108800}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--石灵明魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 180},[2] = {Id = 112,Val = 90,Sum = 90},[3] = {Id = 113,Val = 3600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--石灵明魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 460},[2] = {Id = 112,Val = 140,Sum = 230},[3] = {Id = 113,Val = 5600,Sum = 9200}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--石灵明魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 380,Sum = 840},[2] = {Id = 112,Val = 190,Sum = 420},[3] = {Id = 113,Val = 7600,Sum = 16800}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--石灵明魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 1400},[2] = {Id = 112,Val = 280,Sum = 700},[3] = {Id = 113,Val = 11200,Sum = 28000}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--石灵明魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 750,Sum = 2150},[2] = {Id = 112,Val = 375,Sum = 1075},[3] = {Id = 113,Val = 15000,Sum = 43000}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--石灵明魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 920,Sum = 3070},[2] = {Id = 112,Val = 460,Sum = 1535},[3] = {Id = 113,Val = 18400,Sum = 61400}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--石灵明魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1200,Sum = 4270},[2] = {Id = 112,Val = 600,Sum = 2135},[3] = {Id = 113,Val = 24000,Sum = 85400}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--石灵明魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1300,Sum = 5570},[2] = {Id = 112,Val = 650,Sum = 2785},[3] = {Id = 113,Val = 26000,Sum = 111400}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--石灵明魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1500,Sum = 7070},[2] = {Id = 112,Val = 750,Sum = 3535},[3] = {Id = 113,Val = 30000,Sum = 141400}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--石灵明魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 200},[2] = {Id = 112,Val = 100,Sum = 100},[3] = {Id = 113,Val = 4000,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--石灵明魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 520},[2] = {Id = 112,Val = 160,Sum = 260},[3] = {Id = 113,Val = 6400,Sum = 10400}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--石灵明魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 430,Sum = 950},[2] = {Id = 112,Val = 215,Sum = 475},[3] = {Id = 113,Val = 8600,Sum = 19000}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--石灵明魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 1590},[2] = {Id = 112,Val = 320,Sum = 795},[3] = {Id = 113,Val = 12800,Sum = 31800}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--石灵明魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 850,Sum = 2440},[2] = {Id = 112,Val = 425,Sum = 1220},[3] = {Id = 113,Val = 17000,Sum = 48800}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--石灵明魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1060,Sum = 3500},[2] = {Id = 112,Val = 530,Sum = 1750},[3] = {Id = 113,Val = 21200,Sum = 70000}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--石灵明魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1270,Sum = 4770},[2] = {Id = 112,Val = 635,Sum = 2385},[3] = {Id = 113,Val = 25400,Sum = 95400}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--石灵明魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1480,Sum = 6250},[2] = {Id = 112,Val = 740,Sum = 3125},[3] = {Id = 113,Val = 29600,Sum = 125000}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--石灵明魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1700,Sum = 7950},[2] = {Id = 112,Val = 850,Sum = 3975},[3] = {Id = 113,Val = 34000,Sum = 159000}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--石灵明魂珠-8 等级-9
				}
			}--石灵明专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--石灵明专属武器解封-0
			[1] = {PSkill = 130301411,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 22000},[2] = {Id = 1502014,Val = 40}}},--石灵明专属武器解封-1
			[2] = {PSkill = 130301411,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 45000},[2] = {Id = 1502014,Val = 40}}},--石灵明专属武器解封-2
			[3] = {PSkill = 130301411,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 101000},[2] = {Id = 1502014,Val = 60}}},--石灵明专属武器解封-3
			[4] = {PSkill = 130301411,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 177500},[2] = {Id = 1502014,Val = 60}}},--石灵明专属武器解封-4
			[5] = {PSkill = 130301411,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 439500},[2] = {Id = 1502014,Val = 80}}}--石灵明专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 24,Sum = 24},[3] = {Id = 113,Val = 1080,Sum = 1080}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--西方龙魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 36,Sum = 60},[3] = {Id = 113,Val = 1620,Sum = 2700}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--西方龙魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 198},[2] = {Id = 112,Val = 48,Sum = 108},[3] = {Id = 113,Val = 2160,Sum = 4860}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--西方龙魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 330},[2] = {Id = 112,Val = 72,Sum = 180},[3] = {Id = 113,Val = 3240,Sum = 8100}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--西方龙魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 506},[2] = {Id = 112,Val = 96,Sum = 276},[3] = {Id = 113,Val = 4320,Sum = 12420}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--西方龙魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 726},[2] = {Id = 112,Val = 120,Sum = 396},[3] = {Id = 113,Val = 5400,Sum = 17820}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--西方龙魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 990},[2] = {Id = 112,Val = 144,Sum = 540},[3] = {Id = 113,Val = 6480,Sum = 24300}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--西方龙魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 1298},[2] = {Id = 112,Val = 168,Sum = 708},[3] = {Id = 113,Val = 7560,Sum = 31860}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--西方龙魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1650},[2] = {Id = 112,Val = 192,Sum = 900},[3] = {Id = 113,Val = 8640,Sum = 40500}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--西方龙魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 55,Sum = 55},[2] = {Id = 112,Val = 30,Sum = 30},[3] = {Id = 113,Val = 1350,Sum = 1350}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--西方龙魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 143},[2] = {Id = 112,Val = 48,Sum = 78},[3] = {Id = 113,Val = 2160,Sum = 3510}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--西方龙魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 253},[2] = {Id = 112,Val = 60,Sum = 138},[3] = {Id = 113,Val = 2700,Sum = 6210}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--西方龙魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 429},[2] = {Id = 112,Val = 96,Sum = 234},[3] = {Id = 113,Val = 4320,Sum = 10530}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--西方龙魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 242,Sum = 671},[2] = {Id = 112,Val = 132,Sum = 366},[3] = {Id = 113,Val = 5940,Sum = 16470}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--西方龙魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 979},[2] = {Id = 112,Val = 168,Sum = 534},[3] = {Id = 113,Val = 7560,Sum = 24030}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--西方龙魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1331},[2] = {Id = 112,Val = 192,Sum = 726},[3] = {Id = 113,Val = 8640,Sum = 32670}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--西方龙魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 418,Sum = 1749},[2] = {Id = 112,Val = 228,Sum = 954},[3] = {Id = 113,Val = 10260,Sum = 42930}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--西方龙魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 495,Sum = 2244},[2] = {Id = 112,Val = 270,Sum = 1224},[3] = {Id = 113,Val = 12150,Sum = 55080}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--西方龙魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 88},[2] = {Id = 112,Val = 48,Sum = 48},[3] = {Id = 113,Val = 2160,Sum = 2160}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--西方龙魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 220},[2] = {Id = 112,Val = 72,Sum = 120},[3] = {Id = 113,Val = 3240,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--西方龙魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 396},[2] = {Id = 112,Val = 96,Sum = 216},[3] = {Id = 113,Val = 4320,Sum = 9720}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--西方龙魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 660},[2] = {Id = 112,Val = 144,Sum = 360},[3] = {Id = 113,Val = 6480,Sum = 16200}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--西方龙魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1012},[2] = {Id = 112,Val = 192,Sum = 552},[3] = {Id = 113,Val = 8640,Sum = 24840}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--西方龙魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1452},[2] = {Id = 112,Val = 240,Sum = 792},[3] = {Id = 113,Val = 10800,Sum = 35640}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--西方龙魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 1980},[2] = {Id = 112,Val = 288,Sum = 1080},[3] = {Id = 113,Val = 12960,Sum = 48600}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--西方龙魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 2596},[2] = {Id = 112,Val = 336,Sum = 1416},[3] = {Id = 113,Val = 15120,Sum = 63720}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--西方龙魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 3300},[2] = {Id = 112,Val = 384,Sum = 1800},[3] = {Id = 113,Val = 17280,Sum = 81000}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--西方龙魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 110},[2] = {Id = 112,Val = 60,Sum = 60},[3] = {Id = 113,Val = 2700,Sum = 2700}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--西方龙魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 286},[2] = {Id = 112,Val = 96,Sum = 156},[3] = {Id = 113,Val = 4320,Sum = 7020}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--西方龙魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 242,Sum = 528},[2] = {Id = 112,Val = 132,Sum = 288},[3] = {Id = 113,Val = 5940,Sum = 12960}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--西方龙魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 880},[2] = {Id = 112,Val = 192,Sum = 480},[3] = {Id = 113,Val = 8640,Sum = 21600}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--西方龙魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 462,Sum = 1342},[2] = {Id = 112,Val = 252,Sum = 732},[3] = {Id = 113,Val = 11340,Sum = 32940}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--西方龙魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 605,Sum = 1947},[2] = {Id = 112,Val = 330,Sum = 1062},[3] = {Id = 113,Val = 14850,Sum = 47790}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--西方龙魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 715,Sum = 2662},[2] = {Id = 112,Val = 390,Sum = 1452},[3] = {Id = 113,Val = 17550,Sum = 65340}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--西方龙魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 825,Sum = 3487},[2] = {Id = 112,Val = 450,Sum = 1902},[3] = {Id = 113,Val = 20250,Sum = 85590}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--西方龙魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 935,Sum = 4422},[2] = {Id = 112,Val = 510,Sum = 2412},[3] = {Id = 113,Val = 22950,Sum = 108540}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--西方龙魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 154},[2] = {Id = 112,Val = 84,Sum = 84},[3] = {Id = 113,Val = 3780,Sum = 3780}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--西方龙魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 374},[2] = {Id = 112,Val = 120,Sum = 204},[3] = {Id = 113,Val = 5400,Sum = 9180}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--西方龙魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 286,Sum = 660},[2] = {Id = 112,Val = 156,Sum = 360},[3] = {Id = 113,Val = 7020,Sum = 16200}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--西方龙魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1100},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 10800,Sum = 27000}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--西方龙魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 572,Sum = 1672},[2] = {Id = 112,Val = 312,Sum = 912},[3] = {Id = 113,Val = 14040,Sum = 41040}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--西方龙魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 715,Sum = 2387},[2] = {Id = 112,Val = 390,Sum = 1302},[3] = {Id = 113,Val = 17550,Sum = 58590}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--西方龙魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 880,Sum = 3267},[2] = {Id = 112,Val = 480,Sum = 1782},[3] = {Id = 113,Val = 21600,Sum = 80190}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--西方龙魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1045,Sum = 4312},[2] = {Id = 112,Val = 570,Sum = 2352},[3] = {Id = 113,Val = 25650,Sum = 105840}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--西方龙魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1210,Sum = 5522},[2] = {Id = 112,Val = 660,Sum = 3012},[3] = {Id = 113,Val = 29700,Sum = 135540}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--西方龙魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 176},[2] = {Id = 112,Val = 96,Sum = 96},[3] = {Id = 113,Val = 4320,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--西方龙魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 440},[2] = {Id = 112,Val = 144,Sum = 240},[3] = {Id = 113,Val = 6480,Sum = 10800}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--西方龙魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 792},[2] = {Id = 112,Val = 192,Sum = 432},[3] = {Id = 113,Val = 8640,Sum = 19440}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--西方龙魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 1320},[2] = {Id = 112,Val = 288,Sum = 720},[3] = {Id = 113,Val = 12960,Sum = 32400}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--西方龙魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 2024},[2] = {Id = 112,Val = 384,Sum = 1104},[3] = {Id = 113,Val = 17280,Sum = 49680}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--西方龙魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 880,Sum = 2904},[2] = {Id = 112,Val = 480,Sum = 1584},[3] = {Id = 113,Val = 21600,Sum = 71280}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--西方龙魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1056,Sum = 3960},[2] = {Id = 112,Val = 576,Sum = 2160},[3] = {Id = 113,Val = 25920,Sum = 97200}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--西方龙魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 4576},[2] = {Id = 112,Val = 336,Sum = 2496},[3] = {Id = 113,Val = 15120,Sum = 112320}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--西方龙魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1408,Sum = 5984},[2] = {Id = 112,Val = 768,Sum = 3264},[3] = {Id = 113,Val = 34560,Sum = 146880}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--西方龙魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 198},[2] = {Id = 112,Val = 108,Sum = 108},[3] = {Id = 113,Val = 4860,Sum = 4860}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--西方龙魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 506},[2] = {Id = 112,Val = 168,Sum = 276},[3] = {Id = 113,Val = 7560,Sum = 12420}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--西方龙魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 418,Sum = 924},[2] = {Id = 112,Val = 228,Sum = 504},[3] = {Id = 113,Val = 10260,Sum = 22680}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--西方龙魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 1540},[2] = {Id = 112,Val = 336,Sum = 840},[3] = {Id = 113,Val = 15120,Sum = 37800}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--西方龙魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 825,Sum = 2365},[2] = {Id = 112,Val = 450,Sum = 1290},[3] = {Id = 113,Val = 20250,Sum = 58050}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--西方龙魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1012,Sum = 3377},[2] = {Id = 112,Val = 552,Sum = 1842},[3] = {Id = 113,Val = 24840,Sum = 82890}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--西方龙魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 4697},[2] = {Id = 112,Val = 720,Sum = 2562},[3] = {Id = 113,Val = 32400,Sum = 115290}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--西方龙魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1430,Sum = 6127},[2] = {Id = 112,Val = 780,Sum = 3342},[3] = {Id = 113,Val = 35100,Sum = 150390}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--西方龙魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1650,Sum = 7777},[2] = {Id = 112,Val = 900,Sum = 4242},[3] = {Id = 113,Val = 40500,Sum = 190890}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--西方龙魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 220},[2] = {Id = 112,Val = 120,Sum = 120},[3] = {Id = 113,Val = 5400,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--西方龙魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 572},[2] = {Id = 112,Val = 192,Sum = 312},[3] = {Id = 113,Val = 8640,Sum = 14040}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--西方龙魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 473,Sum = 1045},[2] = {Id = 112,Val = 258,Sum = 570},[3] = {Id = 113,Val = 11610,Sum = 25650}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--西方龙魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 1749},[2] = {Id = 112,Val = 384,Sum = 954},[3] = {Id = 113,Val = 17280,Sum = 42930}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--西方龙魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 935,Sum = 2684},[2] = {Id = 112,Val = 510,Sum = 1464},[3] = {Id = 113,Val = 22950,Sum = 65880}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--西方龙魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1166,Sum = 3850},[2] = {Id = 112,Val = 636,Sum = 2100},[3] = {Id = 113,Val = 28620,Sum = 94500}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--西方龙魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1397,Sum = 5247},[2] = {Id = 112,Val = 762,Sum = 2862},[3] = {Id = 113,Val = 34290,Sum = 128790}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--西方龙魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1628,Sum = 6875},[2] = {Id = 112,Val = 888,Sum = 3750},[3] = {Id = 113,Val = 39960,Sum = 168750}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--西方龙魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1870,Sum = 8745},[2] = {Id = 112,Val = 1020,Sum = 4770},[3] = {Id = 113,Val = 45900,Sum = 214650}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--西方龙魂珠-8 等级-9
				}
			}--西方龙专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--西方龙专属武器解封-0
			[1] = {PSkill = 130301611,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 25500},[2] = {Id = 1502016,Val = 80}}},--西方龙专属武器解封-1
			[2] = {PSkill = 130301611,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 52500},[2] = {Id = 1502016,Val = 80}}},--西方龙专属武器解封-2
			[3] = {PSkill = 130301611,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 118000},[2] = {Id = 1502016,Val = 120}}},--西方龙专属武器解封-3
			[4] = {PSkill = 130301611,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 207000},[2] = {Id = 1502016,Val = 120}}},--西方龙专属武器解封-4
			[5] = {PSkill = 130301611,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 512500},[2] = {Id = 1502016,Val = 160}}}--西方龙专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 720,Sum = 720}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--飞廉魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 33,Sum = 55},[3] = {Id = 113,Val = 1080,Sum = 1800}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--飞廉魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 198},[2] = {Id = 112,Val = 44,Sum = 99},[3] = {Id = 113,Val = 1440,Sum = 3240}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--飞廉魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 330},[2] = {Id = 112,Val = 66,Sum = 165},[3] = {Id = 113,Val = 2160,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--飞廉魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 506},[2] = {Id = 112,Val = 88,Sum = 253},[3] = {Id = 113,Val = 2880,Sum = 8280}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--飞廉魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 726},[2] = {Id = 112,Val = 110,Sum = 363},[3] = {Id = 113,Val = 3600,Sum = 11880}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--飞廉魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 990},[2] = {Id = 112,Val = 132,Sum = 495},[3] = {Id = 113,Val = 4320,Sum = 16200}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--飞廉魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 1298},[2] = {Id = 112,Val = 154,Sum = 649},[3] = {Id = 113,Val = 5040,Sum = 21240}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--飞廉魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1650},[2] = {Id = 112,Val = 176,Sum = 825},[3] = {Id = 113,Val = 5760,Sum = 27000}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--飞廉魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 55,Sum = 55},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 900,Sum = 900}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--飞廉魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 143},[2] = {Id = 112,Val = 44,Sum = 72},[3] = {Id = 113,Val = 1440,Sum = 2340}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--飞廉魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 253},[2] = {Id = 112,Val = 55,Sum = 127},[3] = {Id = 113,Val = 1800,Sum = 4140}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--飞廉魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 429},[2] = {Id = 112,Val = 88,Sum = 215},[3] = {Id = 113,Val = 2880,Sum = 7020}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--飞廉魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 242,Sum = 671},[2] = {Id = 112,Val = 121,Sum = 336},[3] = {Id = 113,Val = 3960,Sum = 10980}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--飞廉魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 979},[2] = {Id = 112,Val = 154,Sum = 490},[3] = {Id = 113,Val = 5040,Sum = 16020}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--飞廉魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1331},[2] = {Id = 112,Val = 176,Sum = 666},[3] = {Id = 113,Val = 5760,Sum = 21780}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--飞廉魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 418,Sum = 1749},[2] = {Id = 112,Val = 209,Sum = 875},[3] = {Id = 113,Val = 6840,Sum = 28620}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--飞廉魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 495,Sum = 2244},[2] = {Id = 112,Val = 248,Sum = 1123},[3] = {Id = 113,Val = 8100,Sum = 36720}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--飞廉魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 88},[2] = {Id = 112,Val = 44,Sum = 44},[3] = {Id = 113,Val = 1440,Sum = 1440}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--飞廉魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 220},[2] = {Id = 112,Val = 66,Sum = 110},[3] = {Id = 113,Val = 2160,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--飞廉魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 396},[2] = {Id = 112,Val = 88,Sum = 198},[3] = {Id = 113,Val = 2880,Sum = 6480}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--飞廉魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 660},[2] = {Id = 112,Val = 132,Sum = 330},[3] = {Id = 113,Val = 4320,Sum = 10800}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--飞廉魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1012},[2] = {Id = 112,Val = 176,Sum = 506},[3] = {Id = 113,Val = 5760,Sum = 16560}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--飞廉魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1452},[2] = {Id = 112,Val = 220,Sum = 726},[3] = {Id = 113,Val = 7200,Sum = 23760}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--飞廉魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 1980},[2] = {Id = 112,Val = 264,Sum = 990},[3] = {Id = 113,Val = 8640,Sum = 32400}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--飞廉魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 2596},[2] = {Id = 112,Val = 308,Sum = 1298},[3] = {Id = 113,Val = 10080,Sum = 42480}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--飞廉魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 3300},[2] = {Id = 112,Val = 352,Sum = 1650},[3] = {Id = 113,Val = 11520,Sum = 54000}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--飞廉魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 110},[2] = {Id = 112,Val = 55,Sum = 55},[3] = {Id = 113,Val = 1800,Sum = 1800}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--飞廉魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 286},[2] = {Id = 112,Val = 88,Sum = 143},[3] = {Id = 113,Val = 2880,Sum = 4680}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--飞廉魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 242,Sum = 528},[2] = {Id = 112,Val = 121,Sum = 264},[3] = {Id = 113,Val = 3960,Sum = 8640}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--飞廉魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 880},[2] = {Id = 112,Val = 176,Sum = 440},[3] = {Id = 113,Val = 5760,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--飞廉魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 462,Sum = 1342},[2] = {Id = 112,Val = 231,Sum = 671},[3] = {Id = 113,Val = 7560,Sum = 21960}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--飞廉魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 605,Sum = 1947},[2] = {Id = 112,Val = 303,Sum = 974},[3] = {Id = 113,Val = 9900,Sum = 31860}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--飞廉魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 715,Sum = 2662},[2] = {Id = 112,Val = 358,Sum = 1332},[3] = {Id = 113,Val = 11700,Sum = 43560}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--飞廉魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 825,Sum = 3487},[2] = {Id = 112,Val = 413,Sum = 1745},[3] = {Id = 113,Val = 13500,Sum = 57060}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--飞廉魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 935,Sum = 4422},[2] = {Id = 112,Val = 468,Sum = 2213},[3] = {Id = 113,Val = 15300,Sum = 72360}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--飞廉魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 154},[2] = {Id = 112,Val = 77,Sum = 77},[3] = {Id = 113,Val = 2520,Sum = 2520}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--飞廉魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 374},[2] = {Id = 112,Val = 110,Sum = 187},[3] = {Id = 113,Val = 3600,Sum = 6120}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--飞廉魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 286,Sum = 660},[2] = {Id = 112,Val = 143,Sum = 330},[3] = {Id = 113,Val = 4680,Sum = 10800}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--飞廉魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1100},[2] = {Id = 112,Val = 220,Sum = 550},[3] = {Id = 113,Val = 7200,Sum = 18000}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--飞廉魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 572,Sum = 1672},[2] = {Id = 112,Val = 286,Sum = 836},[3] = {Id = 113,Val = 9360,Sum = 27360}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--飞廉魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 715,Sum = 2387},[2] = {Id = 112,Val = 358,Sum = 1194},[3] = {Id = 113,Val = 11700,Sum = 39060}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--飞廉魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 880,Sum = 3267},[2] = {Id = 112,Val = 440,Sum = 1634},[3] = {Id = 113,Val = 14400,Sum = 53460}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--飞廉魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1045,Sum = 4312},[2] = {Id = 112,Val = 523,Sum = 2157},[3] = {Id = 113,Val = 17100,Sum = 70560}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--飞廉魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1210,Sum = 5522},[2] = {Id = 112,Val = 605,Sum = 2762},[3] = {Id = 113,Val = 19800,Sum = 90360}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--飞廉魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 176},[2] = {Id = 112,Val = 88,Sum = 88},[3] = {Id = 113,Val = 2880,Sum = 2880}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--飞廉魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 440},[2] = {Id = 112,Val = 132,Sum = 220},[3] = {Id = 113,Val = 4320,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--飞廉魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 792},[2] = {Id = 112,Val = 176,Sum = 396},[3] = {Id = 113,Val = 5760,Sum = 12960}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--飞廉魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 1320},[2] = {Id = 112,Val = 264,Sum = 660},[3] = {Id = 113,Val = 8640,Sum = 21600}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--飞廉魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 2024},[2] = {Id = 112,Val = 352,Sum = 1012},[3] = {Id = 113,Val = 11520,Sum = 33120}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--飞廉魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 880,Sum = 2904},[2] = {Id = 112,Val = 440,Sum = 1452},[3] = {Id = 113,Val = 14400,Sum = 47520}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--飞廉魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1056,Sum = 3960},[2] = {Id = 112,Val = 528,Sum = 1980},[3] = {Id = 113,Val = 17280,Sum = 64800}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--飞廉魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 4576},[2] = {Id = 112,Val = 308,Sum = 2288},[3] = {Id = 113,Val = 10080,Sum = 74880}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--飞廉魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1408,Sum = 5984},[2] = {Id = 112,Val = 704,Sum = 2992},[3] = {Id = 113,Val = 23040,Sum = 97920}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--飞廉魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 198},[2] = {Id = 112,Val = 99,Sum = 99},[3] = {Id = 113,Val = 3240,Sum = 3240}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--飞廉魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 506},[2] = {Id = 112,Val = 154,Sum = 253},[3] = {Id = 113,Val = 5040,Sum = 8280}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--飞廉魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 418,Sum = 924},[2] = {Id = 112,Val = 209,Sum = 462},[3] = {Id = 113,Val = 6840,Sum = 15120}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--飞廉魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 1540},[2] = {Id = 112,Val = 308,Sum = 770},[3] = {Id = 113,Val = 10080,Sum = 25200}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--飞廉魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 825,Sum = 2365},[2] = {Id = 112,Val = 413,Sum = 1183},[3] = {Id = 113,Val = 13500,Sum = 38700}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--飞廉魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1012,Sum = 3377},[2] = {Id = 112,Val = 506,Sum = 1689},[3] = {Id = 113,Val = 16560,Sum = 55260}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--飞廉魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 4697},[2] = {Id = 112,Val = 660,Sum = 2349},[3] = {Id = 113,Val = 21600,Sum = 76860}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--飞廉魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1430,Sum = 6127},[2] = {Id = 112,Val = 715,Sum = 3064},[3] = {Id = 113,Val = 23400,Sum = 100260}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--飞廉魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1650,Sum = 7777},[2] = {Id = 112,Val = 825,Sum = 3889},[3] = {Id = 113,Val = 27000,Sum = 127260}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--飞廉魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 220},[2] = {Id = 112,Val = 110,Sum = 110},[3] = {Id = 113,Val = 3600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--飞廉魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 572},[2] = {Id = 112,Val = 176,Sum = 286},[3] = {Id = 113,Val = 5760,Sum = 9360}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--飞廉魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 473,Sum = 1045},[2] = {Id = 112,Val = 237,Sum = 523},[3] = {Id = 113,Val = 7740,Sum = 17100}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--飞廉魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 1749},[2] = {Id = 112,Val = 352,Sum = 875},[3] = {Id = 113,Val = 11520,Sum = 28620}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--飞廉魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 935,Sum = 2684},[2] = {Id = 112,Val = 468,Sum = 1343},[3] = {Id = 113,Val = 15300,Sum = 43920}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--飞廉魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1166,Sum = 3850},[2] = {Id = 112,Val = 583,Sum = 1926},[3] = {Id = 113,Val = 19080,Sum = 63000}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--飞廉魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1397,Sum = 5247},[2] = {Id = 112,Val = 699,Sum = 2625},[3] = {Id = 113,Val = 22860,Sum = 85860}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--飞廉魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1628,Sum = 6875},[2] = {Id = 112,Val = 814,Sum = 3439},[3] = {Id = 113,Val = 26640,Sum = 112500}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--飞廉魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1870,Sum = 8745},[2] = {Id = 112,Val = 935,Sum = 4374},[3] = {Id = 113,Val = 30600,Sum = 143100}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--飞廉魂珠-8 等级-9
				}
			}--飞廉专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--飞廉专属武器解封-0
			[1] = {PSkill = 130301711,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 18500},[2] = {Id = 1502017,Val = 40}}},--飞廉专属武器解封-1
			[2] = {PSkill = 130301711,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 37500},[2] = {Id = 1502017,Val = 40}}},--飞廉专属武器解封-2
			[3] = {PSkill = 130301711,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 84000},[2] = {Id = 1502017,Val = 60}}},--飞廉专属武器解封-3
			[4] = {PSkill = 130301711,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 148000},[2] = {Id = 1502017,Val = 60}}},--飞廉专属武器解封-4
			[5] = {PSkill = 130301711,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 366000},[2] = {Id = 1502017,Val = 80}}}--飞廉专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 800,Sum = 800}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--高顺魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 30,Sum = 50},[3] = {Id = 113,Val = 1200,Sum = 2000}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--高顺魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 198},[2] = {Id = 112,Val = 40,Sum = 90},[3] = {Id = 113,Val = 1600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--高顺魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 330},[2] = {Id = 112,Val = 60,Sum = 150},[3] = {Id = 113,Val = 2400,Sum = 6000}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--高顺魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 506},[2] = {Id = 112,Val = 80,Sum = 230},[3] = {Id = 113,Val = 3200,Sum = 9200}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--高顺魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 726},[2] = {Id = 112,Val = 100,Sum = 330},[3] = {Id = 113,Val = 4000,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--高顺魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 990},[2] = {Id = 112,Val = 120,Sum = 450},[3] = {Id = 113,Val = 4800,Sum = 18000}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--高顺魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 1298},[2] = {Id = 112,Val = 140,Sum = 590},[3] = {Id = 113,Val = 5600,Sum = 23600}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--高顺魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1650},[2] = {Id = 112,Val = 160,Sum = 750},[3] = {Id = 113,Val = 6400,Sum = 30000}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--高顺魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 55,Sum = 55},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 1000,Sum = 1000}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--高顺魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 143},[2] = {Id = 112,Val = 40,Sum = 65},[3] = {Id = 113,Val = 1600,Sum = 2600}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--高顺魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 253},[2] = {Id = 112,Val = 50,Sum = 115},[3] = {Id = 113,Val = 2000,Sum = 4600}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--高顺魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 429},[2] = {Id = 112,Val = 80,Sum = 195},[3] = {Id = 113,Val = 3200,Sum = 7800}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--高顺魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 242,Sum = 671},[2] = {Id = 112,Val = 110,Sum = 305},[3] = {Id = 113,Val = 4400,Sum = 12200}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--高顺魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 979},[2] = {Id = 112,Val = 140,Sum = 445},[3] = {Id = 113,Val = 5600,Sum = 17800}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--高顺魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1331},[2] = {Id = 112,Val = 160,Sum = 605},[3] = {Id = 113,Val = 6400,Sum = 24200}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--高顺魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 418,Sum = 1749},[2] = {Id = 112,Val = 190,Sum = 795},[3] = {Id = 113,Val = 7600,Sum = 31800}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--高顺魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 495,Sum = 2244},[2] = {Id = 112,Val = 225,Sum = 1020},[3] = {Id = 113,Val = 9000,Sum = 40800}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--高顺魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 88},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 1600,Sum = 1600}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--高顺魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 220},[2] = {Id = 112,Val = 60,Sum = 100},[3] = {Id = 113,Val = 2400,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--高顺魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 396},[2] = {Id = 112,Val = 80,Sum = 180},[3] = {Id = 113,Val = 3200,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--高顺魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 660},[2] = {Id = 112,Val = 120,Sum = 300},[3] = {Id = 113,Val = 4800,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--高顺魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1012},[2] = {Id = 112,Val = 160,Sum = 460},[3] = {Id = 113,Val = 6400,Sum = 18400}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--高顺魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1452},[2] = {Id = 112,Val = 200,Sum = 660},[3] = {Id = 113,Val = 8000,Sum = 26400}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--高顺魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 1980},[2] = {Id = 112,Val = 240,Sum = 900},[3] = {Id = 113,Val = 9600,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--高顺魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 2596},[2] = {Id = 112,Val = 280,Sum = 1180},[3] = {Id = 113,Val = 11200,Sum = 47200}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--高顺魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 3300},[2] = {Id = 112,Val = 320,Sum = 1500},[3] = {Id = 113,Val = 12800,Sum = 60000}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--高顺魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 110},[2] = {Id = 112,Val = 50,Sum = 50},[3] = {Id = 113,Val = 2000,Sum = 2000}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--高顺魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 286},[2] = {Id = 112,Val = 80,Sum = 130},[3] = {Id = 113,Val = 3200,Sum = 5200}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--高顺魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 242,Sum = 528},[2] = {Id = 112,Val = 110,Sum = 240},[3] = {Id = 113,Val = 4400,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--高顺魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 880},[2] = {Id = 112,Val = 160,Sum = 400},[3] = {Id = 113,Val = 6400,Sum = 16000}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--高顺魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 462,Sum = 1342},[2] = {Id = 112,Val = 210,Sum = 610},[3] = {Id = 113,Val = 8400,Sum = 24400}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--高顺魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 605,Sum = 1947},[2] = {Id = 112,Val = 275,Sum = 885},[3] = {Id = 113,Val = 11000,Sum = 35400}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--高顺魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 715,Sum = 2662},[2] = {Id = 112,Val = 325,Sum = 1210},[3] = {Id = 113,Val = 13000,Sum = 48400}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--高顺魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 825,Sum = 3487},[2] = {Id = 112,Val = 375,Sum = 1585},[3] = {Id = 113,Val = 15000,Sum = 63400}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--高顺魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 935,Sum = 4422},[2] = {Id = 112,Val = 425,Sum = 2010},[3] = {Id = 113,Val = 17000,Sum = 80400}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--高顺魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 154},[2] = {Id = 112,Val = 70,Sum = 70},[3] = {Id = 113,Val = 2800,Sum = 2800}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--高顺魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 374},[2] = {Id = 112,Val = 100,Sum = 170},[3] = {Id = 113,Val = 4000,Sum = 6800}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--高顺魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 286,Sum = 660},[2] = {Id = 112,Val = 130,Sum = 300},[3] = {Id = 113,Val = 5200,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--高顺魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1100},[2] = {Id = 112,Val = 200,Sum = 500},[3] = {Id = 113,Val = 8000,Sum = 20000}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--高顺魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 572,Sum = 1672},[2] = {Id = 112,Val = 260,Sum = 760},[3] = {Id = 113,Val = 10400,Sum = 30400}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--高顺魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 715,Sum = 2387},[2] = {Id = 112,Val = 325,Sum = 1085},[3] = {Id = 113,Val = 13000,Sum = 43400}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--高顺魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 880,Sum = 3267},[2] = {Id = 112,Val = 400,Sum = 1485},[3] = {Id = 113,Val = 16000,Sum = 59400}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--高顺魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1045,Sum = 4312},[2] = {Id = 112,Val = 475,Sum = 1960},[3] = {Id = 113,Val = 19000,Sum = 78400}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--高顺魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1210,Sum = 5522},[2] = {Id = 112,Val = 550,Sum = 2510},[3] = {Id = 113,Val = 22000,Sum = 100400}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--高顺魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 176},[2] = {Id = 112,Val = 80,Sum = 80},[3] = {Id = 113,Val = 3200,Sum = 3200}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--高顺魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 440},[2] = {Id = 112,Val = 120,Sum = 200},[3] = {Id = 113,Val = 4800,Sum = 8000}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--高顺魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 792},[2] = {Id = 112,Val = 160,Sum = 360},[3] = {Id = 113,Val = 6400,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--高顺魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 1320},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 9600,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--高顺魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 2024},[2] = {Id = 112,Val = 320,Sum = 920},[3] = {Id = 113,Val = 12800,Sum = 36800}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--高顺魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 880,Sum = 2904},[2] = {Id = 112,Val = 400,Sum = 1320},[3] = {Id = 113,Val = 16000,Sum = 52800}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--高顺魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1056,Sum = 3960},[2] = {Id = 112,Val = 480,Sum = 1800},[3] = {Id = 113,Val = 19200,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--高顺魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 4576},[2] = {Id = 112,Val = 280,Sum = 2080},[3] = {Id = 113,Val = 11200,Sum = 83200}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--高顺魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1408,Sum = 5984},[2] = {Id = 112,Val = 640,Sum = 2720},[3] = {Id = 113,Val = 25600,Sum = 108800}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--高顺魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 198},[2] = {Id = 112,Val = 90,Sum = 90},[3] = {Id = 113,Val = 3600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--高顺魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 506},[2] = {Id = 112,Val = 140,Sum = 230},[3] = {Id = 113,Val = 5600,Sum = 9200}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--高顺魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 418,Sum = 924},[2] = {Id = 112,Val = 190,Sum = 420},[3] = {Id = 113,Val = 7600,Sum = 16800}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--高顺魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 1540},[2] = {Id = 112,Val = 280,Sum = 700},[3] = {Id = 113,Val = 11200,Sum = 28000}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--高顺魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 825,Sum = 2365},[2] = {Id = 112,Val = 375,Sum = 1075},[3] = {Id = 113,Val = 15000,Sum = 43000}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--高顺魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1012,Sum = 3377},[2] = {Id = 112,Val = 460,Sum = 1535},[3] = {Id = 113,Val = 18400,Sum = 61400}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--高顺魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 4697},[2] = {Id = 112,Val = 600,Sum = 2135},[3] = {Id = 113,Val = 24000,Sum = 85400}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--高顺魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1430,Sum = 6127},[2] = {Id = 112,Val = 650,Sum = 2785},[3] = {Id = 113,Val = 26000,Sum = 111400}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--高顺魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1650,Sum = 7777},[2] = {Id = 112,Val = 750,Sum = 3535},[3] = {Id = 113,Val = 30000,Sum = 141400}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--高顺魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 220},[2] = {Id = 112,Val = 100,Sum = 100},[3] = {Id = 113,Val = 4000,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--高顺魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 572},[2] = {Id = 112,Val = 160,Sum = 260},[3] = {Id = 113,Val = 6400,Sum = 10400}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--高顺魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 473,Sum = 1045},[2] = {Id = 112,Val = 215,Sum = 475},[3] = {Id = 113,Val = 8600,Sum = 19000}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--高顺魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 1749},[2] = {Id = 112,Val = 320,Sum = 795},[3] = {Id = 113,Val = 12800,Sum = 31800}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--高顺魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 935,Sum = 2684},[2] = {Id = 112,Val = 425,Sum = 1220},[3] = {Id = 113,Val = 17000,Sum = 48800}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--高顺魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1166,Sum = 3850},[2] = {Id = 112,Val = 530,Sum = 1750},[3] = {Id = 113,Val = 21200,Sum = 70000}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--高顺魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1397,Sum = 5247},[2] = {Id = 112,Val = 635,Sum = 2385},[3] = {Id = 113,Val = 25400,Sum = 95400}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--高顺魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1628,Sum = 6875},[2] = {Id = 112,Val = 740,Sum = 3125},[3] = {Id = 113,Val = 29600,Sum = 125000}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--高顺魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1870,Sum = 8745},[2] = {Id = 112,Val = 850,Sum = 3975},[3] = {Id = 113,Val = 34000,Sum = 159000}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--高顺魂珠-8 等级-9
				}
			}--高顺专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--高顺专属武器解封-0
			[1] = {PSkill = 130302011,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 22000},[2] = {Id = 1502020,Val = 40}}},--高顺专属武器解封-1
			[2] = {PSkill = 130302011,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 45000},[2] = {Id = 1502020,Val = 40}}},--高顺专属武器解封-2
			[3] = {PSkill = 130302011,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 101000},[2] = {Id = 1502020,Val = 60}}},--高顺专属武器解封-3
			[4] = {PSkill = 130302011,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 177500},[2] = {Id = 1502020,Val = 60}}},--高顺专属武器解封-4
			[5] = {PSkill = 130302011,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 439500},[2] = {Id = 1502020,Val = 80}}}--高顺专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 48,Sum = 48},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 640,Sum = 640}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--烈风螳螂魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 120},[2] = {Id = 112,Val = 30,Sum = 50},[3] = {Id = 113,Val = 960,Sum = 1600}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--烈风螳螂魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 216},[2] = {Id = 112,Val = 40,Sum = 90},[3] = {Id = 113,Val = 1280,Sum = 2880}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--烈风螳螂魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 360},[2] = {Id = 112,Val = 60,Sum = 150},[3] = {Id = 113,Val = 1920,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--烈风螳螂魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 552},[2] = {Id = 112,Val = 80,Sum = 230},[3] = {Id = 113,Val = 2560,Sum = 7360}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--烈风螳螂魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 792},[2] = {Id = 112,Val = 100,Sum = 330},[3] = {Id = 113,Val = 3200,Sum = 10560}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--烈风螳螂魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1080},[2] = {Id = 112,Val = 120,Sum = 450},[3] = {Id = 113,Val = 3840,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--烈风螳螂魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1416},[2] = {Id = 112,Val = 140,Sum = 590},[3] = {Id = 113,Val = 4480,Sum = 18880}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--烈风螳螂魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1800},[2] = {Id = 112,Val = 160,Sum = 750},[3] = {Id = 113,Val = 5120,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--烈风螳螂魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 60},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 800,Sum = 800}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--烈风螳螂魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 156},[2] = {Id = 112,Val = 40,Sum = 65},[3] = {Id = 113,Val = 1280,Sum = 2080}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--烈风螳螂魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 276},[2] = {Id = 112,Val = 50,Sum = 115},[3] = {Id = 113,Val = 1600,Sum = 3680}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--烈风螳螂魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 468},[2] = {Id = 112,Val = 80,Sum = 195},[3] = {Id = 113,Val = 2560,Sum = 6240}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--烈风螳螂魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 732},[2] = {Id = 112,Val = 110,Sum = 305},[3] = {Id = 113,Val = 3520,Sum = 9760}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--烈风螳螂魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1068},[2] = {Id = 112,Val = 140,Sum = 445},[3] = {Id = 113,Val = 4480,Sum = 14240}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--烈风螳螂魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1452},[2] = {Id = 112,Val = 160,Sum = 605},[3] = {Id = 113,Val = 5120,Sum = 19360}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--烈风螳螂魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1908},[2] = {Id = 112,Val = 190,Sum = 795},[3] = {Id = 113,Val = 6080,Sum = 25440}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--烈风螳螂魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 2448},[2] = {Id = 112,Val = 225,Sum = 1020},[3] = {Id = 113,Val = 7200,Sum = 32640}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--烈风螳螂魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 96},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 1280,Sum = 1280}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--烈风螳螂魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 240},[2] = {Id = 112,Val = 60,Sum = 100},[3] = {Id = 113,Val = 1920,Sum = 3200}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--烈风螳螂魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 432},[2] = {Id = 112,Val = 80,Sum = 180},[3] = {Id = 113,Val = 2560,Sum = 5760}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--烈风螳螂魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 720},[2] = {Id = 112,Val = 120,Sum = 300},[3] = {Id = 113,Val = 3840,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--烈风螳螂魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1104},[2] = {Id = 112,Val = 160,Sum = 460},[3] = {Id = 113,Val = 5120,Sum = 14720}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--烈风螳螂魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1584},[2] = {Id = 112,Val = 200,Sum = 660},[3] = {Id = 113,Val = 6400,Sum = 21120}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--烈风螳螂魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 2160},[2] = {Id = 112,Val = 240,Sum = 900},[3] = {Id = 113,Val = 7680,Sum = 28800}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--烈风螳螂魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 2832},[2] = {Id = 112,Val = 280,Sum = 1180},[3] = {Id = 113,Val = 8960,Sum = 37760}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--烈风螳螂魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 3600},[2] = {Id = 112,Val = 320,Sum = 1500},[3] = {Id = 113,Val = 10240,Sum = 48000}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--烈风螳螂魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 120},[2] = {Id = 112,Val = 50,Sum = 50},[3] = {Id = 113,Val = 1600,Sum = 1600}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--烈风螳螂魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 312},[2] = {Id = 112,Val = 80,Sum = 130},[3] = {Id = 113,Val = 2560,Sum = 4160}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--烈风螳螂魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 576},[2] = {Id = 112,Val = 110,Sum = 240},[3] = {Id = 113,Val = 3520,Sum = 7680}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--烈风螳螂魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 960},[2] = {Id = 112,Val = 160,Sum = 400},[3] = {Id = 113,Val = 5120,Sum = 12800}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--烈风螳螂魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 1464},[2] = {Id = 112,Val = 210,Sum = 610},[3] = {Id = 113,Val = 6720,Sum = 19520}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--烈风螳螂魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 660,Sum = 2124},[2] = {Id = 112,Val = 275,Sum = 885},[3] = {Id = 113,Val = 8800,Sum = 28320}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--烈风螳螂魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2904},[2] = {Id = 112,Val = 325,Sum = 1210},[3] = {Id = 113,Val = 10400,Sum = 38720}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--烈风螳螂魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 3804},[2] = {Id = 112,Val = 375,Sum = 1585},[3] = {Id = 113,Val = 12000,Sum = 50720}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--烈风螳螂魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 4824},[2] = {Id = 112,Val = 425,Sum = 2010},[3] = {Id = 113,Val = 13600,Sum = 64320}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--烈风螳螂魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 168},[2] = {Id = 112,Val = 70,Sum = 70},[3] = {Id = 113,Val = 2240,Sum = 2240}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--烈风螳螂魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 408},[2] = {Id = 112,Val = 100,Sum = 170},[3] = {Id = 113,Val = 3200,Sum = 5440}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--烈风螳螂魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 720},[2] = {Id = 112,Val = 130,Sum = 300},[3] = {Id = 113,Val = 4160,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--烈风螳螂魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1200},[2] = {Id = 112,Val = 200,Sum = 500},[3] = {Id = 113,Val = 6400,Sum = 16000}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--烈风螳螂魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 624,Sum = 1824},[2] = {Id = 112,Val = 260,Sum = 760},[3] = {Id = 113,Val = 8320,Sum = 24320}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--烈风螳螂魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2604},[2] = {Id = 112,Val = 325,Sum = 1085},[3] = {Id = 113,Val = 10400,Sum = 34720}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--烈风螳螂魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3564},[2] = {Id = 112,Val = 400,Sum = 1485},[3] = {Id = 113,Val = 12800,Sum = 47520}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--烈风螳螂魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1140,Sum = 4704},[2] = {Id = 112,Val = 475,Sum = 1960},[3] = {Id = 113,Val = 15200,Sum = 62720}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--烈风螳螂魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 6024},[2] = {Id = 112,Val = 550,Sum = 2510},[3] = {Id = 113,Val = 17600,Sum = 80320}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--烈风螳螂魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 192},[2] = {Id = 112,Val = 80,Sum = 80},[3] = {Id = 113,Val = 2560,Sum = 2560}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--烈风螳螂魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 480},[2] = {Id = 112,Val = 120,Sum = 200},[3] = {Id = 113,Val = 3840,Sum = 6400}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--烈风螳螂魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 864},[2] = {Id = 112,Val = 160,Sum = 360},[3] = {Id = 113,Val = 5120,Sum = 11520}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--烈风螳螂魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1440},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 7680,Sum = 19200}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--烈风螳螂魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 2208},[2] = {Id = 112,Val = 320,Sum = 920},[3] = {Id = 113,Val = 10240,Sum = 29440}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--烈风螳螂魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3168},[2] = {Id = 112,Val = 400,Sum = 1320},[3] = {Id = 113,Val = 12800,Sum = 42240}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--烈风螳螂魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1152,Sum = 4320},[2] = {Id = 112,Val = 480,Sum = 1800},[3] = {Id = 113,Val = 15360,Sum = 57600}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--烈风螳螂魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 4992},[2] = {Id = 112,Val = 280,Sum = 2080},[3] = {Id = 113,Val = 8960,Sum = 66560}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--烈风螳螂魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1536,Sum = 6528},[2] = {Id = 112,Val = 640,Sum = 2720},[3] = {Id = 113,Val = 20480,Sum = 87040}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--烈风螳螂魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 216},[2] = {Id = 112,Val = 90,Sum = 90},[3] = {Id = 113,Val = 2880,Sum = 2880}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--烈风螳螂魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 552},[2] = {Id = 112,Val = 140,Sum = 230},[3] = {Id = 113,Val = 4480,Sum = 7360}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--烈风螳螂魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1008},[2] = {Id = 112,Val = 190,Sum = 420},[3] = {Id = 113,Val = 6080,Sum = 13440}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--烈风螳螂魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 1680},[2] = {Id = 112,Val = 280,Sum = 700},[3] = {Id = 113,Val = 8960,Sum = 22400}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--烈风螳螂魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 2580},[2] = {Id = 112,Val = 375,Sum = 1075},[3] = {Id = 113,Val = 12000,Sum = 34400}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--烈风螳螂魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1104,Sum = 3684},[2] = {Id = 112,Val = 460,Sum = 1535},[3] = {Id = 113,Val = 14720,Sum = 49120}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--烈风螳螂魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1440,Sum = 5124},[2] = {Id = 112,Val = 600,Sum = 2135},[3] = {Id = 113,Val = 19200,Sum = 68320}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--烈风螳螂魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1560,Sum = 6684},[2] = {Id = 112,Val = 650,Sum = 2785},[3] = {Id = 113,Val = 20800,Sum = 89120}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--烈风螳螂魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1800,Sum = 8484},[2] = {Id = 112,Val = 750,Sum = 3535},[3] = {Id = 113,Val = 24000,Sum = 113120}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--烈风螳螂魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 240},[2] = {Id = 112,Val = 100,Sum = 100},[3] = {Id = 113,Val = 3200,Sum = 3200}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--烈风螳螂魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 624},[2] = {Id = 112,Val = 160,Sum = 260},[3] = {Id = 113,Val = 5120,Sum = 8320}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--烈风螳螂魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 516,Sum = 1140},[2] = {Id = 112,Val = 215,Sum = 475},[3] = {Id = 113,Val = 6880,Sum = 15200}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--烈风螳螂魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 1908},[2] = {Id = 112,Val = 320,Sum = 795},[3] = {Id = 113,Val = 10240,Sum = 25440}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--烈风螳螂魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 2928},[2] = {Id = 112,Val = 425,Sum = 1220},[3] = {Id = 113,Val = 13600,Sum = 39040}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--烈风螳螂魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1272,Sum = 4200},[2] = {Id = 112,Val = 530,Sum = 1750},[3] = {Id = 113,Val = 16960,Sum = 56000}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--烈风螳螂魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1524,Sum = 5724},[2] = {Id = 112,Val = 635,Sum = 2385},[3] = {Id = 113,Val = 20320,Sum = 76320}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--烈风螳螂魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1776,Sum = 7500},[2] = {Id = 112,Val = 740,Sum = 3125},[3] = {Id = 113,Val = 23680,Sum = 100000}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--烈风螳螂魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2040,Sum = 9540},[2] = {Id = 112,Val = 850,Sum = 3975},[3] = {Id = 113,Val = 27200,Sum = 127200}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--烈风螳螂魂珠-8 等级-9
				}
			}--烈风螳螂专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--烈风螳螂专属武器解封-0
			[1] = {PSkill = 130302111,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 18500},[2] = {Id = 1502021,Val = 40}}},--烈风螳螂专属武器解封-1
			[2] = {PSkill = 130302111,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 37500},[2] = {Id = 1502021,Val = 40}}},--烈风螳螂专属武器解封-2
			[3] = {PSkill = 130302111,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 84000},[2] = {Id = 1502021,Val = 60}}},--烈风螳螂专属武器解封-3
			[4] = {PSkill = 130302111,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 148000},[2] = {Id = 1502021,Val = 60}}},--烈风螳螂专属武器解封-4
			[5] = {PSkill = 130302111,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 366000},[2] = {Id = 1502021,Val = 80}}}--烈风螳螂专属武器解封-5
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
					[1] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 40},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 800,Sum = 800}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--朱仙魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 100},[2] = {Id = 112,Val = 30,Sum = 50},[3] = {Id = 113,Val = 1200,Sum = 2000}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--朱仙魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 180},[2] = {Id = 112,Val = 40,Sum = 90},[3] = {Id = 113,Val = 1600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--朱仙魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 300},[2] = {Id = 112,Val = 60,Sum = 150},[3] = {Id = 113,Val = 2400,Sum = 6000}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--朱仙魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 460},[2] = {Id = 112,Val = 80,Sum = 230},[3] = {Id = 113,Val = 3200,Sum = 9200}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--朱仙魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 660},[2] = {Id = 112,Val = 100,Sum = 330},[3] = {Id = 113,Val = 4000,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--朱仙魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 900},[2] = {Id = 112,Val = 120,Sum = 450},[3] = {Id = 113,Val = 4800,Sum = 18000}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--朱仙魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 1180},[2] = {Id = 112,Val = 140,Sum = 590},[3] = {Id = 113,Val = 5600,Sum = 23600}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--朱仙魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 1500},[2] = {Id = 112,Val = 160,Sum = 750},[3] = {Id = 113,Val = 6400,Sum = 30000}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--朱仙魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 50},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 1000,Sum = 1000}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--朱仙魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 130},[2] = {Id = 112,Val = 40,Sum = 65},[3] = {Id = 113,Val = 1600,Sum = 2600}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--朱仙魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 230},[2] = {Id = 112,Val = 50,Sum = 115},[3] = {Id = 113,Val = 2000,Sum = 4600}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--朱仙魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 390},[2] = {Id = 112,Val = 80,Sum = 195},[3] = {Id = 113,Val = 3200,Sum = 7800}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--朱仙魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 610},[2] = {Id = 112,Val = 110,Sum = 305},[3] = {Id = 113,Val = 4400,Sum = 12200}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--朱仙魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 890},[2] = {Id = 112,Val = 140,Sum = 445},[3] = {Id = 113,Val = 5600,Sum = 17800}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--朱仙魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 1210},[2] = {Id = 112,Val = 160,Sum = 605},[3] = {Id = 113,Val = 6400,Sum = 24200}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--朱仙魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 380,Sum = 1590},[2] = {Id = 112,Val = 190,Sum = 795},[3] = {Id = 113,Val = 7600,Sum = 31800}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--朱仙魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 450,Sum = 2040},[2] = {Id = 112,Val = 225,Sum = 1020},[3] = {Id = 113,Val = 9000,Sum = 40800}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--朱仙魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 80},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 1600,Sum = 1600}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--朱仙魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 200},[2] = {Id = 112,Val = 60,Sum = 100},[3] = {Id = 113,Val = 2400,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--朱仙魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 360},[2] = {Id = 112,Val = 80,Sum = 180},[3] = {Id = 113,Val = 3200,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--朱仙魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 600},[2] = {Id = 112,Val = 120,Sum = 300},[3] = {Id = 113,Val = 4800,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--朱仙魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 920},[2] = {Id = 112,Val = 160,Sum = 460},[3] = {Id = 113,Val = 6400,Sum = 18400}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--朱仙魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 400,Sum = 1320},[2] = {Id = 112,Val = 200,Sum = 660},[3] = {Id = 113,Val = 8000,Sum = 26400}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--朱仙魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1800},[2] = {Id = 112,Val = 240,Sum = 900},[3] = {Id = 113,Val = 9600,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--朱仙魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 2360},[2] = {Id = 112,Val = 280,Sum = 1180},[3] = {Id = 113,Val = 11200,Sum = 47200}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--朱仙魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 3000},[2] = {Id = 112,Val = 320,Sum = 1500},[3] = {Id = 113,Val = 12800,Sum = 60000}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--朱仙魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 100},[2] = {Id = 112,Val = 50,Sum = 50},[3] = {Id = 113,Val = 2000,Sum = 2000}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--朱仙魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 260},[2] = {Id = 112,Val = 80,Sum = 130},[3] = {Id = 113,Val = 3200,Sum = 5200}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--朱仙魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 480},[2] = {Id = 112,Val = 110,Sum = 240},[3] = {Id = 113,Val = 4400,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--朱仙魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 800},[2] = {Id = 112,Val = 160,Sum = 400},[3] = {Id = 113,Val = 6400,Sum = 16000}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--朱仙魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 420,Sum = 1220},[2] = {Id = 112,Val = 210,Sum = 610},[3] = {Id = 113,Val = 8400,Sum = 24400}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--朱仙魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 550,Sum = 1770},[2] = {Id = 112,Val = 275,Sum = 885},[3] = {Id = 113,Val = 11000,Sum = 35400}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--朱仙魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 650,Sum = 2420},[2] = {Id = 112,Val = 325,Sum = 1210},[3] = {Id = 113,Val = 13000,Sum = 48400}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--朱仙魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 750,Sum = 3170},[2] = {Id = 112,Val = 375,Sum = 1585},[3] = {Id = 113,Val = 15000,Sum = 63400}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--朱仙魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 850,Sum = 4020},[2] = {Id = 112,Val = 425,Sum = 2010},[3] = {Id = 113,Val = 17000,Sum = 80400}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--朱仙魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 140,Sum = 140},[2] = {Id = 112,Val = 70,Sum = 70},[3] = {Id = 113,Val = 2800,Sum = 2800}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--朱仙魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 340},[2] = {Id = 112,Val = 100,Sum = 170},[3] = {Id = 113,Val = 4000,Sum = 6800}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--朱仙魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 260,Sum = 600},[2] = {Id = 112,Val = 130,Sum = 300},[3] = {Id = 113,Val = 5200,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--朱仙魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 400,Sum = 1000},[2] = {Id = 112,Val = 200,Sum = 500},[3] = {Id = 113,Val = 8000,Sum = 20000}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--朱仙魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 520,Sum = 1520},[2] = {Id = 112,Val = 260,Sum = 760},[3] = {Id = 113,Val = 10400,Sum = 30400}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--朱仙魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 650,Sum = 2170},[2] = {Id = 112,Val = 325,Sum = 1085},[3] = {Id = 113,Val = 13000,Sum = 43400}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--朱仙魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 800,Sum = 2970},[2] = {Id = 112,Val = 400,Sum = 1485},[3] = {Id = 113,Val = 16000,Sum = 59400}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--朱仙魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 950,Sum = 3920},[2] = {Id = 112,Val = 475,Sum = 1960},[3] = {Id = 113,Val = 19000,Sum = 78400}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--朱仙魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1100,Sum = 5020},[2] = {Id = 112,Val = 550,Sum = 2510},[3] = {Id = 113,Val = 22000,Sum = 100400}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--朱仙魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 160},[2] = {Id = 112,Val = 80,Sum = 80},[3] = {Id = 113,Val = 3200,Sum = 3200}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--朱仙魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 400},[2] = {Id = 112,Val = 120,Sum = 200},[3] = {Id = 113,Val = 4800,Sum = 8000}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--朱仙魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 720},[2] = {Id = 112,Val = 160,Sum = 360},[3] = {Id = 113,Val = 6400,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--朱仙魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1200},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 9600,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--朱仙魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 1840},[2] = {Id = 112,Val = 320,Sum = 920},[3] = {Id = 113,Val = 12800,Sum = 36800}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--朱仙魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 800,Sum = 2640},[2] = {Id = 112,Val = 400,Sum = 1320},[3] = {Id = 113,Val = 16000,Sum = 52800}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--朱仙魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3600},[2] = {Id = 112,Val = 480,Sum = 1800},[3] = {Id = 113,Val = 19200,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--朱仙魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 4160},[2] = {Id = 112,Val = 280,Sum = 2080},[3] = {Id = 113,Val = 11200,Sum = 83200}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--朱仙魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1280,Sum = 5440},[2] = {Id = 112,Val = 640,Sum = 2720},[3] = {Id = 113,Val = 25600,Sum = 108800}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--朱仙魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 180},[2] = {Id = 112,Val = 90,Sum = 90},[3] = {Id = 113,Val = 3600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--朱仙魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 460},[2] = {Id = 112,Val = 140,Sum = 230},[3] = {Id = 113,Val = 5600,Sum = 9200}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--朱仙魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 380,Sum = 840},[2] = {Id = 112,Val = 190,Sum = 420},[3] = {Id = 113,Val = 7600,Sum = 16800}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--朱仙魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 1400},[2] = {Id = 112,Val = 280,Sum = 700},[3] = {Id = 113,Val = 11200,Sum = 28000}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--朱仙魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 750,Sum = 2150},[2] = {Id = 112,Val = 375,Sum = 1075},[3] = {Id = 113,Val = 15000,Sum = 43000}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--朱仙魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 920,Sum = 3070},[2] = {Id = 112,Val = 460,Sum = 1535},[3] = {Id = 113,Val = 18400,Sum = 61400}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--朱仙魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1200,Sum = 4270},[2] = {Id = 112,Val = 600,Sum = 2135},[3] = {Id = 113,Val = 24000,Sum = 85400}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--朱仙魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1300,Sum = 5570},[2] = {Id = 112,Val = 650,Sum = 2785},[3] = {Id = 113,Val = 26000,Sum = 111400}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--朱仙魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1500,Sum = 7070},[2] = {Id = 112,Val = 750,Sum = 3535},[3] = {Id = 113,Val = 30000,Sum = 141400}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--朱仙魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 200},[2] = {Id = 112,Val = 100,Sum = 100},[3] = {Id = 113,Val = 4000,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--朱仙魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 520},[2] = {Id = 112,Val = 160,Sum = 260},[3] = {Id = 113,Val = 6400,Sum = 10400}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--朱仙魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 430,Sum = 950},[2] = {Id = 112,Val = 215,Sum = 475},[3] = {Id = 113,Val = 8600,Sum = 19000}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--朱仙魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 1590},[2] = {Id = 112,Val = 320,Sum = 795},[3] = {Id = 113,Val = 12800,Sum = 31800}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--朱仙魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 850,Sum = 2440},[2] = {Id = 112,Val = 425,Sum = 1220},[3] = {Id = 113,Val = 17000,Sum = 48800}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--朱仙魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1060,Sum = 3500},[2] = {Id = 112,Val = 530,Sum = 1750},[3] = {Id = 113,Val = 21200,Sum = 70000}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--朱仙魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1270,Sum = 4770},[2] = {Id = 112,Val = 635,Sum = 2385},[3] = {Id = 113,Val = 25400,Sum = 95400}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--朱仙魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1480,Sum = 6250},[2] = {Id = 112,Val = 740,Sum = 3125},[3] = {Id = 113,Val = 29600,Sum = 125000}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--朱仙魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1700,Sum = 7950},[2] = {Id = 112,Val = 850,Sum = 3975},[3] = {Id = 113,Val = 34000,Sum = 159000}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--朱仙魂珠-8 等级-9
				}
			}--朱仙专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--朱仙专属武器解封-0
			[1] = {PSkill = 130302411,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 18500},[2] = {Id = 1502024,Val = 40}}},--朱仙专属武器解封-1
			[2] = {PSkill = 130302411,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 37500},[2] = {Id = 1502024,Val = 40}}},--朱仙专属武器解封-2
			[3] = {PSkill = 130302411,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 84000},[2] = {Id = 1502024,Val = 60}}},--朱仙专属武器解封-3
			[4] = {PSkill = 130302411,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 148000},[2] = {Id = 1502024,Val = 60}}},--朱仙专属武器解封-4
			[5] = {PSkill = 130302411,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 366000},[2] = {Id = 1502024,Val = 80}}}--朱仙专属武器解封-5
		}
	},--朱仙专属武器
	[1102026] = {
		CardId = 1102026,
		Name = _T("雷神之锤"),
		Quality = 3,
		Icon = "ui_dtex_Equip_1501023",
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
					[1] = {Prop = {[1] = {Id = 111,Val = 48,Sum = 48},[2] = {Id = 112,Val = 18,Sum = 18},[3] = {Id = 113,Val = 720,Sum = 720}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--雷震子魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 120},[2] = {Id = 112,Val = 27,Sum = 45},[3] = {Id = 113,Val = 1080,Sum = 1800}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--雷震子魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 216},[2] = {Id = 112,Val = 36,Sum = 81},[3] = {Id = 113,Val = 1440,Sum = 3240}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--雷震子魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 360},[2] = {Id = 112,Val = 54,Sum = 135},[3] = {Id = 113,Val = 2160,Sum = 5400}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--雷震子魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 552},[2] = {Id = 112,Val = 72,Sum = 207},[3] = {Id = 113,Val = 2880,Sum = 8280}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--雷震子魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 792},[2] = {Id = 112,Val = 90,Sum = 297},[3] = {Id = 113,Val = 3600,Sum = 11880}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--雷震子魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1080},[2] = {Id = 112,Val = 108,Sum = 405},[3] = {Id = 113,Val = 4320,Sum = 16200}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--雷震子魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1416},[2] = {Id = 112,Val = 126,Sum = 531},[3] = {Id = 113,Val = 5040,Sum = 21240}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--雷震子魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1800},[2] = {Id = 112,Val = 144,Sum = 675},[3] = {Id = 113,Val = 5760,Sum = 27000}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--雷震子魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 60},[2] = {Id = 112,Val = 23,Sum = 23},[3] = {Id = 113,Val = 900,Sum = 900}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--雷震子魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 156},[2] = {Id = 112,Val = 36,Sum = 59},[3] = {Id = 113,Val = 1440,Sum = 2340}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--雷震子魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 276},[2] = {Id = 112,Val = 45,Sum = 104},[3] = {Id = 113,Val = 1800,Sum = 4140}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--雷震子魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 468},[2] = {Id = 112,Val = 72,Sum = 176},[3] = {Id = 113,Val = 2880,Sum = 7020}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--雷震子魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 732},[2] = {Id = 112,Val = 99,Sum = 275},[3] = {Id = 113,Val = 3960,Sum = 10980}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--雷震子魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1068},[2] = {Id = 112,Val = 126,Sum = 401},[3] = {Id = 113,Val = 5040,Sum = 16020}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--雷震子魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1452},[2] = {Id = 112,Val = 144,Sum = 545},[3] = {Id = 113,Val = 5760,Sum = 21780}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--雷震子魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1908},[2] = {Id = 112,Val = 171,Sum = 716},[3] = {Id = 113,Val = 6840,Sum = 28620}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--雷震子魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 2448},[2] = {Id = 112,Val = 203,Sum = 919},[3] = {Id = 113,Val = 8100,Sum = 36720}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--雷震子魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 96},[2] = {Id = 112,Val = 36,Sum = 36},[3] = {Id = 113,Val = 1440,Sum = 1440}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--雷震子魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 240},[2] = {Id = 112,Val = 54,Sum = 90},[3] = {Id = 113,Val = 2160,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--雷震子魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 432},[2] = {Id = 112,Val = 72,Sum = 162},[3] = {Id = 113,Val = 2880,Sum = 6480}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--雷震子魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 720},[2] = {Id = 112,Val = 108,Sum = 270},[3] = {Id = 113,Val = 4320,Sum = 10800}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--雷震子魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1104},[2] = {Id = 112,Val = 144,Sum = 414},[3] = {Id = 113,Val = 5760,Sum = 16560}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--雷震子魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1584},[2] = {Id = 112,Val = 180,Sum = 594},[3] = {Id = 113,Val = 7200,Sum = 23760}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--雷震子魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 2160},[2] = {Id = 112,Val = 216,Sum = 810},[3] = {Id = 113,Val = 8640,Sum = 32400}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--雷震子魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 2832},[2] = {Id = 112,Val = 252,Sum = 1062},[3] = {Id = 113,Val = 10080,Sum = 42480}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--雷震子魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 3600},[2] = {Id = 112,Val = 288,Sum = 1350},[3] = {Id = 113,Val = 11520,Sum = 54000}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--雷震子魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 120},[2] = {Id = 112,Val = 45,Sum = 45},[3] = {Id = 113,Val = 1800,Sum = 1800}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--雷震子魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 312},[2] = {Id = 112,Val = 72,Sum = 117},[3] = {Id = 113,Val = 2880,Sum = 4680}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--雷震子魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 576},[2] = {Id = 112,Val = 99,Sum = 216},[3] = {Id = 113,Val = 3960,Sum = 8640}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--雷震子魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 960},[2] = {Id = 112,Val = 144,Sum = 360},[3] = {Id = 113,Val = 5760,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--雷震子魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 1464},[2] = {Id = 112,Val = 189,Sum = 549},[3] = {Id = 113,Val = 7560,Sum = 21960}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--雷震子魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 660,Sum = 2124},[2] = {Id = 112,Val = 248,Sum = 797},[3] = {Id = 113,Val = 9900,Sum = 31860}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--雷震子魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2904},[2] = {Id = 112,Val = 293,Sum = 1090},[3] = {Id = 113,Val = 11700,Sum = 43560}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--雷震子魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 3804},[2] = {Id = 112,Val = 338,Sum = 1428},[3] = {Id = 113,Val = 13500,Sum = 57060}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--雷震子魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 4824},[2] = {Id = 112,Val = 383,Sum = 1811},[3] = {Id = 113,Val = 15300,Sum = 72360}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--雷震子魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 168},[2] = {Id = 112,Val = 63,Sum = 63},[3] = {Id = 113,Val = 2520,Sum = 2520}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--雷震子魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 408},[2] = {Id = 112,Val = 90,Sum = 153},[3] = {Id = 113,Val = 3600,Sum = 6120}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--雷震子魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 720},[2] = {Id = 112,Val = 117,Sum = 270},[3] = {Id = 113,Val = 4680,Sum = 10800}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--雷震子魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1200},[2] = {Id = 112,Val = 180,Sum = 450},[3] = {Id = 113,Val = 7200,Sum = 18000}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--雷震子魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 624,Sum = 1824},[2] = {Id = 112,Val = 234,Sum = 684},[3] = {Id = 113,Val = 9360,Sum = 27360}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--雷震子魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2604},[2] = {Id = 112,Val = 293,Sum = 977},[3] = {Id = 113,Val = 11700,Sum = 39060}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--雷震子魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3564},[2] = {Id = 112,Val = 360,Sum = 1337},[3] = {Id = 113,Val = 14400,Sum = 53460}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--雷震子魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1140,Sum = 4704},[2] = {Id = 112,Val = 428,Sum = 1765},[3] = {Id = 113,Val = 17100,Sum = 70560}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--雷震子魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 6024},[2] = {Id = 112,Val = 495,Sum = 2260},[3] = {Id = 113,Val = 19800,Sum = 90360}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--雷震子魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 192},[2] = {Id = 112,Val = 72,Sum = 72},[3] = {Id = 113,Val = 2880,Sum = 2880}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--雷震子魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 480},[2] = {Id = 112,Val = 108,Sum = 180},[3] = {Id = 113,Val = 4320,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--雷震子魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 864},[2] = {Id = 112,Val = 144,Sum = 324},[3] = {Id = 113,Val = 5760,Sum = 12960}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--雷震子魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1440},[2] = {Id = 112,Val = 216,Sum = 540},[3] = {Id = 113,Val = 8640,Sum = 21600}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--雷震子魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 2208},[2] = {Id = 112,Val = 288,Sum = 828},[3] = {Id = 113,Val = 11520,Sum = 33120}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--雷震子魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3168},[2] = {Id = 112,Val = 360,Sum = 1188},[3] = {Id = 113,Val = 14400,Sum = 47520}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--雷震子魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1152,Sum = 4320},[2] = {Id = 112,Val = 432,Sum = 1620},[3] = {Id = 113,Val = 17280,Sum = 64800}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--雷震子魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 4992},[2] = {Id = 112,Val = 252,Sum = 1872},[3] = {Id = 113,Val = 10080,Sum = 74880}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--雷震子魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1536,Sum = 6528},[2] = {Id = 112,Val = 576,Sum = 2448},[3] = {Id = 113,Val = 23040,Sum = 97920}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--雷震子魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 216},[2] = {Id = 112,Val = 81,Sum = 81},[3] = {Id = 113,Val = 3240,Sum = 3240}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--雷震子魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 552},[2] = {Id = 112,Val = 126,Sum = 207},[3] = {Id = 113,Val = 5040,Sum = 8280}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--雷震子魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1008},[2] = {Id = 112,Val = 171,Sum = 378},[3] = {Id = 113,Val = 6840,Sum = 15120}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--雷震子魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 1680},[2] = {Id = 112,Val = 252,Sum = 630},[3] = {Id = 113,Val = 10080,Sum = 25200}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--雷震子魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 2580},[2] = {Id = 112,Val = 338,Sum = 968},[3] = {Id = 113,Val = 13500,Sum = 38700}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--雷震子魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1104,Sum = 3684},[2] = {Id = 112,Val = 414,Sum = 1382},[3] = {Id = 113,Val = 16560,Sum = 55260}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--雷震子魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1440,Sum = 5124},[2] = {Id = 112,Val = 540,Sum = 1922},[3] = {Id = 113,Val = 21600,Sum = 76860}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--雷震子魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1560,Sum = 6684},[2] = {Id = 112,Val = 585,Sum = 2507},[3] = {Id = 113,Val = 23400,Sum = 100260}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--雷震子魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1800,Sum = 8484},[2] = {Id = 112,Val = 675,Sum = 3182},[3] = {Id = 113,Val = 27000,Sum = 127260}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--雷震子魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 240},[2] = {Id = 112,Val = 90,Sum = 90},[3] = {Id = 113,Val = 3600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--雷震子魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 624},[2] = {Id = 112,Val = 144,Sum = 234},[3] = {Id = 113,Val = 5760,Sum = 9360}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--雷震子魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 516,Sum = 1140},[2] = {Id = 112,Val = 194,Sum = 428},[3] = {Id = 113,Val = 7740,Sum = 17100}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--雷震子魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 1908},[2] = {Id = 112,Val = 288,Sum = 716},[3] = {Id = 113,Val = 11520,Sum = 28620}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--雷震子魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 2928},[2] = {Id = 112,Val = 383,Sum = 1099},[3] = {Id = 113,Val = 15300,Sum = 43920}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--雷震子魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1272,Sum = 4200},[2] = {Id = 112,Val = 477,Sum = 1576},[3] = {Id = 113,Val = 19080,Sum = 63000}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--雷震子魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1524,Sum = 5724},[2] = {Id = 112,Val = 572,Sum = 2148},[3] = {Id = 113,Val = 22860,Sum = 85860}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--雷震子魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1776,Sum = 7500},[2] = {Id = 112,Val = 666,Sum = 2814},[3] = {Id = 113,Val = 26640,Sum = 112500}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--雷震子魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2040,Sum = 9540},[2] = {Id = 112,Val = 765,Sum = 3579},[3] = {Id = 113,Val = 30600,Sum = 143100}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--雷震子魂珠-8 等级-9
				}
			}--雷震子专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--雷震子专属武器解封-0
			[1] = {PSkill = 130302611,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 18500},[2] = {Id = 1502026,Val = 40}}},--雷震子专属武器解封-1
			[2] = {PSkill = 130302611,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 37500},[2] = {Id = 1502026,Val = 40}}},--雷震子专属武器解封-2
			[3] = {PSkill = 130302611,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 84000},[2] = {Id = 1502026,Val = 60}}},--雷震子专属武器解封-3
			[4] = {PSkill = 130302611,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 148000},[2] = {Id = 1502026,Val = 60}}},--雷震子专属武器解封-4
			[5] = {PSkill = 130302611,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 366000},[2] = {Id = 1502026,Val = 80}}}--雷震子专属武器解封-5
		}
	},--雷震子专属武器
	[1102028] = {
		CardId = 1102028,
		Name = _T("方天画戟"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501024",
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
					[1] = {Prop = {[1] = {Id = 111,Val = 54,Sum = 54},[2] = {Id = 112,Val = 27,Sum = 27},[3] = {Id = 113,Val = 960,Sum = 960}},Cost = {[1] = {Id = 1401002,Val = 160},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--吕布魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 81,Sum = 135},[2] = {Id = 112,Val = 41,Sum = 68},[3] = {Id = 113,Val = 1440,Sum = 2400}},Cost = {[1] = {Id = 1401002,Val = 245},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--吕布魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 243},[2] = {Id = 112,Val = 54,Sum = 122},[3] = {Id = 113,Val = 1920,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 405},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--吕布魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 405},[2] = {Id = 112,Val = 81,Sum = 203},[3] = {Id = 113,Val = 2880,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 520},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--吕布魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 621},[2] = {Id = 112,Val = 108,Sum = 311},[3] = {Id = 113,Val = 3840,Sum = 11040}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--吕布魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 270,Sum = 891},[2] = {Id = 112,Val = 135,Sum = 446},[3] = {Id = 113,Val = 4800,Sum = 15840}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--吕布魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 324,Sum = 1215},[2] = {Id = 112,Val = 162,Sum = 608},[3] = {Id = 113,Val = 5760,Sum = 21600}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--吕布魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1593},[2] = {Id = 112,Val = 189,Sum = 797},[3] = {Id = 113,Val = 6720,Sum = 28320}},Cost = {[1] = {Id = 1401002,Val = 1055},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--吕布魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 2025},[2] = {Id = 112,Val = 216,Sum = 1013},[3] = {Id = 113,Val = 7680,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 1315},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--吕布魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 68,Sum = 68},[2] = {Id = 112,Val = 34,Sum = 34},[3] = {Id = 113,Val = 1200,Sum = 1200}},Cost = {[1] = {Id = 1401002,Val = 445},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--吕布魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 176},[2] = {Id = 112,Val = 54,Sum = 88},[3] = {Id = 113,Val = 1920,Sum = 3120}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--吕布魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 135,Sum = 311},[2] = {Id = 112,Val = 68,Sum = 156},[3] = {Id = 113,Val = 2400,Sum = 5520}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--吕布魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 527},[2] = {Id = 112,Val = 108,Sum = 264},[3] = {Id = 113,Val = 3840,Sum = 9360}},Cost = {[1] = {Id = 1401002,Val = 710},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--吕布魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 297,Sum = 824},[2] = {Id = 112,Val = 149,Sum = 413},[3] = {Id = 113,Val = 5280,Sum = 14640}},Cost = {[1] = {Id = 1401002,Val = 1080},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--吕布魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 1202},[2] = {Id = 112,Val = 189,Sum = 602},[3] = {Id = 113,Val = 6720,Sum = 21360}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--吕布魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1634},[2] = {Id = 112,Val = 216,Sum = 818},[3] = {Id = 113,Val = 7680,Sum = 29040}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--吕布魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 513,Sum = 2147},[2] = {Id = 112,Val = 257,Sum = 1075},[3] = {Id = 113,Val = 9120,Sum = 38160}},Cost = {[1] = {Id = 1401002,Val = 2150},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--吕布魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 608,Sum = 2755},[2] = {Id = 112,Val = 304,Sum = 1379},[3] = {Id = 113,Val = 10800,Sum = 48960}},Cost = {[1] = {Id = 1401002,Val = 2870},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--吕布魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 108,Sum = 108},[2] = {Id = 112,Val = 54,Sum = 54},[3] = {Id = 113,Val = 1920,Sum = 1920}},Cost = {[1] = {Id = 1401002,Val = 910},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--吕布魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 162,Sum = 270},[2] = {Id = 112,Val = 81,Sum = 135},[3] = {Id = 113,Val = 2880,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--吕布魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 486},[2] = {Id = 112,Val = 108,Sum = 243},[3] = {Id = 113,Val = 3840,Sum = 8640}},Cost = {[1] = {Id = 1401002,Val = 1140},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--吕布魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 324,Sum = 810},[2] = {Id = 112,Val = 162,Sum = 405},[3] = {Id = 113,Val = 5760,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 1095},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--吕布魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1242},[2] = {Id = 112,Val = 216,Sum = 621},[3] = {Id = 113,Val = 7680,Sum = 22080}},Cost = {[1] = {Id = 1401002,Val = 1485},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--吕布魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 1782},[2] = {Id = 112,Val = 270,Sum = 891},[3] = {Id = 113,Val = 9600,Sum = 31680}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--吕布魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 648,Sum = 2430},[2] = {Id = 112,Val = 324,Sum = 1215},[3] = {Id = 113,Val = 11520,Sum = 43200}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--吕布魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 756,Sum = 3186},[2] = {Id = 112,Val = 378,Sum = 1593},[3] = {Id = 113,Val = 13440,Sum = 56640}},Cost = {[1] = {Id = 1401002,Val = 2955},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--吕布魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 4050},[2] = {Id = 112,Val = 432,Sum = 2025},[3] = {Id = 113,Val = 15360,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 3695},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--吕布魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 135,Sum = 135},[2] = {Id = 112,Val = 68,Sum = 68},[3] = {Id = 113,Val = 2400,Sum = 2400}},Cost = {[1] = {Id = 1401002,Val = 1480},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--吕布魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 351},[2] = {Id = 112,Val = 108,Sum = 176},[3] = {Id = 113,Val = 3840,Sum = 6240}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--吕布魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 297,Sum = 648},[2] = {Id = 112,Val = 149,Sum = 325},[3] = {Id = 113,Val = 5280,Sum = 11520}},Cost = {[1] = {Id = 1401002,Val = 1235},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--吕布魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1080},[2] = {Id = 112,Val = 216,Sum = 541},[3] = {Id = 113,Val = 7680,Sum = 19200}},Cost = {[1] = {Id = 1401002,Val = 2370},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--吕布魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 567,Sum = 1647},[2] = {Id = 112,Val = 284,Sum = 825},[3] = {Id = 113,Val = 10080,Sum = 29280}},Cost = {[1] = {Id = 1401002,Val = 2405},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--吕布魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 743,Sum = 2390},[2] = {Id = 112,Val = 371,Sum = 1196},[3] = {Id = 113,Val = 13200,Sum = 42480}},Cost = {[1] = {Id = 1401002,Val = 2390},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--吕布魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 878,Sum = 3268},[2] = {Id = 112,Val = 439,Sum = 1635},[3] = {Id = 113,Val = 15600,Sum = 58080}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--吕布魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1013,Sum = 4281},[2] = {Id = 112,Val = 506,Sum = 2141},[3] = {Id = 113,Val = 18000,Sum = 76080}},Cost = {[1] = {Id = 1401002,Val = 4790},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--吕布魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1148,Sum = 5429},[2] = {Id = 112,Val = 574,Sum = 2715},[3] = {Id = 113,Val = 20400,Sum = 96480}},Cost = {[1] = {Id = 1401002,Val = 7190},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--吕布魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 189,Sum = 189},[2] = {Id = 112,Val = 95,Sum = 95},[3] = {Id = 113,Val = 3360,Sum = 3360}},Cost = {[1] = {Id = 1401002,Val = 3085},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--吕布魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 270,Sum = 459},[2] = {Id = 112,Val = 135,Sum = 230},[3] = {Id = 113,Val = 4800,Sum = 8160}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--吕布魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 351,Sum = 810},[2] = {Id = 112,Val = 176,Sum = 406},[3] = {Id = 113,Val = 6240,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 2570},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--吕布魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 1350},[2] = {Id = 112,Val = 270,Sum = 676},[3] = {Id = 113,Val = 9600,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 3705},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--吕布魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 702,Sum = 2052},[2] = {Id = 112,Val = 351,Sum = 1027},[3] = {Id = 113,Val = 12480,Sum = 36480}},Cost = {[1] = {Id = 1401002,Val = 3760},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--吕布魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 878,Sum = 2930},[2] = {Id = 112,Val = 439,Sum = 1466},[3] = {Id = 113,Val = 15600,Sum = 52080}},Cost = {[1] = {Id = 1401002,Val = 6230},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--吕布魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1080,Sum = 4010},[2] = {Id = 112,Val = 540,Sum = 2006},[3] = {Id = 113,Val = 19200,Sum = 71280}},Cost = {[1] = {Id = 1401002,Val = 6245},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--吕布魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1283,Sum = 5293},[2] = {Id = 112,Val = 641,Sum = 2647},[3] = {Id = 113,Val = 22800,Sum = 94080}},Cost = {[1] = {Id = 1401002,Val = 8740},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--吕布魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1485,Sum = 6778},[2] = {Id = 112,Val = 743,Sum = 3390},[3] = {Id = 113,Val = 26400,Sum = 120480}},Cost = {[1] = {Id = 1401002,Val = 11240},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--吕布魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 216},[2] = {Id = 112,Val = 108,Sum = 108},[3] = {Id = 113,Val = 3840,Sum = 3840}},Cost = {[1] = {Id = 1401002,Val = 2905},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--吕布魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 324,Sum = 540},[2] = {Id = 112,Val = 162,Sum = 270},[3] = {Id = 113,Val = 5760,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 4360},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--吕布魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 972},[2] = {Id = 112,Val = 216,Sum = 486},[3] = {Id = 113,Val = 7680,Sum = 17280}},Cost = {[1] = {Id = 1401002,Val = 4840},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--吕布魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 648,Sum = 1620},[2] = {Id = 112,Val = 324,Sum = 810},[3] = {Id = 113,Val = 11520,Sum = 28800}},Cost = {[1] = {Id = 1401002,Val = 6970},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--吕布魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 2484},[2] = {Id = 112,Val = 432,Sum = 1242},[3] = {Id = 113,Val = 15360,Sum = 44160}},Cost = {[1] = {Id = 1401002,Val = 7080},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--吕布魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1080,Sum = 3564},[2] = {Id = 112,Val = 540,Sum = 1782},[3] = {Id = 113,Val = 19200,Sum = 63360}},Cost = {[1] = {Id = 1401002,Val = 9385},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--吕布魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1296,Sum = 4860},[2] = {Id = 112,Val = 648,Sum = 2430},[3] = {Id = 113,Val = 23040,Sum = 86400}},Cost = {[1] = {Id = 1401002,Val = 11760},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--吕布魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 756,Sum = 5616},[2] = {Id = 112,Val = 378,Sum = 2808},[3] = {Id = 113,Val = 13440,Sum = 99840}},Cost = {[1] = {Id = 1401002,Val = 16445},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--吕布魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1728,Sum = 7344},[2] = {Id = 112,Val = 864,Sum = 3672},[3] = {Id = 113,Val = 30720,Sum = 130560}},Cost = {[1] = {Id = 1401002,Val = 18800},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--吕布魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 243,Sum = 243},[2] = {Id = 112,Val = 122,Sum = 122},[3] = {Id = 113,Val = 4320,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 5710},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--吕布魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 378,Sum = 621},[2] = {Id = 112,Val = 189,Sum = 311},[3] = {Id = 113,Val = 6720,Sum = 11040}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--吕布魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 513,Sum = 1134},[2] = {Id = 112,Val = 257,Sum = 568},[3] = {Id = 113,Val = 9120,Sum = 20160}},Cost = {[1] = {Id = 1401002,Val = 7135},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--吕布魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 756,Sum = 1890},[2] = {Id = 112,Val = 378,Sum = 946},[3] = {Id = 113,Val = 13440,Sum = 33600}},Cost = {[1] = {Id = 1401002,Val = 9130},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--吕布魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1013,Sum = 2903},[2] = {Id = 112,Val = 506,Sum = 1452},[3] = {Id = 113,Val = 18000,Sum = 51600}},Cost = {[1] = {Id = 1401002,Val = 9275},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--吕布魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1242,Sum = 4145},[2] = {Id = 112,Val = 621,Sum = 2073},[3] = {Id = 113,Val = 22080,Sum = 73680}},Cost = {[1] = {Id = 1401002,Val = 11525},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--吕布魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1620,Sum = 5765},[2] = {Id = 112,Val = 810,Sum = 2883},[3] = {Id = 113,Val = 28800,Sum = 102480}},Cost = {[1] = {Id = 1401002,Val = 16170},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--吕布魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1755,Sum = 7520},[2] = {Id = 112,Val = 878,Sum = 3761},[3] = {Id = 113,Val = 31200,Sum = 133680}},Cost = {[1] = {Id = 1401002,Val = 18465},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--吕布魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2025,Sum = 9545},[2] = {Id = 112,Val = 1013,Sum = 4774},[3] = {Id = 113,Val = 36000,Sum = 169680}},Cost = {[1] = {Id = 1401002,Val = 23090},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--吕布魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 270,Sum = 270},[2] = {Id = 112,Val = 135,Sum = 135},[3] = {Id = 113,Val = 4800,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 4865},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--吕布魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 702},[2] = {Id = 112,Val = 216,Sum = 351},[3] = {Id = 113,Val = 7680,Sum = 12480}},Cost = {[1] = {Id = 1401002,Val = 5835},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--吕布魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 581,Sum = 1283},[2] = {Id = 112,Val = 290,Sum = 641},[3] = {Id = 113,Val = 10320,Sum = 22800}},Cost = {[1] = {Id = 1401002,Val = 8105},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--吕布魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 864,Sum = 2147},[2] = {Id = 112,Val = 432,Sum = 1073},[3] = {Id = 113,Val = 15360,Sum = 38160}},Cost = {[1] = {Id = 1401002,Val = 9340},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--吕布魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1148,Sum = 3295},[2] = {Id = 112,Val = 574,Sum = 1647},[3] = {Id = 113,Val = 20400,Sum = 58560}},Cost = {[1] = {Id = 1401002,Val = 11855},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--吕布魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1431,Sum = 4726},[2] = {Id = 112,Val = 716,Sum = 2363},[3] = {Id = 113,Val = 25440,Sum = 84000}},Cost = {[1] = {Id = 1401002,Val = 14145},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--吕布魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1715,Sum = 6441},[2] = {Id = 112,Val = 857,Sum = 3220},[3] = {Id = 113,Val = 30480,Sum = 114480}},Cost = {[1] = {Id = 1401002,Val = 19690},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--吕布魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1998,Sum = 8439},[2] = {Id = 112,Val = 999,Sum = 4219},[3] = {Id = 113,Val = 35520,Sum = 150000}},Cost = {[1] = {Id = 1401002,Val = 23605},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--吕布魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2295,Sum = 10734},[2] = {Id = 112,Val = 1148,Sum = 5367},[3] = {Id = 113,Val = 40800,Sum = 190800}},Cost = {[1] = {Id = 1401002,Val = 23615},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--吕布魂珠-8 等级-9
				}
			}--吕布专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--吕布专属武器解封-0
			[1] = {PSkill = 130302811,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 36500},[2] = {Id = 1502028,Val = 80}}},--吕布专属武器解封-1
			[2] = {PSkill = 130302811,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 75500},[2] = {Id = 1502028,Val = 80}}},--吕布专属武器解封-2
			[3] = {PSkill = 130302811,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 168500},[2] = {Id = 1502028,Val = 120}}},--吕布专属武器解封-3
			[4] = {PSkill = 130302811,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 295500},[2] = {Id = 1502028,Val = 120}}},--吕布专属武器解封-4
			[5] = {PSkill = 130302811,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 732500},[2] = {Id = 1502028,Val = 160}}}--吕布专属武器解封-5
		}
	},--吕布专属武器
	[1102030] = {
		CardId = 1102030,
		Name = _T("小乙玉笛"),
		Quality = 3,
		Icon = "ui_dtex_Equip_1501025",
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
					[1] = {Prop = {[1] = {Id = 111,Val = 44,Sum = 44},[2] = {Id = 112,Val = 22,Sum = 22},[3] = {Id = 113,Val = 800,Sum = 800}},Cost = {[1] = {Id = 1401002,Val = 80},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--燕青魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 66,Sum = 110},[2] = {Id = 112,Val = 33,Sum = 55},[3] = {Id = 113,Val = 1200,Sum = 2000}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--燕青魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 198},[2] = {Id = 112,Val = 44,Sum = 99},[3] = {Id = 113,Val = 1600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 205},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--燕青魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 330},[2] = {Id = 112,Val = 66,Sum = 165},[3] = {Id = 113,Val = 2400,Sum = 6000}},Cost = {[1] = {Id = 1401002,Val = 260},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--燕青魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 506},[2] = {Id = 112,Val = 88,Sum = 253},[3] = {Id = 113,Val = 3200,Sum = 9200}},Cost = {[1] = {Id = 1401002,Val = 330},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--燕青魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 726},[2] = {Id = 112,Val = 110,Sum = 363},[3] = {Id = 113,Val = 4000,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 395},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--燕青魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 990},[2] = {Id = 112,Val = 132,Sum = 495},[3] = {Id = 113,Val = 4800,Sum = 18000}},Cost = {[1] = {Id = 1401002,Val = 460},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--燕青魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 1298},[2] = {Id = 112,Val = 154,Sum = 649},[3] = {Id = 113,Val = 5600,Sum = 23600}},Cost = {[1] = {Id = 1401002,Val = 525},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--燕青魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1650},[2] = {Id = 112,Val = 176,Sum = 825},[3] = {Id = 113,Val = 6400,Sum = 30000}},Cost = {[1] = {Id = 1401002,Val = 660},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--燕青魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 55,Sum = 55},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 1000,Sum = 1000}},Cost = {[1] = {Id = 1401002,Val = 220},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--燕青魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 143},[2] = {Id = 112,Val = 44,Sum = 72},[3] = {Id = 113,Val = 1600,Sum = 2600}},Cost = {[1] = {Id = 1401002,Val = 165},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--燕青魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 253},[2] = {Id = 112,Val = 55,Sum = 127},[3] = {Id = 113,Val = 2000,Sum = 4600}},Cost = {[1] = {Id = 1401002,Val = 370},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--燕青魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 429},[2] = {Id = 112,Val = 88,Sum = 215},[3] = {Id = 113,Val = 3200,Sum = 7800}},Cost = {[1] = {Id = 1401002,Val = 355},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--燕青魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 242,Sum = 671},[2] = {Id = 112,Val = 121,Sum = 336},[3] = {Id = 113,Val = 4400,Sum = 12200}},Cost = {[1] = {Id = 1401002,Val = 540},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--燕青魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 979},[2] = {Id = 112,Val = 154,Sum = 490},[3] = {Id = 113,Val = 5600,Sum = 17800}},Cost = {[1] = {Id = 1401002,Val = 715},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--燕青魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1331},[2] = {Id = 112,Val = 176,Sum = 666},[3] = {Id = 113,Val = 6400,Sum = 24200}},Cost = {[1] = {Id = 1401002,Val = 900},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--燕青魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 418,Sum = 1749},[2] = {Id = 112,Val = 209,Sum = 875},[3] = {Id = 113,Val = 7600,Sum = 31800}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--燕青魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 495,Sum = 2244},[2] = {Id = 112,Val = 248,Sum = 1123},[3] = {Id = 113,Val = 9000,Sum = 40800}},Cost = {[1] = {Id = 1401002,Val = 1435},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--燕青魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 88,Sum = 88},[2] = {Id = 112,Val = 44,Sum = 44},[3] = {Id = 113,Val = 1600,Sum = 1600}},Cost = {[1] = {Id = 1401002,Val = 455},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--燕青魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 132,Sum = 220},[2] = {Id = 112,Val = 66,Sum = 110},[3] = {Id = 113,Val = 2400,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 340},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--燕青魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 396},[2] = {Id = 112,Val = 88,Sum = 198},[3] = {Id = 113,Val = 3200,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 570},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--燕青魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 660},[2] = {Id = 112,Val = 132,Sum = 330},[3] = {Id = 113,Val = 4800,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 550},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--燕青魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 1012},[2] = {Id = 112,Val = 176,Sum = 506},[3] = {Id = 113,Val = 6400,Sum = 18400}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--燕青魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1452},[2] = {Id = 112,Val = 220,Sum = 726},[3] = {Id = 113,Val = 8000,Sum = 26400}},Cost = {[1] = {Id = 1401002,Val = 920},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--燕青魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 1980},[2] = {Id = 112,Val = 264,Sum = 990},[3] = {Id = 113,Val = 9600,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--燕青魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 2596},[2] = {Id = 112,Val = 308,Sum = 1298},[3] = {Id = 113,Val = 11200,Sum = 47200}},Cost = {[1] = {Id = 1401002,Val = 1475},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--燕青魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 3300},[2] = {Id = 112,Val = 352,Sum = 1650},[3] = {Id = 113,Val = 12800,Sum = 60000}},Cost = {[1] = {Id = 1401002,Val = 1845},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--燕青魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 110,Sum = 110},[2] = {Id = 112,Val = 55,Sum = 55},[3] = {Id = 113,Val = 2000,Sum = 2000}},Cost = {[1] = {Id = 1401002,Val = 740},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--燕青魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 286},[2] = {Id = 112,Val = 88,Sum = 143},[3] = {Id = 113,Val = 3200,Sum = 5200}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--燕青魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 242,Sum = 528},[2] = {Id = 112,Val = 121,Sum = 264},[3] = {Id = 113,Val = 4400,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 615},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--燕青魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 880},[2] = {Id = 112,Val = 176,Sum = 440},[3] = {Id = 113,Val = 6400,Sum = 16000}},Cost = {[1] = {Id = 1401002,Val = 1185},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--燕青魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 462,Sum = 1342},[2] = {Id = 112,Val = 231,Sum = 671},[3] = {Id = 113,Val = 8400,Sum = 24400}},Cost = {[1] = {Id = 1401002,Val = 1205},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--燕青魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 605,Sum = 1947},[2] = {Id = 112,Val = 303,Sum = 974},[3] = {Id = 113,Val = 11000,Sum = 35400}},Cost = {[1] = {Id = 1401002,Val = 1195},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--燕青魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 715,Sum = 2662},[2] = {Id = 112,Val = 358,Sum = 1332},[3] = {Id = 113,Val = 13000,Sum = 48400}},Cost = {[1] = {Id = 1401002,Val = 1800},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--燕青魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 825,Sum = 3487},[2] = {Id = 112,Val = 413,Sum = 1745},[3] = {Id = 113,Val = 15000,Sum = 63400}},Cost = {[1] = {Id = 1401002,Val = 2395},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--燕青魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 935,Sum = 4422},[2] = {Id = 112,Val = 468,Sum = 2213},[3] = {Id = 113,Val = 17000,Sum = 80400}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--燕青魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 154,Sum = 154},[2] = {Id = 112,Val = 77,Sum = 77},[3] = {Id = 113,Val = 2800,Sum = 2800}},Cost = {[1] = {Id = 1401002,Val = 1545},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--燕青魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 374},[2] = {Id = 112,Val = 110,Sum = 187},[3] = {Id = 113,Val = 4000,Sum = 6800}},Cost = {[1] = {Id = 1401002,Val = 1155},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--燕青魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 286,Sum = 660},[2] = {Id = 112,Val = 143,Sum = 330},[3] = {Id = 113,Val = 5200,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 1285},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--燕青魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 440,Sum = 1100},[2] = {Id = 112,Val = 220,Sum = 550},[3] = {Id = 113,Val = 8000,Sum = 20000}},Cost = {[1] = {Id = 1401002,Val = 1850},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--燕青魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 572,Sum = 1672},[2] = {Id = 112,Val = 286,Sum = 836},[3] = {Id = 113,Val = 10400,Sum = 30400}},Cost = {[1] = {Id = 1401002,Val = 1880},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--燕青魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 715,Sum = 2387},[2] = {Id = 112,Val = 358,Sum = 1194},[3] = {Id = 113,Val = 13000,Sum = 43400}},Cost = {[1] = {Id = 1401002,Val = 3115},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--燕青魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 880,Sum = 3267},[2] = {Id = 112,Val = 440,Sum = 1634},[3] = {Id = 113,Val = 16000,Sum = 59400}},Cost = {[1] = {Id = 1401002,Val = 3125},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--燕青魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1045,Sum = 4312},[2] = {Id = 112,Val = 523,Sum = 2157},[3] = {Id = 113,Val = 19000,Sum = 78400}},Cost = {[1] = {Id = 1401002,Val = 4370},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--燕青魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1210,Sum = 5522},[2] = {Id = 112,Val = 605,Sum = 2762},[3] = {Id = 113,Val = 22000,Sum = 100400}},Cost = {[1] = {Id = 1401002,Val = 5620},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--燕青魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 176},[2] = {Id = 112,Val = 88,Sum = 88},[3] = {Id = 113,Val = 3200,Sum = 3200}},Cost = {[1] = {Id = 1401002,Val = 1450},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--燕青魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 440},[2] = {Id = 112,Val = 132,Sum = 220},[3] = {Id = 113,Val = 4800,Sum = 8000}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--燕青魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 792},[2] = {Id = 112,Val = 176,Sum = 396},[3] = {Id = 113,Val = 6400,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 2420},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--燕青魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 528,Sum = 1320},[2] = {Id = 112,Val = 264,Sum = 660},[3] = {Id = 113,Val = 9600,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 3485},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--燕青魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 2024},[2] = {Id = 112,Val = 352,Sum = 1012},[3] = {Id = 113,Val = 12800,Sum = 36800}},Cost = {[1] = {Id = 1401002,Val = 3540},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--燕青魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 880,Sum = 2904},[2] = {Id = 112,Val = 440,Sum = 1452},[3] = {Id = 113,Val = 16000,Sum = 52800}},Cost = {[1] = {Id = 1401002,Val = 4690},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--燕青魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1056,Sum = 3960},[2] = {Id = 112,Val = 528,Sum = 1980},[3] = {Id = 113,Val = 19200,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 5880},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--燕青魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 4576},[2] = {Id = 112,Val = 308,Sum = 2288},[3] = {Id = 113,Val = 11200,Sum = 83200}},Cost = {[1] = {Id = 1401002,Val = 8225},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--燕青魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1408,Sum = 5984},[2] = {Id = 112,Val = 704,Sum = 2992},[3] = {Id = 113,Val = 25600,Sum = 108800}},Cost = {[1] = {Id = 1401002,Val = 9400},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--燕青魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 198,Sum = 198},[2] = {Id = 112,Val = 99,Sum = 99},[3] = {Id = 113,Val = 3600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 2855},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--燕青魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 308,Sum = 506},[2] = {Id = 112,Val = 154,Sum = 253},[3] = {Id = 113,Val = 5600,Sum = 9200}},Cost = {[1] = {Id = 1401002,Val = 2140},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--燕青魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 418,Sum = 924},[2] = {Id = 112,Val = 209,Sum = 462},[3] = {Id = 113,Val = 7600,Sum = 16800}},Cost = {[1] = {Id = 1401002,Val = 3565},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--燕青魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 616,Sum = 1540},[2] = {Id = 112,Val = 308,Sum = 770},[3] = {Id = 113,Val = 11200,Sum = 28000}},Cost = {[1] = {Id = 1401002,Val = 4565},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--燕青魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 825,Sum = 2365},[2] = {Id = 112,Val = 413,Sum = 1183},[3] = {Id = 113,Val = 15000,Sum = 43000}},Cost = {[1] = {Id = 1401002,Val = 4635},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--燕青魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1012,Sum = 3377},[2] = {Id = 112,Val = 506,Sum = 1689},[3] = {Id = 113,Val = 18400,Sum = 61400}},Cost = {[1] = {Id = 1401002,Val = 5760},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--燕青魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 4697},[2] = {Id = 112,Val = 660,Sum = 2349},[3] = {Id = 113,Val = 24000,Sum = 85400}},Cost = {[1] = {Id = 1401002,Val = 8085},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--燕青魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1430,Sum = 6127},[2] = {Id = 112,Val = 715,Sum = 3064},[3] = {Id = 113,Val = 26000,Sum = 111400}},Cost = {[1] = {Id = 1401002,Val = 9230},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--燕青魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1650,Sum = 7777},[2] = {Id = 112,Val = 825,Sum = 3889},[3] = {Id = 113,Val = 30000,Sum = 141400}},Cost = {[1] = {Id = 1401002,Val = 11545},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--燕青魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 220},[2] = {Id = 112,Val = 110,Sum = 110},[3] = {Id = 113,Val = 4000,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 2430},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--燕青魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 352,Sum = 572},[2] = {Id = 112,Val = 176,Sum = 286},[3] = {Id = 113,Val = 6400,Sum = 10400}},Cost = {[1] = {Id = 1401002,Val = 2920},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--燕青魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 473,Sum = 1045},[2] = {Id = 112,Val = 237,Sum = 523},[3] = {Id = 113,Val = 8600,Sum = 19000}},Cost = {[1] = {Id = 1401002,Val = 4055},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--燕青魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 704,Sum = 1749},[2] = {Id = 112,Val = 352,Sum = 875},[3] = {Id = 113,Val = 12800,Sum = 31800}},Cost = {[1] = {Id = 1401002,Val = 4670},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--燕青魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 935,Sum = 2684},[2] = {Id = 112,Val = 468,Sum = 1343},[3] = {Id = 113,Val = 17000,Sum = 48800}},Cost = {[1] = {Id = 1401002,Val = 5930},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--燕青魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1166,Sum = 3850},[2] = {Id = 112,Val = 583,Sum = 1926},[3] = {Id = 113,Val = 21200,Sum = 70000}},Cost = {[1] = {Id = 1401002,Val = 7070},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--燕青魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1397,Sum = 5247},[2] = {Id = 112,Val = 699,Sum = 2625},[3] = {Id = 113,Val = 25400,Sum = 95400}},Cost = {[1] = {Id = 1401002,Val = 9845},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--燕青魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1628,Sum = 6875},[2] = {Id = 112,Val = 814,Sum = 3439},[3] = {Id = 113,Val = 29600,Sum = 125000}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--燕青魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1870,Sum = 8745},[2] = {Id = 112,Val = 935,Sum = 4374},[3] = {Id = 113,Val = 34000,Sum = 159000}},Cost = {[1] = {Id = 1401002,Val = 11805},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--燕青魂珠-8 等级-9
				}
			}--燕青专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--燕青专属武器解封-0
			[1] = {PSkill = 130303011,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 22000},[2] = {Id = 1502030,Val = 40}}},--燕青专属武器解封-1
			[2] = {PSkill = 130303011,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 45000},[2] = {Id = 1502030,Val = 40}}},--燕青专属武器解封-2
			[3] = {PSkill = 130303011,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 101000},[2] = {Id = 1502030,Val = 60}}},--燕青专属武器解封-3
			[4] = {PSkill = 130303011,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 177500},[2] = {Id = 1502030,Val = 60}}},--燕青专属武器解封-4
			[5] = {PSkill = 130303011,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 439500},[2] = {Id = 1502030,Val = 80}}}--燕青专属武器解封-5
		}
	},--燕青专属武器
	[1102031] = {
		CardId = 1102031,
		Name = _T("虎头錾金枪"),
		Quality = 4,
		Icon = "ui_dtex_Equip_1501026",
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
					[1] = {Prop = {[1] = {Id = 111,Val = 48,Sum = 48},[2] = {Id = 112,Val = 24,Sum = 24},[3] = {Id = 113,Val = 960,Sum = 960}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--秦琼魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 72,Sum = 120},[2] = {Id = 112,Val = 36,Sum = 60},[3] = {Id = 113,Val = 1440,Sum = 2400}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--秦琼魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 216},[2] = {Id = 112,Val = 48,Sum = 108},[3] = {Id = 113,Val = 1920,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--秦琼魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 360},[2] = {Id = 112,Val = 72,Sum = 180},[3] = {Id = 113,Val = 2880,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--秦琼魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 552},[2] = {Id = 112,Val = 96,Sum = 276},[3] = {Id = 113,Val = 3840,Sum = 11040}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--秦琼魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 792},[2] = {Id = 112,Val = 120,Sum = 396},[3] = {Id = 113,Val = 4800,Sum = 15840}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--秦琼魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 1080},[2] = {Id = 112,Val = 144,Sum = 540},[3] = {Id = 113,Val = 5760,Sum = 21600}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--秦琼魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1416},[2] = {Id = 112,Val = 168,Sum = 708},[3] = {Id = 113,Val = 6720,Sum = 28320}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--秦琼魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1800},[2] = {Id = 112,Val = 192,Sum = 900},[3] = {Id = 113,Val = 7680,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--秦琼魂珠-1 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 60},[2] = {Id = 112,Val = 30,Sum = 30},[3] = {Id = 113,Val = 1200,Sum = 1200}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--秦琼魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 156},[2] = {Id = 112,Val = 48,Sum = 78},[3] = {Id = 113,Val = 1920,Sum = 3120}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--秦琼魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 276},[2] = {Id = 112,Val = 60,Sum = 138},[3] = {Id = 113,Val = 2400,Sum = 5520}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--秦琼魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 468},[2] = {Id = 112,Val = 96,Sum = 234},[3] = {Id = 113,Val = 3840,Sum = 9360}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--秦琼魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 732},[2] = {Id = 112,Val = 132,Sum = 366},[3] = {Id = 113,Val = 5280,Sum = 14640}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--秦琼魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1068},[2] = {Id = 112,Val = 168,Sum = 534},[3] = {Id = 113,Val = 6720,Sum = 21360}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--秦琼魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1452},[2] = {Id = 112,Val = 192,Sum = 726},[3] = {Id = 113,Val = 7680,Sum = 29040}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--秦琼魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1908},[2] = {Id = 112,Val = 228,Sum = 954},[3] = {Id = 113,Val = 9120,Sum = 38160}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--秦琼魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 2448},[2] = {Id = 112,Val = 270,Sum = 1224},[3] = {Id = 113,Val = 10800,Sum = 48960}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--秦琼魂珠-2 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 96},[2] = {Id = 112,Val = 48,Sum = 48},[3] = {Id = 113,Val = 1920,Sum = 1920}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--秦琼魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 240},[2] = {Id = 112,Val = 72,Sum = 120},[3] = {Id = 113,Val = 2880,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--秦琼魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 432},[2] = {Id = 112,Val = 96,Sum = 216},[3] = {Id = 113,Val = 3840,Sum = 8640}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--秦琼魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 720},[2] = {Id = 112,Val = 144,Sum = 360},[3] = {Id = 113,Val = 5760,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--秦琼魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1104},[2] = {Id = 112,Val = 192,Sum = 552},[3] = {Id = 113,Val = 7680,Sum = 22080}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--秦琼魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1584},[2] = {Id = 112,Val = 240,Sum = 792},[3] = {Id = 113,Val = 9600,Sum = 31680}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--秦琼魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 2160},[2] = {Id = 112,Val = 288,Sum = 1080},[3] = {Id = 113,Val = 11520,Sum = 43200}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--秦琼魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 2832},[2] = {Id = 112,Val = 336,Sum = 1416},[3] = {Id = 113,Val = 13440,Sum = 56640}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--秦琼魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 3600},[2] = {Id = 112,Val = 384,Sum = 1800},[3] = {Id = 113,Val = 15360,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--秦琼魂珠-3 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 120},[2] = {Id = 112,Val = 60,Sum = 60},[3] = {Id = 113,Val = 2400,Sum = 2400}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--秦琼魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 312},[2] = {Id = 112,Val = 96,Sum = 156},[3] = {Id = 113,Val = 3840,Sum = 6240}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--秦琼魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 576},[2] = {Id = 112,Val = 132,Sum = 288},[3] = {Id = 113,Val = 5280,Sum = 11520}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--秦琼魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 960},[2] = {Id = 112,Val = 192,Sum = 480},[3] = {Id = 113,Val = 7680,Sum = 19200}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--秦琼魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 1464},[2] = {Id = 112,Val = 252,Sum = 732},[3] = {Id = 113,Val = 10080,Sum = 29280}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--秦琼魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 660,Sum = 2124},[2] = {Id = 112,Val = 330,Sum = 1062},[3] = {Id = 113,Val = 13200,Sum = 42480}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--秦琼魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2904},[2] = {Id = 112,Val = 390,Sum = 1452},[3] = {Id = 113,Val = 15600,Sum = 58080}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--秦琼魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 3804},[2] = {Id = 112,Val = 450,Sum = 1902},[3] = {Id = 113,Val = 18000,Sum = 76080}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--秦琼魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 4824},[2] = {Id = 112,Val = 510,Sum = 2412},[3] = {Id = 113,Val = 20400,Sum = 96480}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--秦琼魂珠-4 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 168},[2] = {Id = 112,Val = 84,Sum = 84},[3] = {Id = 113,Val = 3360,Sum = 3360}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--秦琼魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 408},[2] = {Id = 112,Val = 120,Sum = 204},[3] = {Id = 113,Val = 4800,Sum = 8160}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--秦琼魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 720},[2] = {Id = 112,Val = 156,Sum = 360},[3] = {Id = 113,Val = 6240,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--秦琼魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1200},[2] = {Id = 112,Val = 240,Sum = 600},[3] = {Id = 113,Val = 9600,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--秦琼魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 624,Sum = 1824},[2] = {Id = 112,Val = 312,Sum = 912},[3] = {Id = 113,Val = 12480,Sum = 36480}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--秦琼魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 780,Sum = 2604},[2] = {Id = 112,Val = 390,Sum = 1302},[3] = {Id = 113,Val = 15600,Sum = 52080}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--秦琼魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3564},[2] = {Id = 112,Val = 480,Sum = 1782},[3] = {Id = 113,Val = 19200,Sum = 71280}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--秦琼魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1140,Sum = 4704},[2] = {Id = 112,Val = 570,Sum = 2352},[3] = {Id = 113,Val = 22800,Sum = 94080}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--秦琼魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 6024},[2] = {Id = 112,Val = 660,Sum = 3012},[3] = {Id = 113,Val = 26400,Sum = 120480}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--秦琼魂珠-5 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 192},[2] = {Id = 112,Val = 96,Sum = 96},[3] = {Id = 113,Val = 3840,Sum = 3840}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--秦琼魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 480},[2] = {Id = 112,Val = 144,Sum = 240},[3] = {Id = 113,Val = 5760,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--秦琼魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 864},[2] = {Id = 112,Val = 192,Sum = 432},[3] = {Id = 113,Val = 7680,Sum = 17280}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--秦琼魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 1440},[2] = {Id = 112,Val = 288,Sum = 720},[3] = {Id = 113,Val = 11520,Sum = 28800}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--秦琼魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 2208},[2] = {Id = 112,Val = 384,Sum = 1104},[3] = {Id = 113,Val = 15360,Sum = 44160}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--秦琼魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3168},[2] = {Id = 112,Val = 480,Sum = 1584},[3] = {Id = 113,Val = 19200,Sum = 63360}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--秦琼魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1152,Sum = 4320},[2] = {Id = 112,Val = 576,Sum = 2160},[3] = {Id = 113,Val = 23040,Sum = 86400}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--秦琼魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 4992},[2] = {Id = 112,Val = 336,Sum = 2496},[3] = {Id = 113,Val = 13440,Sum = 99840}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--秦琼魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1536,Sum = 6528},[2] = {Id = 112,Val = 768,Sum = 3264},[3] = {Id = 113,Val = 30720,Sum = 130560}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--秦琼魂珠-6 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 216},[2] = {Id = 112,Val = 108,Sum = 108},[3] = {Id = 113,Val = 4320,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--秦琼魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 552},[2] = {Id = 112,Val = 168,Sum = 276},[3] = {Id = 113,Val = 6720,Sum = 11040}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--秦琼魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1008},[2] = {Id = 112,Val = 228,Sum = 504},[3] = {Id = 113,Val = 9120,Sum = 20160}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--秦琼魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 1680},[2] = {Id = 112,Val = 336,Sum = 840},[3] = {Id = 113,Val = 13440,Sum = 33600}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--秦琼魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 2580},[2] = {Id = 112,Val = 450,Sum = 1290},[3] = {Id = 113,Val = 18000,Sum = 51600}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--秦琼魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1104,Sum = 3684},[2] = {Id = 112,Val = 552,Sum = 1842},[3] = {Id = 113,Val = 22080,Sum = 73680}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--秦琼魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1440,Sum = 5124},[2] = {Id = 112,Val = 720,Sum = 2562},[3] = {Id = 113,Val = 28800,Sum = 102480}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--秦琼魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1560,Sum = 6684},[2] = {Id = 112,Val = 780,Sum = 3342},[3] = {Id = 113,Val = 31200,Sum = 133680}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--秦琼魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1800,Sum = 8484},[2] = {Id = 112,Val = 900,Sum = 4242},[3] = {Id = 113,Val = 36000,Sum = 169680}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--秦琼魂珠-7 等级-9
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
					[1] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 240},[2] = {Id = 112,Val = 120,Sum = 120},[3] = {Id = 113,Val = 4800,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--秦琼魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 624},[2] = {Id = 112,Val = 192,Sum = 312},[3] = {Id = 113,Val = 7680,Sum = 12480}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--秦琼魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 516,Sum = 1140},[2] = {Id = 112,Val = 258,Sum = 570},[3] = {Id = 113,Val = 10320,Sum = 22800}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--秦琼魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 1908},[2] = {Id = 112,Val = 384,Sum = 954},[3] = {Id = 113,Val = 15360,Sum = 38160}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--秦琼魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 2928},[2] = {Id = 112,Val = 510,Sum = 1464},[3] = {Id = 113,Val = 20400,Sum = 58560}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--秦琼魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1272,Sum = 4200},[2] = {Id = 112,Val = 636,Sum = 2100},[3] = {Id = 113,Val = 25440,Sum = 84000}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--秦琼魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1524,Sum = 5724},[2] = {Id = 112,Val = 762,Sum = 2862},[3] = {Id = 113,Val = 30480,Sum = 114480}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--秦琼魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1776,Sum = 7500},[2] = {Id = 112,Val = 888,Sum = 3750},[3] = {Id = 113,Val = 35520,Sum = 150000}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--秦琼魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2040,Sum = 9540},[2] = {Id = 112,Val = 1020,Sum = 4770},[3] = {Id = 113,Val = 40800,Sum = 190800}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--秦琼魂珠-8 等级-9
				}
			}--秦琼专属武器魂珠-8
		},
		Unseal = {
			[0] = {},--秦琼专属武器解封-0
			[1] = {PSkill = 130303111,PSkillLevel = 1,Cost = {[1] = {Id = 1401002,Val = 29000},[2] = {Id = 1502031,Val = 80}}},--秦琼专属武器解封-1
			[2] = {PSkill = 130303111,PSkillLevel = 2,Cost = {[1] = {Id = 1401002,Val = 60500},[2] = {Id = 1502031,Val = 80}}},--秦琼专属武器解封-2
			[3] = {PSkill = 130303111,PSkillLevel = 3,Cost = {[1] = {Id = 1401002,Val = 135000},[2] = {Id = 1502031,Val = 120}}},--秦琼专属武器解封-3
			[4] = {PSkill = 130303111,PSkillLevel = 4,Cost = {[1] = {Id = 1401002,Val = 236500},[2] = {Id = 1502031,Val = 120}}},--秦琼专属武器解封-4
			[5] = {PSkill = 130303111,PSkillLevel = 5,Cost = {[1] = {Id = 1401002,Val = 586000},[2] = {Id = 1502031,Val = 160}}}--秦琼专属武器解封-5
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
				Icon = "UR守护灵专属武器魂珠-1",
				Name = "0",
				LvLimit = 0,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 75,Sum = 75},[2] = {Id = 112,Val = 30,Sum = 30},[3] = {Id = 113,Val = 1200,Sum = 1200}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--UR守护灵魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 195},[2] = {Id = 112,Val = 48,Sum = 78},[3] = {Id = 113,Val = 1920,Sum = 3120}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--UR守护灵魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 150,Sum = 345},[2] = {Id = 112,Val = 60,Sum = 138},[3] = {Id = 113,Val = 2400,Sum = 5520}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--UR守护灵魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 585},[2] = {Id = 112,Val = 96,Sum = 234},[3] = {Id = 113,Val = 3840,Sum = 9360}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--UR守护灵魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 330,Sum = 915},[2] = {Id = 112,Val = 132,Sum = 366},[3] = {Id = 113,Val = 5280,Sum = 14640}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--UR守护灵魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 420,Sum = 1335},[2] = {Id = 112,Val = 168,Sum = 534},[3] = {Id = 113,Val = 6720,Sum = 21360}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--UR守护灵魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1815},[2] = {Id = 112,Val = 192,Sum = 726},[3] = {Id = 113,Val = 7680,Sum = 29040}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--UR守护灵魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 570,Sum = 2385},[2] = {Id = 112,Val = 228,Sum = 954},[3] = {Id = 113,Val = 9120,Sum = 38160}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--UR守护灵魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 630,Sum = 3015},[2] = {Id = 112,Val = 252,Sum = 1206},[3] = {Id = 113,Val = 10080,Sum = 48240}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--UR守护灵魂珠-1 等级-9
				}
			},--40
			[2] = {
				Id = 299602,
				Icon = "UR守护灵专属武器魂珠-2",
				Name = "3",
				LvLimit = 0,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 120},[2] = {Id = 112,Val = 48,Sum = 48},[3] = {Id = 113,Val = 1920,Sum = 1920}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--UR守护灵魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 300},[2] = {Id = 112,Val = 72,Sum = 120},[3] = {Id = 113,Val = 2880,Sum = 4800}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--UR守护灵魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 540},[2] = {Id = 112,Val = 96,Sum = 216},[3] = {Id = 113,Val = 3840,Sum = 8640}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--UR守护灵魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 360,Sum = 900},[2] = {Id = 112,Val = 144,Sum = 360},[3] = {Id = 113,Val = 5760,Sum = 14400}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--UR守护灵魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1380},[2] = {Id = 112,Val = 192,Sum = 552},[3] = {Id = 113,Val = 7680,Sum = 22080}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--UR守护灵魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 600,Sum = 1980},[2] = {Id = 112,Val = 240,Sum = 792},[3] = {Id = 113,Val = 9600,Sum = 31680}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--UR守护灵魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 720,Sum = 2700},[2] = {Id = 112,Val = 288,Sum = 1080},[3] = {Id = 113,Val = 11520,Sum = 43200}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--UR守护灵魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 840,Sum = 3540},[2] = {Id = 112,Val = 336,Sum = 1416},[3] = {Id = 113,Val = 13440,Sum = 56640}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--UR守护灵魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 4500},[2] = {Id = 112,Val = 384,Sum = 1800},[3] = {Id = 113,Val = 15360,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--UR守护灵魂珠-2 等级-9
				}
			},--55
			[3] = {
				Id = 299603,
				Icon = "UR守护灵专属武器魂珠-3",
				Name = "3",
				LvLimit = 0,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 150,Sum = 150},[2] = {Id = 112,Val = 60,Sum = 60},[3] = {Id = 113,Val = 2400,Sum = 2400}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--UR守护灵魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 390},[2] = {Id = 112,Val = 96,Sum = 156},[3] = {Id = 113,Val = 3840,Sum = 6240}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--UR守护灵魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 315,Sum = 705},[2] = {Id = 112,Val = 126,Sum = 282},[3] = {Id = 113,Val = 5040,Sum = 11280}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--UR守护灵魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1185},[2] = {Id = 112,Val = 192,Sum = 474},[3] = {Id = 113,Val = 7680,Sum = 18960}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--UR守护灵魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 639,Sum = 1824},[2] = {Id = 112,Val = 256,Sum = 730},[3] = {Id = 113,Val = 10224,Sum = 29184}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--UR守护灵魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 810,Sum = 2634},[2] = {Id = 112,Val = 324,Sum = 1054},[3] = {Id = 113,Val = 12960,Sum = 42144}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--UR守护灵魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3594},[2] = {Id = 112,Val = 384,Sum = 1438},[3] = {Id = 113,Val = 15360,Sum = 57504}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--UR守护灵魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1125,Sum = 4719},[2] = {Id = 112,Val = 444,Sum = 1882},[3] = {Id = 113,Val = 18000,Sum = 75504}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--UR守护灵魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1275,Sum = 5994},[2] = {Id = 112,Val = 510,Sum = 2392},[3] = {Id = 113,Val = 20400,Sum = 95904}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--UR守护灵魂珠-3 等级-9
				}
			},--75
			[4] = {
				Id = 299604,
				Icon = "UR守护灵专属武器魂珠-4",
				Name = "3",
				LvLimit = 1,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 195,Sum = 195},[2] = {Id = 112,Val = 78,Sum = 78},[3] = {Id = 113,Val = 3120,Sum = 3120}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--UR守护灵魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 300,Sum = 495},[2] = {Id = 112,Val = 120,Sum = 198},[3] = {Id = 113,Val = 4800,Sum = 7920}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--UR守护灵魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 390,Sum = 885},[2] = {Id = 112,Val = 156,Sum = 354},[3] = {Id = 113,Val = 6240,Sum = 14160}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--UR守护灵魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 600,Sum = 1485},[2] = {Id = 112,Val = 240,Sum = 594},[3] = {Id = 113,Val = 9600,Sum = 23760}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--UR守护灵魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 810,Sum = 2295},[2] = {Id = 112,Val = 324,Sum = 918},[3] = {Id = 113,Val = 12960,Sum = 36720}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--UR守护灵魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1005,Sum = 3300},[2] = {Id = 112,Val = 462,Sum = 1380},[3] = {Id = 113,Val = 16080,Sum = 52800}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--UR守护灵魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1200,Sum = 4500},[2] = {Id = 112,Val = 480,Sum = 1860},[3] = {Id = 113,Val = 19200,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--UR守护灵魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1425,Sum = 5925},[2] = {Id = 112,Val = 570,Sum = 2430},[3] = {Id = 113,Val = 22800,Sum = 94800}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--UR守护灵魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1650,Sum = 7575},[2] = {Id = 112,Val = 660,Sum = 3090},[3] = {Id = 113,Val = 26400,Sum = 121200}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--UR守护灵魂珠-4 等级-9
				}
			},--85
			[5] = {
				Id = 299605,
				Icon = "UR守护灵专属武器魂珠-5",
				Name = "3",
				LvLimit = 2,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 270,Sum = 270},[2] = {Id = 112,Val = 108,Sum = 108},[3] = {Id = 113,Val = 4320,Sum = 4320}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--UR守护灵魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 420,Sum = 690},[2] = {Id = 112,Val = 168,Sum = 276},[3] = {Id = 113,Val = 6720,Sum = 11040}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--UR守护灵魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 555,Sum = 1245},[2] = {Id = 112,Val = 222,Sum = 498},[3] = {Id = 113,Val = 8880,Sum = 19920}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--UR守护灵魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 840,Sum = 2085},[2] = {Id = 112,Val = 336,Sum = 834},[3] = {Id = 113,Val = 13440,Sum = 33360}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--UR守护灵魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1125,Sum = 3210},[2] = {Id = 112,Val = 450,Sum = 1284},[3] = {Id = 113,Val = 18000,Sum = 51360}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--UR守护灵魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1425,Sum = 4635},[2] = {Id = 112,Val = 570,Sum = 1854},[3] = {Id = 113,Val = 22800,Sum = 74160}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--UR守护灵魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1800,Sum = 6435},[2] = {Id = 112,Val = 720,Sum = 2574},[3] = {Id = 113,Val = 28800,Sum = 102960}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--UR守护灵魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1950,Sum = 8385},[2] = {Id = 112,Val = 780,Sum = 3354},[3] = {Id = 113,Val = 31200,Sum = 134160}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--UR守护灵魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2250,Sum = 10635},[2] = {Id = 112,Val = 900,Sum = 4254},[3] = {Id = 113,Val = 36000,Sum = 170160}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--UR守护灵魂珠-5 等级-9
				}
			},--110
			[6] = {
				Id = 299606,
				Icon = "UR守护灵专属武器魂珠-6",
				Name = "3",
				LvLimit = 3,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 375,Sum = 375},[2] = {Id = 112,Val = 150,Sum = 150},[3] = {Id = 113,Val = 6000,Sum = 6000}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--UR守护灵魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 600,Sum = 975},[2] = {Id = 112,Val = 240,Sum = 390},[3] = {Id = 113,Val = 9600,Sum = 15600}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--UR守护灵魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 750,Sum = 1725},[2] = {Id = 112,Val = 300,Sum = 690},[3] = {Id = 113,Val = 12000,Sum = 27600}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--UR守护灵魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 1200,Sum = 2925},[2] = {Id = 112,Val = 480,Sum = 1170},[3] = {Id = 113,Val = 19200,Sum = 46800}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--UR守护灵魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1650,Sum = 4575},[2] = {Id = 112,Val = 660,Sum = 1830},[3] = {Id = 113,Val = 26400,Sum = 73200}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--UR守护灵魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 2025,Sum = 6600},[2] = {Id = 112,Val = 810,Sum = 2640},[3] = {Id = 113,Val = 32400,Sum = 105600}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--UR守护灵魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 2400,Sum = 9000},[2] = {Id = 112,Val = 960,Sum = 3600},[3] = {Id = 113,Val = 38400,Sum = 144000}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--UR守护灵魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 2850,Sum = 11850},[2] = {Id = 112,Val = 1140,Sum = 4740},[3] = {Id = 113,Val = 45600,Sum = 189600}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--UR守护灵魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 3300,Sum = 15150},[2] = {Id = 112,Val = 1320,Sum = 6060},[3] = {Id = 113,Val = 52800,Sum = 242400}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--UR守护灵魂珠-6 等级-9
				}
			},--125
			[7] = {
				Id = 299607,
				Icon = "UR守护灵专属武器魂珠-7",
				Name = "3",
				LvLimit = 4,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 480},[2] = {Id = 112,Val = 192,Sum = 192},[3] = {Id = 113,Val = 7680,Sum = 7680}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--UR守护灵魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 720,Sum = 1200},[2] = {Id = 112,Val = 288,Sum = 480},[3] = {Id = 113,Val = 11520,Sum = 19200}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--UR守护灵魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 2160},[2] = {Id = 112,Val = 384,Sum = 864},[3] = {Id = 113,Val = 15360,Sum = 34560}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--UR守护灵魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 1440,Sum = 3600},[2] = {Id = 112,Val = 576,Sum = 1440},[3] = {Id = 113,Val = 23040,Sum = 57600}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--UR守护灵魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1920,Sum = 5520},[2] = {Id = 112,Val = 768,Sum = 2208},[3] = {Id = 113,Val = 30720,Sum = 88320}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--UR守护灵魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 2400,Sum = 7920},[2] = {Id = 112,Val = 960,Sum = 3168},[3] = {Id = 113,Val = 38400,Sum = 126720}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--UR守护灵魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 2880,Sum = 10800},[2] = {Id = 112,Val = 1152,Sum = 4320},[3] = {Id = 113,Val = 46080,Sum = 172800}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--UR守护灵魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 3360,Sum = 14160},[2] = {Id = 112,Val = 1344,Sum = 5664},[3] = {Id = 113,Val = 53760,Sum = 226560}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--UR守护灵魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 3840,Sum = 18000},[2] = {Id = 112,Val = 1536,Sum = 7200},[3] = {Id = 113,Val = 61440,Sum = 288000}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--UR守护灵魂珠-7 等级-9
				}
			},--135
			[8] = {
				Id = 299608,
				Icon = "UR守护灵专属武器魂珠-8",
				Name = "3",
				LvLimit = 5,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--UR守护灵魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 600,Sum = 600},[2] = {Id = 112,Val = 240,Sum = 240},[3] = {Id = 113,Val = 9600,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--UR守护灵魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 1500},[2] = {Id = 112,Val = 360,Sum = 600},[3] = {Id = 113,Val = 14400,Sum = 24000}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--UR守护灵魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 1200,Sum = 2700},[2] = {Id = 112,Val = 480,Sum = 1080},[3] = {Id = 113,Val = 19200,Sum = 43200}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--UR守护灵魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 1800,Sum = 4500},[2] = {Id = 112,Val = 720,Sum = 1800},[3] = {Id = 113,Val = 28800,Sum = 72000}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--UR守护灵魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 2400,Sum = 6900},[2] = {Id = 112,Val = 960,Sum = 2760},[3] = {Id = 113,Val = 38400,Sum = 110400}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--UR守护灵魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 3000,Sum = 9900},[2] = {Id = 112,Val = 1200,Sum = 3960},[3] = {Id = 113,Val = 48000,Sum = 158400}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--UR守护灵魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 3600,Sum = 13500},[2] = {Id = 112,Val = 1440,Sum = 5400},[3] = {Id = 113,Val = 57600,Sum = 216000}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--UR守护灵魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 4200,Sum = 17700},[2] = {Id = 112,Val = 1680,Sum = 7080},[3] = {Id = 113,Val = 67200,Sum = 283200}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--UR守护灵魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 4800,Sum = 22500},[2] = {Id = 112,Val = 1920,Sum = 9000},[3] = {Id = 113,Val = 76800,Sum = 360000}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--UR守护灵魂珠-8 等级-9
				}
			}--150
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
				Icon = "SSR守护灵专属武器魂珠-1",
				Name = "0",
				LvLimit = 0,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 60,Sum = 60},[2] = {Id = 112,Val = 28,Sum = 28},[3] = {Id = 113,Val = 1100,Sum = 1100}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SSR守护灵魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 156},[2] = {Id = 112,Val = 44,Sum = 72},[3] = {Id = 113,Val = 1760,Sum = 2860}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SSR守护灵魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 276},[2] = {Id = 112,Val = 55,Sum = 127},[3] = {Id = 113,Val = 2200,Sum = 5060}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SSR守护灵魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 468},[2] = {Id = 112,Val = 88,Sum = 215},[3] = {Id = 113,Val = 3520,Sum = 8580}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SSR守护灵魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 264,Sum = 732},[2] = {Id = 112,Val = 121,Sum = 336},[3] = {Id = 113,Val = 4840,Sum = 13420}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--SSR守护灵魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1068},[2] = {Id = 112,Val = 154,Sum = 490},[3] = {Id = 113,Val = 6160,Sum = 19580}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--SSR守护灵魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1452},[2] = {Id = 112,Val = 176,Sum = 666},[3] = {Id = 113,Val = 7040,Sum = 26620}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--SSR守护灵魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 456,Sum = 1908},[2] = {Id = 112,Val = 209,Sum = 875},[3] = {Id = 113,Val = 8360,Sum = 34980}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--SSR守护灵魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 504,Sum = 2412},[2] = {Id = 112,Val = 231,Sum = 1106},[3] = {Id = 113,Val = 9240,Sum = 44220}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--SSR守护灵魂珠-1 等级-9
				}
			},--40
			[2] = {
				Id = 299702,
				Icon = "SSR守护灵专属武器魂珠-2",
				Name = "3",
				LvLimit = 0,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 96},[2] = {Id = 112,Val = 44,Sum = 44},[3] = {Id = 113,Val = 1760,Sum = 1760}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--SSR守护灵魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 240},[2] = {Id = 112,Val = 66,Sum = 110},[3] = {Id = 113,Val = 2640,Sum = 4400}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SSR守护灵魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 432},[2] = {Id = 112,Val = 88,Sum = 198},[3] = {Id = 113,Val = 3520,Sum = 7920}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SSR守护灵魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 288,Sum = 720},[2] = {Id = 112,Val = 132,Sum = 330},[3] = {Id = 113,Val = 5280,Sum = 13200}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SSR守护灵魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1104},[2] = {Id = 112,Val = 176,Sum = 506},[3] = {Id = 113,Val = 7040,Sum = 20240}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--SSR守护灵魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1584},[2] = {Id = 112,Val = 220,Sum = 726},[3] = {Id = 113,Val = 8800,Sum = 29040}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SSR守护灵魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 2160},[2] = {Id = 112,Val = 264,Sum = 990},[3] = {Id = 113,Val = 10560,Sum = 39600}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SSR守护灵魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 2832},[2] = {Id = 112,Val = 308,Sum = 1298},[3] = {Id = 113,Val = 12320,Sum = 51920}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--SSR守护灵魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 3600},[2] = {Id = 112,Val = 352,Sum = 1650},[3] = {Id = 113,Val = 14080,Sum = 66000}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--SSR守护灵魂珠-2 等级-9
				}
			},--55
			[3] = {
				Id = 299703,
				Icon = "SSR守护灵专属武器魂珠-3",
				Name = "3",
				LvLimit = 0,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 120},[2] = {Id = 112,Val = 55,Sum = 55},[3] = {Id = 113,Val = 2200,Sum = 2200}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--SSR守护灵魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 312},[2] = {Id = 112,Val = 88,Sum = 143},[3] = {Id = 113,Val = 3520,Sum = 5720}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SSR守护灵魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 252,Sum = 564},[2] = {Id = 112,Val = 116,Sum = 259},[3] = {Id = 113,Val = 4620,Sum = 10340}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SSR守护灵魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 948},[2] = {Id = 112,Val = 176,Sum = 435},[3] = {Id = 113,Val = 7040,Sum = 17380}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SSR守护灵魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 511,Sum = 1459},[2] = {Id = 112,Val = 234,Sum = 669},[3] = {Id = 113,Val = 9372,Sum = 26752}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--SSR守护灵魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 648,Sum = 2107},[2] = {Id = 112,Val = 297,Sum = 966},[3] = {Id = 113,Val = 11880,Sum = 38632}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--SSR守护灵魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 2875},[2] = {Id = 112,Val = 352,Sum = 1318},[3] = {Id = 113,Val = 14080,Sum = 52712}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--SSR守护灵魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 3775},[2] = {Id = 112,Val = 407,Sum = 1725},[3] = {Id = 113,Val = 16500,Sum = 69212}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--SSR守护灵魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1020,Sum = 4795},[2] = {Id = 112,Val = 468,Sum = 2193},[3] = {Id = 113,Val = 18700,Sum = 87912}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--SSR守护灵魂珠-3 等级-9
				}
			},--75
			[4] = {
				Id = 299704,
				Icon = "SSR守护灵专属武器魂珠-4",
				Name = "3",
				LvLimit = 1,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 156,Sum = 156},[2] = {Id = 112,Val = 72,Sum = 72},[3] = {Id = 113,Val = 2860,Sum = 2860}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SSR守护灵魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 396},[2] = {Id = 112,Val = 110,Sum = 182},[3] = {Id = 113,Val = 4400,Sum = 7260}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--SSR守护灵魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 312,Sum = 708},[2] = {Id = 112,Val = 143,Sum = 325},[3] = {Id = 113,Val = 5720,Sum = 12980}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--SSR守护灵魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1188},[2] = {Id = 112,Val = 220,Sum = 545},[3] = {Id = 113,Val = 8800,Sum = 21780}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--SSR守护灵魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 648,Sum = 1836},[2] = {Id = 112,Val = 297,Sum = 842},[3] = {Id = 113,Val = 11880,Sum = 33660}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--SSR守护灵魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 804,Sum = 2640},[2] = {Id = 112,Val = 424,Sum = 1266},[3] = {Id = 113,Val = 14740,Sum = 48400}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--SSR守护灵魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3600},[2] = {Id = 112,Val = 440,Sum = 1706},[3] = {Id = 113,Val = 17600,Sum = 66000}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--SSR守护灵魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1140,Sum = 4740},[2] = {Id = 112,Val = 523,Sum = 2229},[3] = {Id = 113,Val = 20900,Sum = 86900}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--SSR守护灵魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 6060},[2] = {Id = 112,Val = 605,Sum = 2834},[3] = {Id = 113,Val = 24200,Sum = 111100}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--SSR守护灵魂珠-4 等级-9
				}
			},--85
			[5] = {
				Id = 299705,
				Icon = "SSR守护灵专属武器魂珠-5",
				Name = "3",
				LvLimit = 2,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 216,Sum = 216},[2] = {Id = 112,Val = 99,Sum = 99},[3] = {Id = 113,Val = 3960,Sum = 3960}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SSR守护灵魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 552},[2] = {Id = 112,Val = 154,Sum = 253},[3] = {Id = 113,Val = 6160,Sum = 10120}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--SSR守护灵魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 444,Sum = 996},[2] = {Id = 112,Val = 204,Sum = 457},[3] = {Id = 113,Val = 8140,Sum = 18260}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--SSR守护灵魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 672,Sum = 1668},[2] = {Id = 112,Val = 308,Sum = 765},[3] = {Id = 113,Val = 12320,Sum = 30580}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--SSR守护灵魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 900,Sum = 2568},[2] = {Id = 112,Val = 413,Sum = 1178},[3] = {Id = 113,Val = 16500,Sum = 47080}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--SSR守护灵魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1140,Sum = 3708},[2] = {Id = 112,Val = 523,Sum = 1701},[3] = {Id = 113,Val = 20900,Sum = 67980}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--SSR守护灵魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1440,Sum = 5148},[2] = {Id = 112,Val = 660,Sum = 2361},[3] = {Id = 113,Val = 26400,Sum = 94380}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--SSR守护灵魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1560,Sum = 6708},[2] = {Id = 112,Val = 715,Sum = 3076},[3] = {Id = 113,Val = 28600,Sum = 122980}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--SSR守护灵魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1800,Sum = 8508},[2] = {Id = 112,Val = 825,Sum = 3901},[3] = {Id = 113,Val = 33000,Sum = 155980}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--SSR守护灵魂珠-5 等级-9
				}
			},--110
			[6] = {
				Id = 299706,
				Icon = "SSR守护灵专属武器魂珠-6",
				Name = "3",
				LvLimit = 3,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 300,Sum = 300},[2] = {Id = 112,Val = 138,Sum = 138},[3] = {Id = 113,Val = 5500,Sum = 5500}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SSR守护灵魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 780},[2] = {Id = 112,Val = 220,Sum = 358},[3] = {Id = 113,Val = 8800,Sum = 14300}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SSR守护灵魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 600,Sum = 1380},[2] = {Id = 112,Val = 275,Sum = 633},[3] = {Id = 113,Val = 11000,Sum = 25300}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--SSR守护灵魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 2340},[2] = {Id = 112,Val = 440,Sum = 1073},[3] = {Id = 113,Val = 17600,Sum = 42900}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SSR守护灵魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1320,Sum = 3660},[2] = {Id = 112,Val = 605,Sum = 1678},[3] = {Id = 113,Val = 24200,Sum = 67100}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--SSR守护灵魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1620,Sum = 5280},[2] = {Id = 112,Val = 743,Sum = 2421},[3] = {Id = 113,Val = 29700,Sum = 96800}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--SSR守护灵魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1920,Sum = 7200},[2] = {Id = 112,Val = 880,Sum = 3301},[3] = {Id = 113,Val = 35200,Sum = 132000}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--SSR守护灵魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 2280,Sum = 9480},[2] = {Id = 112,Val = 1045,Sum = 4346},[3] = {Id = 113,Val = 41800,Sum = 173800}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--SSR守护灵魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2640,Sum = 12120},[2] = {Id = 112,Val = 1210,Sum = 5556},[3] = {Id = 113,Val = 48400,Sum = 222200}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--SSR守护灵魂珠-6 等级-9
				}
			},--125
			[7] = {
				Id = 299707,
				Icon = "SSR守护灵专属武器魂珠-7",
				Name = "3",
				LvLimit = 4,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 384},[2] = {Id = 112,Val = 176,Sum = 176},[3] = {Id = 113,Val = 7040,Sum = 7040}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--SSR守护灵魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 576,Sum = 960},[2] = {Id = 112,Val = 264,Sum = 440},[3] = {Id = 113,Val = 10560,Sum = 17600}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SSR守护灵魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 1728},[2] = {Id = 112,Val = 352,Sum = 792},[3] = {Id = 113,Val = 14080,Sum = 31680}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SSR守护灵魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 1152,Sum = 2880},[2] = {Id = 112,Val = 528,Sum = 1320},[3] = {Id = 113,Val = 21120,Sum = 52800}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SSR守护灵魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1536,Sum = 4416},[2] = {Id = 112,Val = 704,Sum = 2024},[3] = {Id = 113,Val = 28160,Sum = 80960}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--SSR守护灵魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1920,Sum = 6336},[2] = {Id = 112,Val = 880,Sum = 2904},[3] = {Id = 113,Val = 35200,Sum = 116160}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--SSR守护灵魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 2304,Sum = 8640},[2] = {Id = 112,Val = 1056,Sum = 3960},[3] = {Id = 113,Val = 42240,Sum = 158400}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--SSR守护灵魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 2688,Sum = 11328},[2] = {Id = 112,Val = 1232,Sum = 5192},[3] = {Id = 113,Val = 49280,Sum = 207680}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--SSR守护灵魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 3072,Sum = 14400},[2] = {Id = 112,Val = 1408,Sum = 6600},[3] = {Id = 113,Val = 56320,Sum = 264000}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--SSR守护灵魂珠-7 等级-9
				}
			},--135
			[8] = {
				Id = 299708,
				Icon = "SSR守护灵专属武器魂珠-8",
				Name = "3",
				LvLimit = 5,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SSR守护灵魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 480},[2] = {Id = 112,Val = 220,Sum = 220},[3] = {Id = 113,Val = 8800,Sum = 8800}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--SSR守护灵魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 720,Sum = 1200},[2] = {Id = 112,Val = 330,Sum = 550},[3] = {Id = 113,Val = 13200,Sum = 22000}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--SSR守护灵魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 2160},[2] = {Id = 112,Val = 440,Sum = 990},[3] = {Id = 113,Val = 17600,Sum = 39600}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--SSR守护灵魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 1440,Sum = 3600},[2] = {Id = 112,Val = 660,Sum = 1650},[3] = {Id = 113,Val = 26400,Sum = 66000}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--SSR守护灵魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1920,Sum = 5520},[2] = {Id = 112,Val = 880,Sum = 2530},[3] = {Id = 113,Val = 35200,Sum = 101200}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--SSR守护灵魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 2400,Sum = 7920},[2] = {Id = 112,Val = 1100,Sum = 3630},[3] = {Id = 113,Val = 44000,Sum = 145200}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--SSR守护灵魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 2880,Sum = 10800},[2] = {Id = 112,Val = 1320,Sum = 4950},[3] = {Id = 113,Val = 52800,Sum = 198000}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--SSR守护灵魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 3360,Sum = 14160},[2] = {Id = 112,Val = 1540,Sum = 6490},[3] = {Id = 113,Val = 61600,Sum = 259600}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--SSR守护灵魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 3840,Sum = 18000},[2] = {Id = 112,Val = 1760,Sum = 8250},[3] = {Id = 113,Val = 70400,Sum = 330000}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--SSR守护灵魂珠-8 等级-9
				}
			}--150
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
				Icon = "SR守护灵专属武器魂珠-1",
				Name = "0",
				LvLimit = 0,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 50,Sum = 50},[2] = {Id = 112,Val = 25,Sum = 25},[3] = {Id = 113,Val = 1000,Sum = 1000}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SR守护灵魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 130},[2] = {Id = 112,Val = 40,Sum = 65},[3] = {Id = 113,Val = 1600,Sum = 2600}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SR守护灵魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 230},[2] = {Id = 112,Val = 50,Sum = 115},[3] = {Id = 113,Val = 2000,Sum = 4600}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--SR守护灵魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 390},[2] = {Id = 112,Val = 80,Sum = 195},[3] = {Id = 113,Val = 3200,Sum = 7800}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SR守护灵魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 220,Sum = 610},[2] = {Id = 112,Val = 110,Sum = 305},[3] = {Id = 113,Val = 4400,Sum = 12200}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--SR守护灵魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 890},[2] = {Id = 112,Val = 140,Sum = 445},[3] = {Id = 113,Val = 5600,Sum = 17800}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--SR守护灵魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 1210},[2] = {Id = 112,Val = 160,Sum = 605},[3] = {Id = 113,Val = 6400,Sum = 24200}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--SR守护灵魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 380,Sum = 1590},[2] = {Id = 112,Val = 190,Sum = 795},[3] = {Id = 113,Val = 7600,Sum = 31800}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--SR守护灵魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 420,Sum = 2010},[2] = {Id = 112,Val = 210,Sum = 1005},[3] = {Id = 113,Val = 8400,Sum = 40200}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--SR守护灵魂珠-1 等级-9
				}
			},--40
			[2] = {
				Id = 299802,
				Icon = "SR守护灵专属武器魂珠-2",
				Name = "3",
				LvLimit = 0,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 80},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 1600,Sum = 1600}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--SR守护灵魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 120,Sum = 200},[2] = {Id = 112,Val = 60,Sum = 100},[3] = {Id = 113,Val = 2400,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SR守护灵魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 360},[2] = {Id = 112,Val = 80,Sum = 180},[3] = {Id = 113,Val = 3200,Sum = 7200}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SR守护灵魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 240,Sum = 600},[2] = {Id = 112,Val = 120,Sum = 300},[3] = {Id = 113,Val = 4800,Sum = 12000}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SR守护灵魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 920},[2] = {Id = 112,Val = 160,Sum = 460},[3] = {Id = 113,Val = 6400,Sum = 18400}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--SR守护灵魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 400,Sum = 1320},[2] = {Id = 112,Val = 200,Sum = 660},[3] = {Id = 113,Val = 8000,Sum = 26400}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SR守护灵魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 1800},[2] = {Id = 112,Val = 240,Sum = 900},[3] = {Id = 113,Val = 9600,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SR守护灵魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 2360},[2] = {Id = 112,Val = 280,Sum = 1180},[3] = {Id = 113,Val = 11200,Sum = 47200}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--SR守护灵魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 3000},[2] = {Id = 112,Val = 320,Sum = 1500},[3] = {Id = 113,Val = 12800,Sum = 60000}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--SR守护灵魂珠-2 等级-9
				}
			},--55
			[3] = {
				Id = 299803,
				Icon = "SR守护灵专属武器魂珠-3",
				Name = "3",
				LvLimit = 0,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 100,Sum = 100},[2] = {Id = 112,Val = 50,Sum = 50},[3] = {Id = 113,Val = 2000,Sum = 2000}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--SR守护灵魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 260},[2] = {Id = 112,Val = 80,Sum = 130},[3] = {Id = 113,Val = 3200,Sum = 5200}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SR守护灵魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 210,Sum = 470},[2] = {Id = 112,Val = 105,Sum = 235},[3] = {Id = 113,Val = 4200,Sum = 9400}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--SR守护灵魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 790},[2] = {Id = 112,Val = 160,Sum = 395},[3] = {Id = 113,Val = 6400,Sum = 15800}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SR守护灵魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 426,Sum = 1216},[2] = {Id = 112,Val = 213,Sum = 608},[3] = {Id = 113,Val = 8520,Sum = 24320}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--SR守护灵魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 1756},[2] = {Id = 112,Val = 270,Sum = 878},[3] = {Id = 113,Val = 10800,Sum = 35120}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--SR守护灵魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 2396},[2] = {Id = 112,Val = 320,Sum = 1198},[3] = {Id = 113,Val = 12800,Sum = 47920}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--SR守护灵魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 750,Sum = 3146},[2] = {Id = 112,Val = 370,Sum = 1568},[3] = {Id = 113,Val = 15000,Sum = 62920}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--SR守护灵魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 850,Sum = 3996},[2] = {Id = 112,Val = 425,Sum = 1993},[3] = {Id = 113,Val = 17000,Sum = 79920}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--SR守护灵魂珠-3 等级-9
				}
			},--75
			[4] = {
				Id = 299804,
				Icon = "SR守护灵专属武器魂珠-4",
				Name = "3",
				LvLimit = 1,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 130,Sum = 130},[2] = {Id = 112,Val = 65,Sum = 65},[3] = {Id = 113,Val = 2600,Sum = 2600}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SR守护灵魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 330},[2] = {Id = 112,Val = 100,Sum = 165},[3] = {Id = 113,Val = 4000,Sum = 6600}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--SR守护灵魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 260,Sum = 590},[2] = {Id = 112,Val = 130,Sum = 295},[3] = {Id = 113,Val = 5200,Sum = 11800}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--SR守护灵魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 400,Sum = 990},[2] = {Id = 112,Val = 200,Sum = 495},[3] = {Id = 113,Val = 8000,Sum = 19800}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--SR守护灵魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 540,Sum = 1530},[2] = {Id = 112,Val = 270,Sum = 765},[3] = {Id = 113,Val = 10800,Sum = 30600}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--SR守护灵魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 670,Sum = 2200},[2] = {Id = 112,Val = 385,Sum = 1150},[3] = {Id = 113,Val = 13400,Sum = 44000}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--SR守护灵魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 800,Sum = 3000},[2] = {Id = 112,Val = 400,Sum = 1550},[3] = {Id = 113,Val = 16000,Sum = 60000}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--SR守护灵魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 950,Sum = 3950},[2] = {Id = 112,Val = 475,Sum = 2025},[3] = {Id = 113,Val = 19000,Sum = 79000}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--SR守护灵魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1100,Sum = 5050},[2] = {Id = 112,Val = 550,Sum = 2575},[3] = {Id = 113,Val = 22000,Sum = 101000}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--SR守护灵魂珠-4 等级-9
				}
			},--85
			[5] = {
				Id = 299805,
				Icon = "SR守护灵专属武器魂珠-5",
				Name = "3",
				LvLimit = 2,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 180,Sum = 180},[2] = {Id = 112,Val = 90,Sum = 90},[3] = {Id = 113,Val = 3600,Sum = 3600}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--SR守护灵魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 280,Sum = 460},[2] = {Id = 112,Val = 140,Sum = 230},[3] = {Id = 113,Val = 5600,Sum = 9200}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--SR守护灵魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 370,Sum = 830},[2] = {Id = 112,Val = 185,Sum = 415},[3] = {Id = 113,Val = 7400,Sum = 16600}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--SR守护灵魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 560,Sum = 1390},[2] = {Id = 112,Val = 280,Sum = 695},[3] = {Id = 113,Val = 11200,Sum = 27800}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--SR守护灵魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 750,Sum = 2140},[2] = {Id = 112,Val = 375,Sum = 1070},[3] = {Id = 113,Val = 15000,Sum = 42800}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--SR守护灵魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 950,Sum = 3090},[2] = {Id = 112,Val = 475,Sum = 1545},[3] = {Id = 113,Val = 19000,Sum = 61800}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--SR守护灵魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1200,Sum = 4290},[2] = {Id = 112,Val = 600,Sum = 2145},[3] = {Id = 113,Val = 24000,Sum = 85800}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--SR守护灵魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1300,Sum = 5590},[2] = {Id = 112,Val = 650,Sum = 2795},[3] = {Id = 113,Val = 26000,Sum = 111800}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--SR守护灵魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1500,Sum = 7090},[2] = {Id = 112,Val = 750,Sum = 3545},[3] = {Id = 113,Val = 30000,Sum = 141800}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--SR守护灵魂珠-5 等级-9
				}
			},--110
			[6] = {
				Id = 299806,
				Icon = "SR守护灵专属武器魂珠-6",
				Name = "3",
				LvLimit = 3,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 250,Sum = 250},[2] = {Id = 112,Val = 125,Sum = 125},[3] = {Id = 113,Val = 5000,Sum = 5000}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SR守护灵魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 400,Sum = 650},[2] = {Id = 112,Val = 200,Sum = 325},[3] = {Id = 113,Val = 8000,Sum = 13000}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--SR守护灵魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 500,Sum = 1150},[2] = {Id = 112,Val = 250,Sum = 575},[3] = {Id = 113,Val = 10000,Sum = 23000}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--SR守护灵魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 800,Sum = 1950},[2] = {Id = 112,Val = 400,Sum = 975},[3] = {Id = 113,Val = 16000,Sum = 39000}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SR守护灵魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1100,Sum = 3050},[2] = {Id = 112,Val = 550,Sum = 1525},[3] = {Id = 113,Val = 22000,Sum = 61000}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--SR守护灵魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1350,Sum = 4400},[2] = {Id = 112,Val = 675,Sum = 2200},[3] = {Id = 113,Val = 27000,Sum = 88000}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--SR守护灵魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1600,Sum = 6000},[2] = {Id = 112,Val = 800,Sum = 3000},[3] = {Id = 113,Val = 32000,Sum = 120000}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--SR守护灵魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1900,Sum = 7900},[2] = {Id = 112,Val = 950,Sum = 3950},[3] = {Id = 113,Val = 38000,Sum = 158000}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--SR守护灵魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2200,Sum = 10100},[2] = {Id = 112,Val = 1100,Sum = 5050},[3] = {Id = 113,Val = 44000,Sum = 202000}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--SR守护灵魂珠-6 等级-9
				}
			},--125
			[7] = {
				Id = 299807,
				Icon = "SR守护灵专属武器魂珠-7",
				Name = "3",
				LvLimit = 4,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 320},[2] = {Id = 112,Val = 160,Sum = 160},[3] = {Id = 113,Val = 6400,Sum = 6400}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--SR守护灵魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 800},[2] = {Id = 112,Val = 240,Sum = 400},[3] = {Id = 113,Val = 9600,Sum = 16000}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SR守护灵魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 1440},[2] = {Id = 112,Val = 320,Sum = 720},[3] = {Id = 113,Val = 12800,Sum = 28800}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--SR守护灵魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 2400},[2] = {Id = 112,Val = 480,Sum = 1200},[3] = {Id = 113,Val = 19200,Sum = 48000}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--SR守护灵魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1280,Sum = 3680},[2] = {Id = 112,Val = 640,Sum = 1840},[3] = {Id = 113,Val = 25600,Sum = 73600}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--SR守护灵魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1600,Sum = 5280},[2] = {Id = 112,Val = 800,Sum = 2640},[3] = {Id = 113,Val = 32000,Sum = 105600}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--SR守护灵魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1920,Sum = 7200},[2] = {Id = 112,Val = 960,Sum = 3600},[3] = {Id = 113,Val = 38400,Sum = 144000}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--SR守护灵魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 2240,Sum = 9440},[2] = {Id = 112,Val = 1120,Sum = 4720},[3] = {Id = 113,Val = 44800,Sum = 188800}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--SR守护灵魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2560,Sum = 12000},[2] = {Id = 112,Val = 1280,Sum = 6000},[3] = {Id = 113,Val = 51200,Sum = 240000}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--SR守护灵魂珠-7 等级-9
				}
			},--135
			[8] = {
				Id = 299808,
				Icon = "SR守护灵专属武器魂珠-8",
				Name = "3",
				LvLimit = 5,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--SR守护灵魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 400,Sum = 400},[2] = {Id = 112,Val = 200,Sum = 200},[3] = {Id = 113,Val = 8000,Sum = 8000}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--SR守护灵魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 600,Sum = 1000},[2] = {Id = 112,Val = 300,Sum = 500},[3] = {Id = 113,Val = 12000,Sum = 20000}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--SR守护灵魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 800,Sum = 1800},[2] = {Id = 112,Val = 400,Sum = 900},[3] = {Id = 113,Val = 16000,Sum = 36000}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--SR守护灵魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 1200,Sum = 3000},[2] = {Id = 112,Val = 600,Sum = 1500},[3] = {Id = 113,Val = 24000,Sum = 60000}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--SR守护灵魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1600,Sum = 4600},[2] = {Id = 112,Val = 800,Sum = 2300},[3] = {Id = 113,Val = 32000,Sum = 92000}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--SR守护灵魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 2000,Sum = 6600},[2] = {Id = 112,Val = 1000,Sum = 3300},[3] = {Id = 113,Val = 40000,Sum = 132000}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--SR守护灵魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 2400,Sum = 9000},[2] = {Id = 112,Val = 1200,Sum = 4500},[3] = {Id = 113,Val = 48000,Sum = 180000}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--SR守护灵魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 2800,Sum = 11800},[2] = {Id = 112,Val = 1400,Sum = 5900},[3] = {Id = 113,Val = 56000,Sum = 236000}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--SR守护灵魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 3200,Sum = 15000},[2] = {Id = 112,Val = 1600,Sum = 7500},[3] = {Id = 113,Val = 64000,Sum = 300000}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--SR守护灵魂珠-8 等级-9
				}
			}--150
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
				Icon = "R守护灵专属武器魂珠-1",
				Name = "0",
				LvLimit = 0,
				PreLv = 0,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-1 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 40,Sum = 40},[2] = {Id = 112,Val = 20,Sum = 20},[3] = {Id = 113,Val = 800,Sum = 800}},Cost = {[1] = {Id = 1401002,Val = 120},[2] = {Id = 1609001,Val = 1}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--R守护灵魂珠-1 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 64,Sum = 104},[2] = {Id = 112,Val = 32,Sum = 52},[3] = {Id = 113,Val = 1280,Sum = 2080}},Cost = {[1] = {Id = 1401002,Val = 185},[2] = {Id = 1609001,Val = 2}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--R守护灵魂珠-1 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 184},[2] = {Id = 112,Val = 40,Sum = 92},[3] = {Id = 113,Val = 1600,Sum = 3680}},Cost = {[1] = {Id = 1401002,Val = 305},[2] = {Id = 1609001,Val = 3}},StrenthSuccessRate = 0.24,Fv = 1,MaxV = 6},--R守护灵魂珠-1 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 128,Sum = 312},[2] = {Id = 112,Val = 64,Sum = 156},[3] = {Id = 113,Val = 2560,Sum = 6240}},Cost = {[1] = {Id = 1401002,Val = 390},[2] = {Id = 1609001,Val = 4}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--R守护灵魂珠-1 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 176,Sum = 488},[2] = {Id = 112,Val = 88,Sum = 244},[3] = {Id = 113,Val = 3520,Sum = 9760}},Cost = {[1] = {Id = 1401002,Val = 495},[2] = {Id = 1609001,Val = 5}},StrenthSuccessRate = 0.15,Fv = 1,MaxV = 10},--R守护灵魂珠-1 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 224,Sum = 712},[2] = {Id = 112,Val = 112,Sum = 356},[3] = {Id = 113,Val = 4480,Sum = 14240}},Cost = {[1] = {Id = 1401002,Val = 590},[2] = {Id = 1609001,Val = 6}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--R守护灵魂珠-1 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 256,Sum = 968},[2] = {Id = 112,Val = 128,Sum = 484},[3] = {Id = 113,Val = 5120,Sum = 19360}},Cost = {[1] = {Id = 1401002,Val = 690},[2] = {Id = 1609001,Val = 7}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--R守护灵魂珠-1 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 304,Sum = 1272},[2] = {Id = 112,Val = 152,Sum = 636},[3] = {Id = 113,Val = 6080,Sum = 25440}},Cost = {[1] = {Id = 1401002,Val = 790},[2] = {Id = 1609001,Val = 8}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--R守护灵魂珠-1 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 336,Sum = 1608},[2] = {Id = 112,Val = 168,Sum = 804},[3] = {Id = 113,Val = 6720,Sum = 32160}},Cost = {[1] = {Id = 1401002,Val = 985},[2] = {Id = 1609001,Val = 10}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34}--R守护灵魂珠-1 等级-9
				}
			},--40
			[2] = {
				Id = 299902,
				Icon = "R守护灵专属武器魂珠-2",
				Name = "3",
				LvLimit = 0,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-2 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 64,Sum = 64},[2] = {Id = 112,Val = 32,Sum = 32},[3] = {Id = 113,Val = 1280,Sum = 1280}},Cost = {[1] = {Id = 1401002,Val = 335},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.29,Fv = 1,MaxV = 5},--R守护灵魂珠-2 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 96,Sum = 160},[2] = {Id = 112,Val = 48,Sum = 80},[3] = {Id = 113,Val = 1920,Sum = 3200}},Cost = {[1] = {Id = 1401002,Val = 250},[2] = {Id = 1609001,Val = 3},[3] = {Id = 1609002,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--R守护灵魂珠-2 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 128,Sum = 288},[2] = {Id = 112,Val = 64,Sum = 144},[3] = {Id = 113,Val = 2560,Sum = 5760}},Cost = {[1] = {Id = 1401002,Val = 555},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--R守护灵魂珠-2 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 192,Sum = 480},[2] = {Id = 112,Val = 96,Sum = 240},[3] = {Id = 113,Val = 3840,Sum = 9600}},Cost = {[1] = {Id = 1401002,Val = 535},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--R守护灵魂珠-2 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 256,Sum = 736},[2] = {Id = 112,Val = 128,Sum = 368},[3] = {Id = 113,Val = 5120,Sum = 14720}},Cost = {[1] = {Id = 1401002,Val = 810},[2] = {Id = 1609001,Val = 9},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.11,Fv = 1,MaxV = 14},--R守护灵魂珠-2 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 1056},[2] = {Id = 112,Val = 160,Sum = 528},[3] = {Id = 113,Val = 6400,Sum = 21120}},Cost = {[1] = {Id = 1401002,Val = 1075},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--R守护灵魂珠-2 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 1440},[2] = {Id = 112,Val = 192,Sum = 720},[3] = {Id = 113,Val = 7680,Sum = 28800}},Cost = {[1] = {Id = 1401002,Val = 1345},[2] = {Id = 1609001,Val = 15},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--R守护灵魂珠-2 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 448,Sum = 1888},[2] = {Id = 112,Val = 224,Sum = 944},[3] = {Id = 113,Val = 8960,Sum = 37760}},Cost = {[1] = {Id = 1401002,Val = 1615},[2] = {Id = 1609001,Val = 18},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 29},--R守护灵魂珠-2 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 512,Sum = 2400},[2] = {Id = 112,Val = 256,Sum = 1200},[3] = {Id = 113,Val = 10240,Sum = 48000}},Cost = {[1] = {Id = 1401002,Val = 2155},[2] = {Id = 1609001,Val = 24},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 36}--R守护灵魂珠-2 等级-9
				}
			},--55
			[3] = {
				Id = 299903,
				Icon = "R守护灵专属武器魂珠-3",
				Name = "3",
				LvLimit = 0,
				PreLv = 3,
				UnsealLv = 0,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-3 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 80,Sum = 80},[2] = {Id = 112,Val = 40,Sum = 40},[3] = {Id = 113,Val = 1600,Sum = 1600}},Cost = {[1] = {Id = 1401002,Val = 685},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.23,Fv = 1,MaxV = 6},--R守护灵魂珠-3 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 128,Sum = 208},[2] = {Id = 112,Val = 64,Sum = 104},[3] = {Id = 113,Val = 2560,Sum = 4160}},Cost = {[1] = {Id = 1401002,Val = 515},[2] = {Id = 1609001,Val = 4},[3] = {Id = 1609002,Val = 2}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--R守护灵魂珠-3 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 168,Sum = 376},[2] = {Id = 112,Val = 84,Sum = 188},[3] = {Id = 113,Val = 3360,Sum = 7520}},Cost = {[1] = {Id = 1401002,Val = 855},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.12,Fv = 1,MaxV = 13},--R守护灵魂珠-3 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 256,Sum = 632},[2] = {Id = 112,Val = 128,Sum = 316},[3] = {Id = 113,Val = 5120,Sum = 12640}},Cost = {[1] = {Id = 1401002,Val = 820},[2] = {Id = 1609001,Val = 6},[3] = {Id = 1609002,Val = 3}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--R守护灵魂珠-3 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 341,Sum = 973},[2] = {Id = 112,Val = 170,Sum = 486},[3] = {Id = 113,Val = 6816,Sum = 19456}},Cost = {[1] = {Id = 1401002,Val = 1115},[2] = {Id = 1609001,Val = 8},[3] = {Id = 1609002,Val = 4}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 26},--R守护灵魂珠-3 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1405},[2] = {Id = 112,Val = 216,Sum = 702},[3] = {Id = 113,Val = 8640,Sum = 28096}},Cost = {[1] = {Id = 1401002,Val = 1385},[2] = {Id = 1609001,Val = 10},[3] = {Id = 1609002,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--R守护灵魂珠-3 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 512,Sum = 1917},[2] = {Id = 112,Val = 256,Sum = 958},[3] = {Id = 113,Val = 10240,Sum = 38336}},Cost = {[1] = {Id = 1401002,Val = 1660},[2] = {Id = 1609001,Val = 12},[3] = {Id = 1609002,Val = 6}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--R守护灵魂珠-3 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 600,Sum = 2517},[2] = {Id = 112,Val = 296,Sum = 1254},[3] = {Id = 113,Val = 12000,Sum = 50336}},Cost = {[1] = {Id = 1401002,Val = 2215},[2] = {Id = 1609001,Val = 16},[3] = {Id = 1609002,Val = 8}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--R守护灵魂珠-3 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 680,Sum = 3197},[2] = {Id = 112,Val = 340,Sum = 1594},[3] = {Id = 113,Val = 13600,Sum = 63936}},Cost = {[1] = {Id = 1401002,Val = 2770},[2] = {Id = 1609001,Val = 20},[3] = {Id = 1609002,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--R守护灵魂珠-3 等级-9
				}
			},--75
			[4] = {
				Id = 299904,
				Icon = "R守护灵专属武器魂珠-4",
				Name = "3",
				LvLimit = 1,
				PreLv = 3,
				UnsealLv = 1,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-4 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 104,Sum = 104},[2] = {Id = 112,Val = 52,Sum = 52},[3] = {Id = 113,Val = 2080,Sum = 2080}},Cost = {[1] = {Id = 1401002,Val = 1110},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--R守护灵魂珠-4 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 160,Sum = 264},[2] = {Id = 112,Val = 80,Sum = 132},[3] = {Id = 113,Val = 3200,Sum = 5280}},Cost = {[1] = {Id = 1401002,Val = 835},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--R守护灵魂珠-4 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 208,Sum = 472},[2] = {Id = 112,Val = 104,Sum = 236},[3] = {Id = 113,Val = 4160,Sum = 9440}},Cost = {[1] = {Id = 1401002,Val = 925},[2] = {Id = 1609002,Val = 3},[3] = {Id = 1609003,Val = 1}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--R守护灵魂珠-4 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 792},[2] = {Id = 112,Val = 160,Sum = 396},[3] = {Id = 113,Val = 6400,Sum = 15840}},Cost = {[1] = {Id = 1401002,Val = 1775},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 20},--R守护灵魂珠-4 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 432,Sum = 1224},[2] = {Id = 112,Val = 216,Sum = 612},[3] = {Id = 113,Val = 8640,Sum = 24480}},Cost = {[1] = {Id = 1401002,Val = 1805},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--R守护灵魂珠-4 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 536,Sum = 1760},[2] = {Id = 112,Val = 308,Sum = 920},[3] = {Id = 113,Val = 10720,Sum = 35200}},Cost = {[1] = {Id = 1401002,Val = 1795},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 53},--R守护灵魂珠-4 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 2400},[2] = {Id = 112,Val = 320,Sum = 1240},[3] = {Id = 113,Val = 12800,Sum = 48000}},Cost = {[1] = {Id = 1401002,Val = 2695},[2] = {Id = 1609002,Val = 10},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 57},--R守护灵魂珠-4 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 760,Sum = 3160},[2] = {Id = 112,Val = 380,Sum = 1620},[3] = {Id = 113,Val = 15200,Sum = 63200}},Cost = {[1] = {Id = 1401002,Val = 3595},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 4}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 69},--R守护灵魂珠-4 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 880,Sum = 4040},[2] = {Id = 112,Val = 440,Sum = 2060},[3] = {Id = 113,Val = 17600,Sum = 80800}},Cost = {[1] = {Id = 1401002,Val = 5390},[2] = {Id = 1609002,Val = 19},[3] = {Id = 1609003,Val = 6}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74}--R守护灵魂珠-4 等级-9
				}
			},--85
			[5] = {
				Id = 299905,
				Icon = "R守护灵专属武器魂珠-5",
				Name = "3",
				LvLimit = 2,
				PreLv = 3,
				UnsealLv = 2,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-5 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 144,Sum = 144},[2] = {Id = 112,Val = 72,Sum = 72},[3] = {Id = 113,Val = 2880,Sum = 2880}},Cost = {[1] = {Id = 1401002,Val = 2315},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.19,Fv = 1,MaxV = 8},--R守护灵魂珠-5 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 224,Sum = 368},[2] = {Id = 112,Val = 112,Sum = 184},[3] = {Id = 113,Val = 4480,Sum = 7360}},Cost = {[1] = {Id = 1401002,Val = 1735},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 16},--R守护灵魂珠-5 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 296,Sum = 664},[2] = {Id = 112,Val = 148,Sum = 332},[3] = {Id = 113,Val = 5920,Sum = 13280}},Cost = {[1] = {Id = 1401002,Val = 1930},[2] = {Id = 1609002,Val = 4},[3] = {Id = 1609003,Val = 2}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 24},--R守护灵魂珠-5 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 448,Sum = 1112},[2] = {Id = 112,Val = 224,Sum = 556},[3] = {Id = 113,Val = 8960,Sum = 22240}},Cost = {[1] = {Id = 1401002,Val = 2780},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.06,Fv = 1,MaxV = 27},--R守护灵魂珠-5 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 600,Sum = 1712},[2] = {Id = 112,Val = 300,Sum = 856},[3] = {Id = 113,Val = 12000,Sum = 34240}},Cost = {[1] = {Id = 1401002,Val = 2820},[2] = {Id = 1609002,Val = 6},[3] = {Id = 1609003,Val = 3}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 43},--R守护灵魂珠-5 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 760,Sum = 2472},[2] = {Id = 112,Val = 380,Sum = 1236},[3] = {Id = 113,Val = 15200,Sum = 49440}},Cost = {[1] = {Id = 1401002,Val = 4675},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 42},--R守护灵魂珠-5 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 3432},[2] = {Id = 112,Val = 480,Sum = 1716},[3] = {Id = 113,Val = 19200,Sum = 68640}},Cost = {[1] = {Id = 1401002,Val = 4685},[2] = {Id = 1609002,Val = 9},[3] = {Id = 1609003,Val = 5}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 68},--R守护灵魂珠-5 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1040,Sum = 4472},[2] = {Id = 112,Val = 520,Sum = 2236},[3] = {Id = 113,Val = 20800,Sum = 89440}},Cost = {[1] = {Id = 1401002,Val = 6555},[2] = {Id = 1609002,Val = 13},[3] = {Id = 1609003,Val = 7}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 79},--R守护灵魂珠-5 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1200,Sum = 5672},[2] = {Id = 112,Val = 600,Sum = 2836},[3] = {Id = 113,Val = 24000,Sum = 113440}},Cost = {[1] = {Id = 1401002,Val = 8430},[2] = {Id = 1609002,Val = 17},[3] = {Id = 1609003,Val = 9}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 99}--R守护灵魂珠-5 等级-9
				}
			},--110
			[6] = {
				Id = 299906,
				Icon = "R守护灵专属武器魂珠-6",
				Name = "3",
				LvLimit = 3,
				PreLv = 3,
				UnsealLv = 3,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-6 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 200,Sum = 200},[2] = {Id = 112,Val = 100,Sum = 100},[3] = {Id = 113,Val = 4000,Sum = 4000}},Cost = {[1] = {Id = 1401002,Val = 2180},[2] = {Id = 1609003,Val = 5},[3] = {Id = 1609004,Val = 1}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--R守护灵魂珠-6 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 520},[2] = {Id = 112,Val = 160,Sum = 260},[3] = {Id = 113,Val = 6400,Sum = 10400}},Cost = {[1] = {Id = 1401002,Val = 3270},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.14,Fv = 1,MaxV = 10},--R守护灵魂珠-6 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 400,Sum = 920},[2] = {Id = 112,Val = 200,Sum = 460},[3] = {Id = 113,Val = 8000,Sum = 18400}},Cost = {[1] = {Id = 1401002,Val = 3630},[2] = {Id = 1609003,Val = 9},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 16},--R守护灵魂珠-6 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 1560},[2] = {Id = 112,Val = 320,Sum = 780},[3] = {Id = 113,Val = 12800,Sum = 31200}},Cost = {[1] = {Id = 1401002,Val = 5230},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--R守护灵魂珠-6 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 880,Sum = 2440},[2] = {Id = 112,Val = 440,Sum = 1220},[3] = {Id = 113,Val = 17600,Sum = 48800}},Cost = {[1] = {Id = 1401002,Val = 5310},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 28},--R守护灵魂珠-6 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1080,Sum = 3520},[2] = {Id = 112,Val = 540,Sum = 1760},[3] = {Id = 113,Val = 21600,Sum = 70400}},Cost = {[1] = {Id = 1401002,Val = 7040},[2] = {Id = 1609003,Val = 19},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 34},--R守护灵魂珠-6 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1280,Sum = 4800},[2] = {Id = 112,Val = 640,Sum = 2400},[3] = {Id = 113,Val = 25600,Sum = 96000}},Cost = {[1] = {Id = 1401002,Val = 8820},[2] = {Id = 1609003,Val = 24},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 44},--R守护灵魂珠-6 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1520,Sum = 6320},[2] = {Id = 112,Val = 760,Sum = 3160},[3] = {Id = 113,Val = 30400,Sum = 126400}},Cost = {[1] = {Id = 1401002,Val = 12335},[2] = {Id = 1609003,Val = 33},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 50},--R守护灵魂珠-6 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 1760,Sum = 8080},[2] = {Id = 112,Val = 880,Sum = 4040},[3] = {Id = 113,Val = 35200,Sum = 161600}},Cost = {[1] = {Id = 1401002,Val = 14100},[2] = {Id = 1609003,Val = 38},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 71}--R守护灵魂珠-6 等级-9
				}
			},--125
			[7] = {
				Id = 299907,
				Icon = "R守护灵专属武器魂珠-7",
				Name = "3",
				LvLimit = 4,
				PreLv = 3,
				UnsealLv = 4,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-7 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 256,Sum = 256},[2] = {Id = 112,Val = 128,Sum = 128},[3] = {Id = 113,Val = 5120,Sum = 5120}},Cost = {[1] = {Id = 1401002,Val = 4280},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.17,Fv = 1,MaxV = 9},--R守护灵魂珠-7 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 384,Sum = 640},[2] = {Id = 112,Val = 192,Sum = 320},[3] = {Id = 113,Val = 7680,Sum = 12800}},Cost = {[1] = {Id = 1401002,Val = 3210},[2] = {Id = 1609003,Val = 6},[3] = {Id = 1609004,Val = 2}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--R守护灵魂珠-7 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 512,Sum = 1152},[2] = {Id = 112,Val = 256,Sum = 576},[3] = {Id = 113,Val = 10240,Sum = 23040}},Cost = {[1] = {Id = 1401002,Val = 5350},[2] = {Id = 1609003,Val = 8},[3] = {Id = 1609004,Val = 3}},StrenthSuccessRate = 0.09,Fv = 1,MaxV = 17},--R守护灵魂珠-7 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 768,Sum = 1920},[2] = {Id = 112,Val = 384,Sum = 960},[3] = {Id = 113,Val = 15360,Sum = 38400}},Cost = {[1] = {Id = 1401002,Val = 6850},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 22},--R守护灵魂珠-7 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1024,Sum = 2944},[2] = {Id = 112,Val = 512,Sum = 1472},[3] = {Id = 113,Val = 20480,Sum = 58880}},Cost = {[1] = {Id = 1401002,Val = 6955},[2] = {Id = 1609003,Val = 11},[3] = {Id = 1609004,Val = 4}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 35},--R守护灵魂珠-7 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1280,Sum = 4224},[2] = {Id = 112,Val = 640,Sum = 2112},[3] = {Id = 113,Val = 25600,Sum = 84480}},Cost = {[1] = {Id = 1401002,Val = 8645},[2] = {Id = 1609003,Val = 14},[3] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 45},--R守护灵魂珠-7 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1536,Sum = 5760},[2] = {Id = 112,Val = 768,Sum = 2880},[3] = {Id = 113,Val = 30720,Sum = 115200}},Cost = {[1] = {Id = 1401002,Val = 12130},[2] = {Id = 1609003,Val = 20},[3] = {Id = 1609004,Val = 7}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 52},--R守护灵魂珠-7 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 1792,Sum = 7552},[2] = {Id = 112,Val = 896,Sum = 3776},[3] = {Id = 113,Val = 35840,Sum = 151040}},Cost = {[1] = {Id = 1401002,Val = 13850},[2] = {Id = 1609003,Val = 23},[3] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 74},--R守护灵魂珠-7 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2048,Sum = 9600},[2] = {Id = 112,Val = 1024,Sum = 4800},[3] = {Id = 113,Val = 40960,Sum = 192000}},Cost = {[1] = {Id = 1401002,Val = 17315},[2] = {Id = 1609003,Val = 28},[3] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 95}--R守护灵魂珠-7 等级-9
				}
			},--135
			[8] = {
				Id = 299908,
				Icon = "R守护灵专属武器魂珠-8",
				Name = "3",
				LvLimit = 5,
				PreLv = 3,
				UnsealLv = 5,
				Lvs = {
					[0] = {Prop = {[1] = {Id = 111,Val = 0,Sum = 0},[2] = {Id = 112,Val = 0,Sum = 0},[3] = {Id = 113,Val = 0,Sum = 0}}},--R守护灵魂珠-8 等级-0
					[1] = {Prop = {[1] = {Id = 111,Val = 320,Sum = 320},[2] = {Id = 112,Val = 160,Sum = 160},[3] = {Id = 113,Val = 6400,Sum = 6400}},Cost = {[1] = {Id = 1401002,Val = 3650},[2] = {Id = 1609004,Val = 5}},StrenthSuccessRate = 0.1,Fv = 1,MaxV = 15},--R守护灵魂珠-8 等级-1
					[2] = {Prop = {[1] = {Id = 111,Val = 480,Sum = 800},[2] = {Id = 112,Val = 240,Sum = 400},[3] = {Id = 113,Val = 9600,Sum = 16000}},Cost = {[1] = {Id = 1401002,Val = 4375},[2] = {Id = 1609004,Val = 8}},StrenthSuccessRate = 0.08,Fv = 1,MaxV = 19},--R守护灵魂珠-8 等级-2
					[3] = {Prop = {[1] = {Id = 111,Val = 640,Sum = 1440},[2] = {Id = 112,Val = 320,Sum = 720},[3] = {Id = 113,Val = 12800,Sum = 28800}},Cost = {[1] = {Id = 1401002,Val = 6080},[2] = {Id = 1609004,Val = 10}},StrenthSuccessRate = 0.07,Fv = 1,MaxV = 23},--R守护灵魂珠-8 等级-3
					[4] = {Prop = {[1] = {Id = 111,Val = 960,Sum = 2400},[2] = {Id = 112,Val = 480,Sum = 1200},[3] = {Id = 113,Val = 19200,Sum = 48000}},Cost = {[1] = {Id = 1401002,Val = 7005},[2] = {Id = 1609004,Val = 12}},StrenthSuccessRate = 0.05,Fv = 1,MaxV = 32},--R守护灵魂珠-8 等级-4
					[5] = {Prop = {[1] = {Id = 111,Val = 1280,Sum = 3680},[2] = {Id = 112,Val = 640,Sum = 1840},[3] = {Id = 113,Val = 25600,Sum = 73600}},Cost = {[1] = {Id = 1401002,Val = 8890},[2] = {Id = 1609004,Val = 15}},StrenthSuccessRate = 0.04,Fv = 1,MaxV = 41},--R守护灵魂珠-8 等级-5
					[6] = {Prop = {[1] = {Id = 111,Val = 1600,Sum = 5280},[2] = {Id = 112,Val = 800,Sum = 2640},[3] = {Id = 113,Val = 32000,Sum = 105600}},Cost = {[1] = {Id = 1401002,Val = 10610},[2] = {Id = 1609004,Val = 18}},StrenthSuccessRate = 0.03,Fv = 1,MaxV = 55},--R守护灵魂珠-8 等级-6
					[7] = {Prop = {[1] = {Id = 111,Val = 1920,Sum = 7200},[2] = {Id = 112,Val = 960,Sum = 3600},[3] = {Id = 113,Val = 38400,Sum = 144000}},Cost = {[1] = {Id = 1401002,Val = 14765},[2] = {Id = 1609004,Val = 25}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 64},--R守护灵魂珠-8 等级-7
					[8] = {Prop = {[1] = {Id = 111,Val = 2240,Sum = 9440},[2] = {Id = 112,Val = 1120,Sum = 4720},[3] = {Id = 113,Val = 44800,Sum = 188800}},Cost = {[1] = {Id = 1401002,Val = 17705},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.02,Fv = 1,MaxV = 86},--R守护灵魂珠-8 等级-8
					[9] = {Prop = {[1] = {Id = 111,Val = 2560,Sum = 12000},[2] = {Id = 112,Val = 1280,Sum = 6000},[3] = {Id = 113,Val = 51200,Sum = 240000}},Cost = {[1] = {Id = 1401002,Val = 17710},[2] = {Id = 1609004,Val = 30}},StrenthSuccessRate = 0.01,Fv = 1,MaxV = 140}--R守护灵魂珠-8 等级-9
				}
			}--150
		}
	}--R守护灵专属武器
}