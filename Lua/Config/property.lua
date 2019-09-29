--[[
--note:
游戏中属性的配置
建议使用数组存储，方便属性遍历与赋值
单卡战斗力 = SUMPRODUCT(属性值,战斗力系数) + 技能战斗力；队伍战斗力=队伍中所有卡的战斗力 + 先攻值 * 100
面板对应显示，使用string.format(cfg_prop[id].Show.Str,prop[id] * cfg_prop[id].Show.Fac)
colums:
{ID,ID} ,{EnName,英文名} ,{Icon,图标} ,{CnName,中文名} ,{IsHide,隐藏属性} ,{Show_Str,展示方式} ,{Show_Fac,属性乘数} ,{IsMonProp,是否为怪物属性} ,{IsInt,是否取整} ,{IsFinal,是否最终属性} ,{BsFactor,战力系数} ,{Desc,描述}
primary key:
#0 [属性]: ID
]]
local _T = LangUtil.Language
if ddt["property"] ~= nil then
	return ddt["property"]
end
local data = {
	[101] = {EnName = "Atk",CnName = "基础攻击",IsHide = false,Show_Str = "基础攻击 +%d",Show_Fac = 1,IsMonProp = true,IsInt = true,IsFinal = true,BsFactor = 5,Desc = "决定角色的伤害能力，攻击力越高，角色技能的伤害也越高。"},
	[102] = {EnName = "Def",CnName = "基础防御",IsHide = false,Show_Str = "基础防御 +%d",Show_Fac = 1,IsMonProp = true,IsInt = true,IsFinal = true,BsFactor = 10,Desc = "防御力越高，角色所受伤害越低。"},
	[103] = {EnName = "HP",CnName = "基础生命",IsHide = false,Show_Str = "基础生命 +%d",Show_Fac = 1,IsMonProp = true,IsInt = true,IsFinal = true,BsFactor = 1,Desc = "生命值为0时，角色死亡。"},
	[104] = {EnName = "Crit",CnName = "暴击率",IsHide = false,Show_Str = "暴击率 +%.2f%%",Show_Fac = 100,IsMonProp = true,IsInt = false,IsFinal = true,BsFactor = 100000,Desc = "伤害性技能和恢复技能会发生暴击，默认暴击伤害为1.5倍。"},
	[105] = {EnName = "CritRate",CnName = "暴击伤害",IsHide = false,Show_Str = "暴击伤害 +%.2f%%",Show_Fac = 100,IsMonProp = true,IsInt = false,IsFinal = true,BsFactor = 50000,Desc = "提升暴击后造成的伤害。"},
	[106] = {EnName = "EffectHit",CnName = "效果命中",IsHide = false,Show_Str = "效果命中 +%.2f%%",Show_Fac = 100,IsMonProp = true,IsInt = false,IsFinal = true,BsFactor = 75000,Desc = "提升Debuff的命中概率"},
	[107] = {EnName = "EffectResist",CnName = "效果抵抗",IsHide = false,Show_Str = "效果抵抗 +%.2f%%",Show_Fac = 100,IsMonProp = true,IsInt = false,IsFinal = true,BsFactor = 75000,Desc = "降低遭受Debuff的概率。"},
	[108] = {EnName = "AtkRate",CnName = "攻击百分比加成",IsHide = true,Show_Str = "攻击百分比加成 +%f%%",Show_Fac = 100,IsInt = false,BsFactor = 0,Desc = "百分比提升基础攻击力。"},
	[109] = {EnName = "DefRate",CnName = "防御百分比加成",IsHide = true,Show_Str = "防御百分比加成 +%f%%",Show_Fac = 100,IsInt = false,BsFactor = 0,Desc = "百分比提升基础防御力。"},
	[110] = {EnName = "HPRate",CnName = "生命百分比加成",IsHide = true,Show_Str = "生命百分比加成 +%f%%",Show_Fac = 100,IsInt = false,BsFactor = 0,Desc = "百分比提升基础生命。"},
	[111] = {EnName = "AtkExt",CnName = "攻击",IsHide = true,Show_Str = "攻击 +%d",Show_Fac = 1,IsInt = true,BsFactor = 0,Desc = "额外攻击力，不受百分比影响。"},
	[112] = {EnName = "DefExt",CnName = "防御",IsHide = true,Show_Str = "防御 +%d",Show_Fac = 1,IsInt = true,BsFactor = 0,Desc = "额外防御力，不受百分比影响。"},
	[113] = {EnName = "HPExt",CnName = "生命",IsHide = true,Show_Str = "生命 +%d",Show_Fac = 1,IsInt = true,BsFactor = 0,Desc = "额外生命，不受百分比影响。"},
	[114] = {EnName = "Block",CnName = "格挡",IsHide = false,Show_Str = "格挡 +%.2f%%",Show_Fac = 100,IsMonProp = true,IsInt = false,IsFinal = true,BsFactor = 100000,Desc = "角色受到攻击时，有概率发生格挡，只受到一半的伤害。"},
	[115] = {EnName = "DefIgnor",CnName = "穿透",IsHide = false,Show_Str = "穿透 +%.2f%%",Show_Fac = 100,IsMonProp = true,IsInt = false,IsFinal = true,BsFactor = 100000,Desc = "角色攻击敌方时，有概率忽略对方的防御，可与暴击同时发生。"},
	[116] = {EnName = "R",CnName = "防御基值",IsHide = true,Show_Str = "防御基值 +%d",Show_Fac = 1,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "防御系数 = Ra/(Ra+防御b)。"},
	[117] = {EnName = "Suck",CnName = "吸血",IsHide = false,Show_Str = "吸血+%.2f%%",Show_Fac = 100,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "伤害*Suck=回复生命"},
	[118] = {EnName = "DmgBonus",CnName = "伤害提升",IsHide = false,Show_Str = "输出伤害提升+%.2f%%",Show_Fac = 100,IsMonProp = true,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "最终伤害 = 伤害 * max(0.25, (1+DmgBonus))"},
	[119] = {EnName = "TreatEffect",CnName = "治疗效率",IsHide = false,Show_Str = "受到治疗+%.2f%%",Show_Fac = 100,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "受到治疗 = 治疗量 * max(0.25, (1+TreatEffect))"},
	[120] = {EnName = "HitBack",CnName = "反伤",IsHide = true,Show_Str = "受到伤害后反弹+%.2f%%",Show_Fac = 100,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "反弹伤害 = 所受伤害 * 受击者.HitBack"},
	[121] = {EnName = "DeCrit",CnName = "暴击抵抗",IsHide = true,Show_Str = "降低被暴击率+%.2f%%",Show_Fac = 100,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "实际暴击概率 = 施法者Crit - 受击者.DeCrit"},
	[122] = {EnName = "DeCritRate",CnName = "爆伤抵抗",IsHide = true,Show_Str = "降低所受暴击伤害+%.2f%%",Show_Fac = 100,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "实际爆伤 = 施法者.CritRate - 受击者.DeCritRate"},
	[123] = {EnName = "DeBlock",CnName = "格挡抵抗",IsHide = true,Show_Str = "降低被格挡概率+%.2f%%",Show_Fac = 100,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "实际格挡 = 受击者.Block - 施法者.DeBlock"},
	[124] = {EnName = "DeDefIgnor",CnName = "穿透抵抗",IsHide = true,Show_Str = "降低被穿透概率+%.2f%%",Show_Fac = 100,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "实际穿透 = 施法者.DefIgnor - 受击者.DeDefIgnor"},
	[125] = {EnName = "DmgMagnify",CnName = "受伤提升",IsHide = true,Show_Str = "受到伤害提升+%.2f%%",Show_Fac = 100,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "实际所受伤害 = 原先实际所受伤害 * (1 + 受击者.DmgMagnify -  受击者.DmgResist)"},
	[126] = {EnName = "DmgResist",CnName = "受伤降低",IsHide = true,Show_Str = "受到伤害降低+%.2f%%",Show_Fac = 100,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "实际所受伤害 = 原先实际所受伤害 * (1 +  受击者.DmgMagnify -  受击者.DmgResist)"},
	[127] = {EnName = "AoYi",CnName = "奥义增强",IsHide = true,Show_Str = "守护灵奥义伤害+%.2f%%",Show_Fac = 100,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "守护灵释放水晶技能的伤害 = 原先的伤害 * (1+施法者.AoYi)"},
	[128] = {EnName = "BlockRate",CnName = "格挡率",IsHide = true,Show_Str = "格挡减伤提升%.2f%%",Show_Fac = 100,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "格挡免伤提升%.2f%%"},
	[129] = {EnName = "BasePropAll",CnName = "全属性",IsHide = true,Show_Str = "全属性提升+%.3f%%",Show_Fac = 100,IsInt = false,BsFactor = 0,Desc = "最终属性提升%.2f%%"},
	[201] = {EnName = "Speed",CnName = "先攻",IsHide = false,Show_Str = "先攻值+%d",Show_Fac = 1,IsInt = false,BsFactor = 0,Desc = "决定是否先手"},
	[202] = {EnName = "CrystalGain",Icon = "icon_1304027",CnName = "每回合获得水晶数量",IsHide = true,Show_Str = "每回合获得随机水晶+%d",Show_Fac = 1,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "寄灵人地狱道突破；神器"},
	[203] = {EnName = "CrystalGainRed",CnName = "每回合获得红水晶数量",IsHide = true,Show_Str = "每回合获得红水晶+%d",Show_Fac = 1,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "神器；寄灵人洗练技能"},
	[204] = {EnName = "CrystalGainYellow",CnName = "每回合获得黄水晶数量",IsHide = true,Show_Str = "每回合获得黄水晶+%d",Show_Fac = 1,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "神器；寄灵人洗练技能"},
	[205] = {EnName = "CrystalGainBlue",CnName = "每回合获得蓝水晶数量",IsHide = true,Show_Str = "每回合获得蓝水晶+%d",Show_Fac = 1,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "神器；寄灵人洗练技能"},
	[206] = {EnName = "IniRed",CnName = "初始红水晶",IsHide = true,Show_Str = "初始获得红水晶+%d",Show_Fac = 1,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "神器；寄灵人洗练技能"},
	[207] = {EnName = "IniYellow",CnName = "初始黄水晶",IsHide = true,Show_Str = "初始获得黄水晶+%d",Show_Fac = 1,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "神器；寄灵人洗练技能"},
	[208] = {EnName = "IniBlue",CnName = "初始蓝水晶",IsHide = true,Show_Str = "初始获得蓝水晶+%d",Show_Fac = 1,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "神器；寄灵人洗练技能"},
	[601] = {EnName = "Siege",CnName = "攻城值",IsHide = false,Show_Str = "攻城值 +%d",Show_Fac = 1,IsInt = false,IsFinal = true,BsFactor = 0,Desc = "卡牌国战攻城值属性"}
}
ddt["property"] = data
SetLooseReadonly(data)
return data