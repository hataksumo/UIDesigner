--[[
--note:
技能表，配置技能的消耗，CD
配置每个等级技能对应的技能效果和升级消耗
colums:
{SkillID,技能ID} ,{ShowId,表现ID} ,{Name,技能名称} ,{CardBelong,属于哪张卡牌} ,{Quality,品质1-N  2-R 3-SR 4-SSR} ,{SkillType,类型：1-天赋技能，2-插槽技能，3-普通攻击} ,{FireType,类型：1-主动技能，2-被动技能，3-连击技能，4-天使缇娜} ,{CrystalCount,水晶消耗数量} ,{DoubleHit,触发连击技能概率} ,{InitLevel,初始化等级} ,{WearRange,携带限制} ,{MaxLevel,最大等级} ,{CD,冷却时间} ,{Icon,技能图标} ,{SkillEffectType,技能分类
1攻击，2防守，3资源，4增幅} ,{ShowFireType,技能分类1-主动技能，2被动技能，3-连击技能} ,{ExclusiveWeaponEffect,专属武器效果ID} ,{Lv,等级} ,{Cost[1].Id,消耗道具} ,{Cost[1].Val,消耗数量} ,{Effects[1].id,技能效果} ,{Effects[1].lv,技能效果等级} ,{Effects[2].id,技能效果} ,{Effects[2].lv,技能效果等级} ,{Effects[3].id,技能效果} ,{Effects[3].lv,技能效果等级} ,{Effects[4].id,技能效果} ,{Effects[4].lv,技能效果等级} ,{Effects[5].id,技能效果} ,{Effects[5].lv,技能效果等级} ,{Description,描述}
primary key:
#0 [技能]: SkillID
#1 [技能等级]: SkillID,HelpCol,Lv
]]
return{
	[1301001] = {
		ShowId = 1301001,
		Name = "阎王炮",
		CardBelong = 1101001,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1301001",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130100101,lv = 1}},Description = "对有护盾的单位造成X%额外伤害"},--常服曹焱兵技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100101,lv = 2}},Description = "对有护盾的单位造成X%额外伤害"},--常服曹焱兵技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100101,lv = 3}},Description = "对有护盾的单位造成X%额外伤害"},--常服曹焱兵技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100101,lv = 4}},Description = "对有护盾的单位造成X%额外伤害"},--常服曹焱兵技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100101,lv = 5}},Description = "造成伤害的同时降低目标受到的治疗效果"},--常服曹焱兵技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100101,lv = 6}},Description = "造成伤害的同时降低目标受到的治疗效果"},--常服曹焱兵技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100101,lv = 7}},Description = "造成伤害的同时降低目标受到的治疗效果"},--常服曹焱兵技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100101,lv = 8}},Description = "造成伤害的同时降低目标受到的治疗效果"},--常服曹焱兵技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100101,lv = 9}},Description = "造成伤害的同时降低目标受到的治疗效果"},--常服曹焱兵技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100101,lv = 10}},Description = "每段伤害附加X点额外伤害"}--常服曹焱兵技能1
		}
	},--常服曹焱兵技能1
	[1301002] = {
		ShowId = 1301002,
		Name = "雷光刃",
		CardBelong = 1101002,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301002",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130100201,lv = 1},[2] = {id = 130100202,lv = 1}},Description = "造成100%的伤害"},--曹玄亮技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100201,lv = 2},[2] = {id = 130100202,lv = 2}},Description = "造成100%的伤害"},--曹玄亮技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100201,lv = 3},[2] = {id = 130100202,lv = 3}},Description = "造成100%的伤害"},--曹玄亮技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100201,lv = 4},[2] = {id = 130100202,lv = 4}},Description = "造成100%的伤害"},--曹玄亮技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100201,lv = 5},[2] = {id = 130100202,lv = 5}},Description = "造成100%的伤害"},--曹玄亮技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100201,lv = 6},[2] = {id = 130100202,lv = 6}},Description = "造成100%的伤害"},--曹玄亮技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100201,lv = 7},[2] = {id = 130100202,lv = 7}},Description = "造成100%的伤害"},--曹玄亮技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100201,lv = 8},[2] = {id = 130100202,lv = 8}},Description = "造成100%的伤害"},--曹玄亮技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100201,lv = 9},[2] = {id = 130100202,lv = 9}},Description = "造成100%的伤害"},--曹玄亮技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100201,lv = 10},[2] = {id = 130100202,lv = 10}},Description = "造成100%的伤害"}--曹玄亮技能1
		}
	},--曹玄亮技能1
	[1301003] = {
		ShowId = 1301003,
		Name = "天音符录",
		CardBelong = 1101003,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301003",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130100301,lv = 1},[2] = {id = 130100302,lv = 1}},Description = "造成100%的伤害"},--战斗夏玲技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100301,lv = 2},[2] = {id = 130100302,lv = 2}},Description = "造成100%的伤害"},--战斗夏玲技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100301,lv = 3},[2] = {id = 130100302,lv = 3}},Description = "造成100%的伤害"},--战斗夏玲技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100301,lv = 4},[2] = {id = 130100302,lv = 4}},Description = "造成100%的伤害"},--战斗夏玲技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100301,lv = 5},[2] = {id = 130100302,lv = 5}}},--战斗夏玲技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100301,lv = 6},[2] = {id = 130100302,lv = 6}}},--战斗夏玲技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100301,lv = 7},[2] = {id = 130100302,lv = 7}}},--战斗夏玲技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100301,lv = 8},[2] = {id = 130100302,lv = 8}}},--战斗夏玲技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100301,lv = 9},[2] = {id = 130100302,lv = 9}}},--战斗夏玲技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100301,lv = 10},[2] = {id = 130100302,lv = 10}}}--战斗夏玲技能1
		}
	},--战斗夏玲技能1
	[1301004] = {
		ShowId = 1301004,
		Name = "王者之戟",
		CardBelong = 1101004,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301004",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130100401,lv = 1}}},--项昆仑技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100401,lv = 2}}},--项昆仑技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100401,lv = 3}}},--项昆仑技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100401,lv = 4}}},--项昆仑技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100401,lv = 5}}},--项昆仑技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100401,lv = 6}}},--项昆仑技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100401,lv = 7}}},--项昆仑技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100401,lv = 8}}},--项昆仑技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100401,lv = 9}}},--项昆仑技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100401,lv = 10}}}--项昆仑技能1
		}
	},--项昆仑技能1
	[1301005] = {
		ShowId = 1301005,
		Name = "神机妙算",
		CardBelong = 1101005,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301005",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130100501,lv = 1},[2] = {id = 130100502,lv = 1}}},--刘羽禅技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100501,lv = 2},[2] = {id = 130100502,lv = 2}}},--刘羽禅技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100501,lv = 3},[2] = {id = 130100502,lv = 3}}},--刘羽禅技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100501,lv = 4},[2] = {id = 130100502,lv = 4}}},--刘羽禅技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100501,lv = 5},[2] = {id = 130100502,lv = 5}}},--刘羽禅技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100501,lv = 6},[2] = {id = 130100502,lv = 6}}},--刘羽禅技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100501,lv = 7},[2] = {id = 130100502,lv = 7}}},--刘羽禅技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100501,lv = 8},[2] = {id = 130100502,lv = 8}}},--刘羽禅技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100501,lv = 9},[2] = {id = 130100502,lv = 9}}},--刘羽禅技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100501,lv = 10},[2] = {id = 130100502,lv = 10}}}--刘羽禅技能1
		}
	},--刘羽禅技能1
	[1301006] = {
		ShowId = 1301006,
		Name = "召唤血魔",
		CardBelong = 1101006,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301006",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130100601,lv = 1},[2] = {id = 130100602,lv = 1}}},--红莲缇娜技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100601,lv = 2},[2] = {id = 130100602,lv = 2}}},--红莲缇娜技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100601,lv = 3},[2] = {id = 130100602,lv = 3}}},--红莲缇娜技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100601,lv = 4},[2] = {id = 130100602,lv = 4}}},--红莲缇娜技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100601,lv = 5},[2] = {id = 130100602,lv = 5}}},--红莲缇娜技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100601,lv = 6},[2] = {id = 130100602,lv = 6}}},--红莲缇娜技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100601,lv = 7},[2] = {id = 130100602,lv = 7}}},--红莲缇娜技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100601,lv = 8},[2] = {id = 130100602,lv = 8}}},--红莲缇娜技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100601,lv = 9},[2] = {id = 130100602,lv = 9}}},--红莲缇娜技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100601,lv = 10},[2] = {id = 130100602,lv = 10}}}--红莲缇娜技能1
		}
	},--红莲缇娜技能1
	[1301007] = {
		ShowId = 1301007,
		Name = "大焱裂空锤",
		CardBelong = 1101007,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301007",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130100701,lv = 1}}},--战斗曹焱兵技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100701,lv = 2}}},--战斗曹焱兵技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100701,lv = 3}}},--战斗曹焱兵技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100701,lv = 4}}},--战斗曹焱兵技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100701,lv = 5}}},--战斗曹焱兵技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100701,lv = 6}}},--战斗曹焱兵技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100701,lv = 7}}},--战斗曹焱兵技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100701,lv = 8}}},--战斗曹焱兵技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100701,lv = 9}}},--战斗曹焱兵技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100701,lv = 10}}}--战斗曹焱兵技能1
		}
	},--战斗曹焱兵技能1
	[1301008] = {
		ShowId = 1301008,
		Name = "利爪",
		CardBelong = 1101008,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301008",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130100801,lv = 1},[2] = {id = 130100802,lv = 1}}},--黑尔坎普技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100801,lv = 2},[2] = {id = 130100802,lv = 2}}},--黑尔坎普技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100801,lv = 3},[2] = {id = 130100802,lv = 3}}},--黑尔坎普技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100801,lv = 4},[2] = {id = 130100802,lv = 4}}},--黑尔坎普技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100801,lv = 5},[2] = {id = 130100802,lv = 5}}},--黑尔坎普技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100801,lv = 6},[2] = {id = 130100802,lv = 6}}},--黑尔坎普技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100801,lv = 7},[2] = {id = 130100802,lv = 7}}},--黑尔坎普技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100801,lv = 8},[2] = {id = 130100802,lv = 8}}},--黑尔坎普技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100801,lv = 9},[2] = {id = 130100802,lv = 9}}},--黑尔坎普技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100801,lv = 10},[2] = {id = 130100802,lv = 10}}}--黑尔坎普技能1
		}
	},--黑尔坎普技能1
	[1301009] = {
		ShowId = 1301009,
		Name = "厚土双臂",
		CardBelong = 1101009,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301009",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130100901,lv = 1}}},--北落师门技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100901,lv = 2}}},--北落师门技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100901,lv = 3}}},--北落师门技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100901,lv = 4}}},--北落师门技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100901,lv = 5}}},--北落师门技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100901,lv = 6}}},--北落师门技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100901,lv = 7}}},--北落师门技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100901,lv = 8}}},--北落师门技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100901,lv = 9}}},--北落师门技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130100901,lv = 10}}}--北落师门技能1
		}
	},--北落师门技能1
	[1301010] = {
		ShowId = 1301010,
		Name = "擒龙手",
		CardBelong = 1101010,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301010",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130101001,lv = 1}}},--盖文技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101001,lv = 2}}},--盖文技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101001,lv = 3}}},--盖文技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101001,lv = 4}}},--盖文技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101001,lv = 5}}},--盖文技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101001,lv = 6}}},--盖文技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101001,lv = 7}}},--盖文技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101001,lv = 8}}},--盖文技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101001,lv = 9}}},--盖文技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101001,lv = 10}}}--盖文技能1
		}
	},--盖文技能1
	[1301011] = {
		ShowId = 1301011,
		Name = "风神斩",
		CardBelong = 1101011,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301011",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130101101,lv = 1},[2] = {id = 130101102,lv = 1}}},--阎风吒技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101101,lv = 2},[2] = {id = 130101102,lv = 2}}},--阎风吒技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101101,lv = 3},[2] = {id = 130101102,lv = 3}}},--阎风吒技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101101,lv = 4},[2] = {id = 130101102,lv = 4}}},--阎风吒技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101101,lv = 5},[2] = {id = 130101102,lv = 5}}},--阎风吒技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101101,lv = 6},[2] = {id = 130101102,lv = 6}}},--阎风吒技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101101,lv = 7},[2] = {id = 130101102,lv = 7}}},--阎风吒技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101101,lv = 8},[2] = {id = 130101102,lv = 8}}},--阎风吒技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101101,lv = 9},[2] = {id = 130101102,lv = 9}}},--阎风吒技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101101,lv = 10},[2] = {id = 130101102,lv = 10}}}--阎风吒技能1
		}
	},--阎风吒技能1
	[1301012] = {
		ShowId = 1301012,
		Name = "痛击",
		CardBelong = 1101012,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301012",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130101201,lv = 1},[2] = {id = 130101202,lv = 1}}},--南御夫技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101201,lv = 2},[2] = {id = 130101202,lv = 2}}},--南御夫技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101201,lv = 3},[2] = {id = 130101202,lv = 3}}},--南御夫技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101201,lv = 4},[2] = {id = 130101202,lv = 4}}},--南御夫技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101201,lv = 5},[2] = {id = 130101202,lv = 5}}},--南御夫技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101201,lv = 6},[2] = {id = 130101202,lv = 6}}},--南御夫技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101201,lv = 7},[2] = {id = 130101202,lv = 7}}},--南御夫技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101201,lv = 8},[2] = {id = 130101202,lv = 8}}},--南御夫技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101201,lv = 9},[2] = {id = 130101202,lv = 9}}},--南御夫技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101201,lv = 10},[2] = {id = 130101202,lv = 10}}}--南御夫技能1
		}
	},--南御夫技能1
	[1301013] = {
		ShowId = 1301013,
		Name = "狩猎",
		CardBelong = 1101013,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301013",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130101301,lv = 1},[2] = {id = 130101302,lv = 1}}},--吉拉技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101301,lv = 2},[2] = {id = 130101302,lv = 2}}},--吉拉技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101301,lv = 3},[2] = {id = 130101302,lv = 3}}},--吉拉技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101301,lv = 4},[2] = {id = 130101302,lv = 4}}},--吉拉技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101301,lv = 5},[2] = {id = 130101302,lv = 5}}},--吉拉技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101301,lv = 6},[2] = {id = 130101302,lv = 6}}},--吉拉技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101301,lv = 7},[2] = {id = 130101302,lv = 7}}},--吉拉技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101301,lv = 8},[2] = {id = 130101302,lv = 8}}},--吉拉技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101301,lv = 9},[2] = {id = 130101302,lv = 9}}},--吉拉技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101301,lv = 10},[2] = {id = 130101302,lv = 10}}}--吉拉技能1
		}
	},--吉拉技能1
	[1301014] = {
		ShowId = 1301014,
		Name = "吕氏余烈",
		CardBelong = 1101014,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301014",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130101401,lv = 1},[2] = {id = 130101402,lv = 1}}},--吕仙宫技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101401,lv = 2},[2] = {id = 130101402,lv = 2}}},--吕仙宫技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101401,lv = 3},[2] = {id = 130101402,lv = 3}}},--吕仙宫技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101401,lv = 4},[2] = {id = 130101402,lv = 4}}},--吕仙宫技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101401,lv = 5},[2] = {id = 130101402,lv = 5}}},--吕仙宫技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101401,lv = 6},[2] = {id = 130101402,lv = 6}}},--吕仙宫技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101401,lv = 7},[2] = {id = 130101402,lv = 7}}},--吕仙宫技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101401,lv = 8},[2] = {id = 130101402,lv = 8}}},--吕仙宫技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101401,lv = 9},[2] = {id = 130101402,lv = 9}}},--吕仙宫技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101401,lv = 10},[2] = {id = 130101402,lv = 10}}}--吕仙宫技能1
		}
	},--吕仙宫技能1
	[1301015] = {
		ShowId = 1301015,
		Name = "破风刃",
		CardBelong = 1101015,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301015",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130101501,lv = 1},[2] = {id = 130101502,lv = 1}}},--阎巧巧技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101501,lv = 2},[2] = {id = 130101502,lv = 2}}},--阎巧巧技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101501,lv = 3},[2] = {id = 130101502,lv = 3}}},--阎巧巧技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101501,lv = 4},[2] = {id = 130101502,lv = 4}}},--阎巧巧技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101501,lv = 5},[2] = {id = 130101502,lv = 5}}},--阎巧巧技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101501,lv = 6},[2] = {id = 130101502,lv = 6}}},--阎巧巧技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101501,lv = 7},[2] = {id = 130101502,lv = 7}}},--阎巧巧技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101501,lv = 8},[2] = {id = 130101502,lv = 8}}},--阎巧巧技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101501,lv = 9},[2] = {id = 130101502,lv = 9}}},--阎巧巧技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130101501,lv = 10},[2] = {id = 130101502,lv = 10}}}--阎巧巧技能1
		}
	},--阎巧巧技能1
	[1301017] = {
		ShowId = 1301017,
		Name = "八荒风狼阵",
		CardBelong = 1101017,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301017",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600101,lv = 1}}},--诸葛一心技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 2}}},--诸葛一心技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 3}}},--诸葛一心技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 4}}},--诸葛一心技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 5}}},--诸葛一心技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 6}}},--诸葛一心技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 7}}},--诸葛一心技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 8}}},--诸葛一心技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 9}}},--诸葛一心技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 10}}}--诸葛一心技能1
		}
	},--诸葛一心技能1
	[1301020] = {
		ShowId = 1301020,
		Name = "雷霆一击",
		CardBelong = 1101020,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301020",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600101,lv = 1}}},--姬烟华技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 2}}},--姬烟华技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 3}}},--姬烟华技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 4}}},--姬烟华技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 5}}},--姬烟华技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 6}}},--姬烟华技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 7}}},--姬烟华技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 8}}},--姬烟华技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 9}}},--姬烟华技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 10}}}--姬烟华技能1
		}
	},--姬烟华技能1
	[1301022] = {
		ShowId = 1301022,
		Name = "迷踪幻刃",
		CardBelong = 1101022,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301022",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600101,lv = 1}}},--幻技能1
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 2}}},--幻技能1
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 3}}},--幻技能1
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 4}}},--幻技能1
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 5}}},--幻技能1
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 6}}},--幻技能1
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 7}}},--幻技能1
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 8}}},--幻技能1
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 9}}},--幻技能1
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 10}}}--幻技能1
		}
	},--幻技能1
	[1302001] = {
		ShowId = 1302001,
		Name = "困龙火柱",
		CardBelong = 1101001,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302001",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130200101,lv = 1},[2] = {id = 130200102,lv = 1}},Description = "每段伤害附加X点额外伤害"},--常服曹焱兵技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200101,lv = 2},[2] = {id = 130200102,lv = 2}},Description = "每段伤害附加X点额外伤害"},--常服曹焱兵技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200101,lv = 3},[2] = {id = 130200102,lv = 3}},Description = "每段伤害附加X点额外伤害"},--常服曹焱兵技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200101,lv = 4},[2] = {id = 130200102,lv = 4}},Description = "每段伤害附加X点额外伤害"},--常服曹焱兵技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200101,lv = 5},[2] = {id = 130200102,lv = 5}},Description = "造成100%的伤害"},--常服曹焱兵技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200101,lv = 6},[2] = {id = 130200102,lv = 6}},Description = "造成100%的伤害"},--常服曹焱兵技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200101,lv = 7},[2] = {id = 130200102,lv = 7}},Description = "造成100%的伤害"},--常服曹焱兵技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200101,lv = 8},[2] = {id = 130200102,lv = 8}},Description = "造成100%的伤害"},--常服曹焱兵技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200101,lv = 9},[2] = {id = 130200102,lv = 9}},Description = "造成100%的伤害"},--常服曹焱兵技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200101,lv = 10},[2] = {id = 130200102,lv = 10}},Description = "造成100%的伤害"}--常服曹焱兵技能2
		}
	},--常服曹焱兵技能2
	[1302002] = {
		ShowId = 1302002,
		Name = "雷光钻",
		CardBelong = 1101002,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302002",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130200201,lv = 1},[2] = {id = 130200202,lv = 1}},Description = "造成100%的伤害"},--曹玄亮技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200201,lv = 2},[2] = {id = 130200202,lv = 2}},Description = "造成100%的伤害"},--曹玄亮技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200201,lv = 3},[2] = {id = 130200202,lv = 3}},Description = "造成100%的伤害"},--曹玄亮技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200201,lv = 4},[2] = {id = 130200202,lv = 4}},Description = "造成100%的伤害"},--曹玄亮技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200201,lv = 5},[2] = {id = 130200202,lv = 5}},Description = "造成100%的伤害"},--曹玄亮技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200201,lv = 6},[2] = {id = 130200202,lv = 6}},Description = "造成100%的伤害"},--曹玄亮技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200201,lv = 7},[2] = {id = 130200202,lv = 7}},Description = "造成100%的伤害"},--曹玄亮技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200201,lv = 8},[2] = {id = 130200202,lv = 8}},Description = "造成100%的伤害"},--曹玄亮技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200201,lv = 9},[2] = {id = 130200202,lv = 9}},Description = "造成100%的伤害"},--曹玄亮技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200201,lv = 10},[2] = {id = 130200202,lv = 10}},Description = "造成100%的伤害"}--曹玄亮技能2
		}
	},--曹玄亮技能2
	[1302003] = {
		ShowId = 1302003,
		Name = "四象擒灵光",
		CardBelong = 1101003,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302003",
		ShowFireType = 2,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130200301,lv = 1}}},--战斗夏玲技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200301,lv = 2}}},--战斗夏玲技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200301,lv = 3}}},--战斗夏玲技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200301,lv = 4}}},--战斗夏玲技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200301,lv = 5}}},--战斗夏玲技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200301,lv = 6}}},--战斗夏玲技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200301,lv = 7}}},--战斗夏玲技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200301,lv = 8}}},--战斗夏玲技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200301,lv = 9}}},--战斗夏玲技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200301,lv = 10}}}--战斗夏玲技能2
		}
	},--战斗夏玲技能2
	[1302004] = {
		ShowId = 1302004,
		Name = "霸体",
		CardBelong = 1101004,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302004",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130200401,lv = 1}}},--项昆仑技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200401,lv = 2}}},--项昆仑技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200401,lv = 3}}},--项昆仑技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200401,lv = 4}}},--项昆仑技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200401,lv = 5}}},--项昆仑技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200401,lv = 6}}},--项昆仑技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200401,lv = 7}}},--项昆仑技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200401,lv = 8}}},--项昆仑技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200401,lv = 9}}},--项昆仑技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200401,lv = 10}}}--项昆仑技能2
		}
	},--项昆仑技能2
	[1302005] = {
		ShowId = 1302005,
		Name = "匡扶之志",
		CardBelong = 1101005,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302005",
		ShowFireType = 2,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130200501,lv = 1},[2] = {id = 130200502,lv = 1}}},--刘羽禅技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200501,lv = 2},[2] = {id = 130200502,lv = 2}}},--刘羽禅技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200501,lv = 3},[2] = {id = 130200502,lv = 3}}},--刘羽禅技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200501,lv = 4},[2] = {id = 130200502,lv = 4}}},--刘羽禅技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200501,lv = 5},[2] = {id = 130200502,lv = 5}}},--刘羽禅技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200501,lv = 6},[2] = {id = 130200502,lv = 6}}},--刘羽禅技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200501,lv = 7},[2] = {id = 130200502,lv = 7}}},--刘羽禅技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200501,lv = 8},[2] = {id = 130200502,lv = 8}}},--刘羽禅技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200501,lv = 9},[2] = {id = 130200502,lv = 9}}},--刘羽禅技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200501,lv = 10},[2] = {id = 130200502,lv = 10}}}--刘羽禅技能2
		}
	},--刘羽禅技能2
	[1302006] = {
		ShowId = 1302006,
		Name = "血池",
		CardBelong = 1101006,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302006",
		ShowFireType = 2,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130200601,lv = 1}}},--红莲缇娜技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200601,lv = 2}}},--红莲缇娜技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200601,lv = 3}}},--红莲缇娜技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200601,lv = 4}}},--红莲缇娜技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200601,lv = 5}}},--红莲缇娜技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200601,lv = 6}}},--红莲缇娜技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200601,lv = 7}}},--红莲缇娜技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200601,lv = 8}}},--红莲缇娜技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200601,lv = 9}}},--红莲缇娜技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200601,lv = 10}}}--红莲缇娜技能2
		}
	},--红莲缇娜技能2
	[1302007] = {
		ShowId = 1302007,
		Name = "无相火皇",
		CardBelong = 1101007,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302007",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130200701,lv = 1},[2] = {id = 130200702,lv = 1}}},--战斗曹焱兵技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200701,lv = 2},[2] = {id = 130200702,lv = 2}}},--战斗曹焱兵技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200701,lv = 3},[2] = {id = 130200702,lv = 3}}},--战斗曹焱兵技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200701,lv = 4},[2] = {id = 130200702,lv = 4}}},--战斗曹焱兵技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200701,lv = 5},[2] = {id = 130200702,lv = 5}}},--战斗曹焱兵技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200701,lv = 6},[2] = {id = 130200702,lv = 6}}},--战斗曹焱兵技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200701,lv = 7},[2] = {id = 130200702,lv = 7}}},--战斗曹焱兵技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200701,lv = 8},[2] = {id = 130200702,lv = 8}}},--战斗曹焱兵技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200701,lv = 9},[2] = {id = 130200702,lv = 9}}},--战斗曹焱兵技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200701,lv = 10},[2] = {id = 130200702,lv = 10}}}--战斗曹焱兵技能2
		}
	},--战斗曹焱兵技能2
	[1302008] = {
		ShowId = 1302008,
		Name = "烈焰",
		CardBelong = 1101008,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302008",
		ShowFireType = 2,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130200801,lv = 1}}},--黑尔坎普技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200801,lv = 2}}},--黑尔坎普技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200801,lv = 3}}},--黑尔坎普技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200801,lv = 4}}},--黑尔坎普技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200801,lv = 5}}},--黑尔坎普技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200801,lv = 6}}},--黑尔坎普技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200801,lv = 7}}},--黑尔坎普技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200801,lv = 8}}},--黑尔坎普技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200801,lv = 9}}},--黑尔坎普技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200801,lv = 10}}}--黑尔坎普技能2
		}
	},--黑尔坎普技能2
	[1302009] = {
		ShowId = 1302009,
		Name = "石龙",
		CardBelong = 1101009,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302009",
		ShowFireType = 2,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130200901,lv = 1}}},--北落师门技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200901,lv = 2}}},--北落师门技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200901,lv = 3}}},--北落师门技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200901,lv = 4}}},--北落师门技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200901,lv = 5}}},--北落师门技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200901,lv = 6}}},--北落师门技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200901,lv = 7}}},--北落师门技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200901,lv = 8}}},--北落师门技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200901,lv = 9}}},--北落师门技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130200901,lv = 10}}}--北落师门技能2
		}
	},--北落师门技能2
	[1302010] = {
		ShowId = 1302010,
		Name = "龙王之怒",
		CardBelong = 1101010,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302010",
		ShowFireType = 2,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130201001,lv = 1},[2] = {id = 130201002,lv = 1}}},--盖文技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201001,lv = 2},[2] = {id = 130201002,lv = 2}}},--盖文技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201001,lv = 3},[2] = {id = 130201002,lv = 3}}},--盖文技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201001,lv = 4},[2] = {id = 130201002,lv = 4}}},--盖文技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201001,lv = 5},[2] = {id = 130201002,lv = 5}}},--盖文技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201001,lv = 6},[2] = {id = 130201002,lv = 6}}},--盖文技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201001,lv = 7},[2] = {id = 130201002,lv = 7}}},--盖文技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201001,lv = 8},[2] = {id = 130201002,lv = 8}}},--盖文技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201001,lv = 9},[2] = {id = 130201002,lv = 9}}},--盖文技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201001,lv = 10},[2] = {id = 130201002,lv = 10}}}--盖文技能2
		}
	},--盖文技能2
	[1302011] = {
		ShowId = 1302011,
		Name = "伏羲星罗无双阵",
		CardBelong = 1101011,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302011",
		ShowFireType = 2,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130201101,lv = 1}}},--阎风吒技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201101,lv = 2}}},--阎风吒技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201101,lv = 3}}},--阎风吒技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201101,lv = 4}}},--阎风吒技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201101,lv = 5}}},--阎风吒技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201101,lv = 6}}},--阎风吒技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201101,lv = 7}}},--阎风吒技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201101,lv = 8}}},--阎风吒技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201101,lv = 9}}},--阎风吒技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201101,lv = 10}}}--阎风吒技能2
		}
	},--阎风吒技能2
	[1302012] = {
		ShowId = 1302012,
		Name = "忍负",
		CardBelong = 1101012,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302012",
		ShowFireType = 2,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130201201,lv = 1}}},--南御夫技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201201,lv = 2}}},--南御夫技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201201,lv = 3}}},--南御夫技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201201,lv = 4}}},--南御夫技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201201,lv = 5}}},--南御夫技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201201,lv = 6}}},--南御夫技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201201,lv = 7}}},--南御夫技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201201,lv = 8}}},--南御夫技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201201,lv = 9}}},--南御夫技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201201,lv = 10}}}--南御夫技能2
		}
	},--南御夫技能2
	[1302013] = {
		ShowId = 1302013,
		Name = "融合中枢",
		CardBelong = 1101013,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302013",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130201301,lv = 1}}},--吉拉技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201301,lv = 2}}},--吉拉技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201301,lv = 3}}},--吉拉技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201301,lv = 4}}},--吉拉技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201301,lv = 5}}},--吉拉技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201301,lv = 6}}},--吉拉技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201301,lv = 7}}},--吉拉技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201301,lv = 8}}},--吉拉技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201301,lv = 9}}},--吉拉技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201301,lv = 10}}}--吉拉技能2
		}
	},--吉拉技能2
	[1302014] = {
		ShowId = 1302014,
		Name = "威慑",
		CardBelong = 1101014,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302014",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130201401,lv = 1}}},--吕仙宫技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201401,lv = 2}}},--吕仙宫技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201401,lv = 3}}},--吕仙宫技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201401,lv = 4}}},--吕仙宫技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201401,lv = 5}}},--吕仙宫技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201401,lv = 6}}},--吕仙宫技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201401,lv = 7}}},--吕仙宫技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201401,lv = 8}}},--吕仙宫技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201401,lv = 9}}},--吕仙宫技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201401,lv = 10}}}--吕仙宫技能2
		}
	},--吕仙宫技能2
	[1302015] = {
		ShowId = 1302015,
		Name = "同质",
		CardBelong = 1101015,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302015",
		ShowFireType = 2,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130201501,lv = 1}}},--阎巧巧技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201501,lv = 2}}},--阎巧巧技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201501,lv = 3}}},--阎巧巧技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201501,lv = 4}}},--阎巧巧技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201501,lv = 5}}},--阎巧巧技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201501,lv = 6}}},--阎巧巧技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201501,lv = 7}}},--阎巧巧技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201501,lv = 8}}},--阎巧巧技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201501,lv = 9}}},--阎巧巧技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130201501,lv = 10}}}--阎巧巧技能2
		}
	},--阎巧巧技能2
	[1302017] = {
		ShowId = 1302017,
		Name = "天象真诀",
		CardBelong = 1101017,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302017",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600101,lv = 1}}},--诸葛一心技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 2}}},--诸葛一心技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 3}}},--诸葛一心技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 4}}},--诸葛一心技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 5}}},--诸葛一心技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 6}}},--诸葛一心技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 7}}},--诸葛一心技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 8}}},--诸葛一心技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 9}}},--诸葛一心技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 10}}}--诸葛一心技能2
		}
	},--诸葛一心技能2
	[1302020] = {
		ShowId = 1302020,
		Name = "雷门布鼓",
		CardBelong = 1101020,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302020",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600101,lv = 1}}},--姬烟华技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 2}}},--姬烟华技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 3}}},--姬烟华技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 4}}},--姬烟华技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 5}}},--姬烟华技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 6}}},--姬烟华技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 7}}},--姬烟华技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 8}}},--姬烟华技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 9}}},--姬烟华技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 10}}}--姬烟华技能2
		}
	},--姬烟华技能2
	[1302022] = {
		ShowId = 1302022,
		Name = "影刃追魂",
		CardBelong = 1101022,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1302022",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600101,lv = 1}}},--幻技能2
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 2}}},--幻技能2
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 3}}},--幻技能2
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 4}}},--幻技能2
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 5}}},--幻技能2
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 6}}},--幻技能2
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 7}}},--幻技能2
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 8}}},--幻技能2
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 9}}},--幻技能2
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 10}}}--幻技能2
		}
	},--幻技能2
	[1303001] = {
		ShowId = 1303001,
		Name = "青龙偃月",
		CardBelong = 1102001,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 1,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303001",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300109,
		lvs = {
			[1] = {Effects = {[1] = {id = 130300101,lv = 1}}},--关羽技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300101,lv = 2}}},--关羽技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300101,lv = 3}}},--关羽技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300101,lv = 4}}},--关羽技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300101,lv = 5}}},--关羽技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300101,lv = 6}}},--关羽技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300101,lv = 7}}},--关羽技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300101,lv = 8}}},--关羽技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300101,lv = 9}}},--关羽技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300101,lv = 10}}}--关羽技能
		}
	},--关羽技能
	[1303002] = {
		ShowId = 1303002,
		Name = "我王修罗炎烈拳",
		CardBelong = 1102002,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 1,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303002",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 130300201,lv = 1},[2] = {id = 130300202,lv = 1}}},--许褚技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300201,lv = 2},[2] = {id = 130300202,lv = 2}}},--许褚技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300201,lv = 3},[2] = {id = 130300202,lv = 3}}},--许褚技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300201,lv = 4},[2] = {id = 130300202,lv = 4}}},--许褚技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300201,lv = 5},[2] = {id = 130300202,lv = 5}}},--许褚技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300201,lv = 6},[2] = {id = 130300202,lv = 6}}},--许褚技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300201,lv = 7},[2] = {id = 130300202,lv = 7}}},--许褚技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300201,lv = 8},[2] = {id = 130300202,lv = 8}}},--许褚技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300201,lv = 9},[2] = {id = 130300202,lv = 9}}},--许褚技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300201,lv = 10},[2] = {id = 130300202,lv = 10}}}--许褚技能
		}
	},--许褚技能
	[1303003] = {
		ShowId = 1303003,
		Name = "混沌弑神击",
		CardBelong = 1102003,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303003",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300309,
		lvs = {
			[1] = {Effects = {[1] = {id = 130300301,lv = 1},[2] = {id = 130300302,lv = 1}}},--典韦技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300301,lv = 2},[2] = {id = 130300302,lv = 2}}},--典韦技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300301,lv = 3},[2] = {id = 130300302,lv = 3}}},--典韦技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300301,lv = 4},[2] = {id = 130300302,lv = 4}}},--典韦技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300301,lv = 5},[2] = {id = 130300302,lv = 5}}},--典韦技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300301,lv = 6},[2] = {id = 130300302,lv = 6}}},--典韦技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300301,lv = 7},[2] = {id = 130300302,lv = 7}}},--典韦技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300301,lv = 8},[2] = {id = 130300302,lv = 8}}},--典韦技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300301,lv = 9},[2] = {id = 130300302,lv = 9}}},--典韦技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300301,lv = 10},[2] = {id = 130300302,lv = 10}}}--典韦技能
		}
	},--典韦技能
	[1303004] = {
		ShowId = 1303004,
		Name = "暴雨梨花",
		CardBelong = 1102004,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 1,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303004",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300409,
		lvs = {
			[1] = {Effects = {[1] = {id = 130300401,lv = 1}}},--唐流雨技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300401,lv = 2}}},--唐流雨技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300401,lv = 3}}},--唐流雨技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300401,lv = 4}}},--唐流雨技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300401,lv = 5}}},--唐流雨技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300401,lv = 6}}},--唐流雨技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300401,lv = 7}}},--唐流雨技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300401,lv = 8}}},--唐流雨技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300401,lv = 9}}},--唐流雨技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300401,lv = 10}}}--唐流雨技能
		}
	},--唐流雨技能
	[1303005] = {
		ShowId = 1303005,
		Name = "无量清风",
		CardBelong = 1102005,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303005",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300509,
		lvs = {
			[1] = {Effects = {[1] = {id = 130300501,lv = 1},[2] = {id = 130300502,lv = 1}}},--李轩辕技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300501,lv = 2},[2] = {id = 130300502,lv = 2}}},--李轩辕技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300501,lv = 3},[2] = {id = 130300502,lv = 3}}},--李轩辕技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300501,lv = 4},[2] = {id = 130300502,lv = 4}}},--李轩辕技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300501,lv = 5},[2] = {id = 130300502,lv = 5}}},--李轩辕技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300501,lv = 6},[2] = {id = 130300502,lv = 6}}},--李轩辕技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300501,lv = 7},[2] = {id = 130300502,lv = 7}}},--李轩辕技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300501,lv = 8},[2] = {id = 130300502,lv = 8}}},--李轩辕技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300501,lv = 9},[2] = {id = 130300502,lv = 9}}},--李轩辕技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300501,lv = 10},[2] = {id = 130300502,lv = 10}}}--李轩辕技能
		}
	},--李轩辕技能
	[1303006] = {
		ShowId = 1303006,
		Name = "霸王再世",
		CardBelong = 1102006,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303006",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300609,
		lvs = {
			[1] = {Effects = {[1] = {id = 130300601,lv = 1},[2] = {id = 130300602,lv = 1}}},--项羽技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300601,lv = 2},[2] = {id = 130300602,lv = 2}}},--项羽技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300601,lv = 3},[2] = {id = 130300602,lv = 3}}},--项羽技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300601,lv = 4},[2] = {id = 130300602,lv = 4}}},--项羽技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300601,lv = 5},[2] = {id = 130300602,lv = 5}}},--项羽技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300601,lv = 6},[2] = {id = 130300602,lv = 6}}},--项羽技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300601,lv = 7},[2] = {id = 130300602,lv = 7}}},--项羽技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300601,lv = 8},[2] = {id = 130300602,lv = 8}}},--项羽技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300601,lv = 9},[2] = {id = 130300602,lv = 9}}},--项羽技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300601,lv = 10},[2] = {id = 130300602,lv = 10}}}--项羽技能
		}
	},--项羽技能
	[1303007] = {
		ShowId = 1303007,
		Name = "铁处女之吻",
		CardBelong = 1102007,
		Quality = 0,
		SkillType = 1,
		FireType = 4,
		CrystalCount = 5,
		DoubleHit = 1,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303007",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300709,
		lvs = {
			[1] = {Effects = {[1] = {id = 130300701,lv = 1},[2] = {id = 130300702,lv = 1}}},--天使缇娜技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300701,lv = 2},[2] = {id = 130300702,lv = 2}}},--天使缇娜技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300701,lv = 3},[2] = {id = 130300702,lv = 3}}},--天使缇娜技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300701,lv = 4},[2] = {id = 130300702,lv = 4}}},--天使缇娜技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300701,lv = 5},[2] = {id = 130300702,lv = 5}}},--天使缇娜技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300701,lv = 6},[2] = {id = 130300702,lv = 6}}},--天使缇娜技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300701,lv = 7},[2] = {id = 130300702,lv = 7}}},--天使缇娜技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300701,lv = 8},[2] = {id = 130300702,lv = 8}}},--天使缇娜技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300701,lv = 9},[2] = {id = 130300702,lv = 9}}},--天使缇娜技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300701,lv = 10},[2] = {id = 130300702,lv = 10}}}--天使缇娜技能
		}
	},--天使缇娜技能
	[1303008] = {
		ShowId = 1303008,
		Name = "暗夜娑伽罗",
		CardBelong = 1102008,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 1,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303008",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300809,
		lvs = {
			[1] = {Effects = {[1] = {id = 130300801,lv = 1},[2] = {id = 130300802,lv = 1},[3] = {id = 130300803,lv = 1},[4] = {id = 130300804,lv = 1},[5] = {id = 130300805,lv = 1}}},--夏侯渊技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300801,lv = 2},[2] = {id = 130300802,lv = 2},[3] = {id = 130300803,lv = 2},[4] = {id = 130300804,lv = 2},[5] = {id = 130300805,lv = 2}}},--夏侯渊技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300801,lv = 3},[2] = {id = 130300802,lv = 3},[3] = {id = 130300803,lv = 3},[4] = {id = 130300804,lv = 3},[5] = {id = 130300805,lv = 3}}},--夏侯渊技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300801,lv = 4},[2] = {id = 130300802,lv = 4},[3] = {id = 130300803,lv = 4},[4] = {id = 130300804,lv = 4},[5] = {id = 130300805,lv = 4}}},--夏侯渊技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300801,lv = 5},[2] = {id = 130300802,lv = 5},[3] = {id = 130300803,lv = 5},[4] = {id = 130300804,lv = 5},[5] = {id = 130300805,lv = 5}}},--夏侯渊技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300801,lv = 6},[2] = {id = 130300802,lv = 6},[3] = {id = 130300803,lv = 6},[4] = {id = 130300804,lv = 6},[5] = {id = 130300805,lv = 6}}},--夏侯渊技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300801,lv = 7},[2] = {id = 130300802,lv = 7},[3] = {id = 130300803,lv = 7},[4] = {id = 130300804,lv = 7},[5] = {id = 130300805,lv = 7}}},--夏侯渊技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300801,lv = 8},[2] = {id = 130300802,lv = 8},[3] = {id = 130300803,lv = 8},[4] = {id = 130300804,lv = 8},[5] = {id = 130300805,lv = 8}}},--夏侯渊技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300801,lv = 9},[2] = {id = 130300802,lv = 9},[3] = {id = 130300803,lv = 9},[4] = {id = 130300804,lv = 9},[5] = {id = 130300805,lv = 9}}},--夏侯渊技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300801,lv = 10},[2] = {id = 130300802,lv = 10},[3] = {id = 130300803,lv = 10},[4] = {id = 130300804,lv = 10},[5] = {id = 130300805,lv = 10}}}--夏侯渊技能
		}
	},--夏侯渊技能
	[1303009] = {
		ShowId = 1303009,
		Name = "白龙吟",
		CardBelong = 1102009,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 4,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303009",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300909,
		lvs = {
			[1] = {Effects = {[1] = {id = 130300901,lv = 1},[2] = {id = 130300902,lv = 1}}},--徐晃技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300901,lv = 2},[2] = {id = 130300902,lv = 2}}},--徐晃技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300901,lv = 3},[2] = {id = 130300902,lv = 3}}},--徐晃技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300901,lv = 4},[2] = {id = 130300902,lv = 4}}},--徐晃技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300901,lv = 5},[2] = {id = 130300902,lv = 5}}},--徐晃技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300901,lv = 6},[2] = {id = 130300902,lv = 6}}},--徐晃技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300901,lv = 7},[2] = {id = 130300902,lv = 7}}},--徐晃技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300901,lv = 8},[2] = {id = 130300902,lv = 8}}},--徐晃技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300901,lv = 9},[2] = {id = 130300902,lv = 9}}},--徐晃技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130300901,lv = 10},[2] = {id = 130300902,lv = 10}}}--徐晃技能
		}
	},--徐晃技能
	[1303010] = {
		ShowId = 1303010,
		Name = "魍魉乱舞",
		CardBelong = 1102010,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303010",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130301009,
		lvs = {
			[1] = {Effects = {[1] = {id = 130301001,lv = 1},[2] = {id = 130301002,lv = 1},[3] = {id = 130301003,lv = 1}}},--张郃技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301001,lv = 2},[2] = {id = 130301002,lv = 2},[3] = {id = 130301003,lv = 2}}},--张郃技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301001,lv = 3},[2] = {id = 130301002,lv = 3},[3] = {id = 130301003,lv = 3}}},--张郃技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301001,lv = 4},[2] = {id = 130301002,lv = 4},[3] = {id = 130301003,lv = 4}}},--张郃技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301001,lv = 5},[2] = {id = 130301002,lv = 5},[3] = {id = 130301003,lv = 5}}},--张郃技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301001,lv = 6},[2] = {id = 130301002,lv = 6},[3] = {id = 130301003,lv = 6}}},--张郃技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301001,lv = 7},[2] = {id = 130301002,lv = 7},[3] = {id = 130301003,lv = 7}}},--张郃技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301001,lv = 8},[2] = {id = 130301002,lv = 8},[3] = {id = 130301003,lv = 8}}},--张郃技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301001,lv = 9},[2] = {id = 130301002,lv = 9},[3] = {id = 130301003,lv = 9}}},--张郃技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301001,lv = 10},[2] = {id = 130301002,lv = 10},[3] = {id = 130301003,lv = 10}}}--张郃技能
		}
	},--张郃技能
	[1303011] = {
		ShowId = 1303011,
		Name = "熊虎之盾",
		CardBelong = 1102011,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 4,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303011",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130301111,
		lvs = {
			[1] = {Effects = {[1] = {id = 130301101,lv = 1},[2] = {id = 130301102,lv = 1},[3] = {id = 130301103,lv = 1}}},--张飞技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301101,lv = 2},[2] = {id = 130301102,lv = 2},[3] = {id = 130301103,lv = 2}}},--张飞技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301101,lv = 3},[2] = {id = 130301102,lv = 3},[3] = {id = 130301103,lv = 3}}},--张飞技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301101,lv = 4},[2] = {id = 130301102,lv = 4},[3] = {id = 130301103,lv = 4}}},--张飞技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301101,lv = 5},[2] = {id = 130301102,lv = 5},[3] = {id = 130301103,lv = 5}}},--张飞技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301101,lv = 6},[2] = {id = 130301102,lv = 6},[3] = {id = 130301103,lv = 6}}},--张飞技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301101,lv = 7},[2] = {id = 130301102,lv = 7},[3] = {id = 130301103,lv = 7}}},--张飞技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301101,lv = 8},[2] = {id = 130301102,lv = 8},[3] = {id = 130301103,lv = 8}}},--张飞技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301101,lv = 9},[2] = {id = 130301102,lv = 9},[3] = {id = 130301103,lv = 9}}},--张飞技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301101,lv = 10},[2] = {id = 130301102,lv = 10},[3] = {id = 130301103,lv = 10}}}--张飞技能
		}
	},--张飞技能
	[1303012] = {
		ShowId = 1303012,
		Name = "天残邪皇击",
		CardBelong = 1102012,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 1,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303012",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130301209,
		lvs = {
			[1] = {Effects = {[1] = {id = 130301201,lv = 1},[2] = {id = 130301202,lv = 1},[3] = {id = 130301203,lv = 1},[4] = {id = 130301204,lv = 1},[5] = {id = 130301205,lv = 1}}},--夏侯惇技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301201,lv = 2},[2] = {id = 130301202,lv = 2},[3] = {id = 130301203,lv = 2},[4] = {id = 130301204,lv = 2},[5] = {id = 130301205,lv = 2}}},--夏侯惇技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301201,lv = 3},[2] = {id = 130301202,lv = 3},[3] = {id = 130301203,lv = 3},[4] = {id = 130301204,lv = 3},[5] = {id = 130301205,lv = 3}}},--夏侯惇技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301201,lv = 4},[2] = {id = 130301202,lv = 4},[3] = {id = 130301203,lv = 4},[4] = {id = 130301204,lv = 4},[5] = {id = 130301205,lv = 4}}},--夏侯惇技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301201,lv = 5},[2] = {id = 130301202,lv = 5},[3] = {id = 130301203,lv = 5},[4] = {id = 130301204,lv = 5},[5] = {id = 130301205,lv = 5}}},--夏侯惇技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301201,lv = 6},[2] = {id = 130301202,lv = 6},[3] = {id = 130301203,lv = 6},[4] = {id = 130301204,lv = 6},[5] = {id = 130301205,lv = 6}}},--夏侯惇技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301201,lv = 7},[2] = {id = 130301202,lv = 7},[3] = {id = 130301203,lv = 7},[4] = {id = 130301204,lv = 7},[5] = {id = 130301205,lv = 7}}},--夏侯惇技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301201,lv = 8},[2] = {id = 130301202,lv = 8},[3] = {id = 130301203,lv = 8},[4] = {id = 130301204,lv = 8},[5] = {id = 130301205,lv = 8}}},--夏侯惇技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301201,lv = 9},[2] = {id = 130301202,lv = 9},[3] = {id = 130301203,lv = 9},[4] = {id = 130301204,lv = 9},[5] = {id = 130301205,lv = 9}}},--夏侯惇技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301201,lv = 10},[2] = {id = 130301202,lv = 10},[3] = {id = 130301203,lv = 10},[4] = {id = 130301204,lv = 10},[5] = {id = 130301205,lv = 10}}}--夏侯惇技能
		}
	},--夏侯惇技能
	[1303013] = {
		ShowId = 1303013,
		Name = "地狱咆哮",
		CardBelong = 1102013,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303013",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130301309,
		lvs = {
			[1] = {Effects = {[1] = {id = 130301301,lv = 1}}},--塞伯罗斯技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301301,lv = 2}}},--塞伯罗斯技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301301,lv = 3}}},--塞伯罗斯技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301301,lv = 4}}},--塞伯罗斯技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301301,lv = 5}}},--塞伯罗斯技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301301,lv = 6}}},--塞伯罗斯技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301301,lv = 7}}},--塞伯罗斯技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301301,lv = 8}}},--塞伯罗斯技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301301,lv = 9}}},--塞伯罗斯技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301301,lv = 10}}}--塞伯罗斯技能
		}
	},--塞伯罗斯技能
	[1303014] = {
		ShowId = 1303014,
		Name = "崩星乱舞",
		CardBelong = 1102014,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 1,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303014",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130301409,
		lvs = {
			[1] = {Effects = {[1] = {id = 130301401,lv = 1},[2] = {id = 130301402,lv = 1}}},--石灵明技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301401,lv = 2},[2] = {id = 130301402,lv = 2}}},--石灵明技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301401,lv = 3},[2] = {id = 130301402,lv = 3}}},--石灵明技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301401,lv = 4},[2] = {id = 130301402,lv = 4}}},--石灵明技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301401,lv = 5},[2] = {id = 130301402,lv = 5}}},--石灵明技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301401,lv = 6},[2] = {id = 130301402,lv = 6}}},--石灵明技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301401,lv = 7},[2] = {id = 130301402,lv = 7}}},--石灵明技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301401,lv = 8},[2] = {id = 130301402,lv = 8}}},--石灵明技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301401,lv = 9},[2] = {id = 130301402,lv = 9}}},--石灵明技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301401,lv = 10},[2] = {id = 130301402,lv = 10}}}--石灵明技能
		}
	},--石灵明技能
	[1303015] = {
		ShowId = 1303015,
		Name = "狂影急刃",
		CardBelong = 1102015,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303015",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130301509,
		lvs = {
			[1] = {Effects = {[1] = {id = 130301501,lv = 1}}},--于禁技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301501,lv = 2}}},--于禁技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301501,lv = 3}}},--于禁技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301501,lv = 4}}},--于禁技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301501,lv = 5}}},--于禁技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301501,lv = 6}}},--于禁技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301501,lv = 7}}},--于禁技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301501,lv = 8}}},--于禁技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301501,lv = 9}}},--于禁技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301501,lv = 10}}}--于禁技能
		}
	},--于禁技能
	[1303016] = {
		ShowId = 1303016,
		Name = "灭世狂龙闪",
		CardBelong = 1102016,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303016",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130301609,
		lvs = {
			[1] = {Effects = {[1] = {id = 130301601,lv = 1},[2] = {id = 130301602,lv = 1}}},--西方龙技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301601,lv = 2},[2] = {id = 130301602,lv = 2}}},--西方龙技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301601,lv = 3},[2] = {id = 130301602,lv = 3}}},--西方龙技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301601,lv = 4},[2] = {id = 130301602,lv = 4}}},--西方龙技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301601,lv = 5},[2] = {id = 130301602,lv = 5}}},--西方龙技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301601,lv = 6},[2] = {id = 130301602,lv = 6}}},--西方龙技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301601,lv = 7},[2] = {id = 130301602,lv = 7}}},--西方龙技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301601,lv = 8},[2] = {id = 130301602,lv = 8}}},--西方龙技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301601,lv = 9},[2] = {id = 130301602,lv = 9}}},--西方龙技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301601,lv = 10},[2] = {id = 130301602,lv = 10}}}--西方龙技能
		}
	},--西方龙技能
	[1303017] = {
		ShowId = 1303017,
		Name = "疾风斩",
		CardBelong = 1102017,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303017",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130301709,
		lvs = {
			[1] = {Effects = {[1] = {id = 130301701,lv = 1},[2] = {id = 130301702,lv = 1}}},--飞廉技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301701,lv = 2},[2] = {id = 130301702,lv = 2}}},--飞廉技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301701,lv = 3},[2] = {id = 130301702,lv = 3}}},--飞廉技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301701,lv = 4},[2] = {id = 130301702,lv = 4}}},--飞廉技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301701,lv = 5},[2] = {id = 130301702,lv = 5}}},--飞廉技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301701,lv = 6},[2] = {id = 130301702,lv = 6}}},--飞廉技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301701,lv = 7},[2] = {id = 130301702,lv = 7}}},--飞廉技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301701,lv = 8},[2] = {id = 130301702,lv = 8}}},--飞廉技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301701,lv = 9},[2] = {id = 130301702,lv = 9}}},--飞廉技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301701,lv = 10},[2] = {id = 130301702,lv = 10}}}--飞廉技能
		}
	},--飞廉技能
	[1303018] = {
		ShowId = 1303018,
		Name = "吞天噬地",
		CardBelong = 1102018,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303018",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130301809,
		lvs = {
			[1] = {Effects = {[1] = {id = 130301801,lv = 1},[2] = {id = 130301802,lv = 1}}},--噬日技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301801,lv = 2},[2] = {id = 130301802,lv = 2}}},--噬日技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301801,lv = 3},[2] = {id = 130301802,lv = 3}}},--噬日技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301801,lv = 4},[2] = {id = 130301802,lv = 4}}},--噬日技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301801,lv = 5},[2] = {id = 130301802,lv = 5}}},--噬日技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301801,lv = 6},[2] = {id = 130301802,lv = 6}}},--噬日技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301801,lv = 7},[2] = {id = 130301802,lv = 7}}},--噬日技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301801,lv = 8},[2] = {id = 130301802,lv = 8}}},--噬日技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301801,lv = 9},[2] = {id = 130301802,lv = 9}}},--噬日技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301801,lv = 10},[2] = {id = 130301802,lv = 10}}}--噬日技能
		}
	},--噬日技能
	[1303019] = {
		ShowId = 1303019,
		Name = "食火蜥之护",
		CardBelong = 1102019,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 4,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303019",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130301909,
		lvs = {
			[1] = {Effects = {[1] = {id = 130301901,lv = 1}}},--食火蜥技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301901,lv = 2}}},--食火蜥技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301901,lv = 3}}},--食火蜥技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301901,lv = 4}}},--食火蜥技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301901,lv = 5}}},--食火蜥技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301901,lv = 6}}},--食火蜥技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301901,lv = 7}}},--食火蜥技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301901,lv = 8}}},--食火蜥技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301901,lv = 9}}},--食火蜥技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130301901,lv = 10}}}--食火蜥技能
		}
	},--食火蜥技能
	[1303020] = {
		ShowId = 1303020,
		Name = "幽冥陷阵弑",
		CardBelong = 1102020,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303020",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130302009,
		lvs = {
			[1] = {Effects = {[1] = {id = 130302001,lv = 1},[2] = {id = 130302002,lv = 1},[3] = {id = 130302003,lv = 1}}},--高顺技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302001,lv = 2},[2] = {id = 130302002,lv = 2},[3] = {id = 130302003,lv = 2}}},--高顺技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302001,lv = 3},[2] = {id = 130302002,lv = 3},[3] = {id = 130302003,lv = 3}}},--高顺技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302001,lv = 4},[2] = {id = 130302002,lv = 4},[3] = {id = 130302003,lv = 4}}},--高顺技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302001,lv = 5},[2] = {id = 130302002,lv = 5},[3] = {id = 130302003,lv = 5}}},--高顺技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302001,lv = 6},[2] = {id = 130302002,lv = 6},[3] = {id = 130302003,lv = 6}}},--高顺技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302001,lv = 7},[2] = {id = 130302002,lv = 7},[3] = {id = 130302003,lv = 7}}},--高顺技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302001,lv = 8},[2] = {id = 130302002,lv = 8},[3] = {id = 130302003,lv = 8}}},--高顺技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302001,lv = 9},[2] = {id = 130302002,lv = 9},[3] = {id = 130302003,lv = 9}}},--高顺技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302001,lv = 10},[2] = {id = 130302002,lv = 10},[3] = {id = 130302003,lv = 10}}}--高顺技能
		}
	},--高顺技能
	[1303021] = {
		ShowId = 1303021,
		Name = "烈风绝击",
		CardBelong = 1102021,
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 5,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303021",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130302109,
		lvs = {
			[1] = {Effects = {[1] = {id = 130302101,lv = 1},[2] = {id = 130302102,lv = 1}}},--烈风螳螂技能
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302101,lv = 2},[2] = {id = 130302102,lv = 2}}},--烈风螳螂技能
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302101,lv = 3},[2] = {id = 130302102,lv = 3}}},--烈风螳螂技能
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302101,lv = 4},[2] = {id = 130302102,lv = 4}}},--烈风螳螂技能
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302101,lv = 5},[2] = {id = 130302102,lv = 5}}},--烈风螳螂技能
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302101,lv = 6},[2] = {id = 130302102,lv = 6}}},--烈风螳螂技能
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302101,lv = 7},[2] = {id = 130302102,lv = 7}}},--烈风螳螂技能
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302101,lv = 8},[2] = {id = 130302102,lv = 8}}},--烈风螳螂技能
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302101,lv = 9},[2] = {id = 130302102,lv = 9}}},--烈风螳螂技能
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130302101,lv = 10},[2] = {id = 130302102,lv = 10}}}--烈风螳螂技能
		}
	},--烈风螳螂技能
	[1303030] = {
		ShowId = 1303030,
		Name = "普通攻击",
		CardBelong = 1102022,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303030",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 1}}},--燕青普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 11}},Effects = {[1] = {id = 130600102,lv = 2}}},--燕青普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 12}},Effects = {[1] = {id = 130600103,lv = 3}}},--燕青普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 13}},Effects = {[1] = {id = 130600104,lv = 4}}},--燕青普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 14}},Effects = {[1] = {id = 130600105,lv = 5}}},--燕青普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 15}},Effects = {[1] = {id = 130600106,lv = 6}}},--燕青普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 16}},Effects = {[1] = {id = 130600107,lv = 7}}},--燕青普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 17}},Effects = {[1] = {id = 130600108,lv = 8}}},--燕青普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 18}},Effects = {[1] = {id = 130600109,lv = 9}}},--燕青普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 19}},Effects = {[1] = {id = 130600110,lv = 10}}},--燕青技能
			[11] = {Cost = {[1] = {Id = 1401005,Val = 20}},Effects = {[1] = {id = 130600111,lv = 11}}},--燕青技能
			[12] = {Cost = {[1] = {Id = 1401005,Val = 21}},Effects = {[1] = {id = 130600112,lv = 12}}},--燕青技能
			[13] = {Cost = {[1] = {Id = 1401005,Val = 22}},Effects = {[1] = {id = 130600113,lv = 13}}},--燕青技能
			[14] = {Cost = {[1] = {Id = 1401005,Val = 23}},Effects = {[1] = {id = 130600114,lv = 14}}},--燕青技能
			[15] = {Cost = {[1] = {Id = 1401005,Val = 24}},Effects = {[1] = {id = 130600115,lv = 15}}},--燕青技能
			[16] = {Cost = {[1] = {Id = 1401005,Val = 25}},Effects = {[1] = {id = 130600116,lv = 16}}},--燕青技能
			[17] = {Cost = {[1] = {Id = 1401005,Val = 26}},Effects = {[1] = {id = 130600117,lv = 17}}},--燕青技能
			[18] = {Cost = {[1] = {Id = 1401005,Val = 27}},Effects = {[1] = {id = 130600118,lv = 18}}},--燕青技能
			[19] = {Cost = {[1] = {Id = 1401005,Val = 28}},Effects = {[1] = {id = 130600119,lv = 19}}}--燕青技能
		}
	},--燕青技能
	[1304001] = {
		ShowId = 1304001,
		Name = "怒斩",
		Quality = 2,
		SkillType = 2,
		FireType = 3,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304001",
		SkillEffectType = 1,
		ShowFireType = 3,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130400101,lv = 1},[2] = {id = 130400102,lv = 1}}},--怒斩
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400101,lv = 2},[2] = {id = 130400102,lv = 2}}},--怒斩
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400101,lv = 3},[2] = {id = 130400102,lv = 3}}},--怒斩
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400101,lv = 4},[2] = {id = 130400102,lv = 4}}},--怒斩
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400101,lv = 5},[2] = {id = 130400102,lv = 5}}},--怒斩
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400101,lv = 6},[2] = {id = 130400102,lv = 6}}},--怒斩
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400101,lv = 7},[2] = {id = 130400102,lv = 7}}},--怒斩
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400101,lv = 8},[2] = {id = 130400102,lv = 8}}},--怒斩
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400101,lv = 9},[2] = {id = 130400102,lv = 9}}},--怒斩
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400101,lv = 10},[2] = {id = 130400102,lv = 10}}}--怒斩
		}
	},--怒斩
	[1304002] = {
		ShowId = 1304002,
		Name = "禁断之刃",
		Quality = 3,
		SkillType = 2,
		FireType = 3,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1304002",
		SkillEffectType = 1,
		ShowFireType = 3,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130400201,lv = 1},[2] = {id = 130400202,lv = 1},[3] = {id = 130400203,lv = 1}}},--禁断之刃
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400201,lv = 2},[2] = {id = 130400202,lv = 2},[3] = {id = 130400203,lv = 2}}},--禁断之刃
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400201,lv = 3},[2] = {id = 130400202,lv = 3},[3] = {id = 130400203,lv = 3}}},--禁断之刃
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400201,lv = 4},[2] = {id = 130400202,lv = 4},[3] = {id = 130400203,lv = 4}}},--禁断之刃
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400201,lv = 5},[2] = {id = 130400202,lv = 5},[3] = {id = 130400203,lv = 5}}},--禁断之刃
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400201,lv = 6},[2] = {id = 130400202,lv = 6},[3] = {id = 130400203,lv = 6}}},--禁断之刃
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400201,lv = 7},[2] = {id = 130400202,lv = 7},[3] = {id = 130400203,lv = 7}}},--禁断之刃
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400201,lv = 8},[2] = {id = 130400202,lv = 8},[3] = {id = 130400203,lv = 8}}},--禁断之刃
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400201,lv = 9},[2] = {id = 130400202,lv = 9},[3] = {id = 130400203,lv = 9}}},--禁断之刃
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400201,lv = 10},[2] = {id = 130400202,lv = 10},[3] = {id = 130400203,lv = 10}}}--禁断之刃
		}
	},--禁断之刃
	[1304003] = {
		ShowId = 1304003,
		Name = "抽刀断水",
		Quality = 3,
		SkillType = 2,
		FireType = 3,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 1,
		Icon = "icon_1304003",
		SkillEffectType = 1,
		ShowFireType = 3,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130400301,lv = 1},[2] = {id = 130400302,lv = 1},[3] = {id = 130400303,lv = 1},[4] = {id = 130400304,lv = 1},[5] = {id = 130400305,lv = 1}}},--抽刀断水
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400301,lv = 2},[2] = {id = 130400302,lv = 2},[3] = {id = 130400303,lv = 2},[4] = {id = 130400304,lv = 2},[5] = {id = 130400305,lv = 2}}},--抽刀断水
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400301,lv = 3},[2] = {id = 130400302,lv = 3},[3] = {id = 130400303,lv = 3},[4] = {id = 130400304,lv = 3},[5] = {id = 130400305,lv = 3}}},--抽刀断水
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400301,lv = 4},[2] = {id = 130400302,lv = 4},[3] = {id = 130400303,lv = 4},[4] = {id = 130400304,lv = 4},[5] = {id = 130400305,lv = 4}}},--抽刀断水
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400301,lv = 5},[2] = {id = 130400302,lv = 5},[3] = {id = 130400303,lv = 5},[4] = {id = 130400304,lv = 5},[5] = {id = 130400305,lv = 5}}},--抽刀断水
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400301,lv = 6},[2] = {id = 130400302,lv = 6},[3] = {id = 130400303,lv = 6},[4] = {id = 130400304,lv = 6},[5] = {id = 130400305,lv = 6}}},--抽刀断水
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400301,lv = 7},[2] = {id = 130400302,lv = 7},[3] = {id = 130400303,lv = 7},[4] = {id = 130400304,lv = 7},[5] = {id = 130400305,lv = 7}}},--抽刀断水
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400301,lv = 8},[2] = {id = 130400302,lv = 8},[3] = {id = 130400303,lv = 8},[4] = {id = 130400304,lv = 8},[5] = {id = 130400305,lv = 8}}},--抽刀断水
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400301,lv = 9},[2] = {id = 130400302,lv = 9},[3] = {id = 130400303,lv = 9},[4] = {id = 130400304,lv = 9},[5] = {id = 130400305,lv = 9}}},--抽刀断水
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400301,lv = 10},[2] = {id = 130400302,lv = 10},[3] = {id = 130400303,lv = 10},[4] = {id = 130400304,lv = 10},[5] = {id = 130400305,lv = 10}}}--抽刀断水
		}
	},--抽刀断水
	[1304004] = {
		ShowId = 1304004,
		Name = "蓄力猛攻",
		Quality = 4,
		SkillType = 2,
		FireType = 3,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 2,
		Icon = "icon_1304004",
		SkillEffectType = 1,
		ShowFireType = 3,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130400401,lv = 1},[2] = {id = 130400402,lv = 1}}},--蓄力猛攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400401,lv = 2},[2] = {id = 130400402,lv = 2}}},--蓄力猛攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400401,lv = 3},[2] = {id = 130400402,lv = 3}}},--蓄力猛攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400401,lv = 4},[2] = {id = 130400402,lv = 4}}},--蓄力猛攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400401,lv = 5},[2] = {id = 130400402,lv = 5}}},--蓄力猛攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400401,lv = 6},[2] = {id = 130400402,lv = 6}}},--蓄力猛攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400401,lv = 7},[2] = {id = 130400402,lv = 7}}},--蓄力猛攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400401,lv = 8},[2] = {id = 130400402,lv = 8}}},--蓄力猛攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400401,lv = 9},[2] = {id = 130400402,lv = 9}}},--蓄力猛攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400401,lv = 10},[2] = {id = 130400402,lv = 10}}}--蓄力猛攻
		}
	},--蓄力猛攻
	[1304005] = {
		ShowId = 1304005,
		Name = "狂暴一击",
		Quality = 4,
		SkillType = 2,
		FireType = 3,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 2,
		Icon = "icon_1304005",
		SkillEffectType = 1,
		ShowFireType = 3,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130400501,lv = 1},[2] = {id = 130400502,lv = 1},[3] = {id = 130400503,lv = 1}}},--狂暴一击
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400501,lv = 2},[2] = {id = 130400502,lv = 2},[3] = {id = 130400503,lv = 2}}},--狂暴一击
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400501,lv = 3},[2] = {id = 130400502,lv = 3},[3] = {id = 130400503,lv = 3}}},--狂暴一击
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400501,lv = 4},[2] = {id = 130400502,lv = 4},[3] = {id = 130400503,lv = 4}}},--狂暴一击
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400501,lv = 5},[2] = {id = 130400502,lv = 5},[3] = {id = 130400503,lv = 5}}},--狂暴一击
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400501,lv = 6},[2] = {id = 130400502,lv = 6},[3] = {id = 130400503,lv = 6}}},--狂暴一击
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400501,lv = 7},[2] = {id = 130400502,lv = 7},[3] = {id = 130400503,lv = 7}}},--狂暴一击
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400501,lv = 8},[2] = {id = 130400502,lv = 8},[3] = {id = 130400503,lv = 8}}},--狂暴一击
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400501,lv = 9},[2] = {id = 130400502,lv = 9},[3] = {id = 130400503,lv = 9}}},--狂暴一击
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400501,lv = 10},[2] = {id = 130400502,lv = 10},[3] = {id = 130400503,lv = 10}}}--狂暴一击
		}
	},--狂暴一击
	[1304006] = {
		ShowId = 1304006,
		Name = "殇魂",
		Quality = 3,
		SkillType = 2,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304006",
		SkillEffectType = 3,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130400601,lv = 1},[2] = {id = 130400602,lv = 1}}},--殇魂秘术
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400601,lv = 2},[2] = {id = 130400602,lv = 2}}},--殇魂秘术
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400601,lv = 3},[2] = {id = 130400602,lv = 3}}},--殇魂秘术
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400601,lv = 4},[2] = {id = 130400602,lv = 4}}},--殇魂秘术
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400601,lv = 5},[2] = {id = 130400602,lv = 5}}},--殇魂秘术
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400601,lv = 6},[2] = {id = 130400602,lv = 6}}},--殇魂秘术
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400601,lv = 7},[2] = {id = 130400602,lv = 7}}},--殇魂秘术
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400601,lv = 8},[2] = {id = 130400602,lv = 8}}},--殇魂秘术
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400601,lv = 9},[2] = {id = 130400602,lv = 9}}},--殇魂秘术
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400601,lv = 10},[2] = {id = 130400602,lv = 10}}}--殇魂秘术
		}
	},--殇魂秘术
	[1304007] = {
		ShowId = 1304007,
		Name = "斩灵",
		Quality = 3,
		SkillType = 2,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304007",
		SkillEffectType = 3,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130400701,lv = 1},[2] = {id = 130400702,lv = 1}}},--斩灵秘术
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400701,lv = 2},[2] = {id = 130400702,lv = 2}}},--斩灵秘术
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400701,lv = 3},[2] = {id = 130400702,lv = 3}}},--斩灵秘术
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400701,lv = 4},[2] = {id = 130400702,lv = 4}}},--斩灵秘术
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400701,lv = 5},[2] = {id = 130400702,lv = 5}}},--斩灵秘术
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400701,lv = 6},[2] = {id = 130400702,lv = 6}}},--斩灵秘术
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400701,lv = 7},[2] = {id = 130400702,lv = 7}}},--斩灵秘术
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400701,lv = 8},[2] = {id = 130400702,lv = 8}}},--斩灵秘术
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400701,lv = 9},[2] = {id = 130400702,lv = 9}}},--斩灵秘术
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400701,lv = 10},[2] = {id = 130400702,lv = 10}}}--斩灵秘术
		}
	},--斩灵秘术
	[1304008] = {
		ShowId = 1304008,
		Name = "炼魄",
		Quality = 3,
		SkillType = 2,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304008",
		SkillEffectType = 3,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130400801,lv = 1},[2] = {id = 130400802,lv = 1}}},--炼魄秘术
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400801,lv = 2},[2] = {id = 130400802,lv = 2}}},--炼魄秘术
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400801,lv = 3},[2] = {id = 130400802,lv = 3}}},--炼魄秘术
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400801,lv = 4},[2] = {id = 130400802,lv = 4}}},--炼魄秘术
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400801,lv = 5},[2] = {id = 130400802,lv = 5}}},--炼魄秘术
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400801,lv = 6},[2] = {id = 130400802,lv = 6}}},--炼魄秘术
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400801,lv = 7},[2] = {id = 130400802,lv = 7}}},--炼魄秘术
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400801,lv = 8},[2] = {id = 130400802,lv = 8}}},--炼魄秘术
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400801,lv = 9},[2] = {id = 130400802,lv = 9}}},--炼魄秘术
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400801,lv = 10},[2] = {id = 130400802,lv = 10}}}--炼魄秘术
		}
	},--炼魄秘术
	[1304009] = {
		ShowId = 1304009,
		Name = "回春妙术",
		Quality = 3,
		SkillType = 2,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 3,
		Icon = "icon_1304009",
		SkillEffectType = 3,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130400901,lv = 1},[2] = {id = 130400902,lv = 1}}},--回春妙术
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400901,lv = 2},[2] = {id = 130400902,lv = 2}}},--回春妙术
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400901,lv = 3},[2] = {id = 130400902,lv = 3}}},--回春妙术
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400901,lv = 4},[2] = {id = 130400902,lv = 4}}},--回春妙术
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400901,lv = 5},[2] = {id = 130400902,lv = 5}}},--回春妙术
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400901,lv = 6},[2] = {id = 130400902,lv = 6}}},--回春妙术
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400901,lv = 7},[2] = {id = 130400902,lv = 7}}},--回春妙术
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400901,lv = 8},[2] = {id = 130400902,lv = 8}}},--回春妙术
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400901,lv = 9},[2] = {id = 130400902,lv = 9}}},--回春妙术
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130400901,lv = 10},[2] = {id = 130400902,lv = 10}}}--回春妙术
		}
	},--回春妙术
	[1304010] = {
		ShowId = 1304010,
		Name = "明灭攻心",
		Quality = 3,
		SkillType = 2,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304010",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130401001,lv = 1},[2] = {id = 130401002,lv = 1}}},--奇门化伤
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401001,lv = 2},[2] = {id = 130401002,lv = 2}}},--奇门化伤
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401001,lv = 3},[2] = {id = 130401002,lv = 3}}},--奇门化伤
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401001,lv = 4},[2] = {id = 130401002,lv = 4}}},--奇门化伤
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401001,lv = 5},[2] = {id = 130401002,lv = 5}}},--奇门化伤
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401001,lv = 6},[2] = {id = 130401002,lv = 6}}},--奇门化伤
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401001,lv = 7},[2] = {id = 130401002,lv = 7}}},--奇门化伤
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401001,lv = 8},[2] = {id = 130401002,lv = 8}}},--奇门化伤
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401001,lv = 9},[2] = {id = 130401002,lv = 9}}},--奇门化伤
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401001,lv = 10},[2] = {id = 130401002,lv = 10}}}--奇门化伤
		}
	},--奇门化伤
	[1304011] = {
		ShowId = 1304011,
		Name = "追云逐月",
		Quality = 3,
		SkillType = 2,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304011",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130401101,lv = 1},[2] = {id = 130401102,lv = 1}}},--枕戈坐甲
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401101,lv = 2},[2] = {id = 130401102,lv = 2}}},--枕戈坐甲
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401101,lv = 3},[2] = {id = 130401102,lv = 3}}},--枕戈坐甲
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401101,lv = 4},[2] = {id = 130401102,lv = 4}}},--枕戈坐甲
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401101,lv = 5},[2] = {id = 130401102,lv = 5}}},--枕戈坐甲
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401101,lv = 6},[2] = {id = 130401102,lv = 6}}},--枕戈坐甲
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401101,lv = 7},[2] = {id = 130401102,lv = 7}}},--枕戈坐甲
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401101,lv = 8},[2] = {id = 130401102,lv = 8}}},--枕戈坐甲
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401101,lv = 9},[2] = {id = 130401102,lv = 9}}},--枕戈坐甲
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401101,lv = 10},[2] = {id = 130401102,lv = 10}}}--枕戈坐甲
		}
	},--枕戈坐甲
	[1304012] = {
		ShowId = 1304012,
		Name = "千机乱舞",
		Quality = 3,
		SkillType = 2,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304012",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130401201,lv = 1},[2] = {id = 130401202,lv = 1}}},--千机乱舞
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401201,lv = 2},[2] = {id = 130401202,lv = 2}}},--千机乱舞
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401201,lv = 3},[2] = {id = 130401202,lv = 3}}},--千机乱舞
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401201,lv = 4},[2] = {id = 130401202,lv = 4}}},--千机乱舞
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401201,lv = 5},[2] = {id = 130401202,lv = 5}}},--千机乱舞
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401201,lv = 6},[2] = {id = 130401202,lv = 6}}},--千机乱舞
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401201,lv = 7},[2] = {id = 130401202,lv = 7}}},--千机乱舞
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401201,lv = 8},[2] = {id = 130401202,lv = 8}}},--千机乱舞
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401201,lv = 9},[2] = {id = 130401202,lv = 9}}},--千机乱舞
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401201,lv = 10},[2] = {id = 130401202,lv = 10}}}--千机乱舞
		}
	},--千机乱舞
	[1304013] = {
		ShowId = 1304013,
		Name = "碎玉",
		Quality = 4,
		SkillType = 2,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 2,
		Icon = "icon_1304013",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130401301,lv = 1},[2] = {id = 130401302,lv = 1}}},--碎玉
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401301,lv = 2},[2] = {id = 130401302,lv = 2}}},--碎玉
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401301,lv = 3},[2] = {id = 130401302,lv = 3}}},--碎玉
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401301,lv = 4},[2] = {id = 130401302,lv = 4}}},--碎玉
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401301,lv = 5},[2] = {id = 130401302,lv = 5}}},--碎玉
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401301,lv = 6},[2] = {id = 130401302,lv = 6}}},--碎玉
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401301,lv = 7},[2] = {id = 130401302,lv = 7}}},--碎玉
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401301,lv = 8},[2] = {id = 130401302,lv = 8}}},--碎玉
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401301,lv = 9},[2] = {id = 130401302,lv = 9}}},--碎玉
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401301,lv = 10},[2] = {id = 130401302,lv = 10}}}--碎玉
		}
	},--碎玉
	[1304014] = {
		ShowId = 1304014,
		Name = "焚金",
		Quality = 4,
		SkillType = 2,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 2,
		Icon = "icon_1304014",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130401401,lv = 1},[2] = {id = 130401402,lv = 1}}},--焚金
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401401,lv = 2},[2] = {id = 130401402,lv = 2}}},--焚金
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401401,lv = 3},[2] = {id = 130401402,lv = 3}}},--焚金
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401401,lv = 4},[2] = {id = 130401402,lv = 4}}},--焚金
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401401,lv = 5},[2] = {id = 130401402,lv = 5}}},--焚金
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401401,lv = 6},[2] = {id = 130401402,lv = 6}}},--焚金
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401401,lv = 7},[2] = {id = 130401402,lv = 7}}},--焚金
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401401,lv = 8},[2] = {id = 130401402,lv = 8}}},--焚金
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401401,lv = 9},[2] = {id = 130401402,lv = 9}}},--焚金
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401401,lv = 10},[2] = {id = 130401402,lv = 10}}}--焚金
		}
	},--焚金
	[1304015] = {
		ShowId = 1304015,
		Name = "封脉",
		Quality = 2,
		SkillType = 2,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304015",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130401501,lv = 1},[2] = {id = 130401502,lv = 1}}},--封脉
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401501,lv = 2},[2] = {id = 130401502,lv = 2}}},--封脉
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401501,lv = 3},[2] = {id = 130401502,lv = 3}}},--封脉
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401501,lv = 4},[2] = {id = 130401502,lv = 4}}},--封脉
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401501,lv = 5},[2] = {id = 130401502,lv = 5}}},--封脉
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401501,lv = 6},[2] = {id = 130401502,lv = 6}}},--封脉
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401501,lv = 7},[2] = {id = 130401502,lv = 7}}},--封脉
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401501,lv = 8},[2] = {id = 130401502,lv = 8}}},--封脉
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401501,lv = 9},[2] = {id = 130401502,lv = 9}}},--封脉
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401501,lv = 10},[2] = {id = 130401502,lv = 10}}}--封脉
		}
	},--封脉
	[1304016] = {
		ShowId = 1304016,
		Name = "铁胆灵心",
		Quality = 3,
		SkillType = 2,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304016",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130401601,lv = 1},[2] = {id = 130401602,lv = 1}}},--铁胆灵心
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401601,lv = 2},[2] = {id = 130401602,lv = 2}}},--铁胆灵心
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401601,lv = 3},[2] = {id = 130401602,lv = 3}}},--铁胆灵心
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401601,lv = 4},[2] = {id = 130401602,lv = 4}}},--铁胆灵心
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401601,lv = 5},[2] = {id = 130401602,lv = 5}}},--铁胆灵心
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401601,lv = 6},[2] = {id = 130401602,lv = 6}}},--铁胆灵心
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401601,lv = 7},[2] = {id = 130401602,lv = 7}}},--铁胆灵心
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401601,lv = 8},[2] = {id = 130401602,lv = 8}}},--铁胆灵心
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401601,lv = 9},[2] = {id = 130401602,lv = 9}}},--铁胆灵心
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130401601,lv = 10},[2] = {id = 130401602,lv = 10}}}--铁胆灵心
		}
	},--铁胆灵心
	[1306001] = {
		ShowId = 1306001,
		Name = "普通攻击",
		CardBelong = 1101001,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306001",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600101,lv = 1},[2] = {id = 130600102,lv = 1}},Description = "这就是描述"},--常服曹焱兵普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 2},[2] = {id = 130600102,lv = 2}},Description = "这就是描述"},--常服曹焱兵普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 3},[2] = {id = 130600102,lv = 3}},Description = "这就是描述"},--常服曹焱兵普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 4},[2] = {id = 130600102,lv = 4}},Description = "这就是描述"},--常服曹焱兵普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 5},[2] = {id = 130600102,lv = 5}},Description = "这就是描述"},--常服曹焱兵普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 6},[2] = {id = 130600102,lv = 6}},Description = "这就是描述"},--常服曹焱兵普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 7},[2] = {id = 130600102,lv = 7}},Description = "这就是描述"},--常服曹焱兵普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 8},[2] = {id = 130600102,lv = 8}},Description = "这就是描述"},--常服曹焱兵普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 9},[2] = {id = 130600102,lv = 9}},Description = "这就是描述"},--常服曹焱兵普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 10},[2] = {id = 130600102,lv = 10}},Description = "这就是描述"}--常服曹焱兵普攻
		}
	},--常服曹焱兵普攻
	[1306002] = {
		ShowId = 1306002,
		Name = "普通攻击",
		CardBelong = 1101002,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306002",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600201,lv = 1},[2] = {id = 130600202,lv = 1}},Description = "这就是描述"},--曹玄亮普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600201,lv = 2},[2] = {id = 130600202,lv = 2}},Description = "这就是描述"},--曹玄亮普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600201,lv = 3},[2] = {id = 130600202,lv = 3}},Description = "这就是描述"},--曹玄亮普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600201,lv = 4},[2] = {id = 130600202,lv = 4}},Description = "这就是描述"},--曹玄亮普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600201,lv = 5},[2] = {id = 130600202,lv = 5}},Description = "这就是描述"},--曹玄亮普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600201,lv = 6},[2] = {id = 130600202,lv = 6}},Description = "这就是描述"},--曹玄亮普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600201,lv = 7},[2] = {id = 130600202,lv = 7}},Description = "这就是描述"},--曹玄亮普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600201,lv = 8},[2] = {id = 130600202,lv = 8}},Description = "这就是描述"},--曹玄亮普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600201,lv = 9},[2] = {id = 130600202,lv = 9}},Description = "这就是描述"},--曹玄亮普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600201,lv = 10},[2] = {id = 130600202,lv = 10}},Description = "这就是描述"}--曹玄亮普攻
		}
	},--曹玄亮普攻
	[1306003] = {
		ShowId = 1306003,
		Name = "普通攻击",
		CardBelong = 1101003,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306003",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600301,lv = 1},[2] = {id = 130600302,lv = 1}},Description = "这就是描述"},--战斗夏玲普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600301,lv = 2},[2] = {id = 130600302,lv = 2}},Description = "这就是描述"},--战斗夏玲普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600301,lv = 3},[2] = {id = 130600302,lv = 3}},Description = "这就是描述"},--战斗夏玲普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600301,lv = 4},[2] = {id = 130600302,lv = 4}},Description = "这就是描述"},--战斗夏玲普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600301,lv = 5},[2] = {id = 130600302,lv = 5}},Description = "这就是描述"},--战斗夏玲普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600301,lv = 6},[2] = {id = 130600302,lv = 6}},Description = "这就是描述"},--战斗夏玲普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600301,lv = 7},[2] = {id = 130600302,lv = 7}},Description = "这就是描述"},--战斗夏玲普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600301,lv = 8},[2] = {id = 130600302,lv = 8}},Description = "这就是描述"},--战斗夏玲普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600301,lv = 9},[2] = {id = 130600302,lv = 9}},Description = "这就是描述"},--战斗夏玲普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600301,lv = 10},[2] = {id = 130600302,lv = 10}},Description = "这就是描述"}--战斗夏玲普攻
		}
	},--战斗夏玲普攻
	[1306004] = {
		ShowId = 1306004,
		Name = "普通攻击",
		CardBelong = 1101004,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306004",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600401,lv = 1},[2] = {id = 130600402,lv = 1}},Description = "这就是描述"},--项昆仑普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600401,lv = 2},[2] = {id = 130600402,lv = 2}},Description = "这就是描述"},--项昆仑普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600401,lv = 3},[2] = {id = 130600402,lv = 3}},Description = "这就是描述"},--项昆仑普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600401,lv = 4},[2] = {id = 130600402,lv = 4}},Description = "这就是描述"},--项昆仑普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600401,lv = 5},[2] = {id = 130600402,lv = 5}},Description = "这就是描述"},--项昆仑普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600401,lv = 6},[2] = {id = 130600402,lv = 6}},Description = "这就是描述"},--项昆仑普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600401,lv = 7},[2] = {id = 130600402,lv = 7}},Description = "这就是描述"},--项昆仑普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600401,lv = 8},[2] = {id = 130600402,lv = 8}},Description = "这就是描述"},--项昆仑普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600401,lv = 9},[2] = {id = 130600402,lv = 9}},Description = "这就是描述"},--项昆仑普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600401,lv = 10},[2] = {id = 130600402,lv = 10}},Description = "攻击敌方1次，造成攻击100%伤害获得1个黄色水晶"}--项昆仑普攻
		}
	},--项昆仑普攻
	[1306005] = {
		ShowId = 1306005,
		Name = "普通攻击",
		CardBelong = 1101005,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306005",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600501,lv = 1},[2] = {id = 130600502,lv = 1}},Description = "攻击敌方1次，造成攻击100%伤害获得2个黄色水晶"},--刘羽禅普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600501,lv = 2},[2] = {id = 130600502,lv = 2}},Description = "攻击敌方1次，造成攻击100%伤害获得3个黄色水晶"},--刘羽禅普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600501,lv = 3},[2] = {id = 130600502,lv = 3}},Description = "攻击敌方1次，造成攻击100%伤害获得4个黄色水晶"},--刘羽禅普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600501,lv = 4},[2] = {id = 130600502,lv = 4}},Description = "攻击敌方1次，造成攻击100%伤害获得5个黄色水晶"},--刘羽禅普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600501,lv = 5},[2] = {id = 130600502,lv = 5}},Description = "限制对方单体行动1回合50%几率减少对方1个红色水晶CD1回合"},--刘羽禅普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600501,lv = 6},[2] = {id = 130600502,lv = 6}},Description = "升级描述"},--刘羽禅普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600501,lv = 7},[2] = {id = 130600502,lv = 7}},Description = "升级描述"},--刘羽禅普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600501,lv = 8},[2] = {id = 130600502,lv = 8}},Description = "升级描述"},--刘羽禅普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600501,lv = 9},[2] = {id = 130600502,lv = 9}},Description = "升级描述"},--刘羽禅普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600501,lv = 10},[2] = {id = 130600502,lv = 10}},Description = "攻击敌方前排单体造成攻击80%伤害50%概率获得1个红色水晶"}--刘羽禅普攻
		}
	},--刘羽禅普攻
	[1306006] = {
		ShowId = 1306006,
		Name = "普通攻击",
		CardBelong = 1101006,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306006",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600601,lv = 1},[2] = {id = 130600602,lv = 1}},Description = "升级描述"},--红莲缇娜普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600601,lv = 2},[2] = {id = 130600602,lv = 2}},Description = "升级描述"},--红莲缇娜普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600601,lv = 3},[2] = {id = 130600602,lv = 3}},Description = "升级描述"},--红莲缇娜普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600601,lv = 4},[2] = {id = 130600602,lv = 4}},Description = "升级描述"},--红莲缇娜普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600601,lv = 5},[2] = {id = 130600602,lv = 5}},Description = "攻击敌方单体造成攻击150%伤害50%概率获得1个红色水晶"},--红莲缇娜普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600601,lv = 6},[2] = {id = 130600602,lv = 6}},Description = "升级描述"},--红莲缇娜普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600601,lv = 7},[2] = {id = 130600602,lv = 7}},Description = "升级描述"},--红莲缇娜普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600601,lv = 8},[2] = {id = 130600602,lv = 8}},Description = "升级描述"},--红莲缇娜普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600601,lv = 9},[2] = {id = 130600602,lv = 9}},Description = "升级描述"},--红莲缇娜普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600601,lv = 10},[2] = {id = 130600602,lv = 10}},Description = "生成1个蓝色水晶"}--红莲缇娜普攻
		}
	},--红莲缇娜普攻
	[1306007] = {
		ShowId = 1306007,
		Name = "普通攻击",
		CardBelong = 1101007,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306007",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600701,lv = 1},[2] = {id = 130600702,lv = 1}},Description = "升级描述"},--战斗曹焱兵普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600701,lv = 2},[2] = {id = 130600702,lv = 2}},Description = "升级描述"},--战斗曹焱兵普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600701,lv = 3},[2] = {id = 130600702,lv = 3}},Description = "升级描述"},--战斗曹焱兵普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600701,lv = 4},[2] = {id = 130600702,lv = 4}},Description = "升级描述"},--战斗曹焱兵普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600701,lv = 5},[2] = {id = 130600702,lv = 5}},Description = "每回合有50%几率额外生成1个蓝色水晶"},--战斗曹焱兵普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600701,lv = 6},[2] = {id = 130600702,lv = 6}},Description = "升级描述"},--战斗曹焱兵普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600701,lv = 7},[2] = {id = 130600702,lv = 7}},Description = "升级描述"},--战斗曹焱兵普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600701,lv = 8},[2] = {id = 130600702,lv = 8}},Description = "升级描述"},--战斗曹焱兵普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600701,lv = 9},[2] = {id = 130600702,lv = 9}},Description = "升级描述"},--战斗曹焱兵普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600701,lv = 10},[2] = {id = 130600702,lv = 10}},Description = "攻击敌方单体造成1点伤害，并回复伤害值一半的生命"}--战斗曹焱兵普攻
		}
	},--战斗曹焱兵普攻
	[1306008] = {
		ShowId = 1306008,
		Name = "普通攻击",
		CardBelong = 1101008,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306008",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600801,lv = 1},[2] = {id = 130600802,lv = 1}},Description = "升级描述"},--黑尔坎普普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600801,lv = 2},[2] = {id = 130600802,lv = 2}},Description = "升级描述"},--黑尔坎普普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600801,lv = 3},[2] = {id = 130600802,lv = 3}},Description = "升级描述"},--黑尔坎普普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600801,lv = 4},[2] = {id = 130600802,lv = 4}},Description = "升级描述"},--黑尔坎普普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600801,lv = 5},[2] = {id = 130600802,lv = 5}},Description = "蓄力1回合，获得1枚印记，项羽或者其守护灵的下一次攻击将会消耗全部印记，每一枚增加3点伤害，印记最多同时拥有5枚"},--黑尔坎普普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600801,lv = 6},[2] = {id = 130600802,lv = 6}},Description = "升级描述"},--黑尔坎普普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600801,lv = 7},[2] = {id = 130600802,lv = 7}},Description = "升级描述"},--黑尔坎普普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600801,lv = 8},[2] = {id = 130600802,lv = 8}},Description = "升级描述"},--黑尔坎普普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600801,lv = 9},[2] = {id = 130600802,lv = 9}},Description = "升级描述"},--黑尔坎普普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600801,lv = 10},[2] = {id = 130600802,lv = 10}},Description = "为自己生成2点护盾回复1个黄色水晶"}--黑尔坎普普攻
		}
	},--黑尔坎普普攻
	[1306009] = {
		ShowId = 1306009,
		Name = "普通攻击",
		CardBelong = 1101009,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306009",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130600901,lv = 1},[2] = {id = 130600902,lv = 1}},Description = "升级描述"},--北落师门普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600901,lv = 2},[2] = {id = 130600902,lv = 2}},Description = "升级描述"},--北落师门普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600901,lv = 3},[2] = {id = 130600902,lv = 3}},Description = "升级描述"},--北落师门普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600901,lv = 4},[2] = {id = 130600902,lv = 4}},Description = "升级描述"},--北落师门普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600901,lv = 5},[2] = {id = 130600902,lv = 5}},Description = "刘羽禅的守护灵每次攻击可以额外造成1点伤害"},--北落师门普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600901,lv = 6},[2] = {id = 130600902,lv = 6}},Description = "升级描述"},--北落师门普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600901,lv = 7},[2] = {id = 130600902,lv = 7}},Description = "升级描述"},--北落师门普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600901,lv = 8},[2] = {id = 130600902,lv = 8}},Description = "升级描述"},--北落师门普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600901,lv = 9},[2] = {id = 130600902,lv = 9}},Description = "升级描述"},--北落师门普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600901,lv = 10},[2] = {id = 130600902,lv = 10}},Description = "形成一个血魔印记，最多同时存在2个削减敌方随机颜色水晶一个"}--北落师门普攻
		}
	},--北落师门普攻
	[1306010] = {
		ShowId = 1306010,
		Name = "普通攻击",
		CardBelong = 1101010,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306010",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130601001,lv = 1},[2] = {id = 130601002,lv = 1}},Description = "升级描述"},--盖文普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601001,lv = 2},[2] = {id = 130601002,lv = 2}},Description = "升级描述"},--盖文普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601001,lv = 3},[2] = {id = 130601002,lv = 3}},Description = "升级描述"},--盖文普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601001,lv = 4},[2] = {id = 130601002,lv = 4}},Description = "升级描述"},--盖文普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601001,lv = 5},[2] = {id = 130601002,lv = 5}},Description = "消耗所有血魔印记，每一个印记恢复红莲缇娜25%最大生命值"},--盖文普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601001,lv = 6},[2] = {id = 130601002,lv = 6}},Description = "升级描述"},--盖文普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601001,lv = 7},[2] = {id = 130601002,lv = 7}},Description = "升级描述"},--盖文普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601001,lv = 8},[2] = {id = 130601002,lv = 8}},Description = "升级描述"},--盖文普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601001,lv = 9},[2] = {id = 130601002,lv = 9}},Description = "升级描述"},--盖文普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601001,lv = 10},[2] = {id = 130601002,lv = 10}},Description = "攻击敌方单体造成2点伤害并50%概率使目标眩晕1回合，冷却时间1回合"}--盖文普攻
		}
	},--盖文普攻
	[1306011] = {
		ShowId = 1306011,
		Name = "普通攻击",
		CardBelong = 1101011,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306011",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130601101,lv = 1},[2] = {id = 130601102,lv = 1}},Description = "升级描述"},--阎风吒普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601101,lv = 2},[2] = {id = 130601102,lv = 2}},Description = "升级描述"},--阎风吒普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601101,lv = 3},[2] = {id = 130601102,lv = 3}},Description = "升级描述"},--阎风吒普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601101,lv = 4},[2] = {id = 130601102,lv = 4}},Description = "升级描述"},--阎风吒普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601101,lv = 5},[2] = {id = 130601102,lv = 5}},Description = "对敌方前排全部单位造成1点伤害\r\n立即获得1个红色水晶"},--阎风吒普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601101,lv = 6},[2] = {id = 130601102,lv = 6}},Description = "升级描述"},--阎风吒普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601101,lv = 7},[2] = {id = 130601102,lv = 7}},Description = "升级描述"},--阎风吒普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601101,lv = 8},[2] = {id = 130601102,lv = 8}},Description = "升级描述"},--阎风吒普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601101,lv = 9},[2] = {id = 130601102,lv = 9}},Description = "升级描述"},--阎风吒普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601101,lv = 10},[2] = {id = 130601102,lv = 10}},Description = "攻击敌方1次，造成攻击100%伤害\r\n获得2个黄色水晶"}--阎风吒普攻
		}
	},--阎风吒普攻
	[1306012] = {
		ShowId = 1306012,
		Name = "普通攻击",
		CardBelong = 1101012,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306012",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130601201,lv = 1},[2] = {id = 130601202,lv = 1}},Description = "升级描述"},--南御夫普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601201,lv = 2},[2] = {id = 130601202,lv = 2}},Description = "升级描述"},--南御夫普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601201,lv = 3},[2] = {id = 130601202,lv = 3}},Description = "升级描述"},--南御夫普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601201,lv = 4},[2] = {id = 130601202,lv = 4}},Description = "升级描述"},--南御夫普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601201,lv = 5},[2] = {id = 130601202,lv = 5}},Description = "自己和寄灵人的每次攻击有50%几率额外造成20%伤害"},--南御夫普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601201,lv = 6},[2] = {id = 130601202,lv = 6}},Description = "升级描述"},--南御夫普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601201,lv = 7},[2] = {id = 130601202,lv = 7}},Description = "升级描述"},--南御夫普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601201,lv = 8},[2] = {id = 130601202,lv = 8}},Description = "升级描述"},--南御夫普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601201,lv = 9},[2] = {id = 130601202,lv = 9}},Description = "升级描述"},--南御夫普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601201,lv = 10},[2] = {id = 130601202,lv = 10}},Description = "对敌方单位进行2段攻击，每段攻击造成1点伤害，并对目标施加2枚印记，印记最多同时存在4枚(可被己方攻击引爆，造成额外伤害，每次攻击引爆1枚印记)"}--南御夫普攻
		}
	},--南御夫普攻
	[1306013] = {
		ShowId = 1306013,
		Name = "普通攻击",
		CardBelong = 1101013,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306013",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130601301,lv = 1},[2] = {id = 130601302,lv = 1}},Description = "升级描述"},--吉拉普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601301,lv = 2},[2] = {id = 130601302,lv = 2}},Description = "升级描述"},--吉拉普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601301,lv = 3},[2] = {id = 130601302,lv = 3}},Description = "升级描述"},--吉拉普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601301,lv = 4},[2] = {id = 130601302,lv = 4}},Description = "升级描述"},--吉拉普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601301,lv = 5},[2] = {id = 130601302,lv = 5}},Description = "自己与守护灵每段攻击都有50%概率获得1枚随机颜色的水晶"},--吉拉普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601301,lv = 6},[2] = {id = 130601302,lv = 6}},Description = "升级描述"},--吉拉普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601301,lv = 7},[2] = {id = 130601302,lv = 7}},Description = "升级描述"},--吉拉普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601301,lv = 8},[2] = {id = 130601302,lv = 8}},Description = "升级描述"},--吉拉普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601301,lv = 9},[2] = {id = 130601302,lv = 9}},Description = "升级描述"},--吉拉普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601301,lv = 10},[2] = {id = 130601302,lv = 10}},Description = "攻击敌方单体，造成2点伤害并为自己生成1点护盾（护盾不可叠加）"}--吉拉普攻
		}
	},--吉拉普攻
	[1306014] = {
		ShowId = 1306014,
		Name = "普通攻击",
		CardBelong = 1101014,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306014",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130601401,lv = 1},[2] = {id = 130601402,lv = 1}},Description = "升级描述"},--吕仙宫普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601401,lv = 2},[2] = {id = 130601402,lv = 2}},Description = "升级描述"},--吕仙宫普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601401,lv = 3},[2] = {id = 130601402,lv = 3}},Description = "升级描述"},--吕仙宫普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601401,lv = 4},[2] = {id = 130601402,lv = 4}},Description = "升级描述"},--吕仙宫普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601401,lv = 5},[2] = {id = 130601402,lv = 5}},Description = "水晶每有一个受到敌方影响（偷取、削减）为自身生成1个印记，每1枚印记可代替1个盖文召唤守护灵的水晶"},--吕仙宫普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601401,lv = 6},[2] = {id = 130601402,lv = 6}},Description = "升级描述"},--吕仙宫普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601401,lv = 7},[2] = {id = 130601402,lv = 7}},Description = "升级描述"},--吕仙宫普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601401,lv = 8},[2] = {id = 130601402,lv = 8}},Description = "升级描述"},--吕仙宫普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601401,lv = 9},[2] = {id = 130601402,lv = 9}},Description = "升级描述"},--吕仙宫普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601401,lv = 10},[2] = {id = 130601402,lv = 10}},Description = "对敌方单体目标造成2点伤害，并对该单位施加风神印记"}--吕仙宫普攻
		}
	},--吕仙宫普攻
	[1306015] = {
		ShowId = 1306015,
		Name = "普通攻击",
		CardBelong = 1101015,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306015",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130601501,lv = 1},[2] = {id = 130601502,lv = 1}},Description = "升级描述"},--阎巧巧普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601501,lv = 2},[2] = {id = 130601502,lv = 2}},Description = "升级描述"},--阎巧巧普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601501,lv = 3},[2] = {id = 130601502,lv = 3}},Description = "升级描述"},--阎巧巧普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601501,lv = 4},[2] = {id = 130601502,lv = 4}},Description = "升级描述"},--阎巧巧普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601501,lv = 5},[2] = {id = 130601502,lv = 5}},Description = "对敌方全体造成1点伤害，每个目标50%概率施加风神印记"},--阎巧巧普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601501,lv = 6},[2] = {id = 130601502,lv = 6}},Description = "升级描述"},--阎巧巧普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601501,lv = 7},[2] = {id = 130601502,lv = 7}},Description = "升级描述"},--阎巧巧普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601501,lv = 8},[2] = {id = 130601502,lv = 8}},Description = "升级描述"},--阎巧巧普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601501,lv = 9},[2] = {id = 130601502,lv = 9}},Description = "升级描述"},--阎巧巧普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601501,lv = 10},[2] = {id = 130601502,lv = 10}},Description = "攻击敌方单体造成1点伤害\r\n50%几率随机偷取对方1个水晶"}--阎巧巧普攻
		}
	},--阎巧巧普攻
	[1306017] = {
		ShowId = 1306017,
		Name = "普通攻击",
		CardBelong = 1101017,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306017",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130601701,lv = 1},[2] = {id = 130601702,lv = 1}},Description = "升级描述"},--诸葛一心普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601701,lv = 2},[2] = {id = 130601702,lv = 2}},Description = "升级描述"},--诸葛一心普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601701,lv = 3},[2] = {id = 130601702,lv = 3}},Description = "升级描述"},--诸葛一心普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601701,lv = 4},[2] = {id = 130601702,lv = 4}},Description = "升级描述"},--诸葛一心普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601701,lv = 5},[2] = {id = 130601702,lv = 5}},Description = "自己与守护灵每回合回复1点生命"},--诸葛一心普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601701,lv = 6},[2] = {id = 130601702,lv = 6}},Description = "升级描述"},--诸葛一心普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601701,lv = 7},[2] = {id = 130601702,lv = 7}},Description = "升级描述"},--诸葛一心普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601701,lv = 8},[2] = {id = 130601702,lv = 8}},Description = "升级描述"},--诸葛一心普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601701,lv = 9},[2] = {id = 130601702,lv = 9}},Description = "升级描述"},--诸葛一心普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130601701,lv = 10},[2] = {id = 130601702,lv = 10}},Description = "攻击敌方前排全体造成1点伤害随机削减敌方2个水晶"}--诸葛一心普攻
		}
	},--诸葛一心普攻
	[1306020] = {
		ShowId = 1306020,
		Name = "普通攻击",
		CardBelong = 1101020,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306020",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130602001,lv = 1},[2] = {id = 130602002,lv = 1}},Description = "升级描述"},--姬烟华普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602001,lv = 2},[2] = {id = 130602002,lv = 2}},Description = "升级描述"},--姬烟华普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602001,lv = 3},[2] = {id = 130602002,lv = 3}},Description = "升级描述"},--姬烟华普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602001,lv = 4},[2] = {id = 130602002,lv = 4}},Description = "升级描述"},--姬烟华普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602001,lv = 5},[2] = {id = 130602002,lv = 5}},Description = "将敌方2个红色水晶变为蓝色（蓝色水晶到X时怎么样）"},--姬烟华普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602001,lv = 6},[2] = {id = 130602002,lv = 6}},Description = "升级描述"},--姬烟华普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602001,lv = 7},[2] = {id = 130602002,lv = 7}},Description = "升级描述"},--姬烟华普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602001,lv = 8},[2] = {id = 130602002,lv = 8}},Description = "升级描述"},--姬烟华普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602001,lv = 9},[2] = {id = 130602002,lv = 9}},Description = "升级描述"},--姬烟华普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602001,lv = 10},[2] = {id = 130602002,lv = 10}},Description = "攻击敌方单体，禁止敌方单体释放技能，持续1回合"}--姬烟华普攻
		}
	},--姬烟华普攻
	[1306022] = {
		ShowId = 1306022,
		Name = "普通攻击",
		CardBelong = 1101022,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1306022",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130602201,lv = 1},[2] = {id = 130602202,lv = 1}},Description = "升级描述"},--幻普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602201,lv = 2},[2] = {id = 130602202,lv = 2}},Description = "升级描述"},--幻普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602201,lv = 3},[2] = {id = 130602202,lv = 3}},Description = "升级描述"},--幻普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602201,lv = 4},[2] = {id = 130602202,lv = 4}},Description = "升级描述"},--幻普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602201,lv = 5},[2] = {id = 130602202,lv = 5}},Description = "为己方生命值最低的单位回复2点生命"},--幻普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602201,lv = 6},[2] = {id = 130602202,lv = 6}},Description = "升级描述"},--幻普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602201,lv = 7},[2] = {id = 130602202,lv = 7}},Description = "升级描述"},--幻普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602201,lv = 8},[2] = {id = 130602202,lv = 8}},Description = "升级描述"},--幻普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602201,lv = 9},[2] = {id = 130602202,lv = 9}},Description = "升级描述"},--幻普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130602201,lv = 10},[2] = {id = 130602202,lv = 10}},Description = "攻击敌方一列造成2点伤害"}--幻普攻
		}
	},--幻普攻
	[1307001] = {
		ShowId = 1307001,
		Name = "普通攻击",
		CardBelong = 1102001,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307001",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130700101,lv = 1},[2] = {id = 130700102,lv = 1}},Description = "升级描述"},--关羽普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700101,lv = 2},[2] = {id = 130700102,lv = 2}},Description = "升级描述"},--关羽普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700101,lv = 3},[2] = {id = 130700102,lv = 3}},Description = "升级描述"},--关羽普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700101,lv = 4},[2] = {id = 130700102,lv = 4}},Description = "升级描述"},--关羽普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700101,lv = 5},[2] = {id = 130700102,lv = 5}},Description = "受到伤害时回复损失生命值等量的红色水晶（受伤致死不生效）"},--关羽普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700101,lv = 6},[2] = {id = 130700102,lv = 6}},Description = "升级描述"},--关羽普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700101,lv = 7},[2] = {id = 130700102,lv = 7}},Description = "升级描述"},--关羽普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700101,lv = 8},[2] = {id = 130700102,lv = 8}},Description = "升级描述"},--关羽普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700101,lv = 9},[2] = {id = 130700102,lv = 9}},Description = "升级描述"},--关羽普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700101,lv = 10},[2] = {id = 130700102,lv = 10}},Description = "攻击敌方一列造成2点伤害"}--关羽普攻
		}
	},--关羽普攻
	[1307002] = {
		ShowId = 1307002,
		Name = "普通攻击",
		CardBelong = 1102002,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307002",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130700201,lv = 1},[2] = {id = 130700202,lv = 1}},Description = "升级描述"},--许褚普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700201,lv = 2},[2] = {id = 130700202,lv = 2}},Description = "升级描述"},--许褚普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700201,lv = 3},[2] = {id = 130700202,lv = 3}},Description = "升级描述"},--许褚普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700201,lv = 4},[2] = {id = 130700202,lv = 4}},Description = "升级描述"},--许褚普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700201,lv = 5},[2] = {id = 130700202,lv = 5}},Description = "受到伤害时回复损失生命值等量的红色水晶（受伤致死不生效）"},--许褚普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700201,lv = 6},[2] = {id = 130700202,lv = 6}},Description = "升级描述"},--许褚普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700201,lv = 7},[2] = {id = 130700202,lv = 7}},Description = "升级描述"},--许褚普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700201,lv = 8},[2] = {id = 130700202,lv = 8}},Description = "升级描述"},--许褚普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700201,lv = 9},[2] = {id = 130700202,lv = 9}},Description = "升级描述"},--许褚普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700201,lv = 10},[2] = {id = 130700202,lv = 10}},Description = "攻击敌方一列造成2点伤害"}--许褚普攻
		}
	},--许褚普攻
	[1307003] = {
		ShowId = 1307003,
		Name = "普通攻击",
		CardBelong = 1102003,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307003",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130700301,lv = 1},[2] = {id = 130700302,lv = 1}},Description = "升级描述"},--典韦普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700301,lv = 2},[2] = {id = 130700302,lv = 2}},Description = "升级描述"},--典韦普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700301,lv = 3},[2] = {id = 130700302,lv = 3}},Description = "升级描述"},--典韦普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700301,lv = 4},[2] = {id = 130700302,lv = 4}},Description = "升级描述"},--典韦普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700301,lv = 5},[2] = {id = 130700302,lv = 5}},Description = "受到伤害时回复损失生命值等量的红色水晶（受伤致死不生效）"},--典韦普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700301,lv = 6},[2] = {id = 130700302,lv = 6}},Description = "升级描述"},--典韦普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700301,lv = 7},[2] = {id = 130700302,lv = 7}},Description = "升级描述"},--典韦普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700301,lv = 8},[2] = {id = 130700302,lv = 8}},Description = "升级描述"},--典韦普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700301,lv = 9},[2] = {id = 130700302,lv = 9}},Description = "升级描述"},--典韦普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700301,lv = 10},[2] = {id = 130700302,lv = 10}},Description = "攻击敌方一列造成2点伤害"}--典韦普攻
		}
	},--典韦普攻
	[1307004] = {
		ShowId = 1307004,
		Name = "普通攻击",
		CardBelong = 1102004,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307004",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130700401,lv = 1},[2] = {id = 130700402,lv = 1}},Description = "升级描述"},--唐流雨普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700401,lv = 2},[2] = {id = 130700402,lv = 2}},Description = "升级描述"},--唐流雨普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700401,lv = 3},[2] = {id = 130700402,lv = 3}},Description = "升级描述"},--唐流雨普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700401,lv = 4},[2] = {id = 130700402,lv = 4}},Description = "升级描述"},--唐流雨普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700401,lv = 5},[2] = {id = 130700402,lv = 5}},Description = "受到伤害时回复损失生命值等量的红色水晶（受伤致死不生效）"},--唐流雨普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700401,lv = 6},[2] = {id = 130700402,lv = 6}},Description = "升级描述"},--唐流雨普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700401,lv = 7},[2] = {id = 130700402,lv = 7}},Description = "升级描述"},--唐流雨普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700401,lv = 8},[2] = {id = 130700402,lv = 8}},Description = "升级描述"},--唐流雨普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700401,lv = 9},[2] = {id = 130700402,lv = 9}},Description = "升级描述"},--唐流雨普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700401,lv = 10},[2] = {id = 130700402,lv = 10}},Description = "基础效果：对敌方单体造成1段攻击。\r\n该技能可以触发连击效果"}--唐流雨普攻
		}
	},--唐流雨普攻
	[1307005] = {
		ShowId = 1307005,
		Name = "普通攻击",
		CardBelong = 1102005,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307005",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130700501,lv = 1},[2] = {id = 130700502,lv = 1}},Description = "升级描述"},--李轩辕普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700501,lv = 2},[2] = {id = 130700502,lv = 2}},Description = "升级描述"},--李轩辕普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700501,lv = 3},[2] = {id = 130700502,lv = 3}},Description = "升级描述"},--李轩辕普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700501,lv = 4},[2] = {id = 130700502,lv = 4}},Description = "升级描述"},--李轩辕普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700501,lv = 5},[2] = {id = 130700502,lv = 5}},Description = "基础效果：对敌方单体进行1段攻击，造成攻击力100%的伤害；\r\n该技能可以触发连击效果"},--李轩辕普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700501,lv = 6},[2] = {id = 130700502,lv = 6}},Description = "升级描述"},--李轩辕普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700501,lv = 7},[2] = {id = 130700502,lv = 7}},Description = "升级描述"},--李轩辕普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700501,lv = 8},[2] = {id = 130700502,lv = 8}},Description = "升级描述"},--李轩辕普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700501,lv = 9},[2] = {id = 130700502,lv = 9}},Description = "升级描述"},--李轩辕普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700501,lv = 10},[2] = {id = 130700502,lv = 10}},Description = "攻击敌方单体造成100%伤害\r\n被动效果：每次造成伤害提升自身暴击伤害25%"}--李轩辕普攻
		}
	},--李轩辕普攻
	[1307006] = {
		ShowId = 1307006,
		Name = "普通攻击",
		CardBelong = 1102006,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307006",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130700601,lv = 1},[2] = {id = 130700602,lv = 1}},Description = "升级描述"},--项羽普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700601,lv = 2},[2] = {id = 130700602,lv = 2}},Description = "升级描述"},--项羽普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700601,lv = 3},[2] = {id = 130700602,lv = 3}},Description = "升级描述"},--项羽普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700601,lv = 4},[2] = {id = 130700602,lv = 4}},Description = "升级描述"},--项羽普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700601,lv = 5},[2] = {id = 130700602,lv = 5}},Description = "对敌方全体造成攻击力100%的伤害\r\n该技能可以触发连击效果"},--项羽普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700601,lv = 6},[2] = {id = 130700602,lv = 6}},Description = "升级描述"},--项羽普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700601,lv = 7},[2] = {id = 130700602,lv = 7}},Description = "升级描述"},--项羽普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700601,lv = 8},[2] = {id = 130700602,lv = 8}},Description = "升级描述"},--项羽普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700601,lv = 9},[2] = {id = 130700602,lv = 9}},Description = "升级描述"},--项羽普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700601,lv = 10},[2] = {id = 130700602,lv = 10}},Description = "立即获得X个红色水晶"}--项羽普攻
		}
	},--项羽普攻
	[1307007] = {
		ShowId = 1307007,
		Name = "普通攻击",
		CardBelong = 1102007,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307007",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130700701,lv = 1},[2] = {id = 130700702,lv = 1}},Description = "升级描述"},--天使缇娜普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700701,lv = 2},[2] = {id = 130700702,lv = 2}},Description = "升级描述"},--天使缇娜普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700701,lv = 3},[2] = {id = 130700702,lv = 3}},Description = "升级描述"},--天使缇娜普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700701,lv = 4},[2] = {id = 130700702,lv = 4}},Description = "升级描述"},--天使缇娜普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700701,lv = 5},[2] = {id = 130700702,lv = 5}},Description = "对敌方单体造成1段高额伤害"},--天使缇娜普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700701,lv = 6},[2] = {id = 130700702,lv = 6}},Description = "升级描述"},--天使缇娜普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700701,lv = 7},[2] = {id = 130700702,lv = 7}},Description = "升级描述"},--天使缇娜普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700701,lv = 8},[2] = {id = 130700702,lv = 8}},Description = "升级描述"},--天使缇娜普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700701,lv = 9},[2] = {id = 130700702,lv = 9}},Description = "升级描述"},--天使缇娜普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700701,lv = 10},[2] = {id = 130700702,lv = 10}},Description = "禁锢敌方单体1回合，如果寄灵人身上有血魔印记，则技能有额外效果：1个血魔印记，禁锢同时造成每回合X的伤害；2个血魔印记，禁锢时间增加1回合；3个血魔印记，禁锢同时减少目标X%防御；4个血魔印记，禁锢时间增加1回合\r\n该技能可以触发连击效果"}--天使缇娜普攻
		}
	},--天使缇娜普攻
	[1307008] = {
		ShowId = 1307008,
		Name = "普通攻击",
		CardBelong = 1102008,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307008",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130700801,lv = 1},[2] = {id = 130700802,lv = 1}},Description = "升级描述"},--夏侯渊普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700801,lv = 2},[2] = {id = 130700802,lv = 2}},Description = "升级描述"},--夏侯渊普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700801,lv = 3},[2] = {id = 130700802,lv = 3}},Description = "升级描述"},--夏侯渊普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700801,lv = 4},[2] = {id = 130700802,lv = 4}},Description = "升级描述"},--夏侯渊普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700801,lv = 5},[2] = {id = 130700802,lv = 5}},Description = "召唤地狱蛇随机缠绕敌方前排2目标，降低目标减伤x%，使其随机陷入禁锢、主动封印(不能释放主动技能)、被动封印（被动技能失效）状态中的一种，持续2回合\r\n该技能可以触发连击效果"},--夏侯渊普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700801,lv = 6},[2] = {id = 130700802,lv = 6}},Description = "升级描述"},--夏侯渊普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700801,lv = 7},[2] = {id = 130700802,lv = 7}},Description = "升级描述"},--夏侯渊普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700801,lv = 8},[2] = {id = 130700802,lv = 8}},Description = "升级描述"},--夏侯渊普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700801,lv = 9},[2] = {id = 130700802,lv = 9}},Description = "升级描述"},--夏侯渊普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700801,lv = 10},[2] = {id = 130700802,lv = 10}},Description = "下一回合内有X%（+效果命中）的概率为所有受到单体伤害的单位完全抵挡一次伤害。"}--夏侯渊普攻
		}
	},--夏侯渊普攻
	[1307009] = {
		ShowId = 1307009,
		Name = "普通攻击",
		CardBelong = 1102009,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307009",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130700901,lv = 1},[2] = {id = 130700902,lv = 1}},Description = "升级描述"},--徐晃普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700901,lv = 2},[2] = {id = 130700902,lv = 2}},Description = "升级描述"},--徐晃普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700901,lv = 3},[2] = {id = 130700902,lv = 3}},Description = "升级描述"},--徐晃普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700901,lv = 4},[2] = {id = 130700902,lv = 4}},Description = "升级描述"},--徐晃普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700901,lv = 5},[2] = {id = 130700902,lv = 5}},Description = "对敌方单体进行多段刺击，每次刺击造成伤害并随机获得1个水晶；"},--徐晃普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700901,lv = 6},[2] = {id = 130700902,lv = 6}},Description = "升级描述"},--徐晃普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700901,lv = 7},[2] = {id = 130700902,lv = 7}},Description = "升级描述"},--徐晃普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700901,lv = 8},[2] = {id = 130700902,lv = 8}},Description = "升级描述"},--徐晃普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700901,lv = 9},[2] = {id = 130700902,lv = 9}},Description = "升级描述"},--徐晃普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130700901,lv = 10},[2] = {id = 130700902,lv = 10}},Description = "使目标进入“避难”状态，并为我方血量百分比最低的单位恢复攻击x%+已损失血量*y%的生命，持续2回合\r\n【避难】：不会受到直接伤害，但受到持续伤害效果翻倍，可被驱散"}--徐晃普攻
		}
	},--徐晃普攻
	[1307010] = {
		ShowId = 1307010,
		Name = "普通攻击",
		CardBelong = 1102010,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307010",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130701001,lv = 1},[2] = {id = 130701002,lv = 1}},Description = "使目标进入“避难”状态，并为我方血量百分比最低的单位恢复攻击x%+已损失血量*y%的生命，持续2回合\r\n【避难】：不会受到直接伤害，但受到持续伤害效果翻倍，可被驱散"},--张郃普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701001,lv = 2},[2] = {id = 130701002,lv = 2}},Description = "使目标进入“避难”状态，并为我方血量百分比最低的单位恢复攻击x%+已损失血量*y%的生命，持续2回合\r\n【避难】：不会受到直接伤害，但受到持续伤害效果翻倍，可被驱散"},--张郃普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701001,lv = 3},[2] = {id = 130701002,lv = 3}},Description = "使目标进入“避难”状态，并为我方血量百分比最低的单位恢复攻击x%+已损失血量*y%的生命，持续2回合\r\n【避难】：不会受到直接伤害，但受到持续伤害效果翻倍，可被驱散"},--张郃普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701001,lv = 4},[2] = {id = 130701002,lv = 4}},Description = "使目标进入“避难”状态，并为我方血量百分比最低的单位恢复攻击x%+已损失血量*y%的生命，持续2回合\r\n【避难】：不会受到直接伤害，但受到持续伤害效果翻倍，可被驱散"},--张郃普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701001,lv = 5},[2] = {id = 130701002,lv = 5}},Description = "以一定生命为代价，释放猛烈的气息冲击敌方一列，对前排造成攻击力50%伤害，对后排造成攻击力100%伤害\r\n该技能可以触发连击效果"},--张郃普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701001,lv = 6},[2] = {id = 130701002,lv = 6}},Description = "升级描述"},--张郃普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701001,lv = 7},[2] = {id = 130701002,lv = 7}},Description = "升级描述"},--张郃普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701001,lv = 8},[2] = {id = 130701002,lv = 8}},Description = "升级描述"},--张郃普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701001,lv = 9},[2] = {id = 130701002,lv = 9}},Description = "升级描述"},--张郃普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701001,lv = 10},[2] = {id = 130701002,lv = 10}},Description = "攻击敌方前排单位，造成攻击X%的伤害\r\n被动效果：每损失X%生命，攻击力增加X%"}--张郃普攻
		}
	},--张郃普攻
	[1307011] = {
		ShowId = 1307011,
		Name = "普通攻击",
		CardBelong = 1102011,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307011",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130701101,lv = 1},[2] = {id = 130701102,lv = 1}},Description = "升级描述"},--张飞普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701101,lv = 2},[2] = {id = 130701102,lv = 2}},Description = "升级描述"},--张飞普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701101,lv = 3},[2] = {id = 130701102,lv = 3}},Description = "升级描述"},--张飞普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701101,lv = 4},[2] = {id = 130701102,lv = 4}},Description = "升级描述"},--张飞普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701101,lv = 5},[2] = {id = 130701102,lv = 5}},Description = "对目标单体进行2段重击\r\n该技能可以触发连击效果"},--张飞普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701101,lv = 6},[2] = {id = 130701102,lv = 6}},Description = "升级描述"},--张飞普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701101,lv = 7},[2] = {id = 130701102,lv = 7}},Description = "升级描述"},--张飞普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701101,lv = 8},[2] = {id = 130701102,lv = 8}},Description = "升级描述"},--张飞普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701101,lv = 9},[2] = {id = 130701102,lv = 9}},Description = "升级描述"},--张飞普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701101,lv = 10},[2] = {id = 130701102,lv = 10}},Description = "对敌方单体进行1段强力打击，造成攻击力X%的伤害。"}--张飞普攻
		}
	},--张飞普攻
	[1307012] = {
		ShowId = 1307012,
		Name = "普通攻击",
		CardBelong = 1102012,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307012",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130701201,lv = 1},[2] = {id = 130701202,lv = 1}},Description = "升级描述"},--夏侯惇普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701201,lv = 2},[2] = {id = 130701202,lv = 2}},Description = "升级描述"},--夏侯惇普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701201,lv = 3},[2] = {id = 130701202,lv = 3}},Description = "升级描述"},--夏侯惇普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701201,lv = 4},[2] = {id = 130701202,lv = 4}},Description = "升级描述"},--夏侯惇普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701201,lv = 5},[2] = {id = 130701202,lv = 5}},Description = "主动效果：对自身施加buff，1回合内每受到1段伤害有50%概率使进攻者随机减少一枚水晶；"},--夏侯惇普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701201,lv = 6},[2] = {id = 130701202,lv = 6}},Description = "升级描述"},--夏侯惇普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701201,lv = 7},[2] = {id = 130701202,lv = 7}},Description = "升级描述"},--夏侯惇普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701201,lv = 8},[2] = {id = 130701202,lv = 8}},Description = "升级描述"},--夏侯惇普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701201,lv = 9},[2] = {id = 130701202,lv = 9}},Description = "升级描述"},--夏侯惇普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701201,lv = 10},[2] = {id = 130701202,lv = 10}},Description = "主动效果：对场上所有带有风神标记的敌方单位造成1段伤害。被动效果：造成的每次伤害均有概率（基础+效果命中）对目标附加风神标记\r\n被动效果：当1技能杀死一个敌人时，自动再次释放1次1技能"}--夏侯惇普攻
		}
	},--夏侯惇普攻
	[1307013] = {
		ShowId = 1307013,
		Name = "普通攻击",
		CardBelong = 1102013,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307013",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130701301,lv = 1},[2] = {id = 130701302,lv = 1}},Description = "升级描述"},--塞伯罗斯普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701301,lv = 2},[2] = {id = 130701302,lv = 2}},Description = "升级描述"},--塞伯罗斯普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701301,lv = 3},[2] = {id = 130701302,lv = 3}},Description = "升级描述"},--塞伯罗斯普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701301,lv = 4},[2] = {id = 130701302,lv = 4}},Description = "升级描述"},--塞伯罗斯普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701301,lv = 5},[2] = {id = 130701302,lv = 5}},Description = "消耗自身一半的最大生命值攻击敌方单体\r\n被动效果：被召唤出场时立即释放1次本技能"},--塞伯罗斯普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701301,lv = 6},[2] = {id = 130701302,lv = 6}},Description = "升级描述"},--塞伯罗斯普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701301,lv = 7},[2] = {id = 130701302,lv = 7}},Description = "升级描述"},--塞伯罗斯普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701301,lv = 8},[2] = {id = 130701302,lv = 8}},Description = "升级描述"},--塞伯罗斯普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701301,lv = 9},[2] = {id = 130701302,lv = 9}},Description = "升级描述"},--塞伯罗斯普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701301,lv = 10},[2] = {id = 130701302,lv = 10}},Description = "为当前生命百分比最低的单位生成护盾，持续到下次行动开始"}--塞伯罗斯普攻
		}
	},--塞伯罗斯普攻
	[1307014] = {
		ShowId = 1307014,
		Name = "普通攻击",
		CardBelong = 1102014,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307014",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130701401,lv = 1},[2] = {id = 130701402,lv = 1}},Description = "升级描述"},--石灵明普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701401,lv = 2},[2] = {id = 130701402,lv = 2}},Description = "升级描述"},--石灵明普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701401,lv = 3},[2] = {id = 130701402,lv = 3}},Description = "升级描述"},--石灵明普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701401,lv = 4},[2] = {id = 130701402,lv = 4}},Description = "升级描述"},--石灵明普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701401,lv = 5},[2] = {id = 130701402,lv = 5}},Description = "攻击单体目标造成4点伤害，若敌方当前生命值高于最大值的70%，额外增加x%的伤害；若本次攻击未能击杀目标，则自身伤害增加y%持续1回合；若本次攻击击杀了目标，则对另一名目标追加一次z%伤害的攻击"},--石灵明普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701401,lv = 6},[2] = {id = 130701402,lv = 6}},Description = "升级描述"},--石灵明普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701401,lv = 7},[2] = {id = 130701402,lv = 7}},Description = "升级描述"},--石灵明普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701401,lv = 8},[2] = {id = 130701402,lv = 8}},Description = "升级描述"},--石灵明普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701401,lv = 9},[2] = {id = 130701402,lv = 9}},Description = "升级描述"},--石灵明普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701401,lv = 10},[2] = {id = 130701402,lv = 10}},Description = "攻击敌方单体，造成攻击力X%的伤害\r\n场上所有单位每次召唤守护灵会为烈风螳螂增加一枚印记，每一枚印记增加烈风螳螂X%攻击力"}--石灵明普攻
		}
	},--石灵明普攻
	[1307015] = {
		ShowId = 1307015,
		Name = "普通攻击",
		CardBelong = 1102015,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307015",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130701501,lv = 1},[2] = {id = 130701502,lv = 1}},Description = "升级描述"},--于禁普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701501,lv = 2},[2] = {id = 130701502,lv = 2}},Description = "升级描述"},--于禁普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701501,lv = 3},[2] = {id = 130701502,lv = 3}},Description = "升级描述"},--于禁普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701501,lv = 4},[2] = {id = 130701502,lv = 4}},Description = "升级描述"},--于禁普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701501,lv = 5},[2] = {id = 130701502,lv = 5}},Description = "对敌方单体造成伤害（低消耗低伤害）"},--于禁普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701501,lv = 6},[2] = {id = 130701502,lv = 6}},Description = "对敌方单体造成伤害（低消耗低伤害）"},--于禁普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701501,lv = 7},[2] = {id = 130701502,lv = 7}},Description = "对敌方单体造成伤害（低消耗低伤害）"},--于禁普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701501,lv = 8},[2] = {id = 130701502,lv = 8}},Description = "对敌方单体造成伤害（低消耗低伤害）"},--于禁普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701501,lv = 9},[2] = {id = 130701502,lv = 9}},Description = "对敌方单体造成伤害（低消耗低伤害）"},--于禁普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701501,lv = 10},[2] = {id = 130701502,lv = 10}},Description = "对敌方单体造成伤害（中等消耗中等伤害）"}--于禁普攻
		}
	},--于禁普攻
	[1307016] = {
		ShowId = 1307016,
		Name = "普通攻击",
		CardBelong = 1102016,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307016",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130701601,lv = 1},[2] = {id = 130701602,lv = 1}},Description = "对敌方单体造成伤害（中等消耗中等伤害）"},--西方龙普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701601,lv = 2},[2] = {id = 130701602,lv = 2}},Description = "对敌方单体造成伤害（中等消耗中等伤害）"},--西方龙普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701601,lv = 3},[2] = {id = 130701602,lv = 3}},Description = "对敌方单体造成伤害（中等消耗中等伤害）"},--西方龙普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701601,lv = 4},[2] = {id = 130701602,lv = 4}},Description = "对敌方单体造成伤害（中等消耗中等伤害）"},--西方龙普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701601,lv = 5},[2] = {id = 130701602,lv = 5}},Description = "对敌方单体造成伤害（高消耗高伤害）"},--西方龙普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701601,lv = 6},[2] = {id = 130701602,lv = 6}},Description = "对敌方单体造成伤害（高消耗高伤害）"},--西方龙普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701601,lv = 7},[2] = {id = 130701602,lv = 7}},Description = "对敌方单体造成伤害（高消耗高伤害）"},--西方龙普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701601,lv = 8},[2] = {id = 130701602,lv = 8}},Description = "对敌方单体造成伤害（高消耗高伤害）"},--西方龙普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701601,lv = 9},[2] = {id = 130701602,lv = 9}},Description = "对敌方单体造成伤害（高消耗高伤害）"},--西方龙普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701601,lv = 10},[2] = {id = 130701602,lv = 10}},Description = "每段伤害都有X%的概率随机削减敌方1个水晶"}--西方龙普攻
		}
	},--西方龙普攻
	[1307017] = {
		ShowId = 1307017,
		Name = "普通攻击",
		CardBelong = 1102017,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307017",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130701701,lv = 1},[2] = {id = 130701702,lv = 1}},Description = "每段伤害都有X%的概率随机削减敌方1个水晶"},--飞廉普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701701,lv = 2},[2] = {id = 130701702,lv = 2}},Description = "每段伤害都有X%的概率随机削减敌方1个水晶"},--飞廉普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701701,lv = 3},[2] = {id = 130701702,lv = 3}},Description = "每段伤害都有X%的概率随机削减敌方1个水晶"},--飞廉普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701701,lv = 4},[2] = {id = 130701702,lv = 4}},Description = "每段伤害都有X%的概率随机削减敌方1个水晶"},--飞廉普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701701,lv = 5},[2] = {id = 130701702,lv = 5}},Description = "被攻击时概率削减对方水晶"},--飞廉普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701701,lv = 6},[2] = {id = 130701702,lv = 6}},Description = "被攻击时概率削减对方水晶"},--飞廉普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701701,lv = 7},[2] = {id = 130701702,lv = 7}},Description = "被攻击时概率削减对方水晶"},--飞廉普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701701,lv = 8},[2] = {id = 130701702,lv = 8}},Description = "被攻击时概率削减对方水晶"},--飞廉普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701701,lv = 9},[2] = {id = 130701702,lv = 9}},Description = "被攻击时概率削减对方水晶"},--飞廉普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701701,lv = 10},[2] = {id = 130701702,lv = 10}},Description = "阵亡时将所有自身颜色水晶转换为红色"}--飞廉普攻
		}
	},--飞廉普攻
	[1307018] = {
		ShowId = 1307018,
		Name = "普通攻击",
		CardBelong = 1102018,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130701801,lv = 1},[2] = {id = 130701802,lv = 1}},Description = "阵亡时将所有自身颜色水晶转换为红色"},--噬日普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701801,lv = 2},[2] = {id = 130701802,lv = 2}},Description = "阵亡时将所有自身颜色水晶转换为红色"},--噬日普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701801,lv = 3},[2] = {id = 130701802,lv = 3}},Description = "阵亡时将所有自身颜色水晶转换为红色"},--噬日普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701801,lv = 4},[2] = {id = 130701802,lv = 4}},Description = "阵亡时将所有自身颜色水晶转换为红色"},--噬日普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701801,lv = 5},[2] = {id = 130701802,lv = 5}},Description = "立即获得2个红色水晶"},--噬日普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701801,lv = 6},[2] = {id = 130701802,lv = 6}},Description = "立即获得2个红色水晶"},--噬日普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701801,lv = 7},[2] = {id = 130701802,lv = 7}},Description = "立即获得2个红色水晶"},--噬日普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701801,lv = 8},[2] = {id = 130701802,lv = 8}},Description = "立即获得2个红色水晶"},--噬日普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701801,lv = 9},[2] = {id = 130701802,lv = 9}},Description = "立即获得2个红色水晶"},--噬日普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701801,lv = 10},[2] = {id = 130701802,lv = 10}},Description = "立即获得2个黄色水晶"}--噬日普攻
		}
	},--噬日普攻
	[1307019] = {
		ShowId = 1307019,
		Name = "普通攻击",
		CardBelong = 1102019,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307019",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130701901,lv = 1},[2] = {id = 130701902,lv = 1}},Description = "立即获得2个黄色水晶"},--食火蜥普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701901,lv = 2},[2] = {id = 130701902,lv = 2}},Description = "立即获得2个黄色水晶"},--食火蜥普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701901,lv = 3},[2] = {id = 130701902,lv = 3}},Description = "立即获得2个黄色水晶"},--食火蜥普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701901,lv = 4},[2] = {id = 130701902,lv = 4}},Description = "立即获得2个黄色水晶"},--食火蜥普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701901,lv = 5},[2] = {id = 130701902,lv = 5}},Description = "立即获得2个蓝色水晶"},--食火蜥普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701901,lv = 6},[2] = {id = 130701902,lv = 6}},Description = "立即获得2个蓝色水晶"},--食火蜥普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701901,lv = 7},[2] = {id = 130701902,lv = 7}},Description = "立即获得2个蓝色水晶"},--食火蜥普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701901,lv = 8},[2] = {id = 130701902,lv = 8}},Description = "立即获得2个蓝色水晶"},--食火蜥普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701901,lv = 9},[2] = {id = 130701902,lv = 9}},Description = "立即获得2个蓝色水晶"},--食火蜥普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130701901,lv = 10},[2] = {id = 130701902,lv = 10}},Description = "所有单体技能造成伤害的同时恢复自身生命"}--食火蜥普攻
		}
	},--食火蜥普攻
	[1307020] = {
		ShowId = 1307020,
		Name = "普通攻击",
		CardBelong = 1102020,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307020",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130702001,lv = 1},[2] = {id = 130702002,lv = 1}},Description = "所有单体技能造成伤害的同时恢复自身生命"},--高顺普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702001,lv = 2},[2] = {id = 130702002,lv = 2}},Description = "所有单体技能造成伤害的同时恢复自身生命"},--高顺普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702001,lv = 3},[2] = {id = 130702002,lv = 3}},Description = "所有单体技能造成伤害的同时恢复自身生命"},--高顺普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702001,lv = 4},[2] = {id = 130702002,lv = 4}},Description = "所有单体技能造成伤害的同时恢复自身生命"},--高顺普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702001,lv = 5},[2] = {id = 130702002,lv = 5}},Description = "每回合恢复X生命值"},--高顺普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702001,lv = 6},[2] = {id = 130702002,lv = 6}},Description = "每回合恢复X生命值"},--高顺普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702001,lv = 7},[2] = {id = 130702002,lv = 7}},Description = "每回合恢复X生命值"},--高顺普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702001,lv = 8},[2] = {id = 130702002,lv = 8}},Description = "每回合恢复X生命值"},--高顺普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702001,lv = 9},[2] = {id = 130702002,lv = 9}},Description = "每回合恢复X生命值"},--高顺普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702001,lv = 10},[2] = {id = 130702002,lv = 10}},Description = "每次受到攻击时有X%的概率生成一个护盾"}--高顺普攻
		}
	},--高顺普攻
	[1307021] = {
		ShowId = 1307021,
		Name = "普通攻击",
		CardBelong = 1102021,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307021",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 130702101,lv = 1},[2] = {id = 130702102,lv = 1}},Description = "每次受到攻击时有X%的概率生成一个护盾"},--烈风螳螂普攻
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702101,lv = 2},[2] = {id = 130702102,lv = 2}},Description = "每次受到攻击时有X%的概率生成一个护盾"},--烈风螳螂普攻
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702101,lv = 3},[2] = {id = 130702102,lv = 3}},Description = "每次受到攻击时有X%的概率生成一个护盾"},--烈风螳螂普攻
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702101,lv = 4},[2] = {id = 130702102,lv = 4}},Description = "每次受到攻击时有X%的概率生成一个护盾"},--烈风螳螂普攻
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702101,lv = 5},[2] = {id = 130702102,lv = 5}},Description = "如果技能击杀了敌人，则其余所有敌人均承受1次与溢出伤害相等的伤害"},--烈风螳螂普攻
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702101,lv = 6},[2] = {id = 130702102,lv = 6}},Description = "如果技能击杀了敌人，则其余所有敌人均承受1次与溢出伤害相等的伤害"},--烈风螳螂普攻
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702101,lv = 7},[2] = {id = 130702102,lv = 7}},Description = "如果技能击杀了敌人，则其余所有敌人均承受1次与溢出伤害相等的伤害"},--烈风螳螂普攻
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702101,lv = 8},[2] = {id = 130702102,lv = 8}},Description = "如果技能击杀了敌人，则其余所有敌人均承受1次与溢出伤害相等的伤害"},--烈风螳螂普攻
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702101,lv = 9},[2] = {id = 130702102,lv = 9}},Description = "如果技能击杀了敌人，则其余所有敌人均承受1次与溢出伤害相等的伤害"},--烈风螳螂普攻
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130702101,lv = 10},[2] = {id = 130702102,lv = 10}},Description = "对有护盾的单位造成X%额外伤害"}--烈风螳螂普攻
		}
	},--烈风螳螂普攻
	[1307030] = {
		ShowId = 1307030,
		Name = "普通攻击",
		CardBelong = 1102022,
		Quality = 0,
		SkillType = 3,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1307030",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 130600101,lv = 1}}}--燕青普攻
		}
	},--燕青普攻
	[1801001] = {
		ShowId = 1801001,
		Name = "重锤",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180100101,lv = 1}}},--砍刀鬼兵的普通攻击
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100101,lv = 2}}},--砍刀鬼兵的普通攻击
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100101,lv = 3}}},--砍刀鬼兵的普通攻击
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100101,lv = 4}}},--砍刀鬼兵的普通攻击
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100101,lv = 5}}},--砍刀鬼兵的普通攻击
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100101,lv = 6}}},--砍刀鬼兵的普通攻击
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100101,lv = 7}}},--砍刀鬼兵的普通攻击
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100101,lv = 8}}},--砍刀鬼兵的普通攻击
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100101,lv = 9}}},--砍刀鬼兵的普通攻击
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100101,lv = 10}}}--砍刀鬼兵的普通攻击
		}
	},--砍刀鬼兵的普通攻击
	[1801002] = {
		ShowId = 1801002,
		Name = "普通攻击",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180100201,lv = 1}}},--双刀鬼兵的普通攻击
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100201,lv = 2}}},--双刀鬼兵的普通攻击
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100201,lv = 3}}},--双刀鬼兵的普通攻击
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100201,lv = 4}}},--双刀鬼兵的普通攻击
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100201,lv = 5}}},--双刀鬼兵的普通攻击
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100201,lv = 6}}},--双刀鬼兵的普通攻击
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100201,lv = 7}}},--双刀鬼兵的普通攻击
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100201,lv = 8}}},--双刀鬼兵的普通攻击
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100201,lv = 9}}},--双刀鬼兵的普通攻击
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100201,lv = 10}}}--双刀鬼兵的普通攻击
		}
	},--双刀鬼兵的普通攻击
	[1801003] = {
		ShowId = 1801003,
		Name = "普通攻击",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180100301,lv = 1}}},--链球鬼兵的普通攻击
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100301,lv = 2}}},--链球鬼兵的普通攻击
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100301,lv = 3}}},--链球鬼兵的普通攻击
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100301,lv = 4}}},--链球鬼兵的普通攻击
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100301,lv = 5}}},--链球鬼兵的普通攻击
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100301,lv = 6}}},--链球鬼兵的普通攻击
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100301,lv = 7}}},--链球鬼兵的普通攻击
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100301,lv = 8}}},--链球鬼兵的普通攻击
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100301,lv = 9}}},--链球鬼兵的普通攻击
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100301,lv = 10}}}--链球鬼兵的普通攻击
		}
	},--链球鬼兵的普通攻击
	[1801004] = {
		ShowId = 1801004,
		Name = "普通攻击",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180100401,lv = 1}}},--鬼将军普通伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100401,lv = 2}}},--鬼将军普通伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100401,lv = 3}}},--鬼将军普通伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100401,lv = 4}}},--鬼将军普通伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100401,lv = 5}}},--鬼将军普通伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100401,lv = 6}}},--鬼将军普通伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100401,lv = 7}}},--鬼将军普通伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100401,lv = 8}}},--鬼将军普通伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100401,lv = 9}}},--鬼将军普通伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100401,lv = 10}}}--鬼将军普通伤害
		}
	},--鬼将军普通伤害
	[1801005] = {
		ShowId = 1801005,
		Name = "普通攻击",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180100501,lv = 1}}},--变身鬼将军普通伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100501,lv = 2}}},--变身鬼将军普通伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100501,lv = 3}}},--变身鬼将军普通伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100501,lv = 4}}},--变身鬼将军普通伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100501,lv = 5}}},--变身鬼将军普通伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100501,lv = 6}}},--变身鬼将军普通伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100501,lv = 7}}},--变身鬼将军普通伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100501,lv = 8}}},--变身鬼将军普通伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100501,lv = 9}}},--变身鬼将军普通伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100501,lv = 10}}}--变身鬼将军普通伤害
		}
	},--变身鬼将军普通伤害
	[1801006] = {
		ShowId = 1801006,
		Name = "普通攻击",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180100601,lv = 1}}},--骷髅小兵1普通攻击
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100601,lv = 2}}},--骷髅小兵1普通攻击
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100601,lv = 3}}},--骷髅小兵1普通攻击
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100601,lv = 4}}},--骷髅小兵1普通攻击
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100601,lv = 5}}},--骷髅小兵1普通攻击
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100601,lv = 6}}},--骷髅小兵1普通攻击
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100601,lv = 7}}},--骷髅小兵1普通攻击
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100601,lv = 8}}},--骷髅小兵1普通攻击
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100601,lv = 9}}},--骷髅小兵1普通攻击
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100601,lv = 10}}}--骷髅小兵1普通攻击
		}
	},--骷髅小兵1普通攻击
	[1801008] = {
		ShowId = 1801008,
		Name = "普通攻击",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180100801,lv = 1}}},--伏尸将军单体伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100801,lv = 2}}},--伏尸将军单体伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100801,lv = 3}}},--伏尸将军单体伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100801,lv = 4}}},--伏尸将军单体伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100801,lv = 5}}},--伏尸将军单体伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100801,lv = 6}}},--伏尸将军单体伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100801,lv = 7}}},--伏尸将军单体伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100801,lv = 8}}},--伏尸将军单体伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100801,lv = 9}}},--伏尸将军单体伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100801,lv = 10}}}--伏尸将军单体伤害
		}
	},--伏尸将军单体伤害
	[1801009] = {
		ShowId = 1801009,
		Name = "普通攻击",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180100901,lv = 1}}},--石瀑将军单体伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100901,lv = 2}}},--石瀑将军单体伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100901,lv = 3}}},--石瀑将军单体伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100901,lv = 4}}},--石瀑将军单体伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100901,lv = 5}}},--石瀑将军单体伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100901,lv = 6}}},--石瀑将军单体伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100901,lv = 7}}},--石瀑将军单体伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100901,lv = 8}}},--石瀑将军单体伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100901,lv = 9}}},--石瀑将军单体伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180100901,lv = 10}}}--石瀑将军单体伤害
		}
	},--石瀑将军单体伤害
	[1801010] = {
		ShowId = 1801010,
		Name = "普通攻击",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180101001,lv = 1}}},--小蜘蛛普通攻击
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101001,lv = 2}}},--小蜘蛛普通攻击
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101001,lv = 3}}},--小蜘蛛普通攻击
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101001,lv = 4}}},--小蜘蛛普通攻击
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101001,lv = 5}}},--小蜘蛛普通攻击
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101001,lv = 6}}},--小蜘蛛普通攻击
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101001,lv = 7}}},--小蜘蛛普通攻击
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101001,lv = 8}}},--小蜘蛛普通攻击
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101001,lv = 9}}},--小蜘蛛普通攻击
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101001,lv = 10}}}--小蜘蛛普通攻击
		}
	},--小蜘蛛普通攻击
	[1801011] = {
		ShowId = 1801011,
		Name = "普通攻击",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180101101,lv = 1}}},--魔导机兵团普通攻击
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101101,lv = 2}}},--魔导机兵团普通攻击
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101101,lv = 3}}},--魔导机兵团普通攻击
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101101,lv = 4}}},--魔导机兵团普通攻击
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101101,lv = 5}}},--魔导机兵团普通攻击
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101101,lv = 6}}},--魔导机兵团普通攻击
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101101,lv = 7}}},--魔导机兵团普通攻击
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101101,lv = 8}}},--魔导机兵团普通攻击
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101101,lv = 9}}},--魔导机兵团普通攻击
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101101,lv = 10}}}--魔导机兵团普通攻击
		}
	},--魔导机兵团普通攻击
	[1801012] = {
		ShowId = 1801012,
		Name = "普通攻击",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180101201,lv = 1}}},--山蜘蛛技能1单体伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101201,lv = 2}}},--山蜘蛛技能1单体伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101201,lv = 3}}},--山蜘蛛技能1单体伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101201,lv = 4}}},--山蜘蛛技能1单体伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101201,lv = 5}}},--山蜘蛛技能1单体伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101201,lv = 6}}},--山蜘蛛技能1单体伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101201,lv = 7}}},--山蜘蛛技能1单体伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101201,lv = 8}}},--山蜘蛛技能1单体伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101201,lv = 9}}},--山蜘蛛技能1单体伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180101201,lv = 10}}}--山蜘蛛技能1单体伤害
		}
	},--山蜘蛛技能1单体伤害
	[1802004] = {
		ShowId = 1802004,
		Name = "超级攻击",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180200401,lv = 1}}},--鬼将军超级伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200401,lv = 2}}},--鬼将军超级伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200401,lv = 3}}},--鬼将军超级伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200401,lv = 4}}},--鬼将军超级伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200401,lv = 5}}},--鬼将军超级伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200401,lv = 6}}},--鬼将军超级伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200401,lv = 7}}},--鬼将军超级伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200401,lv = 8}}},--鬼将军超级伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200401,lv = 9}}},--鬼将军超级伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200401,lv = 10}}}--鬼将军超级伤害
		}
	},--鬼将军超级伤害
	[1802005] = {
		ShowId = 1802005,
		Name = "偷水晶",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180200501,lv = 1},[2] = {id = 180200502,lv = 1}}},--变身鬼将军偷水晶
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200501,lv = 2},[2] = {id = 180200502,lv = 2}}},--变身鬼将军偷水晶
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200501,lv = 3},[2] = {id = 180200502,lv = 3}}},--变身鬼将军偷水晶
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200501,lv = 4},[2] = {id = 180200502,lv = 4}}},--变身鬼将军偷水晶
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200501,lv = 5},[2] = {id = 180200502,lv = 5}}},--变身鬼将军偷水晶
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200501,lv = 6},[2] = {id = 180200502,lv = 6}}},--变身鬼将军偷水晶
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200501,lv = 7},[2] = {id = 180200502,lv = 7}}},--变身鬼将军偷水晶
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200501,lv = 8},[2] = {id = 180200502,lv = 8}}},--变身鬼将军偷水晶
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200501,lv = 9},[2] = {id = 180200502,lv = 9}}},--变身鬼将军偷水晶
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200501,lv = 10},[2] = {id = 180200502,lv = 10}}}--变身鬼将军偷水晶
		}
	},--变身鬼将军偷水晶
	[1802008] = {
		ShowId = 1802008,
		Name = "横扫",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180200801,lv = 1}}},--伏尸将军群体伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200801,lv = 2}}},--伏尸将军群体伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200801,lv = 3}}},--伏尸将军群体伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200801,lv = 4}}},--伏尸将军群体伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200801,lv = 5}}},--伏尸将军群体伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200801,lv = 6}}},--伏尸将军群体伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200801,lv = 7}}},--伏尸将军群体伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200801,lv = 8}}},--伏尸将军群体伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200801,lv = 9}}},--伏尸将军群体伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200801,lv = 10}}}--伏尸将军群体伤害
		}
	},--伏尸将军群体伤害
	[1802009] = {
		ShowId = 1802009,
		Name = "横扫",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180200901,lv = 1}}},--石瀑将军群体伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200901,lv = 2}}},--石瀑将军群体伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200901,lv = 3}}},--石瀑将军群体伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200901,lv = 4}}},--石瀑将军群体伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200901,lv = 5}}},--石瀑将军群体伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200901,lv = 6}}},--石瀑将军群体伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200901,lv = 7}}},--石瀑将军群体伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200901,lv = 8}}},--石瀑将军群体伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200901,lv = 9}}},--石瀑将军群体伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180200901,lv = 10}}}--石瀑将军群体伤害
		}
	},--石瀑将军群体伤害
	[1802012] = {
		ShowId = 1802012,
		Name = "横扫",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180201201,lv = 1}}},--山蜘蛛技能2前排伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180201201,lv = 2}}},--山蜘蛛技能2前排伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180201201,lv = 3}}},--山蜘蛛技能2前排伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180201201,lv = 4}}},--山蜘蛛技能2前排伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180201201,lv = 5}}},--山蜘蛛技能2前排伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180201201,lv = 6}}},--山蜘蛛技能2前排伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180201201,lv = 7}}},--山蜘蛛技能2前排伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180201201,lv = 8}}},--山蜘蛛技能2前排伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180201201,lv = 9}}},--山蜘蛛技能2前排伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180201201,lv = 10}}}--山蜘蛛技能2前排伤害
		}
	},--山蜘蛛技能2前排伤害
	[1803005] = {
		ShowId = 1803005,
		Name = "攻击增幅",
		Quality = 0,
		SkillType = 1,
		FireType = 2,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180300501,lv = 1},[2] = {id = 180300502,lv = 1}}},--变身鬼将军增加攻击
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180300501,lv = 2},[2] = {id = 180300502,lv = 2}}},--变身鬼将军增加攻击
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180300501,lv = 3},[2] = {id = 180300502,lv = 3}}},--变身鬼将军增加攻击
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180300501,lv = 4},[2] = {id = 180300502,lv = 4}}},--变身鬼将军增加攻击
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180300501,lv = 5},[2] = {id = 180300502,lv = 5}}},--变身鬼将军增加攻击
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180300501,lv = 6},[2] = {id = 180300502,lv = 6}}},--变身鬼将军增加攻击
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180300501,lv = 7},[2] = {id = 180300502,lv = 7}}},--变身鬼将军增加攻击
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180300501,lv = 8},[2] = {id = 180300502,lv = 8}}},--变身鬼将军增加攻击
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180300501,lv = 9},[2] = {id = 180300502,lv = 9}}},--变身鬼将军增加攻击
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180300501,lv = 10},[2] = {id = 180300502,lv = 10}}}--变身鬼将军增加攻击
		}
	},--变身鬼将军增加攻击
	[1803012] = {
		ShowId = 1803012,
		Name = "回血",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 2,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304018",
		SkillEffectType = 1,
		ShowFireType = 1,
		ExclusiveWeaponEffect = 0,
		lvs = {
			[1] = {Effects = {[1] = {id = 180301201,lv = 1},[2] = {id = 180301202,lv = 1}}},--山蜘蛛技能3回血
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180301201,lv = 2},[2] = {id = 180301202,lv = 2}}},--山蜘蛛技能3回血
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180301201,lv = 3},[2] = {id = 180301202,lv = 3}}},--山蜘蛛技能3回血
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180301201,lv = 4},[2] = {id = 180301202,lv = 4}}},--山蜘蛛技能3回血
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180301201,lv = 5},[2] = {id = 180301202,lv = 5}}},--山蜘蛛技能3回血
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180301201,lv = 6},[2] = {id = 180301202,lv = 6}}},--山蜘蛛技能3回血
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180301201,lv = 7},[2] = {id = 180301202,lv = 7}}},--山蜘蛛技能3回血
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180301201,lv = 8},[2] = {id = 180301202,lv = 8}}},--山蜘蛛技能3回血
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180301201,lv = 9},[2] = {id = 180301202,lv = 9}}},--山蜘蛛技能3回血
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 180301201,lv = 10},[2] = {id = 180301202,lv = 10}}}--山蜘蛛技能3回血
		}
	},--山蜘蛛技能3回血
	[2001001] = {
		ShowId = 1301002,
		Name = "雷光刃",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301002",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200100101,lv = 1}}},--新手战斗曹玄亮技能1伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100101,lv = 2}}},--新手战斗曹玄亮技能1伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100101,lv = 3}}},--新手战斗曹玄亮技能1伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100101,lv = 4}}},--新手战斗曹玄亮技能1伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100101,lv = 5}}},--新手战斗曹玄亮技能1伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100101,lv = 6}}},--新手战斗曹玄亮技能1伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100101,lv = 7}}},--新手战斗曹玄亮技能1伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100101,lv = 8}}},--新手战斗曹玄亮技能1伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100101,lv = 9}}},--新手战斗曹玄亮技能1伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100101,lv = 10}}}--新手战斗曹玄亮技能1伤害
		}
	},--新手战斗曹玄亮技能1伤害
	[2001002] = {
		ShowId = 1302002,
		Name = "雷光钻",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1302002",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200100201,lv = 1}}},--新手战斗曹玄亮技能2伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100201,lv = 2}}},--新手战斗曹玄亮技能2伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100201,lv = 3}}},--新手战斗曹玄亮技能2伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100201,lv = 4}}},--新手战斗曹玄亮技能2伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100201,lv = 5}}},--新手战斗曹玄亮技能2伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100201,lv = 6}}},--新手战斗曹玄亮技能2伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100201,lv = 7}}},--新手战斗曹玄亮技能2伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100201,lv = 8}}},--新手战斗曹玄亮技能2伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100201,lv = 9}}},--新手战斗曹玄亮技能2伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200100201,lv = 10}}}--新手战斗曹玄亮技能2伤害
		}
	},--新手战斗曹玄亮技能2伤害
	[2002001] = {
		ShowId = 1301007,
		Name = "大焱裂空锤",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301007",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200200101,lv = 1}}},--新手战斗战斗曹焱兵技能1伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200101,lv = 2}}},--新手战斗战斗曹焱兵技能1伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200101,lv = 3}}},--新手战斗战斗曹焱兵技能1伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200101,lv = 4}}},--新手战斗战斗曹焱兵技能1伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200101,lv = 5}}},--新手战斗战斗曹焱兵技能1伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200101,lv = 6}}},--新手战斗战斗曹焱兵技能1伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200101,lv = 7}}},--新手战斗战斗曹焱兵技能1伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200101,lv = 8}}},--新手战斗战斗曹焱兵技能1伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200101,lv = 9}}},--新手战斗战斗曹焱兵技能1伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200101,lv = 10}}}--新手战斗战斗曹焱兵技能1伤害
		}
	},--新手战斗战斗曹焱兵技能1伤害
	[2002002] = {
		ShowId = 1302007,
		Name = "无相火皇",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1302007",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200200201,lv = 1}}},--新手战斗战斗曹焱兵技能2伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200201,lv = 2}}},--新手战斗战斗曹焱兵技能2伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200201,lv = 3}}},--新手战斗战斗曹焱兵技能2伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200201,lv = 4}}},--新手战斗战斗曹焱兵技能2伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200201,lv = 5}}},--新手战斗战斗曹焱兵技能2伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200201,lv = 6}}},--新手战斗战斗曹焱兵技能2伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200201,lv = 7}}},--新手战斗战斗曹焱兵技能2伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200201,lv = 8}}},--新手战斗战斗曹焱兵技能2伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200201,lv = 9}}},--新手战斗战斗曹焱兵技能2伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200200201,lv = 10}}}--新手战斗战斗曹焱兵技能2伤害
		}
	},--新手战斗战斗曹焱兵技能2伤害
	[2003001] = {
		ShowId = 1301009,
		Name = "厚土双臂",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1301009",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200300101,lv = 1}}},--新手战斗北落师门技能1伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200300101,lv = 2}}},--新手战斗北落师门技能1伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200300101,lv = 3}}},--新手战斗北落师门技能1伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200300101,lv = 4}}},--新手战斗北落师门技能1伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200300101,lv = 5}}},--新手战斗北落师门技能1伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200300101,lv = 6}}},--新手战斗北落师门技能1伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200300101,lv = 7}}},--新手战斗北落师门技能1伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200300101,lv = 8}}},--新手战斗北落师门技能1伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200300101,lv = 9}}},--新手战斗北落师门技能1伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200300101,lv = 10}}}--新手战斗北落师门技能1伤害
		}
	},--新手战斗北落师门技能1伤害
	[2004001] = {
		ShowId = 1303013,
		Name = "地狱咆哮",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 3,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303013",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200400101,lv = 1}}},--新手战斗塞伯罗斯技能伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200400101,lv = 2}}},--新手战斗塞伯罗斯技能伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200400101,lv = 3}}},--新手战斗塞伯罗斯技能伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200400101,lv = 4}}},--新手战斗塞伯罗斯技能伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200400101,lv = 5}}},--新手战斗塞伯罗斯技能伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200400101,lv = 6}}},--新手战斗塞伯罗斯技能伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200400101,lv = 7}}},--新手战斗塞伯罗斯技能伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200400101,lv = 8}}},--新手战斗塞伯罗斯技能伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200400101,lv = 9}}},--新手战斗塞伯罗斯技能伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200400101,lv = 10}}}--新手战斗塞伯罗斯技能伤害
		}
	},--新手战斗塞伯罗斯技能伤害
	[2005001] = {
		ShowId = 1303002,
		Name = "我王修罗炎烈拳",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 3,
		DoubleHit = 1,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303002",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200500101,lv = 1}}},--新手战斗许褚技能伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500101,lv = 2}}},--新手战斗许褚技能伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500101,lv = 3}}},--新手战斗许褚技能伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500101,lv = 4}}},--新手战斗许褚技能伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500101,lv = 5}}},--新手战斗许褚技能伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500101,lv = 6}}},--新手战斗许褚技能伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500101,lv = 7}}},--新手战斗许褚技能伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500101,lv = 8}}},--新手战斗许褚技能伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500101,lv = 9}}},--新手战斗许褚技能伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500101,lv = 10}}}--新手战斗许褚技能伤害
		}
	},--新手战斗许褚技能伤害
	[2005002] = {
		ShowId = 1304001,
		Name = "怒斩",
		Quality = 0,
		SkillType = 2,
		FireType = 3,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304001",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200500201,lv = 1},[2] = {id = 200500202,lv = 1}}},--新手战斗插槽1追击伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500201,lv = 2},[2] = {id = 200500202,lv = 2}}},--新手战斗插槽1追击伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500201,lv = 3},[2] = {id = 200500202,lv = 3}}},--新手战斗插槽1追击伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500201,lv = 4},[2] = {id = 200500202,lv = 4}}},--新手战斗插槽1追击伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500201,lv = 5},[2] = {id = 200500202,lv = 5}}},--新手战斗插槽1追击伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500201,lv = 6},[2] = {id = 200500202,lv = 6}}},--新手战斗插槽1追击伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500201,lv = 7},[2] = {id = 200500202,lv = 7}}},--新手战斗插槽1追击伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500201,lv = 8},[2] = {id = 200500202,lv = 8}}},--新手战斗插槽1追击伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500201,lv = 9},[2] = {id = 200500202,lv = 9}}},--新手战斗插槽1追击伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500201,lv = 10},[2] = {id = 200500202,lv = 10}}}--新手战斗插槽1追击伤害
		}
	},--新手战斗插槽1追击伤害
	[2005003] = {
		ShowId = 1304002,
		Name = "禁断之刃",
		Quality = 0,
		SkillType = 2,
		FireType = 3,
		CrystalCount = 0,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1304002",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200500301,lv = 1}}},--新手战斗插槽2追击伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500301,lv = 2}}},--新手战斗插槽2追击伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500301,lv = 3}}},--新手战斗插槽2追击伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500301,lv = 4}}},--新手战斗插槽2追击伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500301,lv = 5}}},--新手战斗插槽2追击伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500301,lv = 6}}},--新手战斗插槽2追击伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500301,lv = 7}}},--新手战斗插槽2追击伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500301,lv = 8}}},--新手战斗插槽2追击伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500301,lv = 9}}},--新手战斗插槽2追击伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200500301,lv = 10}}}--新手战斗插槽2追击伤害
		}
	},--新手战斗插槽2追击伤害
	[2006001] = {
		ShowId = 1301011,
		Name = "风神斩",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 3,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303002",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200600101,lv = 1}}},--新手战斗阎风吒技能伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200600101,lv = 2}}},--新手战斗阎风吒技能伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200600101,lv = 3}}},--新手战斗阎风吒技能伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200600101,lv = 4}}},--新手战斗阎风吒技能伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200600101,lv = 5}}},--新手战斗阎风吒技能伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200600101,lv = 6}}},--新手战斗阎风吒技能伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200600101,lv = 7}}},--新手战斗阎风吒技能伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200600101,lv = 8}}},--新手战斗阎风吒技能伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200600101,lv = 9}}},--新手战斗阎风吒技能伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200600101,lv = 10}}}--新手战斗阎风吒技能伤害
		}
	},--新手战斗阎风吒技能伤害
	[2007001] = {
		ShowId = 1301004,
		Name = "王者之戟",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 3,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303002",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200700101,lv = 1}}},--新手战斗项昆仑技能伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200700101,lv = 2}}},--新手战斗项昆仑技能伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200700101,lv = 3}}},--新手战斗项昆仑技能伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200700101,lv = 4}}},--新手战斗项昆仑技能伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200700101,lv = 5}}},--新手战斗项昆仑技能伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200700101,lv = 6}}},--新手战斗项昆仑技能伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200700101,lv = 7}}},--新手战斗项昆仑技能伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200700101,lv = 8}}},--新手战斗项昆仑技能伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200700101,lv = 9}}},--新手战斗项昆仑技能伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200700101,lv = 10}}}--新手战斗项昆仑技能伤害
		}
	},--新手战斗项昆仑技能伤害
	[2008001] = {
		ShowId = 1301014,
		Name = "吕氏余烈",
		Quality = 0,
		SkillType = 1,
		FireType = 1,
		CrystalCount = 3,
		DoubleHit = 0,
		InitLevel = 1,
		WearRange = {1,2,3},
		MaxLevel = 10,
		CD = 0,
		Icon = "icon_1303002",
		ShowFireType = 1,
		ExclusiveWeaponEffect = 130300209,
		lvs = {
			[1] = {Effects = {[1] = {id = 200800101,lv = 1}}},--新手战斗吕仙宫技能伤害
			[2] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200800101,lv = 2}}},--新手战斗吕仙宫技能伤害
			[3] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200800101,lv = 3}}},--新手战斗吕仙宫技能伤害
			[4] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200800101,lv = 4}}},--新手战斗吕仙宫技能伤害
			[5] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200800101,lv = 5}}},--新手战斗吕仙宫技能伤害
			[6] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200800101,lv = 6}}},--新手战斗吕仙宫技能伤害
			[7] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200800101,lv = 7}}},--新手战斗吕仙宫技能伤害
			[8] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200800101,lv = 8}}},--新手战斗吕仙宫技能伤害
			[9] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200800101,lv = 9}}},--新手战斗吕仙宫技能伤害
			[10] = {Cost = {[1] = {Id = 1401005,Val = 10}},Effects = {[1] = {id = 200800101,lv = 10}}}--新手战斗吕仙宫技能伤害
		}
	}--新手战斗吕仙宫技能伤害
}