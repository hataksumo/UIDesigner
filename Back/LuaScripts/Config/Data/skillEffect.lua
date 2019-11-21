--[[
--note:
配置技能效果的主逻辑，如目标，是否为被动
配置各等级技能效果的数值
colums:
{FireType,1-主动；2-被动；3-连击} ,{Type,效果类型:1-伤害，2-治疗，3-影响水晶，4-buff，5-吸血} ,{SubType,buff类型的子类型：1-增益buff,2-减益buff,3-标记} ,{DetailType,细节类型} ,{AttackNum,伤害段数} ,{Duration,持续回合数} ,{EndType,结算类型：1-施法者行动前（；2-施法者行动后；3-被施法者行动前；4-被施法者行动后；5-攻击次数；6-叠加次数} ,{Share,是否共享：FALSE-不共享，TRUE-共享} ,{Stack,每段攻击叠加层数#最大叠加层数} ,{EffectParam,buff自然结束时产生的效果ID} ,{Target1,1-常规；2-随机；3-所有；4-特殊标记} ,{Target2,1-自己；2-自己与搭档；3-友方（不包含自己）；4-我方（包含自己）；5-敌方；6-场上所有；7-自己的搭档} ,{Target3,1-全部；2-前排；3-后排；4-一列；5-已选出目标的两边} ,{Target4,特殊条件：类型#条件参数（0为条件不需要参数时使用的默认参数）【1-特殊标记（1#标记ID）；2-生命最低（2#0）。。。】} ,{Target5,目标数量} ,{FxType,特效类型1-单个特效2-根据层数改变的类型} ,{FxId,特效资源ID} ,{Lv,等级} ,{Value[1],值1} ,{Value[2],值2} ,{Value[3],值3} ,{Prop[1],属性1} ,{Prop[2],属性2} ,{TriggerEffect.id,触发技能效果} ,{TriggerEffect.lv,触发技能效果等级} ,{ConId[1],条件1ID} ,{ConParam[1][1],条件1参数1} ,{ConParam[1][2],条件1参数2} ,{ConParam[1][3],条件1参数3} ,{ConId[2],条件2ID} ,{ConParam[2][1],条件2参数1} ,{ConParam[2][2],条件2参数2} ,{ConParam[2][3],条件2参数3} ,{EffectDesc,技能效果描述：当前等级技能描述，随等级变化数值格式：[字段名#数字类型]，1-整数，2-2位小数，3-百分数（无小数点），4-百分数（两位小数）}
primary key:
#0 [技能效果]: SkillEffectId
#1 [技能效果等级]: SkillEffectId,HelpCol,Lv
]]
return{
	[130100101] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.2,[2] = 0},ConId = {[1] = 99}},--常服曹焱兵技能1伤害lv1
			[2] = {Value = {[1] = 1.4,[2] = 0},ConId = {[1] = 99}},--常服曹焱兵技能1伤害lv2
			[3] = {Value = {[1] = 1.6,[2] = 0},ConId = {[1] = 99}},--常服曹焱兵技能1伤害lv3
			[4] = {Value = {[1] = 1.8,[2] = 0},ConId = {[1] = 99}},--常服曹焱兵技能1伤害lv4
			[5] = {Value = {[1] = 2,[2] = 0},ConId = {[1] = 99}}--常服曹焱兵技能1伤害lv5
		}
	},--常服曹焱兵技能1伤害
	[130100102] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 101},ConParam = {[1] = {[1] = 1,[2] = 0}}},--常服曹焱兵技能1获得水晶lv1
			[2] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 101},ConParam = {[1] = {[1] = 1,[2] = 0}}},--常服曹焱兵技能1获得水晶lv2
			[3] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 101},ConParam = {[1] = {[1] = 1,[2] = 0}}},--常服曹焱兵技能1获得水晶lv3
			[4] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 101},ConParam = {[1] = {[1] = 1,[2] = 0}}},--常服曹焱兵技能1获得水晶lv4
			[5] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 101},ConParam = {[1] = {[1] = 1,[2] = 0}}}--常服曹焱兵技能1获得水晶lv5
		}
	},--常服曹焱兵技能1获得水晶
	[130100201] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.2,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能1伤害lv1
			[2] = {Value = {[1] = 1.4,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能1伤害lv2
			[3] = {Value = {[1] = 1.6,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能1伤害lv3
			[4] = {Value = {[1] = 1.8,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能1伤害lv4
			[5] = {Value = {[1] = 2,[2] = 0},ConId = {[1] = 99}}--曹玄亮技能1伤害lv5
		}
	},--曹玄亮技能1伤害
	[130100202] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--曹玄亮技能1获得水晶lv1
			[2] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--曹玄亮技能1获得水晶lv2
			[3] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--曹玄亮技能1获得水晶lv3
			[4] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--曹玄亮技能1获得水晶lv4
			[5] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}}--曹玄亮技能1获得水晶lv5
		}
	},--曹玄亮技能1获得水晶
	[130100301] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 0.5},ConId = {[1] = 99}},--夏玲技能1造成伤害lv1
			[2] = {Value = {[1] = 0.6},ConId = {[1] = 99}},--夏玲技能1造成伤害lv2
			[3] = {Value = {[1] = 0.7},ConId = {[1] = 99}},--夏玲技能1造成伤害lv3
			[4] = {Value = {[1] = 0.8},ConId = {[1] = 99}},--夏玲技能1造成伤害lv4
			[5] = {Value = {[1] = 0.9},ConId = {[1] = 99}}--夏玲技能1造成伤害lv5
		}
	},--夏玲技能1造成伤害
	[130100302] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--夏玲技能1获得水晶lv1
			[2] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--夏玲技能1获得水晶lv2
			[3] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--夏玲技能1获得水晶lv3
			[4] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--夏玲技能1获得水晶lv4
			[5] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}}--夏玲技能1获得水晶lv5
		}
	},--夏玲技能1获得水晶
	[130100401] = {
		FireType = 1,
		Type = 5,
		SubType = 0,
		DetailType = 5001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 13,
		lvs = {
			[1] = {Value = {[1] = 1.5,[2] = 0,[3] = 0.5},ConId = {[1] = 99}},--项昆仑技能1吸血lv1
			[2] = {Value = {[1] = 1.6,[2] = 0,[3] = 0.5},ConId = {[1] = 99}},--项昆仑技能1吸血lv2
			[3] = {Value = {[1] = 1.7,[2] = 0,[3] = 0.5},ConId = {[1] = 99},EffectDesc = "专属武器效果:技能伤害增加280%"},--项昆仑技能1吸血lv3
			[4] = {Value = {[1] = 1.8,[2] = 0,[3] = 0.5},ConId = {[1] = 99}},--项昆仑技能1吸血lv4
			[5] = {Value = {[1] = 2,[2] = 0,[3] = 0.5},ConId = {[1] = 99}}--项昆仑技能1吸血lv5
		}
	},--项昆仑技能1吸血
	[130100501] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4006,
		AttackNum = 1,
		Share = true,
		Stack = {1,3},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 6,
		lvs = {
			[1] = {Value = {[1] = 0.2},Prop = {[1] = 108},ConId = {[1] = 99}},--刘羽禅技能1增加攻击lv1
			[2] = {Value = {[1] = 0.25},Prop = {[1] = 108},ConId = {[1] = 99},EffectDesc = "专属武器效果:禁锢时每回合50%（+效果命中）概率永久降低目标15%攻击力"},--刘羽禅技能1增加攻击lv2
			[3] = {Value = {[1] = 0.3},Prop = {[1] = 108},ConId = {[1] = 99}},--刘羽禅技能1增加攻击lv3
			[4] = {Value = {[1] = 0.35},Prop = {[1] = 108},ConId = {[1] = 99}},--刘羽禅技能1增加攻击lv4
			[5] = {Value = {[1] = 0.4},Prop = {[1] = 108},ConId = {[1] = 99}}--刘羽禅技能1增加攻击lv5
		}
	},--刘羽禅技能1增加攻击
	[130100502] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 5,[2] = 1},ConId = {[1] = 99}},--刘羽禅技能1获得水晶lv1
			[2] = {Value = {[1] = 5,[2] = 1},ConId = {[1] = 99}},--刘羽禅技能1获得水晶lv2
			[3] = {Value = {[1] = 5,[2] = 1},ConId = {[1] = 99}},--刘羽禅技能1获得水晶lv3
			[4] = {Value = {[1] = 5,[2] = 1},ConId = {[1] = 99},EffectDesc = "专属武器效果:为队友抵挡伤害时格挡概率增加30%"},--刘羽禅技能1获得水晶lv4
			[5] = {Value = {[1] = 5,[2] = 1},ConId = {[1] = 99}}--刘羽禅技能1获得水晶lv5
		}
	},--刘羽禅技能1获得水晶
	[130100601] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 99}},--红莲缇娜技能1削减水晶lv1
			[2] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 99},EffectDesc = "专属武器效果:额外造成目标已损失生命值12%的伤害"},--红莲缇娜技能1削减水晶lv2
			[3] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 99}},--红莲缇娜技能1削减水晶lv3
			[4] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 99}},--红莲缇娜技能1削减水晶lv4
			[5] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 99},EffectDesc = "每损失1%生命，攻击力增加1%"}--红莲缇娜技能1削减水晶lv5
		}
	},--红莲缇娜技能1削减水晶
	[130100602] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4104,
		AttackNum = 1,
		Share = false,
		Stack = {1,3},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		FxType = 2,
		FxId = 21,
		lvs = {
			[1] = {ConId = {[1] = 99}},--红莲缇娜技能1生成印记lv1
			[2] = {ConId = {[1] = 99}},--红莲缇娜技能1生成印记lv2
			[3] = {ConId = {[1] = 99}},--红莲缇娜技能1生成印记lv3
			[4] = {ConId = {[1] = 99},EffectDesc = "专属武器效果:该技能暴击率提升30%"},--红莲缇娜技能1生成印记lv4
			[5] = {ConId = {[1] = 99}}--红莲缇娜技能1生成印记lv5
		}
	},--红莲缇娜技能1生成印记
	[130100701] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5,[2] = 0},ConId = {[1] = 99}},--战斗曹焱兵技能1伤害lv1
			[2] = {Value = {[1] = 1.75,[2] = 0},ConId = {[1] = 99}},--战斗曹焱兵技能1伤害lv2
			[3] = {Value = {[1] = 2,[2] = 0},ConId = {[1] = 99},EffectDesc = "专属武器效果:被召唤出场时立即释放1次本技能"},--战斗曹焱兵技能1伤害lv3
			[4] = {Value = {[1] = 2.25,[2] = 0},ConId = {[1] = 99}},--战斗曹焱兵技能1伤害lv4
			[5] = {Value = {[1] = 2.5,[2] = 0},ConId = {[1] = 99},EffectDesc = "专属武器效果:额外为目标回复食火蜥攻击最大值240%的血量"}--战斗曹焱兵技能1伤害lv5
		}
	},--战斗曹焱兵技能1伤害
	[130100702] = {
		FireType = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4001,
		AttackNum = 1,
		Duration = 1,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 1,
		lvs = {
			[1] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.5,[2] = 0}}},--战斗曹焱兵技能1眩晕lv1
			[2] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.55,[2] = 0}}},--战斗曹焱兵技能1眩晕lv2
			[3] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.6,[2] = 0}}},--战斗曹焱兵技能1眩晕lv3
			[4] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.7,[2] = 0}},EffectDesc = "专属武器效果:若本次攻击击杀了目标，则对另一名生命值比例最低的目标追加一次攻击280%伤害的攻击"},--战斗曹焱兵技能1眩晕lv4
			[5] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.8,[2] = 0}}}--战斗曹焱兵技能1眩晕lv5
		}
	},--战斗曹焱兵技能1眩晕
	[130100801] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5,[2] = 0},ConId = {[1] = 99}},--黑尔坎普技能1伤害lv1
			[2] = {Value = {[1] = 1.75,[2] = 0},ConId = {[1] = 99}},--黑尔坎普技能1伤害lv2
			[3] = {Value = {[1] = 2,[2] = 0},ConId = {[1] = 99}},--黑尔坎普技能1伤害lv3
			[4] = {Value = {[1] = 2.25,[2] = 0},ConId = {[1] = 99}},--黑尔坎普技能1伤害lv4
			[5] = {Value = {[1] = 2.5,[2] = 0},ConId = {[1] = 99}}--黑尔坎普技能1伤害lv5
		}
	},--黑尔坎普技能1伤害
	[130100802] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--黑尔坎普技能1获得水晶lv1
			[2] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--黑尔坎普技能1获得水晶lv2
			[3] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--黑尔坎普技能1获得水晶lv3
			[4] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--黑尔坎普技能1获得水晶lv4
			[5] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}}--黑尔坎普技能1获得水晶lv5
		}
	},--黑尔坎普技能1获得水晶
	[130100901] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5,[2] = 0},ConId = {[1] = 99}},--北落师门技能1伤害lv1
			[2] = {Value = {[1] = 1.75,[2] = 0},ConId = {[1] = 99}},--北落师门技能1伤害lv2
			[3] = {Value = {[1] = 2,[2] = 0},ConId = {[1] = 99}},--北落师门技能1伤害lv3
			[4] = {Value = {[1] = 2.25,[2] = 0},ConId = {[1] = 99}},--北落师门技能1伤害lv4
			[5] = {Value = {[1] = 2.5,[2] = 0},ConId = {[1] = 99}}--北落师门技能1伤害lv5
		}
	},--北落师门技能1伤害
	[130100902] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--北落师门技能1获得水晶lv1
			[2] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--北落师门技能1获得水晶lv2
			[3] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--北落师门技能1获得水晶lv3
			[4] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--北落师门技能1获得水晶lv4
			[5] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}}--北落师门技能1获得水晶lv5
		}
	},--北落师门技能1获得水晶
	[130101001] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5,[2] = 0},ConId = {[1] = 99}},--盖文技能1伤害lv1
			[2] = {Value = {[1] = 1.75,[2] = 0},ConId = {[1] = 99}},--盖文技能1伤害lv2
			[3] = {Value = {[1] = 2,[2] = 0},ConId = {[1] = 99}},--盖文技能1伤害lv3
			[4] = {Value = {[1] = 2.25,[2] = 0},ConId = {[1] = 99}},--盖文技能1伤害lv4
			[5] = {Value = {[1] = 2.5,[2] = 0},ConId = {[1] = 99}}--盖文技能1伤害lv5
		}
	},--盖文技能1伤害
	[130101002] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--盖文技能1获得水晶lv1
			[2] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--盖文技能1获得水晶lv2
			[3] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--盖文技能1获得水晶lv3
			[4] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--盖文技能1获得水晶lv4
			[5] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}}--盖文技能1获得水晶lv5
		}
	},--盖文技能1获得水晶
	[130101101] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--阎风吒技能1伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--阎风吒技能1伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--阎风吒技能1伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--阎风吒技能1伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--阎风吒技能1伤害lv5
		}
	},--阎风吒技能1伤害
	[130101102] = {
		FireType = 1,
		Type = 4,
		SubType = 3,
		DetailType = 4101,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		FxType = 2,
		FxId = 17,
		lvs = {
			[1] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.3,[2] = 0}}},--阎风吒技能1附加印记lv1
			[2] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.35,[2] = 0}}},--阎风吒技能1附加印记lv2
			[3] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.4,[2] = 0}}},--阎风吒技能1附加印记lv3
			[4] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.45,[2] = 0}}},--阎风吒技能1附加印记lv4
			[5] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.5,[2] = 0}}}--阎风吒技能1附加印记lv5
		}
	},--阎风吒技能1附加印记
	[130101201] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--南御夫技能1伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--南御夫技能1伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--南御夫技能1伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--南御夫技能1伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--南御夫技能1伤害lv5
		}
	},--南御夫技能1伤害
	[130101202] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3003,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 99}},--南御夫技能1偷取水晶lv1
			[2] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 99}},--南御夫技能1偷取水晶lv2
			[3] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 99}},--南御夫技能1偷取水晶lv3
			[4] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 99}},--南御夫技能1偷取水晶lv4
			[5] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 99}}--南御夫技能1偷取水晶lv5
		}
	},--南御夫技能1偷取水晶
	[130101301] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--吉拉技能1伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--吉拉技能1伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--吉拉技能1伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--吉拉技能1伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--吉拉技能1伤害lv5
		}
	},--吉拉技能1伤害
	[130101302] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 4,[2] = 1},ConId = {[1] = 99}},--吉拉技能1削减水晶lv1
			[2] = {Value = {[1] = 4,[2] = 1},ConId = {[1] = 99}},--吉拉技能1削减水晶lv2
			[3] = {Value = {[1] = 4,[2] = 1},ConId = {[1] = 99}},--吉拉技能1削减水晶lv3
			[4] = {Value = {[1] = 4,[2] = 1},ConId = {[1] = 99}},--吉拉技能1削减水晶lv4
			[5] = {Value = {[1] = 4,[2] = 1},ConId = {[1] = 99}}--吉拉技能1削减水晶lv5
		}
	},--吉拉技能1削减水晶
	[130101401] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--吕仙宫技能1伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--吕仙宫技能1伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--吕仙宫技能1伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--吕仙宫技能1伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--吕仙宫技能1伤害lv5
		}
	},--吕仙宫技能1伤害
	[130101402] = {
		FireType = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4004,
		AttackNum = 1,
		Duration = 1,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 3,
		lvs = {
			[1] = {ConId = {[1] = 99}},--吕仙宫技能1禁止技能lv1
			[2] = {ConId = {[1] = 99}},--吕仙宫技能1禁止技能lv2
			[3] = {ConId = {[1] = 99}},--吕仙宫技能1禁止技能lv3
			[4] = {ConId = {[1] = 99}},--吕仙宫技能1禁止技能lv4
			[5] = {ConId = {[1] = 99}}--吕仙宫技能1禁止技能lv5
		}
	},--吕仙宫技能1禁止技能
	[130101501] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 4,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--阎巧巧技能1伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--阎巧巧技能1伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--阎巧巧技能1伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--阎巧巧技能1伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--阎巧巧技能1伤害lv5
		}
	},--阎巧巧技能1伤害
	[130101502] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--阎巧巧技能1获得水晶lv1
			[2] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--阎巧巧技能1获得水晶lv2
			[3] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--阎巧巧技能1获得水晶lv3
			[4] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--阎巧巧技能1获得水晶lv4
			[5] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}}--阎巧巧技能1获得水晶lv5
		}
	},--阎巧巧技能1获得水晶
	[130200101] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.2,[2] = 0},ConId = {[1] = 99}},--常服曹焱兵技能2伤害lv1
			[2] = {Value = {[1] = 1.4,[2] = 0},ConId = {[1] = 99}},--常服曹焱兵技能2伤害lv2
			[3] = {Value = {[1] = 1.6,[2] = 0},ConId = {[1] = 99}},--常服曹焱兵技能2伤害lv3
			[4] = {Value = {[1] = 1.8,[2] = 0},ConId = {[1] = 99}},--常服曹焱兵技能2伤害lv4
			[5] = {Value = {[1] = 2,[2] = 0},ConId = {[1] = 99}}--常服曹焱兵技能2伤害lv5
		}
	},--常服曹焱兵技能2伤害
	[130200102] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 5,[2] = 2},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.5,[2] = 0}}},--常服曹焱兵技能2减少水晶lv1
			[2] = {Value = {[1] = 5,[2] = 2},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.6,[2] = 0}}},--常服曹焱兵技能2减少水晶lv2
			[3] = {Value = {[1] = 5,[2] = 2},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.7,[2] = 0}}},--常服曹焱兵技能2减少水晶lv3
			[4] = {Value = {[1] = 5,[2] = 2},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.8,[2] = 0}}},--常服曹焱兵技能2减少水晶lv4
			[5] = {Value = {[1] = 5,[2] = 2},ConId = {[1] = 101},ConParam = {[1] = {[1] = 1,[2] = 0}}}--常服曹焱兵技能2减少水晶lv5
		}
	},--常服曹焱兵技能2减少水晶
	[130200201] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 4,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.2,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能2造成伤害lv1
			[2] = {Value = {[1] = 1.4,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能2造成伤害lv2
			[3] = {Value = {[1] = 1.6,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能2造成伤害lv3
			[4] = {Value = {[1] = 1.8,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能2造成伤害lv4
			[5] = {Value = {[1] = 2,[2] = 0},ConId = {[1] = 99}}--曹玄亮技能2造成伤害lv5
		}
	},--曹玄亮技能2造成伤害
	[130200202] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 5,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.2,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能2目标两旁造成伤害lv1
			[2] = {Value = {[1] = 1.4,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能2目标两旁造成伤害lv2
			[3] = {Value = {[1] = 1.6,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能2目标两旁造成伤害lv3
			[4] = {Value = {[1] = 1.8,[2] = 0},ConId = {[1] = 99}},--曹玄亮技能2目标两旁造成伤害lv4
			[5] = {Value = {[1] = 2,[2] = 0},ConId = {[1] = 99}}--曹玄亮技能2目标两旁造成伤害lv5
		}
	},--曹玄亮技能2目标两旁造成伤害
	[130200301] = {
		FireType = 2,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		EndType = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.5}},EffectDesc = "专属武器效果:50%（+效果命中）概率额外造成攻击280%的伤害"},--夏玲技能2获得水晶lv1
			[2] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.6}}},--夏玲技能2获得水晶lv2
			[3] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "专属武器效果:50%（+效果命中）概率附加目标最大生命值10%的额外伤害"},--夏玲技能2获得水晶lv3
			[4] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.8}}},--夏玲技能2获得水晶lv4
			[5] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 112},ConParam = {[1] = {[1] = 1}},EffectDesc = "专属武器效果:每次造成伤害提升自身暴击伤害75%"}--夏玲技能2获得水晶lv5
		}
	},--夏玲技能2获得水晶
	[130200401] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4105,
		AttackNum = 1,
		Share = true,
		Stack = {1,3},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		FxType = 2,
		FxId = 20,
		lvs = {
			[1] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.25,[2] = 0}}},--项昆仑技能2生成印记lv1
			[2] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.28,[2] = 0}},EffectDesc = "专属武器效果:额外获得3个红色水晶"},--项昆仑技能2生成印记lv2
			[3] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.31,[2] = 0}}},--项昆仑技能2生成印记lv3
			[4] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.34,[2] = 0}},EffectDesc = "专属武器效果:如果技能击杀了敌人，则其余所有敌人均承受1次溢出伤害100%的伤害"},--项昆仑技能2生成印记lv4
			[5] = {ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.37,[2] = 0}}}--项昆仑技能2生成印记lv5
		}
	},--项昆仑技能2生成印记
	[130200501] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 1007,
		AttackNum = 1,
		Duration = 9999,
		EndType = 5,
		Share = true,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 6,
		lvs = {
			[1] = {Value = {[1] = 0.2,[2] = 30},ConId = {[1] = 111},ConParam = {[1] = {[1] = 1}}},--刘羽禅技能2增加攻击lv1
			[2] = {Value = {[1] = 0.2,[2] = 100},ConId = {[1] = 111},ConParam = {[1] = {[1] = 1}}},--刘羽禅技能2增加攻击lv2
			[3] = {Value = {[1] = 0.2,[2] = 200},ConId = {[1] = 111},ConParam = {[1] = {[1] = 1}},EffectDesc = "专属武器效果:50%（+效果命中）概率永久降低目标10%防御"},--刘羽禅技能2增加攻击lv3
			[4] = {Value = {[1] = 0.2,[2] = 300},ConId = {[1] = 111},ConParam = {[1] = {[1] = 1}}},--刘羽禅技能2增加攻击lv4
			[5] = {Value = {[1] = 0.2,[2] = 500},ConId = {[1] = 111},ConParam = {[1] = {[1] = 1}},EffectDesc = "专属武器效果:护盾额外为目标提供50%格挡"}--刘羽禅技能2增加攻击lv5
		}
	},--刘羽禅技能2增加攻击
	[130200601] = {
		FireType = 2,
		Type = 2,
		SubType = 0,
		DetailType = 2003,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 0.15},ConId = {[1] = 99},EffectDesc = "专属武器效果:技能消耗水晶减少3个"},--红莲缇娜技能2回复生命lv1
			[2] = {Value = {[1] = 0.15},ConId = {[1] = 99}},--红莲缇娜技能2回复生命lv2
			[3] = {Value = {[1] = 0.15},ConId = {[1] = 99},EffectDesc = "专属武器效果:受到伤害时70%概率使敌方减少4枚水晶"},--红莲缇娜技能2回复生命lv3
			[4] = {Value = {[1] = 0.15},ConId = {[1] = 99}},--红莲缇娜技能2回复生命lv4
			[5] = {Value = {[1] = 0.15},ConId = {[1] = 99},EffectDesc = "专属武器效果:当1技能杀死一个敌人时，自动再次释放1次该技能"}--红莲缇娜技能2回复生命lv5
		}
	},--红莲缇娜技能2回复生命
	[130200701] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5,[2] = 0},ConId = {[1] = 99}},--战斗曹焱兵技能2伤害lv1
			[2] = {Value = {[1] = 1.75,[2] = 0},ConId = {[1] = 99},EffectDesc = "专属武器效果:造成伤害同时50%（+效果命中）概率封禁目标被动技能"},--战斗曹焱兵技能2伤害lv2
			[3] = {Value = {[1] = 2,[2] = 0},ConId = {[1] = 99}},--战斗曹焱兵技能2伤害lv3
			[4] = {Value = {[1] = 2.25,[2] = 0},ConId = {[1] = 99}},--战斗曹焱兵技能2伤害lv4
			[5] = {Value = {[1] = 2.5,[2] = 0},ConId = {[1] = 99}}--战斗曹焱兵技能2伤害lv5
		}
	},--战斗曹焱兵技能2伤害
	[130200702] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--战斗曹焱兵技能2获得水晶lv1
			[2] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--战斗曹焱兵技能2获得水晶lv2
			[3] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--战斗曹焱兵技能2获得水晶lv3
			[4] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--战斗曹焱兵技能2获得水晶lv4
			[5] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}}--战斗曹焱兵技能2获得水晶lv5
		}
	},--战斗曹焱兵技能2获得水晶
	[130200801] = {
		FireType = 2,
		Type = 4,
		SubType = 0,
		DetailType = 4008,
		AttackNum = 1,
		Share = true,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5,[2] = 0},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.5,[2] = 0}}},--黑尔坎普技能2额外伤害lv1
			[2] = {Value = {[1] = 1.75,[2] = 0},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.55,[2] = 0}}},--黑尔坎普技能2额外伤害lv2
			[3] = {Value = {[1] = 2,[2] = 0},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.6,[2] = 0}}},--黑尔坎普技能2额外伤害lv3
			[4] = {Value = {[1] = 2.25,[2] = 0},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.7,[2] = 0}}},--黑尔坎普技能2额外伤害lv4
			[5] = {Value = {[1] = 2.5,[2] = 0},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.8,[2] = 0}}}--黑尔坎普技能2额外伤害lv5
		}
	},--黑尔坎普技能2额外伤害
	[130200901] = {
		FireType = 2,
		Type = 3,
		SubType = 1,
		DetailType = 3001,
		AttackNum = 1,
		Duration = 1,
		EndType = 5,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 2,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.5,[2] = 0}}},--北落师门技能2获得水晶lv1
			[2] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.55,[2] = 0}}},--北落师门技能2获得水晶lv2
			[3] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.6,[2] = 0}}},--北落师门技能2获得水晶lv3
			[4] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.7,[2] = 0}}},--北落师门技能2获得水晶lv4
			[5] = {Value = {[1] = 4,[2] = 2},ConId = {[1] = 101},ConParam = {[1] = {[1] = 0.8,[2] = 0}}}--北落师门技能2获得水晶lv5
		}
	},--北落师门技能2获得水晶
	[130201001] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4025,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.30201E+08,[2] = 1},ConId = {[1] = 109},ConParam = {[1] = {[1] = 1}}},--盖文技能2触发其他效果lv1
			[2] = {Value = {[1] = 1.30201E+08,[2] = 2},ConId = {[1] = 109},ConParam = {[1] = {[1] = 2}}},--盖文技能2触发其他效果lv2
			[3] = {Value = {[1] = 1.30201E+08,[2] = 3},ConId = {[1] = 109},ConParam = {[1] = {[1] = 3}}},--盖文技能2触发其他效果lv3
			[4] = {Value = {[1] = 1.30201E+08,[2] = 4},ConId = {[1] = 109},ConParam = {[1] = {[1] = 4}}},--盖文技能2触发其他效果lv4
			[5] = {Value = {[1] = 1.30201E+08,[2] = 5},ConId = {[1] = 109},ConParam = {[1] = {[1] = 5}}}--盖文技能2触发其他效果lv5
		}
	},--盖文技能2触发其他效果
	[130201002] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4103,
		AttackNum = 1,
		Share = false,
		Stack = {1,3},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		FxType = 2,
		FxId = 22,
		lvs = {
			[1] = {ConId = {[1] = 99}},--盖文技能2生成印记lv1
			[2] = {ConId = {[1] = 99}},--盖文技能2生成印记lv2
			[3] = {ConId = {[1] = 99}},--盖文技能2生成印记lv3
			[4] = {ConId = {[1] = 99}},--盖文技能2生成印记lv4
			[5] = {ConId = {[1] = 99}}--盖文技能2生成印记lv5
		}
	},--盖文技能2生成印记
	[130201101] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4025,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.3}}},--阎风吒技能2触发其他效果lv1
			[2] = {ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.35}}},--阎风吒技能2触发其他效果lv2
			[3] = {ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.4}}},--阎风吒技能2触发其他效果lv3
			[4] = {ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.45}}},--阎风吒技能2触发其他效果lv4
			[5] = {ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.5}}}--阎风吒技能2触发其他效果lv5
		}
	},--阎风吒技能2触发其他效果
	[130201102] = {FireType = 2,Type = 4,SubType = 3,DetailType = 4101,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 3,Target2 = 5,Target3 = 1,Target5 = 10,FxType = 2,FxId = 17},--阎风吒技能2附加印记
	[130201201] = {
		FireType = 2,
		Type = 2,
		SubType = 1,
		DetailType = 2001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 2,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.2},ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.3}}},--南御夫技能2回复生命lv1
			[2] = {Value = {[1] = 1.3},ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.35}}},--南御夫技能2回复生命lv2
			[3] = {Value = {[1] = 1.4},ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.4}}},--南御夫技能2回复生命lv3
			[4] = {Value = {[1] = 1.5},ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.45}}},--南御夫技能2回复生命lv4
			[5] = {Value = {[1] = 1.6},ConId = {[1] = 112},ConParam = {[1] = {[1] = 0.5}}}--南御夫技能2回复生命lv5
		}
	},--南御夫技能2回复生命
	[130201301] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3003,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--吉拉技能2偷取红水晶lv1
			[2] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--吉拉技能2偷取红水晶lv2
			[3] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--吉拉技能2偷取红水晶lv3
			[4] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--吉拉技能2偷取红水晶lv4
			[5] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}}--吉拉技能2偷取红水晶lv5
		}
	},--吉拉技能2偷取红水晶
	[130201401] = {
		FireType = 1,
		Type = 2,
		SubType = 0,
		DetailType = 2001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = "2#0",
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--吕仙宫技能2回复生命lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--吕仙宫技能2回复生命lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--吕仙宫技能2回复生命lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--吕仙宫技能2回复生命lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--吕仙宫技能2回复生命lv5
		}
	},--吕仙宫技能2回复生命
	[130201501] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4007,
		AttackNum = 1,
		Share = true,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--阎巧巧技能2提高攻击lv1
			[2] = {ConId = {[1] = 99}},--阎巧巧技能2提高攻击lv2
			[3] = {ConId = {[1] = 99}},--阎巧巧技能2提高攻击lv3
			[4] = {ConId = {[1] = 99}},--阎巧巧技能2提高攻击lv4
			[5] = {ConId = {[1] = 99}}--阎巧巧技能2提高攻击lv5
		}
	},--阎巧巧技能2提高攻击
	[130300101] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5},ConId = {[1] = 99}},--关羽技能伤害lv1
			[2] = {Value = {[1] = 3},ConId = {[1] = 99}},--关羽技能伤害lv2
			[3] = {Value = {[1] = 3.5},ConId = {[1] = 99}},--关羽技能伤害lv3
			[4] = {Value = {[1] = 4},ConId = {[1] = 99}},--关羽技能伤害lv4
			[5] = {Value = {[1] = 4.5},ConId = {[1] = 99}}--关羽技能伤害lv5
		}
	},--关羽技能伤害
	[130300109] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 0.5},ConId = {[1] = 99}},--关羽专属武器额外伤害lv1
			[2] = {Value = {[1] = 1},ConId = {[1] = 99}},--关羽专属武器额外伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--关羽专属武器额外伤害lv3
			[4] = {Value = {[1] = 2},ConId = {[1] = 99}},--关羽专属武器额外伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--关羽专属武器额外伤害lv5
		}
	},--关羽专属武器额外伤害
	[130300201] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5},ConId = {[1] = 99}},--许褚技能伤害lv1
			[2] = {Value = {[1] = 3},ConId = {[1] = 99}},--许褚技能伤害lv2
			[3] = {Value = {[1] = 3.5},ConId = {[1] = 99}},--许褚技能伤害lv3
			[4] = {Value = {[1] = 4},ConId = {[1] = 99}},--许褚技能伤害lv4
			[5] = {Value = {[1] = 4.5},ConId = {[1] = 99}}--许褚技能伤害lv5
		}
	},--许褚技能伤害
	[130300209] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1003,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 0.5},ConId = {[1] = 99}},--许褚专属武器额外伤害lv1
			[2] = {Value = {[1] = 1},ConId = {[1] = 99}},--许褚专属武器额外伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--许褚专属武器额外伤害lv3
			[4] = {Value = {[1] = 2},ConId = {[1] = 99}},--许褚专属武器额外伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--许褚专属武器额外伤害lv5
		}
	},--许褚专属武器额外伤害
	[130300301] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5},ConId = {[1] = 99}},--典韦技能伤害lv1
			[2] = {Value = {[1] = 3},ConId = {[1] = 99}},--典韦技能伤害lv2
			[3] = {Value = {[1] = 3.5},ConId = {[1] = 99}},--典韦技能伤害lv3
			[4] = {Value = {[1] = 4},ConId = {[1] = 99}},--典韦技能伤害lv4
			[5] = {Value = {[1] = 4.5},ConId = {[1] = 99}}--典韦技能伤害lv5
		}
	},--典韦技能伤害
	[130300309] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4025,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--典韦专属武器提升爆伤lv1
			[2] = {ConId = {[1] = 99}},--典韦专属武器提升爆伤lv2
			[3] = {ConId = {[1] = 99}},--典韦专属武器提升爆伤lv3
			[4] = {ConId = {[1] = 99}},--典韦专属武器提升爆伤lv4
			[5] = {ConId = {[1] = 99}}--典韦专属武器提升爆伤lv5
		}
	},--典韦专属武器触发其他效果
	[130300310] = {FireType = 2,Type = 4,SubType = 1,DetailType = 4016,AttackNum = 1,Share = false,Stack = {1,9999},EffectParam = 0,Target1 = 3,Target2 = 1,Target3 = 1,Target5 = 10,FxType = 1,FxId = 12},--典韦专属武器提升爆伤
	[130300401] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5},ConId = {[1] = 99}},--唐流雨技能伤害lv1
			[2] = {Value = {[1] = 3},ConId = {[1] = 99}},--唐流雨技能伤害lv2
			[3] = {Value = {[1] = 3.5},ConId = {[1] = 99}},--唐流雨技能伤害lv3
			[4] = {Value = {[1] = 4},ConId = {[1] = 99}},--唐流雨技能伤害lv4
			[5] = {Value = {[1] = 4.5},ConId = {[1] = 99}}--唐流雨技能伤害lv5
		}
	},--唐流雨技能伤害
	[130300402] = {FireType = 1,Type = 4,SubType = 2,DetailType = 4001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10,FxType = 1,FxId = 1},--唐流雨禁锢
	[130300409] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2},ConId = {[1] = 99}},--唐流雨专属武器提高伤害lv1
			[2] = {Value = {[1] = 2},ConId = {[1] = 99}},--唐流雨专属武器提高伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--唐流雨专属武器提高伤害lv3
			[4] = {Value = {[1] = 2},ConId = {[1] = 99}},--唐流雨专属武器提高伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--唐流雨专属武器提高伤害lv5
		}
	},--唐流雨专属武器提高伤害
	[130300501] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 3},ConId = {[1] = 99}},--李轩辕技能获得水晶lv1
			[2] = {Value = {[1] = 1,[2] = 3},ConId = {[1] = 99}},--李轩辕技能获得水晶lv2
			[3] = {Value = {[1] = 1,[2] = 3},ConId = {[1] = 99}},--李轩辕技能获得水晶lv3
			[4] = {Value = {[1] = 1,[2] = 3},ConId = {[1] = 99}},--李轩辕技能获得水晶lv4
			[5] = {Value = {[1] = 1,[2] = 3},ConId = {[1] = 99}}--李轩辕技能获得水晶lv5
		}
	},--李轩辕技能获得水晶
	[130300502] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5},ConId = {[1] = 99}},--李轩辕技能伤害lv1
			[2] = {Value = {[1] = 3},ConId = {[1] = 99}},--李轩辕技能伤害lv2
			[3] = {Value = {[1] = 3.5},ConId = {[1] = 99}},--李轩辕技能伤害lv3
			[4] = {Value = {[1] = 4},ConId = {[1] = 99}},--李轩辕技能伤害lv4
			[5] = {Value = {[1] = 4.5},ConId = {[1] = 99}}--李轩辕技能伤害lv5
		}
	},--李轩辕技能伤害
	[130300503] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3005,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 3},ConId = {[1] = 99}},--李轩辕技能触发水晶外壳lv1
			[2] = {Value = {[1] = 1,[2] = 3},ConId = {[1] = 99}},--李轩辕技能触发水晶外壳lv2
			[3] = {Value = {[1] = 1,[2] = 3},ConId = {[1] = 99}},--李轩辕技能触发水晶外壳lv3
			[4] = {Value = {[1] = 1,[2] = 3},ConId = {[1] = 99}},--李轩辕技能触发水晶外壳lv4
			[5] = {Value = {[1] = 1,[2] = 3},ConId = {[1] = 99}}--李轩辕技能触发水晶外壳lv5
		}
	},--李轩辕技能触发水晶外壳
	[130300509] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 3,[2] = 2},ConId = {[1] = 99}},--李轩辕专属武器获得水晶lv1
			[2] = {Value = {[1] = 3,[2] = 2},ConId = {[1] = 99}},--李轩辕专属武器获得水晶lv2
			[3] = {Value = {[1] = 3,[2] = 2},ConId = {[1] = 99}},--李轩辕专属武器获得水晶lv3
			[4] = {Value = {[1] = 3,[2] = 2},ConId = {[1] = 99}},--李轩辕专属武器获得水晶lv4
			[5] = {Value = {[1] = 3,[2] = 2},ConId = {[1] = 99}}--李轩辕专属武器获得水晶lv5
		}
	},--李轩辕专属武器获得水晶
	[130300601] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5},ConId = {[1] = 99}},--项羽技能伤害lv1
			[2] = {Value = {[1] = 3},ConId = {[1] = 99}},--项羽技能伤害lv2
			[3] = {Value = {[1] = 3.5},ConId = {[1] = 99}},--项羽技能伤害lv3
			[4] = {Value = {[1] = 4},ConId = {[1] = 99}},--项羽技能伤害lv4
			[5] = {Value = {[1] = 4.5},ConId = {[1] = 99}}--项羽技能伤害lv5
		}
	},--项羽技能伤害
	[130300609] = {
		FireType = 2,
		Type = 1,
		SubType = 0,
		DetailType = 1009,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2},ConId = {[1] = 99}}--项羽专属武器溢出伤害lv1
		}
	},--项羽专属武器溢出伤害
	[130300701] = {
		FireType = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4017,
		AttackNum = 1,
		Duration = 1,
		Share = false,
		Stack = {1,2},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5},ConId = {[1] = 99}},--天使缇娜技能伤害lv1
			[2] = {Value = {[1] = 3},ConId = {[1] = 99}},--天使缇娜技能伤害lv2
			[3] = {Value = {[1] = 3.5},ConId = {[1] = 99}},--天使缇娜技能伤害lv3
			[4] = {Value = {[1] = 4},ConId = {[1] = 99}},--天使缇娜技能伤害lv4
			[5] = {Value = {[1] = 4.5},ConId = {[1] = 99}}--天使缇娜技能伤害lv5
		}
	},--天使缇娜技能伤害
	[130300702] = {
		FireType = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4001,
		AttackNum = 1,
		Duration = 1,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 1,
		lvs = {
			[1] = {ConId = {[1] = 99}},--天使缇娜技能禁锢lv1
			[2] = {ConId = {[1] = 99}},--天使缇娜技能禁锢lv2
			[3] = {ConId = {[1] = 99}},--天使缇娜技能禁锢lv3
			[4] = {ConId = {[1] = 99}},--天使缇娜技能禁锢lv4
			[5] = {ConId = {[1] = 99}}--天使缇娜技能禁锢lv5
		}
	},--天使缇娜技能禁锢
	[130300709] = {
		FireType = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4026,
		AttackNum = 1,
		Duration = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 11,
		lvs = {
			[1] = {ConId = {[1] = 99}}--天使缇娜专属武器减攻击lv1
		}
	},--天使缇娜专属武器减攻击
	[130300801] = {FireType = 1,Type = 4,SubType = 2,DetailType = 4013,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10},--夏侯渊技能随机效果
	[130300802] = {FireType = 1,Type = 4,SubType = 2,DetailType = 4015,AttackNum = 1,Duration = 1,EndType = 4,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10},--夏侯渊技能减防
	[130300803] = {FireType = 1,Type = 4,SubType = 2,DetailType = 4001,AttackNum = 1,Duration = 1,EndType = 4,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10,FxType = 1,FxId = 1},--夏侯渊技能禁锢
	[130300804] = {FireType = 1,Type = 4,SubType = 2,DetailType = 4004,AttackNum = 1,Duration = 1,EndType = 4,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10,FxType = 1,FxId = 3},--夏侯渊技能主动技能封印
	[130300805] = {FireType = 1,Type = 4,SubType = 2,DetailType = 4018,AttackNum = 1,Duration = 1,EndType = 4,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10,FxType = 1,FxId = 4},--夏侯渊技能被动技能封印
	[130300901] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4011,
		AttackNum = 1,
		Duration = 1,
		EndType = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--徐晃技能援护lv1
			[2] = {ConId = {[1] = 99}},--徐晃技能援护lv2
			[3] = {ConId = {[1] = 99}},--徐晃技能援护lv3
			[4] = {ConId = {[1] = 99}},--徐晃技能援护lv4
			[5] = {ConId = {[1] = 99}}--徐晃技能援护lv5
		}
	},--徐晃技能援护
	[130300909] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4027,
		AttackNum = 1,
		Duration = 1,
		EndType = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--徐晃专属武器增加格挡lv1
			[2] = {ConId = {[1] = 99}},--徐晃专属武器增加格挡lv2
			[3] = {ConId = {[1] = 99}},--徐晃专属武器增加格挡lv3
			[4] = {ConId = {[1] = 99}},--徐晃专属武器增加格挡lv4
			[5] = {ConId = {[1] = 99}}--徐晃专属武器增加格挡lv5
		}
	},--徐晃专属武器增加格挡
	[130301001] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5},ConId = {[1] = 99}},--张郃技能伤害lv1
			[2] = {Value = {[1] = 3},ConId = {[1] = 99}},--张郃技能伤害lv2
			[3] = {Value = {[1] = 3.5},ConId = {[1] = 99}},--张郃技能伤害lv3
			[4] = {Value = {[1] = 4},ConId = {[1] = 99}},--张郃技能伤害lv4
			[5] = {Value = {[1] = 4.5},ConId = {[1] = 99}}--张郃技能伤害lv5
		}
	},--张郃技能伤害
	[130301002] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--张郃技能获得水晶lv1
			[2] = {Value = {[1] = 1},ConId = {[1] = 99}},--张郃技能获得水晶lv2
			[3] = {Value = {[1] = 1},ConId = {[1] = 99}},--张郃技能获得水晶lv3
			[4] = {Value = {[1] = 1},ConId = {[1] = 99}},--张郃技能获得水晶lv4
			[5] = {Value = {[1] = 1},ConId = {[1] = 99}}--张郃技能获得水晶lv5
		}
	},--张郃技能获得水晶
	[130301003] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3005,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 4,[2] = 3},ConId = {[1] = 99}},--张郃技能触发水晶外壳lv1
			[2] = {Value = {[1] = 4,[2] = 3},ConId = {[1] = 99}},--张郃技能触发水晶外壳lv2
			[3] = {Value = {[1] = 4,[2] = 3},ConId = {[1] = 99}},--张郃技能触发水晶外壳lv3
			[4] = {Value = {[1] = 4,[2] = 3},ConId = {[1] = 99}},--张郃技能触发水晶外壳lv4
			[5] = {Value = {[1] = 4,[2] = 3},ConId = {[1] = 99}}--张郃技能触发水晶外壳lv5
		}
	},--张郃技能触发水晶外壳
	[130301009] = {
		FireType = 1,
		Type = 4,
		SubType = 0,
		DetailType = 4033,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--张郃专属武器降低防御lv1
			[2] = {ConId = {[1] = 99}},--张郃专属武器降低防御lv2
			[3] = {ConId = {[1] = 99}},--张郃专属武器降低防御lv3
			[4] = {ConId = {[1] = 99}},--张郃专属武器降低防御lv4
			[5] = {ConId = {[1] = 99}}--张郃专属武器降低防御lv5
		}
	},--张郃专属武器降低防御
	[130301101] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4005,
		AttackNum = 1,
		Duration = 1,
		EndType = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 5,
		Target5 = 10,
		FxType = 1,
		FxId = 5,
		lvs = {
			[1] = {ConId = {[1] = 99}},--张飞给我方护盾lv1
			[2] = {ConId = {[1] = 99}},--张飞给我方护盾lv2
			[3] = {ConId = {[1] = 99}},--张飞给我方护盾lv3
			[4] = {ConId = {[1] = 99}},--张飞给我方护盾lv4
			[5] = {ConId = {[1] = 99}}--张飞给我方护盾lv5
		}
	},--张飞给我方护盾
	[130301109] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4027,
		AttackNum = 1,
		Duration = 1,
		EndType = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 5,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--张飞专属武器增加格挡lv1
			[2] = {ConId = {[1] = 99}},--张飞专属武器增加格挡lv2
			[3] = {ConId = {[1] = 99}},--张飞专属武器增加格挡lv3
			[4] = {ConId = {[1] = 99}},--张飞专属武器增加格挡lv4
			[5] = {ConId = {[1] = 99}}--张飞专属武器增加格挡lv5
		}
	},--张飞专属武器增加格挡
	[130301201] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5},ConId = {[1] = 99}},--夏侯惇技能伤害lv1
			[2] = {Value = {[1] = 3},ConId = {[1] = 99}},--夏侯惇技能伤害lv2
			[3] = {Value = {[1] = 3.5},ConId = {[1] = 99}},--夏侯惇技能伤害lv3
			[4] = {Value = {[1] = 4},ConId = {[1] = 99}},--夏侯惇技能伤害lv4
			[5] = {Value = {[1] = 4.5},ConId = {[1] = 99}}--夏侯惇技能伤害lv5
		}
	},--夏侯惇技能伤害
	[130301202] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4028,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5},ConId = {[1] = 99}},--夏侯惇专属武器穿透伤害提升lv1
			[2] = {Value = {[1] = 3},ConId = {[1] = 99}},--夏侯惇专属武器穿透伤害提升lv2
			[3] = {Value = {[1] = 3.5},ConId = {[1] = 99}},--夏侯惇专属武器穿透伤害提升lv3
			[4] = {Value = {[1] = 4},ConId = {[1] = 99}},--夏侯惇专属武器穿透伤害提升lv4
			[5] = {Value = {[1] = 4.5},ConId = {[1] = 99}}--夏侯惇专属武器穿透伤害提升lv5
		}
	},--夏侯惇专属武器穿透伤害提升
	[130301209] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1004,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5},ConId = {[1] = 99}},--夏侯惇技能附加伤害lv1
			[2] = {Value = {[1] = 3},ConId = {[1] = 99}},--夏侯惇技能附加伤害lv2
			[3] = {Value = {[1] = 3.5},ConId = {[1] = 99}},--夏侯惇技能附加伤害lv3
			[4] = {Value = {[1] = 4},ConId = {[1] = 99}},--夏侯惇技能附加伤害lv4
			[5] = {Value = {[1] = 4.5},ConId = {[1] = 99}}--夏侯惇技能附加伤害lv5
		}
	},--夏侯惇技能附加伤害
	[130301301] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 2,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--塞伯罗斯技能伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--塞伯罗斯技能伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--塞伯罗斯技能伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--塞伯罗斯技能伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--塞伯罗斯技能伤害lv5
		}
	},--塞伯罗斯技能伤害
	[130301302] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4019,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--塞伯罗斯技能吸血lv1
			[2] = {ConId = {[1] = 99}},--塞伯罗斯技能吸血lv2
			[3] = {ConId = {[1] = 99}},--塞伯罗斯技能吸血lv3
			[4] = {ConId = {[1] = 99}},--塞伯罗斯技能吸血lv4
			[5] = {ConId = {[1] = 99}}--塞伯罗斯技能吸血lv5
		}
	},--塞伯罗斯技能吸血
	[130301309] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4007,
		AttackNum = 1,
		Duration = 999,
		EndType = 1,
		Share = false,
		Stack = {1,999},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 6,
		lvs = {
			[1] = {ConId = {[1] = 99}},--塞伯罗斯专属武器加攻击lv1
			[2] = {ConId = {[1] = 99}},--塞伯罗斯专属武器加攻击lv2
			[3] = {ConId = {[1] = 99}},--塞伯罗斯专属武器加攻击lv3
			[4] = {ConId = {[1] = 99}},--塞伯罗斯专属武器加攻击lv4
			[5] = {ConId = {[1] = 99}}--塞伯罗斯专属武器加攻击lv5
		}
	},--塞伯罗斯专属武器加攻击
	[130301401] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--石灵明技能伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--石灵明技能伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--石灵明技能伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--石灵明技能伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--石灵明技能伤害lv5
		}
	},--石灵明技能伤害
	[130301402] = {
		FireType = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4001,
		AttackNum = 1,
		Duration = 1,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 1,
		lvs = {
			[1] = {ConId = {[1] = 99}},--石灵明技能眩晕lv1
			[2] = {ConId = {[1] = 99}},--石灵明技能眩晕lv2
			[3] = {ConId = {[1] = 99}},--石灵明技能眩晕lv3
			[4] = {ConId = {[1] = 99}},--石灵明技能眩晕lv4
			[5] = {ConId = {[1] = 99}}--石灵明技能眩晕lv5
		}
	},--石灵明技能眩晕
	[130301409] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4029,
		AttackNum = 1,
		Duration = 999,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--石灵明专属武器暴击率提升lv1
			[2] = {ConId = {[1] = 99}},--石灵明专属武器暴击率提升lv2
			[3] = {ConId = {[1] = 99}},--石灵明专属武器暴击率提升lv3
			[4] = {ConId = {[1] = 99}},--石灵明专属武器暴击率提升lv4
			[5] = {ConId = {[1] = 99}}--石灵明专属武器暴击率提升lv5
		}
	},--石灵明专属武器暴击率提升
	[130301501] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--于禁技能伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--于禁技能伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--于禁技能伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--于禁技能伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--于禁技能伤害lv5
		}
	},--于禁技能伤害
	[130301509] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4030,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--于禁专属武器消耗水晶减少lv1
			[2] = {Value = {[1] = 1},ConId = {[1] = 99}},--于禁专属武器消耗水晶减少lv2
			[3] = {Value = {[1] = 1},ConId = {[1] = 99}},--于禁专属武器消耗水晶减少lv3
			[4] = {Value = {[1] = 1},ConId = {[1] = 99}},--于禁专属武器消耗水晶减少lv4
			[5] = {Value = {[1] = 1},ConId = {[1] = 99}}--于禁专属武器消耗水晶减少lv5
		}
	},--于禁专属武器消耗水晶减少
	[130301601] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 4,[2] = 4},ConId = {[1] = 99}},--西方龙技能获得水晶lv1
			[2] = {Value = {[1] = 4,[2] = 5},ConId = {[1] = 99}},--西方龙技能获得水晶lv2
			[3] = {Value = {[1] = 4,[2] = 6},ConId = {[1] = 99}},--西方龙技能获得水晶lv3
			[4] = {Value = {[1] = 4,[2] = 7},ConId = {[1] = 99}},--西方龙技能获得水晶lv4
			[5] = {Value = {[1] = 4,[2] = 8},ConId = {[1] = 99}}--西方龙技能获得水晶lv5
		}
	},--西方龙技能获得水晶
	[130301609] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 3002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--西方龙专属武器减少水晶lv1
			[2] = {Value = {[1] = 1},ConId = {[1] = 99}},--西方龙专属武器减少水晶lv2
			[3] = {Value = {[1] = 1},ConId = {[1] = 99}},--西方龙专属武器减少水晶lv3
			[4] = {Value = {[1] = 1},ConId = {[1] = 99}},--西方龙专属武器减少水晶lv4
			[5] = {Value = {[1] = 1},ConId = {[1] = 99}}--西方龙专属武器减少水晶lv5
		}
	},--西方龙专属武器减少水晶
	[130301701] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 4,
		Target2 = 5,
		Target3 = 1,
		Target4 = "1#4101",
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--飞廉技能伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--飞廉技能伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--飞廉技能伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--飞廉技能伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--飞廉技能伤害lv5
		}
	},--飞廉技能伤害
	[130301709] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4010,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--飞廉专属武器刷新技能lv1
			[2] = {ConId = {[1] = 99}},--飞廉专属武器刷新技能lv2
			[3] = {ConId = {[1] = 99}},--飞廉专属武器刷新技能lv3
			[4] = {ConId = {[1] = 99}},--飞廉专属武器刷新技能lv4
			[5] = {ConId = {[1] = 99}}--飞廉专属武器刷新技能lv5
		}
	},--飞廉专属武器刷新技能
	[130301801] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--噬日技能伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--噬日技能伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--噬日技能伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--噬日技能伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--噬日技能伤害lv5
		}
	},--噬日技能伤害
	[130301802] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1006,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 0.3},ConId = {[1] = 99}},--噬日技能消耗生命lv1
			[2] = {Value = {[1] = 0.3},ConId = {[1] = 99}},--噬日技能消耗生命lv2
			[3] = {Value = {[1] = 0.3},ConId = {[1] = 99}},--噬日技能消耗生命lv3
			[4] = {Value = {[1] = 0.3},ConId = {[1] = 99}},--噬日技能消耗生命lv4
			[5] = {Value = {[1] = 0.3},ConId = {[1] = 99}}--噬日技能消耗生命lv5
		}
	},--噬日技能消耗生命
	[130301809] = {FireType = 2,Type = 4,SubType = 1,DetailType = 4031,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 3,Target2 = 1,Target3 = 1,Target5 = 10},--噬日专属武器出场立即释放
	[130301901] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4005,
		AttackNum = 1,
		Duration = 1,
		EndType = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = "2#0",
		Target5 = 1,
		FxType = 1,
		FxId = 5,
		lvs = {
			[1] = {ConId = {[1] = 99}},--食火蜥技能护盾lv1
			[2] = {ConId = {[1] = 99}},--食火蜥技能护盾lv2
			[3] = {ConId = {[1] = 99}},--食火蜥技能护盾lv3
			[4] = {ConId = {[1] = 99}},--食火蜥技能护盾lv4
			[5] = {ConId = {[1] = 99}}--食火蜥技能护盾lv5
		}
	},--食火蜥技能护盾
	[130301909] = {
		FireType = 1,
		Type = 2,
		SubType = 1,
		DetailType = 2001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = "2#0",
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--食火蜥专属武器治疗lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--食火蜥专属武器治疗lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--食火蜥专属武器治疗lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--食火蜥专属武器治疗lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--食火蜥专属武器治疗lv5
		}
	},--食火蜥专属武器治疗
	[130302001] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--高顺技能基础伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--高顺技能基础伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--高顺技能基础伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--高顺技能基础伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--高顺技能基础伤害lv5
		}
	},--高顺技能基础伤害
	[130302002] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--高顺技能额外伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--高顺技能额外伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--高顺技能额外伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--高顺技能额外伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--高顺技能额外伤害lv5
		}
	},--高顺技能额外伤害
	[130302003] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4008,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--高顺技能伤害加成lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--高顺技能伤害加成lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--高顺技能伤害加成lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--高顺技能伤害加成lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--高顺技能伤害加成lv5
		}
	},--高顺技能伤害加成
	[130302009] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1010,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--高顺专属武器追加伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--高顺专属武器追加伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--高顺专属武器追加伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--高顺专属武器追加伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--高顺专属武器追加伤害lv5
		}
	},--高顺专属武器追加伤害
	[130302101] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1012,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--烈风螳螂技能伤害lv1
			[2] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--烈风螳螂技能伤害lv2
			[3] = {Value = {[1] = 2},ConId = {[1] = 99}},--烈风螳螂技能伤害lv3
			[4] = {Value = {[1] = 2.25},ConId = {[1] = 99}},--烈风螳螂技能伤害lv4
			[5] = {Value = {[1] = 2.5},ConId = {[1] = 99}}--烈风螳螂技能伤害lv5
		}
	},--烈风螳螂技能伤害
	[130302102] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4106,
		AttackNum = 1,
		Duration = 999,
		EndType = 1,
		Share = false,
		Stack = {1,999},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 6,
		lvs = {
			[1] = {ConId = {[1] = 99}},--烈风螳螂技能加攻击lv1
			[2] = {ConId = {[1] = 99}},--烈风螳螂技能加攻击lv2
			[3] = {ConId = {[1] = 99}},--烈风螳螂技能加攻击lv3
			[4] = {ConId = {[1] = 99}},--烈风螳螂技能加攻击lv4
			[5] = {ConId = {[1] = 99}}--烈风螳螂技能加攻击lv5
		}
	},--烈风螳螂技能加攻击
	[130302109] = {
		FireType = 2,
		Type = 4,
		SubType = 2,
		DetailType = 4018,
		AttackNum = 1,
		Duration = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--烈风螳螂专属武器禁止被动lv1
			[2] = {ConId = {[1] = 99}},--烈风螳螂专属武器禁止被动lv2
			[3] = {ConId = {[1] = 99}},--烈风螳螂专属武器禁止被动lv3
			[4] = {ConId = {[1] = 99}},--烈风螳螂专属武器禁止被动lv4
			[5] = {ConId = {[1] = 99}}--烈风螳螂专属武器禁止被动lv5
		}
	},--烈风螳螂专属武器禁止被动
	[130400101] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽1主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽1主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽1主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽1主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽1主动伤害lv5
		}
	},--插槽1主动伤害
	[130400102] = {
		FireType = 3,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽1追击伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽1追击伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽1追击伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽1追击伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽1追击伤害lv5
		}
	},--插槽1追击伤害
	[130400201] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽2主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽2主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽2主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽2主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽2主动伤害lv5
		}
	},--插槽2主动伤害
	[130400202] = {
		FireType = 3,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽2追击伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽2追击伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽2追击伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽2追击伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽2追击伤害lv5
		}
	},--插槽2追击伤害
	[130400203] = {
		FireType = 3,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽2追击禁锢额外伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽2追击禁锢额外伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽2追击禁锢额外伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽2追击禁锢额外伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽2追击禁锢额外伤害lv5
		}
	},--插槽2追击禁锢额外伤害
	[130400301] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽3主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽3主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽3主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽3主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽3主动伤害lv5
		}
	},--插槽3主动伤害
	[130400302] = {
		FireType = 3,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽3追击伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽3追击伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽3追击伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽3追击伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽3追击伤害lv5
		}
	},--插槽3追击伤害
	[130400303] = {
		FireType = 3,
		Type = 3,
		SubType = 0,
		DetailType = 3002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--插槽3减少红水晶lv1
			[2] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--插槽3减少红水晶lv2
			[3] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--插槽3减少红水晶lv3
			[4] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--插槽3减少红水晶lv4
			[5] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}}--插槽3减少红水晶lv5
		}
	},--插槽3减少红水晶
	[130400304] = {
		FireType = 3,
		Type = 3,
		SubType = 0,
		DetailType = 3002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--插槽3减少黄水晶lv1
			[2] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--插槽3减少黄水晶lv2
			[3] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--插槽3减少黄水晶lv3
			[4] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--插槽3减少黄水晶lv4
			[5] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}}--插槽3减少黄水晶lv5
		}
	},--插槽3减少黄水晶
	[130400305] = {
		FireType = 3,
		Type = 3,
		SubType = 0,
		DetailType = 3002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--插槽3减少蓝水晶lv1
			[2] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--插槽3减少蓝水晶lv2
			[3] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--插槽3减少蓝水晶lv3
			[4] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--插槽3减少蓝水晶lv4
			[5] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}}--插槽3减少蓝水晶lv5
		}
	},--插槽3减少蓝水晶
	[130400401] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1012,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽4主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽4主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽4主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽4主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽4主动伤害lv5
		}
	},--插槽4主动伤害
	[130400402] = {
		FireType = 3,
		Type = 1,
		SubType = 0,
		DetailType = 1012,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽4追击伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽4追击伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽4追击伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽4追击伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽4追击伤害lv5
		}
	},--插槽4追击伤害
	[130400501] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽5主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽5主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽5主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽5主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽5主动伤害lv5
		}
	},--插槽5主动伤害
	[130400502] = {
		FireType = 3,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽5追击伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽5追击伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽5追击伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽5追击伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽5追击伤害lv5
		}
	},--插槽5追击伤害
	[130400503] = {
		FireType = 3,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽5暴击额外伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽5暴击额外伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽5暴击额外伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽5暴击额外伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽5暴击额外伤害lv5
		}
	},--插槽5暴击额外伤害
	[130400601] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽6主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽6主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽6主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽6主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽6主动伤害lv5
		}
	},--插槽6主动伤害
	[130400602] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--插槽6获得红水晶lv1
			[2] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--插槽6获得红水晶lv2
			[3] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--插槽6获得红水晶lv3
			[4] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}},--插槽6获得红水晶lv4
			[5] = {Value = {[1] = 1,[2] = 1},ConId = {[1] = 99}}--插槽6获得红水晶lv5
		}
	},--插槽6获得红水晶
	[130400701] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽7主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽7主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽7主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽7主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽7主动伤害lv5
		}
	},--插槽7主动伤害
	[130400702] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--插槽7获得黄水晶lv1
			[2] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--插槽7获得黄水晶lv2
			[3] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--插槽7获得黄水晶lv3
			[4] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}},--插槽7获得黄水晶lv4
			[5] = {Value = {[1] = 2,[2] = 1},ConId = {[1] = 99}}--插槽7获得黄水晶lv5
		}
	},--插槽7获得黄水晶
	[130400801] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽8主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽8主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽8主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽8主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽8主动伤害lv5
		}
	},--插槽8主动伤害
	[130400802] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--插槽8获得蓝水晶lv1
			[2] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--插槽8获得蓝水晶lv2
			[3] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--插槽8获得蓝水晶lv3
			[4] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}},--插槽8获得蓝水晶lv4
			[5] = {Value = {[1] = 3,[2] = 1},ConId = {[1] = 99}}--插槽8获得蓝水晶lv5
		}
	},--插槽8获得蓝水晶
	[130400901] = {
		FireType = 1,
		Type = 2,
		SubType = 0,
		DetailType = 2002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = "2",
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽9回复友军生命lv1
			[2] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽9回复友军生命lv2
			[3] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽9回复友军生命lv3
			[4] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽9回复友军生命lv4
			[5] = {Value = {[1] = 1},ConId = {[1] = 99}}--插槽9回复友军生命lv5
		}
	},--插槽9回复友军生命
	[130400902] = {
		FireType = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4035,
		AttackNum = 1,
		Duration = 2,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 25,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--插槽9施加水晶外壳效果lv1
			[2] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--插槽9施加水晶外壳效果lv2
			[3] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--插槽9施加水晶外壳效果lv3
			[4] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}},--插槽9施加水晶外壳效果lv4
			[5] = {Value = {[1] = 1,[2] = 2},ConId = {[1] = 99}}--插槽9施加水晶外壳效果lv5
		}
	},--插槽9施加水晶外壳效果
	[130401001] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽10主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽10主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽10主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽10主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽10主动伤害lv5
		}
	},--插槽10主动伤害
	[130401002] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4029,
		AttackNum = 1,
		Duration = 1,
		EndType = 5,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--插槽10增加暴击率lv1
			[2] = {ConId = {[1] = 99}},--插槽10增加暴击率lv2
			[3] = {ConId = {[1] = 99}},--插槽10增加暴击率lv3
			[4] = {ConId = {[1] = 99}},--插槽10增加暴击率lv4
			[5] = {ConId = {[1] = 99}}--插槽10增加暴击率lv5
		}
	},--插槽10增加暴击率
	[130401101] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽11主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽11主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽11主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽11主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽11主动伤害lv5
		}
	},--插槽11主动伤害
	[130401102] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4036,
		AttackNum = 1,
		Duration = 1,
		EndType = 5,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--插槽11增加穿透概率lv1
			[2] = {ConId = {[1] = 99}},--插槽11增加穿透概率lv2
			[3] = {ConId = {[1] = 99}},--插槽11增加穿透概率lv3
			[4] = {ConId = {[1] = 99}},--插槽11增加穿透概率lv4
			[5] = {ConId = {[1] = 99}}--插槽11增加穿透概率lv5
		}
	},--插槽11增加穿透概率
	[130401201] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽12主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽12主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽12主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽12主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽12主动伤害lv5
		}
	},--插槽12主动伤害
	[130401202] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽12额外伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽12额外伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽12额外伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽12额外伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽12额外伤害lv5
		}
	},--插槽12额外伤害
	[130401301] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽13主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽13主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽13主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽13主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽13主动伤害lv5
		}
	},--插槽13主动伤害
	[130401302] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽13额外穿透伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽13额外穿透伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽13额外穿透伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽13额外穿透伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽13额外穿透伤害lv5
		}
	},--插槽13额外穿透伤害
	[130401401] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽14主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽14主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽14主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽14主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽14主动伤害lv5
		}
	},--插槽14主动伤害
	[130401402] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽14额外穿透伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽14额外穿透伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽14额外穿透伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽14额外穿透伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽14额外穿透伤害lv5
		}
	},--插槽14额外穿透伤害
	[130401501] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽15主动伤害lv1
			[2] = {Value = {[1] = 1.25},ConId = {[1] = 99}},--插槽15主动伤害lv2
			[3] = {Value = {[1] = 1.5},ConId = {[1] = 99}},--插槽15主动伤害lv3
			[4] = {Value = {[1] = 1.75},ConId = {[1] = 99}},--插槽15主动伤害lv4
			[5] = {Value = {[1] = 2},ConId = {[1] = 99}}--插槽15主动伤害lv5
		}
	},--插槽15主动伤害
	[130401502] = {
		FireType = 1,
		Type = 4,
		SubType = 0,
		DetailType = 4032,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {ConId = {[1] = 99}},--插槽15降低被治疗效果lv1
			[2] = {ConId = {[1] = 99}},--插槽15降低被治疗效果lv2
			[3] = {ConId = {[1] = 99}},--插槽15降低被治疗效果lv3
			[4] = {ConId = {[1] = 99}},--插槽15降低被治疗效果lv4
			[5] = {ConId = {[1] = 99}}--插槽15降低被治疗效果lv5
		}
	},--插槽15降低被治疗效果
	[130401601] = {
		FireType = 1,
		Type = 2,
		SubType = 0,
		DetailType = 2002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = "2",
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽16回复生命lv1
			[2] = {Value = {[1] = 1.2},ConId = {[1] = 99}},--插槽16回复生命lv2
			[3] = {Value = {[1] = 1.4},ConId = {[1] = 99}},--插槽16回复生命lv3
			[4] = {Value = {[1] = 1.6},ConId = {[1] = 99}},--插槽16回复生命lv4
			[5] = {Value = {[1] = 1.8},ConId = {[1] = 99}}--插槽16回复生命lv5
		}
	},--插槽16回复生命
	[130401602] = {
		FireType = 1,
		Type = 2,
		SubType = 1,
		DetailType = 2002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = "2",
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}},--插槽16额外治疗lv1
			[2] = {Value = {[1] = 1.2},ConId = {[1] = 99}},--插槽16额外治疗lv2
			[3] = {Value = {[1] = 1.4},ConId = {[1] = 99}},--插槽16额外治疗lv3
			[4] = {Value = {[1] = 1.6},ConId = {[1] = 99}},--插槽16额外治疗lv4
			[5] = {Value = {[1] = 1.8},ConId = {[1] = 99}}--插槽16额外治疗lv5
		}
	},--插槽16额外治疗
	[180100101] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--砍刀鬼兵的普通攻击lv1
		}
	},--砍刀鬼兵的普通攻击
	[180100201] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--双刀鬼兵的普通攻击lv1
		}
	},--双刀鬼兵的普通攻击
	[180100301] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--链球鬼兵的普通攻击lv1
		}
	},--链球鬼兵的普通攻击
	[180100401] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--鬼将军普通伤害lv1
		}
	},--鬼将军普通伤害
	[180100501] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--变身鬼将军普通伤害lv1
		}
	},--变身鬼将军普通伤害
	[180100601] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--骷髅小兵1普通攻击lv1
		}
	},--骷髅小兵1普通攻击
	[180100801] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--伏尸将军单体伤害lv1
		}
	},--伏尸将军单体伤害
	[180100901] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--石瀑将军单体伤害lv1
		}
	},--石瀑将军单体伤害
	[180101001] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--小蜘蛛普通攻击lv1
		}
	},--小蜘蛛普通攻击
	[180101101] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--魔导机兵团普通攻击lv1
		}
	},--魔导机兵团普通攻击
	[180101201] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--山蜘蛛技能1单体伤害lv1
		}
	},--山蜘蛛技能1单体伤害
	[180200401] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--鬼将军超级伤害lv1
		}
	},--鬼将军超级伤害
	[180200501] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--变身鬼将军2技能伤害lv1
		}
	},--变身鬼将军2技能伤害
	[180200502] = {
		FireType = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3003,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--变身鬼将军偷水晶lv1
		}
	},--变身鬼将军偷水晶
	[180200801] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 2,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--伏尸将军群体伤害lv1
		}
	},--伏尸将军群体伤害
	[180200901] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 2,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--石瀑将军群体伤害lv1
		}
	},--石瀑将军群体伤害
	[180201201] = {FireType = 1,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 3,Target2 = 5,Target3 = 2,Target5 = 10},--山蜘蛛技能2前排伤害
	[180300501] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4025,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--变身鬼将军触发其他效果lv1
		}
	},--变身鬼将军触发其他效果
	[180300502] = {
		FireType = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4007,
		AttackNum = 1,
		Share = false,
		Stack = {1,999},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--变身鬼将军增加攻击lv1
		}
	},--变身鬼将军增加攻击
	[180301201] = {FireType = 1,Type = 2,SubType = 1,DetailType = 2002,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 1,Target3 = 1,Target5 = 10},--山蜘蛛技能3回血
	[180301202] = {
		FireType = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4031,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--山蜘蛛技能3出场释放lv1
		}
	},--山蜘蛛技能3出场释放
	[200100101] = {FireType = 1,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10},--新手战斗曹玄亮技能1伤害
	[200100201] = {FireType = 1,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10},--新手战斗曹玄亮技能2伤害
	[200200101] = {FireType = 1,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10},--新手战斗战斗曹焱兵技能1伤害
	[200200201] = {FireType = 1,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10},--新手战斗战斗曹焱兵技能2伤害
	[200300101] = {
		FireType = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--新手战斗北落师门技能1伤害lv1
		}
	},--新手战斗北落师门技能1伤害
	[200400101] = {FireType = 1,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 3,Target2 = 5,Target3 = 2,Target5 = 10},--新手战斗塞伯罗斯技能伤害
	[200500101] = {FireType = 1,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10},--新手战斗许褚技能伤害
	[200500201] = {FireType = 1,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10},--新手战斗插槽1主动伤害
	[200500202] = {FireType = 3,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10},--新手战斗插槽1追击伤害
	[200500301] = {
		FireType = 3,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1},ConId = {[1] = 99}}--新手战斗插槽2追击伤害lv1
		}
	},--新手战斗插槽2追击伤害
	[200600101] = {FireType = 1,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10},--新手战斗阎风吒技能伤害
	[200700101] = {FireType = 1,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10},--新手战斗项昆仑技能伤害
	[200800101] = {FireType = 1,Type = 1,SubType = 0,DetailType = 1001,AttackNum = 1,Share = false,Stack = {1,1},EffectParam = 0,Target1 = 1,Target2 = 5,Target3 = 1,Target5 = 10}--新手战斗吕仙宫技能伤害
}