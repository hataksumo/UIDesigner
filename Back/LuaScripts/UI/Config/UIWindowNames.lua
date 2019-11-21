--[[
-- added by wsh @ 2017-11-30
-- UI窗口名字定义，手动添加
--]]

local UIWindowNames = {
	-- GM
	UIGMCommand = "UIGMCommand",
	-- 登陆模块
	UILogin = "UILogin",
	UILoginServer = "UILoginServer",
	-- 场景加载模块
	UILoading = "UILoading",
	-- Tip窗口
	UINoticeTip = "UINoticeTip",
	UILuaNoticeTip = "UILuaNoticeTip",
	-- TestMain
	UITestMain = "UITestMain",
	-- BattleMain
	UIBattleMain = "UIBattleMain",
	UIBattleIn = "UIBattleIn",
	UIBattleSettlement = "UIBattleSettlement",
	UIBattleSettlementFail = "UIBattleSettlementFail",
	UIBattleEnemySkill = "UIBattleEnemySkill",
	UIGetStrong = "UIGetStrong",
    -- 起名字界面
    UIGuideCreateName = "UIGuideCreateName",
	--寄灵人列表
	UICardPool = "UICardPool",
	--背包界面
	UIBackpack = "UIBackpack",
	--寄灵人详情
	UICardDetails = "UICardDetails",
	UICardHell = "UICardHell",					---地狱道
	UICardSkill = "UICardSkill",				---技能
	UICardWeapon = "UICardWeapon",				---专属武器
	UICardEntanglement = "UICardEntanglement",	---羁绊
	UISkillInfo = "UISkillInfo",
	UILearnSkill = "UILearnSkill",
	UIWeaponStrength = "UIWeaponStrength",      ---武器强化
	UIWeaponUnseal = "UIWeaponUnseal",          ---武器解封

	UILeadingRoleFor="UILeadingRoleFor",--主角征集
	--通用背包物品使用
	UICommItemUse = "UICommItemUse",
	--通用背包物品出售
	UICommItemSell = "UICommItemSell",
	--通用获得物品
	UICommGetRewards = "UICommGetRewards",
	--通用弹框
	UICommTip = "UICommTip",
	--地图信息
	UIChapter = "UIChapter",
	UILevel = "UILevel",
	UIMapHangUpBegin = "UIMapHangUpBegin",
	UIMapHangUpEnd = "UIMapHangUpEnd",
	UIMapEmBattle = "UIMapEmBattle",
	UILevelMain = "UILevelMain",
	UILevelDetail = "UILevelDetail",
	--抽卡
	UIDrawCardsMain = "UIDrawCardsMain",
	UIDrawCardsBegin = "UIDrawCardsBegin",
	UIDrawCardResult="UIDrawCardResult",
	UIDrawCardHandBook="UIDrawCardHandBook",
	--千机黑刹
	UIMultipleMonstersChoose = "UIMultipleMonstersChoose",
	UIMultipleMonstersOpen = "UIMultipleMonstersOpen",
	UIMultipleMonstersResoult = "UIMultipleMonstersResoult",
	--战中布阵
	UIEmBattle = "UIEmBattle",
	--战外布阵
	UIEmBattle2D = "UIEmBattle2D",
	--战斗加载
	UIEmBattleLoading = "UIEmBattleLoading",
	--商店
	UIWindowShopMain="UIWindowShopMain",
	UIShopBuyItem="UIShopBuyItem",
	--通用遮罩
	UIMask = "UIMask",
	--邮件
	UIMail="UIMail",
	--公告
	UINotice="UINotice",
	--技能背包
	UISkillBackPack = "UISkillBackPack",
	--获取技能经验
	UIGetSkillExp = "UIGetSkillExp",
	--兑换技能
	UISkillExchange = "UISkillExchange",
	--兑换详情界面
	UISkillExchangeInfo = "UISkillExchangeInfo",
	UIOpenChat = "UIOpenChat",
	--竞技场入口选择
	UIArenaForChoice = "UIArenaForChoice",
	--竞技场主界面
	UIArenaMain = "UIArenaMain",
	--个人boss
	UISoloBoss = "UISoloBoss",
	--竞技场积分奖励列表
	UIArenaScoreReward = "UIArenaScoreReward",
	--竞技场防守阵容信息
	UIArenaGuardTeamInfo = "UIArenaGuardTeamInfo",
	--通用帮助界面
	UICommonHelpInfo = "UICommonHelpInfoConfig",
	--教学关卡
	UITeaching = "UITeaching",
	--竞技场宝箱展示
	UIArenaBoxInfoTip = "UIArenaBoxInfoTip",
	--竞技场快速战斗结束界面
	UIArenaQualityBattleResult = "UIArenaQualityBattleResult",
	--竞技场战报界面
	UIArenaReport = "UIArenaReport",
	--挂机关卡
	UIHangupLevel = "UIHangupLevel",
	UIPatrolDetails = "UIPatrolDetails",
	UIPatrolDetailsDialog = "UIPatrolDetailsDialog",
	UIPatrolOverview = "UIPatrolOverview",
	UIPatrolBuy = "UIPatrolBuy",
	--每日任務
	UIDailyTask = "UIDailyTask",
	--神器
	UIArtifact = "UIArtifact",
	--寄灵人碎片兑换
	UIJlrChipExchange = "UIJlrChipExchange",
	--游戏币兑换
	UIExchangeGoldCoins="UIExchangeGoldCoins",
	--确认游戏兑换界面
	UIConfirmationExchange="UIConfirmationExchange",
	--体力兑换界面
	UIGainingPhysicalStrength="UIGainingPhysicalStrength",
	--体力使用界面
	UIUsingPhysicalStrength="UIUsingPhysicalStrength",
	--收集系统
	UISJMainView = "UISJMainView",
	UISJGetCoinSJB = "UISJGetCoinSJB",
	UISJExchangeItem = "UISJExchangeItem",
	UISJCommExchange = "UISJCommExchange",
	--通灵
	UITongLin = "UITongLin",
	--新抽卡
	UIGetNewCard = "UIGetNewCard",
	--阵法系统
	UIZhenFa = "UIZhenFa",
	UIZhenFaXuexi = "UIZhenFaXuexi",
	--聊天
	UIChat = "UIChat",
	UIGetNewCardResult = "UIGetNewCardResult",
	--七日登录礼包
	UIHDQiRiLiBao="UIHDQiRiLiBao",
	--在线时长礼包
	UIHDOnLineGift="UIHDOnLineGift",
	--等级礼包
	UIHDLevelGift="UIHDLevelGift",
	--卡牌升星
	UICardStar="UICardStar",
	--好友
	UIFriend="UIFriend",
	UIPlayerFunc = "UIPlayerFunc",
	--设置界面
	UISetMain="UISetMain",
	UIHeadMain="UIHeadMain",
	UINickNameTip="UINickNameTip",
	--卡牌攻略
	UICardStrategy = "UICardStrategy",
	--公共宝箱展示窗口
	UICommonBoxInfoTip = "UICommonBoxInfoTip",
	--七日礼包宝箱
	UISevenBoxInfoTip="UISevenBoxInfoTip",
	--排行榜
	UIPhb="UIPhb",
	--物品弹窗
	UIItemTips = "UIItemTips",
	--武灵技激活
	UIWuLingJiActive="UIWuLingJiActive",
	--专属武器解封
	UIWeaponUnLock="UIWeaponUnLock",
	--神器激活
	UIShenQiActive="UIShenQiActive",
	UIMaincityGuide="UIMaincityGuide",--新手主城界面
	-----------------------留言侦探-------------------------------------
	UILYZTMain="UILYZTMain",--流言侦探主界面
	UILYZTSelectCity="UILYZTSelectCity",--留言侦探选择城市
	UILYZTStoryRecall="UILYZTStoryRecall",--流言侦探故事回顾界面
	UILYZTMessageList="UILYZTMessageList",--流言侦探信息界面
	UILYZTTestify="UILYZTTestify",--流言侦探指征界面
	UILYZTChat="UILYZTChat",--流言侦探聊天
	UILYZTItemList="UILYZTItemList",--流言侦探道具界面
	UILYZTCaseList="UILYZTCaseList",--流言侦探案件界面
	-----------------------------------------------------------------------------
	UINewFunOpen="UINewFunOpen",--新功能开启
	-------------------------------国战相关界面---------------------------------
	--国战，选择出生区域界面
	UINationBornSelectCity = "UINationBornSelectCity",
	--国战主界面
	UINationMain ="UINationMain",
    --国战世界地图
    UINationWorldMap = "UINationWorldMap",
	--国战纪事
	UINationRecordEvent = "UINationRecordEvent",
	UINationRecordEventDetail = "UINationRecordEventDetail",
	UINationRecordEventShowItem = "UINationRecordEventShowItem",
	--国战通用界面
	UINationWithResTip = "UINationWithResTip",			--带资源提示的提示界面
	-- 国战城镇信息界面
	UINationTownBuildInfo ="UINationTownBuildInfo",			--场景UI,城镇信息界面
	UINationSiegeBuildInfo ="UINationSiegeBuildInfo",		--场景UI,域都卫都关隘信息界面
	UINationResBuildInfo ="UINationResBuildInfo",		--场景UI,资源区讨伐区信息界面
	UINationBuildName ="UINationBuildName",		--场景UI,城镇名字和资源区地块放弃时间
	UINationBuildInfo = "UINationBuildInfo",
	UINationRoadblockTip = "UINationRoadblockTipModel",
	--攻城战
	UINationSiegeBattleMain = "UINationSiegeBattleMain",    --杀敌界面
    UINationSiegeRank = "UINationSiegeRank",                --排行榜，奖励界面
	UINationWarCell ="UINationWarCell", 	                --接战区信息界面
	--国战卡牌技能信息
	UINationSkillInfo="UINationSkillInfo",
	--军团信息
	UINationGuardianSoulForce="UINationGuardianSoulForce",
	--队伍充能
	UINationTeamConfiguration="UINationTeamConfiguration",
	UINationCardDetail="UINationCardDetail",

	UINationTeamListInfo = "UINationTeamListInfo",
	UINationResAndMonster = "UINationResAndMonster",

	UINationAllianceList="UINationAllianceList",
	--国战联盟主界面
	UINationAllianceMain="UINationAllianceMain",
	--国战剿匪界面
	UINationBanditsTip="UINationBanditsTip",
	--讨伐区
	UINationPunitiveMain = "UINationPunitiveMain",
	UINationPunitiveTargetInfo = "UINationPunitiveTargetInfo",
	--资源区
	UINationResourcesMain = "UINationResourcesMain",
	UINationResourcesTargetInfo = "UINationResourcesTargetInfo",
    --坐标收藏
    UINationCollectPoint = "UINationCollectPoint",
    UINationPositionPanel = "UINationPositionPanel",
    UINationTurnToMark = "UINationTurnToMark",
	UINationPositionShare = "UINationPositionShare",
	--占领领地
	UINationOccupiedLand = "UINationOccupiedLand",
	--国战科技
	UINationScience="UINationScience",
	UINationScienceInfo="UINationScienceInfo",
	UINationAlianceDetail="UINationAlianceDetail",--国战联盟详情
	UINationAlianceConditionSet="UINationAlianceConditionSet",--国战联盟申请条件设置
	UINationAliancePlayerDetail = "UINationAliancePlayerDetail",--国战玩家详情
	UITargetAward = "UITargetAward",
	UINationMarchMain = "UINationMarchMain",
	UINationTeamSideInfo ="UINationTeamSideInfo",
	UINationRecruitArmy ="UINationRecruitArmy",
	UINationDefRecoverInfo = "UINationDefRecoverInfo",
	--国战新战报
	UINationNewBattleLogs="UINationNewBattleLogs",
	UINationGuide = "UINationGuide",

	--国战UI特效
	UINationSceneFX = "UINationSceneFX",
	-------------------------------国战相关界面结束---------------------------------
	UINewArtifact = "UINewArtifact",
	--技能彈窗
	UISkillTips = "UISkillTips",
	UIBattleEnemyInfo = "UIBattleEnemyInfo",
	UICardShow="UICardShow",--卡牌展示
	--挑战整合窗口
	UIChallengeEntrance ="UIChallengeEntrance",
	--引导
	UIGuide= "UIGuide",
	UIGuideButton = "UIGuideButton",
	--弱引导
	UIWeakGuide="UIWeakGuide",
	--战斗中引导
	UIBattleGuide="UIBattleGuide",
	--技能突破
	UISkillBreakThrough = "UISkillBreakThrough",
	UIStoryJump="UIStoryJump",--剧情跳过
	UINationSelectTeamBattle = "UINationSelectTeamBattle",
	UIHorseLamp = "UIHorseLamp",--跑马灯

	UIArenaPvp = "UIArenaPvp",
	--更改新版 UI
	UICardList="UICardList",
	--卡牌提升
	UICardUpTip="UICardUpTip",
	--玩家地獄道
	UIUserHell="UIUserHell",
	UIUserHellUp="UIUserHellUp",
	--恶灵入侵
	UICacodemon="UICacodemon",
	--物品跳转
	UIItemJumpTip = "UIItemJumpTip",
	--集训营
	UITrainingCamp = "UITrainingCamp",
	UICellSkillPacket = "UICellSkillPacket",
	UICardUpStarTip="UICardUpStarTip",--升星帮助文档
	UICardTalentTip="UICardTalentTip",--天赋
	UICardStarUpSuccess="UICardStarUpSuccess",--升星成功tip
	UICardUpTip="UICardUpTip",
	UILevelMainNew="UILevelMainNew",--关卡新界面
	UILevelNewDetail="UILevelNewDetail",--关卡详情界面
	UICardSkillTip= "UICardSkillTip",
	UILhglNew="UILhglNew",-- 芦花鼓楼新
	UICommonCostTip="UICommonCostTip",--公用提示弹窗
	UIExploreRewardList="UIExploreRewardList",--探险领取奖励界面
	UICarnival="UICarnival",--嘉年华
	UITestHoard="UITestHoard",--试炼宝库
	UIBiography="UIBiography",--传记副本
	--TODO:添加通灵卡片信息的窗口
	UITonglingCardInfo="UITonglingCardInfo",
	UIExploreMain="UIExploreMain",--探险主界面
	UIExploreChapterList="UIExploreChapterList",--探险章节界面
	UIExploreSetTeamList="UIExploreSetTeamList",--探险设置队伍界面
	UIExploreAddSpeed="UIExploreAddSpeed",--探险加速界面
	UIExploreSinglePointInfo="UIExploreSinglePointInfo",--探险单个点的界面
	UIPVPMatch = "UIPVPMatch",--pvp匹配
	UIPVPTip = "UIPVPTip", --pvp匹配提示
	UIHellItemTips="UIHellItemTips",--地狱道物品弹窗
	UILevelUnlockTip="UILevelUnlockTip",--等级提示
	-----装备
	UICardEquipment="UICardEquipment",--卡牌装备
	UICardEquipmentProp="UICardEquipmentProp",--卡牌装备详情
	UICardEquipmentMake="UICardEquipmentMake",--装备打造界面
	UICardEquipmentSummary="UICardEquipmentSummary",--装备属性汇总界面
	-------------------------多人boss----------------------------
	UIWorldBossMain = "UIWorldBossMain", --主界面
	UIDRBossRoom="UIDRBossRoom",--房间界面
	UIDRBossEmBattle="UIDRBossEmBattle",--布阵界面
    UIDRBossInvite = "UIDRBossInvite",--邀请玩家界面
	--灵探
	UILYZTEventInfo = "UILYZTEventInfo",
	UILYZTEventSearch = "UILYZTEventSearch",
	UILYZTEventCollect = "UILYZTEventCollect",
	----------------------------------------
	UIGetNewCardBuyItemTip="UIGetNewCardBuyItemTip",--抽卡购买券界面
	UIBossShow = "UIBossShow",

}

return ConstClass("UIWindowNames", UIWindowNames)