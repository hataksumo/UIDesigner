--[[
output from excel national_corps军团表.xlsx
--note:

colums:
{CorpsId,军团id} ,{Name,名称} ,{CorpsType,军团克制类型} ,{CounterType,克制关系
填被克制的军团克制类型} ,{CounterAtk,克制攻击加成} ,{CounterDef,克制减伤加成} ,{CorpsTypeIcon,克制类型图标} ,{Des,描述} ,{Icon,图标} ,{CorpsEffectDes[1],军团效果1-描述} ,{CorpsEffect[1].Type,军团效果1-类型} ,{CorpsEffect[1].ValueType,效果数值类型
1.百分比
2.数值} ,{CorpsEffect[1].Value,军团效果1-值} ,{CorpsEffect[1].TechId,加成科技id
该科技对该军团的该效果加成} ,{CorpsEffectDes[2],'军团效果2-描述} ,{CorpsEffect[2].Type,军团效果2-类型} ,{CorpsEffect[2].ValueType,效果数值类型
1.百分比
2.数值} ,{CorpsEffect[2].Value,军团效果2-值} ,{CorpsEffect[2].TechId,加成科技id
该科技对该军团的该效果加成} ,{EffectTerrain[1],特性1
-受影响地形} ,{Effect[1].Type,特性1
-效果id} ,{Effect[1].Value,特性1
-效果数值} ,{EffectTerrain[2],特性2
-受影响地形} ,{Effect[2].Type,特性2
-效果id} ,{Effect[2].Value,特性2
-效果数值} ,{EffectTerrain[3],特性3
-受影响地形} ,{Effect[3].Type,特性3
-效果id} ,{Effect[3].Value,特性3
-效果数值} ,{Reset,是否可重置
1.可重置
2.不可重置} ,{ReConsume[1].Id,重置消耗类型} ,{ReConsume[1].val,重置消耗数值} ,{ConsumeSec,征1兵耗时} ,{Consume[1].Id,征兵消耗1类型} ,{Consume[1].val,数量/1军力} ,{Consume[2].Id,征兵消耗2类型} ,{Consume[2].val,数量/1军力} ,{Consume[3].Id,征兵消耗3类型} ,{Consume[3].val,数量/1军力} ,{Consume[4].Id,征兵消耗4类型} ,{Consume[4].val,数量/1军力} ,{TurnConsume[1].Id,转换消耗1类型} ,{TurnConsume[1].val,数量} ,{TurnConsume[2].Id,转换消耗2类型} ,{TurnConsume[2].val,数量} ,{TurnConsume[3].Id,转换消耗3类型} ,{TurnConsume[3].val,数量} ,{TurnConsume[4].Id,转换消耗4类型} ,{TurnConsume[4].val,数量}
primary key:
#0 [军团]: Id
]]
local _T = LangUtil.Language
return{
	[1] = {CorpsId = 1,Name = "镇魂铁卫",CorpsType = 0,CounterType = 0,CorpsTypeIcon = "ui_dtex_crops_10011",Icon = "ui_dtex_crops_10010",CorpsEffectDes = {[1] = "<color=#444443>征兵资源消耗减少</color>"},Reset = 2,ConsumeSec = 2.25,Consume = {[1] = {Id = 6000001,val = 10},[2] = {Id = 6000002,val = 10},[3] = {Id = 6000003,val = 0},[4] = {Id = 6000004,val = 20}},TurnConsume = {[1] = {Id = 6000001,val = 0},[2] = {Id = 6000002,val = 0},[3] = {Id = 6000003,val = 0},[4] = {Id = 6000004,val = 0}}},
	[2] = {CorpsId = 2,Name = "虎豹王骑",CorpsType = 3,CounterType = 1,CounterAtk = 2,CounterDef = 0.2,CorpsTypeIcon = "ui_dtex_crops_10001",Icon = "ui_dtex_crops_10005",CorpsEffectDes = {[1] = "<color=#444443>驻守时受到伤害降低</color><color=#3c8a3e>%s</color>",[2] = "<color=#444443>队伍所在城镇储备军力恢复速度提高</color><color=#3c8a3e>%s</color>"},CorpsEffect = {[1] = {Type = 39,ValueType = 1,Value = 0.1,TechId = 6102008},[2] = {Type = 40,ValueType = 1,Value = 0.3,TechId = 6101006}},Reset = 1,ReConsume = {[1] = {Id = 1401010,val = 20}},ConsumeSec = 2.25,Consume = {[1] = {Id = 6000001,val = 10},[2] = {Id = 6000002,val = 10},[3] = {Id = 6000003,val = 0},[4] = {Id = 6000004,val = 20}},TurnConsume = {[1] = {Id = 6000001,val = 10000},[2] = {Id = 6000002,val = 10000},[3] = {Id = 6000003,val = 10000},[4] = {Id = 6000004,val = 10000}}},
	[3] = {CorpsId = 3,Name = "车下灵卫",CorpsType = 1,CounterType = 2,CounterAtk = 2,CounterDef = 0.2,CorpsTypeIcon = "ui_dtex_crops_10003",Icon = "ui_dtex_crops_10004",CorpsEffectDes = {[1] = "<color=#444443>采集产量收益提高</color><color=#3c8a3e>%s</color>",[2] = "<color=#444443>征募速度提高</color><color=#3c8a3e>%s</color>"},CorpsEffect = {[1] = {Type = 12,ValueType = 1,Value = 0.15,TechId = 6102009},[2] = {Type = 17,ValueType = 1,Value = 0.1,TechId = 6101007}},Reset = 1,ReConsume = {[1] = {Id = 1401010,val = 20}},ConsumeSec = 2.25,Consume = {[1] = {Id = 6000001,val = 10},[2] = {Id = 6000002,val = 10},[3] = {Id = 6000003,val = 0},[4] = {Id = 6000004,val = 20}},TurnConsume = {[1] = {Id = 6000001,val = 10000},[2] = {Id = 6000002,val = 10000},[3] = {Id = 6000003,val = 10000},[4] = {Id = 6000004,val = 10000}}},
	[4] = {CorpsId = 4,Name = "无当玄军",CorpsType = 2,CounterType = 3,CounterAtk = 2,CounterDef = 0.2,CorpsTypeIcon = "ui_dtex_crops_10002",Icon = "ui_dtex_crops_10008",CorpsEffectDes = {[1] = "<color=#444443>采集产量收益提高</color><color=#3c8a3e>%s</color>",[2] = "<color=#444443>征募消耗降低</color><color=#3c8a3e>%s</color>"},CorpsEffect = {[1] = {Type = 13,ValueType = 1,Value = 0.15,TechId = 6102010},[2] = {Type = 31,ValueType = 1,Value = 0.1,TechId = 6101008}},Reset = 1,ReConsume = {[1] = {Id = 1401010,val = 20}},ConsumeSec = 2.25,Consume = {[1] = {Id = 6000001,val = 10},[2] = {Id = 6000002,val = 10},[3] = {Id = 6000003,val = 0},[4] = {Id = 6000004,val = 20}},TurnConsume = {[1] = {Id = 6000001,val = 10000},[2] = {Id = 6000002,val = 10000},[3] = {Id = 6000003,val = 10000},[4] = {Id = 6000004,val = 10000}}},
	[5] = {CorpsId = 5,Name = "魔导军团",CorpsType = 2,CounterType = 3,CounterAtk = 2,CounterDef = 0.2,CorpsTypeIcon = "ui_dtex_crops_10002",Icon = "ui_dtex_crops_10006",CorpsEffectDes = {[1] = "<color=#444443>行军速度提高</color><color=#3c8a3e>%s</color>",[2] = "<color=#444443>寄灵人受到伤害降低</color><color=#3c8a3e>%s</color>"},CorpsEffect = {[1] = {Type = 15,ValueType = 1,Value = 10,TechId = 6102011},[2] = {Type = 43,ValueType = 1,Value = 0.15,TechId = 6101009}},Reset = 1,ReConsume = {[1] = {Id = 1401010,val = 20}},ConsumeSec = 2.25,Consume = {[1] = {Id = 6000001,val = 10},[2] = {Id = 6000002,val = 10},[3] = {Id = 6000003,val = 0},[4] = {Id = 6000004,val = 20}},TurnConsume = {[1] = {Id = 6000001,val = 10000},[2] = {Id = 6000002,val = 10000},[3] = {Id = 6000003,val = 10000},[4] = {Id = 6000004,val = 10000}}},
	[6] = {CorpsId = 6,Name = "天罡武灵",CorpsType = 1,CounterType = 2,CounterAtk = 2,CounterDef = 0.2,CorpsTypeIcon = "ui_dtex_crops_10003",Icon = "ui_dtex_crops_10007",CorpsEffectDes = {[1] = "<color=#444443>队伍内卡牌行动力上限增加</color><color=#3c8a3e>%s</color>",[2] = "<color=#444443>守护灵造成伤害提高</color><color=#3c8a3e>%s</color>"},CorpsEffect = {[1] = {Type = 32,ValueType = 1,Value = 0.3,TechId = 6102012},[2] = {Type = 42,ValueType = 1,Value = 0.1,TechId = 6102002}},Reset = 1,ReConsume = {[1] = {Id = 1401010,val = 20}},ConsumeSec = 2.25,Consume = {[1] = {Id = 6000001,val = 10},[2] = {Id = 6000002,val = 10},[3] = {Id = 6000003,val = 0},[4] = {Id = 6000004,val = 20}},TurnConsume = {[1] = {Id = 6000001,val = 10000},[2] = {Id = 6000002,val = 10000},[3] = {Id = 6000003,val = 10000},[4] = {Id = 6000004,val = 10000}}},
	[7] = {CorpsId = 7,Name = "隐灵甲士",CorpsType = 3,CounterType = 1,CounterAtk = 2,CounterDef = 0.2,CorpsTypeIcon = "ui_dtex_crops_10001",Icon = "ui_dtex_crops_10009",CorpsEffectDes = {[1] = "<color=#444443>城镇剿匪行军速度提高</color><color=#3c8a3e>%s</color>",[2] = "<color=#444443>队伍讨伐野怪获得的经验提高</color><color=#3c8a3e>%s</color>"},CorpsEffect = {[1] = {Type = 33,ValueType = 1,Value = 0.2,TechId = 6102013},[2] = {Type = 41,ValueType = 1,Value = 0.15,TechId = 6102002}},Reset = 1,ReConsume = {[1] = {Id = 1401010,val = 20}},ConsumeSec = 2.25,Consume = {[1] = {Id = 6000001,val = 10},[2] = {Id = 6000002,val = 10},[3] = {Id = 6000003,val = 0},[4] = {Id = 6000004,val = 20}},TurnConsume = {[1] = {Id = 6000001,val = 10000},[2] = {Id = 6000002,val = 10000},[3] = {Id = 6000003,val = 10000},[4] = {Id = 6000004,val = 10000}}}
}