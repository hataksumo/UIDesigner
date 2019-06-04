--[[
--note:
配置buff的数值
colums:
{ID,唯一键} ,{Name,效果名称} ,{BuffIcon,图标名称} ,{Des,技能描述}
primary key:
#0 [技能Buff]: ID
]]
return{
	[4001] = {Name = "禁锢",BuffIcon = "icon_1305014",Des = "禁止行动"},--禁锢
	[4003] = {Name = "禁止召唤",BuffIcon = "icon_1305012",Des = "禁止召唤守护灵"},--禁止召唤
	[4004] = {Name = "禁止技能",BuffIcon = "icon_1305010",Des = "禁止释放主动技能"},--禁止技能
	[4005] = {Name = "护盾"},--护盾
	[4006] = {Name = "提升攻击1",BuffIcon = "icon_1305001",Des = "提高攻击力"},--提升攻击1
	[4007] = {Name = "提升攻击2",BuffIcon = "icon_1305001",Des = "提高攻击力"},--提升攻击2
	[4008] = {Name = "提高伤害",BuffIcon = "icon_1305002",Des = "提高伤害"},--提高伤害
	[4009] = {Name = "提高治疗",BuffIcon = "icon_1305004",Des = "提高治疗量"},--提高治疗
	[4010] = {Name = "立即释放当前技能"},--立即释放当前技能
	[4011] = {Name = "减少伤害",BuffIcon = "icon_1305006",Des = "减少造成的伤害"},--减少伤害
	[4012] = {Name = "减少治疗",BuffIcon = "icon_1305008",Des = "减少治疗量"},--减少治疗
	[4013] = {Name = "随机效果"},--随机效果
	[4014] = {Name = "援护"},--援护
	[4015] = {Name = "增加防御",BuffIcon = "icon_1305003",Des = "增加防御"},--增加防御
	[4016] = {Name = "增加暴击伤害"},--增加暴击伤害
	[4017] = {Name = "每回合造成伤害1",BuffIcon = "icon_1305015",Des = "每回合造成伤害"},--每回合造成伤害1
	[4018] = {Name = "封印被动技能",BuffIcon = "icon_1305011",Des = "被动技能失效"},--封印被动技能
	[4019] = {Name = "吸血光环",BuffIcon = "icon_1305009",Des = "造成伤害同时回血"},--吸血光环
	[4021] = {Name = "每回合回复生命"},--每回合回复生命
	[4022] = {Name = "攻击同时触发其他效果"},--攻击同时触发其他效果
	[4023] = {Name = "2连伤害增加"},--2连伤害增加
	[4024] = {Name = "3连伤害增加"},--3连伤害增加
	[4025] = {Name = "生成另外一个效果"},--生成另外一个效果
	[4026] = {Name = "降低攻击",BuffIcon = "icon_1305005",Des = "降低攻击力"},--降低攻击
	[4027] = {Name = "格挡概率增加"},--格挡概率增加
	[4028] = {Name = "穿透伤害提升"},--穿透伤害提升
	[4029] = {Name = "增加当前技能暴击率"},--增加当前技能暴击率
	[4030] = {Name = "当前技能消耗水晶减少"},--当前技能消耗水晶减少
	[4031] = {Name = "出场时立即释放当前技能"},--出场时立即释放当前技能
	[4032] = {Name = "增加目标受到的治疗效果"},--增加目标受到的治疗效果
	[4033] = {Name = "降低防御",BuffIcon = "icon_1305007",Des = "降低防御力"},--降低防御
	[4034] = {Name = "降低当前技能暴击率"},--降低当前技能暴击率
	[4035] = {Name = "水晶溢出"},--水晶溢出
	[4036] = {Name = "增加穿透概率"},--增加穿透概率
	[4037] = {Name = "降低穿透概率"},--降低穿透概率
	[4038] = {Name = "避难状态"},--避难状态
	[4039] = {Name = "延长负面效果时长"},--延长负面效果时长
	[4040] = {Name = "项羽不死"},--项羽不死
	[4041] = {Name = "反弹伤害至伤害来源"},--反弹伤害至伤害来源
	[4042] = {Name = "虹吸状态"},--虹吸状态
	[4043] = {Name = "濒死斩杀"},--濒死斩杀
	[4044] = {Name = "驱散正面效果"},--驱散正面效果
	[4045] = {Name = "驱散负面效果"},--驱散负面效果
	[4046] = {Name = "降低格挡率"},--降低格挡率
	[4047] = {Name = "抵挡技能护盾",BuffIcon = "icon_1305003",Des = "抵挡技能伤害"},--抵挡技能护盾
	[4101] = {Name = "风神印记",BuffIcon = "icon_1305022",Des = "风神印记"},--风神印记
	[4102] = {Name = "北落师门印记",BuffIcon = "icon_1305017"},--北落师门印记
	[4103] = {Name = "盖文印记",BuffIcon = "icon_1305020",Des = "龙王印记"},--盖文印记
	[4104] = {Name = "血魔印记",BuffIcon = "icon_1305019",Des = "血魔印记"},--血魔印记
	[4105] = {Name = "不死印记",BuffIcon = "icon_1305018",Des = "不死印记"},--不死印记
	[4106] = {Name = "烈风螳螂印记",BuffIcon = "icon_1305021",Des = "烈风印记"},--烈风螳螂印记
	[4107] = {Name = "集火标记"},--集火标记
	[4108] = {Name = "同生印记",BuffIcon = "icon_1305023",Des = "同生印记"},--同生印记
	[4109] = {Name = "共死印记",BuffIcon = "icon_1305024",Des = "共死印记"},--共死印记
	[4110] = {Name = "无视反伤"}--无视反伤
}