--[[
--note:
不同品质的卡走不同配置。
方法1是只用培养丹，方法2是用培养丹+金币，方法3是培养丹+钻石

不同培养方式的属性随机配置不同。
根据培养获得的战力百分比，定位所处阶段。
不同阶段的培养配置不同
每次培养，先判断属性上升还是下降UpProp。如果上升则该条属性在1~Max随机，如果下降则在-1~Min随机
colums:
{Cost[1].Id,消耗ID1} ,{Cost[1].Val,消耗值1} ,{Cost[2].Id,消耗ID2} ,{Cost[2].Val,消耗值2} ,{Cost[3].Id,消耗ID3} ,{Cost[3].Val,消耗值3} ,{BsPct,战力百分比} ,{AtkExt.UpProp,攻击提升概率} ,{AtkExt.Max,攻击提升} ,{AtkExt.Min,攻击下降} ,{DefExt.UpProp,防御提升概率} ,{DefExt.Max,防御提升} ,{DefExt.Min,防御下降} ,{HpExt.UpProp,血量提升概率} ,{HpExt.Max,血量提升} ,{HpExt.Min,血量下降}
primary key:
#0 [培养表]: Quality,Method
#1 [培养属性]: Quality,Method,HelpCol,Lv
]]
local _T = LangUtil.Language
return{
	[2] = {
		[1] = {
			Cost = {[1] = {Id = 1603024,Val = 5}},
			Phases = {
				[1] = {BsPct = 0.3,AtkExt = {UpProp = 0.5,Max = 6,Min = -4},DefExt = {UpProp = 0.5,Max = 3,Min = -2},HpExt = {UpProp = 0.5,Max = 30,Min = -20}},
				[2] = {BsPct = 0.7,AtkExt = {UpProp = 0.4,Max = 6,Min = -4},DefExt = {UpProp = 0.4,Max = 3,Min = -2},HpExt = {UpProp = 0.4,Max = 30,Min = -20}},
				[3] = {BsPct = 1,AtkExt = {UpProp = 0.35,Max = 6,Min = -4},DefExt = {UpProp = 0.35,Max = 3,Min = -2},HpExt = {UpProp = 0.35,Max = 30,Min = -20}}
			}
		},--R卡纯洗炼
		[2] = {
			Cost = {[1] = {Id = 1603024,Val = 5},[2] = {Id = 1401002,Val = 1000}},
			Phases = {
				[1] = {BsPct = 0.3,AtkExt = {UpProp = 0.5,Max = 8,Min = -4},DefExt = {UpProp = 0.5,Max = 4,Min = -2},HpExt = {UpProp = 0.5,Max = 40,Min = -20}},
				[2] = {BsPct = 0.7,AtkExt = {UpProp = 0.4,Max = 8,Min = -4},DefExt = {UpProp = 0.4,Max = 4,Min = -2},HpExt = {UpProp = 0.4,Max = 40,Min = -20}},
				[3] = {BsPct = 1,AtkExt = {UpProp = 0.35,Max = 8,Min = -4},DefExt = {UpProp = 0.35,Max = 4,Min = -2},HpExt = {UpProp = 0.35,Max = 40,Min = -20}}
			}
		},--R卡金币洗炼
		[3] = {
			Cost = {[1] = {Id = 1603024,Val = 5},[2] = {Id = 1401010,Val = 10}},
			Phases = {
				[1] = {BsPct = 0.3,AtkExt = {UpProp = 0.5,Max = 10,Min = -4},DefExt = {UpProp = 0.5,Max = 5,Min = -2},HpExt = {UpProp = 0.5,Max = 50,Min = -20}},
				[2] = {BsPct = 0.7,AtkExt = {UpProp = 0.4,Max = 10,Min = -4},DefExt = {UpProp = 0.4,Max = 5,Min = -2},HpExt = {UpProp = 0.4,Max = 50,Min = -20}},
				[3] = {BsPct = 1,AtkExt = {UpProp = 0.35,Max = 10,Min = -4},DefExt = {UpProp = 0.35,Max = 5,Min = -2},HpExt = {UpProp = 0.35,Max = 50,Min = -20}}
			}
		}--R卡钻石洗炼
	},
	[3] = {
		[1] = {
			Cost = {[1] = {Id = 1603024,Val = 7}},
			Phases = {
				[1] = {BsPct = 0.3,AtkExt = {UpProp = 0.5,Max = 6,Min = -4},DefExt = {UpProp = 0.5,Max = 3,Min = -2},HpExt = {UpProp = 0.5,Max = 30,Min = -20}},
				[2] = {BsPct = 0.7,AtkExt = {UpProp = 0.4,Max = 6,Min = -4},DefExt = {UpProp = 0.4,Max = 3,Min = -2},HpExt = {UpProp = 0.4,Max = 30,Min = -20}},
				[3] = {BsPct = 1,AtkExt = {UpProp = 0.35,Max = 6,Min = -4},DefExt = {UpProp = 0.35,Max = 3,Min = -2},HpExt = {UpProp = 0.35,Max = 30,Min = -20}}
			}
		},--SR卡纯洗炼
		[2] = {
			Cost = {[1] = {Id = 1603024,Val = 7},[2] = {Id = 1401002,Val = 1000}},
			Phases = {
				[1] = {BsPct = 0.3,AtkExt = {UpProp = 0.5,Max = 8,Min = -4},DefExt = {UpProp = 0.5,Max = 4,Min = -2},HpExt = {UpProp = 0.5,Max = 40,Min = -20}},
				[2] = {BsPct = 0.7,AtkExt = {UpProp = 0.4,Max = 8,Min = -4},DefExt = {UpProp = 0.4,Max = 4,Min = -2},HpExt = {UpProp = 0.4,Max = 40,Min = -20}},
				[3] = {BsPct = 1,AtkExt = {UpProp = 0.35,Max = 8,Min = -4},DefExt = {UpProp = 0.35,Max = 4,Min = -2},HpExt = {UpProp = 0.35,Max = 40,Min = -20}}
			}
		},--SR卡金币洗炼
		[3] = {
			Cost = {[1] = {Id = 1603024,Val = 7},[2] = {Id = 1401010,Val = 10}},
			Phases = {
				[1] = {BsPct = 0.3,AtkExt = {UpProp = 0.5,Max = 10,Min = -4},DefExt = {UpProp = 0.5,Max = 5,Min = -2},HpExt = {UpProp = 0.5,Max = 50,Min = -20}},
				[2] = {BsPct = 0.7,AtkExt = {UpProp = 0.4,Max = 10,Min = -4},DefExt = {UpProp = 0.4,Max = 5,Min = -2},HpExt = {UpProp = 0.4,Max = 50,Min = -20}},
				[3] = {BsPct = 1,AtkExt = {UpProp = 0.35,Max = 10,Min = -4},DefExt = {UpProp = 0.35,Max = 5,Min = -2},HpExt = {UpProp = 0.35,Max = 50,Min = -20}}
			}
		}--SR卡钻石洗炼
	},
	[4] = {
		[1] = {
			Cost = {[1] = {Id = 1603024,Val = 10}},
			Phases = {
				[1] = {BsPct = 0.3,AtkExt = {UpProp = 0.5,Max = 6,Min = -4},DefExt = {UpProp = 0.5,Max = 3,Min = -2},HpExt = {UpProp = 0.5,Max = 30,Min = -20}},
				[2] = {BsPct = 0.7,AtkExt = {UpProp = 0.4,Max = 6,Min = -4},DefExt = {UpProp = 0.4,Max = 3,Min = -2},HpExt = {UpProp = 0.4,Max = 30,Min = -20}},
				[3] = {BsPct = 1,AtkExt = {UpProp = 0.35,Max = 6,Min = -4},DefExt = {UpProp = 0.35,Max = 3,Min = -2},HpExt = {UpProp = 0.35,Max = 30,Min = -20}}
			}
		},--SSR卡纯洗炼
		[2] = {
			Cost = {[1] = {Id = 1603024,Val = 10},[2] = {Id = 1401002,Val = 1000}},
			Phases = {
				[1] = {BsPct = 0.3,AtkExt = {UpProp = 0.5,Max = 8,Min = -4},DefExt = {UpProp = 0.5,Max = 4,Min = -2},HpExt = {UpProp = 0.5,Max = 40,Min = -20}},
				[2] = {BsPct = 0.7,AtkExt = {UpProp = 0.4,Max = 8,Min = -4},DefExt = {UpProp = 0.4,Max = 4,Min = -2},HpExt = {UpProp = 0.4,Max = 40,Min = -20}},
				[3] = {BsPct = 1,AtkExt = {UpProp = 0.35,Max = 8,Min = -4},DefExt = {UpProp = 0.35,Max = 4,Min = -2},HpExt = {UpProp = 0.35,Max = 40,Min = -20}}
			}
		},--SSR卡金币洗炼
		[3] = {
			Cost = {[1] = {Id = 1603024,Val = 10},[2] = {Id = 1401010,Val = 10}},
			Phases = {
				[1] = {BsPct = 0.3,AtkExt = {UpProp = 0.5,Max = 10,Min = -4},DefExt = {UpProp = 0.5,Max = 5,Min = -2},HpExt = {UpProp = 0.5,Max = 50,Min = -20}},
				[2] = {BsPct = 0.7,AtkExt = {UpProp = 0.4,Max = 10,Min = -4},DefExt = {UpProp = 0.4,Max = 5,Min = -2},HpExt = {UpProp = 0.4,Max = 50,Min = -20}},
				[3] = {BsPct = 1,AtkExt = {UpProp = 0.35,Max = 10,Min = -4},DefExt = {UpProp = 0.35,Max = 5,Min = -2},HpExt = {UpProp = 0.35,Max = 50,Min = -20}}
			}
		}--SSR卡钻石洗炼
	}
}