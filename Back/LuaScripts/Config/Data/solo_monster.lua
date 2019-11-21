--[[
--note:

colums:
{ID,唯一键，怪物ID} ,{Type,怪物类型} ,{Level,等级} ,{Atk,攻击} ,{Def,防御} ,{HP,生命} ,{Crit,暴击率} ,{CritRate,暴击伤害} ,{EffectHit,效果命中} ,{EffectResist,效果抵抗} ,{R,防御基值} ,{Block,格挡} ,{DefIgnor,穿透} ,{Skill,技能a#b} ,{EnterSkill,入场技能} ,{DefendGrostId,守护灵ID} ,{CallCost,召唤消耗} ,{CallCD,召唤CD} ,{CrystalType,颜色1-红  2-黄 3-蓝} ,{RoleId,角色ID}
primary key:
#0 [个人BOSS]: ID
]]
return{
	[1] = {Type = 1,Level = 3,Atk = 150,Def = 0,HP = 400,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801003},DefendGrostId = 0,CrystalType = 3,RoleId = 1201003},
	[2] = {Type = 1,Level = 2,Atk = 100,Def = 0,HP = 800,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801002},DefendGrostId = 0,CrystalType = 2,RoleId = 1201002},
	[3] = {Type = 1,Level = 2,Atk = 100,Def = 0,HP = 800,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801002},DefendGrostId = 0,CrystalType = 2,RoleId = 1201002},
	[4] = {Type = 1,Level = 2,Atk = 80,Def = 0,HP = 600,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801011},DefendGrostId = 0,CrystalType = 2,RoleId = 1201011},
	[5] = {Type = 1,Level = 2,Atk = 80,Def = 0,HP = 600,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801012,1802012},EnterSkill = 1803012,DefendGrostId = 17,CallCD = 1,CrystalType = 2,RoleId = 1201012},
	[6] = {Type = 1,Level = 2,Atk = 80,Def = 0,HP = 600,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801006},DefendGrostId = 0,CrystalType = 2,RoleId = 1201006},
	[7] = {Type = 1,Level = 3,Atk = 180,Def = 0,HP = 400,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801002},DefendGrostId = 0,CrystalType = 3,RoleId = 1201003},
	[8] = {Type = 1,Level = 1,Atk = 200,Def = 0,HP = 1500,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801003},DefendGrostId = 0,CrystalType = 1,RoleId = 1201001},
	[9] = {Type = 1,Level = 3,Atk = 180,Def = 0,HP = 400,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801002},DefendGrostId = 0,CrystalType = 3,RoleId = 1201003},
	[10] = {Type = 1,Level = 3,Atk = 220,Def = 0,HP = 600,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801002},DefendGrostId = 0,CrystalType = 3,RoleId = 1201003},
	[11] = {Type = 1,Level = 3,Atk = 200,Def = 0,HP = 800,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1301008,1302008},DefendGrostId = 12,CallCD = 1,CrystalType = 1,RoleId = 1101008},
	[12] = {Type = 1,Level = 3,Atk = 280,Def = 0,HP = 1500,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1303013},EnterSkill = 1303013,DefendGrostId = 0,CallCost = 3,CrystalType = 1,RoleId = 1102013},
	[13] = {Type = 1,Level = 3,Atk = 220,Def = 0,HP = 600,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801002},DefendGrostId = 0,CrystalType = 3,RoleId = 1201003},
	[14] = {Type = 1,Level = 2,Atk = 250,Def = 0,HP = 1800,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801001},DefendGrostId = 0,CrystalType = 2,RoleId = 1201002},
	[15] = {Type = 1,Level = 2,Atk = 250,Def = 0,HP = 1800,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801001},DefendGrostId = 0,CrystalType = 2,RoleId = 1201002},
	[16] = {Type = 1,Level = 2,Atk = 250,Def = 0,HP = 1800,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801001},DefendGrostId = 0,CrystalType = 2,RoleId = 1201002},
	[17] = {Type = 1,Level = 2,Atk = 250,Def = 0,HP = 1800,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1801010},DefendGrostId = 0,CallCost = 1,CrystalType = 2,RoleId = 1201010},
	[18] = {Type = 1,Level = 2,Atk = 250,Def = 0,HP = 1800,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1303002},DefendGrostId = 0,CallCost = 1,CrystalType = 2,RoleId = 1102002},
	[19] = {Type = 1,Level = 2,Atk = 250,Def = 0,HP = 1800,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1303004},DefendGrostId = 0,CallCost = 1,CrystalType = 2,RoleId = 1102004},
	[20] = {Type = 1,Level = 2,Atk = 250,Def = 0,HP = 1800,Crit = 0,CritRate = 0,EffectHit = 0,EffectResist = 0,R = 300,Block = 0,DefIgnor = 0,Skill = {1303013},DefendGrostId = 0,CallCost = 1,CrystalType = 2,RoleId = 1102013}
}