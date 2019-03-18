--[[
--note:
守护灵拥有专属武器，这是专属武器的配置。专属武器可以消耗对应武将碎片解锁。解锁后和强化，解封，幻化。专属武器激活后则可获得基础属性奖励。
专属武器激活后可以进行强化，消耗不同数量不同品质的强化石，概率升级。专属武器强化百分比提升专属武器基础属性。
专属武器的解封，可获得属性或被动技能。消耗对应将魂碎片进行武器解封。
colums:
{WpID,专属武器ID} ,{CardId,卡牌ID} ,{Name,武器名} ,{Prop[1].id,属性ID1} ,{Prop[1].val,属性值1} ,{Prop[2].id,属性ID2} ,{Prop[2].val,属性值2} ,{Prop[3].id,属性ID3} ,{Prop[3].val,属性值3} ,{CostUnlock[1].id,消耗道具ID1} ,{CostUnlock[1].val,消耗道具数量1} ,{CostUnlock[2].id,消耗道具ID2} ,{CostUnlock[2].val,消耗道具数量2} ,{CostUnlock[3].id,消耗道具ID3} ,{CostUnlock[3].val,消耗道具数量3} ,{Icon,图标} ,{HelpCol,辅助列} ,{Lv,等级} ,{Cost[1].id,强化材料ID1} ,{Cost[1].val,强化材料数量1} ,{Cost[2].id,强化材料ID2} ,{Cost[2].val,强化材料数量2} ,{Cost[3].id,强化材料ID3} ,{Cost[3].val,强化材料数量3} ,{StrenthSuccessRate,强化成功率} ,{StrenthFailVoice,失败祝福值提升} ,{MaxVoice,最大祝福值} ,{PropBonus,强化值} ,{PSkill,被动技能}
primary key:
#0 [专属武器]: WpID
#1 [专属武器强化]: WpID,HelpCol,Lv
#2 [专属武器解封]: WpID,HelpCol,Lv
]]
return{
	[1501001] = {
		CardId = 1102001,
		Name = "关羽专属武器",
		Prop = {[1] = {id = 111,val = 7580},[2] = {id = 112,val = 3790},[3] = {id = 113,val = 3790}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702001,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 113,val = 1000}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609104,val = 1},[3] = {id = 1702001,val = 5}},PSkill = 130300109},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609104,val = 2},[3] = {id = 1702001,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609104,val = 2},[3] = {id = 1702001,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609104,val = 2},[3] = {id = 1702001,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609104,val = 3},[3] = {id = 1702001,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609104,val = 3},[3] = {id = 1702001,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609104,val = 3},[3] = {id = 1702001,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609104,val = 5},[3] = {id = 1702001,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609104,val = 5},[3] = {id = 1702001,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609104,val = 5},[3] = {id = 1702001,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609104,val = 7},[3] = {id = 1702001,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609104,val = 7},[3] = {id = 1702001,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609104,val = 7},[3] = {id = 1702001,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--关羽专属武器
	[1501002] = {
		CardId = 1102002,
		Name = "许褚专属武器",
		Prop = {[1] = {id = 111,val = 2223},[2] = {id = 112,val = 5559},[3] = {id = 113,val = 5559}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702002,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609105,val = 1},[3] = {id = 1702002,val = 5}},PSkill = 130300209},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609105,val = 2},[3] = {id = 1702002,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609105,val = 2},[3] = {id = 1702002,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609105,val = 2},[3] = {id = 1702002,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609105,val = 3},[3] = {id = 1702002,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609105,val = 3},[3] = {id = 1702002,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609105,val = 3},[3] = {id = 1702002,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609105,val = 5},[3] = {id = 1702002,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609105,val = 5},[3] = {id = 1702002,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609105,val = 5},[3] = {id = 1702002,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609105,val = 7},[3] = {id = 1702002,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609105,val = 7},[3] = {id = 1702002,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609105,val = 7},[3] = {id = 1702002,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--许褚专属武器
	[1501003] = {
		CardId = 1102003,
		Name = "典韦专属武器",
		Prop = {[1] = {id = 111,val = 8005},[2] = {id = 112,val = 3113},[3] = {id = 113,val = 2223}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702003,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609105,val = 1},[3] = {id = 1702003,val = 5}},PSkill = 130300309},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609105,val = 2},[3] = {id = 1702003,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609105,val = 2},[3] = {id = 1702003,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609105,val = 2},[3] = {id = 1702003,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609105,val = 3},[3] = {id = 1702003,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609105,val = 3},[3] = {id = 1702003,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609105,val = 3},[3] = {id = 1702003,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609105,val = 5},[3] = {id = 1702003,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609105,val = 5},[3] = {id = 1702003,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609105,val = 5},[3] = {id = 1702003,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609105,val = 7},[3] = {id = 1702003,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609105,val = 7},[3] = {id = 1702003,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609105,val = 7},[3] = {id = 1702003,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--典韦专属武器
	[1501004] = {
		CardId = 1102004,
		Name = "唐流雨专属武器",
		Prop = {[1] = {id = 111,val = 8894},[2] = {id = 112,val = 1212},[3] = {id = 113,val = 2021}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702004,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609106,val = 1},[3] = {id = 1702004,val = 5}},PSkill = 130300409},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609106,val = 2},[3] = {id = 1702004,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609106,val = 2},[3] = {id = 1702004,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609106,val = 2},[3] = {id = 1702004,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609106,val = 3},[3] = {id = 1702004,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609106,val = 3},[3] = {id = 1702004,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609106,val = 3},[3] = {id = 1702004,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609106,val = 5},[3] = {id = 1702004,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609106,val = 5},[3] = {id = 1702004,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609106,val = 5},[3] = {id = 1702004,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609106,val = 7},[3] = {id = 1702004,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609106,val = 7},[3] = {id = 1702004,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609106,val = 7},[3] = {id = 1702004,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--唐流雨专属武器
	[1501005] = {
		CardId = 1102005,
		Name = "李轩辕专属武器",
		Prop = {[1] = {id = 111,val = 2223},[2] = {id = 112,val = 4447},[3] = {id = 113,val = 6670}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702005,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609104,val = 1},[3] = {id = 1702005,val = 5}},PSkill = 130300509},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609104,val = 2},[3] = {id = 1702005,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609104,val = 2},[3] = {id = 1702005,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609104,val = 2},[3] = {id = 1702005,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609104,val = 3},[3] = {id = 1702005,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609104,val = 3},[3] = {id = 1702005,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609104,val = 3},[3] = {id = 1702005,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609104,val = 5},[3] = {id = 1702005,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609104,val = 5},[3] = {id = 1702005,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609104,val = 5},[3] = {id = 1702005,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609104,val = 7},[3] = {id = 1702005,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609104,val = 7},[3] = {id = 1702005,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609104,val = 7},[3] = {id = 1702005,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--李轩辕专属武器
	[1501006] = {
		CardId = 1102006,
		Name = "项羽专属武器",
		Prop = {[1] = {id = 111,val = 7580},[2] = {id = 112,val = 5053},[3] = {id = 113,val = 2526}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702006,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609106,val = 1},[3] = {id = 1702006,val = 5}},PSkill = 130300609},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609106,val = 2},[3] = {id = 1702006,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609106,val = 2},[3] = {id = 1702006,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609106,val = 2},[3] = {id = 1702006,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609106,val = 3},[3] = {id = 1702006,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609106,val = 3},[3] = {id = 1702006,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609106,val = 3},[3] = {id = 1702006,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609106,val = 5},[3] = {id = 1702006,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609106,val = 5},[3] = {id = 1702006,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609106,val = 5},[3] = {id = 1702006,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609106,val = 7},[3] = {id = 1702006,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609106,val = 7},[3] = {id = 1702006,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609106,val = 7},[3] = {id = 1702006,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--项羽专属武器
	[1501007] = {
		CardId = 1102007,
		Name = "天使缇娜专属武器",
		Prop = {[1] = {id = 111,val = 6226},[2] = {id = 112,val = 3557},[3] = {id = 113,val = 3557}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702007,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609106,val = 1},[3] = {id = 1702007,val = 5}},PSkill = 130300709},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609106,val = 2},[3] = {id = 1702007,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609106,val = 2},[3] = {id = 1702007,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609106,val = 2},[3] = {id = 1702007,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609106,val = 3},[3] = {id = 1702007,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609106,val = 3},[3] = {id = 1702007,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609106,val = 3},[3] = {id = 1702007,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609106,val = 5},[3] = {id = 1702007,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609106,val = 5},[3] = {id = 1702007,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609106,val = 5},[3] = {id = 1702007,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609106,val = 7},[3] = {id = 1702007,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609106,val = 7},[3] = {id = 1702007,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609106,val = 7},[3] = {id = 1702007,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--天使缇娜专属武器
	[1501008] = {
		CardId = 1102008,
		Name = "夏侯渊专属武器",
		Prop = {[1] = {id = 111,val = 10107},[2] = {id = 112,val = 2526},[3] = {id = 113,val = 2526}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702008,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609106,val = 1},[3] = {id = 1702008,val = 5}},PSkill = nil},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609106,val = 2},[3] = {id = 1702008,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609106,val = 2},[3] = {id = 1702008,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609106,val = 2},[3] = {id = 1702008,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609106,val = 3},[3] = {id = 1702008,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609106,val = 3},[3] = {id = 1702008,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609106,val = 3},[3] = {id = 1702008,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609106,val = 5},[3] = {id = 1702008,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609106,val = 5},[3] = {id = 1702008,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609106,val = 5},[3] = {id = 1702008,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609106,val = 7},[3] = {id = 1702008,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609106,val = 7},[3] = {id = 1702008,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609106,val = 7},[3] = {id = 1702008,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--夏侯渊专属武器
	[1501009] = {
		CardId = 1102009,
		Name = "徐晃专属武器",
		Prop = {[1] = {id = 111,val = 2526},[2] = {id = 112,val = 7580},[3] = {id = 113,val = 5053}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702009,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609105,val = 1},[3] = {id = 1702009,val = 5}},PSkill = 130301009},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609105,val = 2},[3] = {id = 1702009,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609105,val = 2},[3] = {id = 1702009,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609105,val = 2},[3] = {id = 1702009,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609105,val = 3},[3] = {id = 1702009,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609105,val = 3},[3] = {id = 1702009,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609105,val = 3},[3] = {id = 1702009,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609105,val = 5},[3] = {id = 1702009,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609105,val = 5},[3] = {id = 1702009,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609105,val = 5},[3] = {id = 1702009,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609105,val = 7},[3] = {id = 1702009,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609105,val = 7},[3] = {id = 1702009,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609105,val = 7},[3] = {id = 1702009,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--徐晃专属武器
	[1501010] = {
		CardId = 1102010,
		Name = "张郃专属武器",
		Prop = {[1] = {id = 111,val = 7580},[2] = {id = 112,val = 3790},[3] = {id = 113,val = 3790}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702010,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609105,val = 1},[3] = {id = 1702010,val = 5}},PSkill = 130301009},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609105,val = 2},[3] = {id = 1702010,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609105,val = 2},[3] = {id = 1702010,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609105,val = 2},[3] = {id = 1702010,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609105,val = 3},[3] = {id = 1702010,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609105,val = 3},[3] = {id = 1702010,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609105,val = 3},[3] = {id = 1702010,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609105,val = 5},[3] = {id = 1702010,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609105,val = 5},[3] = {id = 1702010,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609105,val = 5},[3] = {id = 1702010,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609105,val = 7},[3] = {id = 1702010,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609105,val = 7},[3] = {id = 1702010,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609105,val = 7},[3] = {id = 1702010,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--张郃专属武器
	[1501011] = {
		CardId = 1102011,
		Name = "张飞专属武器",
		Prop = {[1] = {id = 111,val = 4043},[2] = {id = 112,val = 2526},[3] = {id = 113,val = 8591}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702011,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609105,val = 1},[3] = {id = 1702011,val = 5}},PSkill = 130301109},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609105,val = 2},[3] = {id = 1702011,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609105,val = 2},[3] = {id = 1702011,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609105,val = 2},[3] = {id = 1702011,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609105,val = 3},[3] = {id = 1702011,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609105,val = 3},[3] = {id = 1702011,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609105,val = 3},[3] = {id = 1702011,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609105,val = 5},[3] = {id = 1702011,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609105,val = 5},[3] = {id = 1702011,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609105,val = 5},[3] = {id = 1702011,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609105,val = 7},[3] = {id = 1702011,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609105,val = 7},[3] = {id = 1702011,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609105,val = 7},[3] = {id = 1702011,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--张飞专属武器
	[1501012] = {
		CardId = 1102012,
		Name = "夏侯惇专属武器",
		Prop = {[1] = {id = 111,val = 5053},[2] = {id = 112,val = 5053},[3] = {id = 113,val = 5053}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702012,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609105,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609105,val = 1},[3] = {id = 1702012,val = 5}},PSkill = 130301209},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609105,val = 2},[3] = {id = 1702012,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609105,val = 2},[3] = {id = 1702012,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609105,val = 2},[3] = {id = 1702012,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609105,val = 3},[3] = {id = 1702012,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609105,val = 3},[3] = {id = 1702012,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609105,val = 3},[3] = {id = 1702012,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609105,val = 5},[3] = {id = 1702012,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609105,val = 5},[3] = {id = 1702012,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609105,val = 5},[3] = {id = 1702012,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609105,val = 7},[3] = {id = 1702012,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609105,val = 7},[3] = {id = 1702012,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609105,val = 7},[3] = {id = 1702012,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--夏侯惇专属武器
	[1501013] = {
		CardId = 1102013,
		Name = "塞伯罗斯专属武器",
		Prop = {[1] = {id = 111,val = 8086},[2] = {id = 112,val = 2021},[3] = {id = 113,val = 2021}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702013,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609106,val = 1},[3] = {id = 1702013,val = 5}},PSkill = 130301209},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609106,val = 2},[3] = {id = 1702013,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609106,val = 2},[3] = {id = 1702013,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609106,val = 2},[3] = {id = 1702013,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609106,val = 3},[3] = {id = 1702013,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609106,val = 3},[3] = {id = 1702013,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609106,val = 3},[3] = {id = 1702013,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609106,val = 5},[3] = {id = 1702013,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609106,val = 5},[3] = {id = 1702013,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609106,val = 5},[3] = {id = 1702013,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609106,val = 7},[3] = {id = 1702013,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609106,val = 7},[3] = {id = 1702013,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609106,val = 7},[3] = {id = 1702013,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--塞伯罗斯专属武器
	[1501014] = {
		CardId = 1102014,
		Name = "石灵明专属武器",
		Prop = {[1] = {id = 111,val = 6670},[2] = {id = 112,val = 4447},[3] = {id = 113,val = 2223}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702014,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609104,val = 1},[3] = {id = 1702014,val = 5}},PSkill = 130301409},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609104,val = 2},[3] = {id = 1702014,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609104,val = 2},[3] = {id = 1702014,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609104,val = 2},[3] = {id = 1702014,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609104,val = 3},[3] = {id = 1702014,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609104,val = 3},[3] = {id = 1702014,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609104,val = 3},[3] = {id = 1702014,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609104,val = 5},[3] = {id = 1702014,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609104,val = 5},[3] = {id = 1702014,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609104,val = 5},[3] = {id = 1702014,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609104,val = 7},[3] = {id = 1702014,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609104,val = 7},[3] = {id = 1702014,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609104,val = 7},[3] = {id = 1702014,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--石灵明专属武器
	[1501015] = {
		CardId = 1102015,
		Name = "于禁专属武器",
		Prop = {[1] = {id = 111,val = 4043},[2] = {id = 112,val = 4043},[3] = {id = 113,val = 4043}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702015,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609104,val = 1},[3] = {id = 1702015,val = 5}},PSkill = 130301509},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609104,val = 2},[3] = {id = 1702015,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609104,val = 2},[3] = {id = 1702015,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609104,val = 2},[3] = {id = 1702015,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609104,val = 3},[3] = {id = 1702015,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609104,val = 3},[3] = {id = 1702015,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609104,val = 3},[3] = {id = 1702015,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609104,val = 5},[3] = {id = 1702015,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609104,val = 5},[3] = {id = 1702015,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609104,val = 5},[3] = {id = 1702015,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609104,val = 7},[3] = {id = 1702015,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609104,val = 7},[3] = {id = 1702015,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609104,val = 7},[3] = {id = 1702015,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--于禁专属武器
	[1501016] = {
		CardId = 1102016,
		Name = "西方龙专属武器",
		Prop = {[1] = {id = 111,val = 2526},[2] = {id = 112,val = 7580},[3] = {id = 113,val = 5053}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702016,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609106,val = 1},[3] = {id = 1702016,val = 5}},PSkill = 130301609},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609106,val = 2},[3] = {id = 1702016,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609106,val = 2},[3] = {id = 1702016,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609106,val = 2},[3] = {id = 1702016,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609106,val = 3},[3] = {id = 1702016,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609106,val = 3},[3] = {id = 1702016,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609106,val = 3},[3] = {id = 1702016,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609106,val = 5},[3] = {id = 1702016,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609106,val = 5},[3] = {id = 1702016,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609106,val = 5},[3] = {id = 1702016,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609106,val = 7},[3] = {id = 1702016,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609106,val = 7},[3] = {id = 1702016,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609106,val = 7},[3] = {id = 1702016,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--西方龙专属武器
	[1501017] = {
		CardId = 1102017,
		Name = "飞廉专属武器",
		Prop = {[1] = {id = 111,val = 8894},[2] = {id = 112,val = 2223},[3] = {id = 113,val = 2223}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702017,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609104,val = 1},[3] = {id = 1702017,val = 5}},PSkill = 130301709},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609104,val = 2},[3] = {id = 1702017,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609104,val = 2},[3] = {id = 1702017,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609104,val = 2},[3] = {id = 1702017,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609104,val = 3},[3] = {id = 1702017,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609104,val = 3},[3] = {id = 1702017,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609104,val = 3},[3] = {id = 1702017,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609104,val = 5},[3] = {id = 1702017,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609104,val = 5},[3] = {id = 1702017,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609104,val = 5},[3] = {id = 1702017,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609104,val = 7},[3] = {id = 1702017,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609104,val = 7},[3] = {id = 1702017,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609104,val = 7},[3] = {id = 1702017,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--飞廉专属武器
	[1501018] = {
		CardId = 1102018,
		Name = "噬日专属武器",
		Prop = {[1] = {id = 111,val = 8086},[2] = {id = 112,val = 2021},[3] = {id = 113,val = 2021}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702018,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609106,val = 1},[3] = {id = 1702018,val = 5}},PSkill = 130301809},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609106,val = 2},[3] = {id = 1702018,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609106,val = 2},[3] = {id = 1702018,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609106,val = 2},[3] = {id = 1702018,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609106,val = 3},[3] = {id = 1702018,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609106,val = 3},[3] = {id = 1702018,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609106,val = 3},[3] = {id = 1702018,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609106,val = 5},[3] = {id = 1702018,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609106,val = 5},[3] = {id = 1702018,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609106,val = 5},[3] = {id = 1702018,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609106,val = 7},[3] = {id = 1702018,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609106,val = 7},[3] = {id = 1702018,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609106,val = 7},[3] = {id = 1702018,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--噬日专属武器
	[1501019] = {
		CardId = 1102019,
		Name = "食火蜥专属武器",
		Prop = {[1] = {id = 111,val = 3234},[2] = {id = 112,val = 4851},[3] = {id = 113,val = 4043}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702019,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609106,val = 1},[3] = {id = 1702019,val = 5}},PSkill = 130301909},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609106,val = 2},[3] = {id = 1702019,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609106,val = 2},[3] = {id = 1702019,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609106,val = 2},[3] = {id = 1702019,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609106,val = 3},[3] = {id = 1702019,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609106,val = 3},[3] = {id = 1702019,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609106,val = 3},[3] = {id = 1702019,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609106,val = 5},[3] = {id = 1702019,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609106,val = 5},[3] = {id = 1702019,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609106,val = 5},[3] = {id = 1702019,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609106,val = 7},[3] = {id = 1702019,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609106,val = 7},[3] = {id = 1702019,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609106,val = 7},[3] = {id = 1702019,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--食火蜥专属武器
	[1501020] = {
		CardId = 1102020,
		Name = "高顺专属武器",
		Prop = {[1] = {id = 111,val = 8894},[2] = {id = 112,val = 2223},[3] = {id = 113,val = 2223}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702020,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609104,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609104,val = 1},[3] = {id = 1702020,val = 5}},PSkill = 130302009},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609104,val = 2},[3] = {id = 1702020,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609104,val = 2},[3] = {id = 1702020,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609104,val = 2},[3] = {id = 1702020,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609104,val = 3},[3] = {id = 1702020,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609104,val = 3},[3] = {id = 1702020,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609104,val = 3},[3] = {id = 1702020,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609104,val = 5},[3] = {id = 1702020,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609104,val = 5},[3] = {id = 1702020,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609104,val = 5},[3] = {id = 1702020,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609104,val = 7},[3] = {id = 1702020,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609104,val = 7},[3] = {id = 1702020,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609104,val = 7},[3] = {id = 1702020,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	},--高顺专属武器
	[1501021] = {
		CardId = 1102021,
		Name = "烈风螳螂专属武器",
		Prop = {[1] = {id = 111,val = 6064},[2] = {id = 112,val = 3032},[3] = {id = 113,val = 3032}},
		CostUnlock = {[1] = {id = 1401002,val = 1000},[2] = {id = 1702021,val = 50}},
		Icon = "ui_dtex_Equip_001",
		Strength = {
			[0] = {PropBonus = 0.2},
			[1] = {Cost = {[1] = {id = 1401002,val = 1000},[2] = {id = 1609001,val = 10}},StrenthSuccessRate = 0.5,StrenthFailVoice = 5,MaxVoice = 40,PropBonus = 0.26},
			[2] = {Cost = {[1] = {id = 1401002,val = 2000},[2] = {id = 1609001,val = 13}},StrenthSuccessRate = 0.4,StrenthFailVoice = 5,MaxVoice = 50,PropBonus = 0.33},
			[3] = {Cost = {[1] = {id = 1401002,val = 3000},[2] = {id = 1609001,val = 15}},StrenthSuccessRate = 0.35,StrenthFailVoice = 5,MaxVoice = 55,PropBonus = 0.39},
			[4] = {Cost = {[1] = {id = 1401002,val = 4000},[2] = {id = 1609001,val = 20},[3] = {id = 1609002,val = 1}},StrenthSuccessRate = 0.3,StrenthFailVoice = 5,MaxVoice = 65,PropBonus = 0.48},
			[5] = {Cost = {[1] = {id = 1401002,val = 5000},[2] = {id = 1609001,val = 25},[3] = {id = 1609002,val = 2}},StrenthSuccessRate = 0.25,StrenthFailVoice = 5,MaxVoice = 80,PropBonus = 0.58},
			[6] = {Cost = {[1] = {id = 1401002,val = 6000},[2] = {id = 1609001,val = 45},[3] = {id = 1609002,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.67},
			[7] = {Cost = {[1] = {id = 1401002,val = 7000},[2] = {id = 1609002,val = 4},[3] = {id = 1609003,val = 1}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.79},
			[8] = {Cost = {[1] = {id = 1401002,val = 8000},[2] = {id = 1609002,val = 5},[3] = {id = 1609003,val = 3}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 0.92},
			[9] = {Cost = {[1] = {id = 1401002,val = 9000},[2] = {id = 1609002,val = 7},[3] = {id = 1609003,val = 5}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.04},
			[10] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609002,val = 8},[3] = {id = 1609003,val = 7}},StrenthSuccessRate = 0.2,StrenthFailVoice = 5,MaxVoice = 100,PropBonus = 1.2}
		},
		Unseal = {
			[1] = {Cost = {[1] = {id = 1401002,val = 10000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 111,val = 100}}},
			[2] = {Cost = {[1] = {id = 1401002,val = 20000},[2] = {id = 1609106,val = 1}},Prop = {[1] = {id = 113,val = 700}}},
			[3] = {Cost = {[1] = {id = 1401002,val = 30000},[2] = {id = 1609106,val = 1},[3] = {id = 1702021,val = 5}},PSkill = 130302109},
			[4] = {Cost = {[1] = {id = 1401002,val = 50000},[2] = {id = 1609106,val = 2},[3] = {id = 1702021,val = 5}},Prop = {[1] = {id = 108,val = 0.15}}},
			[5] = {Cost = {[1] = {id = 1401002,val = 100000},[2] = {id = 1609106,val = 2},[3] = {id = 1702021,val = 10}},Prop = {[1] = {id = 110,val = 0.15}}},
			[6] = {Cost = {[1] = {id = 1401002,val = 150000},[2] = {id = 1609106,val = 2},[3] = {id = 1702021,val = 10}},Prop = {[1] = {id = 108,val = 0.15}}},
			[7] = {Cost = {[1] = {id = 1401002,val = 200000},[2] = {id = 1609106,val = 3},[3] = {id = 1702021,val = 10}},Prop = {[1] = {id = 109,val = 0.15}}},
			[8] = {Cost = {[1] = {id = 1401002,val = 250000},[2] = {id = 1609106,val = 3},[3] = {id = 1702021,val = 20}},Prop = {[1] = {id = 108,val = 0.15}}},
			[9] = {Cost = {[1] = {id = 1401002,val = 300000},[2] = {id = 1609106,val = 3},[3] = {id = 1702021,val = 20}},Prop = {[1] = {id = 104,val = 0.15}}},
			[10] = {Cost = {[1] = {id = 1401002,val = 400000},[2] = {id = 1609106,val = 5},[3] = {id = 1702021,val = 20}},Prop = {[1] = {id = 108,val = 0.2}}},
			[11] = {Cost = {[1] = {id = 1401002,val = 500000},[2] = {id = 1609106,val = 5},[3] = {id = 1702021,val = 30}},Prop = {[1] = {id = 110,val = 0.2}}},
			[12] = {Cost = {[1] = {id = 1401002,val = 600000},[2] = {id = 1609106,val = 5},[3] = {id = 1702021,val = 30}},Prop = {[1] = {id = 108,val = 0.2}}},
			[13] = {Cost = {[1] = {id = 1401002,val = 700000},[2] = {id = 1609106,val = 7},[3] = {id = 1702021,val = 30}},Prop = {[1] = {id = 109,val = 0.2}}},
			[14] = {Cost = {[1] = {id = 1401002,val = 800000},[2] = {id = 1609106,val = 7},[3] = {id = 1702021,val = 50}},Prop = {[1] = {id = 108,val = 0.2}}},
			[15] = {Cost = {[1] = {id = 1401002,val = 1000000},[2] = {id = 1609106,val = 7},[3] = {id = 1702021,val = 60}},Prop = {[1] = {id = 104,val = 0.2}}}
		}
	}--烈风螳螂专属武器
}