--[[
--note:
各卡牌的表，包括卡牌的品质，等级，地狱道消耗，以及各属性。属性配置在地狱道中。
卡牌基础属性=(int)(card表的初始属性+(card[id].hells[hellLv].BaseAttr + card[id].hells[hellLv].UpAttr * (lv - Hell[hellLv].BegLv)) * card[id].stars[starLv].attrFac)
各卡牌地狱道的表
各卡牌升星的表
colums:
{CardId,卡牌ID} ,{IfEntreVersion,是否进入版本0-否1-是} ,{Name,名称} ,{NickName,名称前缀} ,{NamePic,名字图片} ,{NickNamePic,昵称图片} ,{Tag,标签} ,{Type,卡类型1-寄灵人2-守护灵} ,{Quality,品质1-N  2-R 3-SR 4-SSR} ,{CrystalType,颜色1-红  2-黄 3-蓝} ,{Sex,寄灵人性别 1 男 2 女 0 gay} ,{SubType,二级类型：守护灵类型
神武灵 1
魔武灵 2
仙武灵 3
兽武灵 4
人武灵 5
} ,{Atk,攻击} ,{Def,防御} ,{HP,血量} ,{Crit,暴击} ,{CritRate,暴击伤害} ,{EffectHit,效果命中} ,{EffectResist,效果抵抗} ,{Block,格挡} ,{DefIgnor,穿透} ,{R,防御基值} ,{CallCost,召唤消耗} ,{CallCD,召唤CD} ,{NormalAttack,普通攻击} ,{Skill[1],技能1} ,{Skill[2],技能2} ,{XLGroup,洗练组} ,{ZSP[1],槽1出专属概率} ,{ZSP[2],槽2出专属概率} ,{ZSId[1],专属槽1技能} ,{ZSId[2],专属槽2技能} ,{ZSBs[1],专属技能1战力} ,{ZSBs[2],专属技能2战力} ,{SkillBlankAmount,技能卡槽数量} ,{EnterSkill,入场技能} ,{RpCvt[1].id,重复获得转化为道具ID1} ,{RpCvt[1].val,重复获得转化为道具数量1} ,{DebrisID,碎片ID} ,{ComposeNum,合成需要碎片数量} ,{CardFace,卡面、布阵、抽卡立绘} ,{Head2,中头像} ,{HeadBig,大头像} ,{Icon,图标} ,{Painting,立绘} ,{Cutin,召唤cutin立绘} ,{GachaDialogue,抽卡台词} ,{PaintingPos.x,立绘位置信息X} ,{PaintingPos.y,立绘位置信息Y} ,{Describe,描述} ,{GuidDesc,策略描述} ,{Relation,关联人} ,{mask,属性筛选掩码} ,{ExclusiveGuard[1],专属守护灵} ,{ExclusiveGuard[2],专属守护灵} ,{ExclusiveGuard[3],专属守护灵} ,{ExclusiveGuard[4],专属守护灵} ,{ExclusiveGuard[5],专属守护灵} ,{ExclusiveGuard[6],专属守护灵} ,{ExclusiveGuard[7],专属守护灵} ,{InitSkill,初始武灵技} ,{Help_col,辅助列} ,{HellLevel,地狱道等级} ,{BaseAttr[1].id,基础属性id1} ,{BaseAttr[1].val,基础属性值1} ,{BaseAttr[2].id,基础属性id2} ,{BaseAttr[2].val,基础属性值2} ,{BaseAttr[3].id,基础属性id3} ,{BaseAttr[3].val,基础属性值3} ,{UpAttr[1].id,成长属性id1} ,{UpAttr[1].val,成长属性值1基础} ,{UpAttr[2].id,成长属性id2} ,{UpAttr[2].val,成长属性值2基础} ,{UpAttr[3].id,成长属性id3} ,{UpAttr[3].val,成长属性值3基础} ,{RosterAttr.AtkExt,攻击培养上限} ,{RosterAttr.DefExt,防御培养上限} ,{RosterAttr.HPExt,血量培养上限} ,{CostItem[1].id,消耗道具ID1} ,{CostItem[1].val,道具数量1} ,{CostItem[2].id,消耗道具ID2} ,{CostItem[2].val,道具数量2} ,{CostItem[3].id,消耗道具ID3} ,{CostItem[3].val,道具数量3} ,{CostItem[4].id,消耗道具ID4} ,{CostItem[4].val,道具数量4} ,{StarLv,星级} ,{Cost[1].id,} ,{Cost[1].val,} ,{Cost[2].id,消耗ID} ,{Cost[2].val,消耗数量} ,{AttrFac,属性系数} ,{AttrTrans[1].id,转移属性ID1} ,{AttrTrans[1].val,转移属性值1} ,{AttrTrans[2].id,转移属性ID2} ,{AttrTrans[2].val,转移属性值2} ,{AttrTrans[3].id,转移属性ID3} ,{AttrTrans[3].val,转移属性值3} ,{PSkill,被动技能}
primary key:
#0 [卡牌]: CardId
#1 [地狱道]: CardId,Help_col,HellLevel
#2 [升星]: CardId,Help_col,StarLv
]]
local _T = LangUtil.Language
if ddt["card"] ~= nil then
	return ddt["card"]
end
local data = {
	[1101001] = {
		IfEntreVersion = 1,
		Name = "曹焱兵",
		NickName = "火将军",
		NamePic = "ui_dtex_Name_1101001",
		NickNamePic = "ui_dtex_Name2_1101001",
		Tag = {101},
		Type = 1,
		Quality = 3,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301001,[2] = 1302001},
		XLGroup = 2,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010011,[2] = 11010012},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701001,val = 40}},
		DebrisID = 1701001,
		ComposeNum = 40,
		CardFace = "cardface_cfcyb_1101001",
		Head2 = "head_cfcyb_1101001",
		HeadBig = "headbig_cfcyb_1101001",
		Icon = "head_cfcyb_1101001",
		Painting = "draw_cfcyb_1101001",
		Cutin = "cutin_cfcyb_1101001",
		GachaDialogue = "gacha_cfcyb_1101001",
		PaintingPos = {x = 124.7,y = 14.2},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102002,[2] = 1102003,[3] = 1102008,[4] = 1102009,[5] = 1102010,[6] = 1102012,[7] = 1102015},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 0},[3] = {id = 103,val = 115}},UpAttr = {[1] = {id = 101,val = 3.45},[2] = {id = 102,val = 1.73},[3] = {id = 103,val = 10.35}},RosterAttr = {AtkExt = 34,DefExt = 17,HPExt = 103}},--常服曹焱兵1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 82.8},[2] = {id = 102,val = 24.15},[3] = {id = 103,val = 294.4}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 13.8}},RosterAttr = {AtkExt = 80,DefExt = 40,HPExt = 241}},--常服曹焱兵2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 169.05},[2] = {id = 102,val = 67.85},[3] = {id = 103,val = 553.15}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 20.8}},RosterAttr = {AtkExt = 149,DefExt = 74,HPExt = 449}},--常服曹焱兵3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 255.65},[2] = {id = 102,val = 111.72},[3] = {id = 103,val = 812.94}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 27.6}},RosterAttr = {AtkExt = 241,DefExt = 120,HPExt = 725}},--常服曹焱兵4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 370.65},[2] = {id = 102,val = 169.22},[3] = {id = 103,val = 1157.94}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 34.57}},RosterAttr = {AtkExt = 356,DefExt = 177,HPExt = 1070}},--常服曹焱兵5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 514.63},[2] = {id = 102,val = 241.79},[3] = {id = 103,val = 1589.88}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 43.23}},RosterAttr = {AtkExt = 500,DefExt = 249,HPExt = 1502}},--常服曹焱兵6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 694.37},[2] = {id = 102,val = 332.24},[3] = {id = 103,val = 2129.11}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 54.17}},RosterAttr = {AtkExt = 680,DefExt = 339,HPExt = 2043}},--常服曹焱兵7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 919.77},[2] = {id = 102,val = 445.51},[3] = {id = 103,val = 2805.31}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 69}},RosterAttr = {AtkExt = 910,DefExt = 454,HPExt = 2733}},--常服曹焱兵8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1063.52},[2] = {id = 102,val = 517.96},[3] = {id = 103,val = 3236.56}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 79.76}},RosterAttr = {AtkExt = 1175,DefExt = 586,HPExt = 3530}},--常服曹焱兵9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1229.81},[2] = {id = 102,val = 600.53},[3] = {id = 103,val = 3735.43}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 92.25}},RosterAttr = {AtkExt = 1482,DefExt = 739,HPExt = 4452}},--常服曹焱兵10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1421.52},[2] = {id = 102,val = 696.96},[3] = {id = 103,val = 4310.55}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 106.61}},RosterAttr = {AtkExt = 1837,DefExt = 916,HPExt = 5518}},--常服曹焱兵11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1644.04},[2] = {id = 102,val = 807.65},[3] = {id = 103,val = 4978.12}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 123.3}},RosterAttr = {AtkExt = 2248,DefExt = 1121,HPExt = 6751}},--常服曹焱兵12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1901.3},[2] = {id = 102,val = 935.7},[3] = {id = 103,val = 5749.89}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 142.59}},RosterAttr = {AtkExt = 2723,DefExt = 1358,HPExt = 8176}},--常服曹焱兵13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2198.74},[2] = {id = 102,val = 1084.42},[3] = {id = 103,val = 6642.23}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 164.91}},RosterAttr = {AtkExt = 3272,DefExt = 1632,HPExt = 9825}},--常服曹焱兵14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2542.59},[2] = {id = 102,val = 1256.35},[3] = {id = 103,val = 7673.78}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 190.68}},RosterAttr = {AtkExt = 3907,DefExt = 1949,HPExt = 11731}},--常服曹焱兵15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2939.75},[2] = {id = 102,val = 1455.5},[3] = {id = 103,val = 8865.24}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 220.49}},RosterAttr = {AtkExt = 4642,DefExt = 2316,HPExt = 13935}},--常服曹焱兵16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3399.23},[2] = {id = 102,val = 1685.24},[3] = {id = 103,val = 10243.68}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 254.96}},RosterAttr = {AtkExt = 5491,DefExt = 2740,HPExt = 16484}},--常服曹焱兵17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3929.95},[2] = {id = 102,val = 1950.6},[3] = {id = 103,val = 11835.86}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 294.73}},RosterAttr = {AtkExt = 6473,DefExt = 3231,HPExt = 19431}},--常服曹焱兵18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4544.23},[2] = {id = 102,val = 2257.16},[3] = {id = 103,val = 13678.68}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 340.83}},RosterAttr = {AtkExt = 7609,DefExt = 3799,HPExt = 22839}},--常服曹焱兵19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5253.72},[2] = {id = 102,val = 2612.48},[3] = {id = 103,val = 15807.15}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 394.02}},RosterAttr = {AtkExt = 8922,DefExt = 4455,HPExt = 26779}}--常服曹焱兵20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701001,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701001,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701001,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701001,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701001,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--常服曹焱兵
	[1101002] = {
		IfEntreVersion = 1,
		Name = "曹玄亮",
		NickName = "雷霆轰炸机",
		NamePic = "ui_dtex_Name_1101002",
		NickNamePic = "ui_dtex_Name2_1101002",
		Tag = {107},
		Type = 1,
		Quality = 2,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301002,[2] = 1302002},
		XLGroup = 1,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010021,[2] = 11010022},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701002,val = 20}},
		DebrisID = 1701002,
		ComposeNum = 20,
		CardFace = "cardface_cxl_1101002",
		Head2 = "head_cxl_1101002",
		HeadBig = "headbig_cxl_1101002",
		Icon = "head_cxl_1101002",
		Painting = "draw_cxl_1101002",
		Cutin = "cutin_cxl_1101002",
		PaintingPos = {x = 86,y = -16.91},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102004},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 0},[3] = {id = 103,val = 100}},UpAttr = {[1] = {id = 101,val = 3},[2] = {id = 102,val = 1.5},[3] = {id = 103,val = 9}},RosterAttr = {AtkExt = 8952,DefExt = 4470,HPExt = 26869}},--曹玄亮1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 72},[2] = {id = 102,val = 21},[3] = {id = 103,val = 256}},UpAttr = {[1] = {id = 101,val = 4},[2] = {id = 102,val = 2},[3] = {id = 103,val = 12}},RosterAttr = {AtkExt = 40,DefExt = 20,HPExt = 120}},--曹玄亮2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 147},[2] = {id = 102,val = 59},[3] = {id = 103,val = 481}},UpAttr = {[1] = {id = 101,val = 6.03},[2] = {id = 102,val = 3.02},[3] = {id = 103,val = 18.09}},RosterAttr = {AtkExt = 100,DefExt = 50,HPExt = 300}},--曹玄亮3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 222.3},[2] = {id = 102,val = 97.15},[3] = {id = 103,val = 706.9}},UpAttr = {[1] = {id = 101,val = 8},[2] = {id = 102,val = 4},[3] = {id = 103,val = 24}},RosterAttr = {AtkExt = 180,DefExt = 90,HPExt = 540}},--曹玄亮4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 322.3},[2] = {id = 102,val = 147.15},[3] = {id = 103,val = 1006.9}},UpAttr = {[1] = {id = 101,val = 10.02},[2] = {id = 102,val = 5.01},[3] = {id = 103,val = 30.06}},RosterAttr = {AtkExt = 280,DefExt = 140,HPExt = 840}},--曹玄亮5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 447.5},[2] = {id = 102,val = 210.25},[3] = {id = 103,val = 1382.5}},UpAttr = {[1] = {id = 101,val = 12.53},[2] = {id = 102,val = 6.27},[3] = {id = 103,val = 37.59}},RosterAttr = {AtkExt = 405,DefExt = 202,HPExt = 1215}},--曹玄亮6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 603.8},[2] = {id = 102,val = 288.9},[3] = {id = 103,val = 1851.4}},UpAttr = {[1] = {id = 101,val = 15.7},[2] = {id = 102,val = 7.85},[3] = {id = 103,val = 47.1}},RosterAttr = {AtkExt = 562,DefExt = 280,HPExt = 1686}},--曹玄亮7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 799.8},[2] = {id = 102,val = 387.4},[3] = {id = 103,val = 2439.4}},UpAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 10},[3] = {id = 103,val = 60}},RosterAttr = {AtkExt = 762,DefExt = 380,HPExt = 2286}},--曹玄亮8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 924.8},[2] = {id = 102,val = 450.4},[3] = {id = 103,val = 2814.4}},UpAttr = {[1] = {id = 101,val = 23.12},[2] = {id = 102,val = 11.56},[3] = {id = 103,val = 69.36}},RosterAttr = {AtkExt = 993,DefExt = 495,HPExt = 2979}},--曹玄亮9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1069.4},[2] = {id = 102,val = 522.2},[3] = {id = 103,val = 3248.2}},UpAttr = {[1] = {id = 101,val = 26.74},[2] = {id = 102,val = 13.37},[3] = {id = 103,val = 80.22}},RosterAttr = {AtkExt = 1260,DefExt = 628,HPExt = 3781}},--曹玄亮10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1236.1},[2] = {id = 102,val = 606.05},[3] = {id = 103,val = 3748.3}},UpAttr = {[1] = {id = 101,val = 30.9},[2] = {id = 102,val = 15.45},[3] = {id = 103,val = 92.7}},RosterAttr = {AtkExt = 1569,DefExt = 782,HPExt = 4708}},--曹玄亮11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1429.6},[2] = {id = 102,val = 702.3},[3] = {id = 103,val = 4328.8}},UpAttr = {[1] = {id = 101,val = 35.74},[2] = {id = 102,val = 17.87},[3] = {id = 103,val = 107.22}},RosterAttr = {AtkExt = 1926,DefExt = 960,HPExt = 5780}},--曹玄亮12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1653.3},[2] = {id = 102,val = 813.65},[3] = {id = 103,val = 4999.9}},UpAttr = {[1] = {id = 101,val = 41.33},[2] = {id = 102,val = 20.67},[3] = {id = 103,val = 123.99}},RosterAttr = {AtkExt = 2339,DefExt = 1166,HPExt = 7019}},--曹玄亮13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 1911.95},[2] = {id = 102,val = 942.98},[3] = {id = 103,val = 5775.85}},UpAttr = {[1] = {id = 101,val = 47.8},[2] = {id = 102,val = 23.9},[3] = {id = 103,val = 143.4}},RosterAttr = {AtkExt = 2817,DefExt = 1405,HPExt = 8453}},--曹玄亮14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2210.95},[2] = {id = 102,val = 1092.48},[3] = {id = 103,val = 6672.85}},UpAttr = {[1] = {id = 101,val = 55.27},[2] = {id = 102,val = 27.64},[3] = {id = 103,val = 165.81}},RosterAttr = {AtkExt = 3369,DefExt = 1681,HPExt = 10111}},--曹玄亮15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2556.3},[2] = {id = 102,val = 1265.65},[3] = {id = 103,val = 7708.9}},UpAttr = {[1] = {id = 101,val = 63.91},[2] = {id = 102,val = 31.96},[3] = {id = 103,val = 191.73}},RosterAttr = {AtkExt = 4008,DefExt = 2000,HPExt = 12028}},--曹玄亮16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 2955.85},[2] = {id = 102,val = 1465.43},[3] = {id = 103,val = 8907.55}},UpAttr = {[1] = {id = 101,val = 73.9},[2] = {id = 102,val = 36.95},[3] = {id = 103,val = 221.7}},RosterAttr = {AtkExt = 4747,DefExt = 2369,HPExt = 14245}},--曹玄亮17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3417.35},[2] = {id = 102,val = 1696.18},[3] = {id = 103,val = 10292.05}},UpAttr = {[1] = {id = 101,val = 85.43},[2] = {id = 102,val = 42.72},[3] = {id = 103,val = 256.29}},RosterAttr = {AtkExt = 5601,DefExt = 2796,HPExt = 16807}},--曹玄亮18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 3951.5},[2] = {id = 102,val = 1962.75},[3] = {id = 103,val = 11894.5}},UpAttr = {[1] = {id = 101,val = 98.79},[2] = {id = 102,val = 49.4},[3] = {id = 103,val = 296.37}},RosterAttr = {AtkExt = 6588,DefExt = 3290,HPExt = 19770}},--曹玄亮19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 4568.45},[2] = {id = 102,val = 2271.73},[3] = {id = 103,val = 13745.35}},UpAttr = {[1] = {id = 101,val = 114.21},[2] = {id = 102,val = 57.11},[3] = {id = 103,val = 342.63}},RosterAttr = {AtkExt = 7730,DefExt = 3861,HPExt = 23196}}--曹玄亮20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1701002,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1701002,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1701002,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1701002,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1701002,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--曹玄亮
	[1101003] = {
		IfEntreVersion = 1,
		Name = "灵装夏铃",
		NickName = "女主角",
		NamePic = "ui_dtex_Name_1101003",
		NickNamePic = "ui_dtex_Name2_1101003",
		Tag = {105},
		Type = 1,
		Quality = 3,
		CrystalType = 0,
		Sex = 2,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301003,[2] = 1302003},
		XLGroup = 2,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010031,[2] = 11010032},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701003,val = 40}},
		DebrisID = 1701003,
		ComposeNum = 40,
		CardFace = "cardface_zdxl_1101003",
		Head2 = "head_zdxl_1101003",
		HeadBig = "headbig_zdxl_1101003",
		Icon = "head_zdxl_1101003",
		Painting = "draw_zdxl_1101003",
		Cutin = "cutin_zdxl_1101003",
		GachaDialogue = "gacha_zdxl_1101003",
		PaintingPos = {x = 23.8,y = -16.91},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 401,
		ExclusiveGuard = {[1] = 1102005},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 0},[3] = {id = 103,val = 115}},UpAttr = {[1] = {id = 101,val = 3.45},[2] = {id = 102,val = 1.73},[3] = {id = 103,val = 10.35}},RosterAttr = {AtkExt = 7764,DefExt = 3878,HPExt = 23299}},--战斗夏玲1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 82.8},[2] = {id = 102,val = 24.15},[3] = {id = 103,val = 294.4}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 13.8}},RosterAttr = {AtkExt = 7810,DefExt = 3901,HPExt = 23437}},--战斗夏玲2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 169.05},[2] = {id = 102,val = 67.85},[3] = {id = 103,val = 553.15}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 20.8}},RosterAttr = {AtkExt = 69,DefExt = 34,HPExt = 208}},--战斗夏玲3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 255.65},[2] = {id = 102,val = 111.72},[3] = {id = 103,val = 812.94}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 27.6}},RosterAttr = {AtkExt = 161,DefExt = 80,HPExt = 484}},--战斗夏玲4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 370.65},[2] = {id = 102,val = 169.22},[3] = {id = 103,val = 1157.94}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 34.57}},RosterAttr = {AtkExt = 276,DefExt = 137,HPExt = 829}},--战斗夏玲5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 514.63},[2] = {id = 102,val = 241.79},[3] = {id = 103,val = 1589.88}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 43.23}},RosterAttr = {AtkExt = 420,DefExt = 209,HPExt = 1261}},--战斗夏玲6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 694.37},[2] = {id = 102,val = 332.24},[3] = {id = 103,val = 2129.11}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 54.17}},RosterAttr = {AtkExt = 600,DefExt = 299,HPExt = 1802}},--战斗夏玲7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 919.77},[2] = {id = 102,val = 445.51},[3] = {id = 103,val = 2805.31}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 69}},RosterAttr = {AtkExt = 830,DefExt = 414,HPExt = 2492}},--战斗夏玲8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1063.52},[2] = {id = 102,val = 517.96},[3] = {id = 103,val = 3236.56}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 79.76}},RosterAttr = {AtkExt = 1095,DefExt = 546,HPExt = 3289}},--战斗夏玲9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1229.81},[2] = {id = 102,val = 600.53},[3] = {id = 103,val = 3735.43}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 92.25}},RosterAttr = {AtkExt = 1402,DefExt = 699,HPExt = 4211}},--战斗夏玲10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1421.52},[2] = {id = 102,val = 696.96},[3] = {id = 103,val = 4310.55}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 106.61}},RosterAttr = {AtkExt = 1757,DefExt = 876,HPExt = 5277}},--战斗夏玲11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1644.04},[2] = {id = 102,val = 807.65},[3] = {id = 103,val = 4978.12}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 123.3}},RosterAttr = {AtkExt = 2168,DefExt = 1081,HPExt = 6510}},--战斗夏玲12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1901.3},[2] = {id = 102,val = 935.7},[3] = {id = 103,val = 5749.89}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 142.59}},RosterAttr = {AtkExt = 2643,DefExt = 1318,HPExt = 7935}},--战斗夏玲13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2198.74},[2] = {id = 102,val = 1084.42},[3] = {id = 103,val = 6642.23}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 164.91}},RosterAttr = {AtkExt = 3192,DefExt = 1592,HPExt = 9584}},--战斗夏玲14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2542.59},[2] = {id = 102,val = 1256.35},[3] = {id = 103,val = 7673.78}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 190.68}},RosterAttr = {AtkExt = 3827,DefExt = 1909,HPExt = 11490}},--战斗夏玲15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2939.75},[2] = {id = 102,val = 1455.5},[3] = {id = 103,val = 8865.24}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 220.49}},RosterAttr = {AtkExt = 4562,DefExt = 2276,HPExt = 13694}},--战斗夏玲16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3399.23},[2] = {id = 102,val = 1685.24},[3] = {id = 103,val = 10243.68}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 254.96}},RosterAttr = {AtkExt = 5411,DefExt = 2700,HPExt = 16243}},--战斗夏玲17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3929.95},[2] = {id = 102,val = 1950.6},[3] = {id = 103,val = 11835.86}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 294.73}},RosterAttr = {AtkExt = 6393,DefExt = 3191,HPExt = 19190}},--战斗夏玲18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4544.23},[2] = {id = 102,val = 2257.16},[3] = {id = 103,val = 13678.68}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 340.83}},RosterAttr = {AtkExt = 7529,DefExt = 3759,HPExt = 22598}},--战斗夏玲19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5253.72},[2] = {id = 102,val = 2612.48},[3] = {id = 103,val = 15807.15}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 394.02}},RosterAttr = {AtkExt = 8842,DefExt = 4415,HPExt = 26538}}--战斗夏玲20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701003,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701003,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701003,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701003,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701003,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--战斗夏铃
	[1101004] = {
		IfEntreVersion = 1,
		Name = "项昆仑",
		NickName = "群英之主",
		NamePic = "ui_dtex_Name_1101004",
		NickNamePic = "ui_dtex_Name2_1101004",
		Tag = {102},
		Type = 1,
		Quality = 4,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301004,[2] = 1302004},
		XLGroup = 3,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010041,[2] = 11010042},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701004,val = 80}},
		DebrisID = 1701004,
		ComposeNum = 80,
		CardFace = "cardface_xkl_1101004",
		Head2 = "head_xkl_1101004",
		HeadBig = "headbig_xkl_1101004",
		Icon = "head_xkl_1101004",
		Painting = "draw_xkl_1101004",
		Cutin = "cutin_xkl_1101004",
		GachaDialogue = "gacha_xkl_1101004",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102006},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 0},[3] = {id = 103,val = 130}},UpAttr = {[1] = {id = 101,val = 3.9},[2] = {id = 102,val = 1.95},[3] = {id = 103,val = 11.7}},RosterAttr = {AtkExt = 8881,DefExt = 4434,HPExt = 26655}},--项昆仑1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 93.6},[2] = {id = 102,val = 27.3},[3] = {id = 103,val = 332.8}},UpAttr = {[1] = {id = 101,val = 5.2},[2] = {id = 102,val = 2.6},[3] = {id = 103,val = 15.6}},RosterAttr = {AtkExt = 8933,DefExt = 4460,HPExt = 26811}},--项昆仑2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 191.1},[2] = {id = 102,val = 76.7},[3] = {id = 103,val = 625.3}},UpAttr = {[1] = {id = 101,val = 7.84},[2] = {id = 102,val = 3.92},[3] = {id = 103,val = 23.52}},RosterAttr = {AtkExt = 9011,DefExt = 4499,HPExt = 27046}},--项昆仑3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 288.99},[2] = {id = 102,val = 126.3},[3] = {id = 103,val = 918.97}},UpAttr = {[1] = {id = 101,val = 10.4},[2] = {id = 102,val = 5.2},[3] = {id = 103,val = 31.2}},RosterAttr = {AtkExt = 104,DefExt = 52,HPExt = 312}},--项昆仑4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 418.99},[2] = {id = 102,val = 191.3},[3] = {id = 103,val = 1308.97}},UpAttr = {[1] = {id = 101,val = 13.03},[2] = {id = 102,val = 6.51},[3] = {id = 103,val = 39.08}},RosterAttr = {AtkExt = 234,DefExt = 117,HPExt = 702}},--项昆仑5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 581.75},[2] = {id = 102,val = 273.33},[3] = {id = 103,val = 1797.25}},UpAttr = {[1] = {id = 101,val = 16.29},[2] = {id = 102,val = 8.14},[3] = {id = 103,val = 48.87}},RosterAttr = {AtkExt = 396,DefExt = 198,HPExt = 1190}},--项昆仑6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 784.94},[2] = {id = 102,val = 375.57},[3] = {id = 103,val = 2406.82}},UpAttr = {[1] = {id = 101,val = 20.41},[2] = {id = 102,val = 10.21},[3] = {id = 103,val = 61.23}},RosterAttr = {AtkExt = 600,DefExt = 300,HPExt = 1802}},--项昆仑7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1039.74},[2] = {id = 102,val = 503.62},[3] = {id = 103,val = 3171.22}},UpAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 13},[3] = {id = 103,val = 78}},RosterAttr = {AtkExt = 860,DefExt = 430,HPExt = 2582}},--项昆仑8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1202.24},[2] = {id = 102,val = 585.52},[3] = {id = 103,val = 3658.72}},UpAttr = {[1] = {id = 101,val = 30.06},[2] = {id = 102,val = 15.03},[3] = {id = 103,val = 90.17}},RosterAttr = {AtkExt = 1160,DefExt = 580,HPExt = 3483}},--项昆仑9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1390.22},[2] = {id = 102,val = 678.86},[3] = {id = 103,val = 4222.66}},UpAttr = {[1] = {id = 101,val = 34.76},[2] = {id = 102,val = 17.38},[3] = {id = 103,val = 104.29}},RosterAttr = {AtkExt = 1507,DefExt = 753,HPExt = 4525}},--项昆仑10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1606.93},[2] = {id = 102,val = 787.87},[3] = {id = 103,val = 4872.79}},UpAttr = {[1] = {id = 101,val = 40.17},[2] = {id = 102,val = 20.09},[3] = {id = 103,val = 120.51}},RosterAttr = {AtkExt = 1908,DefExt = 953,HPExt = 5730}},--项昆仑11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1858.48},[2] = {id = 102,val = 912.99},[3] = {id = 103,val = 5627.44}},UpAttr = {[1] = {id = 101,val = 46.46},[2] = {id = 102,val = 23.23},[3] = {id = 103,val = 139.39}},RosterAttr = {AtkExt = 2372,DefExt = 1185,HPExt = 7123}},--项昆仑12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2149.29},[2] = {id = 102,val = 1057.75},[3] = {id = 103,val = 6499.87}},UpAttr = {[1] = {id = 101,val = 53.73},[2] = {id = 102,val = 26.86},[3] = {id = 103,val = 161.19}},RosterAttr = {AtkExt = 2909,DefExt = 1453,HPExt = 8734}},--项昆仑13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2485.54},[2] = {id = 102,val = 1225.87},[3] = {id = 103,val = 7508.61}},UpAttr = {[1] = {id = 101,val = 62.14},[2] = {id = 102,val = 31.07},[3] = {id = 103,val = 186.42}},RosterAttr = {AtkExt = 3530,DefExt = 1763,HPExt = 10598}},--项昆仑14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2874.24},[2] = {id = 102,val = 1420.22},[3] = {id = 103,val = 8674.71}},UpAttr = {[1] = {id = 101,val = 71.85},[2] = {id = 102,val = 35.93},[3] = {id = 103,val = 215.55}},RosterAttr = {AtkExt = 4248,DefExt = 2122,HPExt = 12753}},--项昆仑15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3323.19},[2] = {id = 102,val = 1645.35},[3] = {id = 103,val = 10021.57}},UpAttr = {[1] = {id = 101,val = 83.08},[2] = {id = 102,val = 41.54},[3] = {id = 103,val = 249.25}},RosterAttr = {AtkExt = 5078,DefExt = 2537,HPExt = 15245}},--项昆仑16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3842.61},[2] = {id = 102,val = 1905.05},[3] = {id = 103,val = 11579.82}},UpAttr = {[1] = {id = 101,val = 96.07},[2] = {id = 102,val = 48.04},[3] = {id = 103,val = 288.21}},RosterAttr = {AtkExt = 6038,DefExt = 3017,HPExt = 18127}},--项昆仑17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4442.56},[2] = {id = 102,val = 2205.03},[3] = {id = 103,val = 13379.67}},UpAttr = {[1] = {id = 101,val = 111.06},[2] = {id = 102,val = 55.53},[3] = {id = 103,val = 333.18}},RosterAttr = {AtkExt = 7148,DefExt = 3572,HPExt = 21458}},--项昆仑18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 5136.95},[2] = {id = 102,val = 2551.58},[3] = {id = 103,val = 15462.85}},UpAttr = {[1] = {id = 101,val = 128.43},[2] = {id = 102,val = 64.21},[3] = {id = 103,val = 385.28}},RosterAttr = {AtkExt = 8432,DefExt = 4214,HPExt = 25310}},--项昆仑19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5938.99},[2] = {id = 102,val = 2953.24},[3] = {id = 103,val = 17868.96}},UpAttr = {[1] = {id = 101,val = 148.47},[2] = {id = 102,val = 74.24},[3] = {id = 103,val = 445.42}},RosterAttr = {AtkExt = 9916,DefExt = 4956,HPExt = 29764}}--项昆仑20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1701004,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1701004,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1701004,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1701004,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1701004,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--项昆仑
	[1101005] = {
		IfEntreVersion = 1,
		Name = "刘羽禅",
		NickName = "冰童",
		NamePic = "ui_dtex_Name_1101005",
		NickNamePic = "ui_dtex_Name2_1101005",
		Tag = {104},
		Type = 1,
		Quality = 4,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301005,[2] = 1302005},
		XLGroup = 3,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010051,[2] = 11010052},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701005,val = 80}},
		DebrisID = 1701005,
		ComposeNum = 80,
		CardFace = "cardface_lyc_1101005",
		Head2 = "head_lyc_1101005",
		HeadBig = "headbig_lyc_1101005",
		Icon = "head_lyc_1101005",
		Painting = "draw_lyc_1101005",
		Cutin = "cutin_lyc_1101005",
		GachaDialogue = "gacha_lyc_1101005",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102001,[2] = 1102011},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 0},[3] = {id = 103,val = 130}},UpAttr = {[1] = {id = 101,val = 3.9},[2] = {id = 102,val = 1.95},[3] = {id = 103,val = 11.7}},RosterAttr = {AtkExt = 9955,DefExt = 4975,HPExt = 29881}},--刘羽禅1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 93.6},[2] = {id = 102,val = 27.3},[3] = {id = 103,val = 332.8}},UpAttr = {[1] = {id = 101,val = 5.2},[2] = {id = 102,val = 2.6},[3] = {id = 103,val = 15.6}},RosterAttr = {AtkExt = 10007,DefExt = 5001,HPExt = 30037}},--刘羽禅2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 191.1},[2] = {id = 102,val = 76.7},[3] = {id = 103,val = 625.3}},UpAttr = {[1] = {id = 101,val = 7.84},[2] = {id = 102,val = 3.92},[3] = {id = 103,val = 23.52}},RosterAttr = {AtkExt = 10085,DefExt = 5040,HPExt = 30272}},--刘羽禅3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 288.99},[2] = {id = 102,val = 126.3},[3] = {id = 103,val = 918.97}},UpAttr = {[1] = {id = 101,val = 10.4},[2] = {id = 102,val = 5.2},[3] = {id = 103,val = 31.2}},RosterAttr = {AtkExt = 10189,DefExt = 5092,HPExt = 30584}},--刘羽禅4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 418.99},[2] = {id = 102,val = 191.3},[3] = {id = 103,val = 1308.97}},UpAttr = {[1] = {id = 101,val = 13.03},[2] = {id = 102,val = 6.51},[3] = {id = 103,val = 39.08}},RosterAttr = {AtkExt = 130,DefExt = 65,HPExt = 390}},--刘羽禅5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 581.75},[2] = {id = 102,val = 273.33},[3] = {id = 103,val = 1797.25}},UpAttr = {[1] = {id = 101,val = 16.29},[2] = {id = 102,val = 8.14},[3] = {id = 103,val = 48.87}},RosterAttr = {AtkExt = 292,DefExt = 146,HPExt = 878}},--刘羽禅6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 784.94},[2] = {id = 102,val = 375.57},[3] = {id = 103,val = 2406.82}},UpAttr = {[1] = {id = 101,val = 20.41},[2] = {id = 102,val = 10.21},[3] = {id = 103,val = 61.23}},RosterAttr = {AtkExt = 496,DefExt = 248,HPExt = 1490}},--刘羽禅7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1039.74},[2] = {id = 102,val = 503.62},[3] = {id = 103,val = 3171.22}},UpAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 13},[3] = {id = 103,val = 78}},RosterAttr = {AtkExt = 756,DefExt = 378,HPExt = 2270}},--刘羽禅8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1202.24},[2] = {id = 102,val = 585.52},[3] = {id = 103,val = 3658.72}},UpAttr = {[1] = {id = 101,val = 30.06},[2] = {id = 102,val = 15.03},[3] = {id = 103,val = 90.17}},RosterAttr = {AtkExt = 1056,DefExt = 528,HPExt = 3171}},--刘羽禅9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1390.22},[2] = {id = 102,val = 678.86},[3] = {id = 103,val = 4222.66}},UpAttr = {[1] = {id = 101,val = 34.76},[2] = {id = 102,val = 17.38},[3] = {id = 103,val = 104.29}},RosterAttr = {AtkExt = 1403,DefExt = 701,HPExt = 4213}},--刘羽禅10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1606.93},[2] = {id = 102,val = 787.87},[3] = {id = 103,val = 4872.79}},UpAttr = {[1] = {id = 101,val = 40.17},[2] = {id = 102,val = 20.09},[3] = {id = 103,val = 120.51}},RosterAttr = {AtkExt = 1804,DefExt = 901,HPExt = 5418}},--刘羽禅11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1858.48},[2] = {id = 102,val = 912.99},[3] = {id = 103,val = 5627.44}},UpAttr = {[1] = {id = 101,val = 46.46},[2] = {id = 102,val = 23.23},[3] = {id = 103,val = 139.39}},RosterAttr = {AtkExt = 2268,DefExt = 1133,HPExt = 6811}},--刘羽禅12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2149.29},[2] = {id = 102,val = 1057.75},[3] = {id = 103,val = 6499.87}},UpAttr = {[1] = {id = 101,val = 53.73},[2] = {id = 102,val = 26.86},[3] = {id = 103,val = 161.19}},RosterAttr = {AtkExt = 2805,DefExt = 1401,HPExt = 8422}},--刘羽禅13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2485.54},[2] = {id = 102,val = 1225.87},[3] = {id = 103,val = 7508.61}},UpAttr = {[1] = {id = 101,val = 62.14},[2] = {id = 102,val = 31.07},[3] = {id = 103,val = 186.42}},RosterAttr = {AtkExt = 3426,DefExt = 1711,HPExt = 10286}},--刘羽禅14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2874.24},[2] = {id = 102,val = 1420.22},[3] = {id = 103,val = 8674.71}},UpAttr = {[1] = {id = 101,val = 71.85},[2] = {id = 102,val = 35.93},[3] = {id = 103,val = 215.55}},RosterAttr = {AtkExt = 4144,DefExt = 2070,HPExt = 12441}},--刘羽禅15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3323.19},[2] = {id = 102,val = 1645.35},[3] = {id = 103,val = 10021.57}},UpAttr = {[1] = {id = 101,val = 83.08},[2] = {id = 102,val = 41.54},[3] = {id = 103,val = 249.25}},RosterAttr = {AtkExt = 4974,DefExt = 2485,HPExt = 14933}},--刘羽禅16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3842.61},[2] = {id = 102,val = 1905.05},[3] = {id = 103,val = 11579.82}},UpAttr = {[1] = {id = 101,val = 96.07},[2] = {id = 102,val = 48.04},[3] = {id = 103,val = 288.21}},RosterAttr = {AtkExt = 5934,DefExt = 2965,HPExt = 17815}},--刘羽禅17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4442.56},[2] = {id = 102,val = 2205.03},[3] = {id = 103,val = 13379.67}},UpAttr = {[1] = {id = 101,val = 111.06},[2] = {id = 102,val = 55.53},[3] = {id = 103,val = 333.18}},RosterAttr = {AtkExt = 7044,DefExt = 3520,HPExt = 21146}},--刘羽禅18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 5136.95},[2] = {id = 102,val = 2551.58},[3] = {id = 103,val = 15462.85}},UpAttr = {[1] = {id = 101,val = 128.43},[2] = {id = 102,val = 64.21},[3] = {id = 103,val = 385.28}},RosterAttr = {AtkExt = 8328,DefExt = 4162,HPExt = 24998}},--刘羽禅19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5938.99},[2] = {id = 102,val = 2953.24},[3] = {id = 103,val = 17868.96}},UpAttr = {[1] = {id = 101,val = 148.47},[2] = {id = 102,val = 74.24},[3] = {id = 103,val = 445.42}},RosterAttr = {AtkExt = 9812,DefExt = 4904,HPExt = 29452}}--刘羽禅20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1701005,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1701005,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1701005,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1701005,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1701005,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--刘羽禅
	[1101006] = {
		IfEntreVersion = 1,
		Name = "红莲缇娜",
		NickName = "地狱神父",
		NamePic = "ui_dtex_Name_1101006",
		NickNamePic = "ui_dtex_Name2_1101006",
		Tag = {107},
		Type = 1,
		Quality = 4,
		CrystalType = 0,
		Sex = 2,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301006,[2] = 1302006},
		XLGroup = 2,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010061,[2] = 11010062},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701006,val = 40}},
		DebrisID = 1701006,
		ComposeNum = 40,
		CardFace = "cardface_hltn_1101006",
		Head2 = "head_hltn_1101006",
		HeadBig = "headbig_hltn_1101006",
		Icon = "head_hltn_1101006",
		Painting = "draw_hltn_1101006",
		Cutin = "cutin_hltn_1101006",
		GachaDialogue = "gacha_hltn_1101006",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 401,
		ExclusiveGuard = {[1] = 1102007},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 0},[3] = {id = 103,val = 115}},UpAttr = {[1] = {id = 101,val = 3.45},[2] = {id = 102,val = 1.73},[3] = {id = 103,val = 10.35}},RosterAttr = {AtkExt = 9846,DefExt = 4921,HPExt = 29555}},--红莲·缇娜1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 82.8},[2] = {id = 102,val = 24.15},[3] = {id = 103,val = 294.4}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 13.8}},RosterAttr = {AtkExt = 9892,DefExt = 4944,HPExt = 29693}},--红莲·缇娜2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 169.05},[2] = {id = 102,val = 67.85},[3] = {id = 103,val = 553.15}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 20.8}},RosterAttr = {AtkExt = 9961,DefExt = 4978,HPExt = 29901}},--红莲·缇娜3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 255.65},[2] = {id = 102,val = 111.72},[3] = {id = 103,val = 812.94}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 27.6}},RosterAttr = {AtkExt = 10053,DefExt = 5024,HPExt = 30177}},--红莲·缇娜4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 370.65},[2] = {id = 102,val = 169.22},[3] = {id = 103,val = 1157.94}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 34.57}},RosterAttr = {AtkExt = 10168,DefExt = 5081,HPExt = 30522}},--红莲·缇娜5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 514.63},[2] = {id = 102,val = 241.79},[3] = {id = 103,val = 1589.88}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 43.23}},RosterAttr = {AtkExt = 144,DefExt = 72,HPExt = 432}},--红莲·缇娜6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 694.37},[2] = {id = 102,val = 332.24},[3] = {id = 103,val = 2129.11}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 54.17}},RosterAttr = {AtkExt = 324,DefExt = 162,HPExt = 973}},--红莲·缇娜7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 919.77},[2] = {id = 102,val = 445.51},[3] = {id = 103,val = 2805.31}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 69}},RosterAttr = {AtkExt = 554,DefExt = 277,HPExt = 1663}},--红莲·缇娜8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1063.52},[2] = {id = 102,val = 517.96},[3] = {id = 103,val = 3236.56}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 79.76}},RosterAttr = {AtkExt = 819,DefExt = 409,HPExt = 2460}},--红莲·缇娜9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1229.81},[2] = {id = 102,val = 600.53},[3] = {id = 103,val = 3735.43}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 92.25}},RosterAttr = {AtkExt = 1126,DefExt = 562,HPExt = 3382}},--红莲·缇娜10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1421.52},[2] = {id = 102,val = 696.96},[3] = {id = 103,val = 4310.55}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 106.61}},RosterAttr = {AtkExt = 1481,DefExt = 739,HPExt = 4448}},--红莲·缇娜11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1644.04},[2] = {id = 102,val = 807.65},[3] = {id = 103,val = 4978.12}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 123.3}},RosterAttr = {AtkExt = 1892,DefExt = 944,HPExt = 5681}},--红莲·缇娜12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1901.3},[2] = {id = 102,val = 935.7},[3] = {id = 103,val = 5749.89}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 142.59}},RosterAttr = {AtkExt = 2367,DefExt = 1181,HPExt = 7106}},--红莲·缇娜13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2198.74},[2] = {id = 102,val = 1084.42},[3] = {id = 103,val = 6642.23}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 164.91}},RosterAttr = {AtkExt = 2916,DefExt = 1455,HPExt = 8755}},--红莲·缇娜14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2542.59},[2] = {id = 102,val = 1256.35},[3] = {id = 103,val = 7673.78}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 190.68}},RosterAttr = {AtkExt = 3551,DefExt = 1772,HPExt = 10661}},--红莲·缇娜15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2939.75},[2] = {id = 102,val = 1455.5},[3] = {id = 103,val = 8865.24}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 220.49}},RosterAttr = {AtkExt = 4286,DefExt = 2139,HPExt = 12865}},--红莲·缇娜16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3399.23},[2] = {id = 102,val = 1685.24},[3] = {id = 103,val = 10243.68}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 254.96}},RosterAttr = {AtkExt = 5135,DefExt = 2563,HPExt = 15414}},--红莲·缇娜17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3929.95},[2] = {id = 102,val = 1950.6},[3] = {id = 103,val = 11835.86}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 294.73}},RosterAttr = {AtkExt = 6117,DefExt = 3054,HPExt = 18361}},--红莲·缇娜18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4544.23},[2] = {id = 102,val = 2257.16},[3] = {id = 103,val = 13678.68}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 340.83}},RosterAttr = {AtkExt = 7253,DefExt = 3622,HPExt = 21769}},--红莲·缇娜19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5253.72},[2] = {id = 102,val = 2612.48},[3] = {id = 103,val = 15807.15}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 394.02}},RosterAttr = {AtkExt = 8566,DefExt = 4278,HPExt = 25709}}--红莲·缇娜20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1701006,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1701006,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1701006,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1701006,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1701006,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--红莲缇娜
	[1101007] = {
		IfEntreVersion = 1,
		Name = "灵装曹焱兵",
		NickName = "曹魔王",
		NamePic = "ui_dtex_Name_1101007",
		NickNamePic = "ui_dtex_Name2_1101007",
		Tag = {103},
		Type = 1,
		Quality = 4,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301007,[2] = 1302007},
		XLGroup = 3,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010071,[2] = 11010072},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701007,val = 80}},
		DebrisID = 1701007,
		ComposeNum = 80,
		CardFace = "cardface_zdcyb_1101007",
		Head2 = "head_zdcyb_1101007",
		HeadBig = "headbig_zdcyb_1101007",
		Icon = "head_zdcyb_1101007",
		Painting = "draw_zdcyb_1101007",
		Cutin = "cutin_zdcyb_1101007",
		GachaDialogue = "gacha_zdcyb_1101007",
		PaintingPos = {x = 124.7,y = 14.2},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102002,[2] = 1102003,[3] = 1102008,[4] = 1102009,[5] = 1102010,[6] = 1102012,[7] = 1102015},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 0},[3] = {id = 103,val = 130}},UpAttr = {[1] = {id = 101,val = 3.9},[2] = {id = 102,val = 1.95},[3] = {id = 103,val = 11.7}},RosterAttr = {AtkExt = 8605,DefExt = 4297,HPExt = 25826}},--战斗曹焱兵1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 93.6},[2] = {id = 102,val = 27.3},[3] = {id = 103,val = 332.8}},UpAttr = {[1] = {id = 101,val = 5.2},[2] = {id = 102,val = 2.6},[3] = {id = 103,val = 15.6}},RosterAttr = {AtkExt = 8657,DefExt = 4323,HPExt = 25982}},--战斗曹焱兵2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 191.1},[2] = {id = 102,val = 76.7},[3] = {id = 103,val = 625.3}},UpAttr = {[1] = {id = 101,val = 7.84},[2] = {id = 102,val = 3.92},[3] = {id = 103,val = 23.52}},RosterAttr = {AtkExt = 8735,DefExt = 4362,HPExt = 26217}},--战斗曹焱兵3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 288.99},[2] = {id = 102,val = 126.3},[3] = {id = 103,val = 918.97}},UpAttr = {[1] = {id = 101,val = 10.4},[2] = {id = 102,val = 5.2},[3] = {id = 103,val = 31.2}},RosterAttr = {AtkExt = 8839,DefExt = 4414,HPExt = 26529}},--战斗曹焱兵4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 418.99},[2] = {id = 102,val = 191.3},[3] = {id = 103,val = 1308.97}},UpAttr = {[1] = {id = 101,val = 13.03},[2] = {id = 102,val = 6.51},[3] = {id = 103,val = 39.08}},RosterAttr = {AtkExt = 8969,DefExt = 4479,HPExt = 26919}},--战斗曹焱兵5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 581.75},[2] = {id = 102,val = 273.33},[3] = {id = 103,val = 1797.25}},UpAttr = {[1] = {id = 101,val = 16.29},[2] = {id = 102,val = 8.14},[3] = {id = 103,val = 48.87}},RosterAttr = {AtkExt = 9131,DefExt = 4560,HPExt = 27407}},--战斗曹焱兵6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 784.94},[2] = {id = 102,val = 375.57},[3] = {id = 103,val = 2406.82}},UpAttr = {[1] = {id = 101,val = 20.41},[2] = {id = 102,val = 10.21},[3] = {id = 103,val = 61.23}},RosterAttr = {AtkExt = 204,DefExt = 102,HPExt = 612}},--战斗曹焱兵7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1039.74},[2] = {id = 102,val = 503.62},[3] = {id = 103,val = 3171.22}},UpAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 13},[3] = {id = 103,val = 78}},RosterAttr = {AtkExt = 464,DefExt = 232,HPExt = 1392}},--战斗曹焱兵8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1202.24},[2] = {id = 102,val = 585.52},[3] = {id = 103,val = 3658.72}},UpAttr = {[1] = {id = 101,val = 30.06},[2] = {id = 102,val = 15.03},[3] = {id = 103,val = 90.17}},RosterAttr = {AtkExt = 764,DefExt = 382,HPExt = 2293}},--战斗曹焱兵9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1390.22},[2] = {id = 102,val = 678.86},[3] = {id = 103,val = 4222.66}},UpAttr = {[1] = {id = 101,val = 34.76},[2] = {id = 102,val = 17.38},[3] = {id = 103,val = 104.29}},RosterAttr = {AtkExt = 1111,DefExt = 555,HPExt = 3335}},--战斗曹焱兵10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1606.93},[2] = {id = 102,val = 787.87},[3] = {id = 103,val = 4872.79}},UpAttr = {[1] = {id = 101,val = 40.17},[2] = {id = 102,val = 20.09},[3] = {id = 103,val = 120.51}},RosterAttr = {AtkExt = 1512,DefExt = 755,HPExt = 4540}},--战斗曹焱兵11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1858.48},[2] = {id = 102,val = 912.99},[3] = {id = 103,val = 5627.44}},UpAttr = {[1] = {id = 101,val = 46.46},[2] = {id = 102,val = 23.23},[3] = {id = 103,val = 139.39}},RosterAttr = {AtkExt = 1976,DefExt = 987,HPExt = 5933}},--战斗曹焱兵12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2149.29},[2] = {id = 102,val = 1057.75},[3] = {id = 103,val = 6499.87}},UpAttr = {[1] = {id = 101,val = 53.73},[2] = {id = 102,val = 26.86},[3] = {id = 103,val = 161.19}},RosterAttr = {AtkExt = 2513,DefExt = 1255,HPExt = 7544}},--战斗曹焱兵13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2485.54},[2] = {id = 102,val = 1225.87},[3] = {id = 103,val = 7508.61}},UpAttr = {[1] = {id = 101,val = 62.14},[2] = {id = 102,val = 31.07},[3] = {id = 103,val = 186.42}},RosterAttr = {AtkExt = 3134,DefExt = 1565,HPExt = 9408}},--战斗曹焱兵14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2874.24},[2] = {id = 102,val = 1420.22},[3] = {id = 103,val = 8674.71}},UpAttr = {[1] = {id = 101,val = 71.85},[2] = {id = 102,val = 35.93},[3] = {id = 103,val = 215.55}},RosterAttr = {AtkExt = 3852,DefExt = 1924,HPExt = 11563}},--战斗曹焱兵15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3323.19},[2] = {id = 102,val = 1645.35},[3] = {id = 103,val = 10021.57}},UpAttr = {[1] = {id = 101,val = 83.08},[2] = {id = 102,val = 41.54},[3] = {id = 103,val = 249.25}},RosterAttr = {AtkExt = 4682,DefExt = 2339,HPExt = 14055}},--战斗曹焱兵16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3842.61},[2] = {id = 102,val = 1905.05},[3] = {id = 103,val = 11579.82}},UpAttr = {[1] = {id = 101,val = 96.07},[2] = {id = 102,val = 48.04},[3] = {id = 103,val = 288.21}},RosterAttr = {AtkExt = 5642,DefExt = 2819,HPExt = 16937}},--战斗曹焱兵17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4442.56},[2] = {id = 102,val = 2205.03},[3] = {id = 103,val = 13379.67}},UpAttr = {[1] = {id = 101,val = 111.06},[2] = {id = 102,val = 55.53},[3] = {id = 103,val = 333.18}},RosterAttr = {AtkExt = 6752,DefExt = 3374,HPExt = 20268}},--战斗曹焱兵18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 5136.95},[2] = {id = 102,val = 2551.58},[3] = {id = 103,val = 15462.85}},UpAttr = {[1] = {id = 101,val = 128.43},[2] = {id = 102,val = 64.21},[3] = {id = 103,val = 385.28}},RosterAttr = {AtkExt = 8036,DefExt = 4016,HPExt = 24120}},--战斗曹焱兵19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5938.99},[2] = {id = 102,val = 2953.24},[3] = {id = 103,val = 17868.96}},UpAttr = {[1] = {id = 101,val = 148.47},[2] = {id = 102,val = 74.24},[3] = {id = 103,val = 445.42}},RosterAttr = {AtkExt = 9520,DefExt = 4758,HPExt = 28574}}--战斗曹焱兵20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1701007,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1701007,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1701007,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1701007,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1701007,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--战斗曹焱兵
	[1101008] = {
		IfEntreVersion = 1,
		Name = "黑尔坎普",
		NickName = "地狱看门人",
		NamePic = "ui_dtex_Name_1101008",
		NickNamePic = "ui_dtex_Name2_1101008",
		Tag = {101},
		Type = 1,
		Quality = 2,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301008,[2] = 1302008},
		XLGroup = 1,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010081,[2] = 11010082},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701008,val = 20}},
		DebrisID = 1701008,
		ComposeNum = 20,
		CardFace = "cardface_hekp_1101008",
		Head2 = "head_hekp_1101008",
		HeadBig = "headbig_hekp_1101008",
		Icon = "head_hekp_1101008",
		Painting = "draw_hekp_1101008",
		Cutin = "cutin_hekp_1101008",
		PaintingPos = {x = 22,y = -86.1},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102013},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 0},[3] = {id = 103,val = 100}},UpAttr = {[1] = {id = 101,val = 3},[2] = {id = 102,val = 1.5},[3] = {id = 103,val = 9}},RosterAttr = {AtkExt = 9550,DefExt = 4773,HPExt = 28664}},--黑尔·坎普1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 72},[2] = {id = 102,val = 21},[3] = {id = 103,val = 256}},UpAttr = {[1] = {id = 101,val = 4},[2] = {id = 102,val = 2},[3] = {id = 103,val = 12}},RosterAttr = {AtkExt = 9590,DefExt = 4793,HPExt = 28784}},--黑尔·坎普2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 147},[2] = {id = 102,val = 59},[3] = {id = 103,val = 481}},UpAttr = {[1] = {id = 101,val = 6.03},[2] = {id = 102,val = 3.02},[3] = {id = 103,val = 18.09}},RosterAttr = {AtkExt = 9650,DefExt = 4823,HPExt = 28964}},--黑尔·坎普3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 222.3},[2] = {id = 102,val = 97.15},[3] = {id = 103,val = 706.9}},UpAttr = {[1] = {id = 101,val = 8},[2] = {id = 102,val = 4},[3] = {id = 103,val = 24}},RosterAttr = {AtkExt = 9730,DefExt = 4863,HPExt = 29204}},--黑尔·坎普4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 322.3},[2] = {id = 102,val = 147.15},[3] = {id = 103,val = 1006.9}},UpAttr = {[1] = {id = 101,val = 10.02},[2] = {id = 102,val = 5.01},[3] = {id = 103,val = 30.06}},RosterAttr = {AtkExt = 9830,DefExt = 4913,HPExt = 29504}},--黑尔·坎普5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 447.5},[2] = {id = 102,val = 210.25},[3] = {id = 103,val = 1382.5}},UpAttr = {[1] = {id = 101,val = 12.53},[2] = {id = 102,val = 6.27},[3] = {id = 103,val = 37.59}},RosterAttr = {AtkExt = 9955,DefExt = 4975,HPExt = 29879}},--黑尔·坎普6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 603.8},[2] = {id = 102,val = 288.9},[3] = {id = 103,val = 1851.4}},UpAttr = {[1] = {id = 101,val = 15.7},[2] = {id = 102,val = 7.85},[3] = {id = 103,val = 47.1}},RosterAttr = {AtkExt = 10112,DefExt = 5053,HPExt = 30350}},--黑尔·坎普7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 799.8},[2] = {id = 102,val = 387.4},[3] = {id = 103,val = 2439.4}},UpAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 10},[3] = {id = 103,val = 60}},RosterAttr = {AtkExt = 200,DefExt = 100,HPExt = 600}},--黑尔·坎普8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 924.8},[2] = {id = 102,val = 450.4},[3] = {id = 103,val = 2814.4}},UpAttr = {[1] = {id = 101,val = 23.12},[2] = {id = 102,val = 11.56},[3] = {id = 103,val = 69.36}},RosterAttr = {AtkExt = 431,DefExt = 215,HPExt = 1293}},--黑尔·坎普9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1069.4},[2] = {id = 102,val = 522.2},[3] = {id = 103,val = 3248.2}},UpAttr = {[1] = {id = 101,val = 26.74},[2] = {id = 102,val = 13.37},[3] = {id = 103,val = 80.22}},RosterAttr = {AtkExt = 698,DefExt = 348,HPExt = 2095}},--黑尔·坎普10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1236.1},[2] = {id = 102,val = 606.05},[3] = {id = 103,val = 3748.3}},UpAttr = {[1] = {id = 101,val = 30.9},[2] = {id = 102,val = 15.45},[3] = {id = 103,val = 92.7}},RosterAttr = {AtkExt = 1007,DefExt = 502,HPExt = 3022}},--黑尔·坎普11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1429.6},[2] = {id = 102,val = 702.3},[3] = {id = 103,val = 4328.8}},UpAttr = {[1] = {id = 101,val = 35.74},[2] = {id = 102,val = 17.87},[3] = {id = 103,val = 107.22}},RosterAttr = {AtkExt = 1364,DefExt = 680,HPExt = 4094}},--黑尔·坎普12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1653.3},[2] = {id = 102,val = 813.65},[3] = {id = 103,val = 4999.9}},UpAttr = {[1] = {id = 101,val = 41.33},[2] = {id = 102,val = 20.67},[3] = {id = 103,val = 123.99}},RosterAttr = {AtkExt = 1777,DefExt = 886,HPExt = 5333}},--黑尔·坎普13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 1911.95},[2] = {id = 102,val = 942.98},[3] = {id = 103,val = 5775.85}},UpAttr = {[1] = {id = 101,val = 47.8},[2] = {id = 102,val = 23.9},[3] = {id = 103,val = 143.4}},RosterAttr = {AtkExt = 2255,DefExt = 1125,HPExt = 6767}},--黑尔·坎普14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2210.95},[2] = {id = 102,val = 1092.48},[3] = {id = 103,val = 6672.85}},UpAttr = {[1] = {id = 101,val = 55.27},[2] = {id = 102,val = 27.64},[3] = {id = 103,val = 165.81}},RosterAttr = {AtkExt = 2807,DefExt = 1401,HPExt = 8425}},--黑尔·坎普15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2556.3},[2] = {id = 102,val = 1265.65},[3] = {id = 103,val = 7708.9}},UpAttr = {[1] = {id = 101,val = 63.91},[2] = {id = 102,val = 31.96},[3] = {id = 103,val = 191.73}},RosterAttr = {AtkExt = 3446,DefExt = 1720,HPExt = 10342}},--黑尔·坎普16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 2955.85},[2] = {id = 102,val = 1465.43},[3] = {id = 103,val = 8907.55}},UpAttr = {[1] = {id = 101,val = 73.9},[2] = {id = 102,val = 36.95},[3] = {id = 103,val = 221.7}},RosterAttr = {AtkExt = 4185,DefExt = 2089,HPExt = 12559}},--黑尔·坎普17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3417.35},[2] = {id = 102,val = 1696.18},[3] = {id = 103,val = 10292.05}},UpAttr = {[1] = {id = 101,val = 85.43},[2] = {id = 102,val = 42.72},[3] = {id = 103,val = 256.29}},RosterAttr = {AtkExt = 5039,DefExt = 2516,HPExt = 15121}},--黑尔·坎普18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 3951.5},[2] = {id = 102,val = 1962.75},[3] = {id = 103,val = 11894.5}},UpAttr = {[1] = {id = 101,val = 98.79},[2] = {id = 102,val = 49.4},[3] = {id = 103,val = 296.37}},RosterAttr = {AtkExt = 6026,DefExt = 3010,HPExt = 18084}},--黑尔·坎普19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 4568.45},[2] = {id = 102,val = 2271.73},[3] = {id = 103,val = 13745.35}},UpAttr = {[1] = {id = 101,val = 114.21},[2] = {id = 102,val = 57.11},[3] = {id = 103,val = 342.63}},RosterAttr = {AtkExt = 7168,DefExt = 3581,HPExt = 21510}}--黑尔·坎普20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1701008,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1701008,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1701008,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1701008,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1701008,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--黑尔坎普
	[1101009] = {
		IfEntreVersion = 1,
		Name = "北落师门",
		NickName = "门司令",
		NamePic = "ui_dtex_Name_1101009",
		NickNamePic = "ui_dtex_Name2_1101009",
		Tag = {101},
		Type = 1,
		Quality = 3,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301009,[2] = 1302009},
		XLGroup = 2,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010091,[2] = 11010092},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701009,val = 40}},
		DebrisID = 1701009,
		ComposeNum = 40,
		CardFace = "cardface_blsm_1101009",
		Head2 = "head_blsm_1101009",
		HeadBig = "headbig_blsm_1101009",
		Icon = "head_blsm_1101009",
		Painting = "draw_blsm_1101009",
		Cutin = "cutin_blsm_1101009",
		GachaDialogue = "gacha_blsm_1101009",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102014},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 0},[3] = {id = 103,val = 115}},UpAttr = {[1] = {id = 101,val = 3.45},[2] = {id = 102,val = 1.73},[3] = {id = 103,val = 10.35}},RosterAttr = {AtkExt = 7202,DefExt = 3598,HPExt = 21613}},--北落师门1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 82.8},[2] = {id = 102,val = 24.15},[3] = {id = 103,val = 294.4}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 13.8}},RosterAttr = {AtkExt = 7248,DefExt = 3621,HPExt = 21751}},--北落师门2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 169.05},[2] = {id = 102,val = 67.85},[3] = {id = 103,val = 553.15}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 20.8}},RosterAttr = {AtkExt = 7317,DefExt = 3655,HPExt = 21959}},--北落师门3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 255.65},[2] = {id = 102,val = 111.72},[3] = {id = 103,val = 812.94}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 27.6}},RosterAttr = {AtkExt = 7409,DefExt = 3701,HPExt = 22235}},--北落师门4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 370.65},[2] = {id = 102,val = 169.22},[3] = {id = 103,val = 1157.94}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 34.57}},RosterAttr = {AtkExt = 7524,DefExt = 3758,HPExt = 22580}},--北落师门5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 514.63},[2] = {id = 102,val = 241.79},[3] = {id = 103,val = 1589.88}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 43.23}},RosterAttr = {AtkExt = 7668,DefExt = 3830,HPExt = 23012}},--北落师门6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 694.37},[2] = {id = 102,val = 332.24},[3] = {id = 103,val = 2129.11}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 54.17}},RosterAttr = {AtkExt = 7848,DefExt = 3920,HPExt = 23553}},--北落师门7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 919.77},[2] = {id = 102,val = 445.51},[3] = {id = 103,val = 2805.31}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 69}},RosterAttr = {AtkExt = 8078,DefExt = 4035,HPExt = 24243}},--北落师门8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1063.52},[2] = {id = 102,val = 517.96},[3] = {id = 103,val = 3236.56}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 79.76}},RosterAttr = {AtkExt = 265,DefExt = 132,HPExt = 797}},--北落师门9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1229.81},[2] = {id = 102,val = 600.53},[3] = {id = 103,val = 3735.43}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 92.25}},RosterAttr = {AtkExt = 572,DefExt = 285,HPExt = 1719}},--北落师门10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1421.52},[2] = {id = 102,val = 696.96},[3] = {id = 103,val = 4310.55}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 106.61}},RosterAttr = {AtkExt = 927,DefExt = 462,HPExt = 2785}},--北落师门11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1644.04},[2] = {id = 102,val = 807.65},[3] = {id = 103,val = 4978.12}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 123.3}},RosterAttr = {AtkExt = 1338,DefExt = 667,HPExt = 4018}},--北落师门12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1901.3},[2] = {id = 102,val = 935.7},[3] = {id = 103,val = 5749.89}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 142.59}},RosterAttr = {AtkExt = 1813,DefExt = 904,HPExt = 5443}},--北落师门13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2198.74},[2] = {id = 102,val = 1084.42},[3] = {id = 103,val = 6642.23}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 164.91}},RosterAttr = {AtkExt = 2362,DefExt = 1178,HPExt = 7092}},--北落师门14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2542.59},[2] = {id = 102,val = 1256.35},[3] = {id = 103,val = 7673.78}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 190.68}},RosterAttr = {AtkExt = 2997,DefExt = 1495,HPExt = 8998}},--北落师门15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2939.75},[2] = {id = 102,val = 1455.5},[3] = {id = 103,val = 8865.24}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 220.49}},RosterAttr = {AtkExt = 3732,DefExt = 1862,HPExt = 11202}},--北落师门16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3399.23},[2] = {id = 102,val = 1685.24},[3] = {id = 103,val = 10243.68}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 254.96}},RosterAttr = {AtkExt = 4581,DefExt = 2286,HPExt = 13751}},--北落师门17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3929.95},[2] = {id = 102,val = 1950.6},[3] = {id = 103,val = 11835.86}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 294.73}},RosterAttr = {AtkExt = 5563,DefExt = 2777,HPExt = 16698}},--北落师门18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4544.23},[2] = {id = 102,val = 2257.16},[3] = {id = 103,val = 13678.68}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 340.83}},RosterAttr = {AtkExt = 6699,DefExt = 3345,HPExt = 20106}},--北落师门19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5253.72},[2] = {id = 102,val = 2612.48},[3] = {id = 103,val = 15807.15}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 394.02}},RosterAttr = {AtkExt = 8012,DefExt = 4001,HPExt = 24046}}--北落师门20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701009,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701009,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701009,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701009,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701009,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--北落师门
	[1101010] = {
		IfEntreVersion = 1,
		Name = "盖文",
		NickName = "龙王",
		NamePic = "ui_dtex_Name_1101010",
		NickNamePic = "ui_dtex_Name2_1101010",
		Tag = {101},
		Type = 1,
		Quality = 4,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301010,[2] = 1302010},
		XLGroup = 3,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010101,[2] = 11010102},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701010,val = 80}},
		DebrisID = 1701010,
		ComposeNum = 80,
		CardFace = "cardface_gw_1101010",
		Head2 = "head_gw_1101010",
		HeadBig = "headbig_gw_1101010",
		Icon = "head_gw_1101010",
		Painting = "draw_gw_1101010",
		Cutin = "cutin_gw_1101010",
		GachaDialogue = "gacha_gw_1101010",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102016},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 0},[3] = {id = 103,val = 130}},UpAttr = {[1] = {id = 101,val = 3.9},[2] = {id = 102,val = 1.95},[3] = {id = 103,val = 11.7}},RosterAttr = {AtkExt = 8051,DefExt = 4020,HPExt = 24163}},--盖文1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 93.6},[2] = {id = 102,val = 27.3},[3] = {id = 103,val = 332.8}},UpAttr = {[1] = {id = 101,val = 5.2},[2] = {id = 102,val = 2.6},[3] = {id = 103,val = 15.6}},RosterAttr = {AtkExt = 8103,DefExt = 4046,HPExt = 24319}},--盖文2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 191.1},[2] = {id = 102,val = 76.7},[3] = {id = 103,val = 625.3}},UpAttr = {[1] = {id = 101,val = 7.84},[2] = {id = 102,val = 3.92},[3] = {id = 103,val = 23.52}},RosterAttr = {AtkExt = 8181,DefExt = 4085,HPExt = 24554}},--盖文3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 288.99},[2] = {id = 102,val = 126.3},[3] = {id = 103,val = 918.97}},UpAttr = {[1] = {id = 101,val = 10.4},[2] = {id = 102,val = 5.2},[3] = {id = 103,val = 31.2}},RosterAttr = {AtkExt = 8285,DefExt = 4137,HPExt = 24866}},--盖文4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 418.99},[2] = {id = 102,val = 191.3},[3] = {id = 103,val = 1308.97}},UpAttr = {[1] = {id = 101,val = 13.03},[2] = {id = 102,val = 6.51},[3] = {id = 103,val = 39.08}},RosterAttr = {AtkExt = 8415,DefExt = 4202,HPExt = 25256}},--盖文5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 581.75},[2] = {id = 102,val = 273.33},[3] = {id = 103,val = 1797.25}},UpAttr = {[1] = {id = 101,val = 16.29},[2] = {id = 102,val = 8.14},[3] = {id = 103,val = 48.87}},RosterAttr = {AtkExt = 8577,DefExt = 4283,HPExt = 25744}},--盖文6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 784.94},[2] = {id = 102,val = 375.57},[3] = {id = 103,val = 2406.82}},UpAttr = {[1] = {id = 101,val = 20.41},[2] = {id = 102,val = 10.21},[3] = {id = 103,val = 61.23}},RosterAttr = {AtkExt = 8781,DefExt = 4385,HPExt = 26356}},--盖文7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1039.74},[2] = {id = 102,val = 503.62},[3] = {id = 103,val = 3171.22}},UpAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 13},[3] = {id = 103,val = 78}},RosterAttr = {AtkExt = 9041,DefExt = 4515,HPExt = 27136}},--盖文8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1202.24},[2] = {id = 102,val = 585.52},[3] = {id = 103,val = 3658.72}},UpAttr = {[1] = {id = 101,val = 30.06},[2] = {id = 102,val = 15.03},[3] = {id = 103,val = 90.17}},RosterAttr = {AtkExt = 9341,DefExt = 4665,HPExt = 28037}},--盖文9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1390.22},[2] = {id = 102,val = 678.86},[3] = {id = 103,val = 4222.66}},UpAttr = {[1] = {id = 101,val = 34.76},[2] = {id = 102,val = 17.38},[3] = {id = 103,val = 104.29}},RosterAttr = {AtkExt = 347,DefExt = 173,HPExt = 1042}},--盖文10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1606.93},[2] = {id = 102,val = 787.87},[3] = {id = 103,val = 4872.79}},UpAttr = {[1] = {id = 101,val = 40.17},[2] = {id = 102,val = 20.09},[3] = {id = 103,val = 120.51}},RosterAttr = {AtkExt = 748,DefExt = 373,HPExt = 2247}},--盖文11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1858.48},[2] = {id = 102,val = 912.99},[3] = {id = 103,val = 5627.44}},UpAttr = {[1] = {id = 101,val = 46.46},[2] = {id = 102,val = 23.23},[3] = {id = 103,val = 139.39}},RosterAttr = {AtkExt = 1212,DefExt = 605,HPExt = 3640}},--盖文12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2149.29},[2] = {id = 102,val = 1057.75},[3] = {id = 103,val = 6499.87}},UpAttr = {[1] = {id = 101,val = 53.73},[2] = {id = 102,val = 26.86},[3] = {id = 103,val = 161.19}},RosterAttr = {AtkExt = 1749,DefExt = 873,HPExt = 5251}},--盖文13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2485.54},[2] = {id = 102,val = 1225.87},[3] = {id = 103,val = 7508.61}},UpAttr = {[1] = {id = 101,val = 62.14},[2] = {id = 102,val = 31.07},[3] = {id = 103,val = 186.42}},RosterAttr = {AtkExt = 2370,DefExt = 1183,HPExt = 7115}},--盖文14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2874.24},[2] = {id = 102,val = 1420.22},[3] = {id = 103,val = 8674.71}},UpAttr = {[1] = {id = 101,val = 71.85},[2] = {id = 102,val = 35.93},[3] = {id = 103,val = 215.55}},RosterAttr = {AtkExt = 3088,DefExt = 1542,HPExt = 9270}},--盖文15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3323.19},[2] = {id = 102,val = 1645.35},[3] = {id = 103,val = 10021.57}},UpAttr = {[1] = {id = 101,val = 83.08},[2] = {id = 102,val = 41.54},[3] = {id = 103,val = 249.25}},RosterAttr = {AtkExt = 3918,DefExt = 1957,HPExt = 11762}},--盖文16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3842.61},[2] = {id = 102,val = 1905.05},[3] = {id = 103,val = 11579.82}},UpAttr = {[1] = {id = 101,val = 96.07},[2] = {id = 102,val = 48.04},[3] = {id = 103,val = 288.21}},RosterAttr = {AtkExt = 4878,DefExt = 2437,HPExt = 14644}},--盖文17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4442.56},[2] = {id = 102,val = 2205.03},[3] = {id = 103,val = 13379.67}},UpAttr = {[1] = {id = 101,val = 111.06},[2] = {id = 102,val = 55.53},[3] = {id = 103,val = 333.18}},RosterAttr = {AtkExt = 5988,DefExt = 2992,HPExt = 17975}},--盖文18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 5136.95},[2] = {id = 102,val = 2551.58},[3] = {id = 103,val = 15462.85}},UpAttr = {[1] = {id = 101,val = 128.43},[2] = {id = 102,val = 64.21},[3] = {id = 103,val = 385.28}},RosterAttr = {AtkExt = 7272,DefExt = 3634,HPExt = 21827}},--盖文19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5938.99},[2] = {id = 102,val = 2953.24},[3] = {id = 103,val = 17868.96}},UpAttr = {[1] = {id = 101,val = 148.47},[2] = {id = 102,val = 74.24},[3] = {id = 103,val = 445.42}},RosterAttr = {AtkExt = 8756,DefExt = 4376,HPExt = 26281}}--盖文20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1701010,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1701010,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1701010,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1701010,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1701010,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--盖文
	[1101011] = {
		IfEntreVersion = 1,
		Name = "阎风吒",
		NickName = "混世风魔",
		NamePic = "ui_dtex_Name_1101011",
		NickNamePic = "ui_dtex_Name2_1101011",
		Tag = {101},
		Type = 1,
		Quality = 3,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301011,[2] = 1302011},
		XLGroup = 2,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010111,[2] = 11010112},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701011,val = 40}},
		DebrisID = 1701011,
		ComposeNum = 40,
		CardFace = "cardface_yfz_1101011",
		Head2 = "head_yfz_1101011",
		HeadBig = "headbig_yfz_1101011",
		Icon = "head_yfz_1101011",
		Painting = "draw_yfz_1101011",
		Cutin = "cutin_yfz_1101011",
		GachaDialogue = "gacha_yfz_1101011",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102017},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 0},[3] = {id = 103,val = 115}},UpAttr = {[1] = {id = 101,val = 3.45},[2] = {id = 102,val = 1.73},[3] = {id = 103,val = 10.35}},RosterAttr = {AtkExt = 8790,DefExt = 4393,HPExt = 26384}},--阎风吒1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 82.8},[2] = {id = 102,val = 24.15},[3] = {id = 103,val = 294.4}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 13.8}},RosterAttr = {AtkExt = 8836,DefExt = 4416,HPExt = 26522}},--阎风吒2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 169.05},[2] = {id = 102,val = 67.85},[3] = {id = 103,val = 553.15}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 20.8}},RosterAttr = {AtkExt = 8905,DefExt = 4450,HPExt = 26730}},--阎风吒3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 255.65},[2] = {id = 102,val = 111.72},[3] = {id = 103,val = 812.94}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 27.6}},RosterAttr = {AtkExt = 8997,DefExt = 4496,HPExt = 27006}},--阎风吒4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 370.65},[2] = {id = 102,val = 169.22},[3] = {id = 103,val = 1157.94}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 34.57}},RosterAttr = {AtkExt = 9112,DefExt = 4553,HPExt = 27351}},--阎风吒5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 514.63},[2] = {id = 102,val = 241.79},[3] = {id = 103,val = 1589.88}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 43.23}},RosterAttr = {AtkExt = 9256,DefExt = 4625,HPExt = 27783}},--阎风吒6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 694.37},[2] = {id = 102,val = 332.24},[3] = {id = 103,val = 2129.11}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 54.17}},RosterAttr = {AtkExt = 9436,DefExt = 4715,HPExt = 28324}},--阎风吒7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 919.77},[2] = {id = 102,val = 445.51},[3] = {id = 103,val = 2805.31}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 69}},RosterAttr = {AtkExt = 9666,DefExt = 4830,HPExt = 29014}},--阎风吒8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1063.52},[2] = {id = 102,val = 517.96},[3] = {id = 103,val = 3236.56}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 79.76}},RosterAttr = {AtkExt = 9931,DefExt = 4962,HPExt = 29811}},--阎风吒9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1229.81},[2] = {id = 102,val = 600.53},[3] = {id = 103,val = 3735.43}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 92.25}},RosterAttr = {AtkExt = 10238,DefExt = 5115,HPExt = 30733}},--阎风吒10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1421.52},[2] = {id = 102,val = 696.96},[3] = {id = 103,val = 4310.55}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 106.61}},RosterAttr = {AtkExt = 355,DefExt = 177,HPExt = 1066}},--阎风吒11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1644.04},[2] = {id = 102,val = 807.65},[3] = {id = 103,val = 4978.12}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 123.3}},RosterAttr = {AtkExt = 766,DefExt = 382,HPExt = 2299}},--阎风吒12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1901.3},[2] = {id = 102,val = 935.7},[3] = {id = 103,val = 5749.89}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 142.59}},RosterAttr = {AtkExt = 1241,DefExt = 619,HPExt = 3724}},--阎风吒13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2198.74},[2] = {id = 102,val = 1084.42},[3] = {id = 103,val = 6642.23}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 164.91}},RosterAttr = {AtkExt = 1790,DefExt = 893,HPExt = 5373}},--阎风吒14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2542.59},[2] = {id = 102,val = 1256.35},[3] = {id = 103,val = 7673.78}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 190.68}},RosterAttr = {AtkExt = 2425,DefExt = 1210,HPExt = 7279}},--阎风吒15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2939.75},[2] = {id = 102,val = 1455.5},[3] = {id = 103,val = 8865.24}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 220.49}},RosterAttr = {AtkExt = 3160,DefExt = 1577,HPExt = 9483}},--阎风吒16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3399.23},[2] = {id = 102,val = 1685.24},[3] = {id = 103,val = 10243.68}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 254.96}},RosterAttr = {AtkExt = 4009,DefExt = 2001,HPExt = 12032}},--阎风吒17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3929.95},[2] = {id = 102,val = 1950.6},[3] = {id = 103,val = 11835.86}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 294.73}},RosterAttr = {AtkExt = 4991,DefExt = 2492,HPExt = 14979}},--阎风吒18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4544.23},[2] = {id = 102,val = 2257.16},[3] = {id = 103,val = 13678.68}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 340.83}},RosterAttr = {AtkExt = 6127,DefExt = 3060,HPExt = 18387}},--阎风吒19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5253.72},[2] = {id = 102,val = 2612.48},[3] = {id = 103,val = 15807.15}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 394.02}},RosterAttr = {AtkExt = 7440,DefExt = 3716,HPExt = 22327}}--阎风吒20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701011,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701011,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701011,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701011,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701011,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--阎风吒
	[1101012] = {
		IfEntreVersion = 1,
		Name = "南御夫",
		NickName = "狼子野心",
		NamePic = "ui_dtex_Name_1101012",
		NickNamePic = "ui_dtex_Name2_1101012",
		Tag = {101},
		Type = 1,
		Quality = 3,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301012,[2] = 1302012},
		XLGroup = 1,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010121,[2] = 11010122},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701012,val = 20}},
		DebrisID = 1701012,
		ComposeNum = 20,
		CardFace = "cardface_nyf_1101012",
		Head2 = "head_nyf_1101012",
		HeadBig = "headbig_nyf_1101012",
		Icon = "head_nyf_1101012",
		Painting = "draw_nyf_1101012",
		Cutin = "cutin_nyf_1101012",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102018},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 0},[3] = {id = 103,val = 100}},UpAttr = {[1] = {id = 101,val = 3},[2] = {id = 102,val = 1.5},[3] = {id = 103,val = 9}},RosterAttr = {AtkExt = 7470,DefExt = 3731,HPExt = 22417}},--南御夫1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 72},[2] = {id = 102,val = 21},[3] = {id = 103,val = 256}},UpAttr = {[1] = {id = 101,val = 4},[2] = {id = 102,val = 2},[3] = {id = 103,val = 12}},RosterAttr = {AtkExt = 7510,DefExt = 3751,HPExt = 22537}},--南御夫2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 147},[2] = {id = 102,val = 59},[3] = {id = 103,val = 481}},UpAttr = {[1] = {id = 101,val = 6.03},[2] = {id = 102,val = 3.02},[3] = {id = 103,val = 18.09}},RosterAttr = {AtkExt = 7570,DefExt = 3781,HPExt = 22717}},--南御夫3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 222.3},[2] = {id = 102,val = 97.15},[3] = {id = 103,val = 706.9}},UpAttr = {[1] = {id = 101,val = 8},[2] = {id = 102,val = 4},[3] = {id = 103,val = 24}},RosterAttr = {AtkExt = 7650,DefExt = 3821,HPExt = 22957}},--南御夫4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 322.3},[2] = {id = 102,val = 147.15},[3] = {id = 103,val = 1006.9}},UpAttr = {[1] = {id = 101,val = 10.02},[2] = {id = 102,val = 5.01},[3] = {id = 103,val = 30.06}},RosterAttr = {AtkExt = 7750,DefExt = 3871,HPExt = 23257}},--南御夫5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 447.5},[2] = {id = 102,val = 210.25},[3] = {id = 103,val = 1382.5}},UpAttr = {[1] = {id = 101,val = 12.53},[2] = {id = 102,val = 6.27},[3] = {id = 103,val = 37.59}},RosterAttr = {AtkExt = 7875,DefExt = 3933,HPExt = 23632}},--南御夫6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 603.8},[2] = {id = 102,val = 288.9},[3] = {id = 103,val = 1851.4}},UpAttr = {[1] = {id = 101,val = 15.7},[2] = {id = 102,val = 7.85},[3] = {id = 103,val = 47.1}},RosterAttr = {AtkExt = 8032,DefExt = 4011,HPExt = 24103}},--南御夫7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 799.8},[2] = {id = 102,val = 387.4},[3] = {id = 103,val = 2439.4}},UpAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 10},[3] = {id = 103,val = 60}},RosterAttr = {AtkExt = 8232,DefExt = 4111,HPExt = 24703}},--南御夫8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 924.8},[2] = {id = 102,val = 450.4},[3] = {id = 103,val = 2814.4}},UpAttr = {[1] = {id = 101,val = 23.12},[2] = {id = 102,val = 11.56},[3] = {id = 103,val = 69.36}},RosterAttr = {AtkExt = 8463,DefExt = 4226,HPExt = 25396}},--南御夫9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1069.4},[2] = {id = 102,val = 522.2},[3] = {id = 103,val = 3248.2}},UpAttr = {[1] = {id = 101,val = 26.74},[2] = {id = 102,val = 13.37},[3] = {id = 103,val = 80.22}},RosterAttr = {AtkExt = 8730,DefExt = 4359,HPExt = 26198}},--南御夫10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1236.1},[2] = {id = 102,val = 606.05},[3] = {id = 103,val = 3748.3}},UpAttr = {[1] = {id = 101,val = 30.9},[2] = {id = 102,val = 15.45},[3] = {id = 103,val = 92.7}},RosterAttr = {AtkExt = 9039,DefExt = 4513,HPExt = 27125}},--南御夫11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1429.6},[2] = {id = 102,val = 702.3},[3] = {id = 103,val = 4328.8}},UpAttr = {[1] = {id = 101,val = 35.74},[2] = {id = 102,val = 17.87},[3] = {id = 103,val = 107.22}},RosterAttr = {AtkExt = 357,DefExt = 178,HPExt = 1072}},--南御夫12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1653.3},[2] = {id = 102,val = 813.65},[3] = {id = 103,val = 4999.9}},UpAttr = {[1] = {id = 101,val = 41.33},[2] = {id = 102,val = 20.67},[3] = {id = 103,val = 123.99}},RosterAttr = {AtkExt = 770,DefExt = 384,HPExt = 2311}},--南御夫13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 1911.95},[2] = {id = 102,val = 942.98},[3] = {id = 103,val = 5775.85}},UpAttr = {[1] = {id = 101,val = 47.8},[2] = {id = 102,val = 23.9},[3] = {id = 103,val = 143.4}},RosterAttr = {AtkExt = 1248,DefExt = 623,HPExt = 3745}},--南御夫14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2210.95},[2] = {id = 102,val = 1092.48},[3] = {id = 103,val = 6672.85}},UpAttr = {[1] = {id = 101,val = 55.27},[2] = {id = 102,val = 27.64},[3] = {id = 103,val = 165.81}},RosterAttr = {AtkExt = 1800,DefExt = 899,HPExt = 5403}},--南御夫15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2556.3},[2] = {id = 102,val = 1265.65},[3] = {id = 103,val = 7708.9}},UpAttr = {[1] = {id = 101,val = 63.91},[2] = {id = 102,val = 31.96},[3] = {id = 103,val = 191.73}},RosterAttr = {AtkExt = 2439,DefExt = 1218,HPExt = 7320}},--南御夫16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 2955.85},[2] = {id = 102,val = 1465.43},[3] = {id = 103,val = 8907.55}},UpAttr = {[1] = {id = 101,val = 73.9},[2] = {id = 102,val = 36.95},[3] = {id = 103,val = 221.7}},RosterAttr = {AtkExt = 3178,DefExt = 1587,HPExt = 9537}},--南御夫17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3417.35},[2] = {id = 102,val = 1696.18},[3] = {id = 103,val = 10292.05}},UpAttr = {[1] = {id = 101,val = 85.43},[2] = {id = 102,val = 42.72},[3] = {id = 103,val = 256.29}},RosterAttr = {AtkExt = 4032,DefExt = 2014,HPExt = 12099}},--南御夫18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 3951.5},[2] = {id = 102,val = 1962.75},[3] = {id = 103,val = 11894.5}},UpAttr = {[1] = {id = 101,val = 98.79},[2] = {id = 102,val = 49.4},[3] = {id = 103,val = 296.37}},RosterAttr = {AtkExt = 5019,DefExt = 2508,HPExt = 15062}},--南御夫19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 4568.45},[2] = {id = 102,val = 2271.73},[3] = {id = 103,val = 13745.35}},UpAttr = {[1] = {id = 101,val = 114.21},[2] = {id = 102,val = 57.11},[3] = {id = 103,val = 342.63}},RosterAttr = {AtkExt = 6161,DefExt = 3079,HPExt = 18488}}--南御夫20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701012,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701012,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701012,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701012,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701012,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--南御夫
	[1101013] = {
		IfEntreVersion = 1,
		Name = "吉拉",
		NickName = "第五骑士",
		NamePic = "ui_dtex_Name_1101013",
		NickNamePic = "ui_dtex_Name2_1101013",
		Tag = {101},
		Type = 1,
		Quality = 2,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301013,[2] = 1302013},
		XLGroup = 1,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010131,[2] = 11010132},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701013,val = 20}},
		DebrisID = 1701013,
		ComposeNum = 20,
		CardFace = "cardface_jl_1101013",
		Head2 = "head_jl_1101013",
		HeadBig = "headbig_jl_1101013",
		Icon = "head_jl_1101013",
		Painting = "draw_jl_1101013",
		Cutin = "cutin_jl_1101013",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102019},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 0},[3] = {id = 103,val = 100}},UpAttr = {[1] = {id = 101,val = 3},[2] = {id = 102,val = 1.5},[3] = {id = 103,val = 9}},RosterAttr = {AtkExt = 6191,DefExt = 3094,HPExt = 18578}},--吉拉1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 72},[2] = {id = 102,val = 21},[3] = {id = 103,val = 256}},UpAttr = {[1] = {id = 101,val = 4},[2] = {id = 102,val = 2},[3] = {id = 103,val = 12}},RosterAttr = {AtkExt = 6231,DefExt = 3114,HPExt = 18698}},--吉拉2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 147},[2] = {id = 102,val = 59},[3] = {id = 103,val = 481}},UpAttr = {[1] = {id = 101,val = 6.03},[2] = {id = 102,val = 3.02},[3] = {id = 103,val = 18.09}},RosterAttr = {AtkExt = 6291,DefExt = 3144,HPExt = 18878}},--吉拉3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 222.3},[2] = {id = 102,val = 97.15},[3] = {id = 103,val = 706.9}},UpAttr = {[1] = {id = 101,val = 8},[2] = {id = 102,val = 4},[3] = {id = 103,val = 24}},RosterAttr = {AtkExt = 6371,DefExt = 3184,HPExt = 19118}},--吉拉4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 322.3},[2] = {id = 102,val = 147.15},[3] = {id = 103,val = 1006.9}},UpAttr = {[1] = {id = 101,val = 10.02},[2] = {id = 102,val = 5.01},[3] = {id = 103,val = 30.06}},RosterAttr = {AtkExt = 6471,DefExt = 3234,HPExt = 19418}},--吉拉5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 447.5},[2] = {id = 102,val = 210.25},[3] = {id = 103,val = 1382.5}},UpAttr = {[1] = {id = 101,val = 12.53},[2] = {id = 102,val = 6.27},[3] = {id = 103,val = 37.59}},RosterAttr = {AtkExt = 6596,DefExt = 3296,HPExt = 19793}},--吉拉6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 603.8},[2] = {id = 102,val = 288.9},[3] = {id = 103,val = 1851.4}},UpAttr = {[1] = {id = 101,val = 15.7},[2] = {id = 102,val = 7.85},[3] = {id = 103,val = 47.1}},RosterAttr = {AtkExt = 6753,DefExt = 3374,HPExt = 20264}},--吉拉7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 799.8},[2] = {id = 102,val = 387.4},[3] = {id = 103,val = 2439.4}},UpAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 10},[3] = {id = 103,val = 60}},RosterAttr = {AtkExt = 6953,DefExt = 3474,HPExt = 20864}},--吉拉8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 924.8},[2] = {id = 102,val = 450.4},[3] = {id = 103,val = 2814.4}},UpAttr = {[1] = {id = 101,val = 23.12},[2] = {id = 102,val = 11.56},[3] = {id = 103,val = 69.36}},RosterAttr = {AtkExt = 7184,DefExt = 3589,HPExt = 21557}},--吉拉9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1069.4},[2] = {id = 102,val = 522.2},[3] = {id = 103,val = 3248.2}},UpAttr = {[1] = {id = 101,val = 26.74},[2] = {id = 102,val = 13.37},[3] = {id = 103,val = 80.22}},RosterAttr = {AtkExt = 7451,DefExt = 3722,HPExt = 22359}},--吉拉10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1236.1},[2] = {id = 102,val = 606.05},[3] = {id = 103,val = 3748.3}},UpAttr = {[1] = {id = 101,val = 30.9},[2] = {id = 102,val = 15.45},[3] = {id = 103,val = 92.7}},RosterAttr = {AtkExt = 7760,DefExt = 3876,HPExt = 23286}},--吉拉11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1429.6},[2] = {id = 102,val = 702.3},[3] = {id = 103,val = 4328.8}},UpAttr = {[1] = {id = 101,val = 35.74},[2] = {id = 102,val = 17.87},[3] = {id = 103,val = 107.22}},RosterAttr = {AtkExt = 8117,DefExt = 4054,HPExt = 24358}},--吉拉12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1653.3},[2] = {id = 102,val = 813.65},[3] = {id = 103,val = 4999.9}},UpAttr = {[1] = {id = 101,val = 41.33},[2] = {id = 102,val = 20.67},[3] = {id = 103,val = 123.99}},RosterAttr = {AtkExt = 413,DefExt = 206,HPExt = 1239}},--吉拉13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 1911.95},[2] = {id = 102,val = 942.98},[3] = {id = 103,val = 5775.85}},UpAttr = {[1] = {id = 101,val = 47.8},[2] = {id = 102,val = 23.9},[3] = {id = 103,val = 143.4}},RosterAttr = {AtkExt = 891,DefExt = 445,HPExt = 2673}},--吉拉14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2210.95},[2] = {id = 102,val = 1092.48},[3] = {id = 103,val = 6672.85}},UpAttr = {[1] = {id = 101,val = 55.27},[2] = {id = 102,val = 27.64},[3] = {id = 103,val = 165.81}},RosterAttr = {AtkExt = 1443,DefExt = 721,HPExt = 4331}},--吉拉15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2556.3},[2] = {id = 102,val = 1265.65},[3] = {id = 103,val = 7708.9}},UpAttr = {[1] = {id = 101,val = 63.91},[2] = {id = 102,val = 31.96},[3] = {id = 103,val = 191.73}},RosterAttr = {AtkExt = 2082,DefExt = 1040,HPExt = 6248}},--吉拉16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 2955.85},[2] = {id = 102,val = 1465.43},[3] = {id = 103,val = 8907.55}},UpAttr = {[1] = {id = 101,val = 73.9},[2] = {id = 102,val = 36.95},[3] = {id = 103,val = 221.7}},RosterAttr = {AtkExt = 2821,DefExt = 1409,HPExt = 8465}},--吉拉17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3417.35},[2] = {id = 102,val = 1696.18},[3] = {id = 103,val = 10292.05}},UpAttr = {[1] = {id = 101,val = 85.43},[2] = {id = 102,val = 42.72},[3] = {id = 103,val = 256.29}},RosterAttr = {AtkExt = 3675,DefExt = 1836,HPExt = 11027}},--吉拉18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 3951.5},[2] = {id = 102,val = 1962.75},[3] = {id = 103,val = 11894.5}},UpAttr = {[1] = {id = 101,val = 98.79},[2] = {id = 102,val = 49.4},[3] = {id = 103,val = 296.37}},RosterAttr = {AtkExt = 4662,DefExt = 2330,HPExt = 13990}},--吉拉19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 4568.45},[2] = {id = 102,val = 2271.73},[3] = {id = 103,val = 13745.35}},UpAttr = {[1] = {id = 101,val = 114.21},[2] = {id = 102,val = 57.11},[3] = {id = 103,val = 342.63}},RosterAttr = {AtkExt = 5804,DefExt = 2901,HPExt = 17416}}--吉拉20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1701013,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1701013,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1701013,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1701013,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1701013,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--吉拉
	[1101014] = {
		IfEntreVersion = 1,
		Name = "吕仙宫",
		NickName = "陷阵统领",
		NamePic = "ui_dtex_Name_1101014",
		NickNamePic = "ui_dtex_Name2_1101014",
		Tag = {101},
		Type = 1,
		Quality = 3,
		CrystalType = 0,
		Sex = 1,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301014,[2] = 1302014},
		XLGroup = 2,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010141,[2] = 11010142},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701014,val = 40}},
		DebrisID = 1701014,
		ComposeNum = 40,
		CardFace = "cardface_lxg_1101014",
		Head2 = "head_lxg_1101014",
		HeadBig = "headbig_lxg_1101014",
		Icon = "head_lxg_1101014",
		Painting = "draw_lxg_1101014",
		Cutin = "cutin_lxg_1101014",
		GachaDialogue = "gacha_lxg_1101014",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 337,
		ExclusiveGuard = {[1] = 1102020},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 0},[3] = {id = 103,val = 115}},UpAttr = {[1] = {id = 101,val = 3.45},[2] = {id = 102,val = 1.73},[3] = {id = 103,val = 10.35}},RosterAttr = {AtkExt = 5838,DefExt = 2918,HPExt = 17519}},--吕仙宫1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 82.8},[2] = {id = 102,val = 24.15},[3] = {id = 103,val = 294.4}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 13.8}},RosterAttr = {AtkExt = 5884,DefExt = 2941,HPExt = 17657}},--吕仙宫2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 169.05},[2] = {id = 102,val = 67.85},[3] = {id = 103,val = 553.15}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 20.8}},RosterAttr = {AtkExt = 5953,DefExt = 2975,HPExt = 17865}},--吕仙宫3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 255.65},[2] = {id = 102,val = 111.72},[3] = {id = 103,val = 812.94}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 27.6}},RosterAttr = {AtkExt = 6045,DefExt = 3021,HPExt = 18141}},--吕仙宫4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 370.65},[2] = {id = 102,val = 169.22},[3] = {id = 103,val = 1157.94}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 34.57}},RosterAttr = {AtkExt = 6160,DefExt = 3078,HPExt = 18486}},--吕仙宫5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 514.63},[2] = {id = 102,val = 241.79},[3] = {id = 103,val = 1589.88}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 43.23}},RosterAttr = {AtkExt = 6304,DefExt = 3150,HPExt = 18918}},--吕仙宫6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 694.37},[2] = {id = 102,val = 332.24},[3] = {id = 103,val = 2129.11}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 54.17}},RosterAttr = {AtkExt = 6484,DefExt = 3240,HPExt = 19459}},--吕仙宫7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 919.77},[2] = {id = 102,val = 445.51},[3] = {id = 103,val = 2805.31}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 69}},RosterAttr = {AtkExt = 6714,DefExt = 3355,HPExt = 20149}},--吕仙宫8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1063.52},[2] = {id = 102,val = 517.96},[3] = {id = 103,val = 3236.56}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 79.76}},RosterAttr = {AtkExt = 6979,DefExt = 3487,HPExt = 20946}},--吕仙宫9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1229.81},[2] = {id = 102,val = 600.53},[3] = {id = 103,val = 3735.43}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 92.25}},RosterAttr = {AtkExt = 7286,DefExt = 3640,HPExt = 21868}},--吕仙宫10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1421.52},[2] = {id = 102,val = 696.96},[3] = {id = 103,val = 4310.55}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 106.61}},RosterAttr = {AtkExt = 7641,DefExt = 3817,HPExt = 22934}},--吕仙宫11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1644.04},[2] = {id = 102,val = 807.65},[3] = {id = 103,val = 4978.12}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 123.3}},RosterAttr = {AtkExt = 8052,DefExt = 4022,HPExt = 24167}},--吕仙宫12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1901.3},[2] = {id = 102,val = 935.7},[3] = {id = 103,val = 5749.89}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 142.59}},RosterAttr = {AtkExt = 8527,DefExt = 4259,HPExt = 25592}},--吕仙宫13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2198.74},[2] = {id = 102,val = 1084.42},[3] = {id = 103,val = 6642.23}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 164.91}},RosterAttr = {AtkExt = 549,DefExt = 274,HPExt = 1649}},--吕仙宫14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2542.59},[2] = {id = 102,val = 1256.35},[3] = {id = 103,val = 7673.78}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 190.68}},RosterAttr = {AtkExt = 1184,DefExt = 591,HPExt = 3555}},--吕仙宫15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2939.75},[2] = {id = 102,val = 1455.5},[3] = {id = 103,val = 8865.24}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 220.49}},RosterAttr = {AtkExt = 1919,DefExt = 958,HPExt = 5759}},--吕仙宫16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3399.23},[2] = {id = 102,val = 1685.24},[3] = {id = 103,val = 10243.68}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 254.96}},RosterAttr = {AtkExt = 2768,DefExt = 1382,HPExt = 8308}},--吕仙宫17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3929.95},[2] = {id = 102,val = 1950.6},[3] = {id = 103,val = 11835.86}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 294.73}},RosterAttr = {AtkExt = 3750,DefExt = 1873,HPExt = 11255}},--吕仙宫18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4544.23},[2] = {id = 102,val = 2257.16},[3] = {id = 103,val = 13678.68}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 340.83}},RosterAttr = {AtkExt = 4886,DefExt = 2441,HPExt = 14663}},--吕仙宫19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5253.72},[2] = {id = 102,val = 2612.48},[3] = {id = 103,val = 15807.15}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 394.02}},RosterAttr = {AtkExt = 6199,DefExt = 3097,HPExt = 18603}}--吕仙宫20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701014,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701014,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701014,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701014,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701014,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--吕仙宫
	[1101015] = {
		IfEntreVersion = 1,
		Name = "阎巧巧",
		NickName = "踏风守护",
		NamePic = "ui_dtex_Name_1101015",
		NickNamePic = "ui_dtex_Name2_1101015",
		Tag = {101},
		Type = 1,
		Quality = 2,
		CrystalType = 0,
		Sex = 2,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301015,[2] = 1302015},
		XLGroup = 1,
		ZSP = {[1] = 0.2,[2] = 0.2},
		ZSId = {[1] = 11010151,[2] = 11010152},
		ZSBs = {[1] = 5000,[2] = 5000},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1701015,val = 20}},
		DebrisID = 1701015,
		ComposeNum = 20,
		CardFace = "cardface_yqq_1101015",
		Head2 = "head_yqq_1101015",
		HeadBig = "headbig_yqq_1101015",
		Icon = "head_yqq_1101015",
		Painting = "draw_yqq_1101015",
		Cutin = "cutin_yqq_1101015",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 401,
		ExclusiveGuard = {[1] = 1102021},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 0},[3] = {id = 103,val = 115}},UpAttr = {[1] = {id = 101,val = 3.45},[2] = {id = 102,val = 1.73},[3] = {id = 103,val = 10.35}},RosterAttr = {AtkExt = 6233,DefExt = 3114,HPExt = 18706}},--阎巧巧1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 82.8},[2] = {id = 102,val = 24.15},[3] = {id = 103,val = 294.4}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 13.8}},RosterAttr = {AtkExt = 6279,DefExt = 3137,HPExt = 18844}},--阎巧巧2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 169.05},[2] = {id = 102,val = 67.85},[3] = {id = 103,val = 553.15}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 20.8}},RosterAttr = {AtkExt = 6348,DefExt = 3171,HPExt = 19052}},--阎巧巧3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 255.65},[2] = {id = 102,val = 111.72},[3] = {id = 103,val = 812.94}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 27.6}},RosterAttr = {AtkExt = 6440,DefExt = 3217,HPExt = 19328}},--阎巧巧4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 370.65},[2] = {id = 102,val = 169.22},[3] = {id = 103,val = 1157.94}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 34.57}},RosterAttr = {AtkExt = 6555,DefExt = 3274,HPExt = 19673}},--阎巧巧5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 514.63},[2] = {id = 102,val = 241.79},[3] = {id = 103,val = 1589.88}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 43.23}},RosterAttr = {AtkExt = 6699,DefExt = 3346,HPExt = 20105}},--阎巧巧6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 694.37},[2] = {id = 102,val = 332.24},[3] = {id = 103,val = 2129.11}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 54.17}},RosterAttr = {AtkExt = 6879,DefExt = 3436,HPExt = 20646}},--阎巧巧7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 919.77},[2] = {id = 102,val = 445.51},[3] = {id = 103,val = 2805.31}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 69}},RosterAttr = {AtkExt = 7109,DefExt = 3551,HPExt = 21336}},--阎巧巧8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1063.52},[2] = {id = 102,val = 517.96},[3] = {id = 103,val = 3236.56}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 79.76}},RosterAttr = {AtkExt = 7374,DefExt = 3683,HPExt = 22133}},--阎巧巧9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1229.81},[2] = {id = 102,val = 600.53},[3] = {id = 103,val = 3735.43}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 92.25}},RosterAttr = {AtkExt = 7681,DefExt = 3836,HPExt = 23055}},--阎巧巧10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1421.52},[2] = {id = 102,val = 696.96},[3] = {id = 103,val = 4310.55}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 106.61}},RosterAttr = {AtkExt = 8036,DefExt = 4013,HPExt = 24121}},--阎巧巧11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1644.04},[2] = {id = 102,val = 807.65},[3] = {id = 103,val = 4978.12}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 123.3}},RosterAttr = {AtkExt = 8447,DefExt = 4218,HPExt = 25354}},--阎巧巧12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1901.3},[2] = {id = 102,val = 935.7},[3] = {id = 103,val = 5749.89}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 142.59}},RosterAttr = {AtkExt = 8922,DefExt = 4455,HPExt = 26779}},--阎巧巧13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2198.74},[2] = {id = 102,val = 1084.42},[3] = {id = 103,val = 6642.23}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 164.91}},RosterAttr = {AtkExt = 9471,DefExt = 4729,HPExt = 28428}},--阎巧巧14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2542.59},[2] = {id = 102,val = 1256.35},[3] = {id = 103,val = 7673.78}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 190.68}},RosterAttr = {AtkExt = 635,DefExt = 317,HPExt = 1906}},--阎巧巧15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2939.75},[2] = {id = 102,val = 1455.5},[3] = {id = 103,val = 8865.24}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 220.49}},RosterAttr = {AtkExt = 1370,DefExt = 684,HPExt = 4110}},--阎巧巧16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3399.23},[2] = {id = 102,val = 1685.24},[3] = {id = 103,val = 10243.68}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 254.96}},RosterAttr = {AtkExt = 2219,DefExt = 1108,HPExt = 6659}},--阎巧巧17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3929.95},[2] = {id = 102,val = 1950.6},[3] = {id = 103,val = 11835.86}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 294.73}},RosterAttr = {AtkExt = 3201,DefExt = 1599,HPExt = 9606}},--阎巧巧18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4544.23},[2] = {id = 102,val = 2257.16},[3] = {id = 103,val = 13678.68}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 340.83}},RosterAttr = {AtkExt = 4337,DefExt = 2167,HPExt = 13014}},--阎巧巧19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5253.72},[2] = {id = 102,val = 2612.48},[3] = {id = 103,val = 15807.15}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 394.02}},RosterAttr = {AtkExt = 5650,DefExt = 2823,HPExt = 16954}}--阎巧巧20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1701015,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1701015,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1701015,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1701015,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1701015,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--阎巧巧
	[1101017] = {IfEntreVersion = 0,Name = "诸葛一心",NickName = "暂无昵称的",NamePic = "ui_dtex_Name_1101017",NickNamePic = "ui_dtex_Name2_1101017",Tag = {101},Type = 1,Quality = 4,CrystalType = 0,Sex = 1,SubType = 0,Atk = 0,Def = 0,HP = 0,Crit = 0,CritRate = 1.5,EffectHit = 0,EffectResist = 0,Block = 0,DefIgnor = 0,R = 0,CallCost = 0,CallCD = 5,Skill = {[1] = 1301017,[2] = 1302017},XLGroup = 3,ZSP = {[1] = 0.2,[2] = 0.2},ZSId = {[1] = 11010171,[2] = 11010172},ZSBs = {[1] = 5000,[2] = 5000},SkillBlankAmount = 0,RpCvt = {[1] = {id = 1701017,val = 80}},DebrisID = 1701017,ComposeNum = 80,CardFace = "cardface_zgyx_1101017",Head2 = "head_zgyx_1101017",HeadBig = "headbig_zgyx_1101017",Icon = "head_zgyx_1101017",Painting = "draw_zgyx_1101017",Cutin = "cutin_zgyx_1101017",PaintingPos = {x = 0,y = 0},Describe = "不是BUG，还没填表",GuidDesc = "策略描述策划还没配好",Relation = "不是BUG，还没填表",mask = 337},--诸葛一心
	[1101020] = {IfEntreVersion = 0,Name = "姬烟华",NickName = "暂无昵称的",NamePic = "ui_dtex_Name_1101020",NickNamePic = "ui_dtex_Name2_1101020",Tag = {101},Type = 1,Quality = 4,CrystalType = 0,Sex = 1,SubType = 0,Atk = 0,Def = 0,HP = 0,Crit = 0,CritRate = 1.5,EffectHit = 0,EffectResist = 0,Block = 0,DefIgnor = 0,R = 0,CallCost = 0,CallCD = 5,Skill = {[1] = 1301020,[2] = 1302020},XLGroup = 3,ZSP = {[1] = 0.2,[2] = 0.2},ZSId = {[1] = 11010201,[2] = 11010202},ZSBs = {[1] = 5000,[2] = 5000},SkillBlankAmount = 0,RpCvt = {[1] = {id = 1701020,val = 80}},DebrisID = 1701020,ComposeNum = 80,CardFace = "cardface_jyh_1101020",Head2 = "head_jyh_1101020",HeadBig = "headbig_jyh_1101020",Icon = "head_jyh_1101020",Painting = "draw_jyh_1101020",Cutin = "cutin_jyh_1101020",PaintingPos = {x = 0,y = 0},Describe = "不是BUG，还没填表",GuidDesc = "策略描述策划还没配好",Relation = "不是BUG，还没填表",mask = 337},--姬烟华
	[1101022] = {IfEntreVersion = 0,Name = "幻",NickName = "暂无昵称的",NamePic = "ui_dtex_Name_1101022",NickNamePic = "ui_dtex_Name2_1101022",Tag = {101},Type = 1,Quality = 2,CrystalType = 0,Sex = 1,SubType = 0,Atk = 0,Def = 0,HP = 0,Crit = 0,CritRate = 1.5,EffectHit = 0,EffectResist = 0,Block = 0,DefIgnor = 0,R = 0,CallCost = 0,CallCD = 5,Skill = {[1] = 1301022,[2] = 1302022},XLGroup = 1,ZSP = {[1] = 0.2,[2] = 0.2},ZSId = {[1] = 11010221,[2] = 11010222},ZSBs = {[1] = 5000,[2] = 5000},SkillBlankAmount = 0,RpCvt = {[1] = {id = 1701022,val = 20}},DebrisID = 1701022,ComposeNum = 20,CardFace = "cardface_h_1101022",Head2 = "head_h_1101022",HeadBig = "headbig_h_1101022",Icon = "head_h_1101022",Painting = "draw_h_1101022",Cutin = "cutin_h_1101022",PaintingPos = {x = 0,y = 0},Describe = "不是BUG，还没填表",GuidDesc = "策略描述策划还没配好",Relation = "不是BUG，还没填表",mask = 337},--幻
	[1101041] = {
		IfEntreVersion = 1,
		Name = "常服夏玲",
		NickName = "应届生夏玲",
		NamePic = "ui_dtex_Name_1101041",
		NickNamePic = "ui_dtex_Name2_1101041",
		Tag = {101},
		Type = 1,
		Quality = 2,
		CrystalType = 0,
		Sex = 2,
		SubType = 0,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 0,
		CallCD = 5,
		Skill = {[1] = 1301041,[2] = 1302041},
		XLGroup = 1,
		ZSP = {[1] = 0.2,[2] = 0.2},
		SkillBlankAmount = 0,
		RpCvt = {[1] = {id = 1702050,val = 20}},
		DebrisID = 1701041,
		ComposeNum = 20,
		CardFace = "cardface_zdxl_1101003",
		Head2 = "head_zdxl_1101003",
		HeadBig = "headbig_zdxl_1101003",
		Icon = "head_zdxl_1101003",
		Painting = "draw_zdxl_1101003",
		Cutin = "cutin_zdxl_1101003",
		GachaDialogue = "gacha_zdxl_1101003",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 401,
		ExclusiveGuard = {[1] = 1102021},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 0},[3] = {id = 103,val = 115}},UpAttr = {[1] = {id = 101,val = 3.45},[2] = {id = 102,val = 1.73},[3] = {id = 103,val = 10.35}},RosterAttr = {AtkExt = 5684,DefExt = 2840,HPExt = 17057}},--常服夏玲1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 82.8},[2] = {id = 102,val = 24.15},[3] = {id = 103,val = 294.4}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 13.8}},RosterAttr = {AtkExt = 5730,DefExt = 2863,HPExt = 17195}},--常服夏玲2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 169.05},[2] = {id = 102,val = 67.85},[3] = {id = 103,val = 553.15}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 20.8}},RosterAttr = {AtkExt = 5799,DefExt = 2897,HPExt = 17403}},--常服夏玲3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 255.65},[2] = {id = 102,val = 111.72},[3] = {id = 103,val = 812.94}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 27.6}},RosterAttr = {AtkExt = 5891,DefExt = 2943,HPExt = 17679}},--常服夏玲4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 370.65},[2] = {id = 102,val = 169.22},[3] = {id = 103,val = 1157.94}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 34.57}},RosterAttr = {AtkExt = 6006,DefExt = 3000,HPExt = 18024}},--常服夏玲5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 514.63},[2] = {id = 102,val = 241.79},[3] = {id = 103,val = 1589.88}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 43.23}},RosterAttr = {AtkExt = 6150,DefExt = 3072,HPExt = 18456}},--常服夏玲6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 694.37},[2] = {id = 102,val = 332.24},[3] = {id = 103,val = 2129.11}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 54.17}},RosterAttr = {AtkExt = 6330,DefExt = 3162,HPExt = 18997}},--常服夏玲7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 919.77},[2] = {id = 102,val = 445.51},[3] = {id = 103,val = 2805.31}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 69}},RosterAttr = {AtkExt = 6560,DefExt = 3277,HPExt = 19687}},--常服夏玲8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1063.52},[2] = {id = 102,val = 517.96},[3] = {id = 103,val = 3236.56}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 79.76}},RosterAttr = {AtkExt = 6825,DefExt = 3409,HPExt = 20484}},--常服夏玲9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1229.81},[2] = {id = 102,val = 600.53},[3] = {id = 103,val = 3735.43}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 92.25}},RosterAttr = {AtkExt = 7132,DefExt = 3562,HPExt = 21406}},--常服夏玲10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1421.52},[2] = {id = 102,val = 696.96},[3] = {id = 103,val = 4310.55}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 106.61}},RosterAttr = {AtkExt = 7487,DefExt = 3739,HPExt = 22472}},--常服夏玲11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1644.04},[2] = {id = 102,val = 807.65},[3] = {id = 103,val = 4978.12}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 123.3}},RosterAttr = {AtkExt = 7898,DefExt = 3944,HPExt = 23705}},--常服夏玲12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1901.3},[2] = {id = 102,val = 935.7},[3] = {id = 103,val = 5749.89}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 142.59}},RosterAttr = {AtkExt = 8373,DefExt = 4181,HPExt = 25130}},--常服夏玲13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2198.74},[2] = {id = 102,val = 1084.42},[3] = {id = 103,val = 6642.23}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 164.91}},RosterAttr = {AtkExt = 8922,DefExt = 4455,HPExt = 26779}},--常服夏玲14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2542.59},[2] = {id = 102,val = 1256.35},[3] = {id = 103,val = 7673.78}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 190.68}},RosterAttr = {AtkExt = 9557,DefExt = 4772,HPExt = 28685}},--常服夏玲15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2939.75},[2] = {id = 102,val = 1455.5},[3] = {id = 103,val = 8865.24}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 220.49}},RosterAttr = {AtkExt = 10292,DefExt = 5139,HPExt = 30889}},--常服夏玲16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3399.23},[2] = {id = 102,val = 1685.24},[3] = {id = 103,val = 10243.68}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 254.96}},RosterAttr = {AtkExt = 11141,DefExt = 5563,HPExt = 33438}},--常服夏玲17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3929.95},[2] = {id = 102,val = 1950.6},[3] = {id = 103,val = 11835.86}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 294.73}},RosterAttr = {AtkExt = 12123,DefExt = 6054,HPExt = 36385}},--常服夏玲18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4544.23},[2] = {id = 102,val = 2257.16},[3] = {id = 103,val = 13678.68}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 340.83}},RosterAttr = {AtkExt = 13259,DefExt = 6622,HPExt = 39793}},--常服夏玲19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5253.72},[2] = {id = 102,val = 2612.48},[3] = {id = 103,val = 15807.15}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 394.02}},RosterAttr = {AtkExt = 14572,DefExt = 7278,HPExt = 43733}}--常服夏玲20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702050,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702050,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702050,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702050,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702050,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--常服夏铃
	[1101101] = {IfEntreVersion = 0,Name = "孟城",NickName = "路人甲（男）",NamePic = "ui_dtex_Name_1101101",NickNamePic = "ui_dtex_Name2_1101101",Tag = {105},Type = 1,Quality = 3,CrystalType = 0,Sex = 2,SubType = 0,Atk = 0,Def = 0,HP = 0,Crit = 0,CritRate = 1.5,EffectHit = 0,EffectResist = 0,Block = 0,DefIgnor = 0,R = 0,CallCost = 0,CallCD = 5,Skill = {[1] = 1301003,[2] = 1302003},SkillBlankAmount = 0,DebrisID = 1701003,ComposeNum = 30,CardFace = "cardface_zdxl_1101003",Head2 = "head_zdxl_1101003",HeadBig = "headbig_zdxl_1101003",Icon = "head_zdxl_1101003",Painting = "draw_zdxl_1101003",Cutin = "cutin_zdxl_1101003",GachaDialogue = "gacha_zdxl_1101003",PaintingPos = {x = 23.8,y = -16.91},Describe = "不是BUG，还没填表",GuidDesc = "策略描述策划还没配好",Relation = "不是BUG，还没填表",mask = 401},--填充寄灵人1
	[1101102] = {IfEntreVersion = 0,Name = "姜璇",NickName = "路人乙（女）",NamePic = "ui_dtex_Name_1101102",NickNamePic = "ui_dtex_Name2_1101102",Tag = {105},Type = 1,Quality = 3,CrystalType = 0,Sex = 2,SubType = 0,Atk = 0,Def = 0,HP = 0,Crit = 0,CritRate = 1.5,EffectHit = 0,EffectResist = 0,Block = 0,DefIgnor = 0,R = 0,CallCost = 0,CallCD = 5,Skill = {[1] = 1301003,[2] = 1302003},SkillBlankAmount = 0,DebrisID = 1701003,ComposeNum = 30,CardFace = "cardface_zdxl_1101003",Head2 = "head_zdxl_1101003",HeadBig = "headbig_zdxl_1101003",Icon = "head_zdxl_1101003",Painting = "draw_zdxl_1101003",Cutin = "cutin_zdxl_1101003",GachaDialogue = "gacha_zdxl_1101003",PaintingPos = {x = 23.8,y = -16.91},Describe = "不是BUG，还没填表",GuidDesc = "策略描述策划还没配好",Relation = "不是BUG，还没填表",mask = 401},--填充寄灵人2
	[1101103] = {IfEntreVersion = 0,Name = "鱼舒兰",NickName = "路人丙（女）",NamePic = "ui_dtex_Name_1101103",NickNamePic = "ui_dtex_Name2_1101103",Tag = {105},Type = 1,Quality = 3,CrystalType = 0,Sex = 2,SubType = 0,Atk = 0,Def = 0,HP = 0,Crit = 0,CritRate = 1.5,EffectHit = 0,EffectResist = 0,Block = 0,DefIgnor = 0,R = 0,CallCost = 0,CallCD = 5,Skill = {[1] = 1301003,[2] = 1302003},SkillBlankAmount = 0,DebrisID = 1701003,ComposeNum = 30,CardFace = "cardface_zdxl_1101003",Head2 = "head_zdxl_1101003",HeadBig = "headbig_zdxl_1101003",Icon = "head_zdxl_1101003",Painting = "draw_zdxl_1101003",Cutin = "cutin_zdxl_1101003",GachaDialogue = "gacha_zdxl_1101003",PaintingPos = {x = 23.8,y = -16.91},Describe = "不是BUG，还没填表",GuidDesc = "策略描述策划还没配好",Relation = "不是BUG，还没填表",mask = 401},--填充寄灵人3
	[1101104] = {IfEntreVersion = 0,Name = "石文星",NickName = "路人丁（男）",NamePic = "ui_dtex_Name_1101104",NickNamePic = "ui_dtex_Name2_1101104",Tag = {105},Type = 1,Quality = 3,CrystalType = 0,Sex = 2,SubType = 0,Atk = 0,Def = 0,HP = 0,Crit = 0,CritRate = 1.5,EffectHit = 0,EffectResist = 0,Block = 0,DefIgnor = 0,R = 0,CallCost = 0,CallCD = 5,Skill = {[1] = 1301003,[2] = 1302003},SkillBlankAmount = 0,DebrisID = 1701003,ComposeNum = 30,CardFace = "cardface_zdxl_1101003",Head2 = "head_zdxl_1101003",HeadBig = "headbig_zdxl_1101003",Icon = "head_zdxl_1101003",Painting = "draw_zdxl_1101003",Cutin = "cutin_zdxl_1101003",GachaDialogue = "gacha_zdxl_1101003",PaintingPos = {x = 23.8,y = -16.91},Describe = "不是BUG，还没填表",GuidDesc = "策略描述策划还没配好",Relation = "不是BUG，还没填表",mask = 401},--填充寄灵人4
	[1101105] = {IfEntreVersion = 0,Name = "左雅",NickName = "路人戊（女）",NamePic = "ui_dtex_Name_1101105",NickNamePic = "ui_dtex_Name2_1101105",Tag = {105},Type = 1,Quality = 3,CrystalType = 0,Sex = 2,SubType = 0,Atk = 0,Def = 0,HP = 0,Crit = 0,CritRate = 1.5,EffectHit = 0,EffectResist = 0,Block = 0,DefIgnor = 0,R = 0,CallCost = 0,CallCD = 5,Skill = {[1] = 1301003,[2] = 1302003},SkillBlankAmount = 0,DebrisID = 1701003,ComposeNum = 30,CardFace = "cardface_zdxl_1101003",Head2 = "head_zdxl_1101003",HeadBig = "headbig_zdxl_1101003",Icon = "head_zdxl_1101003",Painting = "draw_zdxl_1101003",Cutin = "cutin_zdxl_1101003",GachaDialogue = "gacha_zdxl_1101003",PaintingPos = {x = 23.8,y = -16.91},Describe = "不是BUG，还没填表",GuidDesc = "策略描述策划还没配好",Relation = "不是BUG，还没填表",mask = 401},--填充寄灵人5
	[1101106] = {IfEntreVersion = 0,Name = "丘白",NickName = "路人己（男）",NamePic = "ui_dtex_Name_1101106",NickNamePic = "ui_dtex_Name2_1101106",Tag = {105},Type = 1,Quality = 3,CrystalType = 0,Sex = 2,SubType = 0,Atk = 0,Def = 0,HP = 0,Crit = 0,CritRate = 1.5,EffectHit = 0,EffectResist = 0,Block = 0,DefIgnor = 0,R = 0,CallCost = 0,CallCD = 5,Skill = {[1] = 1301003,[2] = 1302003},SkillBlankAmount = 0,DebrisID = 1701003,ComposeNum = 30,CardFace = "cardface_zdxl_1101003",Head2 = "head_zdxl_1101003",HeadBig = "headbig_zdxl_1101003",Icon = "head_zdxl_1101003",Painting = "draw_zdxl_1101003",Cutin = "cutin_zdxl_1101003",GachaDialogue = "gacha_zdxl_1101003",PaintingPos = {x = 23.8,y = -16.91},Describe = "不是BUG，还没填表",GuidDesc = "策略描述策划还没配好",Relation = "不是BUG，还没填表",mask = 401},--填充寄灵人6
	[1102001] = {
		IfEntreVersion = 1,
		Name = "关羽",
		NickName = "武圣",
		NamePic = "ui_dtex_Name_1102001",
		NickNamePic = "ui_dtex_Name2_1102001",
		Tag = {103},
		Type = 2,
		Quality = 5,
		CrystalType = 3,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303001},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702001,val = 80}},
		DebrisID = 1702001,
		ComposeNum = 80,
		CardFace = "cardface_gy_1102001",
		Head2 = "head_gy_1102001",
		HeadBig = "headbig_gy_1102001",
		Icon = "head_gy_1102001",
		Painting = "draw_gy_1102001",
		Cutin = "cutin_gy_1102001",
		GachaDialogue = "gacha_gy_1102001",
		PaintingPos = {x = -172.3,y = -15.7},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 616,
		InitSkill = 2002,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 105},[2] = {id = 102,val = 30},[3] = {id = 103,val = 225}},UpAttr = {[1] = {id = 101,val = 3.75},[2] = {id = 102,val = 1.88},[3] = {id = 103,val = 16.5}},RosterAttr = {AtkExt = 14609,DefExt = 7296,HPExt = 43898}},--关羽1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 171},[2] = {id = 102,val = 56.25},[3] = {id = 103,val = 577.5}},UpAttr = {[1] = {id = 101,val = 6},[2] = {id = 102,val = 3},[3] = {id = 103,val = 27}},RosterAttr = {AtkExt = 14669,DefExt = 7326,HPExt = 44168},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--关羽2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 295.5},[2] = {id = 102,val = 117.75},[3] = {id = 103,val = 1293}},UpAttr = {[1] = {id = 101,val = 9.05},[2] = {id = 102,val = 4.52},[3] = {id = 103,val = 40.5}},RosterAttr = {AtkExt = 14759,DefExt = 7371,HPExt = 44573},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--关羽3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 415.95},[2] = {id = 102,val = 177.98},[3] = {id = 103,val = 1968}},UpAttr = {[1] = {id = 101,val = 12},[2] = {id = 102,val = 6},[3] = {id = 103,val = 54}},RosterAttr = {AtkExt = 14879,DefExt = 7431,HPExt = 45113},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 65}}},--关羽4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 573.45},[2] = {id = 102,val = 257.48},[3] = {id = 103,val = 2845.5}},UpAttr = {[1] = {id = 101,val = 15.03},[2] = {id = 102,val = 7.52},[3] = {id = 103,val = 67.5}},RosterAttr = {AtkExt = 15029,DefExt = 7506,HPExt = 45788},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603005,val = 85}}},--关羽5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 770.25},[2] = {id = 102,val = 356.63},[3] = {id = 103,val = 3939}},UpAttr = {[1] = {id = 101,val = 18.8},[2] = {id = 102,val = 9.4},[3] = {id = 103,val = 84}},RosterAttr = {AtkExt = 15217,DefExt = 7600,HPExt = 46628},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603005,val = 110}}},--关羽6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 1016.7},[2] = {id = 102,val = 480.6},[3] = {id = 103,val = 5305.5}},UpAttr = {[1] = {id = 101,val = 23.55},[2] = {id = 102,val = 11.78},[3] = {id = 103,val = 105}},RosterAttr = {AtkExt = 15452,DefExt = 7717,HPExt = 47678},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603005,val = 130}}},--关羽7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1327.2},[2] = {id = 102,val = 635.85},[3] = {id = 103,val = 7030.5}},UpAttr = {[1] = {id = 101,val = 30},[2] = {id = 102,val = 15},[3] = {id = 103,val = 135}},RosterAttr = {AtkExt = 15752,DefExt = 7867,HPExt = 49028},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 55}}},--关羽8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1520.7},[2] = {id = 102,val = 731.85},[3] = {id = 103,val = 8097}},UpAttr = {[1] = {id = 101,val = 34.68},[2] = {id = 102,val = 17.34},[3] = {id = 103,val = 156}},RosterAttr = {AtkExt = 16098,DefExt = 8040,HPExt = 50588},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603008,val = 95}}},--关羽9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1743.6},[2] = {id = 102,val = 844.05},[3] = {id = 103,val = 9322.5}},UpAttr = {[1] = {id = 101,val = 40.11},[2] = {id = 102,val = 20.06},[3] = {id = 103,val = 180}},RosterAttr = {AtkExt = 16499,DefExt = 8240,HPExt = 52388},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603008,val = 145}}},--关羽10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 2002.65},[2] = {id = 102,val = 972.83},[3] = {id = 103,val = 10749}},UpAttr = {[1] = {id = 101,val = 46.35},[2] = {id = 102,val = 23.18},[3] = {id = 103,val = 208.5}},RosterAttr = {AtkExt = 16962,DefExt = 8471,HPExt = 54473},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603008,val = 185}}},--关羽11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 2301.9},[2] = {id = 102,val = 1121.7},[3] = {id = 103,val = 12399}},UpAttr = {[1] = {id = 101,val = 53.61},[2] = {id = 102,val = 26.81},[3] = {id = 103,val = 240}},RosterAttr = {AtkExt = 17498,DefExt = 8739,HPExt = 56873},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603008,val = 225}}},--关羽12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2647.95},[2] = {id = 102,val = 1294.73},[3] = {id = 103,val = 14301}},UpAttr = {[1] = {id = 101,val = 62},[2] = {id = 102,val = 31},[3] = {id = 103,val = 277.5}},RosterAttr = {AtkExt = 18118,DefExt = 9049,HPExt = 59648},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603008,val = 265}}},--关羽13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 3047.93},[2] = {id = 102,val = 1494.71},[3] = {id = 103,val = 16498.5}},UpAttr = {[1] = {id = 101,val = 71.7},[2] = {id = 102,val = 35.85},[3] = {id = 103,val = 322.5}},RosterAttr = {AtkExt = 18835,DefExt = 9407,HPExt = 62873},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603011,val = 45}}},--关羽14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 3509.93},[2] = {id = 102,val = 1726.46},[3] = {id = 103,val = 19042.5}},UpAttr = {[1] = {id = 101,val = 82.91},[2] = {id = 102,val = 41.45},[3] = {id = 103,val = 372}},RosterAttr = {AtkExt = 19664,DefExt = 9821,HPExt = 66593},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603011,val = 70}}},--关羽15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 4044.45},[2] = {id = 102,val = 1993.73},[3] = {id = 103,val = 21982.5}},UpAttr = {[1] = {id = 101,val = 95.87},[2] = {id = 102,val = 47.93},[3] = {id = 103,val = 430.5}},RosterAttr = {AtkExt = 20622,DefExt = 10300,HPExt = 70898},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 100},[4] = {id = 1603014,val = 25}}},--关羽16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 4661.78},[2] = {id = 102,val = 2302.39},[3] = {id = 103,val = 25377}},UpAttr = {[1] = {id = 101,val = 110.85},[2] = {id = 102,val = 55.43},[3] = {id = 103,val = 498}},RosterAttr = {AtkExt = 21730,DefExt = 10854,HPExt = 75878},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603011,val = 125},[4] = {id = 1603014,val = 35}}},--关羽17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 5376.53},[2] = {id = 102,val = 2659.01},[3] = {id = 103,val = 29311.5}},UpAttr = {[1] = {id = 101,val = 128.15},[2] = {id = 102,val = 64.07},[3] = {id = 103,val = 576}},RosterAttr = {AtkExt = 23011,DefExt = 11494,HPExt = 81638},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603011,val = 155},[4] = {id = 1603014,val = 50}}},--关羽18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 6201.75},[2] = {id = 102,val = 3072.38},[3] = {id = 103,val = 33852}},UpAttr = {[1] = {id = 101,val = 148.19},[2] = {id = 102,val = 74.09},[3] = {id = 103,val = 666}},RosterAttr = {AtkExt = 24492,DefExt = 12234,HPExt = 88298},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603011,val = 180},[4] = {id = 1603014,val = 65}}},--关羽19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 7157.18},[2] = {id = 102,val = 3549.34},[3] = {id = 103,val = 39112.5}},UpAttr = {[1] = {id = 101,val = 171.32},[2] = {id = 102,val = 85.66},[3] = {id = 103,val = 769.5}},RosterAttr = {AtkExt = 26205,DefExt = 13090,HPExt = 95993},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603011,val = 225},[4] = {id = 1603014,val = 75}}}--关羽20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702001,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702001,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702001,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702001,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702001,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--关羽
	[1102002] = {
		IfEntreVersion = 1,
		Name = "许褚",
		NickName = "虎痴",
		NamePic = "ui_dtex_Name_1102002",
		NickNamePic = "ui_dtex_Name2_1102002",
		Tag = {102,106},
		Type = 2,
		Quality = 3,
		CrystalType = 1,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303002},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702002,val = 40}},
		DebrisID = 1702002,
		ComposeNum = 40,
		CardFace = "cardface_xc_1102002",
		Head2 = "head_xc_1102002",
		HeadBig = "headbig_xc_1102002",
		Icon = "head_xc_1102002",
		Painting = "draw_xc_1102002",
		Cutin = "cutin_xc_1102002",
		GachaDialogue = "gacha_xc_1102002",
		PaintingPos = {x = -172.3,y = -15.7},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 610,
		InitSkill = 2003,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 80.5},[2] = {id = 102,val = 23},[3] = {id = 103,val = 172.5}},UpAttr = {[1] = {id = 101,val = 2.88},[2] = {id = 102,val = 1.44},[3] = {id = 103,val = 12.65}},RosterAttr = {AtkExt = 26233,DefExt = 13104,HPExt = 96119}},--许褚1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 131.1},[2] = {id = 102,val = 43.13},[3] = {id = 103,val = 442.75}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 20.7}},RosterAttr = {AtkExt = 26279,DefExt = 13127,HPExt = 96326},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--许褚2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 226.55},[2] = {id = 102,val = 90.28},[3] = {id = 103,val = 991.3}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 31.05}},RosterAttr = {AtkExt = 26348,DefExt = 13161,HPExt = 96636},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--许褚3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 318.9},[2] = {id = 102,val = 136.45},[3] = {id = 103,val = 1508.8}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 41.4}},RosterAttr = {AtkExt = 26440,DefExt = 13207,HPExt = 97050},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 65}}},--许褚4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 439.65},[2] = {id = 102,val = 197.4},[3] = {id = 103,val = 2181.55}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 26555,DefExt = 13264,HPExt = 97567},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603005,val = 85}}},--许褚5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 590.53},[2] = {id = 102,val = 273.41},[3] = {id = 103,val = 3019.9}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 64.4}},RosterAttr = {AtkExt = 26699,DefExt = 13336,HPExt = 98211},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603005,val = 110}}},--许褚6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 779.47},[2] = {id = 102,val = 368.46},[3] = {id = 103,val = 4067.55}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 80.5}},RosterAttr = {AtkExt = 26879,DefExt = 13426,HPExt = 99016},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603005,val = 130}}},--许褚7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1017.52},[2] = {id = 102,val = 487.49},[3] = {id = 103,val = 5390.05}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 103.5}},RosterAttr = {AtkExt = 27109,DefExt = 13541,HPExt = 100051},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 55}}},--许褚8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1165.87},[2] = {id = 102,val = 561.09},[3] = {id = 103,val = 6207.7}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 119.6}},RosterAttr = {AtkExt = 27374,DefExt = 13673,HPExt = 101247},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603008,val = 95}}},--许褚9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1336.76},[2] = {id = 102,val = 647.11},[3] = {id = 103,val = 7147.25}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 138}},RosterAttr = {AtkExt = 27681,DefExt = 13826,HPExt = 102627},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603008,val = 145}}},--许褚10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1535.37},[2] = {id = 102,val = 745.83},[3] = {id = 103,val = 8240.9}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 159.85}},RosterAttr = {AtkExt = 28036,DefExt = 14003,HPExt = 104225},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603008,val = 185}}},--许褚11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1764.79},[2] = {id = 102,val = 859.97},[3] = {id = 103,val = 9505.9}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 184}},RosterAttr = {AtkExt = 28447,DefExt = 14208,HPExt = 106065},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603008,val = 225}}},--许褚12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2030.1},[2] = {id = 102,val = 992.62},[3] = {id = 103,val = 10964.1}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 212.75}},RosterAttr = {AtkExt = 28922,DefExt = 14445,HPExt = 108192},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603008,val = 265}}},--许褚13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2336.74},[2] = {id = 102,val = 1145.95},[3] = {id = 103,val = 12648.85}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 247.25}},RosterAttr = {AtkExt = 29471,DefExt = 14719,HPExt = 110664},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603011,val = 45}}},--许褚14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2690.94},[2] = {id = 102,val = 1323.62},[3] = {id = 103,val = 14599.25}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 285.2}},RosterAttr = {AtkExt = 30106,DefExt = 15036,HPExt = 113516},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603011,val = 70}}},--许褚15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3100.75},[2] = {id = 102,val = 1528.52},[3] = {id = 103,val = 16853.25}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 330.05}},RosterAttr = {AtkExt = 30841,DefExt = 15403,HPExt = 116816},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 100},[4] = {id = 1603014,val = 25}}},--许褚16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3574.03},[2] = {id = 102,val = 1765.16},[3] = {id = 103,val = 19455.7}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 381.8}},RosterAttr = {AtkExt = 31690,DefExt = 15827,HPExt = 120634},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603011,val = 125},[4] = {id = 1603014,val = 35}}},--许褚17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4122},[2] = {id = 102,val = 2038.58},[3] = {id = 103,val = 22472.15}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 441.6}},RosterAttr = {AtkExt = 32672,DefExt = 16318,HPExt = 125050},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603011,val = 155},[4] = {id = 1603014,val = 50}}},--许褚18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4754.68},[2] = {id = 102,val = 2355.49},[3] = {id = 103,val = 25953.2}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 510.6}},RosterAttr = {AtkExt = 33808,DefExt = 16886,HPExt = 130156},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603011,val = 180},[4] = {id = 1603014,val = 65}}},--许褚19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5487.17},[2] = {id = 102,val = 2721.16},[3] = {id = 103,val = 29986.25}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 589.95}},RosterAttr = {AtkExt = 35121,DefExt = 17542,HPExt = 136055},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603011,val = 225},[4] = {id = 1603014,val = 75}}}--许褚20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1702002,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1702002,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1702002,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1702002,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1702002,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		}
	},--许褚
	[1102003] = {
		IfEntreVersion = 1,
		Name = "典韦",
		NickName = "古之恶来",
		NamePic = "ui_dtex_Name_1102003",
		NickNamePic = "ui_dtex_Name2_1102003",
		Tag = {101,106},
		Type = 2,
		Quality = 4,
		CrystalType = 2,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303003},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702003,val = 80}},
		DebrisID = 1702003,
		ComposeNum = 80,
		CardFace = "cardface_dw_1102003",
		Head2 = "head_dw_1102003",
		HeadBig = "headbig_dw_1102003",
		Icon = "head_dw_1102003",
		Painting = "draw_dw_1102003",
		Cutin = "cutin_dw_1102003",
		GachaDialogue = "gacha_dw_1102003",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 612,
		InitSkill = 2004,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 91},[2] = {id = 102,val = 26},[3] = {id = 103,val = 195}},UpAttr = {[1] = {id = 101,val = 3.25},[2] = {id = 102,val = 1.63},[3] = {id = 103,val = 14.3}},RosterAttr = {AtkExt = 35149,DefExt = 17556,HPExt = 136181}},--典韦1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 148.2},[2] = {id = 102,val = 48.75},[3] = {id = 103,val = 500.5}},UpAttr = {[1] = {id = 101,val = 5.2},[2] = {id = 102,val = 2.6},[3] = {id = 103,val = 23.4}},RosterAttr = {AtkExt = 35195,DefExt = 17579,HPExt = 136388},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--典韦2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 256.1},[2] = {id = 102,val = 102.05},[3] = {id = 103,val = 1120.6}},UpAttr = {[1] = {id = 101,val = 7.84},[2] = {id = 102,val = 3.92},[3] = {id = 103,val = 35.1}},RosterAttr = {AtkExt = 35264,DefExt = 17613,HPExt = 136698},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--典韦3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 360.49},[2] = {id = 102,val = 154.25},[3] = {id = 103,val = 1705.6}},UpAttr = {[1] = {id = 101,val = 10.4},[2] = {id = 102,val = 5.2},[3] = {id = 103,val = 46.8}},RosterAttr = {AtkExt = 35356,DefExt = 17659,HPExt = 137112},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 65}}},--典韦4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 496.99},[2] = {id = 102,val = 223.15},[3] = {id = 103,val = 2466.1}},UpAttr = {[1] = {id = 101,val = 13.03},[2] = {id = 102,val = 6.51},[3] = {id = 103,val = 58.5}},RosterAttr = {AtkExt = 35471,DefExt = 17716,HPExt = 137629},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603006,val = 85}}},--典韦5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 667.55},[2] = {id = 102,val = 309.08},[3] = {id = 103,val = 3413.8}},UpAttr = {[1] = {id = 101,val = 16.29},[2] = {id = 102,val = 8.14},[3] = {id = 103,val = 72.8}},RosterAttr = {AtkExt = 35615,DefExt = 17788,HPExt = 138273},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603006,val = 110}}},--典韦6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 881.14},[2] = {id = 102,val = 416.52},[3] = {id = 103,val = 4598.1}},UpAttr = {[1] = {id = 101,val = 20.41},[2] = {id = 102,val = 10.21},[3] = {id = 103,val = 91}},RosterAttr = {AtkExt = 35795,DefExt = 17878,HPExt = 139078},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603006,val = 130}}},--典韦7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1150.24},[2] = {id = 102,val = 551.07},[3] = {id = 103,val = 6093.1}},UpAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 13},[3] = {id = 103,val = 117}},RosterAttr = {AtkExt = 36025,DefExt = 17993,HPExt = 140113},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 55}}},--典韦8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1317.94},[2] = {id = 102,val = 634.27},[3] = {id = 103,val = 7017.4}},UpAttr = {[1] = {id = 101,val = 30.06},[2] = {id = 102,val = 15.03},[3] = {id = 103,val = 135.2}},RosterAttr = {AtkExt = 36290,DefExt = 18125,HPExt = 141309},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603009,val = 95}}},--典韦9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1511.12},[2] = {id = 102,val = 731.51},[3] = {id = 103,val = 8079.5}},UpAttr = {[1] = {id = 101,val = 34.76},[2] = {id = 102,val = 17.38},[3] = {id = 103,val = 156}},RosterAttr = {AtkExt = 36597,DefExt = 18278,HPExt = 142689},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603009,val = 145}}},--典韦10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1735.63},[2] = {id = 102,val = 843.12},[3] = {id = 103,val = 9315.8}},UpAttr = {[1] = {id = 101,val = 40.17},[2] = {id = 102,val = 20.09},[3] = {id = 103,val = 180.7}},RosterAttr = {AtkExt = 36952,DefExt = 18455,HPExt = 144287},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603009,val = 185}}},--典韦11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1994.98},[2] = {id = 102,val = 972.14},[3] = {id = 103,val = 10745.8}},UpAttr = {[1] = {id = 101,val = 46.46},[2] = {id = 102,val = 23.23},[3] = {id = 103,val = 208}},RosterAttr = {AtkExt = 37363,DefExt = 18660,HPExt = 146127},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603009,val = 225}}},--典韦12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2294.89},[2] = {id = 102,val = 1122.1},[3] = {id = 103,val = 12394.2}},UpAttr = {[1] = {id = 101,val = 53.73},[2] = {id = 102,val = 26.86},[3] = {id = 103,val = 240.5}},RosterAttr = {AtkExt = 37838,DefExt = 18897,HPExt = 148254},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603009,val = 265}}},--典韦13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2641.54},[2] = {id = 102,val = 1295.42},[3] = {id = 103,val = 14298.7}},UpAttr = {[1] = {id = 101,val = 62.14},[2] = {id = 102,val = 31.07},[3] = {id = 103,val = 279.5}},RosterAttr = {AtkExt = 38387,DefExt = 19171,HPExt = 150726},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603012,val = 45}}},--典韦14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 3041.94},[2] = {id = 102,val = 1496.27},[3] = {id = 103,val = 16503.5}},UpAttr = {[1] = {id = 101,val = 71.85},[2] = {id = 102,val = 35.93},[3] = {id = 103,val = 322.4}},RosterAttr = {AtkExt = 39022,DefExt = 19488,HPExt = 153578},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603012,val = 70}}},--典韦15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3505.19},[2] = {id = 102,val = 1727.9},[3] = {id = 103,val = 19051.5}},UpAttr = {[1] = {id = 101,val = 83.08},[2] = {id = 102,val = 41.54},[3] = {id = 103,val = 373.1}},RosterAttr = {AtkExt = 39757,DefExt = 19855,HPExt = 156878},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 100},[4] = {id = 1603014,val = 25}}},--典韦16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 4040.21},[2] = {id = 102,val = 1995.4},[3] = {id = 103,val = 21993.4}},UpAttr = {[1] = {id = 101,val = 96.07},[2] = {id = 102,val = 48.04},[3] = {id = 103,val = 431.6}},RosterAttr = {AtkExt = 40606,DefExt = 20279,HPExt = 160696},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603012,val = 125},[4] = {id = 1603014,val = 35}}},--典韦17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4659.66},[2] = {id = 102,val = 2304.48},[3] = {id = 103,val = 25403.3}},UpAttr = {[1] = {id = 101,val = 111.06},[2] = {id = 102,val = 55.53},[3] = {id = 103,val = 499.2}},RosterAttr = {AtkExt = 41588,DefExt = 20770,HPExt = 165112},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603012,val = 155},[4] = {id = 1603014,val = 50}}},--典韦18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 5374.85},[2] = {id = 102,val = 2662.73},[3] = {id = 103,val = 29338.4}},UpAttr = {[1] = {id = 101,val = 128.43},[2] = {id = 102,val = 64.21},[3] = {id = 103,val = 577.2}},RosterAttr = {AtkExt = 42724,DefExt = 21338,HPExt = 170218},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603012,val = 180},[4] = {id = 1603014,val = 65}}},--典韦19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 6202.89},[2] = {id = 102,val = 3076.09},[3] = {id = 103,val = 33897.5}},UpAttr = {[1] = {id = 101,val = 148.47},[2] = {id = 102,val = 74.24},[3] = {id = 103,val = 666.9}},RosterAttr = {AtkExt = 44037,DefExt = 21994,HPExt = 176117},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603012,val = 225},[4] = {id = 1603014,val = 75}}}--典韦20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1702003,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1702003,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1702003,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1702003,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1702003,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--典韦
	[1102004] = {
		IfEntreVersion = 1,
		Name = "唐流雨",
		NickName = "八臂螳螂",
		NamePic = "ui_dtex_Name_1102004",
		NickNamePic = "ui_dtex_Name2_1102004",
		Tag = {107},
		Type = 2,
		Quality = 2,
		CrystalType = 1,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303004},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702004,val = 20}},
		DebrisID = 1702004,
		ComposeNum = 20,
		CardFace = "cardface_tly_1102004",
		Head2 = "head_tly_1102004",
		HeadBig = "headbig_tly_1102004",
		Icon = "head_tly_1102004",
		Painting = "draw_tly_1102004",
		Cutin = "cutin_tly_1102004",
		PaintingPos = {x = 106.1,y = -15.7},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 610,
		InitSkill = 2001,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 70},[2] = {id = 102,val = 20},[3] = {id = 103,val = 150}},UpAttr = {[1] = {id = 101,val = 2.5},[2] = {id = 102,val = 1.25},[3] = {id = 103,val = 11}},RosterAttr = {AtkExt = 44062,DefExt = 22006,HPExt = 176227}},--唐流雨1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 114},[2] = {id = 102,val = 37.5},[3] = {id = 103,val = 385}},UpAttr = {[1] = {id = 101,val = 4},[2] = {id = 102,val = 2},[3] = {id = 103,val = 18}},RosterAttr = {AtkExt = 44102,DefExt = 22026,HPExt = 176407},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--唐流雨2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 197},[2] = {id = 102,val = 78.5},[3] = {id = 103,val = 862}},UpAttr = {[1] = {id = 101,val = 6.03},[2] = {id = 102,val = 3.02},[3] = {id = 103,val = 27}},RosterAttr = {AtkExt = 44162,DefExt = 22056,HPExt = 176677},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--唐流雨3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 277.3},[2] = {id = 102,val = 118.65},[3] = {id = 103,val = 1312}},UpAttr = {[1] = {id = 101,val = 8},[2] = {id = 102,val = 4},[3] = {id = 103,val = 36}},RosterAttr = {AtkExt = 44242,DefExt = 22096,HPExt = 177037},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 65}}},--唐流雨4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 382.3},[2] = {id = 102,val = 171.65},[3] = {id = 103,val = 1897}},UpAttr = {[1] = {id = 101,val = 10.02},[2] = {id = 102,val = 5.01},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 44342,DefExt = 22146,HPExt = 177487},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603005,val = 85}}},--唐流雨5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 513.5},[2] = {id = 102,val = 237.75},[3] = {id = 103,val = 2626}},UpAttr = {[1] = {id = 101,val = 12.53},[2] = {id = 102,val = 6.27},[3] = {id = 103,val = 56}},RosterAttr = {AtkExt = 44467,DefExt = 22208,HPExt = 178047},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603005,val = 110}}},--唐流雨6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 677.8},[2] = {id = 102,val = 320.4},[3] = {id = 103,val = 3537}},UpAttr = {[1] = {id = 101,val = 15.7},[2] = {id = 102,val = 7.85},[3] = {id = 103,val = 70}},RosterAttr = {AtkExt = 44624,DefExt = 22286,HPExt = 178747},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603005,val = 130}}},--唐流雨7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 884.8},[2] = {id = 102,val = 423.9},[3] = {id = 103,val = 4687}},UpAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 10},[3] = {id = 103,val = 90}},RosterAttr = {AtkExt = 44824,DefExt = 22386,HPExt = 179647},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 55}}},--唐流雨8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1013.8},[2] = {id = 102,val = 487.9},[3] = {id = 103,val = 5398}},UpAttr = {[1] = {id = 101,val = 23.12},[2] = {id = 102,val = 11.56},[3] = {id = 103,val = 104}},RosterAttr = {AtkExt = 45055,DefExt = 22501,HPExt = 180687},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603008,val = 95}}},--唐流雨9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1162.4},[2] = {id = 102,val = 562.7},[3] = {id = 103,val = 6215}},UpAttr = {[1] = {id = 101,val = 26.74},[2] = {id = 102,val = 13.37},[3] = {id = 103,val = 120}},RosterAttr = {AtkExt = 45322,DefExt = 22634,HPExt = 181887},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603008,val = 145}}},--唐流雨10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1335.1},[2] = {id = 102,val = 648.55},[3] = {id = 103,val = 7166}},UpAttr = {[1] = {id = 101,val = 30.9},[2] = {id = 102,val = 15.45},[3] = {id = 103,val = 139}},RosterAttr = {AtkExt = 45631,DefExt = 22788,HPExt = 183277},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603008,val = 185}}},--唐流雨11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1534.6},[2] = {id = 102,val = 747.8},[3] = {id = 103,val = 8266}},UpAttr = {[1] = {id = 101,val = 35.74},[2] = {id = 102,val = 17.87},[3] = {id = 103,val = 160}},RosterAttr = {AtkExt = 45988,DefExt = 22966,HPExt = 184877},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603008,val = 225}}},--唐流雨12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1765.3},[2] = {id = 102,val = 863.15},[3] = {id = 103,val = 9534}},UpAttr = {[1] = {id = 101,val = 41.33},[2] = {id = 102,val = 20.67},[3] = {id = 103,val = 185}},RosterAttr = {AtkExt = 46401,DefExt = 23172,HPExt = 186727},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603008,val = 265}}},--唐流雨13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2031.95},[2] = {id = 102,val = 996.48},[3] = {id = 103,val = 10999}},UpAttr = {[1] = {id = 101,val = 47.8},[2] = {id = 102,val = 23.9},[3] = {id = 103,val = 215}},RosterAttr = {AtkExt = 46879,DefExt = 23411,HPExt = 188877},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603011,val = 45}}},--唐流雨14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2339.95},[2] = {id = 102,val = 1150.98},[3] = {id = 103,val = 12695}},UpAttr = {[1] = {id = 101,val = 55.27},[2] = {id = 102,val = 27.64},[3] = {id = 103,val = 248}},RosterAttr = {AtkExt = 47431,DefExt = 23687,HPExt = 191357},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603011,val = 70}}},--唐流雨15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2696.3},[2] = {id = 102,val = 1329.15},[3] = {id = 103,val = 14655}},UpAttr = {[1] = {id = 101,val = 63.91},[2] = {id = 102,val = 31.96},[3] = {id = 103,val = 287}},RosterAttr = {AtkExt = 48070,DefExt = 24006,HPExt = 194227},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 100},[4] = {id = 1603014,val = 25}}},--唐流雨16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3107.85},[2] = {id = 102,val = 1534.93},[3] = {id = 103,val = 16918}},UpAttr = {[1] = {id = 101,val = 73.9},[2] = {id = 102,val = 36.95},[3] = {id = 103,val = 332}},RosterAttr = {AtkExt = 48809,DefExt = 24375,HPExt = 197547},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603011,val = 125},[4] = {id = 1603014,val = 35}}},--唐流雨17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3584.35},[2] = {id = 102,val = 1772.68},[3] = {id = 103,val = 19541}},UpAttr = {[1] = {id = 101,val = 85.43},[2] = {id = 102,val = 42.72},[3] = {id = 103,val = 384}},RosterAttr = {AtkExt = 49663,DefExt = 24802,HPExt = 201387},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603011,val = 155},[4] = {id = 1603014,val = 50}}},--唐流雨18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4134.5},[2] = {id = 102,val = 2048.25},[3] = {id = 103,val = 22568}},UpAttr = {[1] = {id = 101,val = 98.79},[2] = {id = 102,val = 49.4},[3] = {id = 103,val = 444}},RosterAttr = {AtkExt = 50650,DefExt = 25296,HPExt = 205827},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603011,val = 180},[4] = {id = 1603014,val = 65}}},--唐流雨19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 4771.45},[2] = {id = 102,val = 2366.23},[3] = {id = 103,val = 26075}},UpAttr = {[1] = {id = 101,val = 114.21},[2] = {id = 102,val = 57.11},[3] = {id = 103,val = 513}},RosterAttr = {AtkExt = 51792,DefExt = 25867,HPExt = 210957},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603011,val = 225},[4] = {id = 1603014,val = 75}}}--唐流雨20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702004,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702004,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702004,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702004,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702004,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--唐流雨
	[1102005] = {
		IfEntreVersion = 1,
		Name = "李轩辕",
		NickName = "纯阳无极",
		NamePic = "ui_dtex_Name_1102005",
		NickNamePic = "ui_dtex_Name2_1102005",
		Tag = {105},
		Type = 2,
		Quality = 3,
		CrystalType = 3,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303005},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702005,val = 40}},
		DebrisID = 1702005,
		ComposeNum = 40,
		CardFace = "cardface_lxy_1102005",
		Head2 = "head_lxy_1102005",
		HeadBig = "headbig_lxy_1102005",
		Icon = "head_lxy_1102005",
		Painting = "draw_lxy_1102005",
		Cutin = "cutin_lxy_1102005",
		GachaDialogue = "gacha_lxy_1102005",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 616,
		InitSkill = 2005,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 80.5},[2] = {id = 102,val = 23},[3] = {id = 103,val = 172.5}},UpAttr = {[1] = {id = 101,val = 2.88},[2] = {id = 102,val = 1.44},[3] = {id = 103,val = 12.65}},RosterAttr = {AtkExt = 51820,DefExt = 25881,HPExt = 211083}},--李轩辕1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 131.1},[2] = {id = 102,val = 43.13},[3] = {id = 103,val = 442.75}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 20.7}},RosterAttr = {AtkExt = 51866,DefExt = 25904,HPExt = 211290},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--李轩辕2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 226.55},[2] = {id = 102,val = 90.28},[3] = {id = 103,val = 991.3}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 31.05}},RosterAttr = {AtkExt = 51935,DefExt = 25938,HPExt = 211600},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--李轩辕3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 318.9},[2] = {id = 102,val = 136.45},[3] = {id = 103,val = 1508.8}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 41.4}},RosterAttr = {AtkExt = 52027,DefExt = 25984,HPExt = 212014},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 65}}},--李轩辕4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 439.65},[2] = {id = 102,val = 197.4},[3] = {id = 103,val = 2181.55}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 52142,DefExt = 26041,HPExt = 212531},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603007,val = 85}}},--李轩辕5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 590.53},[2] = {id = 102,val = 273.41},[3] = {id = 103,val = 3019.9}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 64.4}},RosterAttr = {AtkExt = 52286,DefExt = 26113,HPExt = 213175},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603007,val = 110}}},--李轩辕6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 779.47},[2] = {id = 102,val = 368.46},[3] = {id = 103,val = 4067.55}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 80.5}},RosterAttr = {AtkExt = 52466,DefExt = 26203,HPExt = 213980},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603007,val = 130}}},--李轩辕7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1017.52},[2] = {id = 102,val = 487.49},[3] = {id = 103,val = 5390.05}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 103.5}},RosterAttr = {AtkExt = 52696,DefExt = 26318,HPExt = 215015},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 55}}},--李轩辕8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1165.87},[2] = {id = 102,val = 561.09},[3] = {id = 103,val = 6207.7}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 119.6}},RosterAttr = {AtkExt = 52961,DefExt = 26450,HPExt = 216211},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603010,val = 95}}},--李轩辕9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1336.76},[2] = {id = 102,val = 647.11},[3] = {id = 103,val = 7147.25}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 138}},RosterAttr = {AtkExt = 53268,DefExt = 26603,HPExt = 217591},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603010,val = 145}}},--李轩辕10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1535.37},[2] = {id = 102,val = 745.83},[3] = {id = 103,val = 8240.9}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 159.85}},RosterAttr = {AtkExt = 53623,DefExt = 26780,HPExt = 219189},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603010,val = 185}}},--李轩辕11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1764.79},[2] = {id = 102,val = 859.97},[3] = {id = 103,val = 9505.9}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 184}},RosterAttr = {AtkExt = 54034,DefExt = 26985,HPExt = 221029},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603010,val = 225}}},--李轩辕12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2030.1},[2] = {id = 102,val = 992.62},[3] = {id = 103,val = 10964.1}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 212.75}},RosterAttr = {AtkExt = 54509,DefExt = 27222,HPExt = 223156},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603010,val = 265}}},--李轩辕13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2336.74},[2] = {id = 102,val = 1145.95},[3] = {id = 103,val = 12648.85}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 247.25}},RosterAttr = {AtkExt = 55058,DefExt = 27496,HPExt = 225628},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603013,val = 45}}},--李轩辕14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2690.94},[2] = {id = 102,val = 1323.62},[3] = {id = 103,val = 14599.25}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 285.2}},RosterAttr = {AtkExt = 55693,DefExt = 27813,HPExt = 228480},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603013,val = 70}}},--李轩辕15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3100.75},[2] = {id = 102,val = 1528.52},[3] = {id = 103,val = 16853.25}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 330.05}},RosterAttr = {AtkExt = 56428,DefExt = 28180,HPExt = 231780},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 100},[4] = {id = 1603014,val = 25}}},--李轩辕16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3574.03},[2] = {id = 102,val = 1765.16},[3] = {id = 103,val = 19455.7}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 381.8}},RosterAttr = {AtkExt = 57277,DefExt = 28604,HPExt = 235598},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603013,val = 125},[4] = {id = 1603014,val = 35}}},--李轩辕17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4122},[2] = {id = 102,val = 2038.58},[3] = {id = 103,val = 22472.15}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 441.6}},RosterAttr = {AtkExt = 58259,DefExt = 29095,HPExt = 240014},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603013,val = 155},[4] = {id = 1603014,val = 50}}},--李轩辕18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4754.68},[2] = {id = 102,val = 2355.49},[3] = {id = 103,val = 25953.2}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 510.6}},RosterAttr = {AtkExt = 59395,DefExt = 29663,HPExt = 245120},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603013,val = 180},[4] = {id = 1603014,val = 65}}},--李轩辕19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5487.17},[2] = {id = 102,val = 2721.16},[3] = {id = 103,val = 29986.25}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 589.95}},RosterAttr = {AtkExt = 60708,DefExt = 30319,HPExt = 251019},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603013,val = 225},[4] = {id = 1603014,val = 75}}}--李轩辕20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1702005,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1702005,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1702005,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1702005,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1702005,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--李轩辕
	[1102006] = {
		IfEntreVersion = 1,
		Name = "项羽",
		NickName = "西楚霸王",
		NamePic = "ui_dtex_Name_1102006",
		NickNamePic = "ui_dtex_Name2_1102006",
		Tag = {102},
		Type = 2,
		Quality = 5,
		CrystalType = 2,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303006},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702006,val = 80}},
		DebrisID = 1702006,
		ComposeNum = 80,
		CardFace = "cardface_xy_1102006",
		Head2 = "head_xy_1102006",
		HeadBig = "headbig_xy_1102006",
		Icon = "head_xy_1102006",
		Painting = "draw_xy_1102006",
		Cutin = "cutin_xy_1102006",
		GachaDialogue = "gacha_xy_1102006",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 612,
		InitSkill = 2006,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 105},[2] = {id = 102,val = 30},[3] = {id = 103,val = 225}},UpAttr = {[1] = {id = 101,val = 3.75},[2] = {id = 102,val = 1.88},[3] = {id = 103,val = 16.5}},RosterAttr = {AtkExt = 60745,DefExt = 30337,HPExt = 251184}},--项羽1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 171},[2] = {id = 102,val = 56.25},[3] = {id = 103,val = 577.5}},UpAttr = {[1] = {id = 101,val = 6},[2] = {id = 102,val = 3},[3] = {id = 103,val = 27}},RosterAttr = {AtkExt = 60805,DefExt = 30367,HPExt = 251454},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--项羽2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 295.5},[2] = {id = 102,val = 117.75},[3] = {id = 103,val = 1293}},UpAttr = {[1] = {id = 101,val = 9.05},[2] = {id = 102,val = 4.52},[3] = {id = 103,val = 40.5}},RosterAttr = {AtkExt = 60895,DefExt = 30412,HPExt = 251859},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--项羽3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 415.95},[2] = {id = 102,val = 177.98},[3] = {id = 103,val = 1968}},UpAttr = {[1] = {id = 101,val = 12},[2] = {id = 102,val = 6},[3] = {id = 103,val = 54}},RosterAttr = {AtkExt = 61015,DefExt = 30472,HPExt = 252399},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 65}}},--项羽4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 573.45},[2] = {id = 102,val = 257.48},[3] = {id = 103,val = 2845.5}},UpAttr = {[1] = {id = 101,val = 15.03},[2] = {id = 102,val = 7.52},[3] = {id = 103,val = 67.5}},RosterAttr = {AtkExt = 61165,DefExt = 30547,HPExt = 253074},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603006,val = 85}}},--项羽5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 770.25},[2] = {id = 102,val = 356.63},[3] = {id = 103,val = 3939}},UpAttr = {[1] = {id = 101,val = 18.8},[2] = {id = 102,val = 9.4},[3] = {id = 103,val = 84}},RosterAttr = {AtkExt = 61353,DefExt = 30641,HPExt = 253914},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603006,val = 110}}},--项羽6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 1016.7},[2] = {id = 102,val = 480.6},[3] = {id = 103,val = 5305.5}},UpAttr = {[1] = {id = 101,val = 23.55},[2] = {id = 102,val = 11.78},[3] = {id = 103,val = 105}},RosterAttr = {AtkExt = 61588,DefExt = 30758,HPExt = 254964},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603006,val = 130}}},--项羽7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1327.2},[2] = {id = 102,val = 635.85},[3] = {id = 103,val = 7030.5}},UpAttr = {[1] = {id = 101,val = 30},[2] = {id = 102,val = 15},[3] = {id = 103,val = 135}},RosterAttr = {AtkExt = 61888,DefExt = 30908,HPExt = 256314},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 55}}},--项羽8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1520.7},[2] = {id = 102,val = 731.85},[3] = {id = 103,val = 8097}},UpAttr = {[1] = {id = 101,val = 34.68},[2] = {id = 102,val = 17.34},[3] = {id = 103,val = 156}},RosterAttr = {AtkExt = 62234,DefExt = 31081,HPExt = 257874},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603009,val = 95}}},--项羽9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1743.6},[2] = {id = 102,val = 844.05},[3] = {id = 103,val = 9322.5}},UpAttr = {[1] = {id = 101,val = 40.11},[2] = {id = 102,val = 20.06},[3] = {id = 103,val = 180}},RosterAttr = {AtkExt = 62635,DefExt = 31281,HPExt = 259674},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603009,val = 145}}},--项羽10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 2002.65},[2] = {id = 102,val = 972.83},[3] = {id = 103,val = 10749}},UpAttr = {[1] = {id = 101,val = 46.35},[2] = {id = 102,val = 23.18},[3] = {id = 103,val = 208.5}},RosterAttr = {AtkExt = 63098,DefExt = 31512,HPExt = 261759},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603009,val = 185}}},--项羽11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 2301.9},[2] = {id = 102,val = 1121.7},[3] = {id = 103,val = 12399}},UpAttr = {[1] = {id = 101,val = 53.61},[2] = {id = 102,val = 26.81},[3] = {id = 103,val = 240}},RosterAttr = {AtkExt = 63634,DefExt = 31780,HPExt = 264159},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603009,val = 225}}},--项羽12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2647.95},[2] = {id = 102,val = 1294.73},[3] = {id = 103,val = 14301}},UpAttr = {[1] = {id = 101,val = 62},[2] = {id = 102,val = 31},[3] = {id = 103,val = 277.5}},RosterAttr = {AtkExt = 64254,DefExt = 32090,HPExt = 266934},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603009,val = 265}}},--项羽13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 3047.93},[2] = {id = 102,val = 1494.71},[3] = {id = 103,val = 16498.5}},UpAttr = {[1] = {id = 101,val = 71.7},[2] = {id = 102,val = 35.85},[3] = {id = 103,val = 322.5}},RosterAttr = {AtkExt = 64971,DefExt = 32448,HPExt = 270159},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603012,val = 45}}},--项羽14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 3509.93},[2] = {id = 102,val = 1726.46},[3] = {id = 103,val = 19042.5}},UpAttr = {[1] = {id = 101,val = 82.91},[2] = {id = 102,val = 41.45},[3] = {id = 103,val = 372}},RosterAttr = {AtkExt = 65800,DefExt = 32862,HPExt = 273879},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603012,val = 70}}},--项羽15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 4044.45},[2] = {id = 102,val = 1993.73},[3] = {id = 103,val = 21982.5}},UpAttr = {[1] = {id = 101,val = 95.87},[2] = {id = 102,val = 47.93},[3] = {id = 103,val = 430.5}},RosterAttr = {AtkExt = 66758,DefExt = 33341,HPExt = 278184},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 100},[4] = {id = 1603014,val = 25}}},--项羽16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 4661.78},[2] = {id = 102,val = 2302.39},[3] = {id = 103,val = 25377}},UpAttr = {[1] = {id = 101,val = 110.85},[2] = {id = 102,val = 55.43},[3] = {id = 103,val = 498}},RosterAttr = {AtkExt = 67866,DefExt = 33895,HPExt = 283164},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603012,val = 125},[4] = {id = 1603014,val = 35}}},--项羽17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 5376.53},[2] = {id = 102,val = 2659.01},[3] = {id = 103,val = 29311.5}},UpAttr = {[1] = {id = 101,val = 128.15},[2] = {id = 102,val = 64.07},[3] = {id = 103,val = 576}},RosterAttr = {AtkExt = 69147,DefExt = 34535,HPExt = 288924},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603012,val = 155},[4] = {id = 1603014,val = 50}}},--项羽18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 6201.75},[2] = {id = 102,val = 3072.38},[3] = {id = 103,val = 33852}},UpAttr = {[1] = {id = 101,val = 148.19},[2] = {id = 102,val = 74.09},[3] = {id = 103,val = 666}},RosterAttr = {AtkExt = 70628,DefExt = 35275,HPExt = 295584},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603012,val = 180},[4] = {id = 1603014,val = 65}}},--项羽19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 7157.18},[2] = {id = 102,val = 3549.34},[3] = {id = 103,val = 39112.5}},UpAttr = {[1] = {id = 101,val = 171.32},[2] = {id = 102,val = 85.66},[3] = {id = 103,val = 769.5}},RosterAttr = {AtkExt = 72341,DefExt = 36131,HPExt = 303279},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603012,val = 225},[4] = {id = 1603014,val = 75}}}--项羽20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702006,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702006,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702006,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702006,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702006,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--项羽
	[1102007] = {
		IfEntreVersion = 1,
		Name = "天使缇娜",
		NickName = "钢之守护",
		NamePic = "ui_dtex_Name_1102007",
		NickNamePic = "ui_dtex_Name2_1102007",
		Tag = {101},
		Type = 2,
		Quality = 4,
		CrystalType = 1,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303007},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702007,val = 40}},
		DebrisID = 1702007,
		ComposeNum = 40,
		CardFace = "cardface_tstn_1102007",
		Head2 = "head_tstn_1102007",
		HeadBig = "headbig_tstn_1102007",
		Icon = "head_tstn_1102007",
		Painting = "draw_tstn_1102007",
		Cutin = "cutin_tstn_1102007",
		GachaDialogue = "gacha_tstn_1102007",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 610,
		InitSkill = 2007,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 91},[2] = {id = 102,val = 26},[3] = {id = 103,val = 195}},UpAttr = {[1] = {id = 101,val = 3.25},[2] = {id = 102,val = 1.63},[3] = {id = 103,val = 14.3}},RosterAttr = {AtkExt = 72373,DefExt = 36147,HPExt = 303422}},--天使缇娜1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 148.2},[2] = {id = 102,val = 48.75},[3] = {id = 103,val = 500.5}},UpAttr = {[1] = {id = 101,val = 5.2},[2] = {id = 102,val = 2.6},[3] = {id = 103,val = 23.4}},RosterAttr = {AtkExt = 72425,DefExt = 36173,HPExt = 303656},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--天使缇娜2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 256.1},[2] = {id = 102,val = 102.05},[3] = {id = 103,val = 1120.6}},UpAttr = {[1] = {id = 101,val = 7.84},[2] = {id = 102,val = 3.92},[3] = {id = 103,val = 35.1}},RosterAttr = {AtkExt = 72503,DefExt = 36212,HPExt = 304007},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--天使缇娜3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 360.49},[2] = {id = 102,val = 154.25},[3] = {id = 103,val = 1705.6}},UpAttr = {[1] = {id = 101,val = 10.4},[2] = {id = 102,val = 5.2},[3] = {id = 103,val = 46.8}},RosterAttr = {AtkExt = 72607,DefExt = 36264,HPExt = 304475},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 65}}},--天使缇娜4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 496.99},[2] = {id = 102,val = 223.15},[3] = {id = 103,val = 2466.1}},UpAttr = {[1] = {id = 101,val = 13.03},[2] = {id = 102,val = 6.51},[3] = {id = 103,val = 58.5}},RosterAttr = {AtkExt = 72737,DefExt = 36329,HPExt = 305060},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603005,val = 85}}},--天使缇娜5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 667.55},[2] = {id = 102,val = 309.08},[3] = {id = 103,val = 3413.8}},UpAttr = {[1] = {id = 101,val = 16.29},[2] = {id = 102,val = 8.14},[3] = {id = 103,val = 72.8}},RosterAttr = {AtkExt = 72899,DefExt = 36410,HPExt = 305788},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603005,val = 110}}},--天使缇娜6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 881.14},[2] = {id = 102,val = 416.52},[3] = {id = 103,val = 4598.1}},UpAttr = {[1] = {id = 101,val = 20.41},[2] = {id = 102,val = 10.21},[3] = {id = 103,val = 91}},RosterAttr = {AtkExt = 73103,DefExt = 36512,HPExt = 306698},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603005,val = 130}}},--天使缇娜7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1150.24},[2] = {id = 102,val = 551.07},[3] = {id = 103,val = 6093.1}},UpAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 13},[3] = {id = 103,val = 117}},RosterAttr = {AtkExt = 73363,DefExt = 36642,HPExt = 307868},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 55}}},--天使缇娜8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1317.94},[2] = {id = 102,val = 634.27},[3] = {id = 103,val = 7017.4}},UpAttr = {[1] = {id = 101,val = 30.06},[2] = {id = 102,val = 15.03},[3] = {id = 103,val = 135.2}},RosterAttr = {AtkExt = 73663,DefExt = 36792,HPExt = 309220},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603008,val = 95}}},--天使缇娜9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1511.12},[2] = {id = 102,val = 731.51},[3] = {id = 103,val = 8079.5}},UpAttr = {[1] = {id = 101,val = 34.76},[2] = {id = 102,val = 17.38},[3] = {id = 103,val = 156}},RosterAttr = {AtkExt = 74010,DefExt = 36965,HPExt = 310780},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603008,val = 145}}},--天使缇娜10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1735.63},[2] = {id = 102,val = 843.12},[3] = {id = 103,val = 9315.8}},UpAttr = {[1] = {id = 101,val = 40.17},[2] = {id = 102,val = 20.09},[3] = {id = 103,val = 180.7}},RosterAttr = {AtkExt = 74411,DefExt = 37165,HPExt = 312587},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603008,val = 185}}},--天使缇娜11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1994.98},[2] = {id = 102,val = 972.14},[3] = {id = 103,val = 10745.8}},UpAttr = {[1] = {id = 101,val = 46.46},[2] = {id = 102,val = 23.23},[3] = {id = 103,val = 208}},RosterAttr = {AtkExt = 74875,DefExt = 37397,HPExt = 314667},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603008,val = 225}}},--天使缇娜12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2294.89},[2] = {id = 102,val = 1122.1},[3] = {id = 103,val = 12394.2}},UpAttr = {[1] = {id = 101,val = 53.73},[2] = {id = 102,val = 26.86},[3] = {id = 103,val = 240.5}},RosterAttr = {AtkExt = 75412,DefExt = 37665,HPExt = 317072},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603008,val = 265}}},--天使缇娜13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2641.54},[2] = {id = 102,val = 1295.42},[3] = {id = 103,val = 14298.7}},UpAttr = {[1] = {id = 101,val = 62.14},[2] = {id = 102,val = 31.07},[3] = {id = 103,val = 279.5}},RosterAttr = {AtkExt = 76033,DefExt = 37975,HPExt = 319867},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603011,val = 45}}},--天使缇娜14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 3041.94},[2] = {id = 102,val = 1496.27},[3] = {id = 103,val = 16503.5}},UpAttr = {[1] = {id = 101,val = 71.85},[2] = {id = 102,val = 35.93},[3] = {id = 103,val = 322.4}},RosterAttr = {AtkExt = 76751,DefExt = 38334,HPExt = 323091},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603011,val = 70}}},--天使缇娜15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3505.19},[2] = {id = 102,val = 1727.9},[3] = {id = 103,val = 19051.5}},UpAttr = {[1] = {id = 101,val = 83.08},[2] = {id = 102,val = 41.54},[3] = {id = 103,val = 373.1}},RosterAttr = {AtkExt = 77581,DefExt = 38749,HPExt = 326822},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 100},[4] = {id = 1603014,val = 25}}},--天使缇娜16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 4040.21},[2] = {id = 102,val = 1995.4},[3] = {id = 103,val = 21993.4}},UpAttr = {[1] = {id = 101,val = 96.07},[2] = {id = 102,val = 48.04},[3] = {id = 103,val = 431.6}},RosterAttr = {AtkExt = 78541,DefExt = 39229,HPExt = 331138},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603011,val = 125},[4] = {id = 1603014,val = 35}}},--天使缇娜17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4659.66},[2] = {id = 102,val = 2304.48},[3] = {id = 103,val = 25403.3}},UpAttr = {[1] = {id = 101,val = 111.06},[2] = {id = 102,val = 55.53},[3] = {id = 103,val = 499.2}},RosterAttr = {AtkExt = 79651,DefExt = 39784,HPExt = 336130},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603011,val = 155},[4] = {id = 1603014,val = 50}}},--天使缇娜18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 5374.85},[2] = {id = 102,val = 2662.73},[3] = {id = 103,val = 29338.4}},UpAttr = {[1] = {id = 101,val = 128.43},[2] = {id = 102,val = 64.21},[3] = {id = 103,val = 577.2}},RosterAttr = {AtkExt = 80935,DefExt = 40426,HPExt = 341902},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603011,val = 180},[4] = {id = 1603014,val = 65}}},--天使缇娜19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 6202.89},[2] = {id = 102,val = 3076.09},[3] = {id = 103,val = 33897.5}},UpAttr = {[1] = {id = 101,val = 148.47},[2] = {id = 102,val = 74.24},[3] = {id = 103,val = 666.9}},RosterAttr = {AtkExt = 82419,DefExt = 41168,HPExt = 348571},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603011,val = 225},[4] = {id = 1603014,val = 75}}}--天使缇娜20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702007,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702007,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702007,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702007,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702007,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--天使缇娜
	[1102008] = {
		IfEntreVersion = 0,
		Name = "夏侯渊",
		NickName = "白地将军",
		NamePic = "ui_dtex_Name_1102008",
		NickNamePic = "ui_dtex_Name2_1102008",
		Tag = {101},
		Type = 2,
		Quality = 4,
		CrystalType = 1,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303008},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702008,val = 80}},
		DebrisID = 1702008,
		ComposeNum = 80,
		CardFace = "cardface_tstn_1102007",
		Head2 = "head_xhy_1102008",
		HeadBig = "headbig_xhy_1102008",
		Icon = "head_xhy_1102008",
		Painting = "draw_xhy_1102008",
		Cutin = "cutin_xhy_1102008",
		GachaDialogue = "gacha_xhy_1102008",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 610,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 91},[2] = {id = 102,val = 26},[3] = {id = 103,val = 195}},UpAttr = {[1] = {id = 101,val = 3.25},[2] = {id = 102,val = 1.63},[3] = {id = 103,val = 14.3}},RosterAttr = {AtkExt = 82451,DefExt = 41184,HPExt = 348714}},--夏侯渊1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 148.2},[2] = {id = 102,val = 48.75},[3] = {id = 103,val = 500.5}},UpAttr = {[1] = {id = 101,val = 5.2},[2] = {id = 102,val = 2.6},[3] = {id = 103,val = 23.4}},RosterAttr = {AtkExt = 82503,DefExt = 41210,HPExt = 348948},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--夏侯渊2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 256.1},[2] = {id = 102,val = 102.05},[3] = {id = 103,val = 1120.6}},UpAttr = {[1] = {id = 101,val = 7.84},[2] = {id = 102,val = 3.92},[3] = {id = 103,val = 35.1}},RosterAttr = {AtkExt = 82581,DefExt = 41249,HPExt = 349299},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--夏侯渊3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 360.49},[2] = {id = 102,val = 154.25},[3] = {id = 103,val = 1705.6}},UpAttr = {[1] = {id = 101,val = 10.4},[2] = {id = 102,val = 5.2},[3] = {id = 103,val = 46.8}},RosterAttr = {AtkExt = 82685,DefExt = 41301,HPExt = 349767},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 65}}},--夏侯渊4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 496.99},[2] = {id = 102,val = 223.15},[3] = {id = 103,val = 2466.1}},UpAttr = {[1] = {id = 101,val = 13.03},[2] = {id = 102,val = 6.51},[3] = {id = 103,val = 58.5}},RosterAttr = {AtkExt = 82815,DefExt = 41366,HPExt = 350352},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603005,val = 85}}},--夏侯渊5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 667.55},[2] = {id = 102,val = 309.08},[3] = {id = 103,val = 3413.8}},UpAttr = {[1] = {id = 101,val = 16.29},[2] = {id = 102,val = 8.14},[3] = {id = 103,val = 72.8}},RosterAttr = {AtkExt = 82977,DefExt = 41447,HPExt = 351080},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603005,val = 110}}},--夏侯渊6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 881.14},[2] = {id = 102,val = 416.52},[3] = {id = 103,val = 4598.1}},UpAttr = {[1] = {id = 101,val = 20.41},[2] = {id = 102,val = 10.21},[3] = {id = 103,val = 91}},RosterAttr = {AtkExt = 83181,DefExt = 41549,HPExt = 351990},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603005,val = 130}}},--夏侯渊7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1150.24},[2] = {id = 102,val = 551.07},[3] = {id = 103,val = 6093.1}},UpAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 13},[3] = {id = 103,val = 117}},RosterAttr = {AtkExt = 83441,DefExt = 41679,HPExt = 353160},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 55}}},--夏侯渊8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1317.94},[2] = {id = 102,val = 634.27},[3] = {id = 103,val = 7017.4}},UpAttr = {[1] = {id = 101,val = 30.06},[2] = {id = 102,val = 15.03},[3] = {id = 103,val = 135.2}},RosterAttr = {AtkExt = 83741,DefExt = 41829,HPExt = 354512},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603008,val = 95}}},--夏侯渊9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1511.12},[2] = {id = 102,val = 731.51},[3] = {id = 103,val = 8079.5}},UpAttr = {[1] = {id = 101,val = 34.76},[2] = {id = 102,val = 17.38},[3] = {id = 103,val = 156}},RosterAttr = {AtkExt = 84088,DefExt = 42002,HPExt = 356072},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603008,val = 145}}},--夏侯渊10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1735.63},[2] = {id = 102,val = 843.12},[3] = {id = 103,val = 9315.8}},UpAttr = {[1] = {id = 101,val = 40.17},[2] = {id = 102,val = 20.09},[3] = {id = 103,val = 180.7}},RosterAttr = {AtkExt = 84489,DefExt = 42202,HPExt = 357879},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603008,val = 185}}},--夏侯渊11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1994.98},[2] = {id = 102,val = 972.14},[3] = {id = 103,val = 10745.8}},UpAttr = {[1] = {id = 101,val = 46.46},[2] = {id = 102,val = 23.23},[3] = {id = 103,val = 208}},RosterAttr = {AtkExt = 84953,DefExt = 42434,HPExt = 359959},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603008,val = 225}}},--夏侯渊12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2294.89},[2] = {id = 102,val = 1122.1},[3] = {id = 103,val = 12394.2}},UpAttr = {[1] = {id = 101,val = 53.73},[2] = {id = 102,val = 26.86},[3] = {id = 103,val = 240.5}},RosterAttr = {AtkExt = 85490,DefExt = 42702,HPExt = 362364},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603008,val = 265}}},--夏侯渊13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2641.54},[2] = {id = 102,val = 1295.42},[3] = {id = 103,val = 14298.7}},UpAttr = {[1] = {id = 101,val = 62.14},[2] = {id = 102,val = 31.07},[3] = {id = 103,val = 279.5}},RosterAttr = {AtkExt = 86111,DefExt = 43012,HPExt = 365159},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603011,val = 45}}},--夏侯渊14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 3041.94},[2] = {id = 102,val = 1496.27},[3] = {id = 103,val = 16503.5}},UpAttr = {[1] = {id = 101,val = 71.85},[2] = {id = 102,val = 35.93},[3] = {id = 103,val = 322.4}},RosterAttr = {AtkExt = 86829,DefExt = 43371,HPExt = 368383},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603011,val = 70}}},--夏侯渊15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3505.19},[2] = {id = 102,val = 1727.9},[3] = {id = 103,val = 19051.5}},UpAttr = {[1] = {id = 101,val = 83.08},[2] = {id = 102,val = 41.54},[3] = {id = 103,val = 373.1}},RosterAttr = {AtkExt = 87659,DefExt = 43786,HPExt = 372114},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 100},[4] = {id = 1603014,val = 25}}},--夏侯渊16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 4040.21},[2] = {id = 102,val = 1995.4},[3] = {id = 103,val = 21993.4}},UpAttr = {[1] = {id = 101,val = 96.07},[2] = {id = 102,val = 48.04},[3] = {id = 103,val = 431.6}},RosterAttr = {AtkExt = 88619,DefExt = 44266,HPExt = 376430},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603011,val = 125},[4] = {id = 1603014,val = 35}}},--夏侯渊17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4659.66},[2] = {id = 102,val = 2304.48},[3] = {id = 103,val = 25403.3}},UpAttr = {[1] = {id = 101,val = 111.06},[2] = {id = 102,val = 55.53},[3] = {id = 103,val = 499.2}},RosterAttr = {AtkExt = 89729,DefExt = 44821,HPExt = 381422},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603011,val = 155},[4] = {id = 1603014,val = 50}}},--夏侯渊18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 5374.85},[2] = {id = 102,val = 2662.73},[3] = {id = 103,val = 29338.4}},UpAttr = {[1] = {id = 101,val = 128.43},[2] = {id = 102,val = 64.21},[3] = {id = 103,val = 577.2}},RosterAttr = {AtkExt = 91013,DefExt = 45463,HPExt = 387194},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603011,val = 180},[4] = {id = 1603014,val = 65}}},--夏侯渊19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 6202.89},[2] = {id = 102,val = 3076.09},[3] = {id = 103,val = 33897.5}},UpAttr = {[1] = {id = 101,val = 148.47},[2] = {id = 102,val = 74.24},[3] = {id = 103,val = 666.9}},RosterAttr = {AtkExt = 92497,DefExt = 46205,HPExt = 393863},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603011,val = 225},[4] = {id = 1603014,val = 75}}}--夏侯渊20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702008,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702008,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702008,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702008,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702008,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--夏侯渊
	[1102009] = {
		IfEntreVersion = 1,
		Name = "徐晃",
		NickName = "红莲狱焰",
		NamePic = "ui_dtex_Name_1102009",
		NickNamePic = "ui_dtex_Name2_1102009",
		Tag = {101},
		Type = 2,
		Quality = 3,
		CrystalType = 2,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 3,
		CallCD = 5,
		Skill = {[1] = 1303009},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702009,val = 80}},
		DebrisID = 1702009,
		ComposeNum = 80,
		CardFace = "cardface_xh_1102009",
		Head2 = "head_xh_1102009",
		HeadBig = "headbig_xh_1102009",
		Icon = "head_xh_1102009",
		Painting = "draw_xh_1102009",
		Cutin = "cutin_xh_1102009",
		GachaDialogue = "gacha_xh_1102009",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 612,
		InitSkill = 2008,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 80.5},[2] = {id = 102,val = 23},[3] = {id = 103,val = 172.5}},UpAttr = {[1] = {id = 101,val = 2.88},[2] = {id = 102,val = 1.44},[3] = {id = 103,val = 12.65}},RosterAttr = {AtkExt = 92529,DefExt = 46221,HPExt = 394006}},--徐晃1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 131.1},[2] = {id = 102,val = 43.13},[3] = {id = 103,val = 442.75}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 20.7}},RosterAttr = {AtkExt = 92581,DefExt = 46247,HPExt = 394240},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--徐晃2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 226.55},[2] = {id = 102,val = 90.28},[3] = {id = 103,val = 991.3}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 31.05}},RosterAttr = {AtkExt = 92659,DefExt = 46286,HPExt = 394591},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--徐晃3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 318.9},[2] = {id = 102,val = 136.45},[3] = {id = 103,val = 1508.8}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 41.4}},RosterAttr = {AtkExt = 92763,DefExt = 46338,HPExt = 395059},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 65}}},--徐晃4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 439.65},[2] = {id = 102,val = 197.4},[3] = {id = 103,val = 2181.55}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 92893,DefExt = 46403,HPExt = 395644},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603006,val = 85}}},--徐晃5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 590.53},[2] = {id = 102,val = 273.41},[3] = {id = 103,val = 3019.9}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 64.4}},RosterAttr = {AtkExt = 93055,DefExt = 46484,HPExt = 396372},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603006,val = 110}}},--徐晃6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 779.47},[2] = {id = 102,val = 368.46},[3] = {id = 103,val = 4067.55}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 80.5}},RosterAttr = {AtkExt = 93259,DefExt = 46586,HPExt = 397282},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603006,val = 130}}},--徐晃7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1017.52},[2] = {id = 102,val = 487.49},[3] = {id = 103,val = 5390.05}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 103.5}},RosterAttr = {AtkExt = 93519,DefExt = 46716,HPExt = 398452},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 55}}},--徐晃8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1165.87},[2] = {id = 102,val = 561.09},[3] = {id = 103,val = 6207.7}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 119.6}},RosterAttr = {AtkExt = 93819,DefExt = 46866,HPExt = 399804},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603009,val = 95}}},--徐晃9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1336.76},[2] = {id = 102,val = 647.11},[3] = {id = 103,val = 7147.25}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 138}},RosterAttr = {AtkExt = 94166,DefExt = 47039,HPExt = 401364},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603009,val = 145}}},--徐晃10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1535.37},[2] = {id = 102,val = 745.83},[3] = {id = 103,val = 8240.9}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 159.85}},RosterAttr = {AtkExt = 94567,DefExt = 47239,HPExt = 403171},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603009,val = 185}}},--徐晃11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1764.79},[2] = {id = 102,val = 859.97},[3] = {id = 103,val = 9505.9}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 184}},RosterAttr = {AtkExt = 95031,DefExt = 47471,HPExt = 405251},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603009,val = 225}}},--徐晃12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2030.1},[2] = {id = 102,val = 992.62},[3] = {id = 103,val = 10964.1}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 212.75}},RosterAttr = {AtkExt = 95568,DefExt = 47739,HPExt = 407656},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603009,val = 265}}},--徐晃13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2336.74},[2] = {id = 102,val = 1145.95},[3] = {id = 103,val = 12648.85}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 247.25}},RosterAttr = {AtkExt = 96189,DefExt = 48049,HPExt = 410451},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603012,val = 45}}},--徐晃14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2690.94},[2] = {id = 102,val = 1323.62},[3] = {id = 103,val = 14599.25}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 285.2}},RosterAttr = {AtkExt = 96907,DefExt = 48408,HPExt = 413675},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603012,val = 70}}},--徐晃15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3100.75},[2] = {id = 102,val = 1528.52},[3] = {id = 103,val = 16853.25}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 330.05}},RosterAttr = {AtkExt = 97737,DefExt = 48823,HPExt = 417406},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 100},[4] = {id = 1603014,val = 25}}},--徐晃16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3574.03},[2] = {id = 102,val = 1765.16},[3] = {id = 103,val = 19455.7}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 381.8}},RosterAttr = {AtkExt = 98697,DefExt = 49303,HPExt = 421722},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603012,val = 125},[4] = {id = 1603014,val = 35}}},--徐晃17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4122},[2] = {id = 102,val = 2038.58},[3] = {id = 103,val = 22472.15}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 441.6}},RosterAttr = {AtkExt = 99807,DefExt = 49858,HPExt = 426714},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603012,val = 155},[4] = {id = 1603014,val = 50}}},--徐晃18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4754.68},[2] = {id = 102,val = 2355.49},[3] = {id = 103,val = 25953.2}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 510.6}},RosterAttr = {AtkExt = 101091,DefExt = 50500,HPExt = 432486},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603012,val = 180},[4] = {id = 1603014,val = 65}}},--徐晃19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5487.17},[2] = {id = 102,val = 2721.16},[3] = {id = 103,val = 29986.25}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 589.95}},RosterAttr = {AtkExt = 102575,DefExt = 51242,HPExt = 439155},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603012,val = 225},[4] = {id = 1603014,val = 75}}}--徐晃20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702009,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702009,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702009,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702009,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702009,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--徐晃
	[1102010] = {
		IfEntreVersion = 1,
		Name = "张郃",
		NickName = "暗影修罗",
		NamePic = "ui_dtex_Name_1102010",
		NickNamePic = "ui_dtex_Name2_1102010",
		Tag = {101},
		Type = 2,
		Quality = 5,
		CrystalType = 1,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303010},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702010,val = 80}},
		DebrisID = 1702010,
		ComposeNum = 80,
		CardFace = "cardface_zh_1102010",
		Head2 = "head_zh_1102010",
		HeadBig = "headbig_zh_1102010",
		Icon = "head_zh_1102010",
		Painting = "draw_zh_1102010",
		Cutin = "cutin_zh_1102010",
		GachaDialogue = "gacha_zh_1102010",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 610,
		InitSkill = 2009,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 91},[2] = {id = 102,val = 26},[3] = {id = 103,val = 195}},UpAttr = {[1] = {id = 101,val = 3.25},[2] = {id = 102,val = 1.63},[3] = {id = 103,val = 14.3}},RosterAttr = {AtkExt = 102612,DefExt = 51260,HPExt = 439320}},--张郃1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 148.2},[2] = {id = 102,val = 48.75},[3] = {id = 103,val = 500.5}},UpAttr = {[1] = {id = 101,val = 5.2},[2] = {id = 102,val = 2.6},[3] = {id = 103,val = 23.4}},RosterAttr = {AtkExt = 102672,DefExt = 51290,HPExt = 439590},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--张郃2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 256.1},[2] = {id = 102,val = 102.05},[3] = {id = 103,val = 1120.6}},UpAttr = {[1] = {id = 101,val = 7.84},[2] = {id = 102,val = 3.92},[3] = {id = 103,val = 35.1}},RosterAttr = {AtkExt = 102762,DefExt = 51335,HPExt = 439995},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--张郃3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 360.49},[2] = {id = 102,val = 154.25},[3] = {id = 103,val = 1705.6}},UpAttr = {[1] = {id = 101,val = 10.4},[2] = {id = 102,val = 5.2},[3] = {id = 103,val = 46.8}},RosterAttr = {AtkExt = 102882,DefExt = 51395,HPExt = 440535},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 65}}},--张郃4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 496.99},[2] = {id = 102,val = 223.15},[3] = {id = 103,val = 2466.1}},UpAttr = {[1] = {id = 101,val = 13.03},[2] = {id = 102,val = 6.51},[3] = {id = 103,val = 58.5}},RosterAttr = {AtkExt = 103032,DefExt = 51470,HPExt = 441210},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603007,val = 85}}},--张郃5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 667.55},[2] = {id = 102,val = 309.08},[3] = {id = 103,val = 3413.8}},UpAttr = {[1] = {id = 101,val = 16.29},[2] = {id = 102,val = 8.14},[3] = {id = 103,val = 72.8}},RosterAttr = {AtkExt = 103220,DefExt = 51564,HPExt = 442050},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603007,val = 110}}},--张郃6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 881.14},[2] = {id = 102,val = 416.52},[3] = {id = 103,val = 4598.1}},UpAttr = {[1] = {id = 101,val = 20.41},[2] = {id = 102,val = 10.21},[3] = {id = 103,val = 91}},RosterAttr = {AtkExt = 103455,DefExt = 51681,HPExt = 443100},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603007,val = 130}}},--张郃7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1150.24},[2] = {id = 102,val = 551.07},[3] = {id = 103,val = 6093.1}},UpAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 13},[3] = {id = 103,val = 117}},RosterAttr = {AtkExt = 103755,DefExt = 51831,HPExt = 444450},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 55}}},--张郃8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1317.94},[2] = {id = 102,val = 634.27},[3] = {id = 103,val = 7017.4}},UpAttr = {[1] = {id = 101,val = 30.06},[2] = {id = 102,val = 15.03},[3] = {id = 103,val = 135.2}},RosterAttr = {AtkExt = 104101,DefExt = 52004,HPExt = 446010},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603010,val = 95}}},--张郃9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1511.12},[2] = {id = 102,val = 731.51},[3] = {id = 103,val = 8079.5}},UpAttr = {[1] = {id = 101,val = 34.76},[2] = {id = 102,val = 17.38},[3] = {id = 103,val = 156}},RosterAttr = {AtkExt = 104502,DefExt = 52204,HPExt = 447810},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603010,val = 145}}},--张郃10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1735.63},[2] = {id = 102,val = 843.12},[3] = {id = 103,val = 9315.8}},UpAttr = {[1] = {id = 101,val = 40.17},[2] = {id = 102,val = 20.09},[3] = {id = 103,val = 180.7}},RosterAttr = {AtkExt = 104965,DefExt = 52435,HPExt = 449895},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603010,val = 185}}},--张郃11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1994.98},[2] = {id = 102,val = 972.14},[3] = {id = 103,val = 10745.8}},UpAttr = {[1] = {id = 101,val = 46.46},[2] = {id = 102,val = 23.23},[3] = {id = 103,val = 208}},RosterAttr = {AtkExt = 105501,DefExt = 52703,HPExt = 452295},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603010,val = 225}}},--张郃12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2294.89},[2] = {id = 102,val = 1122.1},[3] = {id = 103,val = 12394.2}},UpAttr = {[1] = {id = 101,val = 53.73},[2] = {id = 102,val = 26.86},[3] = {id = 103,val = 240.5}},RosterAttr = {AtkExt = 106121,DefExt = 53013,HPExt = 455070},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603010,val = 265}}},--张郃13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2641.54},[2] = {id = 102,val = 1295.42},[3] = {id = 103,val = 14298.7}},UpAttr = {[1] = {id = 101,val = 62.14},[2] = {id = 102,val = 31.07},[3] = {id = 103,val = 279.5}},RosterAttr = {AtkExt = 106838,DefExt = 53371,HPExt = 458295},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603013,val = 45}}},--张郃14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 3041.94},[2] = {id = 102,val = 1496.27},[3] = {id = 103,val = 16503.5}},UpAttr = {[1] = {id = 101,val = 71.85},[2] = {id = 102,val = 35.93},[3] = {id = 103,val = 322.4}},RosterAttr = {AtkExt = 107667,DefExt = 53785,HPExt = 462015},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603013,val = 70}}},--张郃15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3505.19},[2] = {id = 102,val = 1727.9},[3] = {id = 103,val = 19051.5}},UpAttr = {[1] = {id = 101,val = 83.08},[2] = {id = 102,val = 41.54},[3] = {id = 103,val = 373.1}},RosterAttr = {AtkExt = 108625,DefExt = 54264,HPExt = 466320},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 100},[4] = {id = 1603014,val = 25}}},--张郃16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 4040.21},[2] = {id = 102,val = 1995.4},[3] = {id = 103,val = 21993.4}},UpAttr = {[1] = {id = 101,val = 96.07},[2] = {id = 102,val = 48.04},[3] = {id = 103,val = 431.6}},RosterAttr = {AtkExt = 109733,DefExt = 54818,HPExt = 471300},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603013,val = 125},[4] = {id = 1603014,val = 35}}},--张郃17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4659.66},[2] = {id = 102,val = 2304.48},[3] = {id = 103,val = 25403.3}},UpAttr = {[1] = {id = 101,val = 111.06},[2] = {id = 102,val = 55.53},[3] = {id = 103,val = 499.2}},RosterAttr = {AtkExt = 111014,DefExt = 55458,HPExt = 477060},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603013,val = 155},[4] = {id = 1603014,val = 50}}},--张郃18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 5374.85},[2] = {id = 102,val = 2662.73},[3] = {id = 103,val = 29338.4}},UpAttr = {[1] = {id = 101,val = 128.43},[2] = {id = 102,val = 64.21},[3] = {id = 103,val = 577.2}},RosterAttr = {AtkExt = 112495,DefExt = 56198,HPExt = 483720},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603013,val = 180},[4] = {id = 1603014,val = 65}}},--张郃19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 6202.89},[2] = {id = 102,val = 3076.09},[3] = {id = 103,val = 33897.5}},UpAttr = {[1] = {id = 101,val = 148.47},[2] = {id = 102,val = 74.24},[3] = {id = 103,val = 666.9}},RosterAttr = {AtkExt = 114208,DefExt = 57054,HPExt = 491415},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603013,val = 225},[4] = {id = 1603014,val = 75}}}--张郃20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702010,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702010,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702010,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702010,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702010,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--张郃
	[1102011] = {
		IfEntreVersion = 1,
		Name = "张飞",
		NickName = "万人敌",
		NamePic = "ui_dtex_Name_1102011",
		NickNamePic = "ui_dtex_Name2_1102011",
		Tag = {101,104},
		Type = 2,
		Quality = 4,
		CrystalType = 3,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 3,
		CallCD = 5,
		Skill = {[1] = 1303011},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702011,val = 80}},
		DebrisID = 1702011,
		ComposeNum = 80,
		CardFace = "cardface_zf_1102011",
		Head2 = "head_zf_1102011",
		HeadBig = "headbig_zf_1102011",
		Icon = "head_zf_1102011",
		Painting = "draw_zf_1102011",
		Cutin = "cutin_zf_1102011",
		GachaDialogue = "gacha_zf_1102011",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 616,
		InitSkill = 2010,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 91},[2] = {id = 102,val = 26},[3] = {id = 103,val = 195}},UpAttr = {[1] = {id = 101,val = 3.25},[2] = {id = 102,val = 1.63},[3] = {id = 103,val = 14.3}},RosterAttr = {AtkExt = 114245,DefExt = 57072,HPExt = 491580}},--张飞1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 148.2},[2] = {id = 102,val = 48.75},[3] = {id = 103,val = 500.5}},UpAttr = {[1] = {id = 101,val = 5.2},[2] = {id = 102,val = 2.6},[3] = {id = 103,val = 23.4}},RosterAttr = {AtkExt = 114305,DefExt = 57102,HPExt = 491850},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--张飞2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 256.1},[2] = {id = 102,val = 102.05},[3] = {id = 103,val = 1120.6}},UpAttr = {[1] = {id = 101,val = 7.84},[2] = {id = 102,val = 3.92},[3] = {id = 103,val = 35.1}},RosterAttr = {AtkExt = 114395,DefExt = 57147,HPExt = 492255},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--张飞3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 360.49},[2] = {id = 102,val = 154.25},[3] = {id = 103,val = 1705.6}},UpAttr = {[1] = {id = 101,val = 10.4},[2] = {id = 102,val = 5.2},[3] = {id = 103,val = 46.8}},RosterAttr = {AtkExt = 114515,DefExt = 57207,HPExt = 492795},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 65}}},--张飞4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 496.99},[2] = {id = 102,val = 223.15},[3] = {id = 103,val = 2466.1}},UpAttr = {[1] = {id = 101,val = 13.03},[2] = {id = 102,val = 6.51},[3] = {id = 103,val = 58.5}},RosterAttr = {AtkExt = 114665,DefExt = 57282,HPExt = 493470},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603006,val = 85}}},--张飞5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 667.55},[2] = {id = 102,val = 309.08},[3] = {id = 103,val = 3413.8}},UpAttr = {[1] = {id = 101,val = 16.29},[2] = {id = 102,val = 8.14},[3] = {id = 103,val = 72.8}},RosterAttr = {AtkExt = 114853,DefExt = 57376,HPExt = 494310},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603006,val = 110}}},--张飞6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 881.14},[2] = {id = 102,val = 416.52},[3] = {id = 103,val = 4598.1}},UpAttr = {[1] = {id = 101,val = 20.41},[2] = {id = 102,val = 10.21},[3] = {id = 103,val = 91}},RosterAttr = {AtkExt = 115088,DefExt = 57493,HPExt = 495360},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603006,val = 130}}},--张飞7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1150.24},[2] = {id = 102,val = 551.07},[3] = {id = 103,val = 6093.1}},UpAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 13},[3] = {id = 103,val = 117}},RosterAttr = {AtkExt = 115388,DefExt = 57643,HPExt = 496710},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 55}}},--张飞8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1317.94},[2] = {id = 102,val = 634.27},[3] = {id = 103,val = 7017.4}},UpAttr = {[1] = {id = 101,val = 30.06},[2] = {id = 102,val = 15.03},[3] = {id = 103,val = 135.2}},RosterAttr = {AtkExt = 115734,DefExt = 57816,HPExt = 498270},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603009,val = 95}}},--张飞9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1511.12},[2] = {id = 102,val = 731.51},[3] = {id = 103,val = 8079.5}},UpAttr = {[1] = {id = 101,val = 34.76},[2] = {id = 102,val = 17.38},[3] = {id = 103,val = 156}},RosterAttr = {AtkExt = 116135,DefExt = 58016,HPExt = 500070},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603009,val = 145}}},--张飞10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1735.63},[2] = {id = 102,val = 843.12},[3] = {id = 103,val = 9315.8}},UpAttr = {[1] = {id = 101,val = 40.17},[2] = {id = 102,val = 20.09},[3] = {id = 103,val = 180.7}},RosterAttr = {AtkExt = 116598,DefExt = 58247,HPExt = 502155},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603009,val = 185}}},--张飞11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1994.98},[2] = {id = 102,val = 972.14},[3] = {id = 103,val = 10745.8}},UpAttr = {[1] = {id = 101,val = 46.46},[2] = {id = 102,val = 23.23},[3] = {id = 103,val = 208}},RosterAttr = {AtkExt = 117134,DefExt = 58515,HPExt = 504555},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603009,val = 225}}},--张飞12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2294.89},[2] = {id = 102,val = 1122.1},[3] = {id = 103,val = 12394.2}},UpAttr = {[1] = {id = 101,val = 53.73},[2] = {id = 102,val = 26.86},[3] = {id = 103,val = 240.5}},RosterAttr = {AtkExt = 117754,DefExt = 58825,HPExt = 507330},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603009,val = 265}}},--张飞13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2641.54},[2] = {id = 102,val = 1295.42},[3] = {id = 103,val = 14298.7}},UpAttr = {[1] = {id = 101,val = 62.14},[2] = {id = 102,val = 31.07},[3] = {id = 103,val = 279.5}},RosterAttr = {AtkExt = 118471,DefExt = 59183,HPExt = 510555},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603012,val = 45}}},--张飞14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 3041.94},[2] = {id = 102,val = 1496.27},[3] = {id = 103,val = 16503.5}},UpAttr = {[1] = {id = 101,val = 71.85},[2] = {id = 102,val = 35.93},[3] = {id = 103,val = 322.4}},RosterAttr = {AtkExt = 119300,DefExt = 59597,HPExt = 514275},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603012,val = 70}}},--张飞15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3505.19},[2] = {id = 102,val = 1727.9},[3] = {id = 103,val = 19051.5}},UpAttr = {[1] = {id = 101,val = 83.08},[2] = {id = 102,val = 41.54},[3] = {id = 103,val = 373.1}},RosterAttr = {AtkExt = 120258,DefExt = 60076,HPExt = 518580},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 100},[4] = {id = 1603014,val = 25}}},--张飞16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 4040.21},[2] = {id = 102,val = 1995.4},[3] = {id = 103,val = 21993.4}},UpAttr = {[1] = {id = 101,val = 96.07},[2] = {id = 102,val = 48.04},[3] = {id = 103,val = 431.6}},RosterAttr = {AtkExt = 121366,DefExt = 60630,HPExt = 523560},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603012,val = 125},[4] = {id = 1603014,val = 35}}},--张飞17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4659.66},[2] = {id = 102,val = 2304.48},[3] = {id = 103,val = 25403.3}},UpAttr = {[1] = {id = 101,val = 111.06},[2] = {id = 102,val = 55.53},[3] = {id = 103,val = 499.2}},RosterAttr = {AtkExt = 122647,DefExt = 61270,HPExt = 529320},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603012,val = 155},[4] = {id = 1603014,val = 50}}},--张飞18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 5374.85},[2] = {id = 102,val = 2662.73},[3] = {id = 103,val = 29338.4}},UpAttr = {[1] = {id = 101,val = 128.43},[2] = {id = 102,val = 64.21},[3] = {id = 103,val = 577.2}},RosterAttr = {AtkExt = 124128,DefExt = 62010,HPExt = 535980},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603012,val = 180},[4] = {id = 1603014,val = 65}}},--张飞19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 6202.89},[2] = {id = 102,val = 3076.09},[3] = {id = 103,val = 33897.5}},UpAttr = {[1] = {id = 101,val = 148.47},[2] = {id = 102,val = 74.24},[3] = {id = 103,val = 666.9}},RosterAttr = {AtkExt = 125841,DefExt = 62866,HPExt = 543675},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603012,val = 225},[4] = {id = 1603014,val = 75}}}--张飞20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702011,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702011,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702011,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702011,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702011,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--张飞
	[1102012] = {
		IfEntreVersion = 1,
		Name = "夏侯惇",
		NickName = "独目苍狼",
		NamePic = "ui_dtex_Name_1102012",
		NickNamePic = "ui_dtex_Name2_1102012",
		Tag = {101},
		Type = 2,
		Quality = 5,
		CrystalType = 1,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303012},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702012,val = 80}},
		DebrisID = 1702012,
		ComposeNum = 80,
		CardFace = "cardface_xhd_1102012",
		Head2 = "head_xhd_1102012",
		HeadBig = "headbig_xhd_1102012",
		Icon = "head_xhd_1102012",
		Painting = "draw_xhd_1102012",
		Cutin = "cutin_xhd_1102012",
		GachaDialogue = "gacha_xhd_1102012",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 610,
		InitSkill = 2011,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 105},[2] = {id = 102,val = 30},[3] = {id = 103,val = 225}},UpAttr = {[1] = {id = 101,val = 3.75},[2] = {id = 102,val = 1.88},[3] = {id = 103,val = 16.5}},RosterAttr = {AtkExt = 125878,DefExt = 62884,HPExt = 543840}},--夏侯惇1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 171},[2] = {id = 102,val = 56.25},[3] = {id = 103,val = 577.5}},UpAttr = {[1] = {id = 101,val = 6},[2] = {id = 102,val = 3},[3] = {id = 103,val = 27}},RosterAttr = {AtkExt = 125938,DefExt = 62914,HPExt = 544110},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--夏侯惇2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 295.5},[2] = {id = 102,val = 117.75},[3] = {id = 103,val = 1293}},UpAttr = {[1] = {id = 101,val = 9.05},[2] = {id = 102,val = 4.52},[3] = {id = 103,val = 40.5}},RosterAttr = {AtkExt = 126028,DefExt = 62959,HPExt = 544515},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--夏侯惇3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 415.95},[2] = {id = 102,val = 177.98},[3] = {id = 103,val = 1968}},UpAttr = {[1] = {id = 101,val = 12},[2] = {id = 102,val = 6},[3] = {id = 103,val = 54}},RosterAttr = {AtkExt = 126148,DefExt = 63019,HPExt = 545055},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 65}}},--夏侯惇4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 573.45},[2] = {id = 102,val = 257.48},[3] = {id = 103,val = 2845.5}},UpAttr = {[1] = {id = 101,val = 15.03},[2] = {id = 102,val = 7.52},[3] = {id = 103,val = 67.5}},RosterAttr = {AtkExt = 126298,DefExt = 63094,HPExt = 545730},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603005,val = 85}}},--夏侯惇5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 770.25},[2] = {id = 102,val = 356.63},[3] = {id = 103,val = 3939}},UpAttr = {[1] = {id = 101,val = 18.8},[2] = {id = 102,val = 9.4},[3] = {id = 103,val = 84}},RosterAttr = {AtkExt = 126486,DefExt = 63188,HPExt = 546570},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603005,val = 110}}},--夏侯惇6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 1016.7},[2] = {id = 102,val = 480.6},[3] = {id = 103,val = 5305.5}},UpAttr = {[1] = {id = 101,val = 23.55},[2] = {id = 102,val = 11.78},[3] = {id = 103,val = 105}},RosterAttr = {AtkExt = 126721,DefExt = 63305,HPExt = 547620},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603005,val = 130}}},--夏侯惇7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1327.2},[2] = {id = 102,val = 635.85},[3] = {id = 103,val = 7030.5}},UpAttr = {[1] = {id = 101,val = 30},[2] = {id = 102,val = 15},[3] = {id = 103,val = 135}},RosterAttr = {AtkExt = 127021,DefExt = 63455,HPExt = 548970},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 55}}},--夏侯惇8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1520.7},[2] = {id = 102,val = 731.85},[3] = {id = 103,val = 8097}},UpAttr = {[1] = {id = 101,val = 34.68},[2] = {id = 102,val = 17.34},[3] = {id = 103,val = 156}},RosterAttr = {AtkExt = 127367,DefExt = 63628,HPExt = 550530},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603008,val = 95}}},--夏侯惇9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1743.6},[2] = {id = 102,val = 844.05},[3] = {id = 103,val = 9322.5}},UpAttr = {[1] = {id = 101,val = 40.11},[2] = {id = 102,val = 20.06},[3] = {id = 103,val = 180}},RosterAttr = {AtkExt = 127768,DefExt = 63828,HPExt = 552330},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603008,val = 145}}},--夏侯惇10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 2002.65},[2] = {id = 102,val = 972.83},[3] = {id = 103,val = 10749}},UpAttr = {[1] = {id = 101,val = 46.35},[2] = {id = 102,val = 23.18},[3] = {id = 103,val = 208.5}},RosterAttr = {AtkExt = 128231,DefExt = 64059,HPExt = 554415},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603008,val = 185}}},--夏侯惇11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 2301.9},[2] = {id = 102,val = 1121.7},[3] = {id = 103,val = 12399}},UpAttr = {[1] = {id = 101,val = 53.61},[2] = {id = 102,val = 26.81},[3] = {id = 103,val = 240}},RosterAttr = {AtkExt = 128767,DefExt = 64327,HPExt = 556815},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603008,val = 225}}},--夏侯惇12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2647.95},[2] = {id = 102,val = 1294.73},[3] = {id = 103,val = 14301}},UpAttr = {[1] = {id = 101,val = 62},[2] = {id = 102,val = 31},[3] = {id = 103,val = 277.5}},RosterAttr = {AtkExt = 129387,DefExt = 64637,HPExt = 559590},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603008,val = 265}}},--夏侯惇13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 3047.93},[2] = {id = 102,val = 1494.71},[3] = {id = 103,val = 16498.5}},UpAttr = {[1] = {id = 101,val = 71.7},[2] = {id = 102,val = 35.85},[3] = {id = 103,val = 322.5}},RosterAttr = {AtkExt = 130104,DefExt = 64995,HPExt = 562815},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603011,val = 45}}},--夏侯惇14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 3509.93},[2] = {id = 102,val = 1726.46},[3] = {id = 103,val = 19042.5}},UpAttr = {[1] = {id = 101,val = 82.91},[2] = {id = 102,val = 41.45},[3] = {id = 103,val = 372}},RosterAttr = {AtkExt = 130933,DefExt = 65409,HPExt = 566535},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603011,val = 70}}},--夏侯惇15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 4044.45},[2] = {id = 102,val = 1993.73},[3] = {id = 103,val = 21982.5}},UpAttr = {[1] = {id = 101,val = 95.87},[2] = {id = 102,val = 47.93},[3] = {id = 103,val = 430.5}},RosterAttr = {AtkExt = 131891,DefExt = 65888,HPExt = 570840},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 100},[4] = {id = 1603014,val = 25}}},--夏侯惇16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 4661.78},[2] = {id = 102,val = 2302.39},[3] = {id = 103,val = 25377}},UpAttr = {[1] = {id = 101,val = 110.85},[2] = {id = 102,val = 55.43},[3] = {id = 103,val = 498}},RosterAttr = {AtkExt = 132999,DefExt = 66442,HPExt = 575820},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603011,val = 125},[4] = {id = 1603014,val = 35}}},--夏侯惇17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 5376.53},[2] = {id = 102,val = 2659.01},[3] = {id = 103,val = 29311.5}},UpAttr = {[1] = {id = 101,val = 128.15},[2] = {id = 102,val = 64.07},[3] = {id = 103,val = 576}},RosterAttr = {AtkExt = 134280,DefExt = 67082,HPExt = 581580},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603011,val = 155},[4] = {id = 1603014,val = 50}}},--夏侯惇18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 6201.75},[2] = {id = 102,val = 3072.38},[3] = {id = 103,val = 33852}},UpAttr = {[1] = {id = 101,val = 148.19},[2] = {id = 102,val = 74.09},[3] = {id = 103,val = 666}},RosterAttr = {AtkExt = 135761,DefExt = 67822,HPExt = 588240},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603011,val = 180},[4] = {id = 1603014,val = 65}}},--夏侯惇19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 7157.18},[2] = {id = 102,val = 3549.34},[3] = {id = 103,val = 39112.5}},UpAttr = {[1] = {id = 101,val = 171.32},[2] = {id = 102,val = 85.66},[3] = {id = 103,val = 769.5}},RosterAttr = {AtkExt = 137474,DefExt = 68678,HPExt = 595935},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603011,val = 225},[4] = {id = 1603014,val = 75}}}--夏侯惇20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702012,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702012,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702012,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702012,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702012,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--夏侯惇
	[1102013] = {
		IfEntreVersion = 1,
		Name = "塞伯洛斯",
		NickName = "地狱犬",
		NamePic = "ui_dtex_Name_1102013",
		NickNamePic = "ui_dtex_Name2_1102013",
		Tag = {101},
		Type = 2,
		Quality = 2,
		CrystalType = 3,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303013},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702013,val = 20}},
		DebrisID = 1702013,
		ComposeNum = 20,
		CardFace = "cardface_sbls_1102013",
		Head2 = "head_sbls_1102013",
		HeadBig = "headbig_sbls_1102013",
		Icon = "head_sbls_1102013",
		Painting = "draw_sbls_1102013",
		Cutin = "cutin_sbls_1102013",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 616,
		InitSkill = 2012,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 70},[2] = {id = 102,val = 20},[3] = {id = 103,val = 150}},UpAttr = {[1] = {id = 101,val = 2.5},[2] = {id = 102,val = 1.25},[3] = {id = 103,val = 11}},RosterAttr = {AtkExt = 137499,DefExt = 68690,HPExt = 596045}},--塞伯罗斯1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 114},[2] = {id = 102,val = 37.5},[3] = {id = 103,val = 385}},UpAttr = {[1] = {id = 101,val = 4},[2] = {id = 102,val = 2},[3] = {id = 103,val = 18}},RosterAttr = {AtkExt = 137539,DefExt = 68710,HPExt = 596225},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--塞伯罗斯2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 197},[2] = {id = 102,val = 78.5},[3] = {id = 103,val = 862}},UpAttr = {[1] = {id = 101,val = 6.03},[2] = {id = 102,val = 3.02},[3] = {id = 103,val = 27}},RosterAttr = {AtkExt = 137599,DefExt = 68740,HPExt = 596495},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--塞伯罗斯3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 277.3},[2] = {id = 102,val = 118.65},[3] = {id = 103,val = 1312}},UpAttr = {[1] = {id = 101,val = 8},[2] = {id = 102,val = 4},[3] = {id = 103,val = 36}},RosterAttr = {AtkExt = 137679,DefExt = 68780,HPExt = 596855},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 65}}},--塞伯罗斯4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 382.3},[2] = {id = 102,val = 171.65},[3] = {id = 103,val = 1897}},UpAttr = {[1] = {id = 101,val = 10.02},[2] = {id = 102,val = 5.01},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 137779,DefExt = 68830,HPExt = 597305},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603007,val = 85}}},--塞伯罗斯5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 513.5},[2] = {id = 102,val = 237.75},[3] = {id = 103,val = 2626}},UpAttr = {[1] = {id = 101,val = 12.53},[2] = {id = 102,val = 6.27},[3] = {id = 103,val = 56}},RosterAttr = {AtkExt = 137904,DefExt = 68892,HPExt = 597865},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603007,val = 110}}},--塞伯罗斯6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 677.8},[2] = {id = 102,val = 320.4},[3] = {id = 103,val = 3537}},UpAttr = {[1] = {id = 101,val = 15.7},[2] = {id = 102,val = 7.85},[3] = {id = 103,val = 70}},RosterAttr = {AtkExt = 138061,DefExt = 68970,HPExt = 598565},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603007,val = 130}}},--塞伯罗斯7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 884.8},[2] = {id = 102,val = 423.9},[3] = {id = 103,val = 4687}},UpAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 10},[3] = {id = 103,val = 90}},RosterAttr = {AtkExt = 138261,DefExt = 69070,HPExt = 599465},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 55}}},--塞伯罗斯8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1013.8},[2] = {id = 102,val = 487.9},[3] = {id = 103,val = 5398}},UpAttr = {[1] = {id = 101,val = 23.12},[2] = {id = 102,val = 11.56},[3] = {id = 103,val = 104}},RosterAttr = {AtkExt = 138492,DefExt = 69185,HPExt = 600505},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603010,val = 95}}},--塞伯罗斯9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1162.4},[2] = {id = 102,val = 562.7},[3] = {id = 103,val = 6215}},UpAttr = {[1] = {id = 101,val = 26.74},[2] = {id = 102,val = 13.37},[3] = {id = 103,val = 120}},RosterAttr = {AtkExt = 138759,DefExt = 69318,HPExt = 601705},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603010,val = 145}}},--塞伯罗斯10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1335.1},[2] = {id = 102,val = 648.55},[3] = {id = 103,val = 7166}},UpAttr = {[1] = {id = 101,val = 30.9},[2] = {id = 102,val = 15.45},[3] = {id = 103,val = 139}},RosterAttr = {AtkExt = 139068,DefExt = 69472,HPExt = 603095},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603010,val = 185}}},--塞伯罗斯11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1534.6},[2] = {id = 102,val = 747.8},[3] = {id = 103,val = 8266}},UpAttr = {[1] = {id = 101,val = 35.74},[2] = {id = 102,val = 17.87},[3] = {id = 103,val = 160}},RosterAttr = {AtkExt = 139425,DefExt = 69650,HPExt = 604695},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603010,val = 225}}},--塞伯罗斯12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1765.3},[2] = {id = 102,val = 863.15},[3] = {id = 103,val = 9534}},UpAttr = {[1] = {id = 101,val = 41.33},[2] = {id = 102,val = 20.67},[3] = {id = 103,val = 185}},RosterAttr = {AtkExt = 139838,DefExt = 69856,HPExt = 606545},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603010,val = 265}}},--塞伯罗斯13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2031.95},[2] = {id = 102,val = 996.48},[3] = {id = 103,val = 10999}},UpAttr = {[1] = {id = 101,val = 47.8},[2] = {id = 102,val = 23.9},[3] = {id = 103,val = 215}},RosterAttr = {AtkExt = 140316,DefExt = 70095,HPExt = 608695},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603013,val = 45}}},--塞伯罗斯14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2339.95},[2] = {id = 102,val = 1150.98},[3] = {id = 103,val = 12695}},UpAttr = {[1] = {id = 101,val = 55.27},[2] = {id = 102,val = 27.64},[3] = {id = 103,val = 248}},RosterAttr = {AtkExt = 140868,DefExt = 70371,HPExt = 611175},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603013,val = 70}}},--塞伯罗斯15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2696.3},[2] = {id = 102,val = 1329.15},[3] = {id = 103,val = 14655}},UpAttr = {[1] = {id = 101,val = 63.91},[2] = {id = 102,val = 31.96},[3] = {id = 103,val = 287}},RosterAttr = {AtkExt = 141507,DefExt = 70690,HPExt = 614045},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 100},[4] = {id = 1603014,val = 25}}},--塞伯罗斯16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3107.85},[2] = {id = 102,val = 1534.93},[3] = {id = 103,val = 16918}},UpAttr = {[1] = {id = 101,val = 73.9},[2] = {id = 102,val = 36.95},[3] = {id = 103,val = 332}},RosterAttr = {AtkExt = 142246,DefExt = 71059,HPExt = 617365},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603013,val = 125},[4] = {id = 1603014,val = 35}}},--塞伯罗斯17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3584.35},[2] = {id = 102,val = 1772.68},[3] = {id = 103,val = 19541}},UpAttr = {[1] = {id = 101,val = 85.43},[2] = {id = 102,val = 42.72},[3] = {id = 103,val = 384}},RosterAttr = {AtkExt = 143100,DefExt = 71486,HPExt = 621205},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603013,val = 155},[4] = {id = 1603014,val = 50}}},--塞伯罗斯18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4134.5},[2] = {id = 102,val = 2048.25},[3] = {id = 103,val = 22568}},UpAttr = {[1] = {id = 101,val = 98.79},[2] = {id = 102,val = 49.4},[3] = {id = 103,val = 444}},RosterAttr = {AtkExt = 144087,DefExt = 71980,HPExt = 625645},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603013,val = 180},[4] = {id = 1603014,val = 65}}},--塞伯罗斯19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 4771.45},[2] = {id = 102,val = 2366.23},[3] = {id = 103,val = 26075}},UpAttr = {[1] = {id = 101,val = 114.21},[2] = {id = 102,val = 57.11},[3] = {id = 103,val = 513}},RosterAttr = {AtkExt = 145229,DefExt = 72551,HPExt = 630775},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603013,val = 225},[4] = {id = 1603014,val = 75}}}--塞伯罗斯20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702013,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702013,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702013,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702013,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702013,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}},PSkill = 130301121}
		}
	},--塞伯罗斯
	[1102014] = {
		IfEntreVersion = 1,
		Name = "石灵明",
		NickName = "悟道灵猿",
		NamePic = "ui_dtex_Name_1102014",
		NickNamePic = "ui_dtex_Name2_1102014",
		Tag = {101},
		Type = 2,
		Quality = 3,
		CrystalType = 1,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303014},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702014,val = 40}},
		DebrisID = 1702014,
		ComposeNum = 40,
		CardFace = "cardface_slm_1102014",
		Head2 = "head_slm_1102014",
		HeadBig = "headbig_slm_1102014",
		Icon = "head_slm_1102014",
		Painting = "draw_slm_1102014",
		Cutin = "cutin_slm_1102014",
		GachaDialogue = "gacha_slm_1102014",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 610,
		InitSkill = 2013,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 80.5},[2] = {id = 102,val = 23},[3] = {id = 103,val = 172.5}},UpAttr = {[1] = {id = 101,val = 2.88},[2] = {id = 102,val = 1.44},[3] = {id = 103,val = 12.65}},RosterAttr = {AtkExt = 145261,DefExt = 72567,HPExt = 630918}},--石灵明1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 131.1},[2] = {id = 102,val = 43.13},[3] = {id = 103,val = 442.75}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 20.7}},RosterAttr = {AtkExt = 145313,DefExt = 72593,HPExt = 631152},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--石灵明2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 226.55},[2] = {id = 102,val = 90.28},[3] = {id = 103,val = 991.3}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 31.05}},RosterAttr = {AtkExt = 145391,DefExt = 72632,HPExt = 631503},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--石灵明3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 318.9},[2] = {id = 102,val = 136.45},[3] = {id = 103,val = 1508.8}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 41.4}},RosterAttr = {AtkExt = 145495,DefExt = 72684,HPExt = 631971},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 65}}},--石灵明4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 439.65},[2] = {id = 102,val = 197.4},[3] = {id = 103,val = 2181.55}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 145625,DefExt = 72749,HPExt = 632556},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603005,val = 85}}},--石灵明5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 590.53},[2] = {id = 102,val = 273.41},[3] = {id = 103,val = 3019.9}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 64.4}},RosterAttr = {AtkExt = 145787,DefExt = 72830,HPExt = 633284},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603005,val = 110}}},--石灵明6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 779.47},[2] = {id = 102,val = 368.46},[3] = {id = 103,val = 4067.55}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 80.5}},RosterAttr = {AtkExt = 145991,DefExt = 72932,HPExt = 634194},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603005,val = 130}}},--石灵明7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1017.52},[2] = {id = 102,val = 487.49},[3] = {id = 103,val = 5390.05}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 103.5}},RosterAttr = {AtkExt = 146251,DefExt = 73062,HPExt = 635364},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 55}}},--石灵明8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1165.87},[2] = {id = 102,val = 561.09},[3] = {id = 103,val = 6207.7}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 119.6}},RosterAttr = {AtkExt = 146551,DefExt = 73212,HPExt = 636716},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603008,val = 95}}},--石灵明9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1336.76},[2] = {id = 102,val = 647.11},[3] = {id = 103,val = 7147.25}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 138}},RosterAttr = {AtkExt = 146898,DefExt = 73385,HPExt = 638276},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603008,val = 145}}},--石灵明10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1535.37},[2] = {id = 102,val = 745.83},[3] = {id = 103,val = 8240.9}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 159.85}},RosterAttr = {AtkExt = 147299,DefExt = 73585,HPExt = 640083},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603008,val = 185}}},--石灵明11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1764.79},[2] = {id = 102,val = 859.97},[3] = {id = 103,val = 9505.9}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 184}},RosterAttr = {AtkExt = 147763,DefExt = 73817,HPExt = 642163},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603008,val = 225}}},--石灵明12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2030.1},[2] = {id = 102,val = 992.62},[3] = {id = 103,val = 10964.1}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 212.75}},RosterAttr = {AtkExt = 148300,DefExt = 74085,HPExt = 644568},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603008,val = 265}}},--石灵明13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2336.74},[2] = {id = 102,val = 1145.95},[3] = {id = 103,val = 12648.85}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 247.25}},RosterAttr = {AtkExt = 148921,DefExt = 74395,HPExt = 647363},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603011,val = 45}}},--石灵明14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2690.94},[2] = {id = 102,val = 1323.62},[3] = {id = 103,val = 14599.25}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 285.2}},RosterAttr = {AtkExt = 149639,DefExt = 74754,HPExt = 650587},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603011,val = 70}}},--石灵明15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3100.75},[2] = {id = 102,val = 1528.52},[3] = {id = 103,val = 16853.25}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 330.05}},RosterAttr = {AtkExt = 150469,DefExt = 75169,HPExt = 654318},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 100},[4] = {id = 1603014,val = 25}}},--石灵明16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3574.03},[2] = {id = 102,val = 1765.16},[3] = {id = 103,val = 19455.7}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 381.8}},RosterAttr = {AtkExt = 151429,DefExt = 75649,HPExt = 658634},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603011,val = 125},[4] = {id = 1603014,val = 35}}},--石灵明17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4122},[2] = {id = 102,val = 2038.58},[3] = {id = 103,val = 22472.15}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 441.6}},RosterAttr = {AtkExt = 152539,DefExt = 76204,HPExt = 663626},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603011,val = 155},[4] = {id = 1603014,val = 50}}},--石灵明18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4754.68},[2] = {id = 102,val = 2355.49},[3] = {id = 103,val = 25953.2}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 510.6}},RosterAttr = {AtkExt = 153823,DefExt = 76846,HPExt = 669398},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603011,val = 180},[4] = {id = 1603014,val = 65}}},--石灵明19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5487.17},[2] = {id = 102,val = 2721.16},[3] = {id = 103,val = 29986.25}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 589.95}},RosterAttr = {AtkExt = 155307,DefExt = 77588,HPExt = 676067},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603011,val = 225},[4] = {id = 1603014,val = 75}}}--石灵明20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702014,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702014,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702014,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702014,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702014,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--石灵明
	[1102015] = {
		IfEntreVersion = 1,
		Name = "于禁",
		NickName = "魏武之刚",
		NamePic = "ui_dtex_Name_1102015",
		NickNamePic = "ui_dtex_Name2_1102015",
		Tag = {101},
		Type = 2,
		Quality = 2,
		CrystalType = 2,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303015},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702015,val = 20}},
		DebrisID = 1702015,
		ComposeNum = 20,
		CardFace = "cardface_yj_1102015",
		Head2 = "head_yj_1102015",
		HeadBig = "headbig_yj_1102015",
		Icon = "head_yj_1102015",
		Painting = "draw_yj_1102015",
		Cutin = "cutin_yj_1102015",
		PaintingPos = {x = 208.7,y = -5.5},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 612,
		InitSkill = 2014,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 70},[2] = {id = 102,val = 20},[3] = {id = 103,val = 150}},UpAttr = {[1] = {id = 101,val = 2.5},[2] = {id = 102,val = 1.25},[3] = {id = 103,val = 11}},RosterAttr = {AtkExt = 155332,DefExt = 77600,HPExt = 676177}},--于禁1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 114},[2] = {id = 102,val = 37.5},[3] = {id = 103,val = 385}},UpAttr = {[1] = {id = 101,val = 4},[2] = {id = 102,val = 2},[3] = {id = 103,val = 18}},RosterAttr = {AtkExt = 155372,DefExt = 77620,HPExt = 676357},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--于禁2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 197},[2] = {id = 102,val = 78.5},[3] = {id = 103,val = 862}},UpAttr = {[1] = {id = 101,val = 6.03},[2] = {id = 102,val = 3.02},[3] = {id = 103,val = 27}},RosterAttr = {AtkExt = 155432,DefExt = 77650,HPExt = 676627},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--于禁3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 277.3},[2] = {id = 102,val = 118.65},[3] = {id = 103,val = 1312}},UpAttr = {[1] = {id = 101,val = 8},[2] = {id = 102,val = 4},[3] = {id = 103,val = 36}},RosterAttr = {AtkExt = 155512,DefExt = 77690,HPExt = 676987},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 65}}},--于禁4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 382.3},[2] = {id = 102,val = 171.65},[3] = {id = 103,val = 1897}},UpAttr = {[1] = {id = 101,val = 10.02},[2] = {id = 102,val = 5.01},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 155612,DefExt = 77740,HPExt = 677437},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603006,val = 85}}},--于禁5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 513.5},[2] = {id = 102,val = 237.75},[3] = {id = 103,val = 2626}},UpAttr = {[1] = {id = 101,val = 12.53},[2] = {id = 102,val = 6.27},[3] = {id = 103,val = 56}},RosterAttr = {AtkExt = 155737,DefExt = 77802,HPExt = 677997},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603006,val = 110}}},--于禁6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 677.8},[2] = {id = 102,val = 320.4},[3] = {id = 103,val = 3537}},UpAttr = {[1] = {id = 101,val = 15.7},[2] = {id = 102,val = 7.85},[3] = {id = 103,val = 70}},RosterAttr = {AtkExt = 155894,DefExt = 77880,HPExt = 678697},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603006,val = 130}}},--于禁7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 884.8},[2] = {id = 102,val = 423.9},[3] = {id = 103,val = 4687}},UpAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 10},[3] = {id = 103,val = 90}},RosterAttr = {AtkExt = 156094,DefExt = 77980,HPExt = 679597},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 55}}},--于禁8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1013.8},[2] = {id = 102,val = 487.9},[3] = {id = 103,val = 5398}},UpAttr = {[1] = {id = 101,val = 23.12},[2] = {id = 102,val = 11.56},[3] = {id = 103,val = 104}},RosterAttr = {AtkExt = 156325,DefExt = 78095,HPExt = 680637},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603009,val = 95}}},--于禁9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1162.4},[2] = {id = 102,val = 562.7},[3] = {id = 103,val = 6215}},UpAttr = {[1] = {id = 101,val = 26.74},[2] = {id = 102,val = 13.37},[3] = {id = 103,val = 120}},RosterAttr = {AtkExt = 156592,DefExt = 78228,HPExt = 681837},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603009,val = 145}}},--于禁10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1335.1},[2] = {id = 102,val = 648.55},[3] = {id = 103,val = 7166}},UpAttr = {[1] = {id = 101,val = 30.9},[2] = {id = 102,val = 15.45},[3] = {id = 103,val = 139}},RosterAttr = {AtkExt = 156901,DefExt = 78382,HPExt = 683227},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603009,val = 185}}},--于禁11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1534.6},[2] = {id = 102,val = 747.8},[3] = {id = 103,val = 8266}},UpAttr = {[1] = {id = 101,val = 35.74},[2] = {id = 102,val = 17.87},[3] = {id = 103,val = 160}},RosterAttr = {AtkExt = 157258,DefExt = 78560,HPExt = 684827},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603009,val = 225}}},--于禁12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1765.3},[2] = {id = 102,val = 863.15},[3] = {id = 103,val = 9534}},UpAttr = {[1] = {id = 101,val = 41.33},[2] = {id = 102,val = 20.67},[3] = {id = 103,val = 185}},RosterAttr = {AtkExt = 157671,DefExt = 78766,HPExt = 686677},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603009,val = 265}}},--于禁13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2031.95},[2] = {id = 102,val = 996.48},[3] = {id = 103,val = 10999}},UpAttr = {[1] = {id = 101,val = 47.8},[2] = {id = 102,val = 23.9},[3] = {id = 103,val = 215}},RosterAttr = {AtkExt = 158149,DefExt = 79005,HPExt = 688827},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603012,val = 45}}},--于禁14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2339.95},[2] = {id = 102,val = 1150.98},[3] = {id = 103,val = 12695}},UpAttr = {[1] = {id = 101,val = 55.27},[2] = {id = 102,val = 27.64},[3] = {id = 103,val = 248}},RosterAttr = {AtkExt = 158701,DefExt = 79281,HPExt = 691307},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603012,val = 70}}},--于禁15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2696.3},[2] = {id = 102,val = 1329.15},[3] = {id = 103,val = 14655}},UpAttr = {[1] = {id = 101,val = 63.91},[2] = {id = 102,val = 31.96},[3] = {id = 103,val = 287}},RosterAttr = {AtkExt = 159340,DefExt = 79600,HPExt = 694177},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 100},[4] = {id = 1603014,val = 25}}},--于禁16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3107.85},[2] = {id = 102,val = 1534.93},[3] = {id = 103,val = 16918}},UpAttr = {[1] = {id = 101,val = 73.9},[2] = {id = 102,val = 36.95},[3] = {id = 103,val = 332}},RosterAttr = {AtkExt = 160079,DefExt = 79969,HPExt = 697497},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603012,val = 125},[4] = {id = 1603014,val = 35}}},--于禁17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3584.35},[2] = {id = 102,val = 1772.68},[3] = {id = 103,val = 19541}},UpAttr = {[1] = {id = 101,val = 85.43},[2] = {id = 102,val = 42.72},[3] = {id = 103,val = 384}},RosterAttr = {AtkExt = 160933,DefExt = 80396,HPExt = 701337},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603012,val = 155},[4] = {id = 1603014,val = 50}}},--于禁18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4134.5},[2] = {id = 102,val = 2048.25},[3] = {id = 103,val = 22568}},UpAttr = {[1] = {id = 101,val = 98.79},[2] = {id = 102,val = 49.4},[3] = {id = 103,val = 444}},RosterAttr = {AtkExt = 161920,DefExt = 80890,HPExt = 705777},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603012,val = 180},[4] = {id = 1603014,val = 65}}},--于禁19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 4771.45},[2] = {id = 102,val = 2366.23},[3] = {id = 103,val = 26075}},UpAttr = {[1] = {id = 101,val = 114.21},[2] = {id = 102,val = 57.11},[3] = {id = 103,val = 513}},RosterAttr = {AtkExt = 163062,DefExt = 81461,HPExt = 710907},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603012,val = 225},[4] = {id = 1603014,val = 75}}}--于禁20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702015,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702015,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702015,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702015,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702015,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--于禁
	[1102016] = {
		IfEntreVersion = 1,
		Name = "提亚马特",
		NickName = "天神圣灵",
		NamePic = "ui_dtex_Name_1102016",
		NickNamePic = "ui_dtex_Name2_1102016",
		Tag = {101},
		Type = 2,
		Quality = 4,
		CrystalType = 3,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303016},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702016,val = 80}},
		DebrisID = 1702016,
		ComposeNum = 80,
		CardFace = "cardface_xfl_1102016",
		Head2 = "head_xfl_1102016",
		HeadBig = "headbig_xfl_1102016",
		Icon = "head_xfl_1102016",
		Painting = "draw_xfl_1102016",
		Cutin = "cutin_xfl_1102016",
		GachaDialogue = "gacha_xfl_1102016",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 616,
		InitSkill = 2015,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 91},[2] = {id = 102,val = 26},[3] = {id = 103,val = 195}},UpAttr = {[1] = {id = 101,val = 3.25},[2] = {id = 102,val = 1.63},[3] = {id = 103,val = 14.3}},RosterAttr = {AtkExt = 163099,DefExt = 81479,HPExt = 711072}},--西方龙1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 148.2},[2] = {id = 102,val = 48.75},[3] = {id = 103,val = 500.5}},UpAttr = {[1] = {id = 101,val = 5.2},[2] = {id = 102,val = 2.6},[3] = {id = 103,val = 23.4}},RosterAttr = {AtkExt = 163159,DefExt = 81509,HPExt = 711342},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--西方龙2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 256.1},[2] = {id = 102,val = 102.05},[3] = {id = 103,val = 1120.6}},UpAttr = {[1] = {id = 101,val = 7.84},[2] = {id = 102,val = 3.92},[3] = {id = 103,val = 35.1}},RosterAttr = {AtkExt = 163249,DefExt = 81554,HPExt = 711747},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--西方龙3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 360.49},[2] = {id = 102,val = 154.25},[3] = {id = 103,val = 1705.6}},UpAttr = {[1] = {id = 101,val = 10.4},[2] = {id = 102,val = 5.2},[3] = {id = 103,val = 46.8}},RosterAttr = {AtkExt = 163369,DefExt = 81614,HPExt = 712287},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 65}}},--西方龙4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 496.99},[2] = {id = 102,val = 223.15},[3] = {id = 103,val = 2466.1}},UpAttr = {[1] = {id = 101,val = 13.03},[2] = {id = 102,val = 6.51},[3] = {id = 103,val = 58.5}},RosterAttr = {AtkExt = 163519,DefExt = 81689,HPExt = 712962},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603007,val = 85}}},--西方龙5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 667.55},[2] = {id = 102,val = 309.08},[3] = {id = 103,val = 3413.8}},UpAttr = {[1] = {id = 101,val = 16.29},[2] = {id = 102,val = 8.14},[3] = {id = 103,val = 72.8}},RosterAttr = {AtkExt = 163707,DefExt = 81783,HPExt = 713802},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603007,val = 110}}},--西方龙6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 881.14},[2] = {id = 102,val = 416.52},[3] = {id = 103,val = 4598.1}},UpAttr = {[1] = {id = 101,val = 20.41},[2] = {id = 102,val = 10.21},[3] = {id = 103,val = 91}},RosterAttr = {AtkExt = 163942,DefExt = 81900,HPExt = 714852},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603007,val = 130}}},--西方龙7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1150.24},[2] = {id = 102,val = 551.07},[3] = {id = 103,val = 6093.1}},UpAttr = {[1] = {id = 101,val = 26},[2] = {id = 102,val = 13},[3] = {id = 103,val = 117}},RosterAttr = {AtkExt = 164242,DefExt = 82050,HPExt = 716202},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 55}}},--西方龙8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1317.94},[2] = {id = 102,val = 634.27},[3] = {id = 103,val = 7017.4}},UpAttr = {[1] = {id = 101,val = 30.06},[2] = {id = 102,val = 15.03},[3] = {id = 103,val = 135.2}},RosterAttr = {AtkExt = 164588,DefExt = 82223,HPExt = 717762},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603010,val = 95}}},--西方龙9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1511.12},[2] = {id = 102,val = 731.51},[3] = {id = 103,val = 8079.5}},UpAttr = {[1] = {id = 101,val = 34.76},[2] = {id = 102,val = 17.38},[3] = {id = 103,val = 156}},RosterAttr = {AtkExt = 164989,DefExt = 82423,HPExt = 719562},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603010,val = 145}}},--西方龙10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1735.63},[2] = {id = 102,val = 843.12},[3] = {id = 103,val = 9315.8}},UpAttr = {[1] = {id = 101,val = 40.17},[2] = {id = 102,val = 20.09},[3] = {id = 103,val = 180.7}},RosterAttr = {AtkExt = 165452,DefExt = 82654,HPExt = 721647},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603010,val = 185}}},--西方龙11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1994.98},[2] = {id = 102,val = 972.14},[3] = {id = 103,val = 10745.8}},UpAttr = {[1] = {id = 101,val = 46.46},[2] = {id = 102,val = 23.23},[3] = {id = 103,val = 208}},RosterAttr = {AtkExt = 165988,DefExt = 82922,HPExt = 724047},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603010,val = 225}}},--西方龙12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2294.89},[2] = {id = 102,val = 1122.1},[3] = {id = 103,val = 12394.2}},UpAttr = {[1] = {id = 101,val = 53.73},[2] = {id = 102,val = 26.86},[3] = {id = 103,val = 240.5}},RosterAttr = {AtkExt = 166608,DefExt = 83232,HPExt = 726822},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603010,val = 265}}},--西方龙13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2641.54},[2] = {id = 102,val = 1295.42},[3] = {id = 103,val = 14298.7}},UpAttr = {[1] = {id = 101,val = 62.14},[2] = {id = 102,val = 31.07},[3] = {id = 103,val = 279.5}},RosterAttr = {AtkExt = 167325,DefExt = 83590,HPExt = 730047},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603013,val = 45}}},--西方龙14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 3041.94},[2] = {id = 102,val = 1496.27},[3] = {id = 103,val = 16503.5}},UpAttr = {[1] = {id = 101,val = 71.85},[2] = {id = 102,val = 35.93},[3] = {id = 103,val = 322.4}},RosterAttr = {AtkExt = 168154,DefExt = 84004,HPExt = 733767},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603013,val = 70}}},--西方龙15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3505.19},[2] = {id = 102,val = 1727.9},[3] = {id = 103,val = 19051.5}},UpAttr = {[1] = {id = 101,val = 83.08},[2] = {id = 102,val = 41.54},[3] = {id = 103,val = 373.1}},RosterAttr = {AtkExt = 169112,DefExt = 84483,HPExt = 738072},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 100},[4] = {id = 1603014,val = 25}}},--西方龙16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 4040.21},[2] = {id = 102,val = 1995.4},[3] = {id = 103,val = 21993.4}},UpAttr = {[1] = {id = 101,val = 96.07},[2] = {id = 102,val = 48.04},[3] = {id = 103,val = 431.6}},RosterAttr = {AtkExt = 170220,DefExt = 85037,HPExt = 743052},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603013,val = 125},[4] = {id = 1603014,val = 35}}},--西方龙17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4659.66},[2] = {id = 102,val = 2304.48},[3] = {id = 103,val = 25403.3}},UpAttr = {[1] = {id = 101,val = 111.06},[2] = {id = 102,val = 55.53},[3] = {id = 103,val = 499.2}},RosterAttr = {AtkExt = 171501,DefExt = 85677,HPExt = 748812},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603013,val = 155},[4] = {id = 1603014,val = 50}}},--西方龙18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 5374.85},[2] = {id = 102,val = 2662.73},[3] = {id = 103,val = 29338.4}},UpAttr = {[1] = {id = 101,val = 128.43},[2] = {id = 102,val = 64.21},[3] = {id = 103,val = 577.2}},RosterAttr = {AtkExt = 172982,DefExt = 86417,HPExt = 755472},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603013,val = 180},[4] = {id = 1603014,val = 65}}},--西方龙19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 6202.89},[2] = {id = 102,val = 3076.09},[3] = {id = 103,val = 33897.5}},UpAttr = {[1] = {id = 101,val = 148.47},[2] = {id = 102,val = 74.24},[3] = {id = 103,val = 666.9}},RosterAttr = {AtkExt = 174695,DefExt = 87273,HPExt = 763167},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603013,val = 225},[4] = {id = 1603014,val = 75}}}--西方龙20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702016,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702016,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702016,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702016,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702016,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--西方龙
	[1102017] = {
		IfEntreVersion = 1,
		Name = "飞廉",
		NickName = "风魔兽",
		NamePic = "ui_dtex_Name_1102017",
		NickNamePic = "ui_dtex_Name2_1102017",
		Tag = {101},
		Type = 2,
		Quality = 3,
		CrystalType = 2,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303017},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702017,val = 40}},
		DebrisID = 1702017,
		ComposeNum = 40,
		CardFace = "cardface_fl_1102017",
		Head2 = "head_fl_1102017",
		HeadBig = "headbig_fl_1102017",
		Icon = "head_fl_1102017",
		Painting = "draw_fl_1102017",
		Cutin = "cutin_fl_1102017",
		GachaDialogue = "gacha_fl_1102017",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 612,
		InitSkill = 2016,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 80.5},[2] = {id = 102,val = 23},[3] = {id = 103,val = 172.5}},UpAttr = {[1] = {id = 101,val = 2.88},[2] = {id = 102,val = 1.44},[3] = {id = 103,val = 12.65}},RosterAttr = {AtkExt = 174727,DefExt = 87289,HPExt = 763310}},--飞廉1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 131.1},[2] = {id = 102,val = 43.13},[3] = {id = 103,val = 442.75}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 20.7}},RosterAttr = {AtkExt = 174779,DefExt = 87315,HPExt = 763544},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--飞廉2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 226.55},[2] = {id = 102,val = 90.28},[3] = {id = 103,val = 991.3}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 31.05}},RosterAttr = {AtkExt = 174857,DefExt = 87354,HPExt = 763895},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--飞廉3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 318.9},[2] = {id = 102,val = 136.45},[3] = {id = 103,val = 1508.8}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 41.4}},RosterAttr = {AtkExt = 174961,DefExt = 87406,HPExt = 764363},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 65}}},--飞廉4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 439.65},[2] = {id = 102,val = 197.4},[3] = {id = 103,val = 2181.55}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 175091,DefExt = 87471,HPExt = 764948},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603007,val = 85}}},--飞廉5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 590.53},[2] = {id = 102,val = 273.41},[3] = {id = 103,val = 3019.9}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 64.4}},RosterAttr = {AtkExt = 175253,DefExt = 87552,HPExt = 765676},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603007,val = 110}}},--飞廉6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 779.47},[2] = {id = 102,val = 368.46},[3] = {id = 103,val = 4067.55}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 80.5}},RosterAttr = {AtkExt = 175457,DefExt = 87654,HPExt = 766586},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603007,val = 130}}},--飞廉7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1017.52},[2] = {id = 102,val = 487.49},[3] = {id = 103,val = 5390.05}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 103.5}},RosterAttr = {AtkExt = 175717,DefExt = 87784,HPExt = 767756},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 55}}},--飞廉8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1165.87},[2] = {id = 102,val = 561.09},[3] = {id = 103,val = 6207.7}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 119.6}},RosterAttr = {AtkExt = 176017,DefExt = 87934,HPExt = 769108},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603010,val = 95}}},--飞廉9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1336.76},[2] = {id = 102,val = 647.11},[3] = {id = 103,val = 7147.25}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 138}},RosterAttr = {AtkExt = 176364,DefExt = 88107,HPExt = 770668},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603010,val = 145}}},--飞廉10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1535.37},[2] = {id = 102,val = 745.83},[3] = {id = 103,val = 8240.9}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 159.85}},RosterAttr = {AtkExt = 176765,DefExt = 88307,HPExt = 772475},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603010,val = 185}}},--飞廉11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1764.79},[2] = {id = 102,val = 859.97},[3] = {id = 103,val = 9505.9}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 184}},RosterAttr = {AtkExt = 177229,DefExt = 88539,HPExt = 774555},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603010,val = 225}}},--飞廉12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2030.1},[2] = {id = 102,val = 992.62},[3] = {id = 103,val = 10964.1}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 212.75}},RosterAttr = {AtkExt = 177766,DefExt = 88807,HPExt = 776960},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603010,val = 265}}},--飞廉13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2336.74},[2] = {id = 102,val = 1145.95},[3] = {id = 103,val = 12648.85}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 247.25}},RosterAttr = {AtkExt = 178387,DefExt = 89117,HPExt = 779755},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603013,val = 45}}},--飞廉14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2690.94},[2] = {id = 102,val = 1323.62},[3] = {id = 103,val = 14599.25}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 285.2}},RosterAttr = {AtkExt = 179105,DefExt = 89476,HPExt = 782979},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603013,val = 70}}},--飞廉15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3100.75},[2] = {id = 102,val = 1528.52},[3] = {id = 103,val = 16853.25}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 330.05}},RosterAttr = {AtkExt = 179935,DefExt = 89891,HPExt = 786710},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 100},[4] = {id = 1603014,val = 25}}},--飞廉16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3574.03},[2] = {id = 102,val = 1765.16},[3] = {id = 103,val = 19455.7}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 381.8}},RosterAttr = {AtkExt = 180895,DefExt = 90371,HPExt = 791026},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603013,val = 125},[4] = {id = 1603014,val = 35}}},--飞廉17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4122},[2] = {id = 102,val = 2038.58},[3] = {id = 103,val = 22472.15}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 441.6}},RosterAttr = {AtkExt = 182005,DefExt = 90926,HPExt = 796018},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603013,val = 155},[4] = {id = 1603014,val = 50}}},--飞廉18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4754.68},[2] = {id = 102,val = 2355.49},[3] = {id = 103,val = 25953.2}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 510.6}},RosterAttr = {AtkExt = 183289,DefExt = 91568,HPExt = 801790},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603013,val = 180},[4] = {id = 1603014,val = 65}}},--飞廉19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5487.17},[2] = {id = 102,val = 2721.16},[3] = {id = 103,val = 29986.25}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 589.95}},RosterAttr = {AtkExt = 184773,DefExt = 92310,HPExt = 808459},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603013,val = 225},[4] = {id = 1603014,val = 75}}}--飞廉20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702017,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702017,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702017,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702017,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702017,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--飞廉
	[1102018] = {
		IfEntreVersion = 1,
		Name = "噬日",
		NickName = "饕餮",
		NamePic = "ui_dtex_Name_1102018",
		NickNamePic = "ui_dtex_Name2_1102018",
		Tag = {101},
		Type = 2,
		Quality = 2,
		CrystalType = 2,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303018},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702018,val = 20}},
		DebrisID = 1702018,
		ComposeNum = 20,
		CardFace = "cardface_sr_1102018",
		Head2 = "head_sr_1102018",
		HeadBig = "headbig_sr_1102018",
		Icon = "head_sr_1102018",
		Painting = "draw_sr_1102018",
		Cutin = "cutin_sr_1102018",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 612,
		InitSkill = 2017,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 70},[2] = {id = 102,val = 20},[3] = {id = 103,val = 150}},UpAttr = {[1] = {id = 101,val = 2.5},[2] = {id = 102,val = 1.25},[3] = {id = 103,val = 11}},RosterAttr = {AtkExt = 184798,DefExt = 92322,HPExt = 808569}},--噬日1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 114},[2] = {id = 102,val = 37.5},[3] = {id = 103,val = 385}},UpAttr = {[1] = {id = 101,val = 4},[2] = {id = 102,val = 2},[3] = {id = 103,val = 18}},RosterAttr = {AtkExt = 184838,DefExt = 92342,HPExt = 808749},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--噬日2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 197},[2] = {id = 102,val = 78.5},[3] = {id = 103,val = 862}},UpAttr = {[1] = {id = 101,val = 6.03},[2] = {id = 102,val = 3.02},[3] = {id = 103,val = 27}},RosterAttr = {AtkExt = 184898,DefExt = 92372,HPExt = 809019},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--噬日3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 277.3},[2] = {id = 102,val = 118.65},[3] = {id = 103,val = 1312}},UpAttr = {[1] = {id = 101,val = 8},[2] = {id = 102,val = 4},[3] = {id = 103,val = 36}},RosterAttr = {AtkExt = 184978,DefExt = 92412,HPExt = 809379},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 65}}},--噬日4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 382.3},[2] = {id = 102,val = 171.65},[3] = {id = 103,val = 1897}},UpAttr = {[1] = {id = 101,val = 10.02},[2] = {id = 102,val = 5.01},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 185078,DefExt = 92462,HPExt = 809829},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603006,val = 85}}},--噬日5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 513.5},[2] = {id = 102,val = 237.75},[3] = {id = 103,val = 2626}},UpAttr = {[1] = {id = 101,val = 12.53},[2] = {id = 102,val = 6.27},[3] = {id = 103,val = 56}},RosterAttr = {AtkExt = 185203,DefExt = 92524,HPExt = 810389},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603006,val = 110}}},--噬日6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 677.8},[2] = {id = 102,val = 320.4},[3] = {id = 103,val = 3537}},UpAttr = {[1] = {id = 101,val = 15.7},[2] = {id = 102,val = 7.85},[3] = {id = 103,val = 70}},RosterAttr = {AtkExt = 185360,DefExt = 92602,HPExt = 811089},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603006,val = 130}}},--噬日7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 884.8},[2] = {id = 102,val = 423.9},[3] = {id = 103,val = 4687}},UpAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 10},[3] = {id = 103,val = 90}},RosterAttr = {AtkExt = 185560,DefExt = 92702,HPExt = 811989},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 55}}},--噬日8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1013.8},[2] = {id = 102,val = 487.9},[3] = {id = 103,val = 5398}},UpAttr = {[1] = {id = 101,val = 23.12},[2] = {id = 102,val = 11.56},[3] = {id = 103,val = 104}},RosterAttr = {AtkExt = 185791,DefExt = 92817,HPExt = 813029},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603009,val = 95}}},--噬日9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1162.4},[2] = {id = 102,val = 562.7},[3] = {id = 103,val = 6215}},UpAttr = {[1] = {id = 101,val = 26.74},[2] = {id = 102,val = 13.37},[3] = {id = 103,val = 120}},RosterAttr = {AtkExt = 186058,DefExt = 92950,HPExt = 814229},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603009,val = 145}}},--噬日10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1335.1},[2] = {id = 102,val = 648.55},[3] = {id = 103,val = 7166}},UpAttr = {[1] = {id = 101,val = 30.9},[2] = {id = 102,val = 15.45},[3] = {id = 103,val = 139}},RosterAttr = {AtkExt = 186367,DefExt = 93104,HPExt = 815619},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603009,val = 185}}},--噬日11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1534.6},[2] = {id = 102,val = 747.8},[3] = {id = 103,val = 8266}},UpAttr = {[1] = {id = 101,val = 35.74},[2] = {id = 102,val = 17.87},[3] = {id = 103,val = 160}},RosterAttr = {AtkExt = 186724,DefExt = 93282,HPExt = 817219},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603009,val = 225}}},--噬日12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1765.3},[2] = {id = 102,val = 863.15},[3] = {id = 103,val = 9534}},UpAttr = {[1] = {id = 101,val = 41.33},[2] = {id = 102,val = 20.67},[3] = {id = 103,val = 185}},RosterAttr = {AtkExt = 187137,DefExt = 93488,HPExt = 819069},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603009,val = 265}}},--噬日13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2031.95},[2] = {id = 102,val = 996.48},[3] = {id = 103,val = 10999}},UpAttr = {[1] = {id = 101,val = 47.8},[2] = {id = 102,val = 23.9},[3] = {id = 103,val = 215}},RosterAttr = {AtkExt = 187615,DefExt = 93727,HPExt = 821219},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603012,val = 45}}},--噬日14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2339.95},[2] = {id = 102,val = 1150.98},[3] = {id = 103,val = 12695}},UpAttr = {[1] = {id = 101,val = 55.27},[2] = {id = 102,val = 27.64},[3] = {id = 103,val = 248}},RosterAttr = {AtkExt = 188167,DefExt = 94003,HPExt = 823699},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603012,val = 70}}},--噬日15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2696.3},[2] = {id = 102,val = 1329.15},[3] = {id = 103,val = 14655}},UpAttr = {[1] = {id = 101,val = 63.91},[2] = {id = 102,val = 31.96},[3] = {id = 103,val = 287}},RosterAttr = {AtkExt = 188806,DefExt = 94322,HPExt = 826569},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 100},[4] = {id = 1603014,val = 25}}},--噬日16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3107.85},[2] = {id = 102,val = 1534.93},[3] = {id = 103,val = 16918}},UpAttr = {[1] = {id = 101,val = 73.9},[2] = {id = 102,val = 36.95},[3] = {id = 103,val = 332}},RosterAttr = {AtkExt = 189545,DefExt = 94691,HPExt = 829889},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603012,val = 125},[4] = {id = 1603014,val = 35}}},--噬日17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3584.35},[2] = {id = 102,val = 1772.68},[3] = {id = 103,val = 19541}},UpAttr = {[1] = {id = 101,val = 85.43},[2] = {id = 102,val = 42.72},[3] = {id = 103,val = 384}},RosterAttr = {AtkExt = 190399,DefExt = 95118,HPExt = 833729},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603012,val = 155},[4] = {id = 1603014,val = 50}}},--噬日18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4134.5},[2] = {id = 102,val = 2048.25},[3] = {id = 103,val = 22568}},UpAttr = {[1] = {id = 101,val = 98.79},[2] = {id = 102,val = 49.4},[3] = {id = 103,val = 444}},RosterAttr = {AtkExt = 191386,DefExt = 95612,HPExt = 838169},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603012,val = 180},[4] = {id = 1603014,val = 65}}},--噬日19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 4771.45},[2] = {id = 102,val = 2366.23},[3] = {id = 103,val = 26075}},UpAttr = {[1] = {id = 101,val = 114.21},[2] = {id = 102,val = 57.11},[3] = {id = 103,val = 513}},RosterAttr = {AtkExt = 192528,DefExt = 96183,HPExt = 843299},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603012,val = 225},[4] = {id = 1603014,val = 75}}}--噬日20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702018,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702018,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702018,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702018,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702018,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--噬日
	[1102019] = {
		IfEntreVersion = 1,
		Name = "食火蜥",
		NickName = "火焰吞噬者",
		NamePic = "ui_dtex_Name_1102019",
		NickNamePic = "ui_dtex_Name2_1102019",
		Tag = {101},
		Type = 2,
		Quality = 2,
		CrystalType = 1,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 3,
		CallCD = 5,
		Skill = {[1] = 1303019},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702019,val = 20}},
		DebrisID = 1702019,
		ComposeNum = 20,
		CardFace = "cardface_shx_1102019",
		Head2 = "head_shx_1102019",
		HeadBig = "headbig_shx_1102019",
		Icon = "head_shx_1102019",
		Painting = "draw_shx_1102019",
		Cutin = "cutin_shx_1102019",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 610,
		InitSkill = 2018,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 70},[2] = {id = 102,val = 20},[3] = {id = 103,val = 150}},UpAttr = {[1] = {id = 101,val = 2.5},[2] = {id = 102,val = 1.25},[3] = {id = 103,val = 11}},RosterAttr = {AtkExt = 192553,DefExt = 96195,HPExt = 843409}},--食火蜥1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 114},[2] = {id = 102,val = 37.5},[3] = {id = 103,val = 385}},UpAttr = {[1] = {id = 101,val = 4},[2] = {id = 102,val = 2},[3] = {id = 103,val = 18}},RosterAttr = {AtkExt = 192593,DefExt = 96215,HPExt = 843589},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--食火蜥2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 197},[2] = {id = 102,val = 78.5},[3] = {id = 103,val = 862}},UpAttr = {[1] = {id = 101,val = 6.03},[2] = {id = 102,val = 3.02},[3] = {id = 103,val = 27}},RosterAttr = {AtkExt = 192653,DefExt = 96245,HPExt = 843859},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--食火蜥3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 277.3},[2] = {id = 102,val = 118.65},[3] = {id = 103,val = 1312}},UpAttr = {[1] = {id = 101,val = 8},[2] = {id = 102,val = 4},[3] = {id = 103,val = 36}},RosterAttr = {AtkExt = 192733,DefExt = 96285,HPExt = 844219},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 65}}},--食火蜥4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 382.3},[2] = {id = 102,val = 171.65},[3] = {id = 103,val = 1897}},UpAttr = {[1] = {id = 101,val = 10.02},[2] = {id = 102,val = 5.01},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 192833,DefExt = 96335,HPExt = 844669},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603005,val = 85}}},--食火蜥5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 513.5},[2] = {id = 102,val = 237.75},[3] = {id = 103,val = 2626}},UpAttr = {[1] = {id = 101,val = 12.53},[2] = {id = 102,val = 6.27},[3] = {id = 103,val = 56}},RosterAttr = {AtkExt = 192958,DefExt = 96397,HPExt = 845229},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603005,val = 110}}},--食火蜥6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 677.8},[2] = {id = 102,val = 320.4},[3] = {id = 103,val = 3537}},UpAttr = {[1] = {id = 101,val = 15.7},[2] = {id = 102,val = 7.85},[3] = {id = 103,val = 70}},RosterAttr = {AtkExt = 193115,DefExt = 96475,HPExt = 845929},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603005,val = 130}}},--食火蜥7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 884.8},[2] = {id = 102,val = 423.9},[3] = {id = 103,val = 4687}},UpAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 10},[3] = {id = 103,val = 90}},RosterAttr = {AtkExt = 193315,DefExt = 96575,HPExt = 846829},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 55}}},--食火蜥8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1013.8},[2] = {id = 102,val = 487.9},[3] = {id = 103,val = 5398}},UpAttr = {[1] = {id = 101,val = 23.12},[2] = {id = 102,val = 11.56},[3] = {id = 103,val = 104}},RosterAttr = {AtkExt = 193546,DefExt = 96690,HPExt = 847869},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603008,val = 95}}},--食火蜥9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1162.4},[2] = {id = 102,val = 562.7},[3] = {id = 103,val = 6215}},UpAttr = {[1] = {id = 101,val = 26.74},[2] = {id = 102,val = 13.37},[3] = {id = 103,val = 120}},RosterAttr = {AtkExt = 193813,DefExt = 96823,HPExt = 849069},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603008,val = 145}}},--食火蜥10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1335.1},[2] = {id = 102,val = 648.55},[3] = {id = 103,val = 7166}},UpAttr = {[1] = {id = 101,val = 30.9},[2] = {id = 102,val = 15.45},[3] = {id = 103,val = 139}},RosterAttr = {AtkExt = 194122,DefExt = 96977,HPExt = 850459},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603008,val = 185}}},--食火蜥11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1534.6},[2] = {id = 102,val = 747.8},[3] = {id = 103,val = 8266}},UpAttr = {[1] = {id = 101,val = 35.74},[2] = {id = 102,val = 17.87},[3] = {id = 103,val = 160}},RosterAttr = {AtkExt = 194479,DefExt = 97155,HPExt = 852059},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603008,val = 225}}},--食火蜥12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1765.3},[2] = {id = 102,val = 863.15},[3] = {id = 103,val = 9534}},UpAttr = {[1] = {id = 101,val = 41.33},[2] = {id = 102,val = 20.67},[3] = {id = 103,val = 185}},RosterAttr = {AtkExt = 194892,DefExt = 97361,HPExt = 853909},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603008,val = 265}}},--食火蜥13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2031.95},[2] = {id = 102,val = 996.48},[3] = {id = 103,val = 10999}},UpAttr = {[1] = {id = 101,val = 47.8},[2] = {id = 102,val = 23.9},[3] = {id = 103,val = 215}},RosterAttr = {AtkExt = 195370,DefExt = 97600,HPExt = 856059},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603011,val = 45}}},--食火蜥14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2339.95},[2] = {id = 102,val = 1150.98},[3] = {id = 103,val = 12695}},UpAttr = {[1] = {id = 101,val = 55.27},[2] = {id = 102,val = 27.64},[3] = {id = 103,val = 248}},RosterAttr = {AtkExt = 195922,DefExt = 97876,HPExt = 858539},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603011,val = 70}}},--食火蜥15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2696.3},[2] = {id = 102,val = 1329.15},[3] = {id = 103,val = 14655}},UpAttr = {[1] = {id = 101,val = 63.91},[2] = {id = 102,val = 31.96},[3] = {id = 103,val = 287}},RosterAttr = {AtkExt = 196561,DefExt = 98195,HPExt = 861409},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 100},[4] = {id = 1603014,val = 25}}},--食火蜥16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3107.85},[2] = {id = 102,val = 1534.93},[3] = {id = 103,val = 16918}},UpAttr = {[1] = {id = 101,val = 73.9},[2] = {id = 102,val = 36.95},[3] = {id = 103,val = 332}},RosterAttr = {AtkExt = 197300,DefExt = 98564,HPExt = 864729},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603011,val = 125},[4] = {id = 1603014,val = 35}}},--食火蜥17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3584.35},[2] = {id = 102,val = 1772.68},[3] = {id = 103,val = 19541}},UpAttr = {[1] = {id = 101,val = 85.43},[2] = {id = 102,val = 42.72},[3] = {id = 103,val = 384}},RosterAttr = {AtkExt = 198154,DefExt = 98991,HPExt = 868569},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603011,val = 155},[4] = {id = 1603014,val = 50}}},--食火蜥18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4134.5},[2] = {id = 102,val = 2048.25},[3] = {id = 103,val = 22568}},UpAttr = {[1] = {id = 101,val = 98.79},[2] = {id = 102,val = 49.4},[3] = {id = 103,val = 444}},RosterAttr = {AtkExt = 199141,DefExt = 99485,HPExt = 873009},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603011,val = 180},[4] = {id = 1603014,val = 65}}},--食火蜥19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 4771.45},[2] = {id = 102,val = 2366.23},[3] = {id = 103,val = 26075}},UpAttr = {[1] = {id = 101,val = 114.21},[2] = {id = 102,val = 57.11},[3] = {id = 103,val = 513}},RosterAttr = {AtkExt = 200283,DefExt = 100056,HPExt = 878139},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603011,val = 225},[4] = {id = 1603014,val = 75}}}--食火蜥20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702019,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702019,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702019,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702019,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702019,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--食火蜥
	[1102020] = {
		IfEntreVersion = 1,
		Name = "高顺",
		NickName = "陷阵之魂",
		NamePic = "ui_dtex_Name_1102020",
		NickNamePic = "ui_dtex_Name2_1102020",
		Tag = {101},
		Type = 2,
		Quality = 3,
		CrystalType = 2,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303020},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702020,val = 40}},
		DebrisID = 1702020,
		ComposeNum = 40,
		CardFace = "cardface_gs_1102020",
		Head2 = "head_gs_1102020",
		HeadBig = "headbig_gs_1102020",
		Icon = "head_gs_1102020",
		Painting = "draw_gs_1102020",
		Cutin = "cutin_gs_1102020",
		GachaDialogue = "gacha_gs_1102020",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 612,
		InitSkill = 2019,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 80.5},[2] = {id = 102,val = 23},[3] = {id = 103,val = 172.5}},UpAttr = {[1] = {id = 101,val = 2.88},[2] = {id = 102,val = 1.44},[3] = {id = 103,val = 12.65}},RosterAttr = {AtkExt = 200311,DefExt = 100070,HPExt = 878265}},--高顺1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 131.1},[2] = {id = 102,val = 43.13},[3] = {id = 103,val = 442.75}},UpAttr = {[1] = {id = 101,val = 4.6},[2] = {id = 102,val = 2.3},[3] = {id = 103,val = 20.7}},RosterAttr = {AtkExt = 200357,DefExt = 100093,HPExt = 878472},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--高顺2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 226.55},[2] = {id = 102,val = 90.28},[3] = {id = 103,val = 991.3}},UpAttr = {[1] = {id = 101,val = 6.93},[2] = {id = 102,val = 3.47},[3] = {id = 103,val = 31.05}},RosterAttr = {AtkExt = 200426,DefExt = 100127,HPExt = 878782},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--高顺3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 318.9},[2] = {id = 102,val = 136.45},[3] = {id = 103,val = 1508.8}},UpAttr = {[1] = {id = 101,val = 9.2},[2] = {id = 102,val = 4.6},[3] = {id = 103,val = 41.4}},RosterAttr = {AtkExt = 200518,DefExt = 100173,HPExt = 879196},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 65}}},--高顺4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 439.65},[2] = {id = 102,val = 197.4},[3] = {id = 103,val = 2181.55}},UpAttr = {[1] = {id = 101,val = 11.52},[2] = {id = 102,val = 5.76},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 200633,DefExt = 100230,HPExt = 879713},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603006,val = 85}}},--高顺5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 590.53},[2] = {id = 102,val = 273.41},[3] = {id = 103,val = 3019.9}},UpAttr = {[1] = {id = 101,val = 14.41},[2] = {id = 102,val = 7.2},[3] = {id = 103,val = 64.4}},RosterAttr = {AtkExt = 200777,DefExt = 100302,HPExt = 880357},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603006,val = 110}}},--高顺6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 779.47},[2] = {id = 102,val = 368.46},[3] = {id = 103,val = 4067.55}},UpAttr = {[1] = {id = 101,val = 18.06},[2] = {id = 102,val = 9.03},[3] = {id = 103,val = 80.5}},RosterAttr = {AtkExt = 200957,DefExt = 100392,HPExt = 881162},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603006,val = 130}}},--高顺7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 1017.52},[2] = {id = 102,val = 487.49},[3] = {id = 103,val = 5390.05}},UpAttr = {[1] = {id = 101,val = 23},[2] = {id = 102,val = 11.5},[3] = {id = 103,val = 103.5}},RosterAttr = {AtkExt = 201187,DefExt = 100507,HPExt = 882197},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 55}}},--高顺8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1165.87},[2] = {id = 102,val = 561.09},[3] = {id = 103,val = 6207.7}},UpAttr = {[1] = {id = 101,val = 26.59},[2] = {id = 102,val = 13.29},[3] = {id = 103,val = 119.6}},RosterAttr = {AtkExt = 201452,DefExt = 100639,HPExt = 883393},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603009,val = 95}}},--高顺9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1336.76},[2] = {id = 102,val = 647.11},[3] = {id = 103,val = 7147.25}},UpAttr = {[1] = {id = 101,val = 30.75},[2] = {id = 102,val = 15.38},[3] = {id = 103,val = 138}},RosterAttr = {AtkExt = 201759,DefExt = 100792,HPExt = 884773},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603009,val = 145}}},--高顺10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1535.37},[2] = {id = 102,val = 745.83},[3] = {id = 103,val = 8240.9}},UpAttr = {[1] = {id = 101,val = 35.54},[2] = {id = 102,val = 17.77},[3] = {id = 103,val = 159.85}},RosterAttr = {AtkExt = 202114,DefExt = 100969,HPExt = 886371},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603009,val = 185}}},--高顺11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1764.79},[2] = {id = 102,val = 859.97},[3] = {id = 103,val = 9505.9}},UpAttr = {[1] = {id = 101,val = 41.1},[2] = {id = 102,val = 20.55},[3] = {id = 103,val = 184}},RosterAttr = {AtkExt = 202525,DefExt = 101174,HPExt = 888211},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603009,val = 225}}},--高顺12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 2030.1},[2] = {id = 102,val = 992.62},[3] = {id = 103,val = 10964.1}},UpAttr = {[1] = {id = 101,val = 47.53},[2] = {id = 102,val = 23.76},[3] = {id = 103,val = 212.75}},RosterAttr = {AtkExt = 203000,DefExt = 101411,HPExt = 890338},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603009,val = 265}}},--高顺13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2336.74},[2] = {id = 102,val = 1145.95},[3] = {id = 103,val = 12648.85}},UpAttr = {[1] = {id = 101,val = 54.97},[2] = {id = 102,val = 27.49},[3] = {id = 103,val = 247.25}},RosterAttr = {AtkExt = 203549,DefExt = 101685,HPExt = 892810},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603012,val = 45}}},--高顺14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2690.94},[2] = {id = 102,val = 1323.62},[3] = {id = 103,val = 14599.25}},UpAttr = {[1] = {id = 101,val = 63.56},[2] = {id = 102,val = 31.78},[3] = {id = 103,val = 285.2}},RosterAttr = {AtkExt = 204184,DefExt = 102002,HPExt = 895662},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603012,val = 70}}},--高顺15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 3100.75},[2] = {id = 102,val = 1528.52},[3] = {id = 103,val = 16853.25}},UpAttr = {[1] = {id = 101,val = 73.5},[2] = {id = 102,val = 36.75},[3] = {id = 103,val = 330.05}},RosterAttr = {AtkExt = 204919,DefExt = 102369,HPExt = 898962},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 100},[4] = {id = 1603014,val = 25}}},--高顺16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3574.03},[2] = {id = 102,val = 1765.16},[3] = {id = 103,val = 19455.7}},UpAttr = {[1] = {id = 101,val = 84.99},[2] = {id = 102,val = 42.49},[3] = {id = 103,val = 381.8}},RosterAttr = {AtkExt = 205768,DefExt = 102793,HPExt = 902780},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603012,val = 125},[4] = {id = 1603014,val = 35}}},--高顺17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 4122},[2] = {id = 102,val = 2038.58},[3] = {id = 103,val = 22472.15}},UpAttr = {[1] = {id = 101,val = 98.24},[2] = {id = 102,val = 49.12},[3] = {id = 103,val = 441.6}},RosterAttr = {AtkExt = 206750,DefExt = 103284,HPExt = 907196},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603012,val = 155},[4] = {id = 1603014,val = 50}}},--高顺18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4754.68},[2] = {id = 102,val = 2355.49},[3] = {id = 103,val = 25953.2}},UpAttr = {[1] = {id = 101,val = 113.61},[2] = {id = 102,val = 56.8},[3] = {id = 103,val = 510.6}},RosterAttr = {AtkExt = 207886,DefExt = 103852,HPExt = 912302},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603012,val = 180},[4] = {id = 1603014,val = 65}}},--高顺19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 5487.17},[2] = {id = 102,val = 2721.16},[3] = {id = 103,val = 29986.25}},UpAttr = {[1] = {id = 101,val = 131.34},[2] = {id = 102,val = 65.67},[3] = {id = 103,val = 589.95}},RosterAttr = {AtkExt = 209199,DefExt = 104508,HPExt = 918201},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603012,val = 225},[4] = {id = 1603014,val = 75}}}--高顺20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1702020,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1702020,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1702020,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1702020,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1702020,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--高顺
	[1102021] = {
		IfEntreVersion = 1,
		Name = "烈风螳螂",
		NickName = "荒漠兽灵",
		NamePic = "ui_dtex_Name_1102021",
		NickNamePic = "ui_dtex_Name2_1102021",
		Tag = {101},
		Type = 2,
		Quality = 2,
		CrystalType = 1,
		Sex = 1,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303021},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702021,val = 20}},
		DebrisID = 1702021,
		ComposeNum = 20,
		CardFace = "cardface_lftl_1102021",
		Head2 = "head_lftl_1102021",
		HeadBig = "headbig_lftl_1102021",
		Icon = "head_lftl_1102021",
		Painting = "draw_lftl_1102021",
		Cutin = "cutin_lftl_1102021",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 610,
		InitSkill = 2020,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 70},[2] = {id = 102,val = 20},[3] = {id = 103,val = 150}},UpAttr = {[1] = {id = 101,val = 2.5},[2] = {id = 102,val = 1.25},[3] = {id = 103,val = 11}},RosterAttr = {AtkExt = 209224,DefExt = 104520,HPExt = 918311}},--烈风螳螂1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 114},[2] = {id = 102,val = 37.5},[3] = {id = 103,val = 385}},UpAttr = {[1] = {id = 101,val = 4},[2] = {id = 102,val = 2},[3] = {id = 103,val = 18}},RosterAttr = {AtkExt = 209264,DefExt = 104540,HPExt = 918491},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--烈风螳螂2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 197},[2] = {id = 102,val = 78.5},[3] = {id = 103,val = 862}},UpAttr = {[1] = {id = 101,val = 6.03},[2] = {id = 102,val = 3.02},[3] = {id = 103,val = 27}},RosterAttr = {AtkExt = 209324,DefExt = 104570,HPExt = 918761},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--烈风螳螂3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 277.3},[2] = {id = 102,val = 118.65},[3] = {id = 103,val = 1312}},UpAttr = {[1] = {id = 101,val = 8},[2] = {id = 102,val = 4},[3] = {id = 103,val = 36}},RosterAttr = {AtkExt = 209404,DefExt = 104610,HPExt = 919121},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 65}}},--烈风螳螂4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 382.3},[2] = {id = 102,val = 171.65},[3] = {id = 103,val = 1897}},UpAttr = {[1] = {id = 101,val = 10.02},[2] = {id = 102,val = 5.01},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 209504,DefExt = 104660,HPExt = 919571},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603005,val = 85}}},--烈风螳螂5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 513.5},[2] = {id = 102,val = 237.75},[3] = {id = 103,val = 2626}},UpAttr = {[1] = {id = 101,val = 12.53},[2] = {id = 102,val = 6.27},[3] = {id = 103,val = 56}},RosterAttr = {AtkExt = 209629,DefExt = 104722,HPExt = 920131},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603005,val = 110}}},--烈风螳螂6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 677.8},[2] = {id = 102,val = 320.4},[3] = {id = 103,val = 3537}},UpAttr = {[1] = {id = 101,val = 15.7},[2] = {id = 102,val = 7.85},[3] = {id = 103,val = 70}},RosterAttr = {AtkExt = 209786,DefExt = 104800,HPExt = 920831},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603005,val = 130}}},--烈风螳螂7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 884.8},[2] = {id = 102,val = 423.9},[3] = {id = 103,val = 4687}},UpAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 10},[3] = {id = 103,val = 90}},RosterAttr = {AtkExt = 209986,DefExt = 104900,HPExt = 921731},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 55}}},--烈风螳螂8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1013.8},[2] = {id = 102,val = 487.9},[3] = {id = 103,val = 5398}},UpAttr = {[1] = {id = 101,val = 23.12},[2] = {id = 102,val = 11.56},[3] = {id = 103,val = 104}},RosterAttr = {AtkExt = 210217,DefExt = 105015,HPExt = 922771},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603008,val = 95}}},--烈风螳螂9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1162.4},[2] = {id = 102,val = 562.7},[3] = {id = 103,val = 6215}},UpAttr = {[1] = {id = 101,val = 26.74},[2] = {id = 102,val = 13.37},[3] = {id = 103,val = 120}},RosterAttr = {AtkExt = 210484,DefExt = 105148,HPExt = 923971},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603008,val = 145}}},--烈风螳螂10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1335.1},[2] = {id = 102,val = 648.55},[3] = {id = 103,val = 7166}},UpAttr = {[1] = {id = 101,val = 30.9},[2] = {id = 102,val = 15.45},[3] = {id = 103,val = 139}},RosterAttr = {AtkExt = 210793,DefExt = 105302,HPExt = 925361},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603008,val = 185}}},--烈风螳螂11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1534.6},[2] = {id = 102,val = 747.8},[3] = {id = 103,val = 8266}},UpAttr = {[1] = {id = 101,val = 35.74},[2] = {id = 102,val = 17.87},[3] = {id = 103,val = 160}},RosterAttr = {AtkExt = 211150,DefExt = 105480,HPExt = 926961},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603008,val = 225}}},--烈风螳螂12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1765.3},[2] = {id = 102,val = 863.15},[3] = {id = 103,val = 9534}},UpAttr = {[1] = {id = 101,val = 41.33},[2] = {id = 102,val = 20.67},[3] = {id = 103,val = 185}},RosterAttr = {AtkExt = 211563,DefExt = 105686,HPExt = 928811},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603008,val = 265}}},--烈风螳螂13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2031.95},[2] = {id = 102,val = 996.48},[3] = {id = 103,val = 10999}},UpAttr = {[1] = {id = 101,val = 47.8},[2] = {id = 102,val = 23.9},[3] = {id = 103,val = 215}},RosterAttr = {AtkExt = 212041,DefExt = 105925,HPExt = 930961},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603011,val = 45}}},--烈风螳螂14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2339.95},[2] = {id = 102,val = 1150.98},[3] = {id = 103,val = 12695}},UpAttr = {[1] = {id = 101,val = 55.27},[2] = {id = 102,val = 27.64},[3] = {id = 103,val = 248}},RosterAttr = {AtkExt = 212593,DefExt = 106201,HPExt = 933441},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603011,val = 70}}},--烈风螳螂15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2696.3},[2] = {id = 102,val = 1329.15},[3] = {id = 103,val = 14655}},UpAttr = {[1] = {id = 101,val = 63.91},[2] = {id = 102,val = 31.96},[3] = {id = 103,val = 287}},RosterAttr = {AtkExt = 213232,DefExt = 106520,HPExt = 936311},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 100},[4] = {id = 1603014,val = 25}}},--烈风螳螂16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3107.85},[2] = {id = 102,val = 1534.93},[3] = {id = 103,val = 16918}},UpAttr = {[1] = {id = 101,val = 73.9},[2] = {id = 102,val = 36.95},[3] = {id = 103,val = 332}},RosterAttr = {AtkExt = 213971,DefExt = 106889,HPExt = 939631},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603011,val = 125},[4] = {id = 1603014,val = 35}}},--烈风螳螂17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3584.35},[2] = {id = 102,val = 1772.68},[3] = {id = 103,val = 19541}},UpAttr = {[1] = {id = 101,val = 85.43},[2] = {id = 102,val = 42.72},[3] = {id = 103,val = 384}},RosterAttr = {AtkExt = 214825,DefExt = 107316,HPExt = 943471},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603011,val = 155},[4] = {id = 1603014,val = 50}}},--烈风螳螂18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4134.5},[2] = {id = 102,val = 2048.25},[3] = {id = 103,val = 22568}},UpAttr = {[1] = {id = 101,val = 98.79},[2] = {id = 102,val = 49.4},[3] = {id = 103,val = 444}},RosterAttr = {AtkExt = 215812,DefExt = 107810,HPExt = 947911},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603011,val = 180},[4] = {id = 1603014,val = 65}}},--烈风螳螂19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 4771.45},[2] = {id = 102,val = 2366.23},[3] = {id = 103,val = 26075}},UpAttr = {[1] = {id = 101,val = 114.21},[2] = {id = 102,val = 57.11},[3] = {id = 103,val = 513}},RosterAttr = {AtkExt = 216954,DefExt = 108381,HPExt = 953041},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603011,val = 225},[4] = {id = 1603014,val = 75}}}--烈风螳螂20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702021,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702021,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702021,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702021,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702021,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	},--烈风螳螂
	[1102022] = {IfEntreVersion = 0,Name = "燕青",NickName = "小乙",NamePic = "ui_dtex_Name_1102022",NickNamePic = "ui_dtex_Name2_1102022",Tag = {103},Type = 2,Quality = 4,CrystalType = 1,Sex = 1,SubType = 1,Atk = 0,Def = 0,HP = 0,Crit = 0,CritRate = 1.5,EffectHit = 0,EffectResist = 0,Block = 0,DefIgnor = 0,R = 0,CallCost = 4,CallCD = 5,Skill = {[1] = 1303001},SkillBlankAmount = 2,RpCvt = {[1] = {id = 1702001,val = 80}},DebrisID = 1702001,ComposeNum = 80,CardFace = "cardface_gy_1102001",Head2 = "head_gy_1102001",HeadBig = "headbig_gy_1102001",Icon = "head_gy_1102001",Painting = "draw_gy_1102001",Cutin = "cutin_gy_1102001",GachaDialogue = "gacha_gy_1102001",PaintingPos = {x = -172.3,y = -15.7},Describe = "不是BUG，还没填表",GuidDesc = "策略描述策划还没配好",Relation = "不是BUG，还没填表",mask = 610},--燕青
	[1102050] = {
		IfEntreVersion = 1,
		Name = "柠檬精",
		NickName = "排排坐",
		NamePic = "ui_dtex_Name_1102013",
		NickNamePic = "ui_dtex_Name2_1102013",
		Tag = {101},
		Type = 2,
		Quality = 2,
		CrystalType = 3,
		Sex = 2,
		SubType = 1,
		Atk = 0,
		Def = 0,
		HP = 0,
		Crit = 0,
		CritRate = 1.5,
		EffectHit = 0,
		EffectResist = 0,
		Block = 0,
		DefIgnor = 0,
		R = 0,
		CallCost = 4,
		CallCD = 5,
		Skill = {[1] = 1303050},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1701049,val = 20}},
		DebrisID = 1702050,
		ComposeNum = 20,
		CardFace = "cardface_sbls_1102013",
		Head2 = "head_sbls_1102013",
		HeadBig = "headbig_sbls_1102013",
		Icon = "head_sbls_1102013",
		Painting = "draw_sbls_1102013",
		Cutin = "cutin_sbls_1102013",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 680,
		InitSkill = 2021,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 70},[2] = {id = 102,val = 20},[3] = {id = 103,val = 150}},UpAttr = {[1] = {id = 101,val = 2.5},[2] = {id = 102,val = 1.25},[3] = {id = 103,val = 11}},RosterAttr = {AtkExt = 216979,DefExt = 108393,HPExt = 953151}},--柠檬精1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 114},[2] = {id = 102,val = 37.5},[3] = {id = 103,val = 385}},UpAttr = {[1] = {id = 101,val = 4},[2] = {id = 102,val = 2},[3] = {id = 103,val = 18}},RosterAttr = {AtkExt = 217019,DefExt = 108413,HPExt = 953331},CostItem = {[1] = {id = 1401002,val = 2500},[2] = {id = 1603001,val = 40}}},--柠檬精2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 197},[2] = {id = 102,val = 78.5},[3] = {id = 103,val = 862}},UpAttr = {[1] = {id = 101,val = 6.03},[2] = {id = 102,val = 3.02},[3] = {id = 103,val = 27}},RosterAttr = {AtkExt = 217079,DefExt = 108443,HPExt = 953601},CostItem = {[1] = {id = 1401002,val = 8500},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--柠檬精3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 277.3},[2] = {id = 102,val = 118.65},[3] = {id = 103,val = 1312}},UpAttr = {[1] = {id = 101,val = 8},[2] = {id = 102,val = 4},[3] = {id = 103,val = 36}},RosterAttr = {AtkExt = 217159,DefExt = 108483,HPExt = 953961},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 65}}},--柠檬精4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 382.3},[2] = {id = 102,val = 171.65},[3] = {id = 103,val = 1897}},UpAttr = {[1] = {id = 101,val = 10.02},[2] = {id = 102,val = 5.01},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 217259,DefExt = 108533,HPExt = 954411},CostItem = {[1] = {id = 1401002,val = 22500},[2] = {id = 1603002,val = 70},[3] = {id = 1603007,val = 85}}},--柠檬精5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 513.5},[2] = {id = 102,val = 237.75},[3] = {id = 103,val = 2626}},UpAttr = {[1] = {id = 101,val = 12.53},[2] = {id = 102,val = 6.27},[3] = {id = 103,val = 56}},RosterAttr = {AtkExt = 217384,DefExt = 108595,HPExt = 954971},CostItem = {[1] = {id = 1401002,val = 53000},[2] = {id = 1603002,val = 110},[3] = {id = 1603007,val = 110}}},--柠檬精6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 677.8},[2] = {id = 102,val = 320.4},[3] = {id = 103,val = 3537}},UpAttr = {[1] = {id = 101,val = 15.7},[2] = {id = 102,val = 7.85},[3] = {id = 103,val = 70}},RosterAttr = {AtkExt = 217541,DefExt = 108673,HPExt = 955671},CostItem = {[1] = {id = 1401002,val = 59500},[2] = {id = 1603002,val = 145},[3] = {id = 1603007,val = 130}}},--柠檬精7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 884.8},[2] = {id = 102,val = 423.9},[3] = {id = 103,val = 4687}},UpAttr = {[1] = {id = 101,val = 20},[2] = {id = 102,val = 10},[3] = {id = 103,val = 90}},RosterAttr = {AtkExt = 217741,DefExt = 108773,HPExt = 956571},CostItem = {[1] = {id = 1401002,val = 66000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 55}}},--柠檬精8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 1013.8},[2] = {id = 102,val = 487.9},[3] = {id = 103,val = 5398}},UpAttr = {[1] = {id = 101,val = 23.12},[2] = {id = 102,val = 11.56},[3] = {id = 103,val = 104}},RosterAttr = {AtkExt = 217972,DefExt = 108888,HPExt = 957611},CostItem = {[1] = {id = 1401002,val = 76000},[2] = {id = 1603003,val = 140},[3] = {id = 1603010,val = 95}}},--柠檬精9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 1162.4},[2] = {id = 102,val = 562.7},[3] = {id = 103,val = 6215}},UpAttr = {[1] = {id = 101,val = 26.74},[2] = {id = 102,val = 13.37},[3] = {id = 103,val = 120}},RosterAttr = {AtkExt = 218239,DefExt = 109021,HPExt = 958811},CostItem = {[1] = {id = 1401002,val = 83000},[2] = {id = 1603003,val = 215},[3] = {id = 1603010,val = 145}}},--柠檬精10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 1335.1},[2] = {id = 102,val = 648.55},[3] = {id = 103,val = 7166}},UpAttr = {[1] = {id = 101,val = 30.9},[2] = {id = 102,val = 15.45},[3] = {id = 103,val = 139}},RosterAttr = {AtkExt = 218548,DefExt = 109175,HPExt = 960201},CostItem = {[1] = {id = 1401002,val = 90000},[2] = {id = 1603003,val = 285},[3] = {id = 1603010,val = 185}}},--柠檬精11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 1534.6},[2] = {id = 102,val = 747.8},[3] = {id = 103,val = 8266}},UpAttr = {[1] = {id = 101,val = 35.74},[2] = {id = 102,val = 17.87},[3] = {id = 103,val = 160}},RosterAttr = {AtkExt = 218905,DefExt = 109353,HPExt = 961801},CostItem = {[1] = {id = 1401002,val = 97000},[2] = {id = 1603004,val = 115},[3] = {id = 1603010,val = 225}}},--柠檬精12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 1765.3},[2] = {id = 102,val = 863.15},[3] = {id = 103,val = 9534}},UpAttr = {[1] = {id = 101,val = 41.33},[2] = {id = 102,val = 20.67},[3] = {id = 103,val = 185}},RosterAttr = {AtkExt = 219318,DefExt = 109559,HPExt = 963651},CostItem = {[1] = {id = 1401002,val = 122000},[2] = {id = 1603004,val = 235},[3] = {id = 1603010,val = 265}}},--柠檬精13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 2031.95},[2] = {id = 102,val = 996.48},[3] = {id = 103,val = 10999}},UpAttr = {[1] = {id = 101,val = 47.8},[2] = {id = 102,val = 23.9},[3] = {id = 103,val = 215}},RosterAttr = {AtkExt = 219796,DefExt = 109798,HPExt = 965801},CostItem = {[1] = {id = 1401002,val = 162500},[2] = {id = 1603004,val = 355},[3] = {id = 1603013,val = 45}}},--柠檬精14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 2339.95},[2] = {id = 102,val = 1150.98},[3] = {id = 103,val = 12695}},UpAttr = {[1] = {id = 101,val = 55.27},[2] = {id = 102,val = 27.64},[3] = {id = 103,val = 248}},RosterAttr = {AtkExt = 220348,DefExt = 110074,HPExt = 968281},CostItem = {[1] = {id = 1401002,val = 190000},[2] = {id = 1603004,val = 475},[3] = {id = 1603013,val = 70}}},--柠檬精15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 2696.3},[2] = {id = 102,val = 1329.15},[3] = {id = 103,val = 14655}},UpAttr = {[1] = {id = 101,val = 63.91},[2] = {id = 102,val = 31.96},[3] = {id = 103,val = 287}},RosterAttr = {AtkExt = 220987,DefExt = 110393,HPExt = 971151},CostItem = {[1] = {id = 1401002,val = 219000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 100},[4] = {id = 1603014,val = 25}}},--柠檬精16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 3107.85},[2] = {id = 102,val = 1534.93},[3] = {id = 103,val = 16918}},UpAttr = {[1] = {id = 101,val = 73.9},[2] = {id = 102,val = 36.95},[3] = {id = 103,val = 332}},RosterAttr = {AtkExt = 221726,DefExt = 110762,HPExt = 974471},CostItem = {[1] = {id = 1401002,val = 228000},[2] = {id = 1603015,val = 65},[3] = {id = 1603013,val = 125},[4] = {id = 1603014,val = 35}}},--柠檬精17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 3584.35},[2] = {id = 102,val = 1772.68},[3] = {id = 103,val = 19541}},UpAttr = {[1] = {id = 101,val = 85.43},[2] = {id = 102,val = 42.72},[3] = {id = 103,val = 384}},RosterAttr = {AtkExt = 222580,DefExt = 111189,HPExt = 978311},CostItem = {[1] = {id = 1401002,val = 319500},[2] = {id = 1603015,val = 90},[3] = {id = 1603013,val = 155},[4] = {id = 1603014,val = 50}}},--柠檬精18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 4134.5},[2] = {id = 102,val = 2048.25},[3] = {id = 103,val = 22568}},UpAttr = {[1] = {id = 101,val = 98.79},[2] = {id = 102,val = 49.4},[3] = {id = 103,val = 444}},RosterAttr = {AtkExt = 223567,DefExt = 111683,HPExt = 982751},CostItem = {[1] = {id = 1401002,val = 426000},[2] = {id = 1603015,val = 110},[3] = {id = 1603013,val = 180},[4] = {id = 1603014,val = 65}}},--柠檬精19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 4771.45},[2] = {id = 102,val = 2366.23},[3] = {id = 103,val = 26075}},UpAttr = {[1] = {id = 101,val = 114.21},[2] = {id = 102,val = 57.11},[3] = {id = 103,val = 513}},RosterAttr = {AtkExt = 224709,DefExt = 112254,HPExt = 987881},CostItem = {[1] = {id = 1401002,val = 532500},[2] = {id = 1603015,val = 135},[3] = {id = 1603013,val = 225},[4] = {id = 1603014,val = 75}}}--柠檬精20突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1701049,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1701049,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1701049,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1701049,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1701049,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		}
	}--柠檬精
}
ddt["card"] = data
SetLooseReadonly(data)
return data