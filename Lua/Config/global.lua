--[[
--note:
全局表
colums:
{Id,行ID} ,{Key,键} ,{valueN,数值型值} ,{valueS,字符串型值} ,{valueB,布尔值} ,{valueNA,数值数组型值} ,{valueSA,字符串数组型值}
primary key:
#0 [全局表]: Key
]]
if ddt["global"] ~= nil then
	return ddt["global"]
end
local data = {
	MailUsefulLife = 7,--玩家邮件有效期（天）
	MailBoxCapacity = 10,--玩家邮箱容量
	MaxStamina = 100,--玩家体力上限
	InitStamina = 100,--玩家初始体力
	StaminaRecover = 6,--每N分钟回复1点体力
	NeedTeachLevel = 1,--教学关卡开放等级
	NeedSoloLevel = 1,--单人Boss开放等级
	NeedRelicLevel = 1,--神器开放等级
	NeedBattleArrayLevel = 1,--阵法开放等级
	NeedCollectLevel = 1,--收集开放等级
	SevenDayGem = 100,--七日奖励基础奖励钻石数
	ResetTime = "5:00:00",--重置时间
	QualityColor = {"EDEFC9","8BEC58","58ECDD","BB1ECB","F89D04"},--品质颜色
	MaxCoinExchangeTimes = 10,--最大金币兑换次数
	TiLiShopId = 1203,--体力的商品货物ID
	SkillExpId = 1401005,--技能经验的ID
	ChangeName = 100,--改变名字钻石消耗
	OnlineGiftTimeOut = 3,--在线礼包小时时间
	FriendListNum = 6,--好友列表显示数量
	FriendNumLimit = 30,--好友最大数量
	BlackNumLimit = 10,--黑名单最大数量
	ContactsNumLimit = 10,--联系人最大数量
	FriendApplyLimit = 20,--好友申请数量上限
	FriendApplyValidity = 1,--好友申请有效时间(天)
	FriendApplyHello = "我们已经是好友了，快来和我一起游戏吧！",--好友申请招呼
	FriendValidation = {"这位少侠根骨清奇灵力非凡，不如加个好友？","吾算得今日大吉，若并肩战斗必将无往不胜！","今天份的快乐是你给的，成为我的伙伴好不？","遇到你真是太好了（づ￣3￣）づ╭❤～","小姐姐，我在妳的心裡迷路了，要不要帶我出來"},--好友招呼
	ChatMax = 30,--聊天最大数量
	JLRSkill1UlockLv = 1,--寄灵人技能1等级
	JLRSkill2UlockLv = 1,--寄灵人技能2等级
	SHLSkillUnlockLv = 1,--守护灵技能解锁等级
	SHLSkillSlot1UnlockLv = 1,--守护灵技能槽1解锁等级
	SHLSkillSlot2UnlockLv = 1,--守护灵技能槽2解锁等级
	CollectShopId = 3,--收集商店ID
	ExWeaponUnlockLv = 30,--专属武器解锁等级
	ReedTowerMail = 104,--芦花古楼每日奖励邮件ID
	XLLGoodId = 1204,--巡逻令商品ID
	DefaultCritDmg = 1.5--默认爆伤
}
ddt["global"] = data
SetLooseReadonly(data)
return data