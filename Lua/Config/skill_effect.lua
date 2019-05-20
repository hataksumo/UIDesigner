--[[
--note:
配置技能效果的主逻辑，如目标，是否为被动
配置各等级技能效果的数值
colums:
{FireType,1-主动；2-被动；3-连击} ,{EffectTarget,生效目标
1-仅所属技能生效
2-技能所属角色生效} ,{Type,效果类型:1-伤害，2-治疗，3-影响水晶，4-buff，5-吸血} ,{SubType,buff类型的子类型：1-增益buff,2-减益buff,3-标记} ,{DetailType,细节类型} ,{AttackNum,伤害段数} ,{Duration,持续回合数} ,{EndType,结算类型：1-施法者行动前；2-施法者行动后；3-被施法者行动前；4-被施法者行动后；5-攻击次数；6-叠加次数} ,{Share,是否共享：FALSE-不共享，TRUE-共享} ,{Stack,每段攻击叠加层数#最大叠加层数} ,{EffectParam,buff自然结束时产生的效果ID} ,{Target1,1-常规；2-随机；3-所有；4-特殊标记} ,{Target2,1-自己；2-自己与搭档；3-友方（不包含自己）；4-我方（包含自己）；5-敌方；6-场上所有；7-自己的搭档} ,{Target3,1-全部；2-前排；3-后排；4-一列；5-已选出目标的两边} ,{Target4[1],特殊条件：类型#条件参数（0为条件不需要参数时使用的默认参数）【1-特殊标记（1#标记ID）；2-生命最低（2#0）。。。】} ,{Target4[2],特殊条件参数} ,{Target5,目标数量} ,{FxType,特效类型1-单个特效2-根据层数改变的类型} ,{FxId,特效资源ID} ,{Lv,等级} ,{Value[1],值1} ,{Value[2],值2} ,{Value[3],值3} ,{Prop[1],属性1} ,{Prop[2],属性2} ,{TriggerEffect.id,触发技能效果} ,{TriggerEffect.lv,触发技能效果等级} ,{ConId[1],条件1ID} ,{ConParam[1][1],条件1参数1} ,{ConParam[1][2],条件1参数2} ,{ConParam[1][3],条件1参数3} ,{ConId[2],条件2ID} ,{ConParam[2][1],条件2参数1} ,{ConParam[2][2],条件2参数2} ,{ConParam[2][3],条件2参数3} ,{EffectDesc,技能效果描述：当前等级技能描述，随等级变化数值格式：[字段名#数字类型]，1-整数，2-2位小数，3-百分数（无小数点），4-百分数（两位小数）}
primary key:
#0 [技能效果]: SkillEffectId
#1 [技能效果等级]: SkillEffectId,HelpCol,Lv
]]
return{
	[130100101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能1伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能1伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能1伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能1伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能1伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能1伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能1伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能1伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能1伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--常服曹焱兵技能1伤害
		}
	},--常服曹焱兵技能1伤害
	[130100201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--曹玄亮技能1伤害
		}
	},--曹玄亮技能1伤害
	[130100202] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 4033,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1降低防御
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1降低防御
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1降低防御
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1降低防御
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1降低防御
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1降低防御
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1降低防御
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1降低防御
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能1降低防御
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--曹玄亮技能1降低防御
		}
	},--曹玄亮技能1降低防御
	[130100301] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1造成伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1造成伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1造成伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1造成伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1造成伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1造成伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1造成伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1造成伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1造成伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏玲技能1造成伤害
		}
	},--夏玲技能1造成伤害
	[130100302] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1获得水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1获得水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1获得水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1获得水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1获得水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1获得水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1获得水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1获得水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能1获得水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏玲技能1获得水晶
		}
	},--夏玲技能1获得水晶
	[130100401] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能1吸血
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能1吸血
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能1吸血
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能1吸血
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能1吸血
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能1吸血
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能1吸血
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能1吸血
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能1吸血
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--项昆仑技能1吸血
		}
	},--项昆仑技能1吸血
	[130100501] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1增加攻击
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1增加攻击
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1增加攻击
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1增加攻击
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1增加攻击
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1增加攻击
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1增加攻击
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1增加攻击
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1增加攻击
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--刘羽禅技能1增加攻击
		}
	},--刘羽禅技能1增加攻击
	[130100502] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 4038,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1避难
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1避难
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1避难
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1避难
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1避难
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1避难
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1避难
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1避难
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能1避难
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--刘羽禅技能1避难
		}
	},--刘羽禅技能1避难
	[130100601] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1削减水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1削减水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1削减水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1削减水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1削减水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1削减水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1削减水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1削减水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1削减水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--红莲缇娜技能1削减水晶
		}
	},--红莲缇娜技能1削减水晶
	[130100602] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4104,
		AttackNum = 1,
		Duration = 9999,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1生成印记
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1生成印记
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1生成印记
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1生成印记
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1生成印记
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1生成印记
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1生成印记
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1生成印记
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能1生成印记
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--红莲缇娜技能1生成印记
		}
	},--红莲缇娜技能1生成印记
	[130100701] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--战斗曹焱兵技能1伤害
		}
	},--战斗曹焱兵技能1伤害
	[130100801] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--黑尔坎普技能1伤害
		}
	},--黑尔坎普技能1伤害
	[130100802] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1获得水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1获得水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1获得水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1获得水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1获得水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1获得水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1获得水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1获得水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能1获得水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--黑尔坎普技能1获得水晶
		}
	},--黑尔坎普技能1获得水晶
	[130100901] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能1伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能1伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能1伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能1伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能1伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能1伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能1伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能1伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能1伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--北落师门技能1伤害
		}
	},--北落师门技能1伤害
	[130101001] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能1伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能1伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能1伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能1伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能1伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能1伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能1伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能1伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能1伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--盖文技能1伤害
		}
	},--盖文技能1伤害
	[130101101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--阎风吒技能1伤害
		}
	},--阎风吒技能1伤害
	[130101102] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 3,
		DetailType = 4101,
		AttackNum = 1,
		Duration = 2,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1附加印记
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1附加印记
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1附加印记
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1附加印记
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1附加印记
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1附加印记
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1附加印记
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1附加印记
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能1附加印记
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--阎风吒技能1附加印记
		}
	},--阎风吒技能1附加印记
	[130101201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--南御夫技能1伤害
		}
	},--南御夫技能1伤害
	[130101202] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3003,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1偷取水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1偷取水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1偷取水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1偷取水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1偷取水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1偷取水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1偷取水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1偷取水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能1偷取水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--南御夫技能1偷取水晶
		}
	},--南御夫技能1偷取水晶
	[130101301] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--吉拉技能1伤害
		}
	},--吉拉技能1伤害
	[130101302] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1削减水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1削减水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1削减水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1削减水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1削减水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1削减水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1削减水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1削减水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能1削减水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--吉拉技能1削减水晶
		}
	},--吉拉技能1削减水晶
	[130101401] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--吕仙宫技能1伤害
		}
	},--吕仙宫技能1伤害
	[130101402] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4003,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1禁止召唤
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1禁止召唤
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1禁止召唤
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1禁止召唤
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1禁止召唤
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1禁止召唤
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1禁止召唤
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1禁止召唤
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能1禁止召唤
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--吕仙宫技能1禁止召唤
		}
	},--吕仙宫技能1禁止召唤
	[130101501] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--阎巧巧技能1伤害
		}
	},--阎巧巧技能1伤害
	[130101502] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1获得水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1获得水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1获得水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1获得水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1获得水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1获得水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1获得水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1获得水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能1获得水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--阎巧巧技能1获得水晶
		}
	},--阎巧巧技能1获得水晶
	[130200101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--常服曹焱兵技能2伤害
		}
	},--常服曹焱兵技能2伤害
	[130200102] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2减少水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2减少水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2减少水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2减少水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2减少水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2减少水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2减少水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2减少水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵技能2减少水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--常服曹焱兵技能2减少水晶
		}
	},--常服曹焱兵技能2减少水晶
	[130200201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2造成伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2造成伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2造成伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2造成伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2造成伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2造成伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2造成伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2造成伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2造成伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--曹玄亮技能2造成伤害
		}
	},--曹玄亮技能2造成伤害
	[130200202] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2目标两旁造成伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2目标两旁造成伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2目标两旁造成伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2目标两旁造成伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2目标两旁造成伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2目标两旁造成伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2目标两旁造成伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2目标两旁造成伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮技能2目标两旁造成伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--曹玄亮技能2目标两旁造成伤害
		}
	},--曹玄亮技能2目标两旁造成伤害
	[130200301] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 0,
		DetailType = 4007,
		AttackNum = 1,
		EndType = 1,
		Share = false,
		Stack = {1,10},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能2增加攻击
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能2增加攻击
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能2增加攻击
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能2增加攻击
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能2增加攻击
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能2增加攻击
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能2增加攻击
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能2增加攻击
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏玲技能2增加攻击
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏玲技能2增加攻击
		}
	},--夏玲技能2增加攻击
	[130200401] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能2生成印记
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能2生成印记
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能2生成印记
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能2生成印记
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能2生成印记
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能2生成印记
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能2生成印记
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能2生成印记
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑技能2生成印记
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--项昆仑技能2生成印记
		}
	},--项昆仑技能2生成印记
	[130200501] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 2,
		SubType = 0,
		DetailType = 2001,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能2治疗
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能2治疗
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能2治疗
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能2治疗
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能2治疗
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能2治疗
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能2治疗
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能2治疗
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅技能2治疗
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--刘羽禅技能2治疗
		}
	},--刘羽禅技能2治疗
	[130200502] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 2,
		SubType = 0,
		DetailType = 2001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 123},EffectDesc = "这是描述"},--刘羽禅技能2额外治疗
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 123},EffectDesc = "这是描述"},--刘羽禅技能2额外治疗
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 123},EffectDesc = "这是描述"},--刘羽禅技能2额外治疗
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 123},EffectDesc = "这是描述"},--刘羽禅技能2额外治疗
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 123},EffectDesc = "这是描述"},--刘羽禅技能2额外治疗
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 123},EffectDesc = "这是描述"},--刘羽禅技能2额外治疗
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 123},EffectDesc = "这是描述"},--刘羽禅技能2额外治疗
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 123},EffectDesc = "这是描述"},--刘羽禅技能2额外治疗
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 123},EffectDesc = "这是描述"},--刘羽禅技能2额外治疗
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 123},EffectDesc = "这是描述"}--刘羽禅技能2额外治疗
		}
	},--刘羽禅技能2额外治疗
	[130200601] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能2回复生命
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能2回复生命
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能2回复生命
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能2回复生命
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能2回复生命
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能2回复生命
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能2回复生命
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能2回复生命
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜技能2回复生命
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--红莲缇娜技能2回复生命
		}
	},--红莲缇娜技能2回复生命
	[130200701] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能2伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能2伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能2伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能2伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能2伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能2伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能2伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能2伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能2伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--战斗曹焱兵技能2伤害
		}
	},--战斗曹焱兵技能2伤害
	[130200702] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1禁锢
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1禁锢
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1禁锢
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1禁锢
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1禁锢
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1禁锢
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1禁锢
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1禁锢
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵技能1禁锢
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--战斗曹焱兵技能1禁锢
		}
	},--战斗曹焱兵技能1禁锢
	[130200801] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能2额外伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能2额外伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能2额外伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能2额外伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能2额外伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能2额外伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能2额外伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能2额外伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普技能2额外伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--黑尔坎普技能2额外伤害
		}
	},--黑尔坎普技能2额外伤害
	[130200901] = {
		FireType = 2,
		EffectTarget = 1,
		Type = 3,
		SubType = 1,
		DetailType = 3001,
		AttackNum = 1,
		Duration = 1,
		EndType = 5,
		Share = true,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 2,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能2获得水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能2获得水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能2获得水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能2获得水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能2获得水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能2获得水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能2获得水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能2获得水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门技能2获得水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--北落师门技能2获得水晶
		}
	},--北落师门技能2获得水晶
	[130201001] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2触发其他效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2触发其他效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2触发其他效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2触发其他效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2触发其他效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2触发其他效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2触发其他效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2触发其他效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2触发其他效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--盖文技能2触发其他效果
		}
	},--盖文技能2触发其他效果
	[130201002] = {
		FireType = 1,
		EffectTarget = 1,
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
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2生成印记
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2生成印记
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2生成印记
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2生成印记
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2生成印记
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2生成印记
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2生成印记
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2生成印记
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文技能2生成印记
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--盖文技能2生成印记
		}
	},--盖文技能2生成印记
	[130201101] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 3,
		DetailType = 4101,
		AttackNum = 1,
		Duration = 2,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能2附加印记
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能2附加印记
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能2附加印记
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能2附加印记
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能2附加印记
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能2附加印记
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能2附加印记
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能2附加印记
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒技能2附加印记
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--阎风吒技能2附加印记
		}
	},--阎风吒技能2附加印记
	[130201201] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能2回复生命
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能2回复生命
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能2回复生命
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能2回复生命
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能2回复生命
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能2回复生命
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能2回复生命
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能2回复生命
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫技能2回复生命
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--南御夫技能2回复生命
		}
	},--南御夫技能2回复生命
	[130201301] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能2偷取红水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能2偷取红水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能2偷取红水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能2偷取红水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能2偷取红水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能2偷取红水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能2偷取红水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能2偷取红水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉技能2偷取红水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--吉拉技能2偷取红水晶
		}
	},--吉拉技能2偷取红水晶
	[130201401] = {
		FireType = 1,
		EffectTarget = 1,
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
		Target4 = {[1] = 2},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能2回复生命
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能2回复生命
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能2回复生命
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能2回复生命
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能2回复生命
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能2回复生命
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能2回复生命
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能2回复生命
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫技能2回复生命
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--吕仙宫技能2回复生命
		}
	},--吕仙宫技能2回复生命
	[130201501] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4007,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能2提高攻击
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能2提高攻击
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能2提高攻击
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能2提高攻击
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能2提高攻击
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能2提高攻击
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能2提高攻击
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能2提高攻击
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧技能2提高攻击
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--阎巧巧技能2提高攻击
		}
	},--阎巧巧技能2提高攻击
	[130300101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--关羽技能伤害
		}
	},--关羽技能伤害
	[130300111] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1015,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--关羽专属武器效果
		}
	},--关羽专属武器效果
	[130300121] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0.3,[3] = 0},EffectDesc = "这是描述"},--关羽满星效果
			[2] = {Value = {[1] = 1,[2] = 0.3,[3] = 0},EffectDesc = "这是描述"},--关羽满星效果
			[3] = {Value = {[1] = 1,[2] = 0.3,[3] = 0},EffectDesc = "这是描述"},--关羽满星效果
			[4] = {Value = {[1] = 1,[2] = 0.3,[3] = 0},EffectDesc = "这是描述"},--关羽满星效果
			[5] = {Value = {[1] = 1,[2] = 0.3,[3] = 0},EffectDesc = "这是描述"},--关羽满星效果
			[6] = {Value = {[1] = 1,[2] = 0.3,[3] = 0},EffectDesc = "这是描述"},--关羽满星效果
			[7] = {Value = {[1] = 1,[2] = 0.3,[3] = 0},EffectDesc = "这是描述"},--关羽满星效果
			[8] = {Value = {[1] = 1,[2] = 0.3,[3] = 0},EffectDesc = "这是描述"},--关羽满星效果
			[9] = {Value = {[1] = 1,[2] = 0.3,[3] = 0},EffectDesc = "这是描述"},--关羽满星效果
			[10] = {Value = {[1] = 1,[2] = 0.3,[3] = 0},EffectDesc = "这是描述"}--关羽满星效果
		}
	},--关羽满星效果
	[130300201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--许褚技能伤害
		}
	},--许褚技能伤害
	[130300202] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1016,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能额外伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能额外伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能额外伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能额外伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能额外伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能额外伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能额外伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能额外伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚技能额外伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--许褚技能额外伤害
		}
	},--许褚技能额外伤害
	[130300211] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 113},ConParam = {[1] = {[1] = 0.01}},EffectDesc = "这是描述"},--许褚专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 113},ConParam = {[1] = {[1] = 0.01}},EffectDesc = "这是描述"},--许褚专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 113},ConParam = {[1] = {[1] = 0.01}},EffectDesc = "这是描述"},--许褚专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 113},ConParam = {[1] = {[1] = 0.01}},EffectDesc = "这是描述"},--许褚专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 113},ConParam = {[1] = {[1] = 0.01}},EffectDesc = "这是描述"},--许褚专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 113},ConParam = {[1] = {[1] = 0.01}},EffectDesc = "这是描述"},--许褚专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 113},ConParam = {[1] = {[1] = 0.01}},EffectDesc = "这是描述"},--许褚专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 113},ConParam = {[1] = {[1] = 0.01}},EffectDesc = "这是描述"},--许褚专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 113},ConParam = {[1] = {[1] = 0.01}},EffectDesc = "这是描述"},--许褚专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 113},ConParam = {[1] = {[1] = 0.01}},EffectDesc = "这是描述"}--许褚专属武器效果
		}
	},--许褚专属武器效果
	[130300221] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--许褚满星效果
		}
	},--许褚满星效果
	[130300301] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--典韦技能伤害
		}
	},--典韦技能伤害
	[130300302] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1014,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能额外伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能额外伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能额外伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能额外伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能额外伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能额外伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能额外伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能额外伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦技能额外伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--典韦技能额外伤害
		}
	},--典韦技能额外伤害
	[130300311] = {
		FireType = 2,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4016,
		AttackNum = 1,
		Duration = 9999,
		EndType = 2,
		Share = false,
		Stack = {1,9999},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 12,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦专属武器效果
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦专属武器效果
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦专属武器效果
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦专属武器效果
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦专属武器效果
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦专属武器效果
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦专属武器效果
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦专属武器效果
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦专属武器效果
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--典韦专属武器效果
		}
	},--典韦专属武器效果
	[130300321] = {
		FireType = 2,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4019,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 116},EffectDesc = "这是描述"},--典韦满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 116},EffectDesc = "这是描述"},--典韦满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 116},EffectDesc = "这是描述"},--典韦满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 116},EffectDesc = "这是描述"},--典韦满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 116},EffectDesc = "这是描述"},--典韦满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 116},EffectDesc = "这是描述"},--典韦满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 116},EffectDesc = "这是描述"},--典韦满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 116},EffectDesc = "这是描述"},--典韦满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 116},EffectDesc = "这是描述"},--典韦满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 116},EffectDesc = "这是描述"}--典韦满星效果
		}
	},--典韦满星效果
	[130300401] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨技能伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨技能伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨技能伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨技能伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨技能伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨技能伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨技能伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨技能伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨技能伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--唐流雨技能伤害
		}
	},--唐流雨技能伤害
	[130300411] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4001,
		AttackNum = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--唐流雨专属武器效果
		}
	},--唐流雨专属武器效果
	[130300421] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨满星效果
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨满星效果
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨满星效果
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨满星效果
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨满星效果
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨满星效果
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨满星效果
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨满星效果
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨满星效果
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--唐流雨满星效果
		}
	},--唐流雨满星效果
	[130300501] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--李轩辕技能伤害
		}
	},--李轩辕技能伤害
	[130300502] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能获得水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能获得水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能获得水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能获得水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能获得水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能获得水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能获得水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能获得水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕技能获得水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--李轩辕技能获得水晶
		}
	},--李轩辕技能获得水晶
	[130300511] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--李轩辕专属武器效果
		}
	},--李轩辕专属武器效果
	[130300521] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--李轩辕满星效果
		}
	},--李轩辕满星效果
	[130300601] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--项羽技能伤害
		}
	},--项羽技能伤害
	[130300602] = {
		FireType = 2,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4040,
		AttackNum = 1,
		Duration = 999,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能不死
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能不死
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能不死
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能不死
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能不死
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能不死
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能不死
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能不死
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽技能不死
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--项羽技能不死
		}
	},--项羽技能不死
	[130300611] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--项羽专属武器效果
		}
	},--项羽专属武器效果
	[130300621] = {
		FireType = 2,
		EffectTarget = 2,
		Type = 4,
		SubType = 1,
		DetailType = 4008,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--项羽满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--项羽满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--项羽满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--项羽满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--项羽满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--项羽满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--项羽满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--项羽满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--项羽满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"}--项羽满星效果
		}
	},--项羽满星效果
	[130300701] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4017,
		AttackNum = 1,
		Duration = 1,
		EndType = 4,
		Share = false,
		Stack = {1,2},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--天使缇娜技能伤害
		}
	},--天使缇娜技能伤害
	[130300702] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能禁锢
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能禁锢
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能禁锢
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能禁锢
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能禁锢
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能禁锢
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能禁锢
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能禁锢
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜技能禁锢
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--天使缇娜技能禁锢
		}
	},--天使缇娜技能禁锢
	[130300711] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4026,
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
		FxId = 11,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--天使缇娜专属武器效果
		}
	},--天使缇娜专属武器效果
	[130300801] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯渊技能伤害
		}
	},--夏侯渊技能伤害
	[130300802] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 2,
		SubType = 0,
		DetailType = 4015,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = {[1] = 2},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能回血
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能回血
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能回血
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能回血
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能回血
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能回血
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能回血
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能回血
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊技能回血
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯渊技能回血
		}
	},--夏侯渊技能回血
	[130300803] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4108,
		AttackNum = 1,
		Duration = 2,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		FxType = 1,
		FxId = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记自身
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记自身
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记自身
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记自身
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记自身
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记自身
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记自身
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记自身
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记自身
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯渊同生印记自身
		}
	},--夏侯渊同生印记自身
	[130300804] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4108,
		AttackNum = 1,
		Duration = 2,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记攻击目标
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记攻击目标
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记攻击目标
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记攻击目标
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记攻击目标
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记攻击目标
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记攻击目标
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记攻击目标
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记攻击目标
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯渊同生印记攻击目标
		}
	},--夏侯渊同生印记攻击目标
	[130300805] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4108,
		AttackNum = 1,
		Duration = 2,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = {[1] = 2},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记回血目标
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记回血目标
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记回血目标
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记回血目标
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记回血目标
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记回血目标
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记回血目标
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记回血目标
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊同生印记回血目标
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯渊同生印记回血目标
		}
	},--夏侯渊同生印记回血目标
	[130300811] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 2,
		SubType = 2,
		DetailType = 2001,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 125},EffectDesc = "这是描述"},--夏侯渊专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 125},EffectDesc = "这是描述"},--夏侯渊专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 125},EffectDesc = "这是描述"},--夏侯渊专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 125},EffectDesc = "这是描述"},--夏侯渊专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 125},EffectDesc = "这是描述"},--夏侯渊专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 125},EffectDesc = "这是描述"},--夏侯渊专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 125},EffectDesc = "这是描述"},--夏侯渊专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 125},EffectDesc = "这是描述"},--夏侯渊专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 125},EffectDesc = "这是描述"},--夏侯渊专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 125},EffectDesc = "这是描述"}--夏侯渊专属武器效果
		}
	},--夏侯渊专属武器效果
	[130300821] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4018,
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
		FxId = 4,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯渊满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯渊满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯渊满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯渊满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯渊满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯渊满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯渊满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯渊满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯渊满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"}--夏侯渊满星效果
		}
	},--夏侯渊满星效果
	[130300901] = {
		FireType = 1,
		EffectTarget = 1,
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
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能护盾
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能护盾
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能护盾
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能护盾
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能护盾
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能护盾
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能护盾
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能护盾
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能护盾
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--徐晃技能护盾
		}
	},--徐晃技能护盾
	[130300902] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4014,
		AttackNum = 1,
		Duration = 1,
		EndType = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 3,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能援护
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能援护
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能援护
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能援护
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能援护
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能援护
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能援护
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能援护
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃技能援护
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--徐晃技能援护
		}
	},--徐晃技能援护
	[130300911] = {
		FireType = 2,
		EffectTarget = 2,
		Type = 4,
		SubType = 1,
		DetailType = 1014,
		AttackNum = 1,
		Duration = 999,
		EndType = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--徐晃专属武器效果
		}
	},--徐晃专属武器效果
	[130300921] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--徐晃满星效果
		}
	},--徐晃满星效果
	[130301001] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 4017,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能持续伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能持续伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能持续伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能持续伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能持续伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能持续伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能持续伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能持续伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能持续伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张郃技能持续伤害
		}
	},--张郃技能持续伤害
	[130301002] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能获得水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能获得水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能获得水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能获得水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能获得水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能获得水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能获得水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能获得水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能获得水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张郃技能获得水晶
		}
	},--张郃技能获得水晶
	[130301003] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能触发水晶外壳
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能触发水晶外壳
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能触发水晶外壳
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能触发水晶外壳
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能触发水晶外壳
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能触发水晶外壳
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能触发水晶外壳
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能触发水晶外壳
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃技能触发水晶外壳
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张郃技能触发水晶外壳
		}
	},--张郃技能触发水晶外壳
	[130301011] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 0,
		DetailType = 4026,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张郃专属武器效果
		}
	},--张郃专属武器效果
	[130301021] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 0,
		DetailType = 4039,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张郃满星效果
		}
	},--张郃满星效果
	[130301101] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4038,
		AttackNum = 1,
		Duration = 2,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = {[1] = 2},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞使目标进入避难
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞使目标进入避难
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞使目标进入避难
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞使目标进入避难
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞使目标进入避难
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞使目标进入避难
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞使目标进入避难
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞使目标进入避难
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞使目标进入避难
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张飞使目标进入避难
		}
	},--张飞使目标进入避难
	[130301102] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 2,
		SubType = 0,
		DetailType = 2004,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = {[1] = 2},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于目标已损失生命治疗
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于目标已损失生命治疗
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于目标已损失生命治疗
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于目标已损失生命治疗
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于目标已损失生命治疗
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于目标已损失生命治疗
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于目标已损失生命治疗
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于目标已损失生命治疗
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于目标已损失生命治疗
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张飞基于目标已损失生命治疗
		}
	},--张飞基于目标已损失生命治疗
	[130301103] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 2,
		SubType = 0,
		DetailType = 2001,
		AttackNum = 1,
		Duration = 1,
		EndType = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = {[1] = 2},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于攻击治疗
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于攻击治疗
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于攻击治疗
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于攻击治疗
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于攻击治疗
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于攻击治疗
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于攻击治疗
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于攻击治疗
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞基于攻击治疗
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张飞基于攻击治疗
		}
	},--张飞基于攻击治疗
	[130301111] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 1013,
		AttackNum = 1,
		Duration = 1,
		EndType = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = {[1] = 2},
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张飞专属武器效果
		}
	},--张飞专属武器效果
	[130301121] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 2002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 7,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张飞满星效果
		}
	},--张飞满星效果
	[130301201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯惇技能伤害
		}
	},--夏侯惇技能伤害
	[130301202] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 0,
		DetailType = 4026,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 1,
		Target4 = {[1] = 3},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能减攻击
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能减攻击
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能减攻击
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能减攻击
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能减攻击
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能减攻击
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能减攻击
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能减攻击
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇技能减攻击
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯惇技能减攻击
		}
	},--夏侯惇技能减攻击
	[130301203] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4109,
		AttackNum = 1,
		Duration = 2,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记自身
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记自身
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记自身
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记自身
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记自身
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记自身
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记自身
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记自身
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记自身
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯惇共死印记自身
		}
	},--夏侯惇共死印记自身
	[130301204] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4109,
		AttackNum = 1,
		Duration = 2,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记攻击目标
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记攻击目标
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记攻击目标
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记攻击目标
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记攻击目标
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记攻击目标
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记攻击目标
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记攻击目标
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记攻击目标
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯惇共死印记攻击目标
		}
	},--夏侯惇共死印记攻击目标
	[130301205] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4109,
		AttackNum = 1,
		Duration = 2,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 1,
		Target4 = {[1] = 3},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记减攻击目标
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记减攻击目标
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记减攻击目标
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记减攻击目标
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记减攻击目标
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记减攻击目标
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记减攻击目标
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记减攻击目标
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇共死印记减攻击目标
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯惇共死印记减攻击目标
		}
	},--夏侯惇共死印记减攻击目标
	[130301211] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4019,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 124},EffectDesc = "这是描述"},--夏侯惇专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 124},EffectDesc = "这是描述"},--夏侯惇专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 124},EffectDesc = "这是描述"},--夏侯惇专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 124},EffectDesc = "这是描述"},--夏侯惇专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 124},EffectDesc = "这是描述"},--夏侯惇专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 124},EffectDesc = "这是描述"},--夏侯惇专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 124},EffectDesc = "这是描述"},--夏侯惇专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 124},EffectDesc = "这是描述"},--夏侯惇专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 124},EffectDesc = "这是描述"},--夏侯惇专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 124},EffectDesc = "这是描述"}--夏侯惇专属武器效果
		}
	},--夏侯惇专属武器效果
	[130301221] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 2,
		DetailType = 4109,
		AttackNum = 1,
		Duration = 2,
		EndType = 4,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯惇满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯惇满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯惇满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯惇满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯惇满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯惇满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯惇满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯惇满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"},--夏侯惇满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 122},EffectDesc = "这是描述"}--夏侯惇满星效果
		}
	},--夏侯惇满星效果
	[130301301] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--塞伯罗斯技能伤害
		}
	},--塞伯罗斯技能伤害
	[130301311] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--塞伯罗斯专属武器效果
		}
	},--塞伯罗斯专属武器效果
	[130301321] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能吸血
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能吸血
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能吸血
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能吸血
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能吸血
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能吸血
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能吸血
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能吸血
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯技能吸血
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--塞伯罗斯技能吸血
		}
	},--塞伯罗斯技能吸血
	[130301401] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--石灵明技能伤害
		}
	},--石灵明技能伤害
	[130301402] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能禁锢
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能禁锢
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能禁锢
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能禁锢
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能禁锢
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能禁锢
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能禁锢
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能禁锢
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明技能禁锢
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--石灵明技能禁锢
		}
	},--石灵明技能禁锢
	[130301411] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--石灵明专属武器效果
		}
	},--石灵明专属武器效果
	[130301501] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--于禁技能伤害
		}
	},--于禁技能伤害
	[130301511] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--于禁专属武器效果
		}
	},--于禁专属武器效果
	[130301521] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--于禁满星效果
		}
	},--于禁满星效果
	[130301601] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 1001,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--西方龙技能伤害
		}
	},--西方龙技能伤害
	[130301602] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4042,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能【虹吸】
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能【虹吸】
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能【虹吸】
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能【虹吸】
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能【虹吸】
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能【虹吸】
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能【虹吸】
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能【虹吸】
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙技能【虹吸】
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--西方龙技能【虹吸】
		}
	},--西方龙技能【虹吸】
	[130301611] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4042,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 5,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--西方龙专属武器效果
		}
	},--西方龙专属武器效果
	[130301621] = {
		FireType = 2,
		EffectTarget = 2,
		Type = 1,
		SubType = 0,
		DetailType = 1003,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4042}},EffectDesc = "这是描述"},--西方龙满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4042}},EffectDesc = "这是描述"},--西方龙满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4042}},EffectDesc = "这是描述"},--西方龙满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4042}},EffectDesc = "这是描述"},--西方龙满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4042}},EffectDesc = "这是描述"},--西方龙满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4042}},EffectDesc = "这是描述"},--西方龙满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4042}},EffectDesc = "这是描述"},--西方龙满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4042}},EffectDesc = "这是描述"},--西方龙满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4042}},EffectDesc = "这是描述"},--西方龙满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4042}},EffectDesc = "这是描述"}--西方龙满星效果
		}
	},--西方龙满星效果
	[130301701] = {
		FireType = 1,
		EffectTarget = 1,
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
		Target4 = {[1] = 1,[2] = 4101},
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--飞廉技能伤害
		}
	},--飞廉技能伤害
	[130301702] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4101}},EffectDesc = "这是描述"},--飞廉技能刷新技能
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4101}},EffectDesc = "这是描述"},--飞廉技能刷新技能
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4101}},EffectDesc = "这是描述"},--飞廉技能刷新技能
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4101}},EffectDesc = "这是描述"},--飞廉技能刷新技能
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4101}},EffectDesc = "这是描述"},--飞廉技能刷新技能
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4101}},EffectDesc = "这是描述"},--飞廉技能刷新技能
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4101}},EffectDesc = "这是描述"},--飞廉技能刷新技能
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4101}},EffectDesc = "这是描述"},--飞廉技能刷新技能
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4101}},EffectDesc = "这是描述"},--飞廉技能刷新技能
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 101,[2] = 103},ConParam = {[1] = {[1] = 0.5},[2] = {[1] = 4101}},EffectDesc = "这是描述"}--飞廉技能刷新技能
		}
	},--飞廉技能刷新技能
	[130301711] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 3,
		DetailType = 4101,
		AttackNum = 1,
		Duration = 2,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--飞廉专属武器效果
		}
	},--飞廉专属武器效果
	[130301721] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--飞廉满星效果
		}
	},--飞廉满星效果
	[130301801] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--噬日技能伤害
		}
	},--噬日技能伤害
	[130301802] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能消耗生命
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能消耗生命
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能消耗生命
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能消耗生命
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能消耗生命
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能消耗生命
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能消耗生命
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能消耗生命
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日技能消耗生命
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--噬日技能消耗生命
		}
	},--噬日技能消耗生命
	[130301809] = {
		FireType = 2,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4031,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--噬日专属武器效果
		}
	},--噬日专属武器效果
	[130301901] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4005,
		AttackNum = 1,
		Duration = 3,
		EndType = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 4,
		Target3 = 1,
		Target4 = {[1] = 2},
		Target5 = 1,
		FxType = 1,
		FxId = 5,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥技能护盾
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥技能护盾
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥技能护盾
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥技能护盾
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥技能护盾
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥技能护盾
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥技能护盾
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥技能护盾
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥技能护盾
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--食火蜥技能护盾
		}
	},--食火蜥技能护盾
	[130301909] = {
		FireType = 1,
		EffectTarget = 1,
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
		Target4 = {[1] = 2},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--食火蜥专属武器效果
		}
	},--食火蜥专属武器效果
	[130302001] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能基础伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能基础伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能基础伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能基础伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能基础伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能基础伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能基础伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能基础伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能基础伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--高顺技能基础伤害
		}
	},--高顺技能基础伤害
	[130302002] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--高顺技能额外伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--高顺技能额外伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--高顺技能额外伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--高顺技能额外伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--高顺技能额外伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--高顺技能额外伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--高顺技能额外伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--高顺技能额外伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"},--高顺技能额外伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},ConId = {[1] = 107},ConParam = {[1] = {[1] = 0.7}},EffectDesc = "这是描述"}--高顺技能额外伤害
		}
	},--高顺技能额外伤害
	[130302003] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能伤害加成
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能伤害加成
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能伤害加成
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能伤害加成
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能伤害加成
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能伤害加成
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能伤害加成
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能伤害加成
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺技能伤害加成
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--高顺技能伤害加成
		}
	},--高顺技能伤害加成
	[130302011] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--高顺专属武器效果
		}
	},--高顺专属武器效果
	[130302021] = {
		FireType = 2,
		EffectTarget = 1,
		Type = 4,
		SubType = 1,
		DetailType = 4041,
		AttackNum = 0,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 3,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺满星效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺满星效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺满星效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺满星效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺满星效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺满星效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺满星效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺满星效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺满星效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--高顺满星效果
		}
	},--高顺满星效果
	[130302101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--烈风螳螂技能伤害
		}
	},--烈风螳螂技能伤害
	[130302102] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能加攻击
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能加攻击
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能加攻击
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能加攻击
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能加攻击
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能加攻击
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能加攻击
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能加攻击
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂技能加攻击
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--烈风螳螂技能加攻击
		}
	},--烈风螳螂技能加攻击
	[130302109] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂专属武器效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂专属武器效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂专属武器效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂专属武器效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂专属武器效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂专属武器效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂专属武器效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂专属武器效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂专属武器效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--烈风螳螂专属武器效果
		}
	},--烈风螳螂专属武器效果
	[130400101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽1主动伤害
		}
	},--插槽1主动伤害
	[130400102] = {
		FireType = 3,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1追击伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1追击伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1追击伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1追击伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1追击伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1追击伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1追击伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1追击伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽1追击伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽1追击伤害
		}
	},--插槽1追击伤害
	[130400201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽2主动伤害
		}
	},--插槽2主动伤害
	[130400202] = {
		FireType = 3,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽2追击伤害
		}
	},--插槽2追击伤害
	[130400203] = {
		FireType = 3,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击禁锢额外伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击禁锢额外伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击禁锢额外伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击禁锢额外伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击禁锢额外伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击禁锢额外伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击禁锢额外伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击禁锢额外伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽2追击禁锢额外伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽2追击禁锢额外伤害
		}
	},--插槽2追击禁锢额外伤害
	[130400301] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽3主动伤害
		}
	},--插槽3主动伤害
	[130400302] = {
		FireType = 3,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3追击伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3追击伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3追击伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3追击伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3追击伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3追击伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3追击伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3追击伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3追击伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽3追击伤害
		}
	},--插槽3追击伤害
	[130400303] = {
		FireType = 3,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少红水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少红水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少红水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少红水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少红水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少红水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少红水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少红水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少红水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽3减少红水晶
		}
	},--插槽3减少红水晶
	[130400304] = {
		FireType = 3,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少黄水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少黄水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少黄水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少黄水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少黄水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少黄水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少黄水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少黄水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少黄水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽3减少黄水晶
		}
	},--插槽3减少黄水晶
	[130400305] = {
		FireType = 3,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少蓝水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少蓝水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少蓝水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少蓝水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少蓝水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少蓝水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少蓝水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少蓝水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽3减少蓝水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽3减少蓝水晶
		}
	},--插槽3减少蓝水晶
	[130400401] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽4主动伤害
		}
	},--插槽4主动伤害
	[130400402] = {
		FireType = 3,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4追击伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4追击伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4追击伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4追击伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4追击伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4追击伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4追击伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4追击伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽4追击伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽4追击伤害
		}
	},--插槽4追击伤害
	[130400501] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽5主动伤害
		}
	},--插槽5主动伤害
	[130400502] = {
		FireType = 3,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5追击伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5追击伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5追击伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5追击伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5追击伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5追击伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5追击伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5追击伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5追击伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽5追击伤害
		}
	},--插槽5追击伤害
	[130400503] = {
		FireType = 3,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5暴击额外伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5暴击额外伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5暴击额外伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5暴击额外伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5暴击额外伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5暴击额外伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5暴击额外伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5暴击额外伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽5暴击额外伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽5暴击额外伤害
		}
	},--插槽5暴击额外伤害
	[130400601] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽6主动伤害
		}
	},--插槽6主动伤害
	[130400602] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6获得红水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6获得红水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6获得红水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6获得红水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6获得红水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6获得红水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6获得红水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6获得红水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽6获得红水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽6获得红水晶
		}
	},--插槽6获得红水晶
	[130400701] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽7主动伤害
		}
	},--插槽7主动伤害
	[130400702] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7获得黄水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7获得黄水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7获得黄水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7获得黄水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7获得黄水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7获得黄水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7获得黄水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7获得黄水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽7获得黄水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽7获得黄水晶
		}
	},--插槽7获得黄水晶
	[130400801] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽8主动伤害
		}
	},--插槽8主动伤害
	[130400802] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8获得蓝水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8获得蓝水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8获得蓝水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8获得蓝水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8获得蓝水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8获得蓝水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8获得蓝水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8获得蓝水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽8获得蓝水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽8获得蓝水晶
		}
	},--插槽8获得蓝水晶
	[130400901] = {
		FireType = 1,
		EffectTarget = 1,
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
		Target4 = {[1] = 2},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9回复友军生命
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9回复友军生命
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9回复友军生命
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9回复友军生命
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9回复友军生命
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9回复友军生命
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9回复友军生命
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9回复友军生命
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9回复友军生命
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽9回复友军生命
		}
	},--插槽9回复友军生命
	[130400902] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9施加水晶外壳效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9施加水晶外壳效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9施加水晶外壳效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9施加水晶外壳效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9施加水晶外壳效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9施加水晶外壳效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9施加水晶外壳效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9施加水晶外壳效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽9施加水晶外壳效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽9施加水晶外壳效果
		}
	},--插槽9施加水晶外壳效果
	[130401001] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽10主动伤害
		}
	},--插槽10主动伤害
	[130401002] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10增加暴击率
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10增加暴击率
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10增加暴击率
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10增加暴击率
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10增加暴击率
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10增加暴击率
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10增加暴击率
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10增加暴击率
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽10增加暴击率
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽10增加暴击率
		}
	},--插槽10增加暴击率
	[130401101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽11主动伤害
		}
	},--插槽11主动伤害
	[130401102] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11增加穿透概率
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11增加穿透概率
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11增加穿透概率
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11增加穿透概率
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11增加穿透概率
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11增加穿透概率
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11增加穿透概率
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11增加穿透概率
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽11增加穿透概率
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽11增加穿透概率
		}
	},--插槽11增加穿透概率
	[130401201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽12主动伤害
		}
	},--插槽12主动伤害
	[130401202] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12额外伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12额外伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12额外伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12额外伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12额外伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12额外伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12额外伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12额外伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽12额外伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽12额外伤害
		}
	},--插槽12额外伤害
	[130401301] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽13主动伤害
		}
	},--插槽13主动伤害
	[130401302] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13额外穿透伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13额外穿透伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13额外穿透伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13额外穿透伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13额外穿透伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13额外穿透伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13额外穿透伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13额外穿透伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽13额外穿透伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽13额外穿透伤害
		}
	},--插槽13额外穿透伤害
	[130401401] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽14主动伤害
		}
	},--插槽14主动伤害
	[130401402] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14额外穿透伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14额外穿透伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14额外穿透伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14额外穿透伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14额外穿透伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14额外穿透伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14额外穿透伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14额外穿透伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽14额外穿透伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽14额外穿透伤害
		}
	},--插槽14额外穿透伤害
	[130401501] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15主动伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15主动伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15主动伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15主动伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15主动伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15主动伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15主动伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15主动伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15主动伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽15主动伤害
		}
	},--插槽15主动伤害
	[130401502] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15降低被治疗效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15降低被治疗效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15降低被治疗效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15降低被治疗效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15降低被治疗效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15降低被治疗效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15降低被治疗效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15降低被治疗效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽15降低被治疗效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽15降低被治疗效果
		}
	},--插槽15降低被治疗效果
	[130401601] = {
		FireType = 1,
		EffectTarget = 1,
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
		Target4 = {[1] = 2},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16回复生命
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16回复生命
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16回复生命
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16回复生命
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16回复生命
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16回复生命
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16回复生命
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16回复生命
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16回复生命
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽16回复生命
		}
	},--插槽16回复生命
	[130401602] = {
		FireType = 1,
		EffectTarget = 1,
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
		Target4 = {[1] = 2},
		Target5 = 1,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16额外治疗
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16额外治疗
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16额外治疗
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16额外治疗
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16额外治疗
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16额外治疗
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16额外治疗
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16额外治疗
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--插槽16额外治疗
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--插槽16额外治疗
		}
	},--插槽16额外治疗
	[130600101] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--常服曹焱兵普攻伤害
		}
	},--常服曹焱兵普攻伤害
	[130600102] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--常服曹焱兵普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--常服曹焱兵普攻水晶
		}
	},--常服曹焱兵普攻水晶
	[130600201] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--曹玄亮普攻伤害
		}
	},--曹玄亮普攻伤害
	[130600202] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻水晶
			[2] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻水晶
			[3] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻水晶
			[4] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻水晶
			[5] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻水晶
			[6] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻水晶
			[7] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻水晶
			[8] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻水晶
			[9] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--曹玄亮普攻水晶
			[10] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--曹玄亮普攻水晶
		}
	},--曹玄亮普攻水晶
	[130600301] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--战斗夏玲普攻伤害
		}
	},--战斗夏玲普攻伤害
	[130600302] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻水晶
			[2] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻水晶
			[3] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻水晶
			[4] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻水晶
			[5] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻水晶
			[6] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻水晶
			[7] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻水晶
			[8] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻水晶
			[9] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗夏玲普攻水晶
			[10] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--战斗夏玲普攻水晶
		}
	},--战斗夏玲普攻水晶
	[130600401] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--项昆仑普攻伤害
		}
	},--项昆仑普攻伤害
	[130600402] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻水晶
			[2] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻水晶
			[3] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻水晶
			[4] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻水晶
			[5] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻水晶
			[6] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻水晶
			[7] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻水晶
			[8] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻水晶
			[9] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项昆仑普攻水晶
			[10] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--项昆仑普攻水晶
		}
	},--项昆仑普攻水晶
	[130600501] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--刘羽禅普攻伤害
		}
	},--刘羽禅普攻伤害
	[130600502] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--刘羽禅普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--刘羽禅普攻水晶
		}
	},--刘羽禅普攻水晶
	[130600601] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--红莲缇娜普攻伤害
		}
	},--红莲缇娜普攻伤害
	[130600602] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--红莲缇娜普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--红莲缇娜普攻水晶
		}
	},--红莲缇娜普攻水晶
	[130600701] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--战斗曹焱兵普攻伤害
		}
	},--战斗曹焱兵普攻伤害
	[130600702] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--战斗曹焱兵普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--战斗曹焱兵普攻水晶
		}
	},--战斗曹焱兵普攻水晶
	[130600801] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--黑尔坎普普攻伤害
		}
	},--黑尔坎普普攻伤害
	[130600802] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻水晶
			[2] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻水晶
			[3] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻水晶
			[4] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻水晶
			[5] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻水晶
			[6] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻水晶
			[7] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻水晶
			[8] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻水晶
			[9] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--黑尔坎普普攻水晶
			[10] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--黑尔坎普普攻水晶
		}
	},--黑尔坎普普攻水晶
	[130600901] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--北落师门普攻伤害
		}
	},--北落师门普攻伤害
	[130600902] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--北落师门普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--北落师门普攻水晶
		}
	},--北落师门普攻水晶
	[130601001] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--盖文普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--盖文普攻伤害
		}
	},--盖文普攻伤害
	[130601002] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--盖文普攻水晶
			[2] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--盖文普攻水晶
			[3] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--盖文普攻水晶
			[4] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--盖文普攻水晶
			[5] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--盖文普攻水晶
			[6] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--盖文普攻水晶
			[7] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--盖文普攻水晶
			[8] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--盖文普攻水晶
			[9] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--盖文普攻水晶
			[10] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--盖文普攻水晶
		}
	},--盖文普攻水晶
	[130601101] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--阎风吒普攻伤害
		}
	},--阎风吒普攻伤害
	[130601102] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻水晶
			[2] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻水晶
			[3] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻水晶
			[4] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻水晶
			[5] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻水晶
			[6] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻水晶
			[7] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻水晶
			[8] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻水晶
			[9] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎风吒普攻水晶
			[10] = {Value = {[1] = 3,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--阎风吒普攻水晶
		}
	},--阎风吒普攻水晶
	[130601201] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--南御夫普攻伤害
		}
	},--南御夫普攻伤害
	[130601202] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻水晶
			[2] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻水晶
			[3] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻水晶
			[4] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻水晶
			[5] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻水晶
			[6] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻水晶
			[7] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻水晶
			[8] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻水晶
			[9] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--南御夫普攻水晶
			[10] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--南御夫普攻水晶
		}
	},--南御夫普攻水晶
	[130601301] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--吉拉普攻伤害
		}
	},--吉拉普攻伤害
	[130601302] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吉拉普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--吉拉普攻水晶
		}
	},--吉拉普攻水晶
	[130601401] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--吕仙宫普攻伤害
		}
	},--吕仙宫普攻伤害
	[130601402] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻水晶
			[2] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻水晶
			[3] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻水晶
			[4] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻水晶
			[5] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻水晶
			[6] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻水晶
			[7] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻水晶
			[8] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻水晶
			[9] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--吕仙宫普攻水晶
			[10] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--吕仙宫普攻水晶
		}
	},--吕仙宫普攻水晶
	[130601501] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--阎巧巧普攻伤害
		}
	},--阎巧巧普攻伤害
	[130601502] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻水晶
			[2] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻水晶
			[3] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻水晶
			[4] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻水晶
			[5] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻水晶
			[6] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻水晶
			[7] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻水晶
			[8] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻水晶
			[9] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--阎巧巧普攻水晶
			[10] = {Value = {[1] = 2,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--阎巧巧普攻水晶
		}
	},--阎巧巧普攻水晶
	[130601701] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--诸葛一心普攻伤害
		}
	},--诸葛一心普攻伤害
	[130601702] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--诸葛一心普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--诸葛一心普攻水晶
		}
	},--诸葛一心普攻水晶
	[130602001] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--姬烟华普攻伤害
		}
	},--姬烟华普攻伤害
	[130602002] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--姬烟华普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--姬烟华普攻水晶
		}
	},--姬烟华普攻水晶
	[130602201] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--幻普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--幻普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--幻普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--幻普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--幻普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--幻普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--幻普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--幻普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--幻普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--幻普攻伤害
		}
	},--幻普攻伤害
	[130602202] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--幻普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--幻普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--幻普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--幻普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--幻普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--幻普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--幻普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--幻普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--幻普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--幻普攻水晶
		}
	},--幻普攻水晶
	[130700101] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--关羽普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--关羽普攻伤害
		}
	},--关羽普攻伤害
	[130700102] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--关羽普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--关羽普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--关羽普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--关羽普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--关羽普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--关羽普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--关羽普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--关羽普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--关羽普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--关羽普攻水晶
		}
	},--关羽普攻水晶
	[130700201] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--许褚普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--许褚普攻伤害
		}
	},--许褚普攻伤害
	[130700202] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--许褚普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--许褚普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--许褚普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--许褚普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--许褚普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--许褚普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--许褚普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--许褚普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--许褚普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--许褚普攻水晶
		}
	},--许褚普攻水晶
	[130700301] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--典韦普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--典韦普攻伤害
		}
	},--典韦普攻伤害
	[130700302] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--典韦普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--典韦普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--典韦普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--典韦普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--典韦普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--典韦普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--典韦普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--典韦普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--典韦普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--典韦普攻水晶
		}
	},--典韦普攻水晶
	[130700401] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--唐流雨普攻伤害
		}
	},--唐流雨普攻伤害
	[130700402] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--唐流雨普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--唐流雨普攻水晶
		}
	},--唐流雨普攻水晶
	[130700501] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--李轩辕普攻伤害
		}
	},--李轩辕普攻伤害
	[130700502] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--李轩辕普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--李轩辕普攻水晶
		}
	},--李轩辕普攻水晶
	[130700601] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--项羽普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--项羽普攻伤害
		}
	},--项羽普攻伤害
	[130700602] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项羽普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项羽普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项羽普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项羽普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项羽普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项羽普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项羽普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项羽普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--项羽普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--项羽普攻水晶
		}
	},--项羽普攻水晶
	[130700701] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--天使缇娜普攻伤害
		}
	},--天使缇娜普攻伤害
	[130700702] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--天使缇娜普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--天使缇娜普攻水晶
		}
	},--天使缇娜普攻水晶
	[130700801] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯渊普攻伤害
		}
	},--夏侯渊普攻伤害
	[130700802] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯渊普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--夏侯渊普攻水晶
		}
	},--夏侯渊普攻水晶
	[130700901] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--徐晃普攻伤害
		}
	},--徐晃普攻伤害
	[130700902] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--徐晃普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--徐晃普攻水晶
		}
	},--徐晃普攻水晶
	[130701001] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张郃普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张郃普攻伤害
		}
	},--张郃普攻伤害
	[130701002] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张郃普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张郃普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张郃普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张郃普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张郃普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张郃普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张郃普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张郃普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张郃普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--张郃普攻水晶
		}
	},--张郃普攻水晶
	[130701101] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--张飞普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--张飞普攻伤害
		}
	},--张飞普攻伤害
	[130701102] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张飞普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张飞普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张飞普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张飞普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张飞普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张飞普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张飞普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张飞普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--张飞普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--张飞普攻水晶
		}
	},--张飞普攻水晶
	[130701201] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--夏侯惇普攻伤害
		}
	},--夏侯惇普攻伤害
	[130701202] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--夏侯惇普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--夏侯惇普攻水晶
		}
	},--夏侯惇普攻水晶
	[130701301] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--塞伯罗斯普攻伤害
		}
	},--塞伯罗斯普攻伤害
	[130701302] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--塞伯罗斯普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--塞伯罗斯普攻水晶
		}
	},--塞伯罗斯普攻水晶
	[130701401] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--石灵明普攻伤害
		}
	},--石灵明普攻伤害
	[130701402] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--石灵明普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--石灵明普攻水晶
		}
	},--石灵明普攻水晶
	[130701501] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--于禁普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--于禁普攻伤害
		}
	},--于禁普攻伤害
	[130701502] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--于禁普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--于禁普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--于禁普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--于禁普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--于禁普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--于禁普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--于禁普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--于禁普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--于禁普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--于禁普攻水晶
		}
	},--于禁普攻水晶
	[130701601] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--西方龙普攻伤害
		}
	},--西方龙普攻伤害
	[130701602] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--西方龙普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--西方龙普攻水晶
		}
	},--西方龙普攻水晶
	[130701701] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--飞廉普攻伤害
		}
	},--飞廉普攻伤害
	[130701702] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--飞廉普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--飞廉普攻水晶
		}
	},--飞廉普攻水晶
	[130701801] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--噬日普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--噬日普攻伤害
		}
	},--噬日普攻伤害
	[130701802] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--噬日普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--噬日普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--噬日普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--噬日普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--噬日普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--噬日普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--噬日普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--噬日普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--噬日普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--噬日普攻水晶
		}
	},--噬日普攻水晶
	[130701901] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--食火蜥普攻伤害
		}
	},--食火蜥普攻伤害
	[130701902] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--食火蜥普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--食火蜥普攻水晶
		}
	},--食火蜥普攻水晶
	[130702001] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--高顺普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--高顺普攻伤害
		}
	},--高顺普攻伤害
	[130702002] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--高顺普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--高顺普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--高顺普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--高顺普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--高顺普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--高顺普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--高顺普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--高顺普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--高顺普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--高顺普攻水晶
		}
	},--高顺普攻水晶
	[130702101] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 1,
		SubType = 0,
		DetailType = 1001,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 5,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻伤害
			[2] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻伤害
			[3] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻伤害
			[4] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻伤害
			[5] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻伤害
			[6] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻伤害
			[7] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻伤害
			[8] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻伤害
			[9] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻伤害
			[10] = {Value = {[1] = 2.5,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--烈风螳螂普攻伤害
		}
	},--烈风螳螂普攻伤害
	[130702102] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 3,
		SubType = 0,
		DetailType = 3006,
		AttackNum = 1,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 4,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[1] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻水晶
			[2] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻水晶
			[3] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻水晶
			[4] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻水晶
			[5] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻水晶
			[6] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻水晶
			[7] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻水晶
			[8] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻水晶
			[9] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"},--烈风螳螂普攻水晶
			[10] = {Value = {[1] = 1,[2] = 1,[3] = 0},EffectDesc = "这是描述"}--烈风螳螂普攻水晶
		}
	},--烈风螳螂普攻水晶
	[180100101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--砍刀鬼兵的普通攻击
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--砍刀鬼兵的普通攻击
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--砍刀鬼兵的普通攻击
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--砍刀鬼兵的普通攻击
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--砍刀鬼兵的普通攻击
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--砍刀鬼兵的普通攻击
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--砍刀鬼兵的普通攻击
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--砍刀鬼兵的普通攻击
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--砍刀鬼兵的普通攻击
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--砍刀鬼兵的普通攻击
		}
	},--砍刀鬼兵的普通攻击
	[180100201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--双刀鬼兵的普通攻击
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--双刀鬼兵的普通攻击
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--双刀鬼兵的普通攻击
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--双刀鬼兵的普通攻击
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--双刀鬼兵的普通攻击
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--双刀鬼兵的普通攻击
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--双刀鬼兵的普通攻击
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--双刀鬼兵的普通攻击
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--双刀鬼兵的普通攻击
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--双刀鬼兵的普通攻击
		}
	},--双刀鬼兵的普通攻击
	[180100301] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--链球鬼兵的普通攻击
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--链球鬼兵的普通攻击
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--链球鬼兵的普通攻击
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--链球鬼兵的普通攻击
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--链球鬼兵的普通攻击
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--链球鬼兵的普通攻击
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--链球鬼兵的普通攻击
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--链球鬼兵的普通攻击
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--链球鬼兵的普通攻击
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--链球鬼兵的普通攻击
		}
	},--链球鬼兵的普通攻击
	[180100401] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军普通伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军普通伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军普通伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军普通伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军普通伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军普通伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军普通伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军普通伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军普通伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--鬼将军普通伤害
		}
	},--鬼将军普通伤害
	[180100501] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军普通伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军普通伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军普通伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军普通伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军普通伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军普通伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军普通伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军普通伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军普通伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--变身鬼将军普通伤害
		}
	},--变身鬼将军普通伤害
	[180100601] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--骷髅小兵1普通攻击
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--骷髅小兵1普通攻击
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--骷髅小兵1普通攻击
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--骷髅小兵1普通攻击
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--骷髅小兵1普通攻击
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--骷髅小兵1普通攻击
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--骷髅小兵1普通攻击
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--骷髅小兵1普通攻击
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--骷髅小兵1普通攻击
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--骷髅小兵1普通攻击
		}
	},--骷髅小兵1普通攻击
	[180100801] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军单体伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军单体伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军单体伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军单体伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军单体伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军单体伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军单体伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军单体伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军单体伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--伏尸将军单体伤害
		}
	},--伏尸将军单体伤害
	[180100901] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军单体伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军单体伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军单体伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军单体伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军单体伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军单体伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军单体伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军单体伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军单体伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--石瀑将军单体伤害
		}
	},--石瀑将军单体伤害
	[180101001] = {
		FireType = 1,
		EffectTarget = 1,
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
			[21] = {Value = {[1] = 12,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--小蜘蛛普通攻击
			[22] = {Value = {[1] = 13,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--小蜘蛛普通攻击
			[23] = {Value = {[1] = 14,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--小蜘蛛普通攻击
			[24] = {Value = {[1] = 15,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--小蜘蛛普通攻击
			[25] = {Value = {[1] = 16,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--小蜘蛛普通攻击
			[26] = {Value = {[1] = 17,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--小蜘蛛普通攻击
			[27] = {Value = {[1] = 18,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--小蜘蛛普通攻击
			[28] = {Value = {[1] = 19,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--小蜘蛛普通攻击
			[29] = {Value = {[1] = 20,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--小蜘蛛普通攻击
			[30] = {Value = {[1] = 21,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--小蜘蛛普通攻击
		}
	},--小蜘蛛普通攻击
	[180101101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[31] = {Value = {[1] = 22,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--魔导机兵团普通攻击
			[32] = {Value = {[1] = 23,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--魔导机兵团普通攻击
			[33] = {Value = {[1] = 24,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--魔导机兵团普通攻击
			[34] = {Value = {[1] = 25,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--魔导机兵团普通攻击
			[35] = {Value = {[1] = 26,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--魔导机兵团普通攻击
			[36] = {Value = {[1] = 27,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--魔导机兵团普通攻击
			[37] = {Value = {[1] = 28,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--魔导机兵团普通攻击
			[38] = {Value = {[1] = 29,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--魔导机兵团普通攻击
			[39] = {Value = {[1] = 30,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--魔导机兵团普通攻击
			[40] = {Value = {[1] = 31,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--魔导机兵团普通攻击
		}
	},--魔导机兵团普通攻击
	[180101201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[41] = {Value = {[1] = 32,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能1单体伤害
			[42] = {Value = {[1] = 33,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能1单体伤害
			[43] = {Value = {[1] = 34,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能1单体伤害
			[44] = {Value = {[1] = 35,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能1单体伤害
			[45] = {Value = {[1] = 36,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能1单体伤害
			[46] = {Value = {[1] = 37,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能1单体伤害
			[47] = {Value = {[1] = 38,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能1单体伤害
			[48] = {Value = {[1] = 39,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能1单体伤害
			[49] = {Value = {[1] = 40,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能1单体伤害
			[50] = {Value = {[1] = 41,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--山蜘蛛技能1单体伤害
		}
	},--山蜘蛛技能1单体伤害
	[180200401] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军超级伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军超级伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军超级伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军超级伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军超级伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军超级伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军超级伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军超级伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--鬼将军超级伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--鬼将军超级伤害
		}
	},--鬼将军超级伤害
	[180200501] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军2技能伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军2技能伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军2技能伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军2技能伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军2技能伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军2技能伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军2技能伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军2技能伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军2技能伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--变身鬼将军2技能伤害
		}
	},--变身鬼将军2技能伤害
	[180200502] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军偷水晶
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军偷水晶
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军偷水晶
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军偷水晶
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军偷水晶
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军偷水晶
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军偷水晶
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军偷水晶
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军偷水晶
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--变身鬼将军偷水晶
		}
	},--变身鬼将军偷水晶
	[180200801] = {
		FireType = 1,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军群体伤害
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军群体伤害
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军群体伤害
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军群体伤害
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军群体伤害
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军群体伤害
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军群体伤害
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军群体伤害
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--伏尸将军群体伤害
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--伏尸将军群体伤害
		}
	},--伏尸将军群体伤害
	[180200901] = {
		FireType = 1,
		EffectTarget = 1,
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
			[11] = {Value = {[1] = 2,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军群体伤害
			[12] = {Value = {[1] = 3,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军群体伤害
			[13] = {Value = {[1] = 4,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军群体伤害
			[14] = {Value = {[1] = 5,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军群体伤害
			[15] = {Value = {[1] = 6,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军群体伤害
			[16] = {Value = {[1] = 7,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军群体伤害
			[17] = {Value = {[1] = 8,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军群体伤害
			[18] = {Value = {[1] = 9,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军群体伤害
			[19] = {Value = {[1] = 10,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--石瀑将军群体伤害
			[20] = {Value = {[1] = 11,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--石瀑将军群体伤害
		}
	},--石瀑将军群体伤害
	[180201201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[51] = {Value = {[1] = 42,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能2前排伤害
			[52] = {Value = {[1] = 43,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能2前排伤害
			[53] = {Value = {[1] = 44,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能2前排伤害
			[54] = {Value = {[1] = 45,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能2前排伤害
			[55] = {Value = {[1] = 46,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能2前排伤害
			[56] = {Value = {[1] = 47,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能2前排伤害
			[57] = {Value = {[1] = 48,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能2前排伤害
			[58] = {Value = {[1] = 49,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能2前排伤害
			[59] = {Value = {[1] = 50,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能2前排伤害
			[60] = {Value = {[1] = 51,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--山蜘蛛技能2前排伤害
		}
	},--山蜘蛛技能2前排伤害
	[180300501] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军触发其他效果
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军触发其他效果
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军触发其他效果
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军触发其他效果
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军触发其他效果
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军触发其他效果
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军触发其他效果
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军触发其他效果
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军触发其他效果
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--变身鬼将军触发其他效果
		}
	},--变身鬼将军触发其他效果
	[180300502] = {
		FireType = 2,
		EffectTarget = 1,
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
			[1] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军增加攻击
			[2] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军增加攻击
			[3] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军增加攻击
			[4] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军增加攻击
			[5] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军增加攻击
			[6] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军增加攻击
			[7] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军增加攻击
			[8] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军增加攻击
			[9] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--变身鬼将军增加攻击
			[10] = {Value = {[1] = 1,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--变身鬼将军增加攻击
		}
	},--变身鬼将军增加攻击
	[180301201] = {
		FireType = 1,
		EffectTarget = 1,
		Type = 2,
		SubType = 1,
		DetailType = 2002,
		AttackNum = 1,
		Share = false,
		Stack = {1,1},
		EffectParam = 0,
		Target1 = 1,
		Target2 = 1,
		Target3 = 1,
		Target5 = 10,
		lvs = {
			[61] = {Value = {[1] = 52,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3回血
			[62] = {Value = {[1] = 53,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3回血
			[63] = {Value = {[1] = 54,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3回血
			[64] = {Value = {[1] = 55,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3回血
			[65] = {Value = {[1] = 56,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3回血
			[66] = {Value = {[1] = 57,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3回血
			[67] = {Value = {[1] = 58,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3回血
			[68] = {Value = {[1] = 59,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3回血
			[69] = {Value = {[1] = 60,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3回血
			[70] = {Value = {[1] = 61,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--山蜘蛛技能3回血
		}
	},--山蜘蛛技能3回血
	[180301202] = {
		FireType = 1,
		EffectTarget = 1,
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
			[71] = {Value = {[1] = 62,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3出场释放
			[72] = {Value = {[1] = 63,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3出场释放
			[73] = {Value = {[1] = 64,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3出场释放
			[74] = {Value = {[1] = 65,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3出场释放
			[75] = {Value = {[1] = 66,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3出场释放
			[76] = {Value = {[1] = 67,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3出场释放
			[77] = {Value = {[1] = 68,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3出场释放
			[78] = {Value = {[1] = 69,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3出场释放
			[79] = {Value = {[1] = 70,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--山蜘蛛技能3出场释放
			[80] = {Value = {[1] = 71,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--山蜘蛛技能3出场释放
		}
	},--山蜘蛛技能3出场释放
	[200100101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[81] = {Value = {[1] = 72,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能1伤害
			[82] = {Value = {[1] = 73,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能1伤害
			[83] = {Value = {[1] = 74,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能1伤害
			[84] = {Value = {[1] = 75,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能1伤害
			[85] = {Value = {[1] = 76,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能1伤害
			[86] = {Value = {[1] = 77,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能1伤害
			[87] = {Value = {[1] = 78,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能1伤害
			[88] = {Value = {[1] = 79,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能1伤害
			[89] = {Value = {[1] = 80,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能1伤害
			[90] = {Value = {[1] = 81,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗曹玄亮技能1伤害
		}
	},--新手战斗曹玄亮技能1伤害
	[200100201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[91] = {Value = {[1] = 82,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能2伤害
			[92] = {Value = {[1] = 83,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能2伤害
			[93] = {Value = {[1] = 84,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能2伤害
			[94] = {Value = {[1] = 85,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能2伤害
			[95] = {Value = {[1] = 86,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能2伤害
			[96] = {Value = {[1] = 87,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能2伤害
			[97] = {Value = {[1] = 88,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能2伤害
			[98] = {Value = {[1] = 89,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能2伤害
			[99] = {Value = {[1] = 90,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗曹玄亮技能2伤害
			[100] = {Value = {[1] = 91,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗曹玄亮技能2伤害
		}
	},--新手战斗曹玄亮技能2伤害
	[200200101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[101] = {Value = {[1] = 92,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能1伤害
			[102] = {Value = {[1] = 93,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能1伤害
			[103] = {Value = {[1] = 94,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能1伤害
			[104] = {Value = {[1] = 95,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能1伤害
			[105] = {Value = {[1] = 96,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能1伤害
			[106] = {Value = {[1] = 97,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能1伤害
			[107] = {Value = {[1] = 98,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能1伤害
			[108] = {Value = {[1] = 99,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能1伤害
			[109] = {Value = {[1] = 100,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能1伤害
			[110] = {Value = {[1] = 101,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗战斗曹焱兵技能1伤害
		}
	},--新手战斗战斗曹焱兵技能1伤害
	[200200201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[111] = {Value = {[1] = 102,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能2伤害
			[112] = {Value = {[1] = 103,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能2伤害
			[113] = {Value = {[1] = 104,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能2伤害
			[114] = {Value = {[1] = 105,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能2伤害
			[115] = {Value = {[1] = 106,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能2伤害
			[116] = {Value = {[1] = 107,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能2伤害
			[117] = {Value = {[1] = 108,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能2伤害
			[118] = {Value = {[1] = 109,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能2伤害
			[119] = {Value = {[1] = 110,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗战斗曹焱兵技能2伤害
			[120] = {Value = {[1] = 111,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗战斗曹焱兵技能2伤害
		}
	},--新手战斗战斗曹焱兵技能2伤害
	[200300101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[121] = {Value = {[1] = 112,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗北落师门技能1伤害
			[122] = {Value = {[1] = 113,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗北落师门技能1伤害
			[123] = {Value = {[1] = 114,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗北落师门技能1伤害
			[124] = {Value = {[1] = 115,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗北落师门技能1伤害
			[125] = {Value = {[1] = 116,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗北落师门技能1伤害
			[126] = {Value = {[1] = 117,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗北落师门技能1伤害
			[127] = {Value = {[1] = 118,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗北落师门技能1伤害
			[128] = {Value = {[1] = 119,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗北落师门技能1伤害
			[129] = {Value = {[1] = 120,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗北落师门技能1伤害
			[130] = {Value = {[1] = 121,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗北落师门技能1伤害
		}
	},--新手战斗北落师门技能1伤害
	[200400101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[131] = {Value = {[1] = 122,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗塞伯罗斯技能伤害
			[132] = {Value = {[1] = 123,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗塞伯罗斯技能伤害
			[133] = {Value = {[1] = 124,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗塞伯罗斯技能伤害
			[134] = {Value = {[1] = 125,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗塞伯罗斯技能伤害
			[135] = {Value = {[1] = 126,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗塞伯罗斯技能伤害
			[136] = {Value = {[1] = 127,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗塞伯罗斯技能伤害
			[137] = {Value = {[1] = 128,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗塞伯罗斯技能伤害
			[138] = {Value = {[1] = 129,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗塞伯罗斯技能伤害
			[139] = {Value = {[1] = 130,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗塞伯罗斯技能伤害
			[140] = {Value = {[1] = 131,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗塞伯罗斯技能伤害
		}
	},--新手战斗塞伯罗斯技能伤害
	[200500101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[141] = {Value = {[1] = 132,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗许褚技能伤害
			[142] = {Value = {[1] = 133,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗许褚技能伤害
			[143] = {Value = {[1] = 134,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗许褚技能伤害
			[144] = {Value = {[1] = 135,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗许褚技能伤害
			[145] = {Value = {[1] = 136,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗许褚技能伤害
			[146] = {Value = {[1] = 137,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗许褚技能伤害
			[147] = {Value = {[1] = 138,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗许褚技能伤害
			[148] = {Value = {[1] = 139,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗许褚技能伤害
			[149] = {Value = {[1] = 140,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗许褚技能伤害
			[150] = {Value = {[1] = 141,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗许褚技能伤害
		}
	},--新手战斗许褚技能伤害
	[200500201] = {
		FireType = 1,
		EffectTarget = 1,
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
			[151] = {Value = {[1] = 142,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1主动伤害
			[152] = {Value = {[1] = 143,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1主动伤害
			[153] = {Value = {[1] = 144,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1主动伤害
			[154] = {Value = {[1] = 145,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1主动伤害
			[155] = {Value = {[1] = 146,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1主动伤害
			[156] = {Value = {[1] = 147,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1主动伤害
			[157] = {Value = {[1] = 148,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1主动伤害
			[158] = {Value = {[1] = 149,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1主动伤害
			[159] = {Value = {[1] = 150,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1主动伤害
			[160] = {Value = {[1] = 151,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗插槽1主动伤害
		}
	},--新手战斗插槽1主动伤害
	[200500202] = {
		FireType = 3,
		EffectTarget = 1,
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
			[161] = {Value = {[1] = 152,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1追击伤害
			[162] = {Value = {[1] = 153,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1追击伤害
			[163] = {Value = {[1] = 154,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1追击伤害
			[164] = {Value = {[1] = 155,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1追击伤害
			[165] = {Value = {[1] = 156,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1追击伤害
			[166] = {Value = {[1] = 157,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1追击伤害
			[167] = {Value = {[1] = 158,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1追击伤害
			[168] = {Value = {[1] = 159,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1追击伤害
			[169] = {Value = {[1] = 160,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽1追击伤害
			[170] = {Value = {[1] = 161,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗插槽1追击伤害
		}
	},--新手战斗插槽1追击伤害
	[200500301] = {
		FireType = 3,
		EffectTarget = 1,
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
			[171] = {Value = {[1] = 162,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽2追击伤害
			[172] = {Value = {[1] = 163,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽2追击伤害
			[173] = {Value = {[1] = 164,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽2追击伤害
			[174] = {Value = {[1] = 165,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽2追击伤害
			[175] = {Value = {[1] = 166,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽2追击伤害
			[176] = {Value = {[1] = 167,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽2追击伤害
			[177] = {Value = {[1] = 168,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽2追击伤害
			[178] = {Value = {[1] = 169,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽2追击伤害
			[179] = {Value = {[1] = 170,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗插槽2追击伤害
			[180] = {Value = {[1] = 171,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗插槽2追击伤害
		}
	},--新手战斗插槽2追击伤害
	[200600101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[181] = {Value = {[1] = 172,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗阎风吒技能伤害
			[182] = {Value = {[1] = 173,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗阎风吒技能伤害
			[183] = {Value = {[1] = 174,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗阎风吒技能伤害
			[184] = {Value = {[1] = 175,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗阎风吒技能伤害
			[185] = {Value = {[1] = 176,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗阎风吒技能伤害
			[186] = {Value = {[1] = 177,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗阎风吒技能伤害
			[187] = {Value = {[1] = 178,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗阎风吒技能伤害
			[188] = {Value = {[1] = 179,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗阎风吒技能伤害
			[189] = {Value = {[1] = 180,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗阎风吒技能伤害
			[190] = {Value = {[1] = 181,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗阎风吒技能伤害
		}
	},--新手战斗阎风吒技能伤害
	[200700101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[191] = {Value = {[1] = 182,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗项昆仑技能伤害
			[192] = {Value = {[1] = 183,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗项昆仑技能伤害
			[193] = {Value = {[1] = 184,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗项昆仑技能伤害
			[194] = {Value = {[1] = 185,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗项昆仑技能伤害
			[195] = {Value = {[1] = 186,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗项昆仑技能伤害
			[196] = {Value = {[1] = 187,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗项昆仑技能伤害
			[197] = {Value = {[1] = 188,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗项昆仑技能伤害
			[198] = {Value = {[1] = 189,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗项昆仑技能伤害
			[199] = {Value = {[1] = 190,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗项昆仑技能伤害
			[200] = {Value = {[1] = 191,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗项昆仑技能伤害
		}
	},--新手战斗项昆仑技能伤害
	[200800101] = {
		FireType = 1,
		EffectTarget = 1,
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
			[201] = {Value = {[1] = 192,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗吕仙宫技能伤害
			[202] = {Value = {[1] = 193,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗吕仙宫技能伤害
			[203] = {Value = {[1] = 194,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗吕仙宫技能伤害
			[204] = {Value = {[1] = 195,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗吕仙宫技能伤害
			[205] = {Value = {[1] = 196,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗吕仙宫技能伤害
			[206] = {Value = {[1] = 197,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗吕仙宫技能伤害
			[207] = {Value = {[1] = 198,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗吕仙宫技能伤害
			[208] = {Value = {[1] = 199,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗吕仙宫技能伤害
			[209] = {Value = {[1] = 200,[2] = 0,[3] = 0},EffectDesc = "这是描述"},--新手战斗吕仙宫技能伤害
			[210] = {Value = {[1] = 201,[2] = 0,[3] = 0},EffectDesc = "这是描述"}--新手战斗吕仙宫技能伤害
		}
	}--新手战斗吕仙宫技能伤害
}