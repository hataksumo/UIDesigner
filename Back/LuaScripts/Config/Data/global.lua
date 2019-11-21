--[[
output from excel global.全局.xlsx
--note:
全局表
全局表
colums:
{Id,行ID} ,{Key,键} ,{valueN,数值型值} ,{valueS,字符串型值} ,{valueB,布尔值} ,{valueNA,数值数组型值} ,{valueSA,字符串数组型值}
primary key:
#0 [全局表]: Id
#1 [国战-全局表]: Id
]]
local _T = LangUtil.Language
if ddt["global"] ~= nil then
	return ddt["global"]
end
local data = {
	[101] = {Key = "MailUsefulLife",valueN = 7},--玩家邮件有效期（天）
	[102] = {Key = "MailBoxCapacity",valueN = 10},--玩家邮箱容量
	[103] = {Key = "MaxStamina",valueN = 100},--玩家体力上限
	[104] = {Key = "InitStamina",valueN = 100},--玩家初始体力
	[105] = {Key = "StaminaRecover",valueN = 6},--每N分钟回复1点体力
	[106] = {Key = "NeedTeachLevel",valueN = 1},--教学关卡开放等级
	[107] = {Key = "NeedSoloLevel",valueN = 1},--单人Boss开放等级
	[108] = {Key = "NeedRelicLevel",valueN = 1},--神器开放等级
	[109] = {Key = "NeedBattleArrayLevel",valueN = 1},--阵法开放等级
	[110] = {Key = "NeedCollectLevel",valueN = 1},--收集开放等级
	[111] = {Key = "SevenDayGem",valueN = 20},--七日奖励基础奖励钻石数
	[112] = {Key = "ResetTime",valueS = "5:00:00"},--重置时间
	[113] = {Key = "QualityColor",valueSA = {"EDEFC9","8BEC58","58ECDD","BB1ECB","F89D04"}},--品质颜色
	[114] = {Key = "MaxCoinExchangeTimes",valueN = 30},--最大金币兑换次数
	[115] = {Key = "TiLiShopId",valueN = 1203},--体力的商品货物ID
	[116] = {Key = "SkillExpId",valueN = 1401005},--技能经验的ID
	[117] = {Key = "ChangeNameCost",valueNA = {0,50,100,200}},--修改角色名消耗“灵玉”数
	[118] = {Key = "OnlineGiftTimeOut",valueN = 3},--在线礼包小时时间
	[119] = {Key = "FriendListNum",valueN = 6},--好友列表显示数量
	[120] = {Key = "FriendNumLimit",valueN = 30},--好友最大数量
	[121] = {Key = "BlackNumLimit",valueN = 10},--黑名单最大数量
	[122] = {Key = "ContactsNumLimit",valueN = 10},--联系人最大数量
	[123] = {Key = "FriendApplyLimit",valueN = 20},--好友申请数量上限
	[124] = {Key = "FriendApplyValidity",valueN = 1},--好友申请有效时间(天)
	[125] = {Key = "FriendApplyHello",valueS = "我们已经是好友了，快来和我一起游戏吧！"},--好友申请招呼
	[126] = {Key = "FriendValidation",valueSA = {"这位少侠根骨清奇灵力非凡，不如加个好友？","吾算得今日大吉，若并肩战斗必将无往不胜！","今天份的快乐是你给的，成为我的伙伴好不？","遇到你真是太好了（づ￣3￣）づ╭❤～","小姐姐，我在妳的心裡迷路了，要不要帶我出來"}},--好友招呼
	[127] = {Key = "ChatMax",valueN = 30},--聊天最大数量
	[128] = {Key = "JLRSkill1UlockLv",valueN = 1},--寄灵人技能1等级
	[129] = {Key = "JLRSkill2UlockLv",valueN = 1},--寄灵人技能2等级
	[130] = {Key = "SHLSkillUnlockLv",valueN = 1},--守护灵技能解锁等级
	[131] = {Key = "SHLSkillSlot1UnlockLv",valueN = 1},--守护灵技能槽1解锁等级
	[132] = {Key = "SHLSkillSlot2UnlockLv",valueN = 1},--守护灵技能槽2解锁等级
	[133] = {Key = "CollectShopId",valueN = 3},--收集商店ID
	[134] = {Key = "ExWeaponUnlockLv",valueN = 1},--专属武器解锁等级
	[135] = {Key = "ReedTowerMail",valueN = 104},--芦花古楼每日奖励邮件ID
	[136] = {Key = "XLLGoodId",valueN = 1103},--巡逻令商品ID
	[137] = {Key = "DefaultCritDmg",valueN = 1.5},--默认爆伤
	[138] = {Key = "BoxDesc",valueS = "达到指定星级后可领取"},--星星宝箱的默认提示
	[139] = {Key = "ZuanShiShangDian",valueN = -1},--钻石商店的shopTagId
	[140] = {Key = "ReduceArenaScore",valueN = 150},--竞技场每赛季积分衰减
	[141] = {Key = "PveRoundLimit",valueN = 15},--PVE战斗回合限制
	[142] = {Key = "PvpRoundLimit",valueN = 15},--PVP战斗回合限制
	[143] = {Key = "PaiQianFac",valueN = 3},--派遣巡逻系数
	[144] = {Key = "TatalDemagePosW",valueSA = {"0.5","0.7"}},--我方总伤害位置
	[145] = {Key = "InitCrystalAmount",valueN = 3},--初始回合获得水晶数量
	[146] = {Key = "InitCrystalAmountMonster",valueN = 3},--初始回合获得水晶数量
	[147] = {Key = "ExpItemID",valueN = 1401014},--经验的道具ID
	[148] = {Key = "TatalDemagePosD",valueSA = {"0.5","0.3"}},--敌方总伤害位置
	[149] = {Key = "wBossMaxTime",valueN = 6},--世界BOSS最大次数
	[150] = {Key = "wBossEverydayTime",valueN = 2},--世界BOSS每日回复次数
	[151] = {Key = "wBossRegainTime",valueS = "5:00"},--世界BOSS每日次数回复时间
	[152] = {Key = "HangTeam",valueNA = {5,40,80}},--派遣挂机队伍的等级开启
	[153] = {Key = "MuShouLingId",valueN = 1604001},--牧守令Id
	[154] = {Key = "MuShouLingTime",valueN = 7200},--牧守令时间
	[155] = {Key = "HangExpInteval",valueN = 60},--挂机经验间隔
	[156] = {Key = "HangMaxTime",valueN = 28800},--最大挂机时间
	[157] = {Key = "ArenaBeginTime",valueS = "2019-8-28 05:00:00"},--竞技场开服时间
	[158] = {Key = "ArenaDuration",valueN = 14},--竞技场持续时间
	[159] = {Key = "BattleSpeed",valueN = 1.8},--战斗速度倍率
	[160] = {Key = "InitBattleSpeed",valueN = 1.1},--初始战斗速度倍率
	[161] = {Key = "WeekPromoteDua",valueNA = {8}},--嘉年华持续时间
	[162] = {Key = "AutoFightWaitTime",valueN = 0.1},--自动战斗选技能等待时间
	[163] = {Key = "QualityColor",valueSA = {"efeade","5cd882","4ac6ef","d178ff","ffa82b","df4c4c","df4c4c","df4c4c"}},--品质色
	[164] = {Key = "EqpDeComGoldReback",valueN = 1},--装备分解金币返还比例
	[165] = {Key = "CaoYanBingTalkID",valueNA = {10102,10103,10105,10107}},--第一章曹焱兵触发泡泡的关卡
	[166] = {Key = "CaoYanBingTalkNotice",valueSA = {"我在街尾等你，来到我这才有资格成为寄灵人！","快速召唤守护灵，才能立于不败之地！","使用武灵技获得水晶，加速绝技释放！","调整站位或突破守护灵，继续前进！"}},--第一章曹焱兵触发泡泡的内容
	[167] = {Key = "BattleChatBubblesLastTime",valueN = 10},--战斗中聊天泡泡的停留时间（单位：秒）
	[169] = {Key = "MaxSpeedupTimes",valueN = 12},--每日最大加速次数
	[170] = {Key = "SpeedupCost",valueNA = {50,50,75,75,100,100,200,200,500,500,1000,1000}},--探险加速阶梯价格
	[171] = {Key = "JlrA",valueN = 0.354839},--寄灵人防御分子系数
	[172] = {Key = "JlrB",valueN = 0.709677},--寄灵人防御分母系数
	[173] = {Key = "ShlA",valueN = 0.428571},--守护灵防御分子系数
	[174] = {Key = "ShlB",valueN = 0.857143},--守护灵防御分母系数
	[175] = {Key = "MinAtkRate",valueN = 0.2},--最小攻击作用系数
	[176] = {Key = "QualityPic",valueSA = {"ui_dtex_Quality_106","ui_dtex_Quality_107","ui_dtex_Quality_108","ui_dtex_Quality_109","ui_dtex_Quality_110","ui_dtex_Quality_110","ui_dtex_Quality_110"}},--品质图片
	[177] = {Key = "CardDailyRecover",valueN = 10},--传记本每日回复次数
	[178] = {Key = "CardDailyMaxTimes",valueN = 30},--传记本最大积累次数
	[179] = {Key = "CardDailyBuy",valueNA = {20,30,50,70,100,120,150,200,300,500}},--传记本购买消耗（长度为最大购买次数）
	[180] = {Key = "CardDailyIniTimes",valueN = 10},--传记本初始次数
	[181] = {Key = "CardLuckyPointPerDraw",valueN = 1},--每抽1次卡增加的“感灵值”
	[182] = {Key = "NoviceCardDrawOptionTimesLimit",valueN = 20},--守护灵新手抽卡项可抽卡次数，抽完后移除该抽卡项
	[201] = {Key = "JLREquPartName",valueSA = {"香囊","兜帽","裤子","衣服","鞋子","护腕","项链","戒指"}},--寄灵人装备部位名称
	[202] = {Key = "SHLEquPartName",valueSA = {"护心镜","头盔","腿甲","胸甲","战靴","臂甲","护颈","扳指"}},--守护灵装备部位名称
	[203] = {Key = "EquPackLimit",valueN = 400},--装备背包数量上限
	[204] = {Key = "WorldChannelChatCD",valueN = 30},--世界频道发言间隔（单位：秒）
	[205] = {Key = "SeekingTeamChatCD",valueN = 30},--在系统频道发送寻求组队信息的间隔（单位：秒）
	[206] = {Key = "InitStaminatl",valueN = 30},--灵探系统玩家初始体力
	[207] = {Key = "StaminaRecovertl",valueN = 360},--灵探系统每N秒回复1点体力
	[10001] = {Key = "TeamMaximum",valueN = 3},--国战-初始部队数量上限
	[10002] = {Key = "InitialWood",valueN = 10000},--国战-初始银木数量
	[10003] = {Key = "InitialIron",valueN = 10000},--国战-初始赤铁数量
	[10004] = {Key = "InitialStone",valueN = 10000},--国战-初始精石数量
	[10005] = {Key = "InitialFood",valueN = 10000},--国战-初始灵谷数量
	[10006] = {Key = "InitialWoodMax",valueN = 10000},--国战-初始银木储量上限
	[10007] = {Key = "InitialIronMax",valueN = 10000},--国战-初始赤铁储量上限
	[10008] = {Key = "InitialStoneMax",valueN = 10000},--国战-初始精石储量上限
	[10009] = {Key = "InitialFoodMax",valueN = 10000},--国战-初始灵谷储量上限
	[10010] = {Key = "InitialResProductNum",valueN = 1000},--国战-初始资源产量(量)
	[10011] = {Key = "InitialResProductSec",valueN = 3600},--国战-初始资源速率(秒)
	[10012] = {Key = "FameSpeedNum",valueN = 1},--声望增长数量(量)
	[10013] = {Key = "FameSpeedSec",valueN = 60},--声望增长速率(秒)
	[10014] = {Key = "DecreeSpdNum",valueN = 1},--军令恢复数量(量)
	[10015] = {Key = "DecreeSpdSec",valueN = 3600},--军令恢复速率(秒)
	[10016] = {Key = "ResRefresh",valueN = 30},--资源产量结算刷新时间(秒)
	[10017] = {Key = "InitialCorps",valueN = 1},--队伍初始军团id
	[10018] = {Key = "InitialCorpsNum",valueN = 2},--初始可解锁军团上限
	[10019] = {Key = "GridSpeed",valueN = 2},--1格单位基础行军时间(秒)
	[10020] = {Key = "MobilityNum",valueN = 1},--行动力恢复数量(量)
	[10021] = {Key = "MobilitySpdSec",valueN = 360},--行动力恢复速率(秒)
	[10022] = {Key = "ManoeuvreCost",valueN = 10},--行动力消耗-调动
	[10023] = {Key = "WipeOutCost",valueN = 10},--行动力消耗-剿匪
	[10024] = {Key = "AttackCost",valueN = 20},--行动力消耗-出征(打资源点/讨伐怪/接战区地块)
	[10025] = {Key = "DefendCost",valueN = 20},--行动力消耗-驻守
	[10026] = {Key = "KillingCost",valueN = 30},--行动力消耗-攻城战杀敌层
	[10027] = {Key = "BrokeCost",valueN = 30},--行动力消耗-攻城战破城层
	[10028] = {Key = "WipeOutEndLv",valueN = 4},--剿匪挑战限制截止等级
	[10029] = {Key = "InjuredRecovery",valueN = 180},--重伤恢复时间(秒)
	[10030] = {Key = "RecruitReturn",valueN = 1},--停止征兵时资源返还比例
	[10031] = {Key = "UninstallReturn",valueN = 0.8},--下阵时资源返还比例
	[10032] = {Key = "ResDurNeutral",valueN = 1},--资源点-中立时耐久
	[10033] = {Key = "ResDurOccupied",valueN = 100},--资源点-占领后耐久
	[10034] = {Key = "ResDurNum",valueN = 1},--资源点-耐久恢复量
	[10035] = {Key = "ResDurSpdSec",valueN = 60},--资源点-耐久恢复速率(秒)
	[10036] = {Key = "ResAbandon",valueN = 300},--资源点-放弃所需时间(秒)
	[10037] = {Key = "ResAvoidTime",valueN = 300},--资源点-免战时间(秒)
	[10038] = {Key = "BattleDurNeutral",valueN = 1},--接战区-中立时耐久
	[10039] = {Key = "BattleDurNum",valueN = 1},--接战区-耐久恢复量
	[10040] = {Key = "BattleDurSpdSec",valueN = 60},--接战区-耐久恢复速率(秒)
	[10041] = {Key = "BattleAbandon",valueN = 300},--接战区-放弃所需时间(秒)
	[10042] = {Key = "BattleAvoidTime",valueN = 300},--接战区-免战时间(秒)
	[10043] = {Key = "TechQueue",valueN = 2},--科技-研发队列数量
	[10044] = {Key = "TechReturn",valueN = 0.8},--科技-取消升级返还资源
	[10045] = {Key = "TechFinish",valueN = 20},--科技-立即完成消耗钻石
	[10046] = {Key = "ReserveForceNum",valueN = 1},--城镇储备军力恢复量
	[10047] = {Key = "ReserveForceSpdSec",valueN = 60},--城镇储备军力恢复速率(秒)
	[10048] = {Key = "ForceConstant",valueN = 100},--统御等级对应军力值系数
	[10049] = {Key = "AutoSupply",valueN = 300},--讨伐区-自动补充时间n
	[10050] = {Key = "TriggerRefresh",valueN = 0.5}--讨伐区-下限触发刷新数量x
}
ddt["global"] = data
SetLooseReadonly(data)
return data