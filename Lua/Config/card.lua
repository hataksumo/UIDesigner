--[[
--note:
各卡牌的表，包括卡牌的品质，等级，地狱道消耗，以及各属性。属性配置在地狱道中。
卡牌基础属性=(int)(card表的初始属性+(card[id].hells[hellLv].BaseAttr + card[id].hells[hellLv].UpAttr * (lv - Hell[hellLv].BegLv)) * card[id].stars[starLv].attrFac)
各卡牌地狱道的表
各卡牌升星的表
colums:
{CardId,卡牌ID} ,{IfEntreVersion,是否进入版本0-否1-是} ,{Name,名称} ,{NickName,名称前缀} ,{NamePic,名字图片} ,{NickNamePic,昵称图片} ,{KPKM,纹理} ,{Tag,标签} ,{Type,卡类型1-寄灵人2-守护灵} ,{Quality,品质1-N  2-R 3-SR 4-SSR} ,{CrystalType,颜色1-红  2-黄 3-蓝} ,{Sex,寄灵人性别 1 男 2 女 0 gay} ,{SubType,二级类型：守护灵类型
神武灵 1
魔武灵 2
仙武灵 3
兽武灵 4
人武灵 5
} ,{Atk,攻击} ,{Def,防御} ,{HP,血量} ,{Crit,暴击} ,{CritRate,暴击伤害} ,{EffectHit,效果命中} ,{EffectResist,效果抵抗} ,{Block,格挡} ,{DefIgnor,穿透} ,{R,防御基值} ,{CallCost,召唤消耗} ,{CallCD,召唤CD} ,{NormalAttack,普通攻击} ,{Skill[1],技能1} ,{Skill[2],技能2} ,{XLGroup,洗练组} ,{ZSP[1],槽1出专属概率} ,{ZSP[2],槽2出专属概率} ,{ZSId[1],专属槽1技能} ,{ZSId[2],专属槽2技能} ,{ZSBs[1],专属技能1战力} ,{ZSBs[2],专属技能2战力} ,{SkillBlankAmount,技能卡槽数量} ,{EnterSkill,入场技能} ,{RpCvt[1].id,重复获得转化为道具ID1} ,{RpCvt[1].val,重复获得转化为道具数量1} ,{DebrisID,碎片ID} ,{ComposeNum,合成需要碎片数量} ,{CardFace,卡面、布阵、抽卡立绘} ,{Head2,中头像} ,{HeadBig,大头像} ,{Icon,图标} ,{Painting,立绘} ,{Cutin,召唤cutin立绘} ,{GachaDialogue,抽卡台词} ,{PaintingPos.x,立绘位置信息X} ,{PaintingPos.y,立绘位置信息Y} ,{Describe,描述} ,{GuidDesc,策略描述} ,{Relation,关联人} ,{mask,属性筛选掩码} ,{ExclusiveGuard[1],专属守护灵} ,{ExclusiveGuard[2],专属守护灵} ,{ExclusiveGuard[3],专属守护灵} ,{ExclusiveGuard[4],专属守护灵} ,{ExclusiveGuard[5],专属守护灵} ,{ExclusiveGuard[6],专属守护灵} ,{ExclusiveGuard[7],专属守护灵} ,{RecommendTeam,推荐阵容} ,{RecommendSkill[1].skills,推荐武灵技1} ,{RecommendSkill[1].desc,武灵技组合1描述} ,{RecommendSkill[2].skills,推荐武灵技2} ,{RecommendSkill[2].desc,武灵技组合2描述} ,{InitSkill,初始武灵技} ,{Help_col,辅助列} ,{HellLevel,地狱道等级} ,{BaseAttr[1].id,基础属性id1} ,{BaseAttr[1].val,基础属性值1} ,{BaseAttr[2].id,基础属性id2} ,{BaseAttr[2].val,基础属性值2} ,{BaseAttr[3].id,基础属性id3} ,{BaseAttr[3].val,基础属性值3} ,{UpAttr[1].id,成长属性id1} ,{UpAttr[1].val,成长属性值1基础} ,{UpAttr[2].id,成长属性id2} ,{UpAttr[2].val,成长属性值2基础} ,{UpAttr[3].id,成长属性id3} ,{UpAttr[3].val,成长属性值3基础} ,{RosterAttr.AtkExt,攻击培养上限} ,{RosterAttr.DefExt,防御培养上限} ,{RosterAttr.HPExt,血量培养上限} ,{CostItem[1].id,消耗道具ID1} ,{CostItem[1].val,道具数量1} ,{CostItem[2].id,消耗道具ID2} ,{CostItem[2].val,道具数量2} ,{CostItem[3].id,消耗道具ID3} ,{CostItem[3].val,道具数量3} ,{CostItem[4].id,消耗道具ID4} ,{CostItem[4].val,道具数量4} ,{StarLv,星级} ,{Cost[1].id,} ,{Cost[1].val,} ,{Cost[2].id,消耗ID} ,{Cost[2].val,消耗数量} ,{AttrFac,属性系数} ,{AttrTrans[1].id,转移属性ID1} ,{AttrTrans[1].val,转移属性值1} ,{AttrTrans[2].id,转移属性ID2} ,{AttrTrans[2].val,转移属性值2} ,{AttrTrans[3].id,转移属性ID3} ,{AttrTrans[3].val,转移属性值3} ,{PSkill,被动技能} ,{EpisodeTitle,备注} ,{Episode,片段1}
primary key:
#0 [卡牌]: CardId
#1 [地狱道]: CardId,Help_col,HellLevel
#2 [升星]: CardId,Help_col,StarLv
#3 [卡牌传记]: CardId,Help_col,Loc
]]
local _T = LangUtil.Language
if ddt["card"] ~= nil then
	return ddt["card"]
end
local data = {
	[1101001] = {
		IfEntreVersion = 1,
		Name = _T("曹焱兵"),
		NickName = _T("火将军"),
		NamePic = "ui_dtex_Name_1101001",
		NickNamePic = "ui_dtex_Name2_1101001",
		KPKM = "kp_km_1101001",
		Tag = {101},
		Type = 1,
		Quality = 3,
		CrystalType = 1,
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
		mask = 338,
		ExclusiveGuard = {[1] = 1102002,[2] = 1102003,[3] = 1102008,[4] = 1102009,[5] = 1102010,[6] = 1102012,[7] = 1102015},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 165},[2] = {id = 102,val = 0},[3] = {id = 103,val = 1075}},UpAttr = {[1] = {id = 101,val = 17.25},[2] = {id = 102,val = 8.63},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 172,DefExt = 86,HPExt = 517}},--常服曹焱兵1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 331.75},[2] = {id = 102,val = 97.18},[3] = {id = 103,val = 1575.25}},UpAttr = {[1] = {id = 101,val = 15.84},[2] = {id = 102,val = 7.92},[3] = {id = 103,val = 47.51}},RosterAttr = {AtkExt = 330,DefExt = 165,HPExt = 992}},--常服曹焱兵2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 529.21},[2] = {id = 102,val = 195.9},[3] = {id = 103,val = 2167.62}},UpAttr = {[1] = {id = 101,val = 28.95},[2] = {id = 102,val = 14.47},[3] = {id = 103,val = 86.84}},RosterAttr = {AtkExt = 619,DefExt = 309,HPExt = 1860}},--常服曹焱兵3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 891.11},[2] = {id = 102,val = 376.28},[3] = {id = 103,val = 3253.33}},UpAttr = {[1] = {id = 101,val = 34.65},[2] = {id = 102,val = 17.32},[3] = {id = 103,val = 103.95}},RosterAttr = {AtkExt = 965,DefExt = 482,HPExt = 2899}},--常服曹焱兵4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1323.86},[2] = {id = 102,val = 593.23},[3] = {id = 103,val = 4551.57}},UpAttr = {[1] = {id = 101,val = 43.31},[2] = {id = 102,val = 21.65},[3] = {id = 103,val = 129.93}},RosterAttr = {AtkExt = 1398,DefExt = 698,HPExt = 4198}},--常服曹焱兵5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1865.05},[2] = {id = 102,val = 863.82},[3] = {id = 103,val = 6175.14}},UpAttr = {[1] = {id = 101,val = 56.18},[2] = {id = 102,val = 28.09},[3] = {id = 103,val = 168.53}},RosterAttr = {AtkExt = 1959,DefExt = 978,HPExt = 5883}},--常服曹焱兵6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2567.12},[2] = {id = 102,val = 1214.86},[3] = {id = 103,val = 8281.36}},UpAttr = {[1] = {id = 101,val = 69.22},[2] = {id = 102,val = 34.61},[3] = {id = 103,val = 207.66}},RosterAttr = {AtkExt = 2651,DefExt = 1324,HPExt = 7959}},--常服曹焱兵7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3431.81},[2] = {id = 102,val = 1647.2},[3] = {id = 103,val = 10875.42}},UpAttr = {[1] = {id = 101,val = 86.47},[2] = {id = 102,val = 43.23},[3] = {id = 103,val = 259.41}},RosterAttr = {AtkExt = 3515,DefExt = 1756,HPExt = 10553}},--常服曹焱兵8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4512.69},[2] = {id = 102,val = 2187.65},[3] = {id = 103,val = 14118.07}},UpAttr = {[1] = {id = 101,val = 112.46},[2] = {id = 102,val = 56.23},[3] = {id = 103,val = 337.38}},RosterAttr = {AtkExt = 4639,DefExt = 2318,HPExt = 13926}},--常服曹焱兵9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5215.28},[2] = {id = 102,val = 2538.94},[3] = {id = 103,val = 16225.85}},UpAttr = {[1] = {id = 101,val = 129.75},[2] = {id = 102,val = 64.88},[3] = {id = 103,val = 389.26}},RosterAttr = {AtkExt = 5936,DefExt = 2966,HPExt = 17818}},--常服曹焱兵10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6026.21},[2] = {id = 102,val = 2944.98},[3] = {id = 103,val = 18658.62}},UpAttr = {[1] = {id = 101,val = 151.32},[2] = {id = 102,val = 75.66},[3] = {id = 103,val = 453.95}},RosterAttr = {AtkExt = 7449,DefExt = 3722,HPExt = 22357}},--常服曹焱兵11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6971.39},[2] = {id = 102,val = 3417.57},[3] = {id = 103,val = 21494.17}},UpAttr = {[1] = {id = 101,val = 173.04},[2] = {id = 102,val = 86.52},[3] = {id = 103,val = 519.12}},RosterAttr = {AtkExt = 9179,DefExt = 4587,HPExt = 27548}},--常服曹焱兵12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 8052.79},[2] = {id = 102,val = 3958.27},[3] = {id = 103,val = 24738.38}},UpAttr = {[1] = {id = 101,val = 200.07},[2] = {id = 102,val = 100.03},[3] = {id = 103,val = 600.2}},RosterAttr = {AtkExt = 11179,DefExt = 5587,HPExt = 33550}},--常服曹焱兵13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 9302.67},[2] = {id = 102,val = 4583.79},[3] = {id = 103,val = 28488.01}},UpAttr = {[1] = {id = 101,val = 231.32},[2] = {id = 102,val = 115.66},[3] = {id = 103,val = 693.97}},RosterAttr = {AtkExt = 13492,DefExt = 6743,HPExt = 40489}},--常服曹焱兵14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 10747.93},[2] = {id = 102,val = 5306.99},[3] = {id = 103,val = 32823.8}},UpAttr = {[1] = {id = 101,val = 267.44},[2] = {id = 102,val = 133.72},[3] = {id = 103,val = 802.33}},RosterAttr = {AtkExt = 16166,DefExt = 8080,HPExt = 48512}},--常服曹焱兵15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 12419.8},[2] = {id = 102,val = 6142.35},[3] = {id = 103,val = 37839.41}},UpAttr = {[1] = {id = 101,val = 309.25},[2] = {id = 102,val = 154.62},[3] = {id = 103,val = 927.74}},RosterAttr = {AtkExt = 19258,DefExt = 9626,HPExt = 57789}},--常服曹焱兵16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 14352.44},[2] = {id = 102,val = 7108.67},[3] = {id = 103,val = 43637.31}},UpAttr = {[1] = {id = 101,val = 357.56},[2] = {id = 102,val = 178.78},[3] = {id = 103,val = 1072.67}},RosterAttr = {AtkExt = 22833,DefExt = 11413,HPExt = 68515}},--常服曹焱兵17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 16587.58},[2] = {id = 102,val = 8225.66},[3] = {id = 103,val = 50342.73}},UpAttr = {[1] = {id = 101,val = 413.44},[2] = {id = 102,val = 206.72},[3] = {id = 103,val = 1240.31}},RosterAttr = {AtkExt = 26967,DefExt = 13480,HPExt = 80918}},--常服曹焱兵18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 19171.11},[2] = {id = 102,val = 9518},[3] = {id = 103,val = 58093.32}},UpAttr = {[1] = {id = 101,val = 478.03},[2] = {id = 102,val = 239.02},[3] = {id = 103,val = 1434.1}},RosterAttr = {AtkExt = 31747,DefExt = 15870,HPExt = 95259}},--常服曹焱兵19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 22159.27},[2] = {id = 102,val = 11012.08},[3] = {id = 103,val = 67057.8}},UpAttr = {[1] = {id = 101,val = 552.74},[2] = {id = 102,val = 276.37},[3] = {id = 103,val = 1658.21}},RosterAttr = {AtkExt = 37274,DefExt = 18633,HPExt = 111841}},--常服曹焱兵20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 25614.1},[2] = {id = 102,val = 12738.92},[3] = {id = 103,val = 77422.29}},UpAttr = {[1] = {id = 101,val = 639.1},[2] = {id = 102,val = 319.55},[3] = {id = 103,val = 1917.3}},RosterAttr = {AtkExt = 43665,DefExt = 21828,HPExt = 131014}}--常服曹焱兵21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701001,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701001,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701001,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701001,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701001,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("常服曹焱兵传记1"),Episode = _T("虽然自称魔王，身为罗刹街镇魂将，但曹焱兵却一直都面临着一个巨大的困难，那便是财政赤字！于是乎，威风凛凛的曹魔王只能在平日里依靠送外卖来维持他和弟弟两人的日常开销。也正是在一次送外卖途中，他才与夏铃结缘。")},--常服曹焱兵传记1
			[2] = {EpisodeTitle = _T("常服曹焱兵传记2"),Episode = _T("曹焱兵和曹玄亮兄弟两人年少时便失去了父母，两人相依为命生活在遍地恶灵的罗刹街，自身的实力便极为重要。因此曹焱兵少年时对更加年幼的弟弟曹玄亮要求极为严格，每日都要与许褚对战，如此才能让弟弟拥有在罗刹街自保的力量。")},--常服曹焱兵传记2
			[3] = {EpisodeTitle = _T("常服曹焱兵传记3"),Episode = _T("“我去工作了！”曹焱兵跨上摩托车，冲身后摆了摆手。曹玄亮站在他身后，笑着回应：“一路顺风，我会好好看家的。”在夏铃出现之前，这便是兄弟俩的日常，单调却又温馨。若是灵槐树没有发生意外，也许这样平静无忧的生活，兄弟两人可以一直过下去。")},--常服曹焱兵传记3
			[4] = {EpisodeTitle = _T("常服曹焱兵传记4"),Episode = _T("“我要不要去染个发呢？”夏铃有些犹豫。难得陪夏铃出来逛街的曹焱兵在夏铃旁边停下脚步，看着美发店门前的一块牌子，认真道：“其实我觉得你染个发也不错。”曹焱兵说着指了指染发送不粘锅的牌子，道：“至少我可以拿个锅啊！”从那以后，夏铃开始了吐槽生涯。")},--常服曹焱兵传记4
			[5] = {EpisodeTitle = _T("常服曹焱兵传记5"),Episode = _T("与曹玄亮不同，曹焱兵的记忆中仍有母亲唐笑笑的身影，幼年调皮的曹焱兵常被唐笑笑倒吊在树上，往往需要父亲求情母亲才会将他放下来。但即使是这样的记忆，仍是曹焱兵心中最为珍贵的财富，虽然他从未说过。但若是用整个天下能换来父母与他和弟弟重聚，他定然毫不犹豫。")}--常服曹焱兵传记5
		}
	},--常服曹焱兵
	[1101002] = {
		IfEntreVersion = 1,
		Name = _T("曹玄亮"),
		NickName = _T("雷霆轰炸机"),
		NamePic = "ui_dtex_Name_1101002",
		NickNamePic = "ui_dtex_Name2_1101002",
		KPKM = "kp_km_1101002",
		Tag = {107},
		Type = 1,
		Quality = 2,
		CrystalType = 2,
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
		GachaDialogue = "gacha_cxl_1101002",
		PaintingPos = {x = 86,y = -16.91},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 340,
		ExclusiveGuard = {[1] = 1102004},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 100},[2] = {id = 102,val = 0},[3] = {id = 103,val = 500}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 450}},--曹玄亮1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 245},[2] = {id = 102,val = 84.5},[3] = {id = 103,val = 935}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 41.31}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 863}},--曹玄亮2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 416.7},[2] = {id = 102,val = 170.35},[3] = {id = 103,val = 1450.1}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 75.51}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 1618}},--曹玄亮3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 731.4},[2] = {id = 102,val = 327.2},[3] = {id = 103,val = 2394.2}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 90.39}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 2521}},--曹玄亮4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1107.7},[2] = {id = 102,val = 515.85},[3] = {id = 103,val = 3523.1}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 112.98}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 3650}},--曹玄亮5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1578.3},[2] = {id = 102,val = 751.15},[3] = {id = 103,val = 4934.9}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 146.55}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 5115}},--曹玄亮6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2188.8},[2] = {id = 102,val = 1056.4},[3] = {id = 103,val = 6766.4}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 180.57}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 6920}},--曹玄亮7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 2940.7},[2] = {id = 102,val = 1432.35},[3] = {id = 103,val = 9022.1}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 225.57}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 9175}},--曹玄亮8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 3880.6},[2] = {id = 102,val = 1902.3},[3] = {id = 103,val = 11841.8}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 293.37}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 12108}},--曹玄亮9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4491.55},[2] = {id = 102,val = 2207.78},[3] = {id = 103,val = 13674.65}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 338.49}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 15492}},--曹玄亮10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5196.7},[2] = {id = 102,val = 2560.85},[3] = {id = 103,val = 15790.1}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 394.74}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 19439}},--曹玄亮11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6018.6},[2] = {id = 102,val = 2971.8},[3] = {id = 103,val = 18255.8}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 451.41}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 23953}},--曹玄亮12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 6958.95},[2] = {id = 102,val = 3441.98},[3] = {id = 103,val = 21076.85}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 521.91}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 29172}},--曹玄亮13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8045.8},[2] = {id = 102,val = 3985.9},[3] = {id = 103,val = 24337.4}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 603.45}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 35206}},--曹玄亮14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9302.55},[2] = {id = 102,val = 4614.78},[3] = {id = 103,val = 28107.65}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 697.68}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 42182}},--曹玄亮15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 10756.35},[2] = {id = 102,val = 5341.18},[3] = {id = 103,val = 32469.05}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 806.73}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 50249}},--曹玄亮16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12436.9},[2] = {id = 102,val = 6181.45},[3] = {id = 103,val = 37510.7}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 932.76}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 59576}},--曹玄亮17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14380.5},[2] = {id = 102,val = 7152.75},[3] = {id = 103,val = 43341.5}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1078.53}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 70361}},--曹玄亮18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16627.05},[2] = {id = 102,val = 8276.53},[3] = {id = 103,val = 50081.15}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1247.04}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 82831}},--曹玄亮19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19225.45},[2] = {id = 102,val = 9575.73},[3] = {id = 103,val = 57876.35}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 1441.92}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 97250}},--曹玄亮20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22229.65},[2] = {id = 102,val = 11077.33},[3] = {id = 103,val = 66888.95}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 1667.22}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 113922}}--曹玄亮21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1701002,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1701002,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1701002,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1701002,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1701002,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("曹玄亮传记1"),Episode = _T("上得厅堂，下得厨房的家庭小妇男便是曹玄亮的真实写照。他与哥哥曹焱兵相依为命在罗刹街生活。虽然年纪很小，但同样是一名强大的寄灵人，曹焱兵不在时，他亦可以独当一面，守护罗刹街的安宁。")},--曹玄亮传记1
			[2] = {EpisodeTitle = _T("曹玄亮传记2"),Episode = _T("因为哥哥的光环太过强大，在其掩盖下的曹玄亮一直想要变得更强，不想成为哥哥的累赘，因此，他年幼时便有极为坚定的意志，甚至不惜孤身前往太初天地离火柱，想要寻找最强的守护灵。")},--曹玄亮传记2
			[3] = {EpisodeTitle = _T("曹玄亮传记3"),Episode = _T("与霸气侧漏的曹焱兵不同，曹玄亮更像两人的母亲唐笑笑，不仅继承了母亲的厨艺，还有她留下来的众多装备，也正因为有了这些装备，他才能在和唐流雨的战斗中获得对方的认可，从而心甘情愿成为他的守护灵。")},--曹玄亮传记3
			[4] = {EpisodeTitle = _T("曹玄亮传记4"),Episode = _T("“喂，哥哥，该上班了！”早早起来的曹玄亮站在依旧睡着懒觉的曹焱兵身边催促道。往日里若是曹焱兵装死不肯起床，他便会以财政赤字相要挟。只是今天看着曹焱兵睡得香甜的侧脸，他心想着，偶尔让哥哥偷个懒其实也没什么。")},--曹玄亮传记4
			[5] = {EpisodeTitle = _T("曹玄亮传记5"),Episode = _T("在得知哥哥曹焱兵并不准备带他一同离开罗刹街之时，曹玄亮感到无比的沮丧，他觉得是因为自己依然不够强大，所以才会被抛下。然而当他从哥哥手中接过象征着镇魂将身份的将军链，他才明白哥哥对自己所寄予的厚望。")}--曹玄亮传记5
		}
	},--曹玄亮
	[1101003] = {
		IfEntreVersion = 1,
		Name = _T("灵装夏铃"),
		NickName = _T("女主角"),
		NamePic = "ui_dtex_Name_1101003",
		NickNamePic = "ui_dtex_Name2_1101003",
		KPKM = "kp_km_1101003",
		Tag = {105},
		Type = 1,
		Quality = 3,
		CrystalType = 3,
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
		mask = 408,
		ExclusiveGuard = {[1] = 1102005},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 165},[2] = {id = 102,val = 0},[3] = {id = 103,val = 1075}},UpAttr = {[1] = {id = 101,val = 17.25},[2] = {id = 102,val = 8.63},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 172,DefExt = 86,HPExt = 517}},--战斗夏玲1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 331.75},[2] = {id = 102,val = 97.18},[3] = {id = 103,val = 1575.25}},UpAttr = {[1] = {id = 101,val = 15.84},[2] = {id = 102,val = 7.92},[3] = {id = 103,val = 47.51}},RosterAttr = {AtkExt = 330,DefExt = 165,HPExt = 992}},--战斗夏玲2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 529.21},[2] = {id = 102,val = 195.9},[3] = {id = 103,val = 2167.62}},UpAttr = {[1] = {id = 101,val = 28.95},[2] = {id = 102,val = 14.47},[3] = {id = 103,val = 86.84}},RosterAttr = {AtkExt = 619,DefExt = 309,HPExt = 1860}},--战斗夏玲3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 891.11},[2] = {id = 102,val = 376.28},[3] = {id = 103,val = 3253.33}},UpAttr = {[1] = {id = 101,val = 34.65},[2] = {id = 102,val = 17.32},[3] = {id = 103,val = 103.95}},RosterAttr = {AtkExt = 965,DefExt = 482,HPExt = 2899}},--战斗夏玲4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1323.86},[2] = {id = 102,val = 593.23},[3] = {id = 103,val = 4551.57}},UpAttr = {[1] = {id = 101,val = 43.31},[2] = {id = 102,val = 21.65},[3] = {id = 103,val = 129.93}},RosterAttr = {AtkExt = 1398,DefExt = 698,HPExt = 4198}},--战斗夏玲5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1865.05},[2] = {id = 102,val = 863.82},[3] = {id = 103,val = 6175.14}},UpAttr = {[1] = {id = 101,val = 56.18},[2] = {id = 102,val = 28.09},[3] = {id = 103,val = 168.53}},RosterAttr = {AtkExt = 1959,DefExt = 978,HPExt = 5883}},--战斗夏玲6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2567.12},[2] = {id = 102,val = 1214.86},[3] = {id = 103,val = 8281.36}},UpAttr = {[1] = {id = 101,val = 69.22},[2] = {id = 102,val = 34.61},[3] = {id = 103,val = 207.66}},RosterAttr = {AtkExt = 2651,DefExt = 1324,HPExt = 7959}},--战斗夏玲7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3431.81},[2] = {id = 102,val = 1647.2},[3] = {id = 103,val = 10875.42}},UpAttr = {[1] = {id = 101,val = 86.47},[2] = {id = 102,val = 43.23},[3] = {id = 103,val = 259.41}},RosterAttr = {AtkExt = 3515,DefExt = 1756,HPExt = 10553}},--战斗夏玲8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4512.69},[2] = {id = 102,val = 2187.65},[3] = {id = 103,val = 14118.07}},UpAttr = {[1] = {id = 101,val = 112.46},[2] = {id = 102,val = 56.23},[3] = {id = 103,val = 337.38}},RosterAttr = {AtkExt = 4639,DefExt = 2318,HPExt = 13926}},--战斗夏玲9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5215.28},[2] = {id = 102,val = 2538.94},[3] = {id = 103,val = 16225.85}},UpAttr = {[1] = {id = 101,val = 129.75},[2] = {id = 102,val = 64.88},[3] = {id = 103,val = 389.26}},RosterAttr = {AtkExt = 5936,DefExt = 2966,HPExt = 17818}},--战斗夏玲10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6026.21},[2] = {id = 102,val = 2944.98},[3] = {id = 103,val = 18658.62}},UpAttr = {[1] = {id = 101,val = 151.32},[2] = {id = 102,val = 75.66},[3] = {id = 103,val = 453.95}},RosterAttr = {AtkExt = 7449,DefExt = 3722,HPExt = 22357}},--战斗夏玲11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6971.39},[2] = {id = 102,val = 3417.57},[3] = {id = 103,val = 21494.17}},UpAttr = {[1] = {id = 101,val = 173.04},[2] = {id = 102,val = 86.52},[3] = {id = 103,val = 519.12}},RosterAttr = {AtkExt = 9179,DefExt = 4587,HPExt = 27548}},--战斗夏玲12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 8052.79},[2] = {id = 102,val = 3958.27},[3] = {id = 103,val = 24738.38}},UpAttr = {[1] = {id = 101,val = 200.07},[2] = {id = 102,val = 100.03},[3] = {id = 103,val = 600.2}},RosterAttr = {AtkExt = 11179,DefExt = 5587,HPExt = 33550}},--战斗夏玲13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 9302.67},[2] = {id = 102,val = 4583.79},[3] = {id = 103,val = 28488.01}},UpAttr = {[1] = {id = 101,val = 231.32},[2] = {id = 102,val = 115.66},[3] = {id = 103,val = 693.97}},RosterAttr = {AtkExt = 13492,DefExt = 6743,HPExt = 40489}},--战斗夏玲14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 10747.93},[2] = {id = 102,val = 5306.99},[3] = {id = 103,val = 32823.8}},UpAttr = {[1] = {id = 101,val = 267.44},[2] = {id = 102,val = 133.72},[3] = {id = 103,val = 802.33}},RosterAttr = {AtkExt = 16166,DefExt = 8080,HPExt = 48512}},--战斗夏玲15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 12419.8},[2] = {id = 102,val = 6142.35},[3] = {id = 103,val = 37839.41}},UpAttr = {[1] = {id = 101,val = 309.25},[2] = {id = 102,val = 154.62},[3] = {id = 103,val = 927.74}},RosterAttr = {AtkExt = 19258,DefExt = 9626,HPExt = 57789}},--战斗夏玲16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 14352.44},[2] = {id = 102,val = 7108.67},[3] = {id = 103,val = 43637.31}},UpAttr = {[1] = {id = 101,val = 357.56},[2] = {id = 102,val = 178.78},[3] = {id = 103,val = 1072.67}},RosterAttr = {AtkExt = 22833,DefExt = 11413,HPExt = 68515}},--战斗夏玲17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 16587.58},[2] = {id = 102,val = 8225.66},[3] = {id = 103,val = 50342.73}},UpAttr = {[1] = {id = 101,val = 413.44},[2] = {id = 102,val = 206.72},[3] = {id = 103,val = 1240.31}},RosterAttr = {AtkExt = 26967,DefExt = 13480,HPExt = 80918}},--战斗夏玲18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 19171.11},[2] = {id = 102,val = 9518},[3] = {id = 103,val = 58093.32}},UpAttr = {[1] = {id = 101,val = 478.03},[2] = {id = 102,val = 239.02},[3] = {id = 103,val = 1434.1}},RosterAttr = {AtkExt = 31747,DefExt = 15870,HPExt = 95259}},--战斗夏玲19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 22159.27},[2] = {id = 102,val = 11012.08},[3] = {id = 103,val = 67057.8}},UpAttr = {[1] = {id = 101,val = 552.74},[2] = {id = 102,val = 276.37},[3] = {id = 103,val = 1658.21}},RosterAttr = {AtkExt = 37274,DefExt = 18633,HPExt = 111841}},--战斗夏玲20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 25614.1},[2] = {id = 102,val = 12738.92},[3] = {id = 103,val = 77422.29}},UpAttr = {[1] = {id = 101,val = 639.1},[2] = {id = 102,val = 319.55},[3] = {id = 103,val = 1917.3}},RosterAttr = {AtkExt = 43665,DefExt = 21828,HPExt = 131014}}--战斗夏玲21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701003,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701003,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701003,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701003,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701003,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("战斗夏铃传记1"),Episode = _T("自从听说了水儿生前和北落师门的故事，夏铃终于下定决心开始战斗，而不是继续躲在曹焱兵身后。之后初次出手她便大展神威，和李轩辕互相配合之下，打败了羽林街三灵将之中的天市，成为了一股不可或缺的战力，曹焱兵也因此对她刮目相看。")},--战斗夏铃传记1
			[2] = {EpisodeTitle = _T("战斗夏铃传记2"),Episode = _T("面对非人力所能敌的噬日，在众人被其火力掩盖时，夏铃挺身而出。“大炮多了不起啊！你丫要是卡碧尼！！老娘就是沙扎比！！！”夏铃怒吼着运转全身灵力，身后的冥王破军印尽数迎向噬日的灵气炮，虽然她最后力竭昏迷，但其他人在她的守护下全都安然无恙。")},--战斗夏铃传记2
			[3] = {EpisodeTitle = _T("战斗夏铃传记3"),Episode = _T("夏铃在南无地经历了一场另类的战斗，那便是指挥妖兽果参加凯米拉所组织的斗兽大赛。呆萌的妖兽果要与巨大狰狞的对手战斗，着实让夏铃担心了一番。好在有朱童的秘密武器在，妖兽果得以成功进化，最终打败了面目狰狞的恶兽，获得了斗兽大赛的胜利。")},--战斗夏铃传记3
			[4] = {EpisodeTitle = _T("战斗夏铃传记4"),Episode = _T("群英殿乱战中，夏铃虽然不是主力，但依旧发挥了不可替代的作用。不仅找来了孙斩天这个强力外援，并且与众人一同挖地道潜入了群英殿。并且在伙伴们撤退的必经之路上，夏铃和李轩辕也拼尽全力挡住了卢天佑以及他的守护灵燕青，为众人撤退争取了不少时间。")},--战斗夏铃传记4
			[5] = {EpisodeTitle = _T("战斗夏铃传记5"),Episode = _T("原本是个风华正茂的毕业大学生的夏铃，对自己今后的人生尚无明确的目标，一次误入罗刹街的经历让她觉醒成为高等寄灵人，接着与曹焱兵一起莫名其妙成为了灵域的通缉犯。即使如此，夏铃却毫无怨言，因为她终于找到了自身价值所在，并逐渐在战斗中成长为曹焱兵的左膀右臂。")}--战斗夏铃传记5
		}
	},--战斗夏铃
	[1101004] = {
		IfEntreVersion = 1,
		Name = _T("项昆仑"),
		NickName = _T("群英之主"),
		NamePic = "ui_dtex_Name_1101004",
		NickNamePic = "ui_dtex_Name2_1101004",
		KPKM = "kp_km_1101004",
		Tag = {102},
		Type = 1,
		Quality = 4,
		CrystalType = 2,
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
		mask = 340,
		ExclusiveGuard = {[1] = 1102006},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 230},[2] = {id = 102,val = 0},[3] = {id = 103,val = 1150}},UpAttr = {[1] = {id = 101,val = 19.5},[2] = {id = 102,val = 9.75},[3] = {id = 103,val = 58.5}},RosterAttr = {AtkExt = 195,DefExt = 97,HPExt = 585}},--项昆仑1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 418.5},[2] = {id = 102,val = 109.85},[3] = {id = 103,val = 1715.5}},UpAttr = {[1] = {id = 101,val = 17.9},[2] = {id = 102,val = 8.95},[3] = {id = 103,val = 53.7}},RosterAttr = {AtkExt = 374,DefExt = 186,HPExt = 1122}},--项昆仑2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 641.71},[2] = {id = 102,val = 221.46},[3] = {id = 103,val = 2385.13}},UpAttr = {[1] = {id = 101,val = 32.72},[2] = {id = 102,val = 16.36},[3] = {id = 103,val = 98.16}},RosterAttr = {AtkExt = 701,DefExt = 349,HPExt = 2103}},--项昆仑3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1050.82},[2] = {id = 102,val = 425.36},[3] = {id = 103,val = 3612.46}},UpAttr = {[1] = {id = 101,val = 39.17},[2] = {id = 102,val = 19.58},[3] = {id = 103,val = 117.51}},RosterAttr = {AtkExt = 1092,DefExt = 544,HPExt = 3278}},--项昆仑4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1540.01},[2] = {id = 102,val = 670.61},[3] = {id = 103,val = 5080.03}},UpAttr = {[1] = {id = 101,val = 48.96},[2] = {id = 102,val = 24.48},[3] = {id = 103,val = 146.87}},RosterAttr = {AtkExt = 1581,DefExt = 788,HPExt = 4746}},--项昆仑5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2151.79},[2] = {id = 102,val = 976.5},[3] = {id = 103,val = 6915.37}},UpAttr = {[1] = {id = 101,val = 63.51},[2] = {id = 102,val = 31.75},[3] = {id = 103,val = 190.52}},RosterAttr = {AtkExt = 2216,DefExt = 1105,HPExt = 6651}},--项昆仑6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2945.44},[2] = {id = 102,val = 1373.32},[3] = {id = 103,val = 9296.32}},UpAttr = {[1] = {id = 101,val = 78.25},[2] = {id = 102,val = 39.12},[3] = {id = 103,val = 234.74}},RosterAttr = {AtkExt = 2998,DefExt = 1496,HPExt = 8998}},--项昆仑7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3922.91},[2] = {id = 102,val = 1862.06},[3] = {id = 103,val = 12228.73}},UpAttr = {[1] = {id = 101,val = 97.75},[2] = {id = 102,val = 48.87},[3] = {id = 103,val = 293.24}},RosterAttr = {AtkExt = 3975,DefExt = 1984,HPExt = 11930}},--项昆仑8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 5144.78},[2] = {id = 102,val = 2472.99},[3] = {id = 103,val = 15894.34}},UpAttr = {[1] = {id = 101,val = 127.13},[2] = {id = 102,val = 63.56},[3] = {id = 103,val = 381.38}},RosterAttr = {AtkExt = 5246,DefExt = 2619,HPExt = 15743}},--项昆仑9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5939.02},[2] = {id = 102,val = 2870.11},[3] = {id = 103,val = 18277.05}},UpAttr = {[1] = {id = 101,val = 146.68},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 440.04}},RosterAttr = {AtkExt = 6712,DefExt = 3352,HPExt = 20143}},--项昆仑10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6855.71},[2] = {id = 102,val = 3329.11},[3] = {id = 103,val = 21027.13}},UpAttr = {[1] = {id = 101,val = 171.05},[2] = {id = 102,val = 85.53},[3] = {id = 103,val = 513.16}},RosterAttr = {AtkExt = 8422,DefExt = 4207,HPExt = 25274}},--项昆仑11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 7924.18},[2] = {id = 102,val = 3863.34},[3] = {id = 103,val = 24232.54}},UpAttr = {[1] = {id = 101,val = 195.61},[2] = {id = 102,val = 97.81},[3] = {id = 103,val = 586.83}},RosterAttr = {AtkExt = 10378,DefExt = 5185,HPExt = 31142}},--项昆仑12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 9146.64},[2] = {id = 102,val = 4474.57},[3] = {id = 103,val = 27899.91}},UpAttr = {[1] = {id = 101,val = 226.16},[2] = {id = 102,val = 113.08},[3] = {id = 103,val = 678.48}},RosterAttr = {AtkExt = 12639,DefExt = 6315,HPExt = 37926}},--项昆仑13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 10559.54},[2] = {id = 102,val = 5181.67},[3] = {id = 103,val = 32138.62}},UpAttr = {[1] = {id = 101,val = 261.5},[2] = {id = 102,val = 130.75},[3] = {id = 103,val = 784.49}},RosterAttr = {AtkExt = 15254,DefExt = 7622,HPExt = 45770}},--项昆仑14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 12193.32},[2] = {id = 102,val = 5999.21},[3] = {id = 103,val = 37039.95}},UpAttr = {[1] = {id = 101,val = 302.33},[2] = {id = 102,val = 151.16},[3] = {id = 103,val = 906.98}},RosterAttr = {AtkExt = 18277,DefExt = 9133,HPExt = 54839}},--项昆仑15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 14083.26},[2] = {id = 102,val = 6943.53},[3] = {id = 103,val = 42709.77}},UpAttr = {[1] = {id = 101,val = 349.58},[2] = {id = 102,val = 174.79},[3] = {id = 103,val = 1048.75}},RosterAttr = {AtkExt = 21772,DefExt = 10880,HPExt = 65326}},--项昆仑16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 16267.97},[2] = {id = 102,val = 8035.89},[3] = {id = 103,val = 49263.91}},UpAttr = {[1] = {id = 101,val = 404.2},[2] = {id = 102,val = 202.1},[3] = {id = 103,val = 1212.59}},RosterAttr = {AtkExt = 25814,DefExt = 12901,HPExt = 77451}},--项昆仑17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 18794.65},[2] = {id = 102,val = 9298.58},[3] = {id = 103,val = 56843.95}},UpAttr = {[1] = {id = 101,val = 467.36},[2] = {id = 102,val = 233.68},[3] = {id = 103,val = 1402.09}},RosterAttr = {AtkExt = 30487,DefExt = 15237,HPExt = 91471}},--项昆仑18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 21715.17},[2] = {id = 102,val = 10759.48},[3] = {id = 103,val = 65605.5}},UpAttr = {[1] = {id = 101,val = 540.38},[2] = {id = 102,val = 270.19},[3] = {id = 103,val = 1621.15}},RosterAttr = {AtkExt = 35890,DefExt = 17938,HPExt = 107682}},--项昆仑19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 25093.09},[2] = {id = 102,val = 12448.44},[3] = {id = 103,val = 75739.26}},UpAttr = {[1] = {id = 101,val = 624.83},[2] = {id = 102,val = 312.42},[3] = {id = 103,val = 1874.5}},RosterAttr = {AtkExt = 42138,DefExt = 21062,HPExt = 126427}},--项昆仑20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 28998.55},[2] = {id = 102,val = 14400.52},[3] = {id = 103,val = 87455.64}},UpAttr = {[1] = {id = 101,val = 722.46},[2] = {id = 102,val = 361.23},[3] = {id = 103,val = 2167.39}},RosterAttr = {AtkExt = 49362,DefExt = 24674,HPExt = 148100}}--项昆仑21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1701004,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1701004,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1701004,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1701004,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1701004,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("项昆仑传记1"),Episode = _T("项昆仑是天生的霸王，虽然不是武神躯，但却拥有最强人武灵之一——西楚霸王项羽，力能扛鼎。他的志向并非在灵域为官，而是为了成为天下的王。")},--项昆仑传记1
			[2] = {EpisodeTitle = _T("项昆仑传记2"),Episode = _T("龙且、季布、钟离眛、虞子期虽然并非项昆仑的守护神，但却对项昆仑忠心耿耿。待项昆仑为四将寻找到合适的宿主，他将拥有四个战力极强的帮手。")},--项昆仑传记2
			[3] = {EpisodeTitle = _T("项昆仑传记3"),Episode = _T("项昆仑万万没有想到，原本已经被他刺穿身体的曹焱兵竟然浴火重生，实力大增，真正成为了需要令他认真面对的对手。但那又如何？他有信心碾碎挡在他面前的任何敌人。")},--项昆仑传记3
			[4] = {EpisodeTitle = _T("项昆仑传记4"),Episode = _T("极少有人知道，项昆仑与刘羽禅乃是同母异父的兄弟，即使两人的立场有所不同，但若世间仅剩一人愿意为他们赴汤蹈火，那必然是他们彼此。唯有面对刘羽禅时，项昆仑才会少见的流露出些许温暖。")},--项昆仑传记4
			[5] = {EpisodeTitle = _T("项昆仑传记5"),Episode = _T("虽然项昆仑的守护灵是有勇无谋的项羽，但与先祖不同的是，项昆仑不仅继承了先祖项羽的魄力，更学习了韩信的隐忍，面对视他为低贱的御灵使，他却能隐忍不发，总有一天，他会得到转轮神珠，将灵域取而代之。")}--项昆仑传记5
		}
	},--项昆仑
	[1101005] = {
		IfEntreVersion = 1,
		Name = _T("刘羽禅"),
		NickName = _T("冰童"),
		NamePic = "ui_dtex_Name_1101005",
		NickNamePic = "ui_dtex_Name2_1101005",
		KPKM = "kp_km_1101005",
		Tag = {104},
		Type = 1,
		Quality = 4,
		CrystalType = 3,
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
		mask = 344,
		ExclusiveGuard = {[1] = 1102001,[2] = 1102011},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 230},[2] = {id = 102,val = 0},[3] = {id = 103,val = 1150}},UpAttr = {[1] = {id = 101,val = 19.5},[2] = {id = 102,val = 9.75},[3] = {id = 103,val = 58.5}},RosterAttr = {AtkExt = 195,DefExt = 97,HPExt = 585}},--刘羽禅1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 418.5},[2] = {id = 102,val = 109.85},[3] = {id = 103,val = 1715.5}},UpAttr = {[1] = {id = 101,val = 17.9},[2] = {id = 102,val = 8.95},[3] = {id = 103,val = 53.7}},RosterAttr = {AtkExt = 374,DefExt = 186,HPExt = 1122}},--刘羽禅2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 641.71},[2] = {id = 102,val = 221.46},[3] = {id = 103,val = 2385.13}},UpAttr = {[1] = {id = 101,val = 32.72},[2] = {id = 102,val = 16.36},[3] = {id = 103,val = 98.16}},RosterAttr = {AtkExt = 701,DefExt = 349,HPExt = 2103}},--刘羽禅3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1050.82},[2] = {id = 102,val = 425.36},[3] = {id = 103,val = 3612.46}},UpAttr = {[1] = {id = 101,val = 39.17},[2] = {id = 102,val = 19.58},[3] = {id = 103,val = 117.51}},RosterAttr = {AtkExt = 1092,DefExt = 544,HPExt = 3278}},--刘羽禅4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1540.01},[2] = {id = 102,val = 670.61},[3] = {id = 103,val = 5080.03}},UpAttr = {[1] = {id = 101,val = 48.96},[2] = {id = 102,val = 24.48},[3] = {id = 103,val = 146.87}},RosterAttr = {AtkExt = 1581,DefExt = 788,HPExt = 4746}},--刘羽禅5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2151.79},[2] = {id = 102,val = 976.5},[3] = {id = 103,val = 6915.37}},UpAttr = {[1] = {id = 101,val = 63.51},[2] = {id = 102,val = 31.75},[3] = {id = 103,val = 190.52}},RosterAttr = {AtkExt = 2216,DefExt = 1105,HPExt = 6651}},--刘羽禅6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2945.44},[2] = {id = 102,val = 1373.32},[3] = {id = 103,val = 9296.32}},UpAttr = {[1] = {id = 101,val = 78.25},[2] = {id = 102,val = 39.12},[3] = {id = 103,val = 234.74}},RosterAttr = {AtkExt = 2998,DefExt = 1496,HPExt = 8998}},--刘羽禅7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3922.91},[2] = {id = 102,val = 1862.06},[3] = {id = 103,val = 12228.73}},UpAttr = {[1] = {id = 101,val = 97.75},[2] = {id = 102,val = 48.87},[3] = {id = 103,val = 293.24}},RosterAttr = {AtkExt = 3975,DefExt = 1984,HPExt = 11930}},--刘羽禅8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 5144.78},[2] = {id = 102,val = 2472.99},[3] = {id = 103,val = 15894.34}},UpAttr = {[1] = {id = 101,val = 127.13},[2] = {id = 102,val = 63.56},[3] = {id = 103,val = 381.38}},RosterAttr = {AtkExt = 5246,DefExt = 2619,HPExt = 15743}},--刘羽禅9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5939.02},[2] = {id = 102,val = 2870.11},[3] = {id = 103,val = 18277.05}},UpAttr = {[1] = {id = 101,val = 146.68},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 440.04}},RosterAttr = {AtkExt = 6712,DefExt = 3352,HPExt = 20143}},--刘羽禅10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6855.71},[2] = {id = 102,val = 3329.11},[3] = {id = 103,val = 21027.13}},UpAttr = {[1] = {id = 101,val = 171.05},[2] = {id = 102,val = 85.53},[3] = {id = 103,val = 513.16}},RosterAttr = {AtkExt = 8422,DefExt = 4207,HPExt = 25274}},--刘羽禅11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 7924.18},[2] = {id = 102,val = 3863.34},[3] = {id = 103,val = 24232.54}},UpAttr = {[1] = {id = 101,val = 195.61},[2] = {id = 102,val = 97.81},[3] = {id = 103,val = 586.83}},RosterAttr = {AtkExt = 10378,DefExt = 5185,HPExt = 31142}},--刘羽禅12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 9146.64},[2] = {id = 102,val = 4474.57},[3] = {id = 103,val = 27899.91}},UpAttr = {[1] = {id = 101,val = 226.16},[2] = {id = 102,val = 113.08},[3] = {id = 103,val = 678.48}},RosterAttr = {AtkExt = 12639,DefExt = 6315,HPExt = 37926}},--刘羽禅13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 10559.54},[2] = {id = 102,val = 5181.67},[3] = {id = 103,val = 32138.62}},UpAttr = {[1] = {id = 101,val = 261.5},[2] = {id = 102,val = 130.75},[3] = {id = 103,val = 784.49}},RosterAttr = {AtkExt = 15254,DefExt = 7622,HPExt = 45770}},--刘羽禅14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 12193.32},[2] = {id = 102,val = 5999.21},[3] = {id = 103,val = 37039.95}},UpAttr = {[1] = {id = 101,val = 302.33},[2] = {id = 102,val = 151.16},[3] = {id = 103,val = 906.98}},RosterAttr = {AtkExt = 18277,DefExt = 9133,HPExt = 54839}},--刘羽禅15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 14083.26},[2] = {id = 102,val = 6943.53},[3] = {id = 103,val = 42709.77}},UpAttr = {[1] = {id = 101,val = 349.58},[2] = {id = 102,val = 174.79},[3] = {id = 103,val = 1048.75}},RosterAttr = {AtkExt = 21772,DefExt = 10880,HPExt = 65326}},--刘羽禅16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 16267.97},[2] = {id = 102,val = 8035.89},[3] = {id = 103,val = 49263.91}},UpAttr = {[1] = {id = 101,val = 404.2},[2] = {id = 102,val = 202.1},[3] = {id = 103,val = 1212.59}},RosterAttr = {AtkExt = 25814,DefExt = 12901,HPExt = 77451}},--刘羽禅17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 18794.65},[2] = {id = 102,val = 9298.58},[3] = {id = 103,val = 56843.95}},UpAttr = {[1] = {id = 101,val = 467.36},[2] = {id = 102,val = 233.68},[3] = {id = 103,val = 1402.09}},RosterAttr = {AtkExt = 30487,DefExt = 15237,HPExt = 91471}},--刘羽禅18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 21715.17},[2] = {id = 102,val = 10759.48},[3] = {id = 103,val = 65605.5}},UpAttr = {[1] = {id = 101,val = 540.38},[2] = {id = 102,val = 270.19},[3] = {id = 103,val = 1621.15}},RosterAttr = {AtkExt = 35890,DefExt = 17938,HPExt = 107682}},--刘羽禅19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 25093.09},[2] = {id = 102,val = 12448.44},[3] = {id = 103,val = 75739.26}},UpAttr = {[1] = {id = 101,val = 624.83},[2] = {id = 102,val = 312.42},[3] = {id = 103,val = 1874.5}},RosterAttr = {AtkExt = 42138,DefExt = 21062,HPExt = 126427}},--刘羽禅20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 28998.55},[2] = {id = 102,val = 14400.52},[3] = {id = 103,val = 87455.64}},UpAttr = {[1] = {id = 101,val = 722.46},[2] = {id = 102,val = 361.23},[3] = {id = 103,val = 2167.39}},RosterAttr = {AtkExt = 49362,DefExt = 24674,HPExt = 148100}}--刘羽禅21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1701005,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1701005,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1701005,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1701005,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1701005,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("刘羽禅传记1"),Episode = _T("刘羽禅的脸上总是带着微笑，但在他平易近人的面容下是令人忌惮的冷静和心机。同时他又重情重义，拥有一股忠于他的强大势力，任何人都不敢小觑刘羽禅这个笑面虎。")},--刘羽禅传记1
			[2] = {EpisodeTitle = _T("刘羽禅传记2"),Episode = _T("虽然孙斩天、曹焱兵和刘羽禅并称为当世三大武神躯，但唯有刘羽禅真正掌控了自身所有守护灵的力量，是唯一一个真正觉醒的武神躯。谁也不知道他全力出手会有多么强大。")},--刘羽禅传记2
			[3] = {EpisodeTitle = _T("刘羽禅传记3"),Episode = _T("虽然刘羽禅身为水云街的镇魂将。同时也是龙桃桃园的守护者，身份极为尊贵。但他在现实中的身份却是一名音乐家，再加上刘羽禅温文儒雅的外表，不知迷倒了多少现实世界中的花痴少女。")},--刘羽禅传记3
			[4] = {EpisodeTitle = _T("刘羽禅传记4"),Episode = _T("“踏雪白狼，咱们又要一起并肩作战了！”刘羽禅看着手中的笛子轻声笑道。随后不久，刘羽禅率领五虎将宛若神兵天降，几乎以一己之力搅乱群英殿的布局，让曹焱兵一行人得以脱身。")},--刘羽禅传记4
			[5] = {EpisodeTitle = _T("刘羽禅传记5"),Episode = _T("豆大的雨滴打在刘羽禅的脸上，体内的毒素已经逐渐侵入心脉，用不了多久他便会死去。一个高大的身影来到他面前。“瞧瞧你现在的模样，真是丢死人了！”刘羽禅听到熟悉的声音，嘴角微微勾起，既然他来了，自己便不会死了。")}--刘羽禅传记5
		}
	},--刘羽禅
	[1101006] = {
		IfEntreVersion = 1,
		Name = _T("红莲缇娜"),
		NickName = _T("地狱神父"),
		NamePic = "ui_dtex_Name_1101006",
		NickNamePic = "ui_dtex_Name2_1101006",
		KPKM = "kp_km_1101006",
		Tag = {107},
		Type = 1,
		Quality = 4,
		CrystalType = 1,
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
		mask = 338,
		ExclusiveGuard = {[1] = 1102007},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 230},[2] = {id = 102,val = 0},[3] = {id = 103,val = 1150}},UpAttr = {[1] = {id = 101,val = 19.5},[2] = {id = 102,val = 9.75},[3] = {id = 103,val = 58.5}},RosterAttr = {AtkExt = 195,DefExt = 97,HPExt = 585}},--红莲·缇娜1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 418.5},[2] = {id = 102,val = 109.85},[3] = {id = 103,val = 1715.5}},UpAttr = {[1] = {id = 101,val = 17.9},[2] = {id = 102,val = 8.95},[3] = {id = 103,val = 53.7}},RosterAttr = {AtkExt = 374,DefExt = 186,HPExt = 1122}},--红莲·缇娜2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 641.71},[2] = {id = 102,val = 221.46},[3] = {id = 103,val = 2385.13}},UpAttr = {[1] = {id = 101,val = 32.72},[2] = {id = 102,val = 16.36},[3] = {id = 103,val = 98.16}},RosterAttr = {AtkExt = 701,DefExt = 349,HPExt = 2103}},--红莲·缇娜3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1050.82},[2] = {id = 102,val = 425.36},[3] = {id = 103,val = 3612.46}},UpAttr = {[1] = {id = 101,val = 39.17},[2] = {id = 102,val = 19.58},[3] = {id = 103,val = 117.51}},RosterAttr = {AtkExt = 1092,DefExt = 544,HPExt = 3278}},--红莲·缇娜4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1540.01},[2] = {id = 102,val = 670.61},[3] = {id = 103,val = 5080.03}},UpAttr = {[1] = {id = 101,val = 48.96},[2] = {id = 102,val = 24.48},[3] = {id = 103,val = 146.87}},RosterAttr = {AtkExt = 1581,DefExt = 788,HPExt = 4746}},--红莲·缇娜5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2151.79},[2] = {id = 102,val = 976.5},[3] = {id = 103,val = 6915.37}},UpAttr = {[1] = {id = 101,val = 63.51},[2] = {id = 102,val = 31.75},[3] = {id = 103,val = 190.52}},RosterAttr = {AtkExt = 2216,DefExt = 1105,HPExt = 6651}},--红莲·缇娜6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2945.44},[2] = {id = 102,val = 1373.32},[3] = {id = 103,val = 9296.32}},UpAttr = {[1] = {id = 101,val = 78.25},[2] = {id = 102,val = 39.12},[3] = {id = 103,val = 234.74}},RosterAttr = {AtkExt = 2998,DefExt = 1496,HPExt = 8998}},--红莲·缇娜7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3922.91},[2] = {id = 102,val = 1862.06},[3] = {id = 103,val = 12228.73}},UpAttr = {[1] = {id = 101,val = 97.75},[2] = {id = 102,val = 48.87},[3] = {id = 103,val = 293.24}},RosterAttr = {AtkExt = 3975,DefExt = 1984,HPExt = 11930}},--红莲·缇娜8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 5144.78},[2] = {id = 102,val = 2472.99},[3] = {id = 103,val = 15894.34}},UpAttr = {[1] = {id = 101,val = 127.13},[2] = {id = 102,val = 63.56},[3] = {id = 103,val = 381.38}},RosterAttr = {AtkExt = 5246,DefExt = 2619,HPExt = 15743}},--红莲·缇娜9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5939.02},[2] = {id = 102,val = 2870.11},[3] = {id = 103,val = 18277.05}},UpAttr = {[1] = {id = 101,val = 146.68},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 440.04}},RosterAttr = {AtkExt = 6712,DefExt = 3352,HPExt = 20143}},--红莲·缇娜10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6855.71},[2] = {id = 102,val = 3329.11},[3] = {id = 103,val = 21027.13}},UpAttr = {[1] = {id = 101,val = 171.05},[2] = {id = 102,val = 85.53},[3] = {id = 103,val = 513.16}},RosterAttr = {AtkExt = 8422,DefExt = 4207,HPExt = 25274}},--红莲·缇娜11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 7924.18},[2] = {id = 102,val = 3863.34},[3] = {id = 103,val = 24232.54}},UpAttr = {[1] = {id = 101,val = 195.61},[2] = {id = 102,val = 97.81},[3] = {id = 103,val = 586.83}},RosterAttr = {AtkExt = 10378,DefExt = 5185,HPExt = 31142}},--红莲·缇娜12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 9146.64},[2] = {id = 102,val = 4474.57},[3] = {id = 103,val = 27899.91}},UpAttr = {[1] = {id = 101,val = 226.16},[2] = {id = 102,val = 113.08},[3] = {id = 103,val = 678.48}},RosterAttr = {AtkExt = 12639,DefExt = 6315,HPExt = 37926}},--红莲·缇娜13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 10559.54},[2] = {id = 102,val = 5181.67},[3] = {id = 103,val = 32138.62}},UpAttr = {[1] = {id = 101,val = 261.5},[2] = {id = 102,val = 130.75},[3] = {id = 103,val = 784.49}},RosterAttr = {AtkExt = 15254,DefExt = 7622,HPExt = 45770}},--红莲·缇娜14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 12193.32},[2] = {id = 102,val = 5999.21},[3] = {id = 103,val = 37039.95}},UpAttr = {[1] = {id = 101,val = 302.33},[2] = {id = 102,val = 151.16},[3] = {id = 103,val = 906.98}},RosterAttr = {AtkExt = 18277,DefExt = 9133,HPExt = 54839}},--红莲·缇娜15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 14083.26},[2] = {id = 102,val = 6943.53},[3] = {id = 103,val = 42709.77}},UpAttr = {[1] = {id = 101,val = 349.58},[2] = {id = 102,val = 174.79},[3] = {id = 103,val = 1048.75}},RosterAttr = {AtkExt = 21772,DefExt = 10880,HPExt = 65326}},--红莲·缇娜16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 16267.97},[2] = {id = 102,val = 8035.89},[3] = {id = 103,val = 49263.91}},UpAttr = {[1] = {id = 101,val = 404.2},[2] = {id = 102,val = 202.1},[3] = {id = 103,val = 1212.59}},RosterAttr = {AtkExt = 25814,DefExt = 12901,HPExt = 77451}},--红莲·缇娜17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 18794.65},[2] = {id = 102,val = 9298.58},[3] = {id = 103,val = 56843.95}},UpAttr = {[1] = {id = 101,val = 467.36},[2] = {id = 102,val = 233.68},[3] = {id = 103,val = 1402.09}},RosterAttr = {AtkExt = 30487,DefExt = 15237,HPExt = 91471}},--红莲·缇娜18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 21715.17},[2] = {id = 102,val = 10759.48},[3] = {id = 103,val = 65605.5}},UpAttr = {[1] = {id = 101,val = 540.38},[2] = {id = 102,val = 270.19},[3] = {id = 103,val = 1621.15}},RosterAttr = {AtkExt = 35890,DefExt = 17938,HPExt = 107682}},--红莲·缇娜19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 25093.09},[2] = {id = 102,val = 12448.44},[3] = {id = 103,val = 75739.26}},UpAttr = {[1] = {id = 101,val = 624.83},[2] = {id = 102,val = 312.42},[3] = {id = 103,val = 1874.5}},RosterAttr = {AtkExt = 42138,DefExt = 21062,HPExt = 126427}},--红莲·缇娜20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 28998.55},[2] = {id = 102,val = 14400.52},[3] = {id = 103,val = 87455.64}},UpAttr = {[1] = {id = 101,val = 722.46},[2] = {id = 102,val = 361.23},[3] = {id = 103,val = 2167.39}},RosterAttr = {AtkExt = 49362,DefExt = 24674,HPExt = 148100}}--红莲·缇娜21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1701006,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1701006,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1701006,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1701006,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1701006,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("红莲缇娜传记1"),Episode = _T("我是红莲，别人都叫我地狱神父。因为我并不想上天堂，那是善良的人去的地方，和我没关系，作为地狱的引路者，只要世间还有一个罪恶之徒，我就要让他得到应有的惩罚。")},--红莲缇娜传记1
			[2] = {EpisodeTitle = _T("红莲缇娜传记2"),Episode = _T("红莲是由缇娜修女亲手抱回修道院的，也是缇娜修女抚养他长大，虽然平日里缇娜修女对红莲很严格，但是他清楚最爱他的人是缇娜。所以在缇娜被黑帮杀害后，红莲为了复仇宁愿将自己的灵魂出卖给恶魔。")},--红莲缇娜传记2
			[3] = {EpisodeTitle = _T("红莲缇娜传记3"),Episode = _T("红莲之所以加入王国组织，是想要借用王国组织的力量复活缇娜，而在追杀曹焱兵的过程中，他体内的恶魔被邪恶力量剥离出体内，从而发现自己苦苦寻找的缇娜竟然就在他体内，化作了他的守护灵，红莲从而重拾信心战胜了羊头恶魔。")},--红莲缇娜传记3
			[4] = {EpisodeTitle = _T("红莲缇娜传记4"),Episode = _T("“我们两人之间，总会有一个取代另一个，如果我无法亲手消灭你，我也不许你让别人给干掉，否则那便是我输给你的耻辱”羊头恶魔的身影逐渐消散，随风附着在红莲的衣服上。“这件衣服，你穿着更合适。”")},--红莲缇娜传记4
			[5] = {EpisodeTitle = _T("红莲缇娜传记5"),Episode = _T("红莲的一生都是为了复活缇娜，在得知缇娜已经成为自身的守护灵之后，他已经没有了继续呆在王国组织的理由，但王国组织却不愿意就这样放他离开。缇娜回到王国组织之后，被视作背叛者绑在了十字架上，他未来的命运不容乐观，也许，会有他曾经与之为敌的某个人前来救他。")}--红莲缇娜传记5
		}
	},--红莲缇娜
	[1101007] = {
		IfEntreVersion = 1,
		Name = _T("灵装曹焱兵"),
		NickName = _T("曹魔王"),
		NamePic = "ui_dtex_Name_1101007",
		NickNamePic = "ui_dtex_Name2_1101007",
		KPKM = "kp_km_1101007",
		Tag = {103},
		Type = 1,
		Quality = 4,
		CrystalType = 1,
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
		mask = 338,
		ExclusiveGuard = {[1] = 1102002,[2] = 1102003,[3] = 1102008,[4] = 1102009,[5] = 1102010,[6] = 1102012,[7] = 1102015},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 230},[2] = {id = 102,val = 0},[3] = {id = 103,val = 1150}},UpAttr = {[1] = {id = 101,val = 19.5},[2] = {id = 102,val = 9.75},[3] = {id = 103,val = 58.5}},RosterAttr = {AtkExt = 195,DefExt = 97,HPExt = 585}},--战斗曹焱兵1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 418.5},[2] = {id = 102,val = 109.85},[3] = {id = 103,val = 1715.5}},UpAttr = {[1] = {id = 101,val = 17.9},[2] = {id = 102,val = 8.95},[3] = {id = 103,val = 53.7}},RosterAttr = {AtkExt = 374,DefExt = 186,HPExt = 1122}},--战斗曹焱兵2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 641.71},[2] = {id = 102,val = 221.46},[3] = {id = 103,val = 2385.13}},UpAttr = {[1] = {id = 101,val = 32.72},[2] = {id = 102,val = 16.36},[3] = {id = 103,val = 98.16}},RosterAttr = {AtkExt = 701,DefExt = 349,HPExt = 2103}},--战斗曹焱兵3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1050.82},[2] = {id = 102,val = 425.36},[3] = {id = 103,val = 3612.46}},UpAttr = {[1] = {id = 101,val = 39.17},[2] = {id = 102,val = 19.58},[3] = {id = 103,val = 117.51}},RosterAttr = {AtkExt = 1092,DefExt = 544,HPExt = 3278}},--战斗曹焱兵4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1540.01},[2] = {id = 102,val = 670.61},[3] = {id = 103,val = 5080.03}},UpAttr = {[1] = {id = 101,val = 48.96},[2] = {id = 102,val = 24.48},[3] = {id = 103,val = 146.87}},RosterAttr = {AtkExt = 1581,DefExt = 788,HPExt = 4746}},--战斗曹焱兵5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2151.79},[2] = {id = 102,val = 976.5},[3] = {id = 103,val = 6915.37}},UpAttr = {[1] = {id = 101,val = 63.51},[2] = {id = 102,val = 31.75},[3] = {id = 103,val = 190.52}},RosterAttr = {AtkExt = 2216,DefExt = 1105,HPExt = 6651}},--战斗曹焱兵6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2945.44},[2] = {id = 102,val = 1373.32},[3] = {id = 103,val = 9296.32}},UpAttr = {[1] = {id = 101,val = 78.25},[2] = {id = 102,val = 39.12},[3] = {id = 103,val = 234.74}},RosterAttr = {AtkExt = 2998,DefExt = 1496,HPExt = 8998}},--战斗曹焱兵7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3922.91},[2] = {id = 102,val = 1862.06},[3] = {id = 103,val = 12228.73}},UpAttr = {[1] = {id = 101,val = 97.75},[2] = {id = 102,val = 48.87},[3] = {id = 103,val = 293.24}},RosterAttr = {AtkExt = 3975,DefExt = 1984,HPExt = 11930}},--战斗曹焱兵8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 5144.78},[2] = {id = 102,val = 2472.99},[3] = {id = 103,val = 15894.34}},UpAttr = {[1] = {id = 101,val = 127.13},[2] = {id = 102,val = 63.56},[3] = {id = 103,val = 381.38}},RosterAttr = {AtkExt = 5246,DefExt = 2619,HPExt = 15743}},--战斗曹焱兵9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5939.02},[2] = {id = 102,val = 2870.11},[3] = {id = 103,val = 18277.05}},UpAttr = {[1] = {id = 101,val = 146.68},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 440.04}},RosterAttr = {AtkExt = 6712,DefExt = 3352,HPExt = 20143}},--战斗曹焱兵10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6855.71},[2] = {id = 102,val = 3329.11},[3] = {id = 103,val = 21027.13}},UpAttr = {[1] = {id = 101,val = 171.05},[2] = {id = 102,val = 85.53},[3] = {id = 103,val = 513.16}},RosterAttr = {AtkExt = 8422,DefExt = 4207,HPExt = 25274}},--战斗曹焱兵11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 7924.18},[2] = {id = 102,val = 3863.34},[3] = {id = 103,val = 24232.54}},UpAttr = {[1] = {id = 101,val = 195.61},[2] = {id = 102,val = 97.81},[3] = {id = 103,val = 586.83}},RosterAttr = {AtkExt = 10378,DefExt = 5185,HPExt = 31142}},--战斗曹焱兵12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 9146.64},[2] = {id = 102,val = 4474.57},[3] = {id = 103,val = 27899.91}},UpAttr = {[1] = {id = 101,val = 226.16},[2] = {id = 102,val = 113.08},[3] = {id = 103,val = 678.48}},RosterAttr = {AtkExt = 12639,DefExt = 6315,HPExt = 37926}},--战斗曹焱兵13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 10559.54},[2] = {id = 102,val = 5181.67},[3] = {id = 103,val = 32138.62}},UpAttr = {[1] = {id = 101,val = 261.5},[2] = {id = 102,val = 130.75},[3] = {id = 103,val = 784.49}},RosterAttr = {AtkExt = 15254,DefExt = 7622,HPExt = 45770}},--战斗曹焱兵14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 12193.32},[2] = {id = 102,val = 5999.21},[3] = {id = 103,val = 37039.95}},UpAttr = {[1] = {id = 101,val = 302.33},[2] = {id = 102,val = 151.16},[3] = {id = 103,val = 906.98}},RosterAttr = {AtkExt = 18277,DefExt = 9133,HPExt = 54839}},--战斗曹焱兵15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 14083.26},[2] = {id = 102,val = 6943.53},[3] = {id = 103,val = 42709.77}},UpAttr = {[1] = {id = 101,val = 349.58},[2] = {id = 102,val = 174.79},[3] = {id = 103,val = 1048.75}},RosterAttr = {AtkExt = 21772,DefExt = 10880,HPExt = 65326}},--战斗曹焱兵16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 16267.97},[2] = {id = 102,val = 8035.89},[3] = {id = 103,val = 49263.91}},UpAttr = {[1] = {id = 101,val = 404.2},[2] = {id = 102,val = 202.1},[3] = {id = 103,val = 1212.59}},RosterAttr = {AtkExt = 25814,DefExt = 12901,HPExt = 77451}},--战斗曹焱兵17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 18794.65},[2] = {id = 102,val = 9298.58},[3] = {id = 103,val = 56843.95}},UpAttr = {[1] = {id = 101,val = 467.36},[2] = {id = 102,val = 233.68},[3] = {id = 103,val = 1402.09}},RosterAttr = {AtkExt = 30487,DefExt = 15237,HPExt = 91471}},--战斗曹焱兵18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 21715.17},[2] = {id = 102,val = 10759.48},[3] = {id = 103,val = 65605.5}},UpAttr = {[1] = {id = 101,val = 540.38},[2] = {id = 102,val = 270.19},[3] = {id = 103,val = 1621.15}},RosterAttr = {AtkExt = 35890,DefExt = 17938,HPExt = 107682}},--战斗曹焱兵19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 25093.09},[2] = {id = 102,val = 12448.44},[3] = {id = 103,val = 75739.26}},UpAttr = {[1] = {id = 101,val = 624.83},[2] = {id = 102,val = 312.42},[3] = {id = 103,val = 1874.5}},RosterAttr = {AtkExt = 42138,DefExt = 21062,HPExt = 126427}},--战斗曹焱兵20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 28998.55},[2] = {id = 102,val = 14400.52},[3] = {id = 103,val = 87455.64}},UpAttr = {[1] = {id = 101,val = 722.46},[2] = {id = 102,val = 361.23},[3] = {id = 103,val = 2167.39}},RosterAttr = {AtkExt = 49362,DefExt = 24674,HPExt = 148100}}--战斗曹焱兵21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1701007,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1701007,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1701007,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1701007,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1701007,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("战斗曹焱兵传记1"),Episode = _T("“杂碎们听着！！吾乃罗刹街镇魂将！！曹焱兵是也！！”曹焱兵犹如魔王降世，带着火焰从天而降，将夏铃面前的恶灵尽数烧成灰烬。在罗刹街，他便是当之无愧的王，恶灵都将在他的火焰下颤抖。")},--战斗曹焱兵传记1
			[2] = {EpisodeTitle = _T("战斗曹焱兵传记2"),Episode = _T("与北落师门一战，是曹焱兵所经历过最为艰苦的战斗之一，双方皆在克制范围之内手段尽出。颇有一副英雄惜英雄的感觉。也是因为这场战斗，才让曹焱兵想要将有情有义的北落师门变成自己的伙伴。")},--战斗曹焱兵传记2
			[3] = {EpisodeTitle = _T("战斗曹焱兵传记3"),Episode = _T("“只是，这天下容不下两个王......”曹焱兵明知自己不是项昆仑的对手，却依旧拒绝了对方的邀请，给出了自己的答案。虽然之后便被铁戟刺穿胸膛，近乎身死。但也是因为这句话，他终于得到了夏侯渊和夏侯惇的认可，得以浴火重生，战力再上一个台阶。")},--战斗曹焱兵传记3
			[4] = {EpisodeTitle = _T("战斗曹焱兵传记4"),Episode = _T("与食火蜥吉拉一战，让曹焱兵明白了伙伴的力量必不可少。他不再像以往那样只是一味的单打独斗。面对克制自身的吉拉，他巧妙借助三个伙伴的力量击败了吉拉和他的改造兵团，最终如愿以偿进入了芦花古楼。")},--战斗曹焱兵传记4
			[5] = {EpisodeTitle = _T("战斗曹焱兵传记5"),Episode = _T("为了打听父母的消息，曹焱兵故意战败被擒。在千机黑煞中救出了曾经与母亲并肩作战的伙伴，并在项昆仑未曾回到群英殿时，亲手造就了群英殿之乱。将项昆仑的之前所赐予的一戟之仇，清算了一些。并且真正在风起云涌的灵界之中，拥有了一席之地。")}--战斗曹焱兵传记5
		}
	},--战斗曹焱兵
	[1101008] = {
		IfEntreVersion = 1,
		Name = _T("黑尔坎普"),
		NickName = _T("地狱看门人"),
		NamePic = "ui_dtex_Name_1101008",
		NickNamePic = "ui_dtex_Name2_1101008",
		KPKM = "kp_km_1101008",
		Tag = {101},
		Type = 1,
		Quality = 2,
		CrystalType = 3,
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
		GachaDialogue = "gacha_hekp_1101008",
		PaintingPos = {x = 22,y = -86.1},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 344,
		ExclusiveGuard = {[1] = 1102013},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 100},[2] = {id = 102,val = 0},[3] = {id = 103,val = 500}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 450}},--黑尔·坎普1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 245},[2] = {id = 102,val = 84.5},[3] = {id = 103,val = 935}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 41.31}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 863}},--黑尔·坎普2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 416.7},[2] = {id = 102,val = 170.35},[3] = {id = 103,val = 1450.1}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 75.51}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 1618}},--黑尔·坎普3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 731.4},[2] = {id = 102,val = 327.2},[3] = {id = 103,val = 2394.2}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 90.39}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 2521}},--黑尔·坎普4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1107.7},[2] = {id = 102,val = 515.85},[3] = {id = 103,val = 3523.1}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 112.98}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 3650}},--黑尔·坎普5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1578.3},[2] = {id = 102,val = 751.15},[3] = {id = 103,val = 4934.9}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 146.55}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 5115}},--黑尔·坎普6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2188.8},[2] = {id = 102,val = 1056.4},[3] = {id = 103,val = 6766.4}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 180.57}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 6920}},--黑尔·坎普7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 2940.7},[2] = {id = 102,val = 1432.35},[3] = {id = 103,val = 9022.1}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 225.57}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 9175}},--黑尔·坎普8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 3880.6},[2] = {id = 102,val = 1902.3},[3] = {id = 103,val = 11841.8}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 293.37}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 12108}},--黑尔·坎普9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4491.55},[2] = {id = 102,val = 2207.78},[3] = {id = 103,val = 13674.65}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 338.49}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 15492}},--黑尔·坎普10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5196.7},[2] = {id = 102,val = 2560.85},[3] = {id = 103,val = 15790.1}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 394.74}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 19439}},--黑尔·坎普11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6018.6},[2] = {id = 102,val = 2971.8},[3] = {id = 103,val = 18255.8}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 451.41}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 23953}},--黑尔·坎普12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 6958.95},[2] = {id = 102,val = 3441.98},[3] = {id = 103,val = 21076.85}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 521.91}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 29172}},--黑尔·坎普13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8045.8},[2] = {id = 102,val = 3985.9},[3] = {id = 103,val = 24337.4}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 603.45}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 35206}},--黑尔·坎普14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9302.55},[2] = {id = 102,val = 4614.78},[3] = {id = 103,val = 28107.65}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 697.68}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 42182}},--黑尔·坎普15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 10756.35},[2] = {id = 102,val = 5341.18},[3] = {id = 103,val = 32469.05}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 806.73}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 50249}},--黑尔·坎普16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12436.9},[2] = {id = 102,val = 6181.45},[3] = {id = 103,val = 37510.7}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 932.76}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 59576}},--黑尔·坎普17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14380.5},[2] = {id = 102,val = 7152.75},[3] = {id = 103,val = 43341.5}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1078.53}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 70361}},--黑尔·坎普18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16627.05},[2] = {id = 102,val = 8276.53},[3] = {id = 103,val = 50081.15}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1247.04}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 82831}},--黑尔·坎普19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19225.45},[2] = {id = 102,val = 9575.73},[3] = {id = 103,val = 57876.35}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 1441.92}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 97250}},--黑尔·坎普20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22229.65},[2] = {id = 102,val = 11077.33},[3] = {id = 103,val = 66888.95}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 1667.22}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 113922}}--黑尔·坎普21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1701008,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1701008,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1701008,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1701008,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1701008,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("黑尔坎普传记1"),Episode = _T("伴随着一阵令人不寒而栗的咀嚼声，赤炼街镇魂将左铳被三头巨犬塞伯洛斯吞了下去。“你太贪吃了！塞伯洛斯！”令人生畏的三头巨犬闻言低下头轻轻蹭了蹭身穿西装革履的黑尔·坎普。显得格外恭顺，像是一条被驯服的家犬。")},--黑尔坎普传记1
			[2] = {EpisodeTitle = _T("黑尔坎普传记2"),Episode = _T("虽然黑尔·坎普在曹玄亮面前是以王国组织第九骑士的身份现身。但真正的第九骑士却是黑尔·坎普的弟弟——狼神凯利。只是黑尔·坎普为了抢功，才假借弟弟的身份独自行动，妄想一举歼灭曹焱兵等人，正式晋级为十骑士。")},--黑尔坎普传记2
			[3] = {EpisodeTitle = _T("黑尔坎普传记3"),Episode = _T("“真是可恶啊凯利！！身为弟弟却比自己的哥哥强这么多！”伤痕累累的黑尔·坎普有气无力的看着逐渐远去的那道身影。作为狼神凯利的哥哥，黑尔·坎普却一直被弟弟保护着，他当然不甘心，所以想方设法得要变强，但每次与弟弟切磋却依旧被虐的体无完肤。“若是能为组织毁掉灵槐树，上头一定会看重我，为我增强实力吧......”黑尔·坎普低喃着，“到那时，凯利，就由哥哥来保护你吧！”")},--黑尔坎普传记3
			[4] = {EpisodeTitle = _T("黑尔坎普传记4"),Episode = _T("黑尔·坎普原本以为罗刹街之行乃是手到擒来之事，但他万万没有想到，等级远比他低的曹玄亮和被他视为凡人的夏铃竟然能打败他的特殊融合形态。可他也并非一无所获，正因他用黑匣子将罗刹街发生的一切传回了组织，才给曹焱兵之后的旅途带来了极大的麻烦。")},--黑尔坎普传记4
			[5] = {EpisodeTitle = _T("黑尔坎普传记5"),Episode = _T("战败被擒的黑尔·坎普是幸运的，却又是不幸的。幸运是因为他有幸见识到了上一代最强寄灵人皇甫龙斗的实力。不幸的自然是作为皇甫龙斗这次出手的唯一见证者，他也在神武灵刑天的一击下灰飞烟灭，也许在临死之前他或许也曾后悔过不该擅自行动，或许也曾庆幸没有带着弟弟狼神凯利一同来此。")}--黑尔坎普传记5
		}
	},--黑尔坎普
	[1101009] = {
		IfEntreVersion = 1,
		Name = _T("北落师门"),
		NickName = _T("门司令"),
		NamePic = "ui_dtex_Name_1101009",
		NickNamePic = "ui_dtex_Name2_1101009",
		KPKM = "kp_km_1101009",
		Tag = {101},
		Type = 1,
		Quality = 3,
		CrystalType = 1,
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
		mask = 338,
		ExclusiveGuard = {[1] = 1102014},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 165},[2] = {id = 102,val = 0},[3] = {id = 103,val = 1075}},UpAttr = {[1] = {id = 101,val = 17.25},[2] = {id = 102,val = 8.63},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 172,DefExt = 86,HPExt = 517}},--北落师门1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 331.75},[2] = {id = 102,val = 97.18},[3] = {id = 103,val = 1575.25}},UpAttr = {[1] = {id = 101,val = 15.84},[2] = {id = 102,val = 7.92},[3] = {id = 103,val = 47.51}},RosterAttr = {AtkExt = 330,DefExt = 165,HPExt = 992}},--北落师门2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 529.21},[2] = {id = 102,val = 195.9},[3] = {id = 103,val = 2167.62}},UpAttr = {[1] = {id = 101,val = 28.95},[2] = {id = 102,val = 14.47},[3] = {id = 103,val = 86.84}},RosterAttr = {AtkExt = 619,DefExt = 309,HPExt = 1860}},--北落师门3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 891.11},[2] = {id = 102,val = 376.28},[3] = {id = 103,val = 3253.33}},UpAttr = {[1] = {id = 101,val = 34.65},[2] = {id = 102,val = 17.32},[3] = {id = 103,val = 103.95}},RosterAttr = {AtkExt = 965,DefExt = 482,HPExt = 2899}},--北落师门4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1323.86},[2] = {id = 102,val = 593.23},[3] = {id = 103,val = 4551.57}},UpAttr = {[1] = {id = 101,val = 43.31},[2] = {id = 102,val = 21.65},[3] = {id = 103,val = 129.93}},RosterAttr = {AtkExt = 1398,DefExt = 698,HPExt = 4198}},--北落师门5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1865.05},[2] = {id = 102,val = 863.82},[3] = {id = 103,val = 6175.14}},UpAttr = {[1] = {id = 101,val = 56.18},[2] = {id = 102,val = 28.09},[3] = {id = 103,val = 168.53}},RosterAttr = {AtkExt = 1959,DefExt = 978,HPExt = 5883}},--北落师门6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2567.12},[2] = {id = 102,val = 1214.86},[3] = {id = 103,val = 8281.36}},UpAttr = {[1] = {id = 101,val = 69.22},[2] = {id = 102,val = 34.61},[3] = {id = 103,val = 207.66}},RosterAttr = {AtkExt = 2651,DefExt = 1324,HPExt = 7959}},--北落师门7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3431.81},[2] = {id = 102,val = 1647.2},[3] = {id = 103,val = 10875.42}},UpAttr = {[1] = {id = 101,val = 86.47},[2] = {id = 102,val = 43.23},[3] = {id = 103,val = 259.41}},RosterAttr = {AtkExt = 3515,DefExt = 1756,HPExt = 10553}},--北落师门8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4512.69},[2] = {id = 102,val = 2187.65},[3] = {id = 103,val = 14118.07}},UpAttr = {[1] = {id = 101,val = 112.46},[2] = {id = 102,val = 56.23},[3] = {id = 103,val = 337.38}},RosterAttr = {AtkExt = 4639,DefExt = 2318,HPExt = 13926}},--北落师门9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5215.28},[2] = {id = 102,val = 2538.94},[3] = {id = 103,val = 16225.85}},UpAttr = {[1] = {id = 101,val = 129.75},[2] = {id = 102,val = 64.88},[3] = {id = 103,val = 389.26}},RosterAttr = {AtkExt = 5936,DefExt = 2966,HPExt = 17818}},--北落师门10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6026.21},[2] = {id = 102,val = 2944.98},[3] = {id = 103,val = 18658.62}},UpAttr = {[1] = {id = 101,val = 151.32},[2] = {id = 102,val = 75.66},[3] = {id = 103,val = 453.95}},RosterAttr = {AtkExt = 7449,DefExt = 3722,HPExt = 22357}},--北落师门11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6971.39},[2] = {id = 102,val = 3417.57},[3] = {id = 103,val = 21494.17}},UpAttr = {[1] = {id = 101,val = 173.04},[2] = {id = 102,val = 86.52},[3] = {id = 103,val = 519.12}},RosterAttr = {AtkExt = 9179,DefExt = 4587,HPExt = 27548}},--北落师门12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 8052.79},[2] = {id = 102,val = 3958.27},[3] = {id = 103,val = 24738.38}},UpAttr = {[1] = {id = 101,val = 200.07},[2] = {id = 102,val = 100.03},[3] = {id = 103,val = 600.2}},RosterAttr = {AtkExt = 11179,DefExt = 5587,HPExt = 33550}},--北落师门13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 9302.67},[2] = {id = 102,val = 4583.79},[3] = {id = 103,val = 28488.01}},UpAttr = {[1] = {id = 101,val = 231.32},[2] = {id = 102,val = 115.66},[3] = {id = 103,val = 693.97}},RosterAttr = {AtkExt = 13492,DefExt = 6743,HPExt = 40489}},--北落师门14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 10747.93},[2] = {id = 102,val = 5306.99},[3] = {id = 103,val = 32823.8}},UpAttr = {[1] = {id = 101,val = 267.44},[2] = {id = 102,val = 133.72},[3] = {id = 103,val = 802.33}},RosterAttr = {AtkExt = 16166,DefExt = 8080,HPExt = 48512}},--北落师门15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 12419.8},[2] = {id = 102,val = 6142.35},[3] = {id = 103,val = 37839.41}},UpAttr = {[1] = {id = 101,val = 309.25},[2] = {id = 102,val = 154.62},[3] = {id = 103,val = 927.74}},RosterAttr = {AtkExt = 19258,DefExt = 9626,HPExt = 57789}},--北落师门16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 14352.44},[2] = {id = 102,val = 7108.67},[3] = {id = 103,val = 43637.31}},UpAttr = {[1] = {id = 101,val = 357.56},[2] = {id = 102,val = 178.78},[3] = {id = 103,val = 1072.67}},RosterAttr = {AtkExt = 22833,DefExt = 11413,HPExt = 68515}},--北落师门17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 16587.58},[2] = {id = 102,val = 8225.66},[3] = {id = 103,val = 50342.73}},UpAttr = {[1] = {id = 101,val = 413.44},[2] = {id = 102,val = 206.72},[3] = {id = 103,val = 1240.31}},RosterAttr = {AtkExt = 26967,DefExt = 13480,HPExt = 80918}},--北落师门18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 19171.11},[2] = {id = 102,val = 9518},[3] = {id = 103,val = 58093.32}},UpAttr = {[1] = {id = 101,val = 478.03},[2] = {id = 102,val = 239.02},[3] = {id = 103,val = 1434.1}},RosterAttr = {AtkExt = 31747,DefExt = 15870,HPExt = 95259}},--北落师门19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 22159.27},[2] = {id = 102,val = 11012.08},[3] = {id = 103,val = 67057.8}},UpAttr = {[1] = {id = 101,val = 552.74},[2] = {id = 102,val = 276.37},[3] = {id = 103,val = 1658.21}},RosterAttr = {AtkExt = 37274,DefExt = 18633,HPExt = 111841}},--北落师门20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 25614.1},[2] = {id = 102,val = 12738.92},[3] = {id = 103,val = 77422.29}},UpAttr = {[1] = {id = 101,val = 639.1},[2] = {id = 102,val = 319.55},[3] = {id = 103,val = 1917.3}},RosterAttr = {AtkExt = 43665,DefExt = 21828,HPExt = 131014}}--北落师门21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701009,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701009,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701009,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701009,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701009,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("北落师门传记1"),Episode = _T("身为羽林街前任镇魂将，北落师门对待部下的士兵们极好，因此在他离开灵甲军后，仍有不少忠于他的灵甲军将士，只可惜识人不明，最终被曾经他最信任的南御夫背叛，导致了明镜村的悲剧。")},--北落师门传记1
			[2] = {EpisodeTitle = _T("北落师门传记2"),Episode = _T("成为镇魂将之前的所作所为，让北落师门不敢面对自己的亲生女儿——亡灵白水儿。但却一直默默守护在她身边，努力为她创造一片净土。最后父女相认，白水儿原谅了他过去所犯的错误。北落师门才得以重新振作。")},--北落师门传记2
			[3] = {EpisodeTitle = _T("北落师门传记3"),Episode = _T("作为被曹焱兵认可的伙伴，北落师门的强大毋庸置疑，除了拥有强大的守护灵，同时也是一个强大的狙击手。与食火蜥吉拉一役，正因为有他的远程狙击，曹焱兵等人才得以突破吉拉的改造军团。")},--北落师门传记3
			[4] = {EpisodeTitle = _T("北落师门传记4"),Episode = _T("经历过南御夫的背叛，得知了御灵使的真面目之后，北落师门决定和曹焱兵一起颠覆灵界的统治。所以在见到因神的诅咒将死的吉拉，北落师门没有落井下石，反而将其带入芦花古楼恢复，并在随后的战斗中并肩作战，力战风王。")},--北落师门传记4
			[5] = {EpisodeTitle = _T("北落师门传记5"),Episode = _T("“如果你变不回当初的那个样子，可是赢不了我的！”卢书雨站在北落师门面前，饶有兴趣说道。北落师门看着面前叼着香烟，吊儿郎当的男人，知道自己如果大意，很可能会死在这里。不过与当初的单打独斗不同，现在的他，还有伙伴啊！！")}--北落师门传记5
		}
	},--北落师门
	[1101010] = {
		IfEntreVersion = 1,
		Name = _T("盖文"),
		NickName = _T("龙王"),
		NamePic = "ui_dtex_Name_1101010",
		NickNamePic = "ui_dtex_Name2_1101010",
		KPKM = "kp_km_1101010",
		Tag = {101},
		Type = 1,
		Quality = 4,
		CrystalType = 2,
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
		mask = 340,
		ExclusiveGuard = {[1] = 1102016},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 230},[2] = {id = 102,val = 0},[3] = {id = 103,val = 1150}},UpAttr = {[1] = {id = 101,val = 19.5},[2] = {id = 102,val = 9.75},[3] = {id = 103,val = 58.5}},RosterAttr = {AtkExt = 195,DefExt = 97,HPExt = 585}},--盖文1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 418.5},[2] = {id = 102,val = 109.85},[3] = {id = 103,val = 1715.5}},UpAttr = {[1] = {id = 101,val = 17.9},[2] = {id = 102,val = 8.95},[3] = {id = 103,val = 53.7}},RosterAttr = {AtkExt = 374,DefExt = 186,HPExt = 1122}},--盖文2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 641.71},[2] = {id = 102,val = 221.46},[3] = {id = 103,val = 2385.13}},UpAttr = {[1] = {id = 101,val = 32.72},[2] = {id = 102,val = 16.36},[3] = {id = 103,val = 98.16}},RosterAttr = {AtkExt = 701,DefExt = 349,HPExt = 2103}},--盖文3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1050.82},[2] = {id = 102,val = 425.36},[3] = {id = 103,val = 3612.46}},UpAttr = {[1] = {id = 101,val = 39.17},[2] = {id = 102,val = 19.58},[3] = {id = 103,val = 117.51}},RosterAttr = {AtkExt = 1092,DefExt = 544,HPExt = 3278}},--盖文4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1540.01},[2] = {id = 102,val = 670.61},[3] = {id = 103,val = 5080.03}},UpAttr = {[1] = {id = 101,val = 48.96},[2] = {id = 102,val = 24.48},[3] = {id = 103,val = 146.87}},RosterAttr = {AtkExt = 1581,DefExt = 788,HPExt = 4746}},--盖文5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2151.79},[2] = {id = 102,val = 976.5},[3] = {id = 103,val = 6915.37}},UpAttr = {[1] = {id = 101,val = 63.51},[2] = {id = 102,val = 31.75},[3] = {id = 103,val = 190.52}},RosterAttr = {AtkExt = 2216,DefExt = 1105,HPExt = 6651}},--盖文6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2945.44},[2] = {id = 102,val = 1373.32},[3] = {id = 103,val = 9296.32}},UpAttr = {[1] = {id = 101,val = 78.25},[2] = {id = 102,val = 39.12},[3] = {id = 103,val = 234.74}},RosterAttr = {AtkExt = 2998,DefExt = 1496,HPExt = 8998}},--盖文7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3922.91},[2] = {id = 102,val = 1862.06},[3] = {id = 103,val = 12228.73}},UpAttr = {[1] = {id = 101,val = 97.75},[2] = {id = 102,val = 48.87},[3] = {id = 103,val = 293.24}},RosterAttr = {AtkExt = 3975,DefExt = 1984,HPExt = 11930}},--盖文8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 5144.78},[2] = {id = 102,val = 2472.99},[3] = {id = 103,val = 15894.34}},UpAttr = {[1] = {id = 101,val = 127.13},[2] = {id = 102,val = 63.56},[3] = {id = 103,val = 381.38}},RosterAttr = {AtkExt = 5246,DefExt = 2619,HPExt = 15743}},--盖文9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5939.02},[2] = {id = 102,val = 2870.11},[3] = {id = 103,val = 18277.05}},UpAttr = {[1] = {id = 101,val = 146.68},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 440.04}},RosterAttr = {AtkExt = 6712,DefExt = 3352,HPExt = 20143}},--盖文10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6855.71},[2] = {id = 102,val = 3329.11},[3] = {id = 103,val = 21027.13}},UpAttr = {[1] = {id = 101,val = 171.05},[2] = {id = 102,val = 85.53},[3] = {id = 103,val = 513.16}},RosterAttr = {AtkExt = 8422,DefExt = 4207,HPExt = 25274}},--盖文11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 7924.18},[2] = {id = 102,val = 3863.34},[3] = {id = 103,val = 24232.54}},UpAttr = {[1] = {id = 101,val = 195.61},[2] = {id = 102,val = 97.81},[3] = {id = 103,val = 586.83}},RosterAttr = {AtkExt = 10378,DefExt = 5185,HPExt = 31142}},--盖文12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 9146.64},[2] = {id = 102,val = 4474.57},[3] = {id = 103,val = 27899.91}},UpAttr = {[1] = {id = 101,val = 226.16},[2] = {id = 102,val = 113.08},[3] = {id = 103,val = 678.48}},RosterAttr = {AtkExt = 12639,DefExt = 6315,HPExt = 37926}},--盖文13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 10559.54},[2] = {id = 102,val = 5181.67},[3] = {id = 103,val = 32138.62}},UpAttr = {[1] = {id = 101,val = 261.5},[2] = {id = 102,val = 130.75},[3] = {id = 103,val = 784.49}},RosterAttr = {AtkExt = 15254,DefExt = 7622,HPExt = 45770}},--盖文14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 12193.32},[2] = {id = 102,val = 5999.21},[3] = {id = 103,val = 37039.95}},UpAttr = {[1] = {id = 101,val = 302.33},[2] = {id = 102,val = 151.16},[3] = {id = 103,val = 906.98}},RosterAttr = {AtkExt = 18277,DefExt = 9133,HPExt = 54839}},--盖文15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 14083.26},[2] = {id = 102,val = 6943.53},[3] = {id = 103,val = 42709.77}},UpAttr = {[1] = {id = 101,val = 349.58},[2] = {id = 102,val = 174.79},[3] = {id = 103,val = 1048.75}},RosterAttr = {AtkExt = 21772,DefExt = 10880,HPExt = 65326}},--盖文16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 16267.97},[2] = {id = 102,val = 8035.89},[3] = {id = 103,val = 49263.91}},UpAttr = {[1] = {id = 101,val = 404.2},[2] = {id = 102,val = 202.1},[3] = {id = 103,val = 1212.59}},RosterAttr = {AtkExt = 25814,DefExt = 12901,HPExt = 77451}},--盖文17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 18794.65},[2] = {id = 102,val = 9298.58},[3] = {id = 103,val = 56843.95}},UpAttr = {[1] = {id = 101,val = 467.36},[2] = {id = 102,val = 233.68},[3] = {id = 103,val = 1402.09}},RosterAttr = {AtkExt = 30487,DefExt = 15237,HPExt = 91471}},--盖文18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 21715.17},[2] = {id = 102,val = 10759.48},[3] = {id = 103,val = 65605.5}},UpAttr = {[1] = {id = 101,val = 540.38},[2] = {id = 102,val = 270.19},[3] = {id = 103,val = 1621.15}},RosterAttr = {AtkExt = 35890,DefExt = 17938,HPExt = 107682}},--盖文19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 25093.09},[2] = {id = 102,val = 12448.44},[3] = {id = 103,val = 75739.26}},UpAttr = {[1] = {id = 101,val = 624.83},[2] = {id = 102,val = 312.42},[3] = {id = 103,val = 1874.5}},RosterAttr = {AtkExt = 42138,DefExt = 21062,HPExt = 126427}},--盖文20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 28998.55},[2] = {id = 102,val = 14400.52},[3] = {id = 103,val = 87455.64}},UpAttr = {[1] = {id = 101,val = 722.46},[2] = {id = 102,val = 361.23},[3] = {id = 103,val = 2167.39}},RosterAttr = {AtkExt = 49362,DefExt = 24674,HPExt = 148100}}--盖文21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1701010,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1701010,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1701010,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1701010,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1701010,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("盖文传记1"),Episode = _T("王国组织第四骑士，龙王盖文，这个名字便是强大的代名词。龙王盖文的强大不止是实力，还有自身的眼界！即使狂傲如狼神凯利，在面对龙王盖文时也极为尊敬。对龙王盖文提出的意见，即使凯利内心有所不愿，却也不会故意违背。")},--盖文传记1
			[2] = {EpisodeTitle = _T("盖文传记2"),Episode = _T("在西方，龙是可以与神相媲美的强大种族。极少有人能驯服龙这种生物，将其变成自身的守护灵更是难上加难。所以当拥有龙族守护灵的龙王盖文横空出世时，王国组织第一时间便抛出了橄榄枝，并不惜以第四骑士之位相待。")},--盖文传记2
			[3] = {EpisodeTitle = _T("盖文传记3"),Episode = _T("盖文的来历颇为神秘，王国组织中有传闻说他来自西方一个拥有古老传承的家族。这个古老家族的每一任继承人都会承接上一代传承下来的强大龙魂，但却并不是家族中的每一个人都有资格享受这种待遇。")},--盖文传记3
			[4] = {EpisodeTitle = _T("盖文传记4"),Episode = _T("传闻中盖文虽然身为这个古老家族的一员，但却并非家族的第一顺位继承人，所以家族代代传承的远古龙魂并不会传承给他。所有人都认为盖文会甘心做一个平凡的家族成员，可他却一言不发的离开了家族。")},--盖文传记4
			[5] = {EpisodeTitle = _T("盖文传记5"),Episode = _T("据说雅典海域的一个小镇上，曾有人见过盖文的身影，他孤身一人前往了曾有西方龙出没的海域，接着那片海域便传来经久不息的龙啸。不久之后，伤痕累累的盖文回到了家族。没人知道那天发生了什么，但从此以后，古老家族的继承人只有一个，龙王盖文。")}--盖文传记5
		}
	},--盖文
	[1101011] = {
		IfEntreVersion = 1,
		Name = _T("阎风吒"),
		NickName = _T("混世风魔"),
		NamePic = "ui_dtex_Name_1101011",
		NickNamePic = "ui_dtex_Name2_1101011",
		KPKM = "kp_km_1101011",
		Tag = {101},
		Type = 1,
		Quality = 3,
		CrystalType = 2,
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
		mask = 340,
		ExclusiveGuard = {[1] = 1102017},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 165},[2] = {id = 102,val = 0},[3] = {id = 103,val = 1075}},UpAttr = {[1] = {id = 101,val = 17.25},[2] = {id = 102,val = 8.63},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 172,DefExt = 86,HPExt = 517}},--阎风吒1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 331.75},[2] = {id = 102,val = 97.18},[3] = {id = 103,val = 1575.25}},UpAttr = {[1] = {id = 101,val = 15.84},[2] = {id = 102,val = 7.92},[3] = {id = 103,val = 47.51}},RosterAttr = {AtkExt = 330,DefExt = 165,HPExt = 992}},--阎风吒2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 529.21},[2] = {id = 102,val = 195.9},[3] = {id = 103,val = 2167.62}},UpAttr = {[1] = {id = 101,val = 28.95},[2] = {id = 102,val = 14.47},[3] = {id = 103,val = 86.84}},RosterAttr = {AtkExt = 619,DefExt = 309,HPExt = 1860}},--阎风吒3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 891.11},[2] = {id = 102,val = 376.28},[3] = {id = 103,val = 3253.33}},UpAttr = {[1] = {id = 101,val = 34.65},[2] = {id = 102,val = 17.32},[3] = {id = 103,val = 103.95}},RosterAttr = {AtkExt = 965,DefExt = 482,HPExt = 2899}},--阎风吒4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1323.86},[2] = {id = 102,val = 593.23},[3] = {id = 103,val = 4551.57}},UpAttr = {[1] = {id = 101,val = 43.31},[2] = {id = 102,val = 21.65},[3] = {id = 103,val = 129.93}},RosterAttr = {AtkExt = 1398,DefExt = 698,HPExt = 4198}},--阎风吒5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1865.05},[2] = {id = 102,val = 863.82},[3] = {id = 103,val = 6175.14}},UpAttr = {[1] = {id = 101,val = 56.18},[2] = {id = 102,val = 28.09},[3] = {id = 103,val = 168.53}},RosterAttr = {AtkExt = 1959,DefExt = 978,HPExt = 5883}},--阎风吒6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2567.12},[2] = {id = 102,val = 1214.86},[3] = {id = 103,val = 8281.36}},UpAttr = {[1] = {id = 101,val = 69.22},[2] = {id = 102,val = 34.61},[3] = {id = 103,val = 207.66}},RosterAttr = {AtkExt = 2651,DefExt = 1324,HPExt = 7959}},--阎风吒7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3431.81},[2] = {id = 102,val = 1647.2},[3] = {id = 103,val = 10875.42}},UpAttr = {[1] = {id = 101,val = 86.47},[2] = {id = 102,val = 43.23},[3] = {id = 103,val = 259.41}},RosterAttr = {AtkExt = 3515,DefExt = 1756,HPExt = 10553}},--阎风吒8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4512.69},[2] = {id = 102,val = 2187.65},[3] = {id = 103,val = 14118.07}},UpAttr = {[1] = {id = 101,val = 112.46},[2] = {id = 102,val = 56.23},[3] = {id = 103,val = 337.38}},RosterAttr = {AtkExt = 4639,DefExt = 2318,HPExt = 13926}},--阎风吒9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5215.28},[2] = {id = 102,val = 2538.94},[3] = {id = 103,val = 16225.85}},UpAttr = {[1] = {id = 101,val = 129.75},[2] = {id = 102,val = 64.88},[3] = {id = 103,val = 389.26}},RosterAttr = {AtkExt = 5936,DefExt = 2966,HPExt = 17818}},--阎风吒10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6026.21},[2] = {id = 102,val = 2944.98},[3] = {id = 103,val = 18658.62}},UpAttr = {[1] = {id = 101,val = 151.32},[2] = {id = 102,val = 75.66},[3] = {id = 103,val = 453.95}},RosterAttr = {AtkExt = 7449,DefExt = 3722,HPExt = 22357}},--阎风吒11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6971.39},[2] = {id = 102,val = 3417.57},[3] = {id = 103,val = 21494.17}},UpAttr = {[1] = {id = 101,val = 173.04},[2] = {id = 102,val = 86.52},[3] = {id = 103,val = 519.12}},RosterAttr = {AtkExt = 9179,DefExt = 4587,HPExt = 27548}},--阎风吒12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 8052.79},[2] = {id = 102,val = 3958.27},[3] = {id = 103,val = 24738.38}},UpAttr = {[1] = {id = 101,val = 200.07},[2] = {id = 102,val = 100.03},[3] = {id = 103,val = 600.2}},RosterAttr = {AtkExt = 11179,DefExt = 5587,HPExt = 33550}},--阎风吒13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 9302.67},[2] = {id = 102,val = 4583.79},[3] = {id = 103,val = 28488.01}},UpAttr = {[1] = {id = 101,val = 231.32},[2] = {id = 102,val = 115.66},[3] = {id = 103,val = 693.97}},RosterAttr = {AtkExt = 13492,DefExt = 6743,HPExt = 40489}},--阎风吒14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 10747.93},[2] = {id = 102,val = 5306.99},[3] = {id = 103,val = 32823.8}},UpAttr = {[1] = {id = 101,val = 267.44},[2] = {id = 102,val = 133.72},[3] = {id = 103,val = 802.33}},RosterAttr = {AtkExt = 16166,DefExt = 8080,HPExt = 48512}},--阎风吒15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 12419.8},[2] = {id = 102,val = 6142.35},[3] = {id = 103,val = 37839.41}},UpAttr = {[1] = {id = 101,val = 309.25},[2] = {id = 102,val = 154.62},[3] = {id = 103,val = 927.74}},RosterAttr = {AtkExt = 19258,DefExt = 9626,HPExt = 57789}},--阎风吒16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 14352.44},[2] = {id = 102,val = 7108.67},[3] = {id = 103,val = 43637.31}},UpAttr = {[1] = {id = 101,val = 357.56},[2] = {id = 102,val = 178.78},[3] = {id = 103,val = 1072.67}},RosterAttr = {AtkExt = 22833,DefExt = 11413,HPExt = 68515}},--阎风吒17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 16587.58},[2] = {id = 102,val = 8225.66},[3] = {id = 103,val = 50342.73}},UpAttr = {[1] = {id = 101,val = 413.44},[2] = {id = 102,val = 206.72},[3] = {id = 103,val = 1240.31}},RosterAttr = {AtkExt = 26967,DefExt = 13480,HPExt = 80918}},--阎风吒18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 19171.11},[2] = {id = 102,val = 9518},[3] = {id = 103,val = 58093.32}},UpAttr = {[1] = {id = 101,val = 478.03},[2] = {id = 102,val = 239.02},[3] = {id = 103,val = 1434.1}},RosterAttr = {AtkExt = 31747,DefExt = 15870,HPExt = 95259}},--阎风吒19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 22159.27},[2] = {id = 102,val = 11012.08},[3] = {id = 103,val = 67057.8}},UpAttr = {[1] = {id = 101,val = 552.74},[2] = {id = 102,val = 276.37},[3] = {id = 103,val = 1658.21}},RosterAttr = {AtkExt = 37274,DefExt = 18633,HPExt = 111841}},--阎风吒20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 25614.1},[2] = {id = 102,val = 12738.92},[3] = {id = 103,val = 77422.29}},UpAttr = {[1] = {id = 101,val = 639.1},[2] = {id = 102,val = 319.55},[3] = {id = 103,val = 1917.3}},RosterAttr = {AtkExt = 43665,DefExt = 21828,HPExt = 131014}}--阎风吒21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701011,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701011,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701011,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701011,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701011,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("阎风吒传记1"),Episode = _T("七年前，阎风吒的守护灵暴走，毁掉了半条凌风街，阎风吒被父亲锁在特制的牢房中，关了整整五年。但为了追寻姐姐阎巧巧的下落，阎风吒数年中无数次越狱，终于在七年后得手，单枪匹马杀出了凌风街。")},--阎风吒传记1
			[2] = {EpisodeTitle = _T("阎风吒传记2"),Episode = _T("“这是你自己的选择......真的做好准备了？”飞廉看着前方那道身影问道。阎风吒望着手中的星月之坠，淡淡道：“星月之坠告诉我，她就在此地......期盼着我的到来！”下方便是人人谈之色变的空神之森。")},--阎风吒传记2
			[3] = {EpisodeTitle = _T("阎风吒传记3"),Episode = _T("阎风吒被月王变成石像，眼睁睁的看着姐姐阎巧巧在自己面前灰飞烟灭，他却无能为力。与北落师门一样，见识了所谓神的真面目，阎风吒也选择成为了曹焱兵的伙伴，与他共同踏上了征战天下的道路。")},--阎风吒传记3
			[4] = {EpisodeTitle = _T("阎风吒传记4"),Episode = _T("“我答应巧巧，要努力活下去！”阎风吒笑着说出了这句话，但眼角却有泪水止不住的流下。逝者已矣，生者安息，阎风吒从来不愿意让姐姐失望，即使她已经不在人世，可是她的话，阎风吒依旧会听。")},--阎风吒传记4
			[5] = {EpisodeTitle = _T("阎风吒传记5"),Episode = _T("“在风的世界里，我就是王者！”在自己的领域之中，即便是面对王国组织第七骑士这样的强敌，阎风吒也没有丝毫畏惧。身为王国组织的第七骑士，隐术士鸦也虽然早已从组织中了解到眼前少年的情报，她丝毫不敢大意轻敌。")}--阎风吒传记5
		}
	},--阎风吒
	[1101012] = {
		IfEntreVersion = 1,
		Name = _T("南御夫"),
		NickName = _T("狼子野心"),
		NamePic = "ui_dtex_Name_1101012",
		NickNamePic = "ui_dtex_Name2_1101012",
		KPKM = "kp_km_1101012",
		Tag = {101},
		Type = 1,
		Quality = 2,
		CrystalType = 2,
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
		GachaDialogue = "gacha_nyf_1101012",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 340,
		ExclusiveGuard = {[1] = 1102018},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 100},[2] = {id = 102,val = 0},[3] = {id = 103,val = 500}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 450}},--南御夫1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 245},[2] = {id = 102,val = 84.5},[3] = {id = 103,val = 935}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 41.31}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 863}},--南御夫2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 416.7},[2] = {id = 102,val = 170.35},[3] = {id = 103,val = 1450.1}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 75.51}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 1618}},--南御夫3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 731.4},[2] = {id = 102,val = 327.2},[3] = {id = 103,val = 2394.2}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 90.39}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 2521}},--南御夫4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1107.7},[2] = {id = 102,val = 515.85},[3] = {id = 103,val = 3523.1}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 112.98}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 3650}},--南御夫5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1578.3},[2] = {id = 102,val = 751.15},[3] = {id = 103,val = 4934.9}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 146.55}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 5115}},--南御夫6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2188.8},[2] = {id = 102,val = 1056.4},[3] = {id = 103,val = 6766.4}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 180.57}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 6920}},--南御夫7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 2940.7},[2] = {id = 102,val = 1432.35},[3] = {id = 103,val = 9022.1}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 225.57}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 9175}},--南御夫8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 3880.6},[2] = {id = 102,val = 1902.3},[3] = {id = 103,val = 11841.8}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 293.37}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 12108}},--南御夫9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4491.55},[2] = {id = 102,val = 2207.78},[3] = {id = 103,val = 13674.65}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 338.49}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 15492}},--南御夫10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5196.7},[2] = {id = 102,val = 2560.85},[3] = {id = 103,val = 15790.1}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 394.74}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 19439}},--南御夫11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6018.6},[2] = {id = 102,val = 2971.8},[3] = {id = 103,val = 18255.8}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 451.41}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 23953}},--南御夫12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 6958.95},[2] = {id = 102,val = 3441.98},[3] = {id = 103,val = 21076.85}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 521.91}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 29172}},--南御夫13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8045.8},[2] = {id = 102,val = 3985.9},[3] = {id = 103,val = 24337.4}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 603.45}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 35206}},--南御夫14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9302.55},[2] = {id = 102,val = 4614.78},[3] = {id = 103,val = 28107.65}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 697.68}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 42182}},--南御夫15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 10756.35},[2] = {id = 102,val = 5341.18},[3] = {id = 103,val = 32469.05}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 806.73}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 50249}},--南御夫16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12436.9},[2] = {id = 102,val = 6181.45},[3] = {id = 103,val = 37510.7}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 932.76}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 59576}},--南御夫17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14380.5},[2] = {id = 102,val = 7152.75},[3] = {id = 103,val = 43341.5}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1078.53}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 70361}},--南御夫18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16627.05},[2] = {id = 102,val = 8276.53},[3] = {id = 103,val = 50081.15}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1247.04}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 82831}},--南御夫19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19225.45},[2] = {id = 102,val = 9575.73},[3] = {id = 103,val = 57876.35}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 1441.92}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 97250}},--南御夫20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22229.65},[2] = {id = 102,val = 11077.33},[3] = {id = 103,val = 66888.95}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 1667.22}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 113922}}--南御夫21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701012,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701012,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701012,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701012,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701012,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("南御夫传记1"),Episode = _T("有的人，从前被压制的越厉害，一旦得势就越发不择手段。南御夫正是其中的佼佼者，他表面上道貌岸然，对北落师门极为尊敬，但暗地里却在北落师门背后捅刀，且刀刀致命。他不仅想要杀掉北落师门，同样要诛灭北落师门的本心。")},--南御夫传记1
			[2] = {EpisodeTitle = _T("南御夫传记2"),Episode = _T("明镜村中的屠杀渐渐趋近尾声，明镜村幸存的村民全都躲在了菩提树下，“怎么，全部都躲在玉菩提下，以为能受到神的庇护？只可惜这是个豺狼虎豹的年代！就让我用一把火，烧尽你们所谓的信仰！”南御夫说完，便指挥军队用火箭将菩提树下化作了火海地狱。")},--南御夫传记2
			[3] = {EpisodeTitle = _T("南御夫传记3"),Episode = _T("南御夫端坐在宝座上，望着不远处那道如入无人之境的身影。灵甲军根本无法阻止北落师门，但南御夫却早有准备，他知道北落师门的软肋在哪里，他冷笑着冲身后招了招手，名为白水儿的少女被士兵压了上来，南御夫看着面前的少女，嘴角勾笑：“做父亲的，怎么会忍心让自己死去的女儿......再死一次？”")},--南御夫传记3
			[4] = {EpisodeTitle = _T("南御夫传记4"),Episode = _T("即使南御夫觉得成为羽林街镇魂将之后，他已经今非昔比。但面对曾经的顶头上司北落师门，即使对方已经被锁灵石枷锁禁锢，他内心深处仍有着极深的忌惮，所以他屡次想要不顾灵界的责罚，在北落师门体内的将军链被取出之前便将其灭口，以绝后患。")},--南御夫传记4
			[5] = {EpisodeTitle = _T("南御夫传记5"),Episode = _T("南御夫之所以能成为羽林街镇魂将，除了他工于心计之外，更重要的是他迎合灵域上层，为其做了许多见不得人的勾当。也正因如此，他才能获得极为强大的守护灵——魔武灵噬日。但由于魔武灵的过于强大，若是没有灵域的玄黄丹保命，南御夫也不敢贸然召唤，否则连他自己也将被失控的噬日所吞噬。")}--南御夫传记5
		}
	},--南御夫
	[1101013] = {
		IfEntreVersion = 1,
		Name = _T("吉拉"),
		NickName = _T("第五骑士"),
		NamePic = "ui_dtex_Name_1101013",
		NickNamePic = "ui_dtex_Name2_1101013",
		KPKM = "kp_km_1101013",
		Tag = {101},
		Type = 1,
		Quality = 2,
		CrystalType = 1,
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
		GachaDialogue = "gacha_jl_1101013",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 338,
		ExclusiveGuard = {[1] = 1102019},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 100},[2] = {id = 102,val = 0},[3] = {id = 103,val = 500}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 450}},--吉拉1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 245},[2] = {id = 102,val = 84.5},[3] = {id = 103,val = 935}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 41.31}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 863}},--吉拉2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 416.7},[2] = {id = 102,val = 170.35},[3] = {id = 103,val = 1450.1}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 75.51}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 1618}},--吉拉3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 731.4},[2] = {id = 102,val = 327.2},[3] = {id = 103,val = 2394.2}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 90.39}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 2521}},--吉拉4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1107.7},[2] = {id = 102,val = 515.85},[3] = {id = 103,val = 3523.1}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 112.98}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 3650}},--吉拉5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1578.3},[2] = {id = 102,val = 751.15},[3] = {id = 103,val = 4934.9}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 146.55}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 5115}},--吉拉6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2188.8},[2] = {id = 102,val = 1056.4},[3] = {id = 103,val = 6766.4}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 180.57}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 6920}},--吉拉7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 2940.7},[2] = {id = 102,val = 1432.35},[3] = {id = 103,val = 9022.1}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 225.57}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 9175}},--吉拉8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 3880.6},[2] = {id = 102,val = 1902.3},[3] = {id = 103,val = 11841.8}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 293.37}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 12108}},--吉拉9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4491.55},[2] = {id = 102,val = 2207.78},[3] = {id = 103,val = 13674.65}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 338.49}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 15492}},--吉拉10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5196.7},[2] = {id = 102,val = 2560.85},[3] = {id = 103,val = 15790.1}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 394.74}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 19439}},--吉拉11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6018.6},[2] = {id = 102,val = 2971.8},[3] = {id = 103,val = 18255.8}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 451.41}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 23953}},--吉拉12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 6958.95},[2] = {id = 102,val = 3441.98},[3] = {id = 103,val = 21076.85}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 521.91}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 29172}},--吉拉13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8045.8},[2] = {id = 102,val = 3985.9},[3] = {id = 103,val = 24337.4}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 603.45}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 35206}},--吉拉14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9302.55},[2] = {id = 102,val = 4614.78},[3] = {id = 103,val = 28107.65}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 697.68}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 42182}},--吉拉15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 10756.35},[2] = {id = 102,val = 5341.18},[3] = {id = 103,val = 32469.05}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 806.73}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 50249}},--吉拉16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12436.9},[2] = {id = 102,val = 6181.45},[3] = {id = 103,val = 37510.7}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 932.76}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 59576}},--吉拉17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14380.5},[2] = {id = 102,val = 7152.75},[3] = {id = 103,val = 43341.5}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1078.53}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 70361}},--吉拉18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16627.05},[2] = {id = 102,val = 8276.53},[3] = {id = 103,val = 50081.15}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1247.04}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 82831}},--吉拉19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19225.45},[2] = {id = 102,val = 9575.73},[3] = {id = 103,val = 57876.35}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 1441.92}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 97250}},--吉拉20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22229.65},[2] = {id = 102,val = 11077.33},[3] = {id = 103,val = 66888.95}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 1667.22}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 113922}}--吉拉21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1701013,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1701013,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1701013,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1701013,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1701013,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("吉拉传记1"),Episode = _T("空神之森自足以来就是灵界禁地。任何踏入空神之森的人都会被守护者阻止。自数年前守护此地的踏风一族消失之后，原以为从此无人守护的空神之森却出现了一个更为残暴的守护者——食火蜥·吉拉。任何擅自闯入空神之森的人都会被他无情捕杀。")},--吉拉传记1
			[2] = {EpisodeTitle = _T("吉拉传记2"),Episode = _T("吉拉除了身为空神之森的守护者之外。还有另一层身份是冥界亡灵研究机构的成员。因此冥界才会放任吉拉将空神之森的亡灵改造成蜥怪。但吉拉肆意改造亡灵，并非只是单纯为了取乐，他一直在寻找将死去的族人复活的方法。")},--吉拉传记2
			[3] = {EpisodeTitle = _T("吉拉传记3"),Episode = _T("吉拉之所以暗中投靠王国组织，成为了王国十骑士中的第五骑士，最重要的原因是想借助王国组织的力量，帮他摆脱月神的诅咒，从而恢复自由之身，离开空神之森。而王国组织招揽吉拉的目的，同样是打算利用他的职务之便，来监视芦花古楼的动向，双方各取所需。")},--吉拉传记3
			[4] = {EpisodeTitle = _T("吉拉传记4"),Episode = _T("“反正都是一丝，倒不如寄希望于你们。给我狠狠教训那些自诩为神的家伙！”半个身体已经石化的吉拉像是在交代遗言。“这个仇恐怕还得你亲自去报！随我前往修罗道吧！”原本与吉拉互为敌对的北落师门却拖着吉拉走向芦花古楼，因为他与吉拉一样，都看不惯所谓的神明。")},--吉拉传记4
			[5] = {EpisodeTitle = _T("吉拉传记5"),Episode = _T("芦花古楼一役后，解除诅咒，恢复自由之身的吉拉本可以随心所欲的生活，但在看到昔日的同伴，第三骑士红莲缇娜面临被组织处决时。他冒着被王国组织惩罚的危险，孤身前来通知曹焱兵这个消息，从而给红莲缇娜的必死之局中增添了一丝希望。可能连吉拉自己都没意识到，不知不觉间，他已经跟从前有所不同了。")}--吉拉传记5
		}
	},--吉拉
	[1101014] = {
		IfEntreVersion = 1,
		Name = _T("吕仙宫"),
		NickName = _T("陷阵统领"),
		NamePic = "ui_dtex_Name_1101014",
		NickNamePic = "ui_dtex_Name2_1101014",
		KPKM = "kp_km_1101014",
		Tag = {101},
		Type = 1,
		Quality = 3,
		CrystalType = 2,
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
		mask = 404,
		ExclusiveGuard = {[1] = 1102020},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 165},[2] = {id = 102,val = 0},[3] = {id = 103,val = 1075}},UpAttr = {[1] = {id = 101,val = 17.25},[2] = {id = 102,val = 8.63},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 172,DefExt = 86,HPExt = 517}},--吕仙宫1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 331.75},[2] = {id = 102,val = 97.18},[3] = {id = 103,val = 1575.25}},UpAttr = {[1] = {id = 101,val = 15.84},[2] = {id = 102,val = 7.92},[3] = {id = 103,val = 47.51}},RosterAttr = {AtkExt = 330,DefExt = 165,HPExt = 992}},--吕仙宫2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 529.21},[2] = {id = 102,val = 195.9},[3] = {id = 103,val = 2167.62}},UpAttr = {[1] = {id = 101,val = 28.95},[2] = {id = 102,val = 14.47},[3] = {id = 103,val = 86.84}},RosterAttr = {AtkExt = 619,DefExt = 309,HPExt = 1860}},--吕仙宫3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 891.11},[2] = {id = 102,val = 376.28},[3] = {id = 103,val = 3253.33}},UpAttr = {[1] = {id = 101,val = 34.65},[2] = {id = 102,val = 17.32},[3] = {id = 103,val = 103.95}},RosterAttr = {AtkExt = 965,DefExt = 482,HPExt = 2899}},--吕仙宫4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1323.86},[2] = {id = 102,val = 593.23},[3] = {id = 103,val = 4551.57}},UpAttr = {[1] = {id = 101,val = 43.31},[2] = {id = 102,val = 21.65},[3] = {id = 103,val = 129.93}},RosterAttr = {AtkExt = 1398,DefExt = 698,HPExt = 4198}},--吕仙宫5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1865.05},[2] = {id = 102,val = 863.82},[3] = {id = 103,val = 6175.14}},UpAttr = {[1] = {id = 101,val = 56.18},[2] = {id = 102,val = 28.09},[3] = {id = 103,val = 168.53}},RosterAttr = {AtkExt = 1959,DefExt = 978,HPExt = 5883}},--吕仙宫6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2567.12},[2] = {id = 102,val = 1214.86},[3] = {id = 103,val = 8281.36}},UpAttr = {[1] = {id = 101,val = 69.22},[2] = {id = 102,val = 34.61},[3] = {id = 103,val = 207.66}},RosterAttr = {AtkExt = 2651,DefExt = 1324,HPExt = 7959}},--吕仙宫7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3431.81},[2] = {id = 102,val = 1647.2},[3] = {id = 103,val = 10875.42}},UpAttr = {[1] = {id = 101,val = 86.47},[2] = {id = 102,val = 43.23},[3] = {id = 103,val = 259.41}},RosterAttr = {AtkExt = 3515,DefExt = 1756,HPExt = 10553}},--吕仙宫8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4512.69},[2] = {id = 102,val = 2187.65},[3] = {id = 103,val = 14118.07}},UpAttr = {[1] = {id = 101,val = 112.46},[2] = {id = 102,val = 56.23},[3] = {id = 103,val = 337.38}},RosterAttr = {AtkExt = 4639,DefExt = 2318,HPExt = 13926}},--吕仙宫9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5215.28},[2] = {id = 102,val = 2538.94},[3] = {id = 103,val = 16225.85}},UpAttr = {[1] = {id = 101,val = 129.75},[2] = {id = 102,val = 64.88},[3] = {id = 103,val = 389.26}},RosterAttr = {AtkExt = 5936,DefExt = 2966,HPExt = 17818}},--吕仙宫10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6026.21},[2] = {id = 102,val = 2944.98},[3] = {id = 103,val = 18658.62}},UpAttr = {[1] = {id = 101,val = 151.32},[2] = {id = 102,val = 75.66},[3] = {id = 103,val = 453.95}},RosterAttr = {AtkExt = 7449,DefExt = 3722,HPExt = 22357}},--吕仙宫11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6971.39},[2] = {id = 102,val = 3417.57},[3] = {id = 103,val = 21494.17}},UpAttr = {[1] = {id = 101,val = 173.04},[2] = {id = 102,val = 86.52},[3] = {id = 103,val = 519.12}},RosterAttr = {AtkExt = 9179,DefExt = 4587,HPExt = 27548}},--吕仙宫12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 8052.79},[2] = {id = 102,val = 3958.27},[3] = {id = 103,val = 24738.38}},UpAttr = {[1] = {id = 101,val = 200.07},[2] = {id = 102,val = 100.03},[3] = {id = 103,val = 600.2}},RosterAttr = {AtkExt = 11179,DefExt = 5587,HPExt = 33550}},--吕仙宫13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 9302.67},[2] = {id = 102,val = 4583.79},[3] = {id = 103,val = 28488.01}},UpAttr = {[1] = {id = 101,val = 231.32},[2] = {id = 102,val = 115.66},[3] = {id = 103,val = 693.97}},RosterAttr = {AtkExt = 13492,DefExt = 6743,HPExt = 40489}},--吕仙宫14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 10747.93},[2] = {id = 102,val = 5306.99},[3] = {id = 103,val = 32823.8}},UpAttr = {[1] = {id = 101,val = 267.44},[2] = {id = 102,val = 133.72},[3] = {id = 103,val = 802.33}},RosterAttr = {AtkExt = 16166,DefExt = 8080,HPExt = 48512}},--吕仙宫15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 12419.8},[2] = {id = 102,val = 6142.35},[3] = {id = 103,val = 37839.41}},UpAttr = {[1] = {id = 101,val = 309.25},[2] = {id = 102,val = 154.62},[3] = {id = 103,val = 927.74}},RosterAttr = {AtkExt = 19258,DefExt = 9626,HPExt = 57789}},--吕仙宫16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 14352.44},[2] = {id = 102,val = 7108.67},[3] = {id = 103,val = 43637.31}},UpAttr = {[1] = {id = 101,val = 357.56},[2] = {id = 102,val = 178.78},[3] = {id = 103,val = 1072.67}},RosterAttr = {AtkExt = 22833,DefExt = 11413,HPExt = 68515}},--吕仙宫17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 16587.58},[2] = {id = 102,val = 8225.66},[3] = {id = 103,val = 50342.73}},UpAttr = {[1] = {id = 101,val = 413.44},[2] = {id = 102,val = 206.72},[3] = {id = 103,val = 1240.31}},RosterAttr = {AtkExt = 26967,DefExt = 13480,HPExt = 80918}},--吕仙宫18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 19171.11},[2] = {id = 102,val = 9518},[3] = {id = 103,val = 58093.32}},UpAttr = {[1] = {id = 101,val = 478.03},[2] = {id = 102,val = 239.02},[3] = {id = 103,val = 1434.1}},RosterAttr = {AtkExt = 31747,DefExt = 15870,HPExt = 95259}},--吕仙宫19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 22159.27},[2] = {id = 102,val = 11012.08},[3] = {id = 103,val = 67057.8}},UpAttr = {[1] = {id = 101,val = 552.74},[2] = {id = 102,val = 276.37},[3] = {id = 103,val = 1658.21}},RosterAttr = {AtkExt = 37274,DefExt = 18633,HPExt = 111841}},--吕仙宫20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 25614.1},[2] = {id = 102,val = 12738.92},[3] = {id = 103,val = 77422.29}},UpAttr = {[1] = {id = 101,val = 639.1},[2] = {id = 102,val = 319.55},[3] = {id = 103,val = 1917.3}},RosterAttr = {AtkExt = 43665,DefExt = 21828,HPExt = 131014}}--吕仙宫21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1701014,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1701014,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1701014,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1701014,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1701014,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("吕仙宫传记1"),Episode = _T("吕仙宫身为陷阵营的统领，同时又负责管理所有大焦热级镇魂将的资料。羽林之变事件中，通过与项昆仑的对话，确认曹焱兵的地狱道提升为大焦热。并将消息传回告诉了貂灵芸。")},--吕仙宫传记1
			[2] = {EpisodeTitle = _T("吕仙宫传记2"),Episode = _T("拥有高顺作为守护灵的吕仙宫是群英殿中数一数二的战力。但即使强大如她，也有自己的弱点，那便是怕鬼。正因如此，御灵殿的黑衣守卫总喜欢吐着长长的舌头，装鬼吓唬她。")},--吕仙宫传记2
			[3] = {EpisodeTitle = _T("吕仙宫传记3"),Episode = _T("拼死杀出不归路的曹焱兵和阎风吒却遭到了早已等在此地的貂灵芸以及秦王攻的埋伏，种种迹象标明，曹焱兵一行人之所以受到貂灵芸的重视，正是因为吕仙宫所传递回去的情报。擒住曹焱兵，吕仙宫功不可没。")},--吕仙宫传记3
			[4] = {EpisodeTitle = _T("吕仙宫传记4"),Episode = _T("群英殿之乱中，吕仙宫亲自出手对战独自留下断后的唐无心，在即将给其最后一击之际，却被千机黑刹中逃出的囚徒重创，从而无力去领导陷阵营。正因陷阵营群龙无首，才被典韦和张飞杀出了一条血路。")},--吕仙宫传记4
			[5] = {EpisodeTitle = _T("吕仙宫传记5"),Episode = _T("群英殿的势力能够发展壮大，绝对少不了吕仙宫的功劳，她统领着群英殿战力最强的军队，不仅武力出众，其智谋也在群英殿中名列前茅。一直在貂灵芸身边充当智囊的角色。是仅有的几个能让貂灵芸改变主意的人之一。")}--吕仙宫传记5
		}
	},--吕仙宫
	[1101015] = {
		IfEntreVersion = 1,
		Name = _T("阎巧巧"),
		NickName = _T("踏风守护"),
		NamePic = "ui_dtex_Name_1101015",
		NickNamePic = "ui_dtex_Name2_1101015",
		KPKM = "kp_km_1101015",
		Tag = {101},
		Type = 1,
		Quality = 2,
		CrystalType = 2,
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
		GachaDialogue = "gacha_yqq_1101015",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 404,
		ExclusiveGuard = {[1] = 1102021},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 165},[2] = {id = 102,val = 0},[3] = {id = 103,val = 1075}},UpAttr = {[1] = {id = 101,val = 17.25},[2] = {id = 102,val = 8.63},[3] = {id = 103,val = 51.75}},RosterAttr = {AtkExt = 172,DefExt = 86,HPExt = 517}},--阎巧巧1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 331.75},[2] = {id = 102,val = 97.18},[3] = {id = 103,val = 1575.25}},UpAttr = {[1] = {id = 101,val = 15.84},[2] = {id = 102,val = 7.92},[3] = {id = 103,val = 47.51}},RosterAttr = {AtkExt = 330,DefExt = 165,HPExt = 992}},--阎巧巧2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 529.21},[2] = {id = 102,val = 195.9},[3] = {id = 103,val = 2167.62}},UpAttr = {[1] = {id = 101,val = 28.95},[2] = {id = 102,val = 14.47},[3] = {id = 103,val = 86.84}},RosterAttr = {AtkExt = 619,DefExt = 309,HPExt = 1860}},--阎巧巧3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 891.11},[2] = {id = 102,val = 376.28},[3] = {id = 103,val = 3253.33}},UpAttr = {[1] = {id = 101,val = 34.65},[2] = {id = 102,val = 17.32},[3] = {id = 103,val = 103.95}},RosterAttr = {AtkExt = 965,DefExt = 482,HPExt = 2899}},--阎巧巧4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1323.86},[2] = {id = 102,val = 593.23},[3] = {id = 103,val = 4551.57}},UpAttr = {[1] = {id = 101,val = 43.31},[2] = {id = 102,val = 21.65},[3] = {id = 103,val = 129.93}},RosterAttr = {AtkExt = 1398,DefExt = 698,HPExt = 4198}},--阎巧巧5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1865.05},[2] = {id = 102,val = 863.82},[3] = {id = 103,val = 6175.14}},UpAttr = {[1] = {id = 101,val = 56.18},[2] = {id = 102,val = 28.09},[3] = {id = 103,val = 168.53}},RosterAttr = {AtkExt = 1959,DefExt = 978,HPExt = 5883}},--阎巧巧6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2567.12},[2] = {id = 102,val = 1214.86},[3] = {id = 103,val = 8281.36}},UpAttr = {[1] = {id = 101,val = 69.22},[2] = {id = 102,val = 34.61},[3] = {id = 103,val = 207.66}},RosterAttr = {AtkExt = 2651,DefExt = 1324,HPExt = 7959}},--阎巧巧7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3431.81},[2] = {id = 102,val = 1647.2},[3] = {id = 103,val = 10875.42}},UpAttr = {[1] = {id = 101,val = 86.47},[2] = {id = 102,val = 43.23},[3] = {id = 103,val = 259.41}},RosterAttr = {AtkExt = 3515,DefExt = 1756,HPExt = 10553}},--阎巧巧8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4512.69},[2] = {id = 102,val = 2187.65},[3] = {id = 103,val = 14118.07}},UpAttr = {[1] = {id = 101,val = 112.46},[2] = {id = 102,val = 56.23},[3] = {id = 103,val = 337.38}},RosterAttr = {AtkExt = 4639,DefExt = 2318,HPExt = 13926}},--阎巧巧9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5215.28},[2] = {id = 102,val = 2538.94},[3] = {id = 103,val = 16225.85}},UpAttr = {[1] = {id = 101,val = 129.75},[2] = {id = 102,val = 64.88},[3] = {id = 103,val = 389.26}},RosterAttr = {AtkExt = 5936,DefExt = 2966,HPExt = 17818}},--阎巧巧10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6026.21},[2] = {id = 102,val = 2944.98},[3] = {id = 103,val = 18658.62}},UpAttr = {[1] = {id = 101,val = 151.32},[2] = {id = 102,val = 75.66},[3] = {id = 103,val = 453.95}},RosterAttr = {AtkExt = 7449,DefExt = 3722,HPExt = 22357}},--阎巧巧11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6971.39},[2] = {id = 102,val = 3417.57},[3] = {id = 103,val = 21494.17}},UpAttr = {[1] = {id = 101,val = 173.04},[2] = {id = 102,val = 86.52},[3] = {id = 103,val = 519.12}},RosterAttr = {AtkExt = 9179,DefExt = 4587,HPExt = 27548}},--阎巧巧12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 8052.79},[2] = {id = 102,val = 3958.27},[3] = {id = 103,val = 24738.38}},UpAttr = {[1] = {id = 101,val = 200.07},[2] = {id = 102,val = 100.03},[3] = {id = 103,val = 600.2}},RosterAttr = {AtkExt = 11179,DefExt = 5587,HPExt = 33550}},--阎巧巧13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 9302.67},[2] = {id = 102,val = 4583.79},[3] = {id = 103,val = 28488.01}},UpAttr = {[1] = {id = 101,val = 231.32},[2] = {id = 102,val = 115.66},[3] = {id = 103,val = 693.97}},RosterAttr = {AtkExt = 13492,DefExt = 6743,HPExt = 40489}},--阎巧巧14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 10747.93},[2] = {id = 102,val = 5306.99},[3] = {id = 103,val = 32823.8}},UpAttr = {[1] = {id = 101,val = 267.44},[2] = {id = 102,val = 133.72},[3] = {id = 103,val = 802.33}},RosterAttr = {AtkExt = 16166,DefExt = 8080,HPExt = 48512}},--阎巧巧15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 12419.8},[2] = {id = 102,val = 6142.35},[3] = {id = 103,val = 37839.41}},UpAttr = {[1] = {id = 101,val = 309.25},[2] = {id = 102,val = 154.62},[3] = {id = 103,val = 927.74}},RosterAttr = {AtkExt = 19258,DefExt = 9626,HPExt = 57789}},--阎巧巧16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 14352.44},[2] = {id = 102,val = 7108.67},[3] = {id = 103,val = 43637.31}},UpAttr = {[1] = {id = 101,val = 357.56},[2] = {id = 102,val = 178.78},[3] = {id = 103,val = 1072.67}},RosterAttr = {AtkExt = 22833,DefExt = 11413,HPExt = 68515}},--阎巧巧17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 16587.58},[2] = {id = 102,val = 8225.66},[3] = {id = 103,val = 50342.73}},UpAttr = {[1] = {id = 101,val = 413.44},[2] = {id = 102,val = 206.72},[3] = {id = 103,val = 1240.31}},RosterAttr = {AtkExt = 26967,DefExt = 13480,HPExt = 80918}},--阎巧巧18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 19171.11},[2] = {id = 102,val = 9518},[3] = {id = 103,val = 58093.32}},UpAttr = {[1] = {id = 101,val = 478.03},[2] = {id = 102,val = 239.02},[3] = {id = 103,val = 1434.1}},RosterAttr = {AtkExt = 31747,DefExt = 15870,HPExt = 95259}},--阎巧巧19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 22159.27},[2] = {id = 102,val = 11012.08},[3] = {id = 103,val = 67057.8}},UpAttr = {[1] = {id = 101,val = 552.74},[2] = {id = 102,val = 276.37},[3] = {id = 103,val = 1658.21}},RosterAttr = {AtkExt = 37274,DefExt = 18633,HPExt = 111841}},--阎巧巧20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 25614.1},[2] = {id = 102,val = 12738.92},[3] = {id = 103,val = 77422.29}},UpAttr = {[1] = {id = 101,val = 639.1},[2] = {id = 102,val = 319.55},[3] = {id = 103,val = 1917.3}},RosterAttr = {AtkExt = 43665,DefExt = 21828,HPExt = 131014}}--阎巧巧21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1701015,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1701015,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1701015,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1701015,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1701015,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("阎巧巧传记1"),Episode = _T("阎风吒出生时体内便拥有无比强大的灵力。家族中的长辈都将他视作不详，唯有阎巧巧始终护着弟弟，为他遮风挡雨，在无数责难中一手将其带大。若是没有善良的阎巧巧，便没有今日的阎风吒。")},--阎巧巧传记1
			[2] = {EpisodeTitle = _T("阎巧巧传记2"),Episode = _T("因为风魔兽的力量过于强大，在阎风吒彻底将其掌控之前，风魔兽的一次暴走毁掉了半条凌风街。犯下大罪的阎风吒原本难逃一死，但阎巧巧却以前往空神之森为条件，换来了阎风吒的性命。")},--阎巧巧传记2
			[3] = {EpisodeTitle = _T("阎巧巧传记3"),Episode = _T("踏风族作为吉拉之前的空神之森守护者，要阻止任何人靠近芦花古楼，而阎巧巧则是守护此地的族人首领，她的守护灵烈风螳螂是极为强大的风属性兽武灵，在她的带领下和守护下，空神之森多年中一直保持着宁静，没有出过什么乱子。")},--阎巧巧传记3
			[4] = {EpisodeTitle = _T("阎巧巧传记4"),Episode = _T("吉拉在踏风族的追击下，打开芦花古楼，撞破了御灵使和四王之间的秘密。四王之中的花王却看中了阎巧巧的身体，无视踏风族守护空神之森多年的功劳，执意要夺取阎巧巧，取而代之。直到此时阎巧巧才明白，在所谓神明眼中，凡人不过是蝼蚁。")},--阎巧巧传记4
			[5] = {EpisodeTitle = _T("阎巧巧传记5"),Episode = _T("在曹焱兵等人的帮助下，阎巧巧终于夺回了自己的身体，但却为了拯救被月王石化的弟弟阎风吒，以自身性命为代价将月王控制，给曹焱兵创造了攻击的机会。身体逐渐崩溃的阎巧巧一步步走向被石化的阎风吒，始终保持着笑容，像以前那样，叮嘱弟弟：“好好活下去。”")}--阎巧巧传记5
		}
	},--阎巧巧
	[1101041] = {
		IfEntreVersion = 1,
		Name = _T("常服夏玲"),
		NickName = _T("应届生夏玲"),
		NamePic = "ui_dtex_Name_1101041",
		NickNamePic = "ui_dtex_Name2_1101041",
		KPKM = "kp_km_1101041",
		Tag = {101},
		Type = 1,
		Quality = 2,
		CrystalType = 3,
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
		RpCvt = {[1] = {id = 1701041,val = 20}},
		DebrisID = 1701041,
		ComposeNum = 20,
		CardFace = "cardface_cfxl_1101041",
		Head2 = "head_cfxl_1101041",
		HeadBig = "headbig_cfxl_1101041",
		Icon = "head_cfxl_1101041",
		Painting = "draw_cfxl_1101041",
		Cutin = "cutin_cfxl_1101041",
		GachaDialogue = "gacha_cfxl_1101041",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 408,
		ExclusiveGuard = {[1] = 1102021},
		RecommendTeam = {1,2,3},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 100},[2] = {id = 102,val = 0},[3] = {id = 103,val = 500}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 45}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 450}},--常服夏玲1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 245},[2] = {id = 102,val = 84.5},[3] = {id = 103,val = 935}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 41.31}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 863}},--常服夏玲2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 416.7},[2] = {id = 102,val = 170.35},[3] = {id = 103,val = 1450.1}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 75.51}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 1618}},--常服夏玲3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 731.4},[2] = {id = 102,val = 327.2},[3] = {id = 103,val = 2394.2}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 90.39}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 2521}},--常服夏玲4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1107.7},[2] = {id = 102,val = 515.85},[3] = {id = 103,val = 3523.1}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 112.98}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 3650}},--常服夏玲5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1578.3},[2] = {id = 102,val = 751.15},[3] = {id = 103,val = 4934.9}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 146.55}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 5115}},--常服夏玲6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2188.8},[2] = {id = 102,val = 1056.4},[3] = {id = 103,val = 6766.4}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 180.57}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 6920}},--常服夏玲7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 2940.7},[2] = {id = 102,val = 1432.35},[3] = {id = 103,val = 9022.1}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 225.57}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 9175}},--常服夏玲8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 3880.6},[2] = {id = 102,val = 1902.3},[3] = {id = 103,val = 11841.8}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 293.37}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 12108}},--常服夏玲9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4491.55},[2] = {id = 102,val = 2207.78},[3] = {id = 103,val = 13674.65}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 338.49}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 15492}},--常服夏玲10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5196.7},[2] = {id = 102,val = 2560.85},[3] = {id = 103,val = 15790.1}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 394.74}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 19439}},--常服夏玲11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6018.6},[2] = {id = 102,val = 2971.8},[3] = {id = 103,val = 18255.8}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 451.41}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 23953}},--常服夏玲12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 6958.95},[2] = {id = 102,val = 3441.98},[3] = {id = 103,val = 21076.85}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 521.91}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 29172}},--常服夏玲13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8045.8},[2] = {id = 102,val = 3985.9},[3] = {id = 103,val = 24337.4}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 603.45}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 35206}},--常服夏玲14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9302.55},[2] = {id = 102,val = 4614.78},[3] = {id = 103,val = 28107.65}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 697.68}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 42182}},--常服夏玲15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 10756.35},[2] = {id = 102,val = 5341.18},[3] = {id = 103,val = 32469.05}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 806.73}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 50249}},--常服夏玲16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12436.9},[2] = {id = 102,val = 6181.45},[3] = {id = 103,val = 37510.7}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 932.76}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 59576}},--常服夏玲17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14380.5},[2] = {id = 102,val = 7152.75},[3] = {id = 103,val = 43341.5}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1078.53}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 70361}},--常服夏玲18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16627.05},[2] = {id = 102,val = 8276.53},[3] = {id = 103,val = 50081.15}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1247.04}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 82831}},--常服夏玲19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19225.45},[2] = {id = 102,val = 9575.73},[3] = {id = 103,val = 57876.35}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 1441.92}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 97250}},--常服夏玲20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22229.65},[2] = {id = 102,val = 11077.33},[3] = {id = 103,val = 66888.95}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 1667.22}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 113922}}--常服夏玲21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1701041,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1701041,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1701041,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1701041,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1701041,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("常服夏铃传记1"),Episode = _T("一个风华正茂的毕业大学生，对自己今后的人生尚无明确的目标。")}--常服夏铃传记1
		}
	},--常服夏铃
	[1102001] = {
		IfEntreVersion = 1,
		Name = _T("关羽"),
		NickName = _T("武圣"),
		NamePic = "ui_dtex_Name_1102001",
		NickNamePic = "ui_dtex_Name2_1102001",
		KPKM = "kp_km_1102001",
		Tag = {103},
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
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2002,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 975},[2] = {id = 102,val = 150},[3] = {id = 103,val = 3625}},UpAttr = {[1] = {id = 101,val = 22.5},[2] = {id = 102,val = 11.25},[3] = {id = 103,val = 100.5}},RosterAttr = {AtkExt = 225,DefExt = 112,HPExt = 1005}},--关羽1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 1215},[2] = {id = 102,val = 266.25},[3] = {id = 103,val = 4867}},UpAttr = {[1] = {id = 101,val = 20.66},[2] = {id = 102,val = 10.33},[3] = {id = 103,val = 91.5}},RosterAttr = {AtkExt = 431,DefExt = 215,HPExt = 1920},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--关羽2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 1472.55},[2] = {id = 102,val = 395.03},[3] = {id = 103,val = 6241}},UpAttr = {[1] = {id = 101,val = 37.76},[2] = {id = 102,val = 18.88},[3] = {id = 103,val = 169.5}},RosterAttr = {AtkExt = 808,DefExt = 403,HPExt = 3615},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--关羽3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1944.6},[2] = {id = 102,val = 630.3},[3] = {id = 103,val = 8786.5}},UpAttr = {[1] = {id = 101,val = 45.2},[2] = {id = 102,val = 22.6},[3] = {id = 103,val = 202.5}},RosterAttr = {AtkExt = 1260,DefExt = 629,HPExt = 5640},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--关羽4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 2509.05},[2] = {id = 102,val = 913.28},[3] = {id = 103,val = 11824}},UpAttr = {[1] = {id = 101,val = 56.49},[2] = {id = 102,val = 28.25},[3] = {id = 103,val = 253.5}},RosterAttr = {AtkExt = 1824,DefExt = 911,HPExt = 8175},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 60}}},--关羽5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 3214.95},[2] = {id = 102,val = 1266.23},[3] = {id = 103,val = 15628}},UpAttr = {[1] = {id = 101,val = 73.28},[2] = {id = 102,val = 36.64},[3] = {id = 103,val = 328.5}},RosterAttr = {AtkExt = 2556,DefExt = 1277,HPExt = 11460},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603007,val = 60}}},--关羽6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 4130.7},[2] = {id = 102,val = 1724.1},[3] = {id = 103,val = 20560}},UpAttr = {[1] = {id = 101,val = 90.29},[2] = {id = 102,val = 45.14},[3] = {id = 103,val = 405}},RosterAttr = {AtkExt = 3458,DefExt = 1728,HPExt = 15510},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603007,val = 80}}},--关羽7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 5258.55},[2] = {id = 102,val = 2288.03},[3] = {id = 103,val = 26635}},UpAttr = {[1] = {id = 101,val = 112.79},[2] = {id = 102,val = 56.39},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 4585,DefExt = 2291,HPExt = 20580},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603007,val = 75}}},--关羽8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 6668.4},[2] = {id = 102,val = 2992.95},[3] = {id = 103,val = 34243}},UpAttr = {[1] = {id = 101,val = 146.69},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 660}},RosterAttr = {AtkExt = 6051,DefExt = 3024,HPExt = 27180},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603010,val = 35}}},--关羽9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 7584.83},[2] = {id = 102,val = 3451.16},[3] = {id = 103,val = 39190}},UpAttr = {[1] = {id = 101,val = 169.25},[2] = {id = 102,val = 84.62},[3] = {id = 103,val = 760.5}},RosterAttr = {AtkExt = 7743,DefExt = 3870,HPExt = 34785},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 50}}},--关羽10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 8642.55},[2] = {id = 102,val = 3980.78},[3] = {id = 103,val = 44896}},UpAttr = {[1] = {id = 101,val = 197.37},[2] = {id = 102,val = 98.69},[3] = {id = 103,val = 888}},RosterAttr = {AtkExt = 9716,DefExt = 4856,HPExt = 43665},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603010,val = 75}}},--关羽11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 9875.4},[2] = {id = 102,val = 4597.2},[3] = {id = 103,val = 51550}},UpAttr = {[1] = {id = 101,val = 225.71},[2] = {id = 102,val = 112.85},[3] = {id = 103,val = 1015.5}},RosterAttr = {AtkExt = 11973,DefExt = 5984,HPExt = 53820},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603010,val = 80}}},--关羽12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 11285.93},[2] = {id = 102,val = 5302.46},[3] = {id = 103,val = 59165.5}},UpAttr = {[1] = {id = 101,val = 260.96},[2] = {id = 102,val = 130.48},[3] = {id = 103,val = 1173}},RosterAttr = {AtkExt = 14582,DefExt = 7288,HPExt = 65550},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603010,val = 100}}},--关羽13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 12916.2},[2] = {id = 102,val = 6118.35},[3] = {id = 103,val = 67960}},UpAttr = {[1] = {id = 101,val = 301.73},[2] = {id = 102,val = 150.86},[3] = {id = 103,val = 1357.5}},RosterAttr = {AtkExt = 17599,DefExt = 8796,HPExt = 79125},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603010,val = 100}}},--关羽14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 14801.33},[2] = {id = 102,val = 7061.66},[3] = {id = 103,val = 78136}},UpAttr = {[1] = {id = 101,val = 348.84},[2] = {id = 102,val = 174.42},[3] = {id = 103,val = 1569}},RosterAttr = {AtkExt = 21087,DefExt = 10540,HPExt = 94815},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603013,val = 15}}},--关羽15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 16982.03},[2] = {id = 102,val = 8151.26},[3] = {id = 103,val = 89909.5}},UpAttr = {[1] = {id = 101,val = 403.37},[2] = {id = 102,val = 201.68},[3] = {id = 103,val = 1815}},RosterAttr = {AtkExt = 25120,DefExt = 12556,HPExt = 112965},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603013,val = 20}}},--关羽16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 19502.85},[2] = {id = 102,val = 9411.68},[3] = {id = 103,val = 103520.5}},UpAttr = {[1] = {id = 101,val = 466.38},[2] = {id = 102,val = 233.19},[3] = {id = 103,val = 2098.5}},RosterAttr = {AtkExt = 29783,DefExt = 14887,HPExt = 133950},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603013,val = 30},[4] = {id = 1603014,val = 5}}},--关羽17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 22418.25},[2] = {id = 102,val = 10868.63},[3] = {id = 103,val = 119264.5}},UpAttr = {[1] = {id = 101,val = 539.27},[2] = {id = 102,val = 269.63},[3] = {id = 103,val = 2425.5}},RosterAttr = {AtkExt = 35175,DefExt = 17583,HPExt = 158205},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603013,val = 40},[4] = {id = 1603014,val = 10}}},--关羽18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 25788.08},[2] = {id = 102,val = 12554.29},[3] = {id = 103,val = 137453.5}},UpAttr = {[1] = {id = 101,val = 623.52},[2] = {id = 102,val = 311.76},[3] = {id = 103,val = 2805}},RosterAttr = {AtkExt = 41410,DefExt = 20700,HPExt = 186255},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603013,val = 50},[4] = {id = 1603014,val = 15}}},--关羽19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 29685.68},[2] = {id = 102,val = 14503.09},[3] = {id = 103,val = 158498.5}},UpAttr = {[1] = {id = 101,val = 720.96},[2] = {id = 102,val = 360.48},[3] = {id = 103,val = 3243}},RosterAttr = {AtkExt = 48619,DefExt = 24304,HPExt = 218685},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603013,val = 60},[4] = {id = 1603014,val = 20}}},--关羽20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 34191.98},[2] = {id = 102,val = 16755.49},[3] = {id = 103,val = 182827}},UpAttr = {[1] = {id = 101,val = 833.61},[2] = {id = 102,val = 416.81},[3] = {id = 103,val = 3750}},RosterAttr = {AtkExt = 56955,DefExt = 28472,HPExt = 256185},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 75},[4] = {id = 1603014,val = 25}}}--关羽21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702001,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702001,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702001,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702001,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702001,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("关羽传记1"),Episode = _T("关羽身为蜀国五虎上将之首，生前跟随刘备辗转征战，忠心耿耿。死后亦化为守护灵，守护和辅佐刘备后人刘羽禅。刘羽禅在他的帮助下逐一收服了五虎上将，成为了第一个真正掌握武神躯力量寄灵人。")},--关羽传记1
			[2] = {EpisodeTitle = _T("关羽传记2"),Episode = _T("跟随刘羽禅大闹群英殿时，关羽遇到了堪称劲敌的隋唐猛将秦叔宝，两个时代的英雄相遇，碰撞出了绝对精彩的火花。但因为种种原因，这精彩绝伦的一战只得半途收场，但两人之间在未来势必要为这场未曾完结的战斗画上句号。")},--关羽传记2
			[3] = {EpisodeTitle = _T("关羽传记3"),Episode = _T("水云街郊外，一头巨大的恶灵来到关羽身后。“好久没尝到血肉的味道了，让我把你吞噬吧！”恶灵张开獠牙巨口向关羽扑来。接着它的动作却突然一顿，身体被劈成了两半。关羽头也未回，淡淡道：“青龙偃月刀的一斩也挡不住，也妄想吞噬我？”")},--关羽传记3
			[4] = {EpisodeTitle = _T("关羽传记4"),Episode = _T("“二哥，若是有朝一日阿禅与曹焱兵开战，你当如何？”张飞望着前方那道眺目远望的身影道。关羽微微一叹，道：“当年曹公待我情义深厚，张辽与我也颇有交情，若是真到了那一步，自然是先尽忠再论义了。更何况我相信曹焱兵的武将们也不需要你我手下留情。”")},--关羽传记4
			[5] = {EpisodeTitle = _T("关羽传记5"),Episode = _T("关羽望着第一次将他召唤出来的刘羽禅，道：“如今虽然已不是当年的乱世，但若有朝一日阿禅想要争一争这天下，我关羽便替主公斩平前方的一切荆棘。”刘羽禅闻言却是一副温和无害的样子，只是笑笑：“真有那么一天再说啦，如今你们就是我的家人，家人团聚才是最重要的。”")}--关羽传记5
		}
	},--关羽
	[1102002] = {
		IfEntreVersion = 1,
		Name = _T("许褚"),
		NickName = _T("虎痴"),
		NamePic = "ui_dtex_Name_1102002",
		NickNamePic = "ui_dtex_Name2_1102002",
		KPKM = "kp_km_1102002",
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
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2003,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 502.5},[2] = {id = 102,val = 115},[3] = {id = 103,val = 1362.5}},UpAttr = {[1] = {id = 101,val = 17.25},[2] = {id = 102,val = 8.63},[3] = {id = 103,val = 77.05}},RosterAttr = {AtkExt = 172,DefExt = 86,HPExt = 770}},--许褚1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 686.5},[2] = {id = 102,val = 204.13},[3] = {id = 103,val = 2314.7}},UpAttr = {[1] = {id = 101,val = 15.84},[2] = {id = 102,val = 7.92},[3] = {id = 103,val = 70.15}},RosterAttr = {AtkExt = 330,DefExt = 165,HPExt = 1471},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--许褚2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 883.96},[2] = {id = 102,val = 302.85},[3] = {id = 103,val = 3368.1}},UpAttr = {[1] = {id = 101,val = 28.95},[2] = {id = 102,val = 14.47},[3] = {id = 103,val = 129.95}},RosterAttr = {AtkExt = 619,DefExt = 309,HPExt = 2770},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--许褚3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1245.86},[2] = {id = 102,val = 483.23},[3] = {id = 103,val = 5319.65}},UpAttr = {[1] = {id = 101,val = 34.65},[2] = {id = 102,val = 17.32},[3] = {id = 103,val = 155.25}},RosterAttr = {AtkExt = 965,DefExt = 482,HPExt = 4322},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--许褚4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1678.61},[2] = {id = 102,val = 700.18},[3] = {id = 103,val = 7648.4}},UpAttr = {[1] = {id = 101,val = 43.31},[2] = {id = 102,val = 21.65},[3] = {id = 103,val = 194.35}},RosterAttr = {AtkExt = 1398,DefExt = 698,HPExt = 6265},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 60}}},--许褚5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2219.8},[2] = {id = 102,val = 970.77},[3] = {id = 103,val = 10564.8}},UpAttr = {[1] = {id = 101,val = 56.18},[2] = {id = 102,val = 28.09},[3] = {id = 103,val = 251.85}},RosterAttr = {AtkExt = 1959,DefExt = 978,HPExt = 8783},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603005,val = 60}}},--许褚6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2921.87},[2] = {id = 102,val = 1321.81},[3] = {id = 103,val = 14346}},UpAttr = {[1] = {id = 101,val = 69.22},[2] = {id = 102,val = 34.61},[3] = {id = 103,val = 310.5}},RosterAttr = {AtkExt = 2651,DefExt = 1324,HPExt = 11888},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603005,val = 80}}},--许褚7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3786.56},[2] = {id = 102,val = 1754.15},[3] = {id = 103,val = 19003.5}},UpAttr = {[1] = {id = 101,val = 86.47},[2] = {id = 102,val = 43.23},[3] = {id = 103,val = 388.7}},RosterAttr = {AtkExt = 3515,DefExt = 1756,HPExt = 15775},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603005,val = 75}}},--许褚8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4867.44},[2] = {id = 102,val = 2294.6},[3] = {id = 103,val = 24836.3}},UpAttr = {[1] = {id = 101,val = 112.46},[2] = {id = 102,val = 56.23},[3] = {id = 103,val = 506}},RosterAttr = {AtkExt = 4639,DefExt = 2318,HPExt = 20835},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603008,val = 35}}},--许褚9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5570.03},[2] = {id = 102,val = 2645.89},[3] = {id = 103,val = 28629}},UpAttr = {[1] = {id = 101,val = 129.75},[2] = {id = 102,val = 64.88},[3] = {id = 103,val = 583.05}},RosterAttr = {AtkExt = 5936,DefExt = 2966,HPExt = 26665},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 50}}},--许褚10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6380.96},[2] = {id = 102,val = 3051.93},[3] = {id = 103,val = 33003.6}},UpAttr = {[1] = {id = 101,val = 151.32},[2] = {id = 102,val = 75.66},[3] = {id = 103,val = 680.8}},RosterAttr = {AtkExt = 7449,DefExt = 3722,HPExt = 33473},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603008,val = 75}}},--许褚11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 7326.14},[2] = {id = 102,val = 3524.52},[3] = {id = 103,val = 38105}},UpAttr = {[1] = {id = 101,val = 173.04},[2] = {id = 102,val = 86.52},[3] = {id = 103,val = 778.55}},RosterAttr = {AtkExt = 9179,DefExt = 4587,HPExt = 41258},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603008,val = 80}}},--许褚12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 8407.54},[2] = {id = 102,val = 4065.22},[3] = {id = 103,val = 43943.55}},UpAttr = {[1] = {id = 101,val = 200.07},[2] = {id = 102,val = 100.03},[3] = {id = 103,val = 899.3}},RosterAttr = {AtkExt = 11179,DefExt = 5587,HPExt = 50251},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603008,val = 100}}},--许褚13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 9657.42},[2] = {id = 102,val = 4690.74},[3] = {id = 103,val = 50686}},UpAttr = {[1] = {id = 101,val = 231.32},[2] = {id = 102,val = 115.66},[3] = {id = 103,val = 1040.75}},RosterAttr = {AtkExt = 13492,DefExt = 6743,HPExt = 60658},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603008,val = 100}}},--许褚14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 11102.68},[2] = {id = 102,val = 5413.94},[3] = {id = 103,val = 58487.6}},UpAttr = {[1] = {id = 101,val = 267.44},[2] = {id = 102,val = 133.72},[3] = {id = 103,val = 1202.9}},RosterAttr = {AtkExt = 16166,DefExt = 8080,HPExt = 72687},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603011,val = 15}}},--许褚15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 12774.55},[2] = {id = 102,val = 6249.3},[3] = {id = 103,val = 67513.95}},UpAttr = {[1] = {id = 101,val = 309.25},[2] = {id = 102,val = 154.62},[3] = {id = 103,val = 1391.5}},RosterAttr = {AtkExt = 19258,DefExt = 9626,HPExt = 86602},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603011,val = 20}}},--许褚16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 14707.19},[2] = {id = 102,val = 7215.62},[3] = {id = 103,val = 77949.05}},UpAttr = {[1] = {id = 101,val = 357.56},[2] = {id = 102,val = 178.78},[3] = {id = 103,val = 1608.85}},RosterAttr = {AtkExt = 22833,DefExt = 11413,HPExt = 102690},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603011,val = 30},[4] = {id = 1603014,val = 5}}},--许褚17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 16942.33},[2] = {id = 102,val = 8332.61},[3] = {id = 103,val = 90019.45}},UpAttr = {[1] = {id = 101,val = 413.44},[2] = {id = 102,val = 206.72},[3] = {id = 103,val = 1859.55}},RosterAttr = {AtkExt = 26967,DefExt = 13480,HPExt = 121285},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603011,val = 40},[4] = {id = 1603014,val = 10}}},--许褚18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 19525.86},[2] = {id = 102,val = 9624.95},[3] = {id = 103,val = 103964.4}},UpAttr = {[1] = {id = 101,val = 478.03},[2] = {id = 102,val = 239.02},[3] = {id = 103,val = 2150.5}},RosterAttr = {AtkExt = 31747,DefExt = 15870,HPExt = 142790},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603011,val = 50},[4] = {id = 1603014,val = 15}}},--许褚19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 22514.02},[2] = {id = 102,val = 11119.03},[3] = {id = 103,val = 120098.9}},UpAttr = {[1] = {id = 101,val = 552.74},[2] = {id = 102,val = 276.37},[3] = {id = 103,val = 2486.3}},RosterAttr = {AtkExt = 37274,DefExt = 18633,HPExt = 167653},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603011,val = 60},[4] = {id = 1603014,val = 20}}},--许褚20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 25968.85},[2] = {id = 102,val = 12845.87},[3] = {id = 103,val = 138750.7}},UpAttr = {[1] = {id = 101,val = 639.1},[2] = {id = 102,val = 319.55},[3] = {id = 103,val = 2875}},RosterAttr = {AtkExt = 43665,DefExt = 21828,HPExt = 196403},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 75},[4] = {id = 1603014,val = 25}}}--许褚21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1702002,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1702002,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 101,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1702002,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.2},[2] = {id = 101,val = 0.3}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1702002,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.25},[2] = {id = 101,val = 0.35},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1702002,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.4},[2] = {id = 101,val = 0.5},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("许褚传记1"),Episode = _T("许褚是第一个愿意主动与曹焱兵签订契约的守护灵。许褚人称“虎痴”，是三国时期曹操的近卫，虎卫军统领，周身通红的盔甲与强壮的身躯是他的象征，手持千钧大锤，让罗刹街的恶灵们闻风丧胆。")},--许褚传记1
			[2] = {EpisodeTitle = _T("许褚传记2"),Episode = _T("许褚不善言谈，却对曹家忠心耿耿。在十殿阎罗中的其他武将仍在质疑曹焱兵是否有资格继承他们的力量时，许褚却毫不犹豫的现身与曹焱兵签订契约，接替于禁成为了曹焱兵的守护灵。")},--许褚传记2
			[3] = {EpisodeTitle = _T("许褚传记3"),Episode = _T("作为最早跟随曹焱兵的守护灵，许褚的力量伴随着曹焱兵一起成长，经历过无数恶战。每当需要召唤守护灵时，许褚永远是曹焱兵的第一选择。一人一灵之间的感情与其说是主仆，倒不如说是亲人。")},--许褚传记3
			[4] = {EpisodeTitle = _T("许褚传记4"),Episode = _T("许褚最强的乃是他拥有无穷的力量，即便是面对力量极为强横的石灵明，许褚在力量上也压了对方一头。若非石灵明耍了些小手段，恐怕两个守护灵的首次交锋，石灵明便会败在许褚的力量之上。")},--许褚传记4
			[5] = {EpisodeTitle = _T("许褚传记5"),Episode = _T("“只要主公想取天下，哪怕前方有着千军万马！哪怕我许褚只剩一只臂膀！也足够震碎这大地！”经过地狱火洗礼的许褚重获新生，他高高扬起单臂砸在地上，将项昆仑麾下的精锐士兵尽数震碎。不善言谈的他，用行动证明了一切。")}--许褚传记5
		}
	},--许褚
	[1102003] = {
		IfEntreVersion = 1,
		Name = _T("典韦"),
		NickName = _T("古之恶来"),
		NamePic = "ui_dtex_Name_1102003",
		NickNamePic = "ui_dtex_Name2_1102003",
		KPKM = "kp_km_1102003",
		Tag = {101,106},
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
		mask = 610,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2004,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 502.5},[2] = {id = 102,val = 115},[3] = {id = 103,val = 1362.5}},UpAttr = {[1] = {id = 101,val = 17.25},[2] = {id = 102,val = 8.63},[3] = {id = 103,val = 77.05}},RosterAttr = {AtkExt = 172,DefExt = 86,HPExt = 770}},--典韦1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 686.5},[2] = {id = 102,val = 204.13},[3] = {id = 103,val = 2314.7}},UpAttr = {[1] = {id = 101,val = 15.84},[2] = {id = 102,val = 7.92},[3] = {id = 103,val = 70.15}},RosterAttr = {AtkExt = 330,DefExt = 165,HPExt = 1471},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--典韦2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 883.96},[2] = {id = 102,val = 302.85},[3] = {id = 103,val = 3368.1}},UpAttr = {[1] = {id = 101,val = 28.95},[2] = {id = 102,val = 14.47},[3] = {id = 103,val = 129.95}},RosterAttr = {AtkExt = 619,DefExt = 309,HPExt = 2770},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--典韦3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1245.86},[2] = {id = 102,val = 483.23},[3] = {id = 103,val = 5319.65}},UpAttr = {[1] = {id = 101,val = 34.65},[2] = {id = 102,val = 17.32},[3] = {id = 103,val = 155.25}},RosterAttr = {AtkExt = 965,DefExt = 482,HPExt = 4322},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--典韦4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1678.61},[2] = {id = 102,val = 700.18},[3] = {id = 103,val = 7648.4}},UpAttr = {[1] = {id = 101,val = 43.31},[2] = {id = 102,val = 21.65},[3] = {id = 103,val = 194.35}},RosterAttr = {AtkExt = 1398,DefExt = 698,HPExt = 6265},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 60}}},--典韦5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2219.8},[2] = {id = 102,val = 970.77},[3] = {id = 103,val = 10564.8}},UpAttr = {[1] = {id = 101,val = 56.18},[2] = {id = 102,val = 28.09},[3] = {id = 103,val = 251.85}},RosterAttr = {AtkExt = 1959,DefExt = 978,HPExt = 8783},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603005,val = 60}}},--典韦6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2921.87},[2] = {id = 102,val = 1321.81},[3] = {id = 103,val = 14346}},UpAttr = {[1] = {id = 101,val = 69.22},[2] = {id = 102,val = 34.61},[3] = {id = 103,val = 310.5}},RosterAttr = {AtkExt = 2651,DefExt = 1324,HPExt = 11888},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603005,val = 80}}},--典韦7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3786.56},[2] = {id = 102,val = 1754.15},[3] = {id = 103,val = 19003.5}},UpAttr = {[1] = {id = 101,val = 86.47},[2] = {id = 102,val = 43.23},[3] = {id = 103,val = 388.7}},RosterAttr = {AtkExt = 3515,DefExt = 1756,HPExt = 15775},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603005,val = 75}}},--典韦8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4867.44},[2] = {id = 102,val = 2294.6},[3] = {id = 103,val = 24836.3}},UpAttr = {[1] = {id = 101,val = 112.46},[2] = {id = 102,val = 56.23},[3] = {id = 103,val = 506}},RosterAttr = {AtkExt = 4639,DefExt = 2318,HPExt = 20835},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603008,val = 35}}},--典韦9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5570.03},[2] = {id = 102,val = 2645.89},[3] = {id = 103,val = 28629}},UpAttr = {[1] = {id = 101,val = 129.75},[2] = {id = 102,val = 64.88},[3] = {id = 103,val = 583.05}},RosterAttr = {AtkExt = 5936,DefExt = 2966,HPExt = 26665},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 50}}},--典韦10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6380.96},[2] = {id = 102,val = 3051.93},[3] = {id = 103,val = 33003.6}},UpAttr = {[1] = {id = 101,val = 151.32},[2] = {id = 102,val = 75.66},[3] = {id = 103,val = 680.8}},RosterAttr = {AtkExt = 7449,DefExt = 3722,HPExt = 33473},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603008,val = 75}}},--典韦11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 7326.14},[2] = {id = 102,val = 3524.52},[3] = {id = 103,val = 38105}},UpAttr = {[1] = {id = 101,val = 173.04},[2] = {id = 102,val = 86.52},[3] = {id = 103,val = 778.55}},RosterAttr = {AtkExt = 9179,DefExt = 4587,HPExt = 41258},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603008,val = 80}}},--典韦12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 8407.54},[2] = {id = 102,val = 4065.22},[3] = {id = 103,val = 43943.55}},UpAttr = {[1] = {id = 101,val = 200.07},[2] = {id = 102,val = 100.03},[3] = {id = 103,val = 899.3}},RosterAttr = {AtkExt = 11179,DefExt = 5587,HPExt = 50251},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603008,val = 100}}},--典韦13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 9657.42},[2] = {id = 102,val = 4690.74},[3] = {id = 103,val = 50686}},UpAttr = {[1] = {id = 101,val = 231.32},[2] = {id = 102,val = 115.66},[3] = {id = 103,val = 1040.75}},RosterAttr = {AtkExt = 13492,DefExt = 6743,HPExt = 60658},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603008,val = 100}}},--典韦14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 11102.68},[2] = {id = 102,val = 5413.94},[3] = {id = 103,val = 58487.6}},UpAttr = {[1] = {id = 101,val = 267.44},[2] = {id = 102,val = 133.72},[3] = {id = 103,val = 1202.9}},RosterAttr = {AtkExt = 16166,DefExt = 8080,HPExt = 72687},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603011,val = 15}}},--典韦15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 12774.55},[2] = {id = 102,val = 6249.3},[3] = {id = 103,val = 67513.95}},UpAttr = {[1] = {id = 101,val = 309.25},[2] = {id = 102,val = 154.62},[3] = {id = 103,val = 1391.5}},RosterAttr = {AtkExt = 19258,DefExt = 9626,HPExt = 86602},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603011,val = 20}}},--典韦16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 14707.19},[2] = {id = 102,val = 7215.62},[3] = {id = 103,val = 77949.05}},UpAttr = {[1] = {id = 101,val = 357.56},[2] = {id = 102,val = 178.78},[3] = {id = 103,val = 1608.85}},RosterAttr = {AtkExt = 22833,DefExt = 11413,HPExt = 102690},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603011,val = 30},[4] = {id = 1603014,val = 5}}},--典韦17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 16942.33},[2] = {id = 102,val = 8332.61},[3] = {id = 103,val = 90019.45}},UpAttr = {[1] = {id = 101,val = 413.44},[2] = {id = 102,val = 206.72},[3] = {id = 103,val = 1859.55}},RosterAttr = {AtkExt = 26967,DefExt = 13480,HPExt = 121285},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603011,val = 40},[4] = {id = 1603014,val = 10}}},--典韦18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 19525.86},[2] = {id = 102,val = 9624.95},[3] = {id = 103,val = 103964.4}},UpAttr = {[1] = {id = 101,val = 478.03},[2] = {id = 102,val = 239.02},[3] = {id = 103,val = 2150.5}},RosterAttr = {AtkExt = 31747,DefExt = 15870,HPExt = 142790},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603011,val = 50},[4] = {id = 1603014,val = 15}}},--典韦19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 22514.02},[2] = {id = 102,val = 11119.03},[3] = {id = 103,val = 120098.9}},UpAttr = {[1] = {id = 101,val = 552.74},[2] = {id = 102,val = 276.37},[3] = {id = 103,val = 2486.3}},RosterAttr = {AtkExt = 37274,DefExt = 18633,HPExt = 167653},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603011,val = 60},[4] = {id = 1603014,val = 20}}},--典韦20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 25968.85},[2] = {id = 102,val = 12845.87},[3] = {id = 103,val = 138750.7}},UpAttr = {[1] = {id = 101,val = 639.1},[2] = {id = 102,val = 319.55},[3] = {id = 103,val = 2875}},RosterAttr = {AtkExt = 43665,DefExt = 21828,HPExt = 196403},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 75},[4] = {id = 1603014,val = 25}}}--典韦21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1702003,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1702003,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1702003,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1702003,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1702003,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("典韦传记1"),Episode = _T("典韦与许褚被并称“虎贲双雄”，且典韦还是虎卫军的第一任首领。曾有“逐虎过涧”的典故，勇猛无比，被曹操称为“古之恶来”。随许褚之后，成为了曹焱兵的第二个守护灵。")},--典韦传记1
			[2] = {EpisodeTitle = _T("典韦传记2"),Episode = _T("单论悍勇，典韦甚至还在许褚之上。面对巨大的地狱三头犬，典韦竟然赤手空拳与其搏杀。他每次出手都不惜以伤换伤。曾经他身为血肉之躯死于千军之手，如今更是悍不畏死，令所有曾与他对战的对手都极为胆寒。")},--典韦传记2
			[3] = {EpisodeTitle = _T("典韦传记3"),Episode = _T("若说许褚始终是曹焱兵带在身边的第一护卫，那典韦便是他用的最为顺手的杀手锏。每当遇到需要恶战的情况时，即便不用曹焱兵召唤，典韦也会主动请战。丝毫不曾愧对他“万人敌”的称号。")},--典韦传记3
			[4] = {EpisodeTitle = _T("典韦传记4"),Episode = _T("为掩护曹焱兵离开群英殿，典韦独自断后阻挡群英殿最为精锐的陷阵营。即使全身被插满兵刃，他依旧不曾倒下，不曾放一兵一卒突破防线。在即将幻灭，生前的历史似乎将要重演之际，曹焱兵心底的一声呼唤，让这位无敌猛将再次站了起来……")},--典韦传记4
			[5] = {EpisodeTitle = _T("典韦传记5"),Episode = _T("“我典韦，果然没有选错主子！就算身躯已经化为白骨！就算霸业已经成为历史！哪怕过了千百万年！只要主子仍想一匡天下！我典韦就算灰飞烟灭！也要撕裂这片天空！！”典韦心中的豪气并不弱于许褚，虎贲双雄，缺一不可。")}--典韦传记5
		}
	},--典韦
	[1102004] = {
		IfEntreVersion = 1,
		Name = _T("唐流雨"),
		NickName = _T("八臂螳螂"),
		NamePic = "ui_dtex_Name_1102004",
		NickNamePic = "ui_dtex_Name2_1102004",
		KPKM = "kp_km_1102004",
		Tag = {107},
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
		GachaDialogue = "gacha_tly_1102004",
		PaintingPos = {x = 106.1,y = -15.7},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 612,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2001,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 350},[2] = {id = 102,val = 100},[3] = {id = 103,val = 750}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 67}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 670}},--唐流雨1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 510},[2] = {id = 102,val = 177.5},[3] = {id = 103,val = 1578}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 61}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 1280},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--唐流雨2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 681.7},[2] = {id = 102,val = 263.35},[3] = {id = 103,val = 2494}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 113}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 2410},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--唐流雨3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 996.4},[2] = {id = 102,val = 420.2},[3] = {id = 103,val = 4191}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 135}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 3760},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--唐流雨4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1372.7},[2] = {id = 102,val = 608.85},[3] = {id = 103,val = 6216}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 169}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 5450},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 60}}},--唐流雨5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1843.3},[2] = {id = 102,val = 844.15},[3] = {id = 103,val = 8752}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 219}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 7640},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603006,val = 60}}},--唐流雨6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2453.8},[2] = {id = 102,val = 1149.4},[3] = {id = 103,val = 12040}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 270}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 10340},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603006,val = 80}}},--唐流雨7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3205.7},[2] = {id = 102,val = 1525.35},[3] = {id = 103,val = 16090}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 338}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 13720},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603006,val = 75}}},--唐流雨8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4145.6},[2] = {id = 102,val = 1995.3},[3] = {id = 103,val = 21162}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 440}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 18120},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603009,val = 35}}},--唐流雨9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4756.55},[2] = {id = 102,val = 2300.78},[3] = {id = 103,val = 24460}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 23190},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 50}}},--唐流雨10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5461.7},[2] = {id = 102,val = 2653.85},[3] = {id = 103,val = 28264}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 592}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 29110},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603009,val = 75}}},--唐流雨11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6283.6},[2] = {id = 102,val = 3064.8},[3] = {id = 103,val = 32700}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 677}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 35880},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603009,val = 80}}},--唐流雨12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 7223.95},[2] = {id = 102,val = 3534.98},[3] = {id = 103,val = 37777}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 782}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 43700},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603009,val = 100}}},--唐流雨13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8310.8},[2] = {id = 102,val = 4078.9},[3] = {id = 103,val = 43640}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 905}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 52750},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603009,val = 100}}},--唐流雨14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9567.55},[2] = {id = 102,val = 4707.78},[3] = {id = 103,val = 50424}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 1046}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 63210},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603012,val = 15}}},--唐流雨15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 11021.35},[2] = {id = 102,val = 5434.18},[3] = {id = 103,val = 58273}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 1210}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 75310},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603012,val = 20}}},--唐流雨16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12701.9},[2] = {id = 102,val = 6274.45},[3] = {id = 103,val = 67347}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 1399}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 89300},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603012,val = 30},[4] = {id = 1603014,val = 5}}},--唐流雨17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14645.5},[2] = {id = 102,val = 7245.75},[3] = {id = 103,val = 77843}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1617}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 105470},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603012,val = 40},[4] = {id = 1603014,val = 10}}},--唐流雨18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16892.05},[2] = {id = 102,val = 8369.53},[3] = {id = 103,val = 89969}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1870}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 124170},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603012,val = 50},[4] = {id = 1603014,val = 15}}},--唐流雨19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19490.45},[2] = {id = 102,val = 9668.73},[3] = {id = 103,val = 103999}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 2162}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 145790},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603012,val = 60},[4] = {id = 1603014,val = 20}}},--唐流雨20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22494.65},[2] = {id = 102,val = 11170.33},[3] = {id = 103,val = 120218}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 2500}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 170790},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 75},[4] = {id = 1603014,val = 25}}}--唐流雨21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702004,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702004,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702004,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702004,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702004,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("唐流雨传记1"),Episode = _T("唐流雨号称“八臂螳螂”，虽然双目失明，却可以听风辨位，以使用奇门暗器为名。生前为了夺得最强暗器而叛出唐门，一夜间屠杀了唐门四百余活口，手段极其残忍。后良心发现，退隐江湖。")},--唐流雨传记1
			[2] = {EpisodeTitle = _T("唐流雨传记2"),Episode = _T("唐流雨退隐之后，他的事迹在江湖中成为了一个传说。素闻其最强的杀招为“暴雨梨花”。凡是见过他用此招者，没有一个人可以活着离开。只是却鲜有人知道“暴雨梨花”只能一日一杀。")},--唐流雨传记2
			[3] = {EpisodeTitle = _T("唐流雨传记3"),Episode = _T("“我生前杀的人才多，干掉他们如同切菜一样。看着碍眼就杀了，损我利益的也杀了......”唐流雨的声音有些空洞，有些怅然：“我本以为自己会享受这种乐趣，可到头来，只是面对无尽的空虚......”")},--唐流雨传记3
			[4] = {EpisodeTitle = _T("唐流雨传记4"),Episode = _T("望着站在自己面前的曹玄亮，唐流雨仿佛看到了那个女人的影子，曾经将自己击败的唐门后人，罗刹街镇魂将——唐笑笑。也正因如此，所以当唐流雨看到他将唐门暗器乱打一气，才更加生气。")},--唐流雨传记4
			[5] = {EpisodeTitle = _T("唐流雨传记5"),Episode = _T("“今天，就让我来教教你！何为唐门杀意！”唐流雨出手毫不留情，曹玄亮很快变得伤痕累累，但神色却依旧坚定。唐流雨眼中闪过欣赏之色，即便曹玄亮是唐笑笑的儿子，想要做他的寄灵人，也必须得到他的承认，而曹玄亮，并未让他失望。")}--唐流雨传记5
		}
	},--唐流雨
	[1102005] = {
		IfEntreVersion = 1,
		Name = _T("李轩辕"),
		NickName = _T("纯阳无极"),
		NamePic = "ui_dtex_Name_1102005",
		NickNamePic = "ui_dtex_Name2_1102005",
		KPKM = "kp_km_1102005",
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
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304030,1304036},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304030,1304036},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2005,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 502.5},[2] = {id = 102,val = 115},[3] = {id = 103,val = 1362.5}},UpAttr = {[1] = {id = 101,val = 17.25},[2] = {id = 102,val = 8.63},[3] = {id = 103,val = 77.05}},RosterAttr = {AtkExt = 172,DefExt = 86,HPExt = 770}},--李轩辕1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 686.5},[2] = {id = 102,val = 204.13},[3] = {id = 103,val = 2314.7}},UpAttr = {[1] = {id = 101,val = 15.84},[2] = {id = 102,val = 7.92},[3] = {id = 103,val = 70.15}},RosterAttr = {AtkExt = 330,DefExt = 165,HPExt = 1471},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--李轩辕2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 883.96},[2] = {id = 102,val = 302.85},[3] = {id = 103,val = 3368.1}},UpAttr = {[1] = {id = 101,val = 28.95},[2] = {id = 102,val = 14.47},[3] = {id = 103,val = 129.95}},RosterAttr = {AtkExt = 619,DefExt = 309,HPExt = 2770},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--李轩辕3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1245.86},[2] = {id = 102,val = 483.23},[3] = {id = 103,val = 5319.65}},UpAttr = {[1] = {id = 101,val = 34.65},[2] = {id = 102,val = 17.32},[3] = {id = 103,val = 155.25}},RosterAttr = {AtkExt = 965,DefExt = 482,HPExt = 4322},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--李轩辕4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1678.61},[2] = {id = 102,val = 700.18},[3] = {id = 103,val = 7648.4}},UpAttr = {[1] = {id = 101,val = 43.31},[2] = {id = 102,val = 21.65},[3] = {id = 103,val = 194.35}},RosterAttr = {AtkExt = 1398,DefExt = 698,HPExt = 6265},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 60}}},--李轩辕5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2219.8},[2] = {id = 102,val = 970.77},[3] = {id = 103,val = 10564.8}},UpAttr = {[1] = {id = 101,val = 56.18},[2] = {id = 102,val = 28.09},[3] = {id = 103,val = 251.85}},RosterAttr = {AtkExt = 1959,DefExt = 978,HPExt = 8783},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603007,val = 60}}},--李轩辕6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2921.87},[2] = {id = 102,val = 1321.81},[3] = {id = 103,val = 14346}},UpAttr = {[1] = {id = 101,val = 69.22},[2] = {id = 102,val = 34.61},[3] = {id = 103,val = 310.5}},RosterAttr = {AtkExt = 2651,DefExt = 1324,HPExt = 11888},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603007,val = 80}}},--李轩辕7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3786.56},[2] = {id = 102,val = 1754.15},[3] = {id = 103,val = 19003.5}},UpAttr = {[1] = {id = 101,val = 86.47},[2] = {id = 102,val = 43.23},[3] = {id = 103,val = 388.7}},RosterAttr = {AtkExt = 3515,DefExt = 1756,HPExt = 15775},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603007,val = 75}}},--李轩辕8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4867.44},[2] = {id = 102,val = 2294.6},[3] = {id = 103,val = 24836.3}},UpAttr = {[1] = {id = 101,val = 112.46},[2] = {id = 102,val = 56.23},[3] = {id = 103,val = 506}},RosterAttr = {AtkExt = 4639,DefExt = 2318,HPExt = 20835},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603010,val = 35}}},--李轩辕9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5570.03},[2] = {id = 102,val = 2645.89},[3] = {id = 103,val = 28629}},UpAttr = {[1] = {id = 101,val = 129.75},[2] = {id = 102,val = 64.88},[3] = {id = 103,val = 583.05}},RosterAttr = {AtkExt = 5936,DefExt = 2966,HPExt = 26665},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 50}}},--李轩辕10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6380.96},[2] = {id = 102,val = 3051.93},[3] = {id = 103,val = 33003.6}},UpAttr = {[1] = {id = 101,val = 151.32},[2] = {id = 102,val = 75.66},[3] = {id = 103,val = 680.8}},RosterAttr = {AtkExt = 7449,DefExt = 3722,HPExt = 33473},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603010,val = 75}}},--李轩辕11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 7326.14},[2] = {id = 102,val = 3524.52},[3] = {id = 103,val = 38105}},UpAttr = {[1] = {id = 101,val = 173.04},[2] = {id = 102,val = 86.52},[3] = {id = 103,val = 778.55}},RosterAttr = {AtkExt = 9179,DefExt = 4587,HPExt = 41258},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603010,val = 80}}},--李轩辕12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 8407.54},[2] = {id = 102,val = 4065.22},[3] = {id = 103,val = 43943.55}},UpAttr = {[1] = {id = 101,val = 200.07},[2] = {id = 102,val = 100.03},[3] = {id = 103,val = 899.3}},RosterAttr = {AtkExt = 11179,DefExt = 5587,HPExt = 50251},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603010,val = 100}}},--李轩辕13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 9657.42},[2] = {id = 102,val = 4690.74},[3] = {id = 103,val = 50686}},UpAttr = {[1] = {id = 101,val = 231.32},[2] = {id = 102,val = 115.66},[3] = {id = 103,val = 1040.75}},RosterAttr = {AtkExt = 13492,DefExt = 6743,HPExt = 60658},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603010,val = 100}}},--李轩辕14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 11102.68},[2] = {id = 102,val = 5413.94},[3] = {id = 103,val = 58487.6}},UpAttr = {[1] = {id = 101,val = 267.44},[2] = {id = 102,val = 133.72},[3] = {id = 103,val = 1202.9}},RosterAttr = {AtkExt = 16166,DefExt = 8080,HPExt = 72687},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603013,val = 15}}},--李轩辕15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 12774.55},[2] = {id = 102,val = 6249.3},[3] = {id = 103,val = 67513.95}},UpAttr = {[1] = {id = 101,val = 309.25},[2] = {id = 102,val = 154.62},[3] = {id = 103,val = 1391.5}},RosterAttr = {AtkExt = 19258,DefExt = 9626,HPExt = 86602},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603013,val = 20}}},--李轩辕16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 14707.19},[2] = {id = 102,val = 7215.62},[3] = {id = 103,val = 77949.05}},UpAttr = {[1] = {id = 101,val = 357.56},[2] = {id = 102,val = 178.78},[3] = {id = 103,val = 1608.85}},RosterAttr = {AtkExt = 22833,DefExt = 11413,HPExt = 102690},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603013,val = 30},[4] = {id = 1603014,val = 5}}},--李轩辕17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 16942.33},[2] = {id = 102,val = 8332.61},[3] = {id = 103,val = 90019.45}},UpAttr = {[1] = {id = 101,val = 413.44},[2] = {id = 102,val = 206.72},[3] = {id = 103,val = 1859.55}},RosterAttr = {AtkExt = 26967,DefExt = 13480,HPExt = 121285},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603013,val = 40},[4] = {id = 1603014,val = 10}}},--李轩辕18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 19525.86},[2] = {id = 102,val = 9624.95},[3] = {id = 103,val = 103964.4}},UpAttr = {[1] = {id = 101,val = 478.03},[2] = {id = 102,val = 239.02},[3] = {id = 103,val = 2150.5}},RosterAttr = {AtkExt = 31747,DefExt = 15870,HPExt = 142790},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603013,val = 50},[4] = {id = 1603014,val = 15}}},--李轩辕19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 22514.02},[2] = {id = 102,val = 11119.03},[3] = {id = 103,val = 120098.9}},UpAttr = {[1] = {id = 101,val = 552.74},[2] = {id = 102,val = 276.37},[3] = {id = 103,val = 2486.3}},RosterAttr = {AtkExt = 37274,DefExt = 18633,HPExt = 167653},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603013,val = 60},[4] = {id = 1603014,val = 20}}},--李轩辕20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 25968.85},[2] = {id = 102,val = 12845.87},[3] = {id = 103,val = 138750.7}},UpAttr = {[1] = {id = 101,val = 639.1},[2] = {id = 102,val = 319.55},[3] = {id = 103,val = 2875}},RosterAttr = {AtkExt = 43665,DefExt = 21828,HPExt = 196403},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 75},[4] = {id = 1603014,val = 25}}}--李轩辕21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1702005,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1702005,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1702005,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1702005,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1702005,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("李轩辕传记1"),Episode = _T("“时隔百年，却依然能再见你的芳颜......这是天意么......”李轩辕与夏铃第一次面对面，感慨万千，不同于曹焱兵守护灵对曹家的忠义。他成为夏铃的守护灵，更多的是因为对前世爱人的留恋和执着。")},--李轩辕传记1
			[2] = {EpisodeTitle = _T("李轩辕传记2"),Episode = _T("李轩辕当年为了救治重病的木文元香，他不惜从师父手中抢来清风化煞这件神器。只是后来却未能及时归还，导致自身走火入魔，随后被师父用太虚神链封印，召唤落雷炸毁。多亏安魂铃魂魄才得以保存，成为守护灵。")},--李轩辕传记2
			[3] = {EpisodeTitle = _T("李轩辕传记3"),Episode = _T("即便不动用清风化煞这件神器，李轩辕自身的实力也足够强大。面对黑尔坎普的融合形态，他仅凭自身所修炼的纯阳无极功便完全将其压制。但却也正是因为李轩辕的一时心软，导致被黑尔坎普有机可乘，并失手毁掉了灵槐树。")},--李轩辕传记3
			[4] = {EpisodeTitle = _T("李轩辕传记4"),Episode = _T("面对领典韦都束手无策的羽林街三灵将太微，李轩辕第一次使用了清风化煞的力量，变身为仙武灵形态将其击败，夺得了锁灵手铐的钥匙，让北落师门恢复了力量。经此一战，曹焱兵也认识到，夏铃还远远没有发挥出李轩辕的实力。")},--李轩辕传记4
			[5] = {EpisodeTitle = _T("李轩辕传记5"),Episode = _T("除了仙武灵形态，李轩辕还可以化身为更加恐怖的魔武灵。为了突破郭嘉和郭逍遥的奇门阵，他冒险使用了化煞一半的力量，虽然爆发出了令天地变色的力量，但李轩辕也险些暴走失控。假以时日，若他能完全掌握清风化煞，必会成为令各方不敢小觑的存在。")}--李轩辕传记5
		}
	},--李轩辕
	[1102006] = {
		IfEntreVersion = 1,
		Name = _T("项羽"),
		NickName = _T("西楚霸王"),
		NamePic = "ui_dtex_Name_1102006",
		NickNamePic = "ui_dtex_Name2_1102006",
		KPKM = "kp_km_1102006",
		Tag = {102},
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
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2006,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 975},[2] = {id = 102,val = 150},[3] = {id = 103,val = 3625}},UpAttr = {[1] = {id = 101,val = 22.5},[2] = {id = 102,val = 11.25},[3] = {id = 103,val = 100.5}},RosterAttr = {AtkExt = 225,DefExt = 112,HPExt = 1005}},--项羽1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 1215},[2] = {id = 102,val = 266.25},[3] = {id = 103,val = 4867}},UpAttr = {[1] = {id = 101,val = 20.66},[2] = {id = 102,val = 10.33},[3] = {id = 103,val = 91.5}},RosterAttr = {AtkExt = 431,DefExt = 215,HPExt = 1920},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--项羽2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 1472.55},[2] = {id = 102,val = 395.03},[3] = {id = 103,val = 6241}},UpAttr = {[1] = {id = 101,val = 37.76},[2] = {id = 102,val = 18.88},[3] = {id = 103,val = 169.5}},RosterAttr = {AtkExt = 808,DefExt = 403,HPExt = 3615},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--项羽3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1944.6},[2] = {id = 102,val = 630.3},[3] = {id = 103,val = 8786.5}},UpAttr = {[1] = {id = 101,val = 45.2},[2] = {id = 102,val = 22.6},[3] = {id = 103,val = 202.5}},RosterAttr = {AtkExt = 1260,DefExt = 629,HPExt = 5640},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--项羽4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 2509.05},[2] = {id = 102,val = 913.28},[3] = {id = 103,val = 11824}},UpAttr = {[1] = {id = 101,val = 56.49},[2] = {id = 102,val = 28.25},[3] = {id = 103,val = 253.5}},RosterAttr = {AtkExt = 1824,DefExt = 911,HPExt = 8175},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 60}}},--项羽5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 3214.95},[2] = {id = 102,val = 1266.23},[3] = {id = 103,val = 15628}},UpAttr = {[1] = {id = 101,val = 73.28},[2] = {id = 102,val = 36.64},[3] = {id = 103,val = 328.5}},RosterAttr = {AtkExt = 2556,DefExt = 1277,HPExt = 11460},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603006,val = 60}}},--项羽6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 4130.7},[2] = {id = 102,val = 1724.1},[3] = {id = 103,val = 20560}},UpAttr = {[1] = {id = 101,val = 90.29},[2] = {id = 102,val = 45.14},[3] = {id = 103,val = 405}},RosterAttr = {AtkExt = 3458,DefExt = 1728,HPExt = 15510},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603006,val = 80}}},--项羽7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 5258.55},[2] = {id = 102,val = 2288.03},[3] = {id = 103,val = 26635}},UpAttr = {[1] = {id = 101,val = 112.79},[2] = {id = 102,val = 56.39},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 4585,DefExt = 2291,HPExt = 20580},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603006,val = 75}}},--项羽8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 6668.4},[2] = {id = 102,val = 2992.95},[3] = {id = 103,val = 34243}},UpAttr = {[1] = {id = 101,val = 146.69},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 660}},RosterAttr = {AtkExt = 6051,DefExt = 3024,HPExt = 27180},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603009,val = 35}}},--项羽9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 7584.83},[2] = {id = 102,val = 3451.16},[3] = {id = 103,val = 39190}},UpAttr = {[1] = {id = 101,val = 169.25},[2] = {id = 102,val = 84.62},[3] = {id = 103,val = 760.5}},RosterAttr = {AtkExt = 7743,DefExt = 3870,HPExt = 34785},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 50}}},--项羽10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 8642.55},[2] = {id = 102,val = 3980.78},[3] = {id = 103,val = 44896}},UpAttr = {[1] = {id = 101,val = 197.37},[2] = {id = 102,val = 98.69},[3] = {id = 103,val = 888}},RosterAttr = {AtkExt = 9716,DefExt = 4856,HPExt = 43665},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603009,val = 75}}},--项羽11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 9875.4},[2] = {id = 102,val = 4597.2},[3] = {id = 103,val = 51550}},UpAttr = {[1] = {id = 101,val = 225.71},[2] = {id = 102,val = 112.85},[3] = {id = 103,val = 1015.5}},RosterAttr = {AtkExt = 11973,DefExt = 5984,HPExt = 53820},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603009,val = 80}}},--项羽12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 11285.93},[2] = {id = 102,val = 5302.46},[3] = {id = 103,val = 59165.5}},UpAttr = {[1] = {id = 101,val = 260.96},[2] = {id = 102,val = 130.48},[3] = {id = 103,val = 1173}},RosterAttr = {AtkExt = 14582,DefExt = 7288,HPExt = 65550},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603009,val = 100}}},--项羽13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 12916.2},[2] = {id = 102,val = 6118.35},[3] = {id = 103,val = 67960}},UpAttr = {[1] = {id = 101,val = 301.73},[2] = {id = 102,val = 150.86},[3] = {id = 103,val = 1357.5}},RosterAttr = {AtkExt = 17599,DefExt = 8796,HPExt = 79125},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603009,val = 100}}},--项羽14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 14801.33},[2] = {id = 102,val = 7061.66},[3] = {id = 103,val = 78136}},UpAttr = {[1] = {id = 101,val = 348.84},[2] = {id = 102,val = 174.42},[3] = {id = 103,val = 1569}},RosterAttr = {AtkExt = 21087,DefExt = 10540,HPExt = 94815},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603012,val = 15}}},--项羽15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 16982.03},[2] = {id = 102,val = 8151.26},[3] = {id = 103,val = 89909.5}},UpAttr = {[1] = {id = 101,val = 403.37},[2] = {id = 102,val = 201.68},[3] = {id = 103,val = 1815}},RosterAttr = {AtkExt = 25120,DefExt = 12556,HPExt = 112965},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603012,val = 20}}},--项羽16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 19502.85},[2] = {id = 102,val = 9411.68},[3] = {id = 103,val = 103520.5}},UpAttr = {[1] = {id = 101,val = 466.38},[2] = {id = 102,val = 233.19},[3] = {id = 103,val = 2098.5}},RosterAttr = {AtkExt = 29783,DefExt = 14887,HPExt = 133950},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603012,val = 30},[4] = {id = 1603014,val = 5}}},--项羽17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 22418.25},[2] = {id = 102,val = 10868.63},[3] = {id = 103,val = 119264.5}},UpAttr = {[1] = {id = 101,val = 539.27},[2] = {id = 102,val = 269.63},[3] = {id = 103,val = 2425.5}},RosterAttr = {AtkExt = 35175,DefExt = 17583,HPExt = 158205},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603012,val = 40},[4] = {id = 1603014,val = 10}}},--项羽18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 25788.08},[2] = {id = 102,val = 12554.29},[3] = {id = 103,val = 137453.5}},UpAttr = {[1] = {id = 101,val = 623.52},[2] = {id = 102,val = 311.76},[3] = {id = 103,val = 2805}},RosterAttr = {AtkExt = 41410,DefExt = 20700,HPExt = 186255},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603012,val = 50},[4] = {id = 1603014,val = 15}}},--项羽19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 29685.68},[2] = {id = 102,val = 14503.09},[3] = {id = 103,val = 158498.5}},UpAttr = {[1] = {id = 101,val = 720.96},[2] = {id = 102,val = 360.48},[3] = {id = 103,val = 3243}},RosterAttr = {AtkExt = 48619,DefExt = 24304,HPExt = 218685},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603012,val = 60},[4] = {id = 1603014,val = 20}}},--项羽20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 34191.98},[2] = {id = 102,val = 16755.49},[3] = {id = 103,val = 182827}},UpAttr = {[1] = {id = 101,val = 833.61},[2] = {id = 102,val = 416.81},[3] = {id = 103,val = 3750}},RosterAttr = {AtkExt = 56955,DefExt = 28472,HPExt = 256185},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 75},[4] = {id = 1603014,val = 25}}}--项羽21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702006,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702006,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702006,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702006,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702006,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("项羽传记1"),Episode = _T("“别忘了，在这冥界还有一类人，无需特殊体质，只因他身负霸王之灵，足以号令千军万马！”项昆仑一言道尽项羽之威，即便是项羽麾下的四将也足以与曹焱兵的四大武将抗衡，其本尊更是强大无比。")},--项羽传记1
			[2] = {EpisodeTitle = _T("项羽传记2"),Episode = _T("群英殿强者无数，个个都是桀骜不驯之辈。但唯有身负守护灵项羽的项昆仑能镇住所有英杰。靠的可不是讲道理，而是实打实的靠打出来的。群英殿内的成员几之所以服从项昆仑，只因都见识过霸王之威。")},--项羽传记2
			[3] = {EpisodeTitle = _T("项羽传记3"),Episode = _T("“项昆仑，你觉得自己有资格继承我的力量？”以守护灵形态重新现世的项羽，望着面前的少年道。项昆仑不卑不亢：“冥界未来唯一的主宰，你觉得，够不够资格?”项羽嘴角勾起弧度，他从项昆仑眼中看到生前自己的模样：“你......很好。”")},--项羽传记3
			[4] = {EpisodeTitle = _T("项羽传记4"),Episode = _T("“当年乌江自刎，你可曾后悔过？”夜深人静时，项昆仑曾问过项羽这个问题。拥有霸王之称的男人眼中罕见的闪过一丝柔情，轻声道：“我既已负了天下，便不能再负了她。”项昆仑沉默不语，项羽所说的她自然是虞兮虞兮奈若何的虞姬。")},--项羽传记4
			[5] = {EpisodeTitle = _T("项羽传记5"),Episode = _T("即便是面对传说中的死神阿努比斯，霸王项羽依旧以狂傲之姿斩出了手中的兵刃。从未受过伤的王国组织第一骑士——死神塞伊第一次在霸王手中尝到了受伤的滋味。原来所谓的“神”，也是会流血的。")}--项羽传记5
		}
	},--项羽
	[1102007] = {
		IfEntreVersion = 1,
		Name = _T("天使缇娜"),
		NickName = _T("钢之守护"),
		NamePic = "ui_dtex_Name_1102007",
		NickNamePic = "ui_dtex_Name2_1102007",
		KPKM = "kp_km_1102007",
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
		mask = 616,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2007,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 655},[2] = {id = 102,val = 130},[3] = {id = 103,val = 1975}},UpAttr = {[1] = {id = 101,val = 19.5},[2] = {id = 102,val = 9.75},[3] = {id = 103,val = 87.1}},RosterAttr = {AtkExt = 195,DefExt = 97,HPExt = 871}},--天使缇娜1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 863},[2] = {id = 102,val = 230.75},[3] = {id = 103,val = 3051.4}},UpAttr = {[1] = {id = 101,val = 17.9},[2] = {id = 102,val = 8.95},[3] = {id = 103,val = 79.3}},RosterAttr = {AtkExt = 374,DefExt = 186,HPExt = 1664},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--天使缇娜2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 1086.21},[2] = {id = 102,val = 342.36},[3] = {id = 103,val = 4242.2}},UpAttr = {[1] = {id = 101,val = 32.72},[2] = {id = 102,val = 16.36},[3] = {id = 103,val = 146.9}},RosterAttr = {AtkExt = 701,DefExt = 349,HPExt = 3133},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--天使缇娜3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1495.32},[2] = {id = 102,val = 546.26},[3] = {id = 103,val = 6448.3}},UpAttr = {[1] = {id = 101,val = 39.17},[2] = {id = 102,val = 19.58},[3] = {id = 103,val = 175.5}},RosterAttr = {AtkExt = 1092,DefExt = 544,HPExt = 4888},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--天使缇娜4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1984.51},[2] = {id = 102,val = 791.51},[3] = {id = 103,val = 9080.8}},UpAttr = {[1] = {id = 101,val = 48.96},[2] = {id = 102,val = 24.48},[3] = {id = 103,val = 219.7}},RosterAttr = {AtkExt = 1581,DefExt = 788,HPExt = 7085},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 60}}},--天使缇娜5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2596.29},[2] = {id = 102,val = 1097.4},[3] = {id = 103,val = 12377.6}},UpAttr = {[1] = {id = 101,val = 63.51},[2] = {id = 102,val = 31.75},[3] = {id = 103,val = 284.7}},RosterAttr = {AtkExt = 2216,DefExt = 1105,HPExt = 9932},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603007,val = 60}}},--天使缇娜6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 3389.94},[2] = {id = 102,val = 1494.22},[3] = {id = 103,val = 16652}},UpAttr = {[1] = {id = 101,val = 78.25},[2] = {id = 102,val = 39.12},[3] = {id = 103,val = 351}},RosterAttr = {AtkExt = 2998,DefExt = 1496,HPExt = 13442},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603007,val = 80}}},--天使缇娜7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 4367.41},[2] = {id = 102,val = 1982.96},[3] = {id = 103,val = 21917}},UpAttr = {[1] = {id = 101,val = 97.75},[2] = {id = 102,val = 48.87},[3] = {id = 103,val = 439.4}},RosterAttr = {AtkExt = 3975,DefExt = 1984,HPExt = 17836},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603007,val = 75}}},--天使缇娜8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 5589.28},[2] = {id = 102,val = 2593.89},[3] = {id = 103,val = 28510.6}},UpAttr = {[1] = {id = 101,val = 127.13},[2] = {id = 102,val = 63.56},[3] = {id = 103,val = 572}},RosterAttr = {AtkExt = 5246,DefExt = 2619,HPExt = 23556},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603010,val = 35}}},--天使缇娜9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 6383.52},[2] = {id = 102,val = 2991.01},[3] = {id = 103,val = 32798}},UpAttr = {[1] = {id = 101,val = 146.68},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 659.1}},RosterAttr = {AtkExt = 6712,DefExt = 3352,HPExt = 30147},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 50}}},--天使缇娜10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 7300.21},[2] = {id = 102,val = 3450.01},[3] = {id = 103,val = 37743.2}},UpAttr = {[1] = {id = 101,val = 171.05},[2] = {id = 102,val = 85.53},[3] = {id = 103,val = 769.6}},RosterAttr = {AtkExt = 8422,DefExt = 4207,HPExt = 37843},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603010,val = 75}}},--天使缇娜11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 8368.68},[2] = {id = 102,val = 3984.24},[3] = {id = 103,val = 43510}},UpAttr = {[1] = {id = 101,val = 195.61},[2] = {id = 102,val = 97.81},[3] = {id = 103,val = 880.1}},RosterAttr = {AtkExt = 10378,DefExt = 5185,HPExt = 46644},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603010,val = 80}}},--天使缇娜12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 9591.14},[2] = {id = 102,val = 4595.47},[3] = {id = 103,val = 50110.1}},UpAttr = {[1] = {id = 101,val = 226.16},[2] = {id = 102,val = 113.08},[3] = {id = 103,val = 1016.6}},RosterAttr = {AtkExt = 12639,DefExt = 6315,HPExt = 56810},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603010,val = 100}}},--天使缇娜13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 11004.04},[2] = {id = 102,val = 5302.57},[3] = {id = 103,val = 57732}},UpAttr = {[1] = {id = 101,val = 261.5},[2] = {id = 102,val = 130.75},[3] = {id = 103,val = 1176.5}},RosterAttr = {AtkExt = 15254,DefExt = 7622,HPExt = 68575},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603010,val = 100}}},--天使缇娜14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 12637.82},[2] = {id = 102,val = 6120.11},[3] = {id = 103,val = 66551.2}},UpAttr = {[1] = {id = 101,val = 302.33},[2] = {id = 102,val = 151.16},[3] = {id = 103,val = 1359.8}},RosterAttr = {AtkExt = 18277,DefExt = 9133,HPExt = 82173},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603013,val = 15}}},--天使缇娜15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 14527.76},[2] = {id = 102,val = 7064.43},[3] = {id = 103,val = 76754.9}},UpAttr = {[1] = {id = 101,val = 349.58},[2] = {id = 102,val = 174.79},[3] = {id = 103,val = 1573}},RosterAttr = {AtkExt = 21772,DefExt = 10880,HPExt = 97903},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603013,val = 20}}},--天使缇娜16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 16712.47},[2] = {id = 102,val = 8156.79},[3] = {id = 103,val = 88551.1}},UpAttr = {[1] = {id = 101,val = 404.2},[2] = {id = 102,val = 202.1},[3] = {id = 103,val = 1818.7}},RosterAttr = {AtkExt = 25814,DefExt = 12901,HPExt = 116090},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603013,val = 30},[4] = {id = 1603014,val = 5}}},--天使缇娜17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 19239.15},[2] = {id = 102,val = 9419.48},[3] = {id = 103,val = 102195.9}},UpAttr = {[1] = {id = 101,val = 467.36},[2] = {id = 102,val = 233.68},[3] = {id = 103,val = 2102.1}},RosterAttr = {AtkExt = 30487,DefExt = 15237,HPExt = 137111},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603013,val = 40},[4] = {id = 1603014,val = 10}}},--天使缇娜18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 22159.67},[2] = {id = 102,val = 10880.38},[3] = {id = 103,val = 117959.7}},UpAttr = {[1] = {id = 101,val = 540.38},[2] = {id = 102,val = 270.19},[3] = {id = 103,val = 2431}},RosterAttr = {AtkExt = 35890,DefExt = 17938,HPExt = 161421},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603013,val = 50},[4] = {id = 1603014,val = 15}}},--天使缇娜19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 25537.59},[2] = {id = 102,val = 12569.34},[3] = {id = 103,val = 136198.7}},UpAttr = {[1] = {id = 101,val = 624.83},[2] = {id = 102,val = 312.42},[3] = {id = 103,val = 2810.6}},RosterAttr = {AtkExt = 42138,DefExt = 21062,HPExt = 189527},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603013,val = 60},[4] = {id = 1603014,val = 20}}},--天使缇娜20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 29443.05},[2] = {id = 102,val = 14521.42},[3] = {id = 103,val = 157283.4}},UpAttr = {[1] = {id = 101,val = 722.46},[2] = {id = 102,val = 361.23},[3] = {id = 103,val = 3250}},RosterAttr = {AtkExt = 49362,DefExt = 24674,HPExt = 222027},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 75},[4] = {id = 1603014,val = 25}}}--天使缇娜21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702007,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702007,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702007,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702007,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702007,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("天使缇娜传记1"),Episode = _T("天使作为神特殊的孩子，享受着和神之间的亲密关系，经常从天上给人类带来神的旨意，给人们提供爱、智慧和指导。缇娜之所以能作为天使成为红莲的守护灵，正是因为她拥有无比美好的品质。")},--天使缇娜传记1
			[2] = {EpisodeTitle = _T("天使缇娜传记2"),Episode = _T("天使中有代表爱与和平的善良天使，也有代表恶与毁灭的堕天使。阿撒兹勒更是堕天使中的佼佼者，红莲最初的力量便是和阿撒兹勒交换得来的，但与此同时，阿撒兹勒也将恶魔的力量注入了他的体内。")},--天使缇娜传记2
			[3] = {EpisodeTitle = _T("天使缇娜传记3"),Episode = _T("正义之路上的人，被自私和暴虐的恶人所包围。然而那些以博爱和善良的名义，引领弱小者穿越黑暗峡谷的勇士，必将得到神的护佑。因为他是他的同胞真正的守护者，以及迷失孩童的挽救者。——《旧约 以西结书》")},--天使缇娜传记3
			[4] = {EpisodeTitle = _T("天使缇娜传记4"),Episode = _T("对于那些使徒毒害我同伴之人，我将怀着巨大的仇恨以及无比的愤怒将他们杀死，将它们毁灭。当我将复仇之火摄像你们的那一刻，你们便会知道，我就是上帝。——《旧约 以西结书》")},--天使缇娜传记4
			[5] = {EpisodeTitle = _T("天使缇娜传记5"),Episode = _T("缇娜早已化身为红莲的守护灵，但因为恶魔力量的压制，导致红莲一直没有感知到她的存在，他认为缇娜已经死去，所以一心想将缇娜复活。但在红莲面对生死危机时，缇娜再次守护了红莲。红莲也终于解开了心结，不再执着复活缇娜。")}--天使缇娜传记5
		}
	},--天使缇娜
	[1102008] = {
		IfEntreVersion = 0,
		Name = _T("夏侯渊"),
		NickName = _T("白地将军"),
		NamePic = "ui_dtex_Name_1102008",
		NickNamePic = "ui_dtex_Name2_1102008",
		KPKM = "kp_km_1102008",
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
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")}},
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 655},[2] = {id = 102,val = 130},[3] = {id = 103,val = 1975}},UpAttr = {[1] = {id = 101,val = 19.5},[2] = {id = 102,val = 9.75},[3] = {id = 103,val = 87.1}},RosterAttr = {AtkExt = 195,DefExt = 97,HPExt = 871}},--夏侯渊1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 863},[2] = {id = 102,val = 230.75},[3] = {id = 103,val = 3051.4}},UpAttr = {[1] = {id = 101,val = 17.9},[2] = {id = 102,val = 8.95},[3] = {id = 103,val = 79.3}},RosterAttr = {AtkExt = 374,DefExt = 186,HPExt = 1664},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--夏侯渊2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 1086.21},[2] = {id = 102,val = 342.36},[3] = {id = 103,val = 4242.2}},UpAttr = {[1] = {id = 101,val = 32.72},[2] = {id = 102,val = 16.36},[3] = {id = 103,val = 146.9}},RosterAttr = {AtkExt = 701,DefExt = 349,HPExt = 3133},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--夏侯渊3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1495.32},[2] = {id = 102,val = 546.26},[3] = {id = 103,val = 6448.3}},UpAttr = {[1] = {id = 101,val = 39.17},[2] = {id = 102,val = 19.58},[3] = {id = 103,val = 175.5}},RosterAttr = {AtkExt = 1092,DefExt = 544,HPExt = 4888},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--夏侯渊4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1984.51},[2] = {id = 102,val = 791.51},[3] = {id = 103,val = 9080.8}},UpAttr = {[1] = {id = 101,val = 48.96},[2] = {id = 102,val = 24.48},[3] = {id = 103,val = 219.7}},RosterAttr = {AtkExt = 1581,DefExt = 788,HPExt = 7085},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 60}}},--夏侯渊5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2596.29},[2] = {id = 102,val = 1097.4},[3] = {id = 103,val = 12377.6}},UpAttr = {[1] = {id = 101,val = 63.51},[2] = {id = 102,val = 31.75},[3] = {id = 103,val = 284.7}},RosterAttr = {AtkExt = 2216,DefExt = 1105,HPExt = 9932},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603005,val = 60}}},--夏侯渊6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 3389.94},[2] = {id = 102,val = 1494.22},[3] = {id = 103,val = 16652}},UpAttr = {[1] = {id = 101,val = 78.25},[2] = {id = 102,val = 39.12},[3] = {id = 103,val = 351}},RosterAttr = {AtkExt = 2998,DefExt = 1496,HPExt = 13442},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603005,val = 80}}},--夏侯渊7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 4367.41},[2] = {id = 102,val = 1982.96},[3] = {id = 103,val = 21917}},UpAttr = {[1] = {id = 101,val = 97.75},[2] = {id = 102,val = 48.87},[3] = {id = 103,val = 439.4}},RosterAttr = {AtkExt = 3975,DefExt = 1984,HPExt = 17836},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603005,val = 75}}},--夏侯渊8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 5589.28},[2] = {id = 102,val = 2593.89},[3] = {id = 103,val = 28510.6}},UpAttr = {[1] = {id = 101,val = 127.13},[2] = {id = 102,val = 63.56},[3] = {id = 103,val = 572}},RosterAttr = {AtkExt = 5246,DefExt = 2619,HPExt = 23556},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603008,val = 35}}},--夏侯渊9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 6383.52},[2] = {id = 102,val = 2991.01},[3] = {id = 103,val = 32798}},UpAttr = {[1] = {id = 101,val = 146.68},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 659.1}},RosterAttr = {AtkExt = 6712,DefExt = 3352,HPExt = 30147},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 50}}},--夏侯渊10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 7300.21},[2] = {id = 102,val = 3450.01},[3] = {id = 103,val = 37743.2}},UpAttr = {[1] = {id = 101,val = 171.05},[2] = {id = 102,val = 85.53},[3] = {id = 103,val = 769.6}},RosterAttr = {AtkExt = 8422,DefExt = 4207,HPExt = 37843},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603008,val = 75}}},--夏侯渊11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 8368.68},[2] = {id = 102,val = 3984.24},[3] = {id = 103,val = 43510}},UpAttr = {[1] = {id = 101,val = 195.61},[2] = {id = 102,val = 97.81},[3] = {id = 103,val = 880.1}},RosterAttr = {AtkExt = 10378,DefExt = 5185,HPExt = 46644},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603008,val = 80}}},--夏侯渊12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 9591.14},[2] = {id = 102,val = 4595.47},[3] = {id = 103,val = 50110.1}},UpAttr = {[1] = {id = 101,val = 226.16},[2] = {id = 102,val = 113.08},[3] = {id = 103,val = 1016.6}},RosterAttr = {AtkExt = 12639,DefExt = 6315,HPExt = 56810},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603008,val = 100}}},--夏侯渊13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 11004.04},[2] = {id = 102,val = 5302.57},[3] = {id = 103,val = 57732}},UpAttr = {[1] = {id = 101,val = 261.5},[2] = {id = 102,val = 130.75},[3] = {id = 103,val = 1176.5}},RosterAttr = {AtkExt = 15254,DefExt = 7622,HPExt = 68575},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603008,val = 100}}},--夏侯渊14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 12637.82},[2] = {id = 102,val = 6120.11},[3] = {id = 103,val = 66551.2}},UpAttr = {[1] = {id = 101,val = 302.33},[2] = {id = 102,val = 151.16},[3] = {id = 103,val = 1359.8}},RosterAttr = {AtkExt = 18277,DefExt = 9133,HPExt = 82173},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603011,val = 15}}},--夏侯渊15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 14527.76},[2] = {id = 102,val = 7064.43},[3] = {id = 103,val = 76754.9}},UpAttr = {[1] = {id = 101,val = 349.58},[2] = {id = 102,val = 174.79},[3] = {id = 103,val = 1573}},RosterAttr = {AtkExt = 21772,DefExt = 10880,HPExt = 97903},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603011,val = 20}}},--夏侯渊16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 16712.47},[2] = {id = 102,val = 8156.79},[3] = {id = 103,val = 88551.1}},UpAttr = {[1] = {id = 101,val = 404.2},[2] = {id = 102,val = 202.1},[3] = {id = 103,val = 1818.7}},RosterAttr = {AtkExt = 25814,DefExt = 12901,HPExt = 116090},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603011,val = 30},[4] = {id = 1603014,val = 5}}},--夏侯渊17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 19239.15},[2] = {id = 102,val = 9419.48},[3] = {id = 103,val = 102195.9}},UpAttr = {[1] = {id = 101,val = 467.36},[2] = {id = 102,val = 233.68},[3] = {id = 103,val = 2102.1}},RosterAttr = {AtkExt = 30487,DefExt = 15237,HPExt = 137111},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603011,val = 40},[4] = {id = 1603014,val = 10}}},--夏侯渊18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 22159.67},[2] = {id = 102,val = 10880.38},[3] = {id = 103,val = 117959.7}},UpAttr = {[1] = {id = 101,val = 540.38},[2] = {id = 102,val = 270.19},[3] = {id = 103,val = 2431}},RosterAttr = {AtkExt = 35890,DefExt = 17938,HPExt = 161421},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603011,val = 50},[4] = {id = 1603014,val = 15}}},--夏侯渊19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 25537.59},[2] = {id = 102,val = 12569.34},[3] = {id = 103,val = 136198.7}},UpAttr = {[1] = {id = 101,val = 624.83},[2] = {id = 102,val = 312.42},[3] = {id = 103,val = 2810.6}},RosterAttr = {AtkExt = 42138,DefExt = 21062,HPExt = 189527},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603011,val = 60},[4] = {id = 1603014,val = 20}}},--夏侯渊20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 29443.05},[2] = {id = 102,val = 14521.42},[3] = {id = 103,val = 157283.4}},UpAttr = {[1] = {id = 101,val = 722.46},[2] = {id = 102,val = 361.23},[3] = {id = 103,val = 3250}},RosterAttr = {AtkExt = 49362,DefExt = 24674,HPExt = 222027},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 75},[4] = {id = 1603014,val = 25}}}--夏侯渊21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702008,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702008,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702008,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702008,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702008,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("夏侯渊传记1"),Episode = _T("夏侯渊生前勇武异常，是曹操麾下的猛将之一，且对曹家忠心耿耿，因此死后得以化身守护灵，继续守护曹家后人。曹焱兵身垂危之际，也正因他和夏侯惇的存在，才让曹焱兵得以起死回生，并获得了更加强大的力量。")},--夏侯渊传记1
			[2] = {EpisodeTitle = _T("夏侯渊传记2"),Episode = _T("虽然不如典韦许褚那般声名赫赫，但夏侯渊一生经历过大大小小数百场战役，极为擅长千里奔袭的战法。若是其生前麾下的那支军队复苏，在他的带领下想必不会弱于高顺所率领的陷阵营。")},--夏侯渊传记2
			[3] = {EpisodeTitle = _T("夏侯渊传记3"),Episode = _T("火海地狱是十殿阎罗的力量源头，那里充斥着无边的痛苦与愤怒，以及无数诞生于地狱火中的恶灵。但即便是凶残的地狱火恶灵，也会跪伏在夏侯渊脚下。因为，他已经征服了这片地狱，他是这片火海中的两王之一。")},--夏侯渊传记3
			[4] = {EpisodeTitle = _T("夏侯渊传记4"),Episode = _T("夏侯渊生前因一时大意轻敌，死于黄忠之手。如今他与黄忠皆以守护灵形态重生于当世，却不知又会碰撞出何等火花。但可以确定，这两位前世今生都英雄无比的人物之间，在未来必将再战一次，这一次，结局或许将会改写。")},--夏侯渊传记4
			[5] = {EpisodeTitle = _T("夏侯渊传记5"),Episode = _T("“在乱世之中，谁能够统一天下！谁就是英雄！”夏侯渊在成为曹焱兵的武将之前的这句话，此后一直深植在曹焱兵心底。简单直接，却直击本质，就如夏侯渊手中的刀，只有掌握了足够的武力，才有资格跟别人讲道理。")}--夏侯渊传记5
		}
	},--夏侯渊
	[1102009] = {
		IfEntreVersion = 1,
		Name = _T("徐晃"),
		NickName = _T("红莲狱焰"),
		NamePic = "ui_dtex_Name_1102009",
		NickNamePic = "ui_dtex_Name2_1102009",
		KPKM = "kp_km_1102009",
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
		mask = 610,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2008,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 655},[2] = {id = 102,val = 130},[3] = {id = 103,val = 1975}},UpAttr = {[1] = {id = 101,val = 19.5},[2] = {id = 102,val = 9.75},[3] = {id = 103,val = 87.1}},RosterAttr = {AtkExt = 195,DefExt = 97,HPExt = 871}},--徐晃1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 863},[2] = {id = 102,val = 230.75},[3] = {id = 103,val = 3051.4}},UpAttr = {[1] = {id = 101,val = 17.9},[2] = {id = 102,val = 8.95},[3] = {id = 103,val = 79.3}},RosterAttr = {AtkExt = 374,DefExt = 186,HPExt = 1664},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--徐晃2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 1086.21},[2] = {id = 102,val = 342.36},[3] = {id = 103,val = 4242.2}},UpAttr = {[1] = {id = 101,val = 32.72},[2] = {id = 102,val = 16.36},[3] = {id = 103,val = 146.9}},RosterAttr = {AtkExt = 701,DefExt = 349,HPExt = 3133},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--徐晃3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1495.32},[2] = {id = 102,val = 546.26},[3] = {id = 103,val = 6448.3}},UpAttr = {[1] = {id = 101,val = 39.17},[2] = {id = 102,val = 19.58},[3] = {id = 103,val = 175.5}},RosterAttr = {AtkExt = 1092,DefExt = 544,HPExt = 4888},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--徐晃4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1984.51},[2] = {id = 102,val = 791.51},[3] = {id = 103,val = 9080.8}},UpAttr = {[1] = {id = 101,val = 48.96},[2] = {id = 102,val = 24.48},[3] = {id = 103,val = 219.7}},RosterAttr = {AtkExt = 1581,DefExt = 788,HPExt = 7085},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 60}}},--徐晃5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2596.29},[2] = {id = 102,val = 1097.4},[3] = {id = 103,val = 12377.6}},UpAttr = {[1] = {id = 101,val = 63.51},[2] = {id = 102,val = 31.75},[3] = {id = 103,val = 284.7}},RosterAttr = {AtkExt = 2216,DefExt = 1105,HPExt = 9932},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603005,val = 60}}},--徐晃6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 3389.94},[2] = {id = 102,val = 1494.22},[3] = {id = 103,val = 16652}},UpAttr = {[1] = {id = 101,val = 78.25},[2] = {id = 102,val = 39.12},[3] = {id = 103,val = 351}},RosterAttr = {AtkExt = 2998,DefExt = 1496,HPExt = 13442},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603005,val = 80}}},--徐晃7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 4367.41},[2] = {id = 102,val = 1982.96},[3] = {id = 103,val = 21917}},UpAttr = {[1] = {id = 101,val = 97.75},[2] = {id = 102,val = 48.87},[3] = {id = 103,val = 439.4}},RosterAttr = {AtkExt = 3975,DefExt = 1984,HPExt = 17836},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603005,val = 75}}},--徐晃8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 5589.28},[2] = {id = 102,val = 2593.89},[3] = {id = 103,val = 28510.6}},UpAttr = {[1] = {id = 101,val = 127.13},[2] = {id = 102,val = 63.56},[3] = {id = 103,val = 572}},RosterAttr = {AtkExt = 5246,DefExt = 2619,HPExt = 23556},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603008,val = 35}}},--徐晃9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 6383.52},[2] = {id = 102,val = 2991.01},[3] = {id = 103,val = 32798}},UpAttr = {[1] = {id = 101,val = 146.68},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 659.1}},RosterAttr = {AtkExt = 6712,DefExt = 3352,HPExt = 30147},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 50}}},--徐晃10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 7300.21},[2] = {id = 102,val = 3450.01},[3] = {id = 103,val = 37743.2}},UpAttr = {[1] = {id = 101,val = 171.05},[2] = {id = 102,val = 85.53},[3] = {id = 103,val = 769.6}},RosterAttr = {AtkExt = 8422,DefExt = 4207,HPExt = 37843},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603008,val = 75}}},--徐晃11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 8368.68},[2] = {id = 102,val = 3984.24},[3] = {id = 103,val = 43510}},UpAttr = {[1] = {id = 101,val = 195.61},[2] = {id = 102,val = 97.81},[3] = {id = 103,val = 880.1}},RosterAttr = {AtkExt = 10378,DefExt = 5185,HPExt = 46644},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603008,val = 80}}},--徐晃12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 9591.14},[2] = {id = 102,val = 4595.47},[3] = {id = 103,val = 50110.1}},UpAttr = {[1] = {id = 101,val = 226.16},[2] = {id = 102,val = 113.08},[3] = {id = 103,val = 1016.6}},RosterAttr = {AtkExt = 12639,DefExt = 6315,HPExt = 56810},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603008,val = 100}}},--徐晃13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 11004.04},[2] = {id = 102,val = 5302.57},[3] = {id = 103,val = 57732}},UpAttr = {[1] = {id = 101,val = 261.5},[2] = {id = 102,val = 130.75},[3] = {id = 103,val = 1176.5}},RosterAttr = {AtkExt = 15254,DefExt = 7622,HPExt = 68575},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603008,val = 100}}},--徐晃14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 12637.82},[2] = {id = 102,val = 6120.11},[3] = {id = 103,val = 66551.2}},UpAttr = {[1] = {id = 101,val = 302.33},[2] = {id = 102,val = 151.16},[3] = {id = 103,val = 1359.8}},RosterAttr = {AtkExt = 18277,DefExt = 9133,HPExt = 82173},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603011,val = 15}}},--徐晃15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 14527.76},[2] = {id = 102,val = 7064.43},[3] = {id = 103,val = 76754.9}},UpAttr = {[1] = {id = 101,val = 349.58},[2] = {id = 102,val = 174.79},[3] = {id = 103,val = 1573}},RosterAttr = {AtkExt = 21772,DefExt = 10880,HPExt = 97903},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603011,val = 20}}},--徐晃16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 16712.47},[2] = {id = 102,val = 8156.79},[3] = {id = 103,val = 88551.1}},UpAttr = {[1] = {id = 101,val = 404.2},[2] = {id = 102,val = 202.1},[3] = {id = 103,val = 1818.7}},RosterAttr = {AtkExt = 25814,DefExt = 12901,HPExt = 116090},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603011,val = 30},[4] = {id = 1603014,val = 5}}},--徐晃17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 19239.15},[2] = {id = 102,val = 9419.48},[3] = {id = 103,val = 102195.9}},UpAttr = {[1] = {id = 101,val = 467.36},[2] = {id = 102,val = 233.68},[3] = {id = 103,val = 2102.1}},RosterAttr = {AtkExt = 30487,DefExt = 15237,HPExt = 137111},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603011,val = 40},[4] = {id = 1603014,val = 10}}},--徐晃18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 22159.67},[2] = {id = 102,val = 10880.38},[3] = {id = 103,val = 117959.7}},UpAttr = {[1] = {id = 101,val = 540.38},[2] = {id = 102,val = 270.19},[3] = {id = 103,val = 2431}},RosterAttr = {AtkExt = 35890,DefExt = 17938,HPExt = 161421},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603011,val = 50},[4] = {id = 1603014,val = 15}}},--徐晃19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 25537.59},[2] = {id = 102,val = 12569.34},[3] = {id = 103,val = 136198.7}},UpAttr = {[1] = {id = 101,val = 624.83},[2] = {id = 102,val = 312.42},[3] = {id = 103,val = 2810.6}},RosterAttr = {AtkExt = 42138,DefExt = 21062,HPExt = 189527},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603011,val = 60},[4] = {id = 1603014,val = 20}}},--徐晃20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 29443.05},[2] = {id = 102,val = 14521.42},[3] = {id = 103,val = 157283.4}},UpAttr = {[1] = {id = 101,val = 722.46},[2] = {id = 102,val = 361.23},[3] = {id = 103,val = 3250}},RosterAttr = {AtkExt = 49362,DefExt = 24674,HPExt = 222027},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 75},[4] = {id = 1603014,val = 25}}}--徐晃21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702009,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702009,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702009,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702009,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702009,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("徐晃传记1"),Episode = _T("徐晃是曹焱兵的七个武将中，言谈最少的一位。但其对曹家的忠心却并不亚于其他武将。在曹焱兵陷入雪王阴谋之中时，他早已悄然现身，在暗中保护曹焱兵。并在最后关头挡住了雪王的杀招，唤醒了曹焱兵的斗志。")},--徐晃传记1
			[2] = {EpisodeTitle = _T("徐晃传记2"),Episode = _T("“我徐晃之焰来自红莲地狱，连极寒之气都没有将我冻住，你这点冰雪，连个屁都不是！”徐晃轻而易举便破开了雪王的冰莲。一直成竹在胸的雪王终于露出了一丝惊惧，召唤出无数冰雪兽扑向徐晃。徐晃傲然不退：“区区畜生，来多少，杀多少！”")},--徐晃传记2
			[3] = {EpisodeTitle = _T("徐晃传记3"),Episode = _T("“呵呵，晃在，主公在！”面对现出九婴真身的雪王，徐晃丝毫不退。在他无惧寒冰的白焰帮助下，曹焱兵被冰封的四位武将重获自由。他仰头看着巨大的九婴，对昔日并肩作战的同伴笑道：“眼前这家伙有九个头，可不够我一人斩吧！”")},--徐晃传记3
			[4] = {EpisodeTitle = _T("徐晃传记4"),Episode = _T("徐晃为人极为低调，但他生前战绩显赫，战胜过刘备，颜良文丑，甚至武圣关羽也败在过他手中。且他一生用兵谨慎，几乎从未有过败绩。正如他化身守护灵之后，左手持盾，右手持斧，攻守兼备。")},--徐晃传记4
			[5] = {EpisodeTitle = _T("徐晃传记5"),Episode = _T("击败风花雪月四王之后，曹焱兵曾问过徐晃为何愿意主动现身助他，而不是等他上门寻求帮助。徐晃笑了笑，道：“古人患不遭明君，今幸遇之，当以功自效，何用私誉为？”与生前他在曹公麾下的回答一字不差。")}--徐晃传记5
		}
	},--徐晃
	[1102010] = {
		IfEntreVersion = 1,
		Name = _T("张郃"),
		NickName = _T("暗影修罗"),
		NamePic = "ui_dtex_Name_1102010",
		NickNamePic = "ui_dtex_Name2_1102010",
		KPKM = "kp_km_1102010",
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
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304030,1304034},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304030,1304034},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2009,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 975},[2] = {id = 102,val = 150},[3] = {id = 103,val = 3625}},UpAttr = {[1] = {id = 101,val = 22.5},[2] = {id = 102,val = 11.25},[3] = {id = 103,val = 100.5}},RosterAttr = {AtkExt = 225,DefExt = 112,HPExt = 1005}},--张郃1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 1215},[2] = {id = 102,val = 266.25},[3] = {id = 103,val = 4867}},UpAttr = {[1] = {id = 101,val = 20.66},[2] = {id = 102,val = 10.33},[3] = {id = 103,val = 91.5}},RosterAttr = {AtkExt = 431,DefExt = 215,HPExt = 1920},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--张郃2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 1472.55},[2] = {id = 102,val = 395.03},[3] = {id = 103,val = 6241}},UpAttr = {[1] = {id = 101,val = 37.76},[2] = {id = 102,val = 18.88},[3] = {id = 103,val = 169.5}},RosterAttr = {AtkExt = 808,DefExt = 403,HPExt = 3615},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--张郃3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1944.6},[2] = {id = 102,val = 630.3},[3] = {id = 103,val = 8786.5}},UpAttr = {[1] = {id = 101,val = 45.2},[2] = {id = 102,val = 22.6},[3] = {id = 103,val = 202.5}},RosterAttr = {AtkExt = 1260,DefExt = 629,HPExt = 5640},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--张郃4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 2509.05},[2] = {id = 102,val = 913.28},[3] = {id = 103,val = 11824}},UpAttr = {[1] = {id = 101,val = 56.49},[2] = {id = 102,val = 28.25},[3] = {id = 103,val = 253.5}},RosterAttr = {AtkExt = 1824,DefExt = 911,HPExt = 8175},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 60}}},--张郃5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 3214.95},[2] = {id = 102,val = 1266.23},[3] = {id = 103,val = 15628}},UpAttr = {[1] = {id = 101,val = 73.28},[2] = {id = 102,val = 36.64},[3] = {id = 103,val = 328.5}},RosterAttr = {AtkExt = 2556,DefExt = 1277,HPExt = 11460},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603005,val = 60}}},--张郃6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 4130.7},[2] = {id = 102,val = 1724.1},[3] = {id = 103,val = 20560}},UpAttr = {[1] = {id = 101,val = 90.29},[2] = {id = 102,val = 45.14},[3] = {id = 103,val = 405}},RosterAttr = {AtkExt = 3458,DefExt = 1728,HPExt = 15510},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603005,val = 80}}},--张郃7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 5258.55},[2] = {id = 102,val = 2288.03},[3] = {id = 103,val = 26635}},UpAttr = {[1] = {id = 101,val = 112.79},[2] = {id = 102,val = 56.39},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 4585,DefExt = 2291,HPExt = 20580},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603005,val = 75}}},--张郃8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 6668.4},[2] = {id = 102,val = 2992.95},[3] = {id = 103,val = 34243}},UpAttr = {[1] = {id = 101,val = 146.69},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 660}},RosterAttr = {AtkExt = 6051,DefExt = 3024,HPExt = 27180},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603008,val = 35}}},--张郃9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 7584.83},[2] = {id = 102,val = 3451.16},[3] = {id = 103,val = 39190}},UpAttr = {[1] = {id = 101,val = 169.25},[2] = {id = 102,val = 84.62},[3] = {id = 103,val = 760.5}},RosterAttr = {AtkExt = 7743,DefExt = 3870,HPExt = 34785},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 50}}},--张郃10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 8642.55},[2] = {id = 102,val = 3980.78},[3] = {id = 103,val = 44896}},UpAttr = {[1] = {id = 101,val = 197.37},[2] = {id = 102,val = 98.69},[3] = {id = 103,val = 888}},RosterAttr = {AtkExt = 9716,DefExt = 4856,HPExt = 43665},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603008,val = 75}}},--张郃11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 9875.4},[2] = {id = 102,val = 4597.2},[3] = {id = 103,val = 51550}},UpAttr = {[1] = {id = 101,val = 225.71},[2] = {id = 102,val = 112.85},[3] = {id = 103,val = 1015.5}},RosterAttr = {AtkExt = 11973,DefExt = 5984,HPExt = 53820},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603008,val = 80}}},--张郃12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 11285.93},[2] = {id = 102,val = 5302.46},[3] = {id = 103,val = 59165.5}},UpAttr = {[1] = {id = 101,val = 260.96},[2] = {id = 102,val = 130.48},[3] = {id = 103,val = 1173}},RosterAttr = {AtkExt = 14582,DefExt = 7288,HPExt = 65550},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603008,val = 100}}},--张郃13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 12916.2},[2] = {id = 102,val = 6118.35},[3] = {id = 103,val = 67960}},UpAttr = {[1] = {id = 101,val = 301.73},[2] = {id = 102,val = 150.86},[3] = {id = 103,val = 1357.5}},RosterAttr = {AtkExt = 17599,DefExt = 8796,HPExt = 79125},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603008,val = 100}}},--张郃14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 14801.33},[2] = {id = 102,val = 7061.66},[3] = {id = 103,val = 78136}},UpAttr = {[1] = {id = 101,val = 348.84},[2] = {id = 102,val = 174.42},[3] = {id = 103,val = 1569}},RosterAttr = {AtkExt = 21087,DefExt = 10540,HPExt = 94815},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603011,val = 15}}},--张郃15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 16982.03},[2] = {id = 102,val = 8151.26},[3] = {id = 103,val = 89909.5}},UpAttr = {[1] = {id = 101,val = 403.37},[2] = {id = 102,val = 201.68},[3] = {id = 103,val = 1815}},RosterAttr = {AtkExt = 25120,DefExt = 12556,HPExt = 112965},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603011,val = 20}}},--张郃16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 19502.85},[2] = {id = 102,val = 9411.68},[3] = {id = 103,val = 103520.5}},UpAttr = {[1] = {id = 101,val = 466.38},[2] = {id = 102,val = 233.19},[3] = {id = 103,val = 2098.5}},RosterAttr = {AtkExt = 29783,DefExt = 14887,HPExt = 133950},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603011,val = 30},[4] = {id = 1603014,val = 5}}},--张郃17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 22418.25},[2] = {id = 102,val = 10868.63},[3] = {id = 103,val = 119264.5}},UpAttr = {[1] = {id = 101,val = 539.27},[2] = {id = 102,val = 269.63},[3] = {id = 103,val = 2425.5}},RosterAttr = {AtkExt = 35175,DefExt = 17583,HPExt = 158205},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603011,val = 40},[4] = {id = 1603014,val = 10}}},--张郃18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 25788.08},[2] = {id = 102,val = 12554.29},[3] = {id = 103,val = 137453.5}},UpAttr = {[1] = {id = 101,val = 623.52},[2] = {id = 102,val = 311.76},[3] = {id = 103,val = 2805}},RosterAttr = {AtkExt = 41410,DefExt = 20700,HPExt = 186255},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603011,val = 50},[4] = {id = 1603014,val = 15}}},--张郃19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 29685.68},[2] = {id = 102,val = 14503.09},[3] = {id = 103,val = 158498.5}},UpAttr = {[1] = {id = 101,val = 720.96},[2] = {id = 102,val = 360.48},[3] = {id = 103,val = 3243}},RosterAttr = {AtkExt = 48619,DefExt = 24304,HPExt = 218685},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603011,val = 60},[4] = {id = 1603014,val = 20}}},--张郃20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 34191.98},[2] = {id = 102,val = 16755.49},[3] = {id = 103,val = 182827}},UpAttr = {[1] = {id = 101,val = 833.61},[2] = {id = 102,val = 416.81},[3] = {id = 103,val = 3750}},RosterAttr = {AtkExt = 56955,DefExt = 28472,HPExt = 256185},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 75},[4] = {id = 1603014,val = 25}}}--张郃21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702010,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702010,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702010,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702010,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702010,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("张郃传记1"),Episode = _T("“我没有输给敌人，却输在了自己人手里。”说出这句话时，张郃如同种地老伯一般淡然，似乎对前世让自己身死的那一战已然忘却。但曹焱兵却能察觉到他心底真正渴望的是战斗。并最终说服他出山助自己一臂之力")},--张郃传记1
			[2] = {EpisodeTitle = _T("张郃传记2"),Episode = _T("芦花古楼与月王一战，曹焱兵等人几近穷途末路。危急时刻，神秘黑甲将军突然现身，一刀斩瞎了月王最强的眼睛，从而一举扭转战局。而出手的正是张郃，但他却选择了事了拂衣去，并未直接服从曹焱兵。")},--张郃传记2
			[3] = {EpisodeTitle = _T("张郃传记3"),Episode = _T("张郃的力量与其他武将不同，他不仅能单独战斗，还能化为黑色铠甲附着在曹焱兵身上，极大的提升曹焱兵的防御力与攻击力，即便是号称无敌的镇狱童子，面对与张郃联手的曹焱兵也不敢掉以轻心。")},--张郃传记3
			[4] = {EpisodeTitle = _T("张郃传记4"),Episode = _T("“生不逢时，致死都没有真正实现自己的理想。”张郃唤出跟随自己多年的长枪利剑，形态开始发生变化：“我需要一个能让我放手去干的主子，而不是独断专行！想让我俯首称臣，就让我看看你的能耐！”战斗，便是张郃对曹焱兵的考验。")},--张郃传记4
			[5] = {EpisodeTitle = _T("张郃传记5"),Episode = _T("张郃生前在渭南曾与五虎将中的马超，张飞皆有过对阵，令刘备极为忌惮。如今作为曹焱兵最神秘的守护灵，张郃一出场便先后助他斩月王，破镇狱。风头一时无两，宛如前世的不败战神。")}--张郃传记5
		}
	},--张郃
	[1102011] = {
		IfEntreVersion = 1,
		Name = _T("张飞"),
		NickName = _T("万人敌"),
		NamePic = "ui_dtex_Name_1102011",
		NickNamePic = "ui_dtex_Name2_1102011",
		KPKM = "kp_km_1102011",
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
		CallCost = 4,
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
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2010,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 975},[2] = {id = 102,val = 150},[3] = {id = 103,val = 3625}},UpAttr = {[1] = {id = 101,val = 22.5},[2] = {id = 102,val = 11.25},[3] = {id = 103,val = 100.5}},RosterAttr = {AtkExt = 225,DefExt = 112,HPExt = 1005}},--张飞1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 1215},[2] = {id = 102,val = 266.25},[3] = {id = 103,val = 4867}},UpAttr = {[1] = {id = 101,val = 20.66},[2] = {id = 102,val = 10.33},[3] = {id = 103,val = 91.5}},RosterAttr = {AtkExt = 431,DefExt = 215,HPExt = 1920},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--张飞2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 1472.55},[2] = {id = 102,val = 395.03},[3] = {id = 103,val = 6241}},UpAttr = {[1] = {id = 101,val = 37.76},[2] = {id = 102,val = 18.88},[3] = {id = 103,val = 169.5}},RosterAttr = {AtkExt = 808,DefExt = 403,HPExt = 3615},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--张飞3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1944.6},[2] = {id = 102,val = 630.3},[3] = {id = 103,val = 8786.5}},UpAttr = {[1] = {id = 101,val = 45.2},[2] = {id = 102,val = 22.6},[3] = {id = 103,val = 202.5}},RosterAttr = {AtkExt = 1260,DefExt = 629,HPExt = 5640},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--张飞4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 2509.05},[2] = {id = 102,val = 913.28},[3] = {id = 103,val = 11824}},UpAttr = {[1] = {id = 101,val = 56.49},[2] = {id = 102,val = 28.25},[3] = {id = 103,val = 253.5}},RosterAttr = {AtkExt = 1824,DefExt = 911,HPExt = 8175},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 60}}},--张飞5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 3214.95},[2] = {id = 102,val = 1266.23},[3] = {id = 103,val = 15628}},UpAttr = {[1] = {id = 101,val = 73.28},[2] = {id = 102,val = 36.64},[3] = {id = 103,val = 328.5}},RosterAttr = {AtkExt = 2556,DefExt = 1277,HPExt = 11460},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603007,val = 60}}},--张飞6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 4130.7},[2] = {id = 102,val = 1724.1},[3] = {id = 103,val = 20560}},UpAttr = {[1] = {id = 101,val = 90.29},[2] = {id = 102,val = 45.14},[3] = {id = 103,val = 405}},RosterAttr = {AtkExt = 3458,DefExt = 1728,HPExt = 15510},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603007,val = 80}}},--张飞7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 5258.55},[2] = {id = 102,val = 2288.03},[3] = {id = 103,val = 26635}},UpAttr = {[1] = {id = 101,val = 112.79},[2] = {id = 102,val = 56.39},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 4585,DefExt = 2291,HPExt = 20580},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603007,val = 75}}},--张飞8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 6668.4},[2] = {id = 102,val = 2992.95},[3] = {id = 103,val = 34243}},UpAttr = {[1] = {id = 101,val = 146.69},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 660}},RosterAttr = {AtkExt = 6051,DefExt = 3024,HPExt = 27180},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603010,val = 35}}},--张飞9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 7584.83},[2] = {id = 102,val = 3451.16},[3] = {id = 103,val = 39190}},UpAttr = {[1] = {id = 101,val = 169.25},[2] = {id = 102,val = 84.62},[3] = {id = 103,val = 760.5}},RosterAttr = {AtkExt = 7743,DefExt = 3870,HPExt = 34785},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 50}}},--张飞10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 8642.55},[2] = {id = 102,val = 3980.78},[3] = {id = 103,val = 44896}},UpAttr = {[1] = {id = 101,val = 197.37},[2] = {id = 102,val = 98.69},[3] = {id = 103,val = 888}},RosterAttr = {AtkExt = 9716,DefExt = 4856,HPExt = 43665},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603010,val = 75}}},--张飞11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 9875.4},[2] = {id = 102,val = 4597.2},[3] = {id = 103,val = 51550}},UpAttr = {[1] = {id = 101,val = 225.71},[2] = {id = 102,val = 112.85},[3] = {id = 103,val = 1015.5}},RosterAttr = {AtkExt = 11973,DefExt = 5984,HPExt = 53820},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603010,val = 80}}},--张飞12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 11285.93},[2] = {id = 102,val = 5302.46},[3] = {id = 103,val = 59165.5}},UpAttr = {[1] = {id = 101,val = 260.96},[2] = {id = 102,val = 130.48},[3] = {id = 103,val = 1173}},RosterAttr = {AtkExt = 14582,DefExt = 7288,HPExt = 65550},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603010,val = 100}}},--张飞13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 12916.2},[2] = {id = 102,val = 6118.35},[3] = {id = 103,val = 67960}},UpAttr = {[1] = {id = 101,val = 301.73},[2] = {id = 102,val = 150.86},[3] = {id = 103,val = 1357.5}},RosterAttr = {AtkExt = 17599,DefExt = 8796,HPExt = 79125},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603010,val = 100}}},--张飞14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 14801.33},[2] = {id = 102,val = 7061.66},[3] = {id = 103,val = 78136}},UpAttr = {[1] = {id = 101,val = 348.84},[2] = {id = 102,val = 174.42},[3] = {id = 103,val = 1569}},RosterAttr = {AtkExt = 21087,DefExt = 10540,HPExt = 94815},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603013,val = 15}}},--张飞15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 16982.03},[2] = {id = 102,val = 8151.26},[3] = {id = 103,val = 89909.5}},UpAttr = {[1] = {id = 101,val = 403.37},[2] = {id = 102,val = 201.68},[3] = {id = 103,val = 1815}},RosterAttr = {AtkExt = 25120,DefExt = 12556,HPExt = 112965},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603013,val = 20}}},--张飞16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 19502.85},[2] = {id = 102,val = 9411.68},[3] = {id = 103,val = 103520.5}},UpAttr = {[1] = {id = 101,val = 466.38},[2] = {id = 102,val = 233.19},[3] = {id = 103,val = 2098.5}},RosterAttr = {AtkExt = 29783,DefExt = 14887,HPExt = 133950},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603013,val = 30},[4] = {id = 1603014,val = 5}}},--张飞17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 22418.25},[2] = {id = 102,val = 10868.63},[3] = {id = 103,val = 119264.5}},UpAttr = {[1] = {id = 101,val = 539.27},[2] = {id = 102,val = 269.63},[3] = {id = 103,val = 2425.5}},RosterAttr = {AtkExt = 35175,DefExt = 17583,HPExt = 158205},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603013,val = 40},[4] = {id = 1603014,val = 10}}},--张飞18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 25788.08},[2] = {id = 102,val = 12554.29},[3] = {id = 103,val = 137453.5}},UpAttr = {[1] = {id = 101,val = 623.52},[2] = {id = 102,val = 311.76},[3] = {id = 103,val = 2805}},RosterAttr = {AtkExt = 41410,DefExt = 20700,HPExt = 186255},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603013,val = 50},[4] = {id = 1603014,val = 15}}},--张飞19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 29685.68},[2] = {id = 102,val = 14503.09},[3] = {id = 103,val = 158498.5}},UpAttr = {[1] = {id = 101,val = 720.96},[2] = {id = 102,val = 360.48},[3] = {id = 103,val = 3243}},RosterAttr = {AtkExt = 48619,DefExt = 24304,HPExt = 218685},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603013,val = 60},[4] = {id = 1603014,val = 20}}},--张飞20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 34191.98},[2] = {id = 102,val = 16755.49},[3] = {id = 103,val = 182827}},UpAttr = {[1] = {id = 101,val = 833.61},[2] = {id = 102,val = 416.81},[3] = {id = 103,val = 3750}},RosterAttr = {AtkExt = 56955,DefExt = 28472,HPExt = 256185},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 75},[4] = {id = 1603014,val = 25}}}--张飞21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702011,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702011,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702011,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702011,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702011,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("张飞传记1"),Episode = _T("看到西区结界被破的那一瞬间，张飞便明白一切皆如军师所料，一场腥风血雨即将来临，冥界天下即将陷入大乱。他体内的热血也再次沸腾，曾经与同伴们一起征战四方的日子很快就要再次到来了！")},--张飞传记1
			[2] = {EpisodeTitle = _T("张飞传记2"),Episode = _T("“我乃燕人张翼德！！谁敢挡我去路！！”骏马上，张飞望着前方的陷阵营，怒吼着：“一群吃了豹子胆的东西！老子我在百万军中取上将之头！如探囊取物！”伴随着震耳欲聋的吼声，张飞完全解放守护灵形态，陷阵营无人敢试其锋芒。")},--张飞传记2
			[3] = {EpisodeTitle = _T("张飞传记3"),Episode = _T("张飞生前的一大憾事，便是未曾与曹操麾下的万人敌典韦战上一场。如今两人皆以守护灵形态重生于今世，或许有幸酣畅淋漓的战上一场，了却前世的遗憾。群英殿之乱中，典韦身陷重围，面临危机时，正是张飞杀进重围将其救出。")},--张飞传记3
			[4] = {EpisodeTitle = _T("张飞传记4"),Episode = _T("一次恶灵暴动，导致数之不清的恶灵涌入了水云街。身为水云街镇魂将的刘羽禅得知消息却波澜不惊，因为此时巡守在水云街入口的乃是万人敌——张飞。一人一马一矛，便能阻敌千军万马。")},--张飞传记4
			[5] = {EpisodeTitle = _T("张飞传记5"),Episode = _T("张飞一直被后世公认为一介武夫莽汉，但其实张飞极有书生气，称得上是个文人，在书画方面极有才华。只不过其在战场上的勇猛过人，且行事莽撞的形象太过深入人心，才被后世刻画成了一个莽汉的形象。")}--张飞传记5
		}
	},--张飞
	[1102012] = {
		IfEntreVersion = 1,
		Name = _T("夏侯惇"),
		NickName = _T("独目苍狼"),
		NamePic = "ui_dtex_Name_1102012",
		NickNamePic = "ui_dtex_Name2_1102012",
		KPKM = "kp_km_1102012",
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
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2011,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 975},[2] = {id = 102,val = 150},[3] = {id = 103,val = 3625}},UpAttr = {[1] = {id = 101,val = 22.5},[2] = {id = 102,val = 11.25},[3] = {id = 103,val = 100.5}},RosterAttr = {AtkExt = 225,DefExt = 112,HPExt = 1005}},--夏侯惇1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 1215},[2] = {id = 102,val = 266.25},[3] = {id = 103,val = 4867}},UpAttr = {[1] = {id = 101,val = 20.66},[2] = {id = 102,val = 10.33},[3] = {id = 103,val = 91.5}},RosterAttr = {AtkExt = 431,DefExt = 215,HPExt = 1920},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--夏侯惇2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 1472.55},[2] = {id = 102,val = 395.03},[3] = {id = 103,val = 6241}},UpAttr = {[1] = {id = 101,val = 37.76},[2] = {id = 102,val = 18.88},[3] = {id = 103,val = 169.5}},RosterAttr = {AtkExt = 808,DefExt = 403,HPExt = 3615},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--夏侯惇3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1944.6},[2] = {id = 102,val = 630.3},[3] = {id = 103,val = 8786.5}},UpAttr = {[1] = {id = 101,val = 45.2},[2] = {id = 102,val = 22.6},[3] = {id = 103,val = 202.5}},RosterAttr = {AtkExt = 1260,DefExt = 629,HPExt = 5640},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--夏侯惇4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 2509.05},[2] = {id = 102,val = 913.28},[3] = {id = 103,val = 11824}},UpAttr = {[1] = {id = 101,val = 56.49},[2] = {id = 102,val = 28.25},[3] = {id = 103,val = 253.5}},RosterAttr = {AtkExt = 1824,DefExt = 911,HPExt = 8175},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 60}}},--夏侯惇5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 3214.95},[2] = {id = 102,val = 1266.23},[3] = {id = 103,val = 15628}},UpAttr = {[1] = {id = 101,val = 73.28},[2] = {id = 102,val = 36.64},[3] = {id = 103,val = 328.5}},RosterAttr = {AtkExt = 2556,DefExt = 1277,HPExt = 11460},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603005,val = 60}}},--夏侯惇6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 4130.7},[2] = {id = 102,val = 1724.1},[3] = {id = 103,val = 20560}},UpAttr = {[1] = {id = 101,val = 90.29},[2] = {id = 102,val = 45.14},[3] = {id = 103,val = 405}},RosterAttr = {AtkExt = 3458,DefExt = 1728,HPExt = 15510},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603005,val = 80}}},--夏侯惇7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 5258.55},[2] = {id = 102,val = 2288.03},[3] = {id = 103,val = 26635}},UpAttr = {[1] = {id = 101,val = 112.79},[2] = {id = 102,val = 56.39},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 4585,DefExt = 2291,HPExt = 20580},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603005,val = 75}}},--夏侯惇8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 6668.4},[2] = {id = 102,val = 2992.95},[3] = {id = 103,val = 34243}},UpAttr = {[1] = {id = 101,val = 146.69},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 660}},RosterAttr = {AtkExt = 6051,DefExt = 3024,HPExt = 27180},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603008,val = 35}}},--夏侯惇9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 7584.83},[2] = {id = 102,val = 3451.16},[3] = {id = 103,val = 39190}},UpAttr = {[1] = {id = 101,val = 169.25},[2] = {id = 102,val = 84.62},[3] = {id = 103,val = 760.5}},RosterAttr = {AtkExt = 7743,DefExt = 3870,HPExt = 34785},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 50}}},--夏侯惇10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 8642.55},[2] = {id = 102,val = 3980.78},[3] = {id = 103,val = 44896}},UpAttr = {[1] = {id = 101,val = 197.37},[2] = {id = 102,val = 98.69},[3] = {id = 103,val = 888}},RosterAttr = {AtkExt = 9716,DefExt = 4856,HPExt = 43665},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603008,val = 75}}},--夏侯惇11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 9875.4},[2] = {id = 102,val = 4597.2},[3] = {id = 103,val = 51550}},UpAttr = {[1] = {id = 101,val = 225.71},[2] = {id = 102,val = 112.85},[3] = {id = 103,val = 1015.5}},RosterAttr = {AtkExt = 11973,DefExt = 5984,HPExt = 53820},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603008,val = 80}}},--夏侯惇12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 11285.93},[2] = {id = 102,val = 5302.46},[3] = {id = 103,val = 59165.5}},UpAttr = {[1] = {id = 101,val = 260.96},[2] = {id = 102,val = 130.48},[3] = {id = 103,val = 1173}},RosterAttr = {AtkExt = 14582,DefExt = 7288,HPExt = 65550},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603008,val = 100}}},--夏侯惇13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 12916.2},[2] = {id = 102,val = 6118.35},[3] = {id = 103,val = 67960}},UpAttr = {[1] = {id = 101,val = 301.73},[2] = {id = 102,val = 150.86},[3] = {id = 103,val = 1357.5}},RosterAttr = {AtkExt = 17599,DefExt = 8796,HPExt = 79125},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603008,val = 100}}},--夏侯惇14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 14801.33},[2] = {id = 102,val = 7061.66},[3] = {id = 103,val = 78136}},UpAttr = {[1] = {id = 101,val = 348.84},[2] = {id = 102,val = 174.42},[3] = {id = 103,val = 1569}},RosterAttr = {AtkExt = 21087,DefExt = 10540,HPExt = 94815},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603011,val = 15}}},--夏侯惇15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 16982.03},[2] = {id = 102,val = 8151.26},[3] = {id = 103,val = 89909.5}},UpAttr = {[1] = {id = 101,val = 403.37},[2] = {id = 102,val = 201.68},[3] = {id = 103,val = 1815}},RosterAttr = {AtkExt = 25120,DefExt = 12556,HPExt = 112965},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603011,val = 20}}},--夏侯惇16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 19502.85},[2] = {id = 102,val = 9411.68},[3] = {id = 103,val = 103520.5}},UpAttr = {[1] = {id = 101,val = 466.38},[2] = {id = 102,val = 233.19},[3] = {id = 103,val = 2098.5}},RosterAttr = {AtkExt = 29783,DefExt = 14887,HPExt = 133950},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603011,val = 30},[4] = {id = 1603014,val = 5}}},--夏侯惇17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 22418.25},[2] = {id = 102,val = 10868.63},[3] = {id = 103,val = 119264.5}},UpAttr = {[1] = {id = 101,val = 539.27},[2] = {id = 102,val = 269.63},[3] = {id = 103,val = 2425.5}},RosterAttr = {AtkExt = 35175,DefExt = 17583,HPExt = 158205},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603011,val = 40},[4] = {id = 1603014,val = 10}}},--夏侯惇18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 25788.08},[2] = {id = 102,val = 12554.29},[3] = {id = 103,val = 137453.5}},UpAttr = {[1] = {id = 101,val = 623.52},[2] = {id = 102,val = 311.76},[3] = {id = 103,val = 2805}},RosterAttr = {AtkExt = 41410,DefExt = 20700,HPExt = 186255},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603011,val = 50},[4] = {id = 1603014,val = 15}}},--夏侯惇19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 29685.68},[2] = {id = 102,val = 14503.09},[3] = {id = 103,val = 158498.5}},UpAttr = {[1] = {id = 101,val = 720.96},[2] = {id = 102,val = 360.48},[3] = {id = 103,val = 3243}},RosterAttr = {AtkExt = 48619,DefExt = 24304,HPExt = 218685},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603011,val = 60},[4] = {id = 1603014,val = 20}}},--夏侯惇20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 34191.98},[2] = {id = 102,val = 16755.49},[3] = {id = 103,val = 182827}},UpAttr = {[1] = {id = 101,val = 833.61},[2] = {id = 102,val = 416.81},[3] = {id = 103,val = 3750}},RosterAttr = {AtkExt = 56955,DefExt = 28472,HPExt = 256185},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 75},[4] = {id = 1603014,val = 25}}}--夏侯惇21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702012,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702012,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702012,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702012,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702012,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("夏侯惇传记1"),Episode = _T("夏侯惇生前是曹操最喜爱的爱将，从曹操起事起便跟随在其左右。正因对曹操的雄心壮志足够了解，所以一开始对想要安然度日的曹焱兵极为不屑，认为他不配让自己效力。")},--夏侯惇传记1
			[2] = {EpisodeTitle = _T("夏侯惇传记2"),Episode = _T("“曹焱兵，你看看这片火海，如今我们已成为这儿的王，所有恶鬼皆听我等号令，我们为何要舍弃自由，去救你这个似熟非熟的毛头小子！？”夏侯惇望着面前的曹焱兵，咧开嘴，问道：“回答我！”")},--夏侯惇传记2
			[3] = {EpisodeTitle = _T("夏侯惇传记3"),Episode = _T("“你问我想要什么...？天下！”曹焱兵坚定的给出了自己的答案，夏侯惇仿佛看到了当年曹公的身影，他不由放声狂笑：“哈哈哈哈！太棒了！这才是我们要的答案！小阿瞒，你有让我们为你卖命的资格！”")},--夏侯惇传记3
			[4] = {EpisodeTitle = _T("夏侯惇传记4"),Episode = _T("羽林之变中，夏侯惇与夏侯渊两兄弟的加入改写了战局，两人从阿鼻地狱中带来的地狱火赐予了许褚，典韦这对虎贲双雄真正的力量。随后即便对上项昆仑麾下的四大将也丝毫不落下风。")},--夏侯惇传记4
			[5] = {EpisodeTitle = _T("夏侯惇传记5"),Episode = _T("曹操麾下能征善战的将军不计其数，夏侯惇也许不是其中单挑能力最强的。但却是难得一见的帅才，进能征战四方，退能保后方安定。所以每当面对需要随机应变的局面，曹焱兵往往会优先使用夏侯惇迎敌。")}--夏侯惇传记5
		}
	},--夏侯惇
	[1102013] = {
		IfEntreVersion = 1,
		Name = _T("塞伯洛斯"),
		NickName = _T("地狱犬"),
		NamePic = "ui_dtex_Name_1102013",
		NickNamePic = "ui_dtex_Name2_1102013",
		KPKM = "kp_km_1102013",
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
		GachaDialogue = "gacha_sbls_1102013",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 616,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304030,1304031},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304030,1304031},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2012,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 350},[2] = {id = 102,val = 100},[3] = {id = 103,val = 750}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 67}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 670}},--塞伯罗斯1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 510},[2] = {id = 102,val = 177.5},[3] = {id = 103,val = 1578}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 61}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 1280},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--塞伯罗斯2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 681.7},[2] = {id = 102,val = 263.35},[3] = {id = 103,val = 2494}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 113}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 2410},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--塞伯罗斯3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 996.4},[2] = {id = 102,val = 420.2},[3] = {id = 103,val = 4191}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 135}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 3760},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--塞伯罗斯4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1372.7},[2] = {id = 102,val = 608.85},[3] = {id = 103,val = 6216}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 169}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 5450},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 60}}},--塞伯罗斯5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1843.3},[2] = {id = 102,val = 844.15},[3] = {id = 103,val = 8752}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 219}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 7640},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603007,val = 60}}},--塞伯罗斯6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2453.8},[2] = {id = 102,val = 1149.4},[3] = {id = 103,val = 12040}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 270}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 10340},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603007,val = 80}}},--塞伯罗斯7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3205.7},[2] = {id = 102,val = 1525.35},[3] = {id = 103,val = 16090}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 338}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 13720},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603007,val = 75}}},--塞伯罗斯8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4145.6},[2] = {id = 102,val = 1995.3},[3] = {id = 103,val = 21162}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 440}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 18120},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603010,val = 35}}},--塞伯罗斯9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4756.55},[2] = {id = 102,val = 2300.78},[3] = {id = 103,val = 24460}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 23190},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 50}}},--塞伯罗斯10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5461.7},[2] = {id = 102,val = 2653.85},[3] = {id = 103,val = 28264}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 592}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 29110},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603010,val = 75}}},--塞伯罗斯11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6283.6},[2] = {id = 102,val = 3064.8},[3] = {id = 103,val = 32700}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 677}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 35880},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603010,val = 80}}},--塞伯罗斯12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 7223.95},[2] = {id = 102,val = 3534.98},[3] = {id = 103,val = 37777}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 782}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 43700},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603010,val = 100}}},--塞伯罗斯13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8310.8},[2] = {id = 102,val = 4078.9},[3] = {id = 103,val = 43640}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 905}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 52750},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603010,val = 100}}},--塞伯罗斯14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9567.55},[2] = {id = 102,val = 4707.78},[3] = {id = 103,val = 50424}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 1046}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 63210},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603013,val = 15}}},--塞伯罗斯15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 11021.35},[2] = {id = 102,val = 5434.18},[3] = {id = 103,val = 58273}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 1210}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 75310},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603013,val = 20}}},--塞伯罗斯16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12701.9},[2] = {id = 102,val = 6274.45},[3] = {id = 103,val = 67347}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 1399}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 89300},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603013,val = 30},[4] = {id = 1603014,val = 5}}},--塞伯罗斯17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14645.5},[2] = {id = 102,val = 7245.75},[3] = {id = 103,val = 77843}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1617}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 105470},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603013,val = 40},[4] = {id = 1603014,val = 10}}},--塞伯罗斯18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16892.05},[2] = {id = 102,val = 8369.53},[3] = {id = 103,val = 89969}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1870}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 124170},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603013,val = 50},[4] = {id = 1603014,val = 15}}},--塞伯罗斯19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19490.45},[2] = {id = 102,val = 9668.73},[3] = {id = 103,val = 103999}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 2162}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 145790},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603013,val = 60},[4] = {id = 1603014,val = 20}}},--塞伯罗斯20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22494.65},[2] = {id = 102,val = 11170.33},[3] = {id = 103,val = 120218}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 2500}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 170790},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 75},[4] = {id = 1603014,val = 25}}}--塞伯罗斯21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702013,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702013,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702013,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702013,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702013,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}},PSkill = 130301121}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("塞伯罗斯传记1"),Episode = _T("在曹玄亮惊骇的目光中，赤炼街镇魂将左铳被巨大的三头巨犬咬在了口中。紧接着令人不寒而栗的咀嚼声从塞伯洛斯的口中不断响起，不一会便将口中的尸体吞了下去。但这头三头巨犬却依旧有些意犹未尽，将猩红的目光移向了前方的曹玄亮。")},--塞伯罗斯传记1
			[2] = {EpisodeTitle = _T("塞伯罗斯传记2"),Episode = _T("三头地狱犬塞伯洛斯来自传说中的冥土，拥有极为强大的力量，甚至连曹玄亮的守护灵唐流雨在无法动用必杀技的情况下也不是它的对手。更可怕的是塞伯洛斯对黑尔坎普无比忠心，所以能和他进行特殊融合，发挥出更加强大的力量。")},--塞伯罗斯传记2
			[3] = {EpisodeTitle = _T("塞伯罗斯传记3"),Episode = _T("塞伯洛斯身为冥界中恐怖怪物，它的牙齿咬进人的肉体时并不是单纯的撕咬，而是直接入侵道精神世界，让对手的精神崩溃。所以当左铳伤痕累累的出现在曹玄亮面前时，他的神色才会那般恐惧，因为他的精神世界已经因塞伯洛斯的攻击而崩溃了。")},--塞伯罗斯传记3
			[4] = {EpisodeTitle = _T("塞伯罗斯传记4"),Episode = _T("除了拥有令人恐惧的攻击方式，塞伯洛斯的防御力也极为强悍，它体内的血液不同于其他生物，乃是逆流而行的，所有的血液都是由身体流回心脏，所以当它流血时，洒出的血液会想尽办法回到塞伯洛斯体内，恢复它的伤势。")},--塞伯罗斯传记4
			[5] = {EpisodeTitle = _T("塞伯罗斯传记5"),Episode = _T("塞伯洛斯是真正意义上的恶魔，这种生物嗜血，冷酷，只有对自己的主人忠心耿耿。原本它可以成为更强的存在，甚至不弱于真正的王国组织十骑士，但它的主人黑尔·坎普却过于愚蠢自大，所以无法发挥出它真正的力量。")}--塞伯罗斯传记5
		}
	},--塞伯罗斯
	[1102014] = {
		IfEntreVersion = 1,
		Name = _T("石灵明"),
		NickName = _T("悟道灵猿"),
		NamePic = "ui_dtex_Name_1102014",
		NickNamePic = "ui_dtex_Name2_1102014",
		KPKM = "kp_km_1102014",
		Tag = {101},
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
		mask = 616,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304017,1304019},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2013,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 655},[2] = {id = 102,val = 130},[3] = {id = 103,val = 1975}},UpAttr = {[1] = {id = 101,val = 19.5},[2] = {id = 102,val = 9.75},[3] = {id = 103,val = 87.1}},RosterAttr = {AtkExt = 195,DefExt = 97,HPExt = 871}},--石灵明1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 863},[2] = {id = 102,val = 230.75},[3] = {id = 103,val = 3051.4}},UpAttr = {[1] = {id = 101,val = 17.9},[2] = {id = 102,val = 8.95},[3] = {id = 103,val = 79.3}},RosterAttr = {AtkExt = 374,DefExt = 186,HPExt = 1664},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--石灵明2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 1086.21},[2] = {id = 102,val = 342.36},[3] = {id = 103,val = 4242.2}},UpAttr = {[1] = {id = 101,val = 32.72},[2] = {id = 102,val = 16.36},[3] = {id = 103,val = 146.9}},RosterAttr = {AtkExt = 701,DefExt = 349,HPExt = 3133},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--石灵明3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1495.32},[2] = {id = 102,val = 546.26},[3] = {id = 103,val = 6448.3}},UpAttr = {[1] = {id = 101,val = 39.17},[2] = {id = 102,val = 19.58},[3] = {id = 103,val = 175.5}},RosterAttr = {AtkExt = 1092,DefExt = 544,HPExt = 4888},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--石灵明4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1984.51},[2] = {id = 102,val = 791.51},[3] = {id = 103,val = 9080.8}},UpAttr = {[1] = {id = 101,val = 48.96},[2] = {id = 102,val = 24.48},[3] = {id = 103,val = 219.7}},RosterAttr = {AtkExt = 1581,DefExt = 788,HPExt = 7085},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 60}}},--石灵明5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2596.29},[2] = {id = 102,val = 1097.4},[3] = {id = 103,val = 12377.6}},UpAttr = {[1] = {id = 101,val = 63.51},[2] = {id = 102,val = 31.75},[3] = {id = 103,val = 284.7}},RosterAttr = {AtkExt = 2216,DefExt = 1105,HPExt = 9932},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603007,val = 60}}},--石灵明6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 3389.94},[2] = {id = 102,val = 1494.22},[3] = {id = 103,val = 16652}},UpAttr = {[1] = {id = 101,val = 78.25},[2] = {id = 102,val = 39.12},[3] = {id = 103,val = 351}},RosterAttr = {AtkExt = 2998,DefExt = 1496,HPExt = 13442},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603007,val = 80}}},--石灵明7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 4367.41},[2] = {id = 102,val = 1982.96},[3] = {id = 103,val = 21917}},UpAttr = {[1] = {id = 101,val = 97.75},[2] = {id = 102,val = 48.87},[3] = {id = 103,val = 439.4}},RosterAttr = {AtkExt = 3975,DefExt = 1984,HPExt = 17836},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603007,val = 75}}},--石灵明8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 5589.28},[2] = {id = 102,val = 2593.89},[3] = {id = 103,val = 28510.6}},UpAttr = {[1] = {id = 101,val = 127.13},[2] = {id = 102,val = 63.56},[3] = {id = 103,val = 572}},RosterAttr = {AtkExt = 5246,DefExt = 2619,HPExt = 23556},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603010,val = 35}}},--石灵明9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 6383.52},[2] = {id = 102,val = 2991.01},[3] = {id = 103,val = 32798}},UpAttr = {[1] = {id = 101,val = 146.68},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 659.1}},RosterAttr = {AtkExt = 6712,DefExt = 3352,HPExt = 30147},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 50}}},--石灵明10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 7300.21},[2] = {id = 102,val = 3450.01},[3] = {id = 103,val = 37743.2}},UpAttr = {[1] = {id = 101,val = 171.05},[2] = {id = 102,val = 85.53},[3] = {id = 103,val = 769.6}},RosterAttr = {AtkExt = 8422,DefExt = 4207,HPExt = 37843},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603010,val = 75}}},--石灵明11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 8368.68},[2] = {id = 102,val = 3984.24},[3] = {id = 103,val = 43510}},UpAttr = {[1] = {id = 101,val = 195.61},[2] = {id = 102,val = 97.81},[3] = {id = 103,val = 880.1}},RosterAttr = {AtkExt = 10378,DefExt = 5185,HPExt = 46644},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603010,val = 80}}},--石灵明12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 9591.14},[2] = {id = 102,val = 4595.47},[3] = {id = 103,val = 50110.1}},UpAttr = {[1] = {id = 101,val = 226.16},[2] = {id = 102,val = 113.08},[3] = {id = 103,val = 1016.6}},RosterAttr = {AtkExt = 12639,DefExt = 6315,HPExt = 56810},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603010,val = 100}}},--石灵明13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 11004.04},[2] = {id = 102,val = 5302.57},[3] = {id = 103,val = 57732}},UpAttr = {[1] = {id = 101,val = 261.5},[2] = {id = 102,val = 130.75},[3] = {id = 103,val = 1176.5}},RosterAttr = {AtkExt = 15254,DefExt = 7622,HPExt = 68575},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603010,val = 100}}},--石灵明14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 12637.82},[2] = {id = 102,val = 6120.11},[3] = {id = 103,val = 66551.2}},UpAttr = {[1] = {id = 101,val = 302.33},[2] = {id = 102,val = 151.16},[3] = {id = 103,val = 1359.8}},RosterAttr = {AtkExt = 18277,DefExt = 9133,HPExt = 82173},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603013,val = 15}}},--石灵明15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 14527.76},[2] = {id = 102,val = 7064.43},[3] = {id = 103,val = 76754.9}},UpAttr = {[1] = {id = 101,val = 349.58},[2] = {id = 102,val = 174.79},[3] = {id = 103,val = 1573}},RosterAttr = {AtkExt = 21772,DefExt = 10880,HPExt = 97903},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603013,val = 20}}},--石灵明16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 16712.47},[2] = {id = 102,val = 8156.79},[3] = {id = 103,val = 88551.1}},UpAttr = {[1] = {id = 101,val = 404.2},[2] = {id = 102,val = 202.1},[3] = {id = 103,val = 1818.7}},RosterAttr = {AtkExt = 25814,DefExt = 12901,HPExt = 116090},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603013,val = 30},[4] = {id = 1603014,val = 5}}},--石灵明17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 19239.15},[2] = {id = 102,val = 9419.48},[3] = {id = 103,val = 102195.9}},UpAttr = {[1] = {id = 101,val = 467.36},[2] = {id = 102,val = 233.68},[3] = {id = 103,val = 2102.1}},RosterAttr = {AtkExt = 30487,DefExt = 15237,HPExt = 137111},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603013,val = 40},[4] = {id = 1603014,val = 10}}},--石灵明18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 22159.67},[2] = {id = 102,val = 10880.38},[3] = {id = 103,val = 117959.7}},UpAttr = {[1] = {id = 101,val = 540.38},[2] = {id = 102,val = 270.19},[3] = {id = 103,val = 2431}},RosterAttr = {AtkExt = 35890,DefExt = 17938,HPExt = 161421},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603013,val = 50},[4] = {id = 1603014,val = 15}}},--石灵明19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 25537.59},[2] = {id = 102,val = 12569.34},[3] = {id = 103,val = 136198.7}},UpAttr = {[1] = {id = 101,val = 624.83},[2] = {id = 102,val = 312.42},[3] = {id = 103,val = 2810.6}},RosterAttr = {AtkExt = 42138,DefExt = 21062,HPExt = 189527},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603013,val = 60},[4] = {id = 1603014,val = 20}}},--石灵明20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 29443.05},[2] = {id = 102,val = 14521.42},[3] = {id = 103,val = 157283.4}},UpAttr = {[1] = {id = 101,val = 722.46},[2] = {id = 102,val = 361.23},[3] = {id = 103,val = 3250}},RosterAttr = {AtkExt = 49362,DefExt = 24674,HPExt = 222027},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 75},[4] = {id = 1603014,val = 25}}}--石灵明21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702014,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702014,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702014,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702014,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702014,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("石灵明传记1"),Episode = _T("石灵明是一只失去记忆的灵猴，他在成为北落师门的守护灵后，和他一起来到了菩提世界，唯有在看到玉菩提时能赶到无比的亲切感。他总喜欢坐在菩提树前，或许终有一天，他能想起些什么来......")},--石灵明传记1
			[2] = {EpisodeTitle = _T("石灵明传记2"),Episode = _T("北落师门能成为灵甲军前任头领，石灵明功不可没。正因为石灵明与北落师门配合可以发挥出极强的战力，才能震慑羽林街周围的恶灵，令灵甲军发展壮大。即便离开了羽林街，石灵明的力量也足以守护菩提世界。")},--石灵明传记2
			[3] = {EpisodeTitle = _T("石灵明传记3"),Episode = _T("菩提街与曹焱兵的守护灵许褚一战，是石灵明所遭遇过为数不多的恶战之一。曾经石灵明喜欢以力量碾压对手，可面对许褚，石灵明在力量上却被对方压制，最后只能靠出其不意才占得一丝上风。")},--石灵明传记3
			[4] = {EpisodeTitle = _T("石灵明传记4"),Episode = _T("即便石灵明拥有强大的力量，但却必须遵守寄灵人的意愿，所以在羽林街之变中，尽管他有信心和北落师门一起将周围的所有敌人击败，却因北落师门失去战斗的意志，只能极为不甘的束手就擒。")},--石灵明传记4
			[5] = {EpisodeTitle = _T("石灵明传记5"),Episode = _T("若说石灵明与许褚之间的战斗是恶战，那和卢书宇的守护灵卢俊义之间的战斗则更要险恶数倍。石灵明曾一度陷入苦战，甚至一直处于下风。但最终凭借与北落师门之间的默契，石灵明一击重创卢书雨，险胜一招。")}--石灵明传记5
		}
	},--石灵明
	[1102015] = {
		IfEntreVersion = 1,
		Name = _T("于禁"),
		NickName = _T("魏武之刚"),
		NamePic = "ui_dtex_Name_1102015",
		NickNamePic = "ui_dtex_Name2_1102015",
		KPKM = "kp_km_1102015",
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
		GachaDialogue = "gacha_yj_1102015",
		PaintingPos = {x = 208.7,y = -5.5},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 610,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2014,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 350},[2] = {id = 102,val = 100},[3] = {id = 103,val = 750}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 67}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 670}},--于禁1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 510},[2] = {id = 102,val = 177.5},[3] = {id = 103,val = 1578}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 61}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 1280},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--于禁2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 681.7},[2] = {id = 102,val = 263.35},[3] = {id = 103,val = 2494}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 113}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 2410},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--于禁3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 996.4},[2] = {id = 102,val = 420.2},[3] = {id = 103,val = 4191}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 135}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 3760},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--于禁4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1372.7},[2] = {id = 102,val = 608.85},[3] = {id = 103,val = 6216}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 169}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 5450},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 60}}},--于禁5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1843.3},[2] = {id = 102,val = 844.15},[3] = {id = 103,val = 8752}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 219}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 7640},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603006,val = 60}}},--于禁6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2453.8},[2] = {id = 102,val = 1149.4},[3] = {id = 103,val = 12040}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 270}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 10340},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603006,val = 80}}},--于禁7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3205.7},[2] = {id = 102,val = 1525.35},[3] = {id = 103,val = 16090}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 338}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 13720},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603006,val = 75}}},--于禁8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4145.6},[2] = {id = 102,val = 1995.3},[3] = {id = 103,val = 21162}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 440}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 18120},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603009,val = 35}}},--于禁9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4756.55},[2] = {id = 102,val = 2300.78},[3] = {id = 103,val = 24460}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 23190},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 50}}},--于禁10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5461.7},[2] = {id = 102,val = 2653.85},[3] = {id = 103,val = 28264}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 592}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 29110},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603009,val = 75}}},--于禁11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6283.6},[2] = {id = 102,val = 3064.8},[3] = {id = 103,val = 32700}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 677}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 35880},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603009,val = 80}}},--于禁12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 7223.95},[2] = {id = 102,val = 3534.98},[3] = {id = 103,val = 37777}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 782}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 43700},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603009,val = 100}}},--于禁13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8310.8},[2] = {id = 102,val = 4078.9},[3] = {id = 103,val = 43640}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 905}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 52750},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603009,val = 100}}},--于禁14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9567.55},[2] = {id = 102,val = 4707.78},[3] = {id = 103,val = 50424}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 1046}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 63210},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603012,val = 15}}},--于禁15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 11021.35},[2] = {id = 102,val = 5434.18},[3] = {id = 103,val = 58273}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 1210}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 75310},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603012,val = 20}}},--于禁16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12701.9},[2] = {id = 102,val = 6274.45},[3] = {id = 103,val = 67347}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 1399}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 89300},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603012,val = 30},[4] = {id = 1603014,val = 5}}},--于禁17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14645.5},[2] = {id = 102,val = 7245.75},[3] = {id = 103,val = 77843}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1617}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 105470},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603012,val = 40},[4] = {id = 1603014,val = 10}}},--于禁18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16892.05},[2] = {id = 102,val = 8369.53},[3] = {id = 103,val = 89969}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1870}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 124170},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603012,val = 50},[4] = {id = 1603014,val = 15}}},--于禁19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19490.45},[2] = {id = 102,val = 9668.73},[3] = {id = 103,val = 103999}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 2162}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 145790},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603012,val = 60},[4] = {id = 1603014,val = 20}}},--于禁20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22494.65},[2] = {id = 102,val = 11170.33},[3] = {id = 103,val = 120218}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 2500}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 170790},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 75},[4] = {id = 1603014,val = 25}}}--于禁21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702015,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702015,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702015,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702015,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702015,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("于禁传记1"),Episode = _T("曹操生前所赞的“五子良将”之一。今世则成为了幼年曹焱兵的第一个守护灵，对其忠心耿耿。陪伴年幼的曹焱兵一同成长，亦师亦父。正是有了他的保护，曹焱兵和曹玄亮两兄弟才能在恶灵遍地的罗刹街生存。")},--于禁传记1
			[2] = {EpisodeTitle = _T("于禁传记2"),Episode = _T("于禁受曹焱兵的父亲曹炎冥所托，成为了幼年曹焱兵的守护灵。曹炎冥还将一个被布带缠满的神秘盒子交给于禁保管。据说乃是曹家流传下来的器物，其中藏有来自地狱深处的邪灵。若是实力不足时打开，很可能被其中的邪灵吞噬。")},--于禁传记2
			[3] = {EpisodeTitle = _T("于禁传记3"),Episode = _T("曹焱兵毕竟年幼，无法发挥出于禁真正的实力。所以在面对强大的八神斋时，于禁双拳难敌四手，被众多恶灵围攻几近幻灭。但即便生命走到了尽头，于禁始终不曾忘记自己的使命，他毅然解下了身后的木盒。")},--于禁传记3
			[4] = {EpisodeTitle = _T("于禁传记4"),Episode = _T("“属下无能，未能保护好主公......但是，只要主公能活下去，牺牲我又算得了什么！”于禁不惜以自己作为献祭，缓缓打开了手中的木盒：“就让你们无耻之徒亲眼看看......地狱的风景！”")},--于禁传记4
			[5] = {EpisodeTitle = _T("于禁传记5"),Episode = _T("八神斋与其手下的恶灵被木盒中的邪灵撕碎。于禁终于大笑出声：“原来封存在木盒中的邪灵，竟然是七位将军！！”于禁的身体开始幻灭，他终于放下了心底的担忧：“恳请将军们......保护着大魏的火苗......我于禁......没有遗憾了......”")}--于禁传记5
		}
	},--于禁
	[1102016] = {
		IfEntreVersion = 1,
		Name = _T("提亚马特"),
		NickName = _T("天神圣灵"),
		NamePic = "ui_dtex_Name_1102016",
		NickNamePic = "ui_dtex_Name2_1102016",
		KPKM = "kp_km_1102016",
		Tag = {101},
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
		mask = 612,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304030,1304036},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304030,1304036},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2015,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 975},[2] = {id = 102,val = 150},[3] = {id = 103,val = 3625}},UpAttr = {[1] = {id = 101,val = 22.5},[2] = {id = 102,val = 11.25},[3] = {id = 103,val = 100.5}},RosterAttr = {AtkExt = 225,DefExt = 112,HPExt = 1005}},--西方龙1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 1215},[2] = {id = 102,val = 266.25},[3] = {id = 103,val = 4867}},UpAttr = {[1] = {id = 101,val = 20.66},[2] = {id = 102,val = 10.33},[3] = {id = 103,val = 91.5}},RosterAttr = {AtkExt = 431,DefExt = 215,HPExt = 1920},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--西方龙2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 1472.55},[2] = {id = 102,val = 395.03},[3] = {id = 103,val = 6241}},UpAttr = {[1] = {id = 101,val = 37.76},[2] = {id = 102,val = 18.88},[3] = {id = 103,val = 169.5}},RosterAttr = {AtkExt = 808,DefExt = 403,HPExt = 3615},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--西方龙3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1944.6},[2] = {id = 102,val = 630.3},[3] = {id = 103,val = 8786.5}},UpAttr = {[1] = {id = 101,val = 45.2},[2] = {id = 102,val = 22.6},[3] = {id = 103,val = 202.5}},RosterAttr = {AtkExt = 1260,DefExt = 629,HPExt = 5640},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--西方龙4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 2509.05},[2] = {id = 102,val = 913.28},[3] = {id = 103,val = 11824}},UpAttr = {[1] = {id = 101,val = 56.49},[2] = {id = 102,val = 28.25},[3] = {id = 103,val = 253.5}},RosterAttr = {AtkExt = 1824,DefExt = 911,HPExt = 8175},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 60}}},--西方龙5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 3214.95},[2] = {id = 102,val = 1266.23},[3] = {id = 103,val = 15628}},UpAttr = {[1] = {id = 101,val = 73.28},[2] = {id = 102,val = 36.64},[3] = {id = 103,val = 328.5}},RosterAttr = {AtkExt = 2556,DefExt = 1277,HPExt = 11460},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603006,val = 60}}},--西方龙6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 4130.7},[2] = {id = 102,val = 1724.1},[3] = {id = 103,val = 20560}},UpAttr = {[1] = {id = 101,val = 90.29},[2] = {id = 102,val = 45.14},[3] = {id = 103,val = 405}},RosterAttr = {AtkExt = 3458,DefExt = 1728,HPExt = 15510},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603006,val = 80}}},--西方龙7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 5258.55},[2] = {id = 102,val = 2288.03},[3] = {id = 103,val = 26635}},UpAttr = {[1] = {id = 101,val = 112.79},[2] = {id = 102,val = 56.39},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 4585,DefExt = 2291,HPExt = 20580},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603006,val = 75}}},--西方龙8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 6668.4},[2] = {id = 102,val = 2992.95},[3] = {id = 103,val = 34243}},UpAttr = {[1] = {id = 101,val = 146.69},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 660}},RosterAttr = {AtkExt = 6051,DefExt = 3024,HPExt = 27180},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603009,val = 35}}},--西方龙9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 7584.83},[2] = {id = 102,val = 3451.16},[3] = {id = 103,val = 39190}},UpAttr = {[1] = {id = 101,val = 169.25},[2] = {id = 102,val = 84.62},[3] = {id = 103,val = 760.5}},RosterAttr = {AtkExt = 7743,DefExt = 3870,HPExt = 34785},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 50}}},--西方龙10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 8642.55},[2] = {id = 102,val = 3980.78},[3] = {id = 103,val = 44896}},UpAttr = {[1] = {id = 101,val = 197.37},[2] = {id = 102,val = 98.69},[3] = {id = 103,val = 888}},RosterAttr = {AtkExt = 9716,DefExt = 4856,HPExt = 43665},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603009,val = 75}}},--西方龙11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 9875.4},[2] = {id = 102,val = 4597.2},[3] = {id = 103,val = 51550}},UpAttr = {[1] = {id = 101,val = 225.71},[2] = {id = 102,val = 112.85},[3] = {id = 103,val = 1015.5}},RosterAttr = {AtkExt = 11973,DefExt = 5984,HPExt = 53820},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603009,val = 80}}},--西方龙12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 11285.93},[2] = {id = 102,val = 5302.46},[3] = {id = 103,val = 59165.5}},UpAttr = {[1] = {id = 101,val = 260.96},[2] = {id = 102,val = 130.48},[3] = {id = 103,val = 1173}},RosterAttr = {AtkExt = 14582,DefExt = 7288,HPExt = 65550},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603009,val = 100}}},--西方龙13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 12916.2},[2] = {id = 102,val = 6118.35},[3] = {id = 103,val = 67960}},UpAttr = {[1] = {id = 101,val = 301.73},[2] = {id = 102,val = 150.86},[3] = {id = 103,val = 1357.5}},RosterAttr = {AtkExt = 17599,DefExt = 8796,HPExt = 79125},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603009,val = 100}}},--西方龙14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 14801.33},[2] = {id = 102,val = 7061.66},[3] = {id = 103,val = 78136}},UpAttr = {[1] = {id = 101,val = 348.84},[2] = {id = 102,val = 174.42},[3] = {id = 103,val = 1569}},RosterAttr = {AtkExt = 21087,DefExt = 10540,HPExt = 94815},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603012,val = 15}}},--西方龙15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 16982.03},[2] = {id = 102,val = 8151.26},[3] = {id = 103,val = 89909.5}},UpAttr = {[1] = {id = 101,val = 403.37},[2] = {id = 102,val = 201.68},[3] = {id = 103,val = 1815}},RosterAttr = {AtkExt = 25120,DefExt = 12556,HPExt = 112965},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603012,val = 20}}},--西方龙16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 19502.85},[2] = {id = 102,val = 9411.68},[3] = {id = 103,val = 103520.5}},UpAttr = {[1] = {id = 101,val = 466.38},[2] = {id = 102,val = 233.19},[3] = {id = 103,val = 2098.5}},RosterAttr = {AtkExt = 29783,DefExt = 14887,HPExt = 133950},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603012,val = 30},[4] = {id = 1603014,val = 5}}},--西方龙17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 22418.25},[2] = {id = 102,val = 10868.63},[3] = {id = 103,val = 119264.5}},UpAttr = {[1] = {id = 101,val = 539.27},[2] = {id = 102,val = 269.63},[3] = {id = 103,val = 2425.5}},RosterAttr = {AtkExt = 35175,DefExt = 17583,HPExt = 158205},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603012,val = 40},[4] = {id = 1603014,val = 10}}},--西方龙18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 25788.08},[2] = {id = 102,val = 12554.29},[3] = {id = 103,val = 137453.5}},UpAttr = {[1] = {id = 101,val = 623.52},[2] = {id = 102,val = 311.76},[3] = {id = 103,val = 2805}},RosterAttr = {AtkExt = 41410,DefExt = 20700,HPExt = 186255},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603012,val = 50},[4] = {id = 1603014,val = 15}}},--西方龙19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 29685.68},[2] = {id = 102,val = 14503.09},[3] = {id = 103,val = 158498.5}},UpAttr = {[1] = {id = 101,val = 720.96},[2] = {id = 102,val = 360.48},[3] = {id = 103,val = 3243}},RosterAttr = {AtkExt = 48619,DefExt = 24304,HPExt = 218685},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603012,val = 60},[4] = {id = 1603014,val = 20}}},--西方龙20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 34191.98},[2] = {id = 102,val = 16755.49},[3] = {id = 103,val = 182827}},UpAttr = {[1] = {id = 101,val = 833.61},[2] = {id = 102,val = 416.81},[3] = {id = 103,val = 3750}},RosterAttr = {AtkExt = 56955,DefExt = 28472,HPExt = 256185},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 75},[4] = {id = 1603014,val = 25}}}--西方龙21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702016,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702016,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702016,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702016,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702016,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("西方龙传记1"),Episode = _T("西方龙是西方神话中可以与神比肩的生物，拥有强壮的身躯，又长又粗的颈，有角或褶边的头，尖锐的牙齿，和一条长长的尾。它的吼声如雷，甚至能控制风火雷电等自然元素，实力极为恐怖。")},--西方龙传记1
			[2] = {EpisodeTitle = _T("西方龙传记2"),Episode = _T("在人族统治这片大地之前，这片大地的主人据说便是强大的西方龙族。但傲慢自大的西方龙最终触怒了天神，降下神罚毁灭了这个种族，但却有少数实力极为强大的西方龙作为守护灵幸存下来。")},--西方龙传记2
			[3] = {EpisodeTitle = _T("西方龙传记3"),Episode = _T("化为守护灵存在的西方龙，其实力甚至不弱于传说中的神武灵，即便没有寄灵人它也可以独立存在。千年来从未有人能得到西方龙的认可，成为它的寄灵人，直到那个人的出现……\r\n")},--西方龙传记3
			[4] = {EpisodeTitle = _T("西方龙传记4"),Episode = _T("王国组织第四骑士，龙王盖文，一个实力深不可测的男人。之所以排在第四，只不过是因为他对所谓的排名毫不在意罢了。即便是第一骑士死神赛伊也对盖文极为忌惮，因为他的守护灵，是传说中比肩众神的西方龙。")},--西方龙传记4
			[5] = {EpisodeTitle = _T("西方龙传记5"),Episode = _T("雅典海域的一个小镇，有渔民曾见到过一个巨大的身影——传说中的西方龙。强大的西方龙毁灭了敢于靠近它领地的任何事物。但某一天开始，西方龙却突然销声匿迹，却没人注意到小镇中多了个名叫盖文的小伙子")}--西方龙传记5
		}
	},--西方龙
	[1102017] = {
		IfEntreVersion = 1,
		Name = _T("飞廉"),
		NickName = _T("风魔兽"),
		NamePic = "ui_dtex_Name_1102017",
		NickNamePic = "ui_dtex_Name2_1102017",
		KPKM = "kp_km_1102017",
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
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304030,1304031},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304030,1304031},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2016,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 655},[2] = {id = 102,val = 130},[3] = {id = 103,val = 1975}},UpAttr = {[1] = {id = 101,val = 19.5},[2] = {id = 102,val = 9.75},[3] = {id = 103,val = 87.1}},RosterAttr = {AtkExt = 195,DefExt = 97,HPExt = 871}},--飞廉1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 863},[2] = {id = 102,val = 230.75},[3] = {id = 103,val = 3051.4}},UpAttr = {[1] = {id = 101,val = 17.9},[2] = {id = 102,val = 8.95},[3] = {id = 103,val = 79.3}},RosterAttr = {AtkExt = 374,DefExt = 186,HPExt = 1664},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--飞廉2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 1086.21},[2] = {id = 102,val = 342.36},[3] = {id = 103,val = 4242.2}},UpAttr = {[1] = {id = 101,val = 32.72},[2] = {id = 102,val = 16.36},[3] = {id = 103,val = 146.9}},RosterAttr = {AtkExt = 701,DefExt = 349,HPExt = 3133},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--飞廉3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1495.32},[2] = {id = 102,val = 546.26},[3] = {id = 103,val = 6448.3}},UpAttr = {[1] = {id = 101,val = 39.17},[2] = {id = 102,val = 19.58},[3] = {id = 103,val = 175.5}},RosterAttr = {AtkExt = 1092,DefExt = 544,HPExt = 4888},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--飞廉4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1984.51},[2] = {id = 102,val = 791.51},[3] = {id = 103,val = 9080.8}},UpAttr = {[1] = {id = 101,val = 48.96},[2] = {id = 102,val = 24.48},[3] = {id = 103,val = 219.7}},RosterAttr = {AtkExt = 1581,DefExt = 788,HPExt = 7085},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 60}}},--飞廉5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2596.29},[2] = {id = 102,val = 1097.4},[3] = {id = 103,val = 12377.6}},UpAttr = {[1] = {id = 101,val = 63.51},[2] = {id = 102,val = 31.75},[3] = {id = 103,val = 284.7}},RosterAttr = {AtkExt = 2216,DefExt = 1105,HPExt = 9932},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603006,val = 60}}},--飞廉6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 3389.94},[2] = {id = 102,val = 1494.22},[3] = {id = 103,val = 16652}},UpAttr = {[1] = {id = 101,val = 78.25},[2] = {id = 102,val = 39.12},[3] = {id = 103,val = 351}},RosterAttr = {AtkExt = 2998,DefExt = 1496,HPExt = 13442},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603006,val = 80}}},--飞廉7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 4367.41},[2] = {id = 102,val = 1982.96},[3] = {id = 103,val = 21917}},UpAttr = {[1] = {id = 101,val = 97.75},[2] = {id = 102,val = 48.87},[3] = {id = 103,val = 439.4}},RosterAttr = {AtkExt = 3975,DefExt = 1984,HPExt = 17836},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603006,val = 75}}},--飞廉8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 5589.28},[2] = {id = 102,val = 2593.89},[3] = {id = 103,val = 28510.6}},UpAttr = {[1] = {id = 101,val = 127.13},[2] = {id = 102,val = 63.56},[3] = {id = 103,val = 572}},RosterAttr = {AtkExt = 5246,DefExt = 2619,HPExt = 23556},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603009,val = 35}}},--飞廉9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 6383.52},[2] = {id = 102,val = 2991.01},[3] = {id = 103,val = 32798}},UpAttr = {[1] = {id = 101,val = 146.68},[2] = {id = 102,val = 73.34},[3] = {id = 103,val = 659.1}},RosterAttr = {AtkExt = 6712,DefExt = 3352,HPExt = 30147},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 50}}},--飞廉10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 7300.21},[2] = {id = 102,val = 3450.01},[3] = {id = 103,val = 37743.2}},UpAttr = {[1] = {id = 101,val = 171.05},[2] = {id = 102,val = 85.53},[3] = {id = 103,val = 769.6}},RosterAttr = {AtkExt = 8422,DefExt = 4207,HPExt = 37843},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603009,val = 75}}},--飞廉11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 8368.68},[2] = {id = 102,val = 3984.24},[3] = {id = 103,val = 43510}},UpAttr = {[1] = {id = 101,val = 195.61},[2] = {id = 102,val = 97.81},[3] = {id = 103,val = 880.1}},RosterAttr = {AtkExt = 10378,DefExt = 5185,HPExt = 46644},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603009,val = 80}}},--飞廉12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 9591.14},[2] = {id = 102,val = 4595.47},[3] = {id = 103,val = 50110.1}},UpAttr = {[1] = {id = 101,val = 226.16},[2] = {id = 102,val = 113.08},[3] = {id = 103,val = 1016.6}},RosterAttr = {AtkExt = 12639,DefExt = 6315,HPExt = 56810},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603009,val = 100}}},--飞廉13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 11004.04},[2] = {id = 102,val = 5302.57},[3] = {id = 103,val = 57732}},UpAttr = {[1] = {id = 101,val = 261.5},[2] = {id = 102,val = 130.75},[3] = {id = 103,val = 1176.5}},RosterAttr = {AtkExt = 15254,DefExt = 7622,HPExt = 68575},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603009,val = 100}}},--飞廉14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 12637.82},[2] = {id = 102,val = 6120.11},[3] = {id = 103,val = 66551.2}},UpAttr = {[1] = {id = 101,val = 302.33},[2] = {id = 102,val = 151.16},[3] = {id = 103,val = 1359.8}},RosterAttr = {AtkExt = 18277,DefExt = 9133,HPExt = 82173},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603012,val = 15}}},--飞廉15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 14527.76},[2] = {id = 102,val = 7064.43},[3] = {id = 103,val = 76754.9}},UpAttr = {[1] = {id = 101,val = 349.58},[2] = {id = 102,val = 174.79},[3] = {id = 103,val = 1573}},RosterAttr = {AtkExt = 21772,DefExt = 10880,HPExt = 97903},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603012,val = 20}}},--飞廉16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 16712.47},[2] = {id = 102,val = 8156.79},[3] = {id = 103,val = 88551.1}},UpAttr = {[1] = {id = 101,val = 404.2},[2] = {id = 102,val = 202.1},[3] = {id = 103,val = 1818.7}},RosterAttr = {AtkExt = 25814,DefExt = 12901,HPExt = 116090},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603012,val = 30},[4] = {id = 1603014,val = 5}}},--飞廉17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 19239.15},[2] = {id = 102,val = 9419.48},[3] = {id = 103,val = 102195.9}},UpAttr = {[1] = {id = 101,val = 467.36},[2] = {id = 102,val = 233.68},[3] = {id = 103,val = 2102.1}},RosterAttr = {AtkExt = 30487,DefExt = 15237,HPExt = 137111},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603012,val = 40},[4] = {id = 1603014,val = 10}}},--飞廉18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 22159.67},[2] = {id = 102,val = 10880.38},[3] = {id = 103,val = 117959.7}},UpAttr = {[1] = {id = 101,val = 540.38},[2] = {id = 102,val = 270.19},[3] = {id = 103,val = 2431}},RosterAttr = {AtkExt = 35890,DefExt = 17938,HPExt = 161421},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603012,val = 50},[4] = {id = 1603014,val = 15}}},--飞廉19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 25537.59},[2] = {id = 102,val = 12569.34},[3] = {id = 103,val = 136198.7}},UpAttr = {[1] = {id = 101,val = 624.83},[2] = {id = 102,val = 312.42},[3] = {id = 103,val = 2810.6}},RosterAttr = {AtkExt = 42138,DefExt = 21062,HPExt = 189527},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603012,val = 60},[4] = {id = 1603014,val = 20}}},--飞廉20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 29443.05},[2] = {id = 102,val = 14521.42},[3] = {id = 103,val = 157283.4}},UpAttr = {[1] = {id = 101,val = 722.46},[2] = {id = 102,val = 361.23},[3] = {id = 103,val = 3250}},RosterAttr = {AtkExt = 49362,DefExt = 24674,HPExt = 222027},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 75},[4] = {id = 1603014,val = 25}}}--飞廉21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1702017,val = 80}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 12000},[2] = {id = 1702017,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 19500},[2] = {id = 1702017,val = 160}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 39000},[2] = {id = 1702017,val = 240}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 51000},[2] = {id = 1702017,val = 320}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("飞廉传记1"),Episode = _T("飞廉乃是上古魔兽，能够号令天地间的风，所以也有风魔兽的称号。但也正因为飞廉拥有过于强大的力量，所以作为被他附体的寄灵人阎  风吒，一开始未能控制好飞廉的强大力量，导致自己暴走毁掉了半条凌风街。")},--飞廉传记1
			[2] = {EpisodeTitle = _T("飞廉传记2"),Episode = _T("“风魔兽！！那是风魔兽！”看到重新脱困的阎风吒和他背后魔神般的身影，负责看守他的弟子都露出惊恐的表情。阎风吒嘴角勾笑，伸出大拇指指了指身后：“他叫......飞廉！”随后飞廉用风刃斩开一条道路，无人能挡。")},--飞廉传记2
			[3] = {EpisodeTitle = _T("飞廉传记3"),Episode = _T("空神之森之行，曹焱兵和阎风吒之间有过一场不为人知的较量。虽然没人亲眼见识过那场战斗，但事后曹焱兵用浑身缠绕的绷带说明了一切。风魔兽飞廉的可怕之处，无论是武神躯的曹焱兵，还是桀骜不驯的北落师门都不敢小觑。")},--飞廉传记3
			[4] = {EpisodeTitle = _T("飞廉传记4"),Episode = _T("面对芦花古楼前的最后一道屏障——食火蜥·吉拉，曹焱兵的火焰之力被其完全克制。只有飞廉的风刃能对吉拉造成伤害，最后正是阎风吒和飞廉用伏羲星罗无双阵发动关键一击，才得以将吉拉击败。")},--飞廉传记4
			[5] = {EpisodeTitle = _T("飞廉传记5"),Episode = _T("为了亲手替姐姐复仇，阎风吒和飞廉用出了他尚未完全掌握的力量——特殊融合形态。寄灵人和守护灵的战斗方式很多，特殊融合是其中最强大的战斗方式。也正因如此，飞廉的力量得以进一步发挥，甚至压制了月王。")}--飞廉传记5
		}
	},--飞廉
	[1102018] = {
		IfEntreVersion = 1,
		Name = _T("噬日"),
		NickName = _T("饕餮"),
		NamePic = "ui_dtex_Name_1102018",
		NickNamePic = "ui_dtex_Name2_1102018",
		KPKM = "kp_km_1102018",
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
		GachaDialogue = "gacha_sr_1102018",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 612,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2017,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 350},[2] = {id = 102,val = 100},[3] = {id = 103,val = 750}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 67}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 670}},--噬日1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 510},[2] = {id = 102,val = 177.5},[3] = {id = 103,val = 1578}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 61}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 1280},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--噬日2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 681.7},[2] = {id = 102,val = 263.35},[3] = {id = 103,val = 2494}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 113}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 2410},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--噬日3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 996.4},[2] = {id = 102,val = 420.2},[3] = {id = 103,val = 4191}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 135}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 3760},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--噬日4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1372.7},[2] = {id = 102,val = 608.85},[3] = {id = 103,val = 6216}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 169}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 5450},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 60}}},--噬日5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1843.3},[2] = {id = 102,val = 844.15},[3] = {id = 103,val = 8752}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 219}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 7640},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603006,val = 60}}},--噬日6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2453.8},[2] = {id = 102,val = 1149.4},[3] = {id = 103,val = 12040}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 270}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 10340},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603006,val = 80}}},--噬日7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3205.7},[2] = {id = 102,val = 1525.35},[3] = {id = 103,val = 16090}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 338}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 13720},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603006,val = 75}}},--噬日8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4145.6},[2] = {id = 102,val = 1995.3},[3] = {id = 103,val = 21162}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 440}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 18120},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603009,val = 35}}},--噬日9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4756.55},[2] = {id = 102,val = 2300.78},[3] = {id = 103,val = 24460}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 23190},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 50}}},--噬日10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5461.7},[2] = {id = 102,val = 2653.85},[3] = {id = 103,val = 28264}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 592}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 29110},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603009,val = 75}}},--噬日11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6283.6},[2] = {id = 102,val = 3064.8},[3] = {id = 103,val = 32700}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 677}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 35880},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603009,val = 80}}},--噬日12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 7223.95},[2] = {id = 102,val = 3534.98},[3] = {id = 103,val = 37777}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 782}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 43700},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603009,val = 100}}},--噬日13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8310.8},[2] = {id = 102,val = 4078.9},[3] = {id = 103,val = 43640}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 905}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 52750},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603009,val = 100}}},--噬日14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9567.55},[2] = {id = 102,val = 4707.78},[3] = {id = 103,val = 50424}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 1046}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 63210},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603012,val = 15}}},--噬日15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 11021.35},[2] = {id = 102,val = 5434.18},[3] = {id = 103,val = 58273}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 1210}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 75310},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603012,val = 20}}},--噬日16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12701.9},[2] = {id = 102,val = 6274.45},[3] = {id = 103,val = 67347}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 1399}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 89300},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603012,val = 30},[4] = {id = 1603014,val = 5}}},--噬日17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14645.5},[2] = {id = 102,val = 7245.75},[3] = {id = 103,val = 77843}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1617}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 105470},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603012,val = 40},[4] = {id = 1603014,val = 10}}},--噬日18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16892.05},[2] = {id = 102,val = 8369.53},[3] = {id = 103,val = 89969}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1870}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 124170},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603012,val = 50},[4] = {id = 1603014,val = 15}}},--噬日19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19490.45},[2] = {id = 102,val = 9668.73},[3] = {id = 103,val = 103999}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 2162}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 145790},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603012,val = 60},[4] = {id = 1603014,val = 20}}},--噬日20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22494.65},[2] = {id = 102,val = 11170.33},[3] = {id = 103,val = 120218}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 2500}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 170790},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 75},[4] = {id = 1603014,val = 25}}}--噬日21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702018,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702018,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702018,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702018,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702018,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("噬日传记1"),Episode = _T("灵界高层一直在秘密进行守护灵改造实验，妄图人为制造出更强大的守护灵。噬日正是这个计划中的产物，但却是个极难掌控的失败品，唯有依靠玄黄丹才能压制召唤它的副作用。")},--噬日传记1
			[2] = {EpisodeTitle = _T("噬日传记2"),Episode = _T("南御夫临死之际，丧心病狂的召唤了噬日，想要拉着所有人陪葬。巨大的噬日出现后吞噬着周围的一切，羽林街的灵甲军四散奔逃。无人阻止的噬日体型不断增大，羽林街面临灭顶之灾。")},--噬日传记2
			[3] = {EpisodeTitle = _T("噬日传记3"),Episode = _T("面对骤然出世的噬日，无论是曹焱兵一行人，还是另外一边的项昆仑和吕仙宫，都骇然变色。连项昆仑和吕仙宫这般顶级战力都感到头痛的噬日，可想而知它的恐怖之处。")},--噬日传记3
			[4] = {EpisodeTitle = _T("噬日传记4"),Episode = _T("掌握了人灵技的夏铃对战羽林街三灵将之一的天市尚且不落下风，但面对恐怖的噬日，却依旧不是它的一合之敌。若不是曹焱兵及时出手，噬日的一击很可能让夏铃就此香消玉损。")},--噬日传记4
			[5] = {EpisodeTitle = _T("噬日传记5"),Episode = _T("面对吞噬万物的噬日，曹焱兵等人原本可以选择就此离开，将这个乱摊子交给项昆仑。只是为了不让羽林街被毁，曹焱兵和北落师门联手使出了惊世的合体技——熔岩世界。终于将不可一世的噬日镇压。")}--噬日传记5
		}
	},--噬日
	[1102019] = {
		IfEntreVersion = 1,
		Name = _T("食火蜥"),
		NickName = _T("火焰吞噬者"),
		NamePic = "ui_dtex_Name_1102019",
		NickNamePic = "ui_dtex_Name2_1102019",
		KPKM = "kp_km_1102019",
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
		GachaDialogue = "gacha_shx_1102019",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 610,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304030,1304036},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304030,1304036},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2018,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 350},[2] = {id = 102,val = 100},[3] = {id = 103,val = 750}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 67}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 670}},--食火蜥1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 510},[2] = {id = 102,val = 177.5},[3] = {id = 103,val = 1578}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 61}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 1280},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--食火蜥2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 681.7},[2] = {id = 102,val = 263.35},[3] = {id = 103,val = 2494}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 113}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 2410},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--食火蜥3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 996.4},[2] = {id = 102,val = 420.2},[3] = {id = 103,val = 4191}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 135}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 3760},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--食火蜥4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1372.7},[2] = {id = 102,val = 608.85},[3] = {id = 103,val = 6216}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 169}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 5450},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 60}}},--食火蜥5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1843.3},[2] = {id = 102,val = 844.15},[3] = {id = 103,val = 8752}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 219}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 7640},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603005,val = 60}}},--食火蜥6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2453.8},[2] = {id = 102,val = 1149.4},[3] = {id = 103,val = 12040}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 270}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 10340},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603005,val = 80}}},--食火蜥7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3205.7},[2] = {id = 102,val = 1525.35},[3] = {id = 103,val = 16090}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 338}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 13720},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603005,val = 75}}},--食火蜥8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4145.6},[2] = {id = 102,val = 1995.3},[3] = {id = 103,val = 21162}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 440}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 18120},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603008,val = 35}}},--食火蜥9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4756.55},[2] = {id = 102,val = 2300.78},[3] = {id = 103,val = 24460}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 23190},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 50}}},--食火蜥10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5461.7},[2] = {id = 102,val = 2653.85},[3] = {id = 103,val = 28264}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 592}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 29110},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603008,val = 75}}},--食火蜥11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6283.6},[2] = {id = 102,val = 3064.8},[3] = {id = 103,val = 32700}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 677}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 35880},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603008,val = 80}}},--食火蜥12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 7223.95},[2] = {id = 102,val = 3534.98},[3] = {id = 103,val = 37777}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 782}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 43700},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603008,val = 100}}},--食火蜥13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8310.8},[2] = {id = 102,val = 4078.9},[3] = {id = 103,val = 43640}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 905}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 52750},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603008,val = 100}}},--食火蜥14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9567.55},[2] = {id = 102,val = 4707.78},[3] = {id = 103,val = 50424}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 1046}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 63210},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603011,val = 15}}},--食火蜥15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 11021.35},[2] = {id = 102,val = 5434.18},[3] = {id = 103,val = 58273}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 1210}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 75310},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603011,val = 20}}},--食火蜥16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12701.9},[2] = {id = 102,val = 6274.45},[3] = {id = 103,val = 67347}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 1399}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 89300},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603011,val = 30},[4] = {id = 1603014,val = 5}}},--食火蜥17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14645.5},[2] = {id = 102,val = 7245.75},[3] = {id = 103,val = 77843}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1617}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 105470},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603011,val = 40},[4] = {id = 1603014,val = 10}}},--食火蜥18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16892.05},[2] = {id = 102,val = 8369.53},[3] = {id = 103,val = 89969}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1870}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 124170},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603011,val = 50},[4] = {id = 1603014,val = 15}}},--食火蜥19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19490.45},[2] = {id = 102,val = 9668.73},[3] = {id = 103,val = 103999}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 2162}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 145790},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603011,val = 60},[4] = {id = 1603014,val = 20}}},--食火蜥20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22494.65},[2] = {id = 102,val = 11170.33},[3] = {id = 103,val = 120218}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 2500}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 170790},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 75},[4] = {id = 1603014,val = 25}}}--食火蜥21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702019,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702019,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702019,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702019,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702019,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("食火蜥传记1"),Episode = _T("食火蜥是王国组织第五骑士吉拉的守护灵，虽然外表其貌不扬，却拥有吞噬火焰的独门绝技。即便是曹焱兵的地狱火在它面前也毫无威胁。与吉拉开启特殊融合之后， 食火蜥可以令任何火属性攻击无效化，实力极为强劲。")},--食火蜥传记1
			[2] = {EpisodeTitle = _T("食火蜥传记2"),Episode = _T("除了能吞噬火焰，食火蜥的触手还可以在土地上肆意生长，变成无数藤蔓来攻击敌人。给想要突破阻拦进入芦花古楼的曹焱兵等人造成了极大的麻烦，最终还是依靠曹焱兵，夏铃，阎风吒三人联手才破掉了食火蜥的藤蔓攻击。")},--食火蜥传记2
			[3] = {EpisodeTitle = _T("食火蜥传记3"),Episode = _T("芦花古楼中，面对实力强大的风王，吉拉和北落师门罕见的达成一致，联手对敌。此前一战吉拉的守护灵食火蜥元气大伤，但在对风王一战中依旧表现不俗，牵制了风王大部分的精力，给北落师门和石灵明创造攻击机会。")},--食火蜥传记3
			[4] = {EpisodeTitle = _T("食火蜥传记4"),Episode = _T("吉拉的本性原本并不坏，只是其全族被灭，又被风王施加了诅咒，导致他有些自暴自弃。加上他体内食火蜥原本就是暴虐的守护灵，导致他性格变得偏激起来，但芦花古楼事件之后，吉拉的心结解开，控制了体内暴虐食火蜥，不再滥杀无辜。")},--食火蜥传记4
			[5] = {EpisodeTitle = _T("食火蜥传记5"),Episode = _T("食火蜥曾是吉拉一族的圣兽，灾难过后，吉拉是全族唯一的幸存者，他经历过艰难的考验最终得到了圣兽食火蜥的认可。只是食火蜥虽然强大，却也无法复活吉拉已经死去的族人。但吉拉从未放弃，食火蜥的能力加上王国组织的力量，他相信终有一日能将族人复活。")}--食火蜥传记5
		}
	},--食火蜥
	[1102020] = {
		IfEntreVersion = 1,
		Name = _T("高顺"),
		NickName = _T("陷阵之魂"),
		NamePic = "ui_dtex_Name_1102020",
		NickNamePic = "ui_dtex_Name2_1102020",
		KPKM = "kp_km_1102020",
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
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304029,1304032},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2019,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 502.5},[2] = {id = 102,val = 115},[3] = {id = 103,val = 1362.5}},UpAttr = {[1] = {id = 101,val = 17.25},[2] = {id = 102,val = 8.63},[3] = {id = 103,val = 77.05}},RosterAttr = {AtkExt = 172,DefExt = 86,HPExt = 770}},--高顺1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 686.5},[2] = {id = 102,val = 204.13},[3] = {id = 103,val = 2314.7}},UpAttr = {[1] = {id = 101,val = 15.84},[2] = {id = 102,val = 7.92},[3] = {id = 103,val = 70.15}},RosterAttr = {AtkExt = 330,DefExt = 165,HPExt = 1471},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--高顺2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 883.96},[2] = {id = 102,val = 302.85},[3] = {id = 103,val = 3368.1}},UpAttr = {[1] = {id = 101,val = 28.95},[2] = {id = 102,val = 14.47},[3] = {id = 103,val = 129.95}},RosterAttr = {AtkExt = 619,DefExt = 309,HPExt = 2770},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--高顺3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 1245.86},[2] = {id = 102,val = 483.23},[3] = {id = 103,val = 5319.65}},UpAttr = {[1] = {id = 101,val = 34.65},[2] = {id = 102,val = 17.32},[3] = {id = 103,val = 155.25}},RosterAttr = {AtkExt = 965,DefExt = 482,HPExt = 4322},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603006,val = 40}}},--高顺4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1678.61},[2] = {id = 102,val = 700.18},[3] = {id = 103,val = 7648.4}},UpAttr = {[1] = {id = 101,val = 43.31},[2] = {id = 102,val = 21.65},[3] = {id = 103,val = 194.35}},RosterAttr = {AtkExt = 1398,DefExt = 698,HPExt = 6265},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603006,val = 60}}},--高顺5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 2219.8},[2] = {id = 102,val = 970.77},[3] = {id = 103,val = 10564.8}},UpAttr = {[1] = {id = 101,val = 56.18},[2] = {id = 102,val = 28.09},[3] = {id = 103,val = 251.85}},RosterAttr = {AtkExt = 1959,DefExt = 978,HPExt = 8783},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603006,val = 60}}},--高顺6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2921.87},[2] = {id = 102,val = 1321.81},[3] = {id = 103,val = 14346}},UpAttr = {[1] = {id = 101,val = 69.22},[2] = {id = 102,val = 34.61},[3] = {id = 103,val = 310.5}},RosterAttr = {AtkExt = 2651,DefExt = 1324,HPExt = 11888},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603006,val = 80}}},--高顺7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3786.56},[2] = {id = 102,val = 1754.15},[3] = {id = 103,val = 19003.5}},UpAttr = {[1] = {id = 101,val = 86.47},[2] = {id = 102,val = 43.23},[3] = {id = 103,val = 388.7}},RosterAttr = {AtkExt = 3515,DefExt = 1756,HPExt = 15775},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603006,val = 75}}},--高顺8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4867.44},[2] = {id = 102,val = 2294.6},[3] = {id = 103,val = 24836.3}},UpAttr = {[1] = {id = 101,val = 112.46},[2] = {id = 102,val = 56.23},[3] = {id = 103,val = 506}},RosterAttr = {AtkExt = 4639,DefExt = 2318,HPExt = 20835},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603009,val = 35}}},--高顺9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 5570.03},[2] = {id = 102,val = 2645.89},[3] = {id = 103,val = 28629}},UpAttr = {[1] = {id = 101,val = 129.75},[2] = {id = 102,val = 64.88},[3] = {id = 103,val = 583.05}},RosterAttr = {AtkExt = 5936,DefExt = 2966,HPExt = 26665},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603009,val = 50}}},--高顺10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 6380.96},[2] = {id = 102,val = 3051.93},[3] = {id = 103,val = 33003.6}},UpAttr = {[1] = {id = 101,val = 151.32},[2] = {id = 102,val = 75.66},[3] = {id = 103,val = 680.8}},RosterAttr = {AtkExt = 7449,DefExt = 3722,HPExt = 33473},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603009,val = 75}}},--高顺11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 7326.14},[2] = {id = 102,val = 3524.52},[3] = {id = 103,val = 38105}},UpAttr = {[1] = {id = 101,val = 173.04},[2] = {id = 102,val = 86.52},[3] = {id = 103,val = 778.55}},RosterAttr = {AtkExt = 9179,DefExt = 4587,HPExt = 41258},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603009,val = 80}}},--高顺12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 8407.54},[2] = {id = 102,val = 4065.22},[3] = {id = 103,val = 43943.55}},UpAttr = {[1] = {id = 101,val = 200.07},[2] = {id = 102,val = 100.03},[3] = {id = 103,val = 899.3}},RosterAttr = {AtkExt = 11179,DefExt = 5587,HPExt = 50251},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603009,val = 100}}},--高顺13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 9657.42},[2] = {id = 102,val = 4690.74},[3] = {id = 103,val = 50686}},UpAttr = {[1] = {id = 101,val = 231.32},[2] = {id = 102,val = 115.66},[3] = {id = 103,val = 1040.75}},RosterAttr = {AtkExt = 13492,DefExt = 6743,HPExt = 60658},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603009,val = 100}}},--高顺14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 11102.68},[2] = {id = 102,val = 5413.94},[3] = {id = 103,val = 58487.6}},UpAttr = {[1] = {id = 101,val = 267.44},[2] = {id = 102,val = 133.72},[3] = {id = 103,val = 1202.9}},RosterAttr = {AtkExt = 16166,DefExt = 8080,HPExt = 72687},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603012,val = 15}}},--高顺15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 12774.55},[2] = {id = 102,val = 6249.3},[3] = {id = 103,val = 67513.95}},UpAttr = {[1] = {id = 101,val = 309.25},[2] = {id = 102,val = 154.62},[3] = {id = 103,val = 1391.5}},RosterAttr = {AtkExt = 19258,DefExt = 9626,HPExt = 86602},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603012,val = 20}}},--高顺16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 14707.19},[2] = {id = 102,val = 7215.62},[3] = {id = 103,val = 77949.05}},UpAttr = {[1] = {id = 101,val = 357.56},[2] = {id = 102,val = 178.78},[3] = {id = 103,val = 1608.85}},RosterAttr = {AtkExt = 22833,DefExt = 11413,HPExt = 102690},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603012,val = 30},[4] = {id = 1603014,val = 5}}},--高顺17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 16942.33},[2] = {id = 102,val = 8332.61},[3] = {id = 103,val = 90019.45}},UpAttr = {[1] = {id = 101,val = 413.44},[2] = {id = 102,val = 206.72},[3] = {id = 103,val = 1859.55}},RosterAttr = {AtkExt = 26967,DefExt = 13480,HPExt = 121285},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603012,val = 40},[4] = {id = 1603014,val = 10}}},--高顺18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 19525.86},[2] = {id = 102,val = 9624.95},[3] = {id = 103,val = 103964.4}},UpAttr = {[1] = {id = 101,val = 478.03},[2] = {id = 102,val = 239.02},[3] = {id = 103,val = 2150.5}},RosterAttr = {AtkExt = 31747,DefExt = 15870,HPExt = 142790},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603012,val = 50},[4] = {id = 1603014,val = 15}}},--高顺19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 22514.02},[2] = {id = 102,val = 11119.03},[3] = {id = 103,val = 120098.9}},UpAttr = {[1] = {id = 101,val = 552.74},[2] = {id = 102,val = 276.37},[3] = {id = 103,val = 2486.3}},RosterAttr = {AtkExt = 37274,DefExt = 18633,HPExt = 167653},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603012,val = 60},[4] = {id = 1603014,val = 20}}},--高顺20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 25968.85},[2] = {id = 102,val = 12845.87},[3] = {id = 103,val = 138750.7}},UpAttr = {[1] = {id = 101,val = 639.1},[2] = {id = 102,val = 319.55},[3] = {id = 103,val = 2875}},RosterAttr = {AtkExt = 43665,DefExt = 21828,HPExt = 196403},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603012,val = 75},[4] = {id = 1603014,val = 25}}}--高顺21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1702020,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1702020,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 13000},[2] = {id = 1702020,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 26000},[2] = {id = 1702020,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 34000},[2] = {id = 1702020,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("高顺传记1"),Episode = _T("高顺生前曾为吕布麾下第一猛将，率领最为精锐的七百陷阵营攻无不克，战无不胜。甚至曾击败过曹操麾下的大将夏侯惇。今世化身为吕布后人吕仙宫的守护灵，七百陷阵营士兵也以亡灵形态再现于世，重归他的麾下。")},--高顺传记1
			[2] = {EpisodeTitle = _T("高顺传记2"),Episode = _T("高顺能统帅无敌的陷阵营，其自身实力自然不容小觑。但因为有陷阵营在前横扫一切，极少有需要他亲自出手的时候。唯有在群英殿之乱中，面对搏命的唐无心，吕仙宫第一次准备让高顺出手，却被对方突然出现的帮手偷袭重伤。")},--高顺传记2
			[3] = {EpisodeTitle = _T("高顺传记3"),Episode = _T("相比于吕布的勇武有余，智谋不足。高顺是真正的文武双全，不仅用兵如神，且计智过人，正如他所选择的寄灵人吕仙宫，在群英殿中不仅担任着骑兵统帅，同时也扮演着貂灵芸身边的谋士。")},--高顺传记3
			[4] = {EpisodeTitle = _T("高顺传记4"),Episode = _T("“仙宫，若是让你在项昆仑与貂灵芸之间做一个选择，你会支持谁？”高顺望着站在窗前思考的吕仙宫问道。吕仙宫没有回答，而是回过头看他：“若是你，你会选谁？”高顺看了她一眼，淡淡道：“吕布的恩情我前世已经还清了。”")},--高顺传记4
			[5] = {EpisodeTitle = _T("高顺传记5"),Episode = _T("高顺一生忠义，即便早已知道吕布并非明主，可他直到最后也没有背叛吕布。吕布败于曹操后曾想过投降换取自己一命，但唯有高顺，宁死不降。今世吕布变成了貂灵芸的护花使者，但高顺却依旧是那个曾经的陷阵营统帅。")}--高顺传记5
		}
	},--高顺
	[1102021] = {
		IfEntreVersion = 1,
		Name = _T("烈风螳螂"),
		NickName = _T("荒漠兽灵"),
		NamePic = "ui_dtex_Name_1102021",
		NickNamePic = "ui_dtex_Name2_1102021",
		KPKM = "kp_km_1102021",
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
		Skill = {[1] = 1303021},
		SkillBlankAmount = 2,
		RpCvt = {[1] = {id = 1702021,val = 40}},
		DebrisID = 1702021,
		ComposeNum = 40,
		CardFace = "cardface_lftl_1102021",
		Head2 = "head_lftl_1102021",
		HeadBig = "headbig_lftl_1102021",
		Icon = "head_lftl_1102021",
		Painting = "draw_lftl_1102021",
		Cutin = "cutin_lftl_1102021",
		GachaDialogue = "gacha_lftl_1102021",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 612,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304028,1304032},desc = _T("这是天悦提供的插槽技能攻略")},[2] = {skills = {1304028,1304032},desc = _T("这是天悦提供的插槽技能攻略")}},
		InitSkill = 2020,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 350},[2] = {id = 102,val = 100},[3] = {id = 103,val = 750}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 67}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 670}},--烈风螳螂1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 510},[2] = {id = 102,val = 177.5},[3] = {id = 103,val = 1578}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 61}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 1280},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--烈风螳螂2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 681.7},[2] = {id = 102,val = 263.35},[3] = {id = 103,val = 2494}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 113}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 2410},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--烈风螳螂3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 996.4},[2] = {id = 102,val = 420.2},[3] = {id = 103,val = 4191}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 135}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 3760},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603005,val = 40}}},--烈风螳螂4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1372.7},[2] = {id = 102,val = 608.85},[3] = {id = 103,val = 6216}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 169}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 5450},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603005,val = 60}}},--烈风螳螂5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1843.3},[2] = {id = 102,val = 844.15},[3] = {id = 103,val = 8752}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 219}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 7640},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603005,val = 60}}},--烈风螳螂6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2453.8},[2] = {id = 102,val = 1149.4},[3] = {id = 103,val = 12040}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 270}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 10340},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603005,val = 80}}},--烈风螳螂7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3205.7},[2] = {id = 102,val = 1525.35},[3] = {id = 103,val = 16090}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 338}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 13720},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603005,val = 75}}},--烈风螳螂8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4145.6},[2] = {id = 102,val = 1995.3},[3] = {id = 103,val = 21162}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 440}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 18120},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603008,val = 35}}},--烈风螳螂9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4756.55},[2] = {id = 102,val = 2300.78},[3] = {id = 103,val = 24460}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 23190},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603008,val = 50}}},--烈风螳螂10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5461.7},[2] = {id = 102,val = 2653.85},[3] = {id = 103,val = 28264}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 592}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 29110},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603008,val = 75}}},--烈风螳螂11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6283.6},[2] = {id = 102,val = 3064.8},[3] = {id = 103,val = 32700}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 677}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 35880},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603008,val = 80}}},--烈风螳螂12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 7223.95},[2] = {id = 102,val = 3534.98},[3] = {id = 103,val = 37777}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 782}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 43700},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603008,val = 100}}},--烈风螳螂13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8310.8},[2] = {id = 102,val = 4078.9},[3] = {id = 103,val = 43640}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 905}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 52750},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603008,val = 100}}},--烈风螳螂14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9567.55},[2] = {id = 102,val = 4707.78},[3] = {id = 103,val = 50424}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 1046}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 63210},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603011,val = 15}}},--烈风螳螂15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 11021.35},[2] = {id = 102,val = 5434.18},[3] = {id = 103,val = 58273}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 1210}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 75310},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603011,val = 20}}},--烈风螳螂16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12701.9},[2] = {id = 102,val = 6274.45},[3] = {id = 103,val = 67347}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 1399}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 89300},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603011,val = 30},[4] = {id = 1603014,val = 5}}},--烈风螳螂17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14645.5},[2] = {id = 102,val = 7245.75},[3] = {id = 103,val = 77843}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1617}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 105470},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603011,val = 40},[4] = {id = 1603014,val = 10}}},--烈风螳螂18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16892.05},[2] = {id = 102,val = 8369.53},[3] = {id = 103,val = 89969}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1870}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 124170},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603011,val = 50},[4] = {id = 1603014,val = 15}}},--烈风螳螂19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19490.45},[2] = {id = 102,val = 9668.73},[3] = {id = 103,val = 103999}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 2162}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 145790},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603011,val = 60},[4] = {id = 1603014,val = 20}}},--烈风螳螂20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22494.65},[2] = {id = 102,val = 11170.33},[3] = {id = 103,val = 120218}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 2500}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 170790},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603011,val = 75},[4] = {id = 1603014,val = 25}}}--烈风螳螂21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702021,val = 40}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702021,val = 80}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702021,val = 120}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702021,val = 160}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702021,val = 240}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("烈风螳螂传记1"),Episode = _T("传闻烈风螳螂生于极西之地的狂风之中，来去无踪，且两个利刃般的前爪可以轻易斩断钢铁，常人难以驯服。没人知道当年独自深入极西狂风中的阎巧巧是如何驯服烈风螳螂，并将其收为守护灵的。")},--烈风螳螂传记1
			[2] = {EpisodeTitle = _T("烈风螳螂传记2"),Episode = _T("森林中，两道身影正在前后追逐，烈风螳螂能感受到主人心中的愤怒和焦急，所以它的目光中杀意更胜。烈风螳螂背后双翅微震，眨眼间便来到吉拉身后，锋利如刀的利爪猛然斩下。")},--烈风螳螂传记2
			[3] = {EpisodeTitle = _T("烈风螳螂传记3"),Episode = _T("即便面对的是风花雪月四王和御灵使，只要主人阎巧巧想要抗争，烈风螳螂也会迎难而上。只可惜它的力量比起对手来说实在不值一提，仅仅一招它便败在了月王手下。")},--烈风螳螂传记3
			[4] = {EpisodeTitle = _T("烈风螳螂传记4"),Episode = _T("“叽叽......叽叽”年幼的烈风螳螂在狂风中向着远处呼唤，它的父母外出捕猎，已经两天两夜仍然没有归来。极西之地的狂风中危机四伏，稍有不慎便可能遭遇不测，这个小家伙的父母很可能再也回不来了。")},--烈风螳螂传记4
			[5] = {EpisodeTitle = _T("烈风螳螂传记5"),Episode = _T("又过了一天，小小的烈风螳螂已经饿得奄奄一息，恍惚中它好像看到一个人影在接近。阎巧巧蹲下身，将小家伙轻轻抱起，将食物轻轻放在它的嘴里，温柔的笑着：“以后，就让我来做你的主人吧！”")}--烈风螳螂传记5
		}
	},--烈风螳螂
	[1102050] = {
		IfEntreVersion = 1,
		Name = _T("柠檬精"),
		NickName = _T("排排坐"),
		NamePic = "ui_dtex_Name_1102050",
		NickNamePic = "ui_dtex_Name2_1102050",
		KPKM = "kp_km_1102050",
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
		RpCvt = {[1] = {id = 1702050,val = 5}},
		DebrisID = 1702050,
		ComposeNum = 20,
		CardFace = "cardface_nmj_1102050",
		Head2 = "head_nmj_1102050",
		HeadBig = "headbig_nmj_1102050",
		Icon = "head_nmj_1102050",
		Painting = "draw_nmj_1102050",
		Cutin = "cutin_nmj_1102050",
		GachaDialogue = "gacha_nmj_1102050",
		PaintingPos = {x = 0,y = 0},
		Describe = "不是BUG，还没填表",
		GuidDesc = "策略描述策划还没配好",
		Relation = "不是BUG，还没填表",
		mask = 680,
		RecommendTeam = {1,2,3},
		RecommendSkill = {[1] = {skills = {1304024},desc = _T("柠檬精还能用么？")},[2] = {skills = {1304024},desc = _T("柠檬精还能用么？")}},
		InitSkill = 2021,
		hells = {
			[1] = {BaseAttr = {[1] = {id = 101,val = 350},[2] = {id = 102,val = 100},[3] = {id = 103,val = 750}},UpAttr = {[1] = {id = 101,val = 15},[2] = {id = 102,val = 7.5},[3] = {id = 103,val = 67}},RosterAttr = {AtkExt = 150,DefExt = 75,HPExt = 670}},--柠檬精1突
			[2] = {BaseAttr = {[1] = {id = 101,val = 510},[2] = {id = 102,val = 177.5},[3] = {id = 103,val = 1578}},UpAttr = {[1] = {id = 101,val = 13.77},[2] = {id = 102,val = 6.89},[3] = {id = 103,val = 61}},RosterAttr = {AtkExt = 287,DefExt = 143,HPExt = 1280},CostItem = {[1] = {id = 1401002,val = 1000},[2] = {id = 1603001,val = 10}}},--柠檬精2突
			[3] = {BaseAttr = {[1] = {id = 101,val = 681.7},[2] = {id = 102,val = 263.35},[3] = {id = 103,val = 2494}},UpAttr = {[1] = {id = 101,val = 25.17},[2] = {id = 102,val = 12.59},[3] = {id = 103,val = 113}},RosterAttr = {AtkExt = 538,DefExt = 268,HPExt = 2410},CostItem = {[1] = {id = 1401002,val = 3000},[2] = {id = 1603001,val = 35}}},--柠檬精3突
			[4] = {BaseAttr = {[1] = {id = 101,val = 996.4},[2] = {id = 102,val = 420.2},[3] = {id = 103,val = 4191}},UpAttr = {[1] = {id = 101,val = 30.13},[2] = {id = 102,val = 15.07},[3] = {id = 103,val = 135}},RosterAttr = {AtkExt = 839,DefExt = 418,HPExt = 3760},CostItem = {[1] = {id = 1401002,val = 6000},[2] = {id = 1603001,val = 90},[3] = {id = 1603007,val = 40}}},--柠檬精4突
			[5] = {BaseAttr = {[1] = {id = 101,val = 1372.7},[2] = {id = 102,val = 608.85},[3] = {id = 103,val = 6216}},UpAttr = {[1] = {id = 101,val = 37.66},[2] = {id = 102,val = 18.83},[3] = {id = 103,val = 169}},RosterAttr = {AtkExt = 1215,DefExt = 606,HPExt = 5450},CostItem = {[1] = {id = 1401002,val = 7000},[2] = {id = 1603002,val = 35},[3] = {id = 1603007,val = 60}}},--柠檬精5突
			[6] = {BaseAttr = {[1] = {id = 101,val = 1843.3},[2] = {id = 102,val = 844.15},[3] = {id = 103,val = 8752}},UpAttr = {[1] = {id = 101,val = 48.85},[2] = {id = 102,val = 24.43},[3] = {id = 103,val = 219}},RosterAttr = {AtkExt = 1703,DefExt = 850,HPExt = 7640},CostItem = {[1] = {id = 1401002,val = 17000},[2] = {id = 1603002,val = 50},[3] = {id = 1603007,val = 60}}},--柠檬精6突
			[7] = {BaseAttr = {[1] = {id = 101,val = 2453.8},[2] = {id = 102,val = 1149.4},[3] = {id = 103,val = 12040}},UpAttr = {[1] = {id = 101,val = 60.19},[2] = {id = 102,val = 30.1},[3] = {id = 103,val = 270}},RosterAttr = {AtkExt = 2304,DefExt = 1151,HPExt = 10340},CostItem = {[1] = {id = 1401002,val = 19000},[2] = {id = 1603002,val = 75},[3] = {id = 1603007,val = 80}}},--柠檬精7突
			[8] = {BaseAttr = {[1] = {id = 101,val = 3205.7},[2] = {id = 102,val = 1525.35},[3] = {id = 103,val = 16090}},UpAttr = {[1] = {id = 101,val = 75.19},[2] = {id = 102,val = 37.6},[3] = {id = 103,val = 338}},RosterAttr = {AtkExt = 3055,DefExt = 1527,HPExt = 13720},CostItem = {[1] = {id = 1401002,val = 21000},[2] = {id = 1603002,val = 80},[3] = {id = 1603007,val = 75}}},--柠檬精8突
			[9] = {BaseAttr = {[1] = {id = 101,val = 4145.6},[2] = {id = 102,val = 1995.3},[3] = {id = 103,val = 21162}},UpAttr = {[1] = {id = 101,val = 97.79},[2] = {id = 102,val = 48.9},[3] = {id = 103,val = 440}},RosterAttr = {AtkExt = 4032,DefExt = 2016,HPExt = 18120},CostItem = {[1] = {id = 1401002,val = 24000},[2] = {id = 1603003,val = 40},[3] = {id = 1603010,val = 35}}},--柠檬精9突
			[10] = {BaseAttr = {[1] = {id = 101,val = 4756.55},[2] = {id = 102,val = 2300.78},[3] = {id = 103,val = 24460}},UpAttr = {[1] = {id = 101,val = 112.83},[2] = {id = 102,val = 56.42},[3] = {id = 103,val = 507}},RosterAttr = {AtkExt = 5160,DefExt = 2580,HPExt = 23190},CostItem = {[1] = {id = 1401002,val = 26000},[2] = {id = 1603003,val = 70},[3] = {id = 1603010,val = 50}}},--柠檬精10突
			[11] = {BaseAttr = {[1] = {id = 101,val = 5461.7},[2] = {id = 102,val = 2653.85},[3] = {id = 103,val = 28264}},UpAttr = {[1] = {id = 101,val = 131.58},[2] = {id = 102,val = 65.79},[3] = {id = 103,val = 592}},RosterAttr = {AtkExt = 6475,DefExt = 3237,HPExt = 29110},CostItem = {[1] = {id = 1401002,val = 28500},[2] = {id = 1603003,val = 105},[3] = {id = 1603010,val = 75}}},--柠檬精11突
			[12] = {BaseAttr = {[1] = {id = 101,val = 6283.6},[2] = {id = 102,val = 3064.8},[3] = {id = 103,val = 32700}},UpAttr = {[1] = {id = 101,val = 150.47},[2] = {id = 102,val = 75.24},[3] = {id = 103,val = 677}},RosterAttr = {AtkExt = 7979,DefExt = 3989,HPExt = 35880},CostItem = {[1] = {id = 1401002,val = 30500},[2] = {id = 1603003,val = 120},[3] = {id = 1603010,val = 80}}},--柠檬精12突
			[13] = {BaseAttr = {[1] = {id = 101,val = 7223.95},[2] = {id = 102,val = 3534.98},[3] = {id = 103,val = 37777}},UpAttr = {[1] = {id = 101,val = 173.97},[2] = {id = 102,val = 86.99},[3] = {id = 103,val = 782}},RosterAttr = {AtkExt = 9718,DefExt = 4858,HPExt = 43700},CostItem = {[1] = {id = 1401002,val = 41500},[2] = {id = 1603004,val = 50},[3] = {id = 1603010,val = 100}}},--柠檬精13突
			[14] = {BaseAttr = {[1] = {id = 101,val = 8310.8},[2] = {id = 102,val = 4078.9},[3] = {id = 103,val = 43640}},UpAttr = {[1] = {id = 101,val = 201.15},[2] = {id = 102,val = 100.58},[3] = {id = 103,val = 905}},RosterAttr = {AtkExt = 11729,DefExt = 5863,HPExt = 52750},CostItem = {[1] = {id = 1401002,val = 55500},[2] = {id = 1603004,val = 90},[3] = {id = 1603010,val = 100}}},--柠檬精14突
			[15] = {BaseAttr = {[1] = {id = 101,val = 9567.55},[2] = {id = 102,val = 4707.78},[3] = {id = 103,val = 50424}},UpAttr = {[1] = {id = 101,val = 232.56},[2] = {id = 102,val = 116.28},[3] = {id = 103,val = 1046}},RosterAttr = {AtkExt = 14054,DefExt = 7025,HPExt = 63210},CostItem = {[1] = {id = 1401002,val = 64500},[2] = {id = 1603004,val = 135},[3] = {id = 1603013,val = 15}}},--柠檬精15突
			[16] = {BaseAttr = {[1] = {id = 101,val = 11021.35},[2] = {id = 102,val = 5434.18},[3] = {id = 103,val = 58273}},UpAttr = {[1] = {id = 101,val = 268.91},[2] = {id = 102,val = 134.46},[3] = {id = 103,val = 1210}},RosterAttr = {AtkExt = 16743,DefExt = 8369,HPExt = 75310},CostItem = {[1] = {id = 1401002,val = 74500},[2] = {id = 1603004,val = 160},[3] = {id = 1603013,val = 20}}},--柠檬精16突
			[17] = {BaseAttr = {[1] = {id = 101,val = 12701.9},[2] = {id = 102,val = 6274.45},[3] = {id = 103,val = 67347}},UpAttr = {[1] = {id = 101,val = 310.92},[2] = {id = 102,val = 155.46},[3] = {id = 103,val = 1399}},RosterAttr = {AtkExt = 19852,DefExt = 9923,HPExt = 89300},CostItem = {[1] = {id = 1401002,val = 76500},[2] = {id = 1603015,val = 15},[3] = {id = 1603013,val = 30},[4] = {id = 1603014,val = 5}}},--柠檬精17突
			[18] = {BaseAttr = {[1] = {id = 101,val = 14645.5},[2] = {id = 102,val = 7245.75},[3] = {id = 103,val = 77843}},UpAttr = {[1] = {id = 101,val = 359.51},[2] = {id = 102,val = 179.76},[3] = {id = 103,val = 1617}},RosterAttr = {AtkExt = 23447,DefExt = 11720,HPExt = 105470},CostItem = {[1] = {id = 1401002,val = 107500},[2] = {id = 1603015,val = 20},[3] = {id = 1603013,val = 40},[4] = {id = 1603014,val = 10}}},--柠檬精18突
			[19] = {BaseAttr = {[1] = {id = 101,val = 16892.05},[2] = {id = 102,val = 8369.53},[3] = {id = 103,val = 89969}},UpAttr = {[1] = {id = 101,val = 415.68},[2] = {id = 102,val = 207.84},[3] = {id = 103,val = 1870}},RosterAttr = {AtkExt = 27603,DefExt = 13798,HPExt = 124170},CostItem = {[1] = {id = 1401002,val = 143500},[2] = {id = 1603015,val = 30},[3] = {id = 1603013,val = 50},[4] = {id = 1603014,val = 15}}},--柠檬精19突
			[20] = {BaseAttr = {[1] = {id = 101,val = 19490.45},[2] = {id = 102,val = 9668.73},[3] = {id = 103,val = 103999}},UpAttr = {[1] = {id = 101,val = 480.64},[2] = {id = 102,val = 240.32},[3] = {id = 103,val = 2162}},RosterAttr = {AtkExt = 32409,DefExt = 16201,HPExt = 145790},CostItem = {[1] = {id = 1401002,val = 179500},[2] = {id = 1603015,val = 35},[3] = {id = 1603013,val = 60},[4] = {id = 1603014,val = 20}}},--柠檬精20突
			[21] = {BaseAttr = {[1] = {id = 101,val = 22494.65},[2] = {id = 102,val = 11170.33},[3] = {id = 103,val = 120218}},UpAttr = {[1] = {id = 101,val = 555.74},[2] = {id = 102,val = 277.87},[3] = {id = 103,val = 2500}},RosterAttr = {AtkExt = 37966,DefExt = 18979,HPExt = 170790},CostItem = {[1] = {id = 1401002,val = 215000},[2] = {id = 1603015,val = 45},[3] = {id = 1603013,val = 75},[4] = {id = 1603014,val = 25}}}--柠檬精21突
		},
		stars = {
			[1] = {Cost = {[1] = {id = 1401002,val = 2800},[2] = {id = 1702050,val = 20}},AttrFac = 1},
			[2] = {Cost = {[1] = {id = 1401002,val = 5600},[2] = {id = 1702050,val = 40}},AttrFac = 1.1,AttrTrans = {[1] = {id = 103,val = 0.3}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 9100},[2] = {id = 1702050,val = 80}},AttrFac = 1.15,AttrTrans = {[1] = {id = 103,val = 0.3},[2] = {id = 101,val = 0.2}}},
			[4] = {Cost = {[1] = {id = 1401002,val = 18200},[2] = {id = 1702050,val = 120}},AttrFac = 1.2,AttrTrans = {[1] = {id = 103,val = 0.35},[2] = {id = 101,val = 0.25},[3] = {id = 102,val = 0.25}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 23800},[2] = {id = 1702050,val = 160}},AttrFac = 1.35,AttrTrans = {[1] = {id = 103,val = 0.5},[2] = {id = 101,val = 0.4},[3] = {id = 102,val = 0.4}}}
		},
		Episode = {
			[1] = {EpisodeTitle = _T("柠檬精传记"),Episode = _T("柠檬树上柠檬果，柠檬树下你和我，柠檬精作为人类的第4本质，陪伴着夏玲的成长。")}--柠檬精传记
		}
	}--柠檬精
}
ddt["card"] = data
SetLooseReadonly(data)
return data