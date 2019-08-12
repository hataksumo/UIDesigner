--[[
--note:
配置洗练的消耗和初始返还比例
返还属性规则：对于每个返回属性，先随机进入哪个区间，再随机数值
配置出现几个技能的概率
槽位1,2可能随机出专属技能，其概率在卡牌表中配置
如果不出现专属技能，则按权重在技能库中随机，随到后再随机出现高级技能还是低级技能
colums:
{Group,组} ,{AtkRabackIni,初始攻击返还} ,{AtkRabackMax,攻击返还最大值} ,{DefRabackIni,初始防御返还} ,{DefRabackMax,防御返还最大值} ,{HpRabackIni,初始血量返还} ,{HpRabackMax,血量返还最大值} ,{AtkBsFac,属性战力} ,{DefBsFac,属性战力} ,{HpBsFac,属性战力} ,{Cost[1].Id,洗练消耗道具ID} ,{Cost[1].Num,洗练消耗道具数量} ,{Scores[1].min,分数1.min} ,{Scores[1].max,分数1.max} ,{Scores[1].desc,分数1.desc} ,{Scores[2].min,分数2.min} ,{Scores[2].max,分数2.max} ,{Scores[2].desc,分数2.desc} ,{Scores[3].min,分数3.min} ,{Scores[3].max,分数3.max} ,{Scores[3].desc,分数3.desc} ,{Scores[4].min,分数4.min} ,{Scores[4].max,分数4.max} ,{Scores[4].desc,分数4.desc} ,{QualityShow[1],品质显示1} ,{QualityShow[2],品质显示2} ,{QualityShow[3],品质显示3} ,{Slot,槽位} ,{Weight,槽位概率} ,{Skill[1].Id,技能1ID} ,{Skill[1].P,技能1概率} ,{Skill[2].Id,技能2ID} ,{Skill[2].P,技能2概率}
primary key:
#0 [天赋随机组]: Group
#1 [随机参数]: Group,HelpCol,Loc
#2 [槽随机参数]: Group,HelpCol,Loc
#3 [技能库]: Group,HelpCol,Loc
]]
local _T = LangUtil.Language
return{
	[1] = {
		Group = 1,
		AtkRabackIni = 0.1,
		AtkRabackMax = 0.3,
		DefRabackIni = 0.05,
		DefRabackMax = 0.15,
		HpRabackIni = 0.05,
		HpRabackMax = 0.15,
		AtkBsFac = 20000,
		DefBsFac = 20000,
		HpBsFac = 20000,
		Cost = {[1] = {Id = 1603025,Num = 1}},
		Scores = {[1] = {min = 0,max = 5000,desc = "普通"},[2] = {min = 5000,max = 12500,desc = "优秀"},[3] = {min = 12500,max = 17500,desc = "精良"},[4] = {min = 17500,max = 30000,desc = "极致"}},
		RdPhase = {
			[1] = {Group = 1,QualityShow = {[1] = 1,[2] = 1,[3] = 1}},--R卡概率1阶段-全低
			[2] = {Group = 1,QualityShow = {[1] = 2,[2] = 1,[3] = 1}},--R卡概率2阶段-攻高
			[3] = {Group = 1,QualityShow = {[1] = 1,[2] = 2,[3] = 1}},--R卡概率3阶段-防高
			[4] = {Group = 1,QualityShow = {[1] = 1,[2] = 1,[3] = 2}},--R卡概率4阶段-血高
			[5] = {Group = 1,QualityShow = {[1] = 2,[2] = 2,[3] = 1}},--R卡概率5阶段-攻防高
			[6] = {Group = 1,QualityShow = {[1] = 2,[2] = 1,[3] = 2}},--R卡概率6阶段-攻血高
			[7] = {Group = 1,QualityShow = {[1] = 1,[2] = 2,[3] = 2}},--R卡概率7阶段-防血高
			[8] = {Group = 1,QualityShow = {[1] = 2,[2] = 2,[3] = 2}}--R卡概率8阶段-三高
		},
		Slot = {
			[1] = {Slot = 0,Weight = 1000},--R随机0个技能
			[2] = {Slot = 1,Weight = 1500},--R随机1个技能
			[3] = {Slot = 2,Weight = 2000},--R随机2个技能
			[4] = {Slot = 3,Weight = 2500},--R随机3个技能
			[5] = {Slot = 4,Weight = 1000},--R随机4个技能
			[6] = {Slot = 5,Weight = 1000},--R随机5个技能
			[7] = {Slot = 6,Weight = 1000}--R随机6个技能
		},
		Skills = {
			[1] = {Group = 1,Weight = 600,Skill = {[1] = {Id = 1308001,P = 8000},[2] = {Id = 1308002,P = 2000}}},--暴击
			[2] = {Group = 1,Weight = 600,Skill = {[1] = {Id = 1308003,P = 8000},[2] = {Id = 1308004,P = 2000}}},--爆伤
			[3] = {Group = 1,Weight = 600,Skill = {[1] = {Id = 1308005,P = 8000},[2] = {Id = 1308006,P = 2000}}},--格挡
			[4] = {Group = 1,Weight = 600,Skill = {[1] = {Id = 1308007,P = 8000},[2] = {Id = 1308008,P = 2000}}},--穿透
			[5] = {Group = 1,Weight = 700,Skill = {[1] = {Id = 1308009,P = 8000},[2] = {Id = 1308010,P = 2000}}},--抗暴击
			[6] = {Group = 1,Weight = 700,Skill = {[1] = {Id = 1308011,P = 8000},[2] = {Id = 1308012,P = 2000}}},--抗格挡
			[7] = {Group = 1,Weight = 700,Skill = {[1] = {Id = 1308013,P = 8000},[2] = {Id = 1308014,P = 2000}}},--抗穿透
			[8] = {Group = 1,Weight = 700,Skill = {[1] = {Id = 1308015,P = 8000},[2] = {Id = 1308016,P = 2000}}},--效果命中
			[9] = {Group = 1,Weight = 700,Skill = {[1] = {Id = 1308017,P = 8000},[2] = {Id = 1308018,P = 2000}}},--效果抵抗
			[10] = {Group = 1,Weight = 800,Skill = {[1] = {Id = 1308019,P = 8000},[2] = {Id = 1308020,P = 2000}}},--守护灵百分比攻击
			[11] = {Group = 1,Weight = 800,Skill = {[1] = {Id = 1308021,P = 8000},[2] = {Id = 1308022,P = 2000}}},--守护灵百分比防御
			[12] = {Group = 1,Weight = 800,Skill = {[1] = {Id = 1308023,P = 8000},[2] = {Id = 1308024,P = 2000}}},--守护灵百分比血量
			[13] = {Group = 1,Weight = 100,Skill = {[1] = {Id = 1308025,P = 8000},[2] = {Id = 1308026,P = 2000}}},--概率反弹伤害
			[14] = {Group = 1,Weight = 200,Skill = {[1] = {Id = 1308027,P = 8000},[2] = {Id = 1308028,P = 2000}}},--无视反弹伤害+减伤
			[15] = {Group = 1,Weight = 200,Skill = {[1] = {Id = 1308029,P = 8000},[2] = {Id = 1308030,P = 2000}}}--降低所受伤害-造成伤害
		}
	},--R洗练
	[2] = {
		Group = 2,
		AtkRabackIni = 0.1,
		AtkRabackMax = 0.4,
		DefRabackIni = 0.05,
		DefRabackMax = 0.2,
		HpRabackIni = 0.05,
		HpRabackMax = 0.2,
		AtkBsFac = 20000,
		DefBsFac = 20000,
		HpBsFac = 20000,
		Cost = {[1] = {Id = 1603025,Num = 2}},
		Scores = {[1] = {min = 0,max = 5000,desc = "普通"},[2] = {min = 5000,max = 15000,desc = "优秀"},[3] = {min = 15000,max = 22500,desc = "精良"},[4] = {min = 22500,max = 35000,desc = "极致"}},
		RdPhase = {
			[1] = {Group = 2,QualityShow = {[1] = 1,[2] = 1,[3] = 1}},--SR卡概率1阶段-全低
			[2] = {Group = 2,QualityShow = {[1] = 2,[2] = 1,[3] = 1}},--SR卡概率2阶段-攻中
			[3] = {Group = 2,QualityShow = {[1] = 1,[2] = 2,[3] = 1}},--SR卡概率3阶段-防中
			[4] = {Group = 2,QualityShow = {[1] = 1,[2] = 1,[3] = 2}},--SR卡概率4阶段-血中
			[5] = {Group = 2,QualityShow = {[1] = 2,[2] = 2,[3] = 1}},--SR卡概率5阶段-攻防中
			[6] = {Group = 2,QualityShow = {[1] = 2,[2] = 1,[3] = 2}},--SR卡概率6阶段-攻血中
			[7] = {Group = 2,QualityShow = {[1] = 1,[2] = 2,[3] = 2}},--SR卡概率7阶段-防血中
			[8] = {Group = 2,QualityShow = {[1] = 2,[2] = 2,[3] = 2}},--SR卡概率8阶段-全中
			[9] = {Group = 2,QualityShow = {[1] = 3,[2] = 2,[3] = 2}},--SR卡概率9阶段-攻高
			[10] = {Group = 2,QualityShow = {[1] = 2,[2] = 3,[3] = 2}},--SR卡概率10阶段-防高
			[11] = {Group = 2,QualityShow = {[1] = 2,[2] = 2,[3] = 3}},--SR卡概率11阶段-血高
			[12] = {Group = 2,QualityShow = {[1] = 3,[2] = 3,[3] = 2}},--SR卡概率12阶段-攻防高
			[13] = {Group = 2,QualityShow = {[1] = 3,[2] = 2,[3] = 3}},--SR卡概率13阶段-攻血高
			[14] = {Group = 2,QualityShow = {[1] = 2,[2] = 3,[3] = 3}},--SR卡概率14阶段-防血高
			[15] = {Group = 2,QualityShow = {[1] = 3,[2] = 3,[3] = 3}}--SR卡概率15阶段-全高
		},
		Slot = {
			[1] = {Slot = 0,Weight = 2000},--SR随机0个技能
			[2] = {Slot = 1,Weight = 2000},--SR随机1个技能
			[3] = {Slot = 2,Weight = 2000},--SR随机2个技能
			[4] = {Slot = 3,Weight = 2000},--SR随机3个技能
			[5] = {Slot = 4,Weight = 1000},--SR随机4个技能
			[6] = {Slot = 5,Weight = 500},--SR随机5个技能
			[7] = {Slot = 6,Weight = 500}--SR随机6个技能
		},
		Skills = {
			[1] = {Group = 2,Weight = 600,Skill = {[1] = {Id = 1308001,P = 8000},[2] = {Id = 1308002,P = 2000}}},--暴击
			[2] = {Group = 2,Weight = 600,Skill = {[1] = {Id = 1308003,P = 8000},[2] = {Id = 1308004,P = 2000}}},--爆伤
			[3] = {Group = 2,Weight = 600,Skill = {[1] = {Id = 1308005,P = 8000},[2] = {Id = 1308006,P = 2000}}},--格挡
			[4] = {Group = 2,Weight = 600,Skill = {[1] = {Id = 1308007,P = 8000},[2] = {Id = 1308008,P = 2000}}},--穿透
			[5] = {Group = 2,Weight = 700,Skill = {[1] = {Id = 1308009,P = 8000},[2] = {Id = 1308010,P = 2000}}},--抗暴击
			[6] = {Group = 2,Weight = 700,Skill = {[1] = {Id = 1308011,P = 8000},[2] = {Id = 1308012,P = 2000}}},--抗格挡
			[7] = {Group = 2,Weight = 700,Skill = {[1] = {Id = 1308013,P = 8000},[2] = {Id = 1308014,P = 2000}}},--抗穿透
			[8] = {Group = 2,Weight = 700,Skill = {[1] = {Id = 1308015,P = 8000},[2] = {Id = 1308016,P = 2000}}},--效果命中
			[9] = {Group = 2,Weight = 700,Skill = {[1] = {Id = 1308017,P = 8000},[2] = {Id = 1308018,P = 2000}}},--效果抵抗
			[10] = {Group = 2,Weight = 800,Skill = {[1] = {Id = 1308019,P = 8000},[2] = {Id = 1308020,P = 2000}}},--守护灵百分比攻击
			[11] = {Group = 2,Weight = 800,Skill = {[1] = {Id = 1308021,P = 8000},[2] = {Id = 1308022,P = 2000}}},--守护灵百分比防御
			[12] = {Group = 2,Weight = 800,Skill = {[1] = {Id = 1308023,P = 8000},[2] = {Id = 1308024,P = 2000}}},--守护灵百分比血量
			[13] = {Group = 2,Weight = 100,Skill = {[1] = {Id = 1308025,P = 8000},[2] = {Id = 1308026,P = 2000}}},--概率反弹伤害
			[14] = {Group = 2,Weight = 200,Skill = {[1] = {Id = 1308027,P = 8000},[2] = {Id = 1308028,P = 2000}}},--无视反弹伤害+减伤
			[15] = {Group = 2,Weight = 200,Skill = {[1] = {Id = 1308029,P = 8000},[2] = {Id = 1308030,P = 2000}}}--降低所受伤害-造成伤害
		}
	},--SR洗练
	[3] = {
		Group = 3,
		AtkRabackIni = 0.1,
		AtkRabackMax = 0.5,
		DefRabackIni = 0.05,
		DefRabackMax = 0.25,
		HpRabackIni = 0.05,
		HpRabackMax = 0.25,
		AtkBsFac = 20000,
		DefBsFac = 20000,
		HpBsFac = 20000,
		Cost = {[1] = {Id = 1603025,Num = 3}},
		Scores = {[1] = {min = 0,max = 5000,desc = "普通"},[2] = {min = 5000,max = 17500,desc = "优秀"},[3] = {min = 17500,max = 25000,desc = "精良"},[4] = {min = 25000,max = 40000,desc = "极致"}},
		RdPhase = {
			[1] = {Group = 3,QualityShow = {[1] = 1,[2] = 1,[3] = 1}},--SSR卡概率1阶段-全低
			[2] = {Group = 3,QualityShow = {[1] = 2,[2] = 1,[3] = 1}},--SSR卡概率2阶段-攻中
			[3] = {Group = 3,QualityShow = {[1] = 1,[2] = 2,[3] = 1}},--SSR卡概率3阶段-防中
			[4] = {Group = 3,QualityShow = {[1] = 1,[2] = 1,[3] = 2}},--SSR卡概率4阶段-血中
			[5] = {Group = 3,QualityShow = {[1] = 2,[2] = 2,[3] = 1}},--SSR卡概率5阶段-攻防中
			[6] = {Group = 3,QualityShow = {[1] = 2,[2] = 1,[3] = 2}},--SSR卡概率6阶段-攻血中
			[7] = {Group = 3,QualityShow = {[1] = 1,[2] = 2,[3] = 2}},--SSR卡概率7阶段-防血中
			[8] = {Group = 3,QualityShow = {[1] = 2,[2] = 2,[3] = 2}},--SSR卡概率8阶段-全中
			[9] = {Group = 3,QualityShow = {[1] = 3,[2] = 2,[3] = 2}},--SSR卡概率9阶段-攻高
			[10] = {Group = 3,QualityShow = {[1] = 2,[2] = 3,[3] = 2}},--SSR卡概率10阶段-防高
			[11] = {Group = 3,QualityShow = {[1] = 2,[2] = 2,[3] = 3}},--SSR卡概率11阶段-血高
			[12] = {Group = 3,QualityShow = {[1] = 3,[2] = 3,[3] = 2}},--SSR卡概率12阶段-攻防高
			[13] = {Group = 3,QualityShow = {[1] = 3,[2] = 2,[3] = 3}},--SSR卡概率13阶段-攻血高
			[14] = {Group = 3,QualityShow = {[1] = 2,[2] = 3,[3] = 3}},--SSR卡概率14阶段-防血高
			[15] = {Group = 3,QualityShow = {[1] = 3,[2] = 3,[3] = 3}},--SSR卡概率15阶段-全高
			[16] = {Group = 3,QualityShow = {[1] = 4,[2] = 3,[3] = 3}},--SSR卡概率9阶段-攻特
			[17] = {Group = 3,QualityShow = {[1] = 3,[2] = 4,[3] = 3}},--SSR卡概率10阶段-防特
			[18] = {Group = 3,QualityShow = {[1] = 3,[2] = 3,[3] = 4}},--SSR卡概率11阶段-血特
			[19] = {Group = 3,QualityShow = {[1] = 4,[2] = 4,[3] = 3}},--SSR卡概率12阶段-攻防特
			[20] = {Group = 3,QualityShow = {[1] = 4,[2] = 3,[3] = 4}},--SSR卡概率13阶段-攻血特
			[21] = {Group = 3,QualityShow = {[1] = 3,[2] = 4,[3] = 4}},--SSR卡概率14阶段-防血特
			[22] = {Group = 3,QualityShow = {[1] = 4,[2] = 4,[3] = 4}}--SSR卡概率15阶段-全特
		},
		Slot = {
			[1] = {Slot = 0,Weight = 2000},--SSR随机0个技能
			[2] = {Slot = 1,Weight = 2000},--SSR随机1个技能
			[3] = {Slot = 2,Weight = 2000},--SSR随机2个技能
			[4] = {Slot = 3,Weight = 2000},--SSR随机3个技能
			[5] = {Slot = 4,Weight = 1000},--SSR随机4个技能
			[6] = {Slot = 5,Weight = 500},--SSR随机5个技能
			[7] = {Slot = 6,Weight = 500}--SSR随机6个技能
		},
		Skills = {
			[1] = {Group = 3,Weight = 600,Skill = {[1] = {Id = 1308001,P = 8000},[2] = {Id = 1308002,P = 2000}}},--暴击
			[2] = {Group = 3,Weight = 600,Skill = {[1] = {Id = 1308003,P = 8000},[2] = {Id = 1308004,P = 2000}}},--爆伤
			[3] = {Group = 3,Weight = 600,Skill = {[1] = {Id = 1308005,P = 8000},[2] = {Id = 1308006,P = 2000}}},--格挡
			[4] = {Group = 3,Weight = 600,Skill = {[1] = {Id = 1308007,P = 8000},[2] = {Id = 1308008,P = 2000}}},--穿透
			[5] = {Group = 3,Weight = 700,Skill = {[1] = {Id = 1308009,P = 8000},[2] = {Id = 1308010,P = 2000}}},--抗暴击
			[6] = {Group = 3,Weight = 700,Skill = {[1] = {Id = 1308011,P = 8000},[2] = {Id = 1308012,P = 2000}}},--抗格挡
			[7] = {Group = 3,Weight = 700,Skill = {[1] = {Id = 1308013,P = 8000},[2] = {Id = 1308014,P = 2000}}},--抗穿透
			[8] = {Group = 3,Weight = 700,Skill = {[1] = {Id = 1308015,P = 8000},[2] = {Id = 1308016,P = 2000}}},--效果命中
			[9] = {Group = 3,Weight = 700,Skill = {[1] = {Id = 1308017,P = 8000},[2] = {Id = 1308018,P = 2000}}},--效果抵抗
			[10] = {Group = 3,Weight = 800,Skill = {[1] = {Id = 1308019,P = 8000},[2] = {Id = 1308020,P = 2000}}},--守护灵百分比攻击
			[11] = {Group = 3,Weight = 800,Skill = {[1] = {Id = 1308021,P = 8000},[2] = {Id = 1308022,P = 2000}}},--守护灵百分比防御
			[12] = {Group = 3,Weight = 800,Skill = {[1] = {Id = 1308023,P = 8000},[2] = {Id = 1308024,P = 2000}}},--守护灵百分比血量
			[13] = {Group = 3,Weight = 100,Skill = {[1] = {Id = 1308025,P = 8000},[2] = {Id = 1308026,P = 2000}}},--概率反弹伤害
			[14] = {Group = 3,Weight = 200,Skill = {[1] = {Id = 1308027,P = 8000},[2] = {Id = 1308028,P = 2000}}},--无视反弹伤害+减伤
			[15] = {Group = 3,Weight = 200,Skill = {[1] = {Id = 1308029,P = 8000},[2] = {Id = 1308030,P = 2000}}}--降低所受伤害-造成伤害
		}
	}--SSR洗练
}