--[[
--note:
游戏中属性的配置
建议使用数组存储，方便属性遍历与赋值
单卡战斗力 = SUMPRODUCT(属性值,战斗力系数) + 技能战斗力；队伍战斗力=队伍中所有卡的战斗力 + 先攻值 * 100
面板对应显示，使用string.format(cfg_prop[id].Show.Str,prop[id] * cfg_prop[id].Show.Fac)
colums:
{ID,ID} ,{EnName,英文名} ,{CnName,中文名} ,{IsHide,隐藏属性} ,{Show_Str,展示方式} ,{Show_Fac,属性乘数} ,{BsFactor,战力系数} ,{Desc,描述}
primary key:
#0 [属性]: ID
]]
if ddt["property"] ~= nil then
	return ddt["property"]
end
local data = {
	[101] = {EnName = "Atk",CnName = "基础攻击",IsHide = false,Show_Str = "基础攻击 +%d",Show_Fac = 1,BsFactor = 10,Desc = "决定角色的伤害能力，攻击力越高，角色技能的伤害也越高。"},
	[102] = {EnName = "Def",CnName = "基础防御",IsHide = false,Show_Str = "基础防御 +%d",Show_Fac = 1,BsFactor = 20,Desc = "防御力越高，角色所受伤害越低。"},
	[103] = {EnName = "HP",CnName = "基础生命",IsHide = false,Show_Str = "基础生命 +%d",Show_Fac = 1,BsFactor = 1,Desc = "生命值为0时，角色死亡。"},
	[104] = {EnName = "Crit",CnName = "暴击率",IsHide = false,Show_Str = "暴击率 +%f%%",Show_Fac = 100,BsFactor = 100000,Desc = "伤害性技能和恢复技能会发生暴击，默认暴击伤害为1.5倍。"},
	[105] = {EnName = "CritDmg",CnName = "暴击伤害",IsHide = false,Show_Str = "暴击伤害 +%f%%",Show_Fac = 100,BsFactor = 50000,Desc = "提升暴击后造成的伤害。"},
	[106] = {EnName = "EffectHit",CnName = "效果命中",IsHide = false,Show_Str = "效果命中 +%f%%",Show_Fac = 100,BsFactor = 75000,Desc = "提升Debuff的命中概率"},
	[107] = {EnName = "EffectResist",CnName = "效果抵抗",IsHide = false,Show_Str = "效果抵抗 +%f%%",Show_Fac = 100,BsFactor = 75000,Desc = "降低遭受Debuff的概率。"},
	[108] = {EnName = "AtkRate",CnName = "攻击百分比加成",IsHide = true,Show_Str = "攻击百分比加成 +%f%%",Show_Fac = 100,BsFactor = 0,Desc = "百分比提升基础攻击力。"},
	[109] = {EnName = "DefRate",CnName = "防御百分比加成",IsHide = true,Show_Str = "防御百分比加成 +%f%%",Show_Fac = 100,BsFactor = 0,Desc = "百分比提升基础防御力。"},
	[110] = {EnName = "HPRate",CnName = "生命百分比加成",IsHide = true,Show_Str = "生命百分比加成 +%f%%",Show_Fac = 100,BsFactor = 0,Desc = "百分比提升基础生命。"},
	[111] = {EnName = "AtkExt",CnName = "攻击",IsHide = true,Show_Str = "攻击 +%d",Show_Fac = 1,BsFactor = 0,Desc = "额外攻击力，不受百分比影响。"},
	[112] = {EnName = "DefExt",CnName = "防御",IsHide = true,Show_Str = "防御 +%d",Show_Fac = 1,BsFactor = 0,Desc = "额外防御力，不受百分比影响。"},
	[113] = {EnName = "HPExt",CnName = "生命",IsHide = true,Show_Str = "生命 +%d",Show_Fac = 1,BsFactor = 0,Desc = "额外生命，不受百分比影响。"},
	[114] = {EnName = "Block",CnName = "格挡",IsHide = false,Show_Str = "格挡 +%f%%",Show_Fac = 1,BsFactor = 0,Desc = "角色受到攻击时，有概率发生格挡，只受到一半的伤害。"},
	[115] = {EnName = "DefIgnor",CnName = "穿透",IsHide = false,Show_Str = "穿透 +%f%%",Show_Fac = 1,BsFactor = 100000,Desc = "角色攻击敌方时，有概率忽略对方的防御，可与暴击同时发生。"},
	[116] = {EnName = "R",CnName = "防御基值",IsHide = true,Show_Str = "防御基值 +%d",Show_Fac = 1,BsFactor = 0,Desc = "防御系数 = Ra/(Ra+防御b)。"}
}
ddt["property"] = data
SetLooseReadonly(data)
return data