--[[
output from excel operAct.运营活动.xlsx
--note:
配置章节目标奖励
colums:
{Id,ID} ,{Scene,出现场景
1.普通关卡，2困难关卡，3芦花古楼} ,{Nxt,第几个目标} ,{LevelId,关卡Id} ,{Award[1].Id,奖励1道具Id} ,{Award[1].Num,奖励1数量} ,{CardName,卡牌名称} ,{CardType,卡牌类型} ,{CardQuality,类型图片} ,{HaiBao,海报（卡牌海报）} ,{Icon,图标} ,{Frame,图标品质边框} ,{Des,备注简述} ,{AwardShow.Pic1,广告词
美术字图片}
primary key:
#0 [章节目标奖励]: Id
]]
local _T = LangUtil.Language
return{
	[101] = {Scene = 1,Nxt = 102,LevelId = 10109,Award = {[1] = {Id = 1101001,Num = 1}},CardName = "·曹焱兵·",CardType = "寄灵人",CardQuality = "ui_dtex_Quality_047",HaiBao = "ui_dtex_Post_013",Icon = "icon_1301001",Frame = "ui_dtex_Quality_085",Des = "获得后，可使阵容的三个位置<color=#df4c4c>编制满员</color>",AwardShow = {Pic1 = "ui_dtex_Post_019"}},
	[102] = {Scene = 1,Nxt = 103,LevelId = 10210,Award = {[1] = {Id = 1022,Num = 1}},CardQuality = "ui_dtex_Quality_032",Icon = "icon_1304025",Frame = "ui_dtex_Quality_085",Des = "<color=#df4c4c>【即时效果】</color>立即获得2个红水晶\r\n<color=#df4c4c>【攻击效果】</color>攻击敌方单体造成攻击伤害",AwardShow = {Pic1 = "ui_dtex_Post_015"}},
	[103] = {Scene = 1,Nxt = 104,LevelId = 10310,Award = {[1] = {Id = 1102005,Num = 1}},CardName = "·李轩辕·",CardType = "守护灵",CardQuality = "ui_dtex_Quality_047",HaiBao = "ui_dtex_Post_014",Icon = "icon_1303005",Frame = "ui_dtex_Quality_085",Des = "<color=#df4c4c>【魔】绝技</color>奇数回合释放，攻击敌方单体并回复蓝水晶\r\n<color=#df4c4c>【仙】绝技</color>偶数回合释放，恢复我方全体单位生命，并使敌方全体进入<color=#df4c4c>“虹吸”</color>状态\r\n<color=#df4c4c>【虹吸】</color>攻击带有虹吸状态的目标，可以恢复生命",AwardShow = {Pic1 = "ui_dtex_Post_018"}},
	[104] = {Scene = 1,Nxt = 105,LevelId = 10410,Award = {[1] = {Id = 1025,Num = 1}},CardQuality = "ui_dtex_Quality_033",Icon = "icon_1304026",Frame = "ui_dtex_Quality_085",Des = "<color=#df4c4c>【即时效果】</color>立即获得2个黄水晶\r\n<color=#df4c4c>【攻击效果】</color>攻击敌方单体造成攻击伤害",AwardShow = {Pic1 = "ui_dtex_Post_015"}},
	[105] = {Scene = 1,Nxt = -1,LevelId = 10510,Award = {[1] = {Id = 1028,Num = 1}},CardQuality = "ui_dtex_Quality_034",Icon = "icon_1304027",Frame = "ui_dtex_Quality_085",Des = "<color=#df4c4c>【即时效果】</color>立即获得2个蓝水晶\r\n<color=#df4c4c>【攻击效果】</color>攻击敌方单体造成攻击伤害",AwardShow = {Pic1 = "ui_dtex_Post_015"}}
}