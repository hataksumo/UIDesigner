--[[
-- added by wsh @ 2017-11-30
-- UI模块配置表，添加新UI模块时需要在此处加入
--]]

local UIModule = {
	-- 模块 = 模块配置表
	UILogin = require "UI.UILogin.UILoginConfig",
	UILoading = require "UI.UILoading.UILoadingConfig",
	UINoticeTip = require "UI.UINoticeTip.UINoticeTipConfig",
	UITestMain = require "UI.UITestMain.UITestMainConfig",
	UIBackpack = require "UI.UIBackpack.UIBackpackConfig",
	UIComm = require "UI.UIComm.UICommConfig",
	UIBattle = require "UI.UIBattle.UIBattleConfig",
	UIEmBattle2D = require "UI.UIEmBattle2D.UIEmBattle2DConfig",
	UIEmBattleLoading = require "UI.UIEmBattleLoading.UIEmBattleLoadingConfig",
	UIGMCommand= require "UI.GM.UIGMCommandConfig",
	UIShopMain=require "UI.UIShop.UIShopMainConfig",
	UIMask = require "UI.UIMask.UIMaskConfig",
	UIMail=require"UI.UIMail.UIMailConfig",
	UINotice=require"UI.UINotice.UINoticeConfig",
	UILearnSkill = require"UI.UILearnSkill.UILearnSkillConfig",
	UIGetSkillExp = require("UI.UIGetSkillExp.UIGetSkillExpConfig"),
	UIArenaForChoice = require "UI.UIArenaForChoice.UIArenaForChoiceConfig",
	UIArenaMain = require "UI.UIArenaMain.UIArenaMainConfig",
	UIScoreReward = require "UI.UIArenaScoreReward.UIArenaScoreRewardConfig",
	--UILhgl = require"UI.UILuHuaGuLou.UILhglConfig",
	UIScoreReward = require "UI.UIArenaScoreReward.UIArenaScoreRewardConfig",
	UICommonHelpInfo = require "UI.UICommonHelpInfo.UICommonHelpInfoConfig",
	UIArenaBoxInfoTip = require "UI.UIArenaBoxInfoTip.UIArenaBoxInfoTipConfig",
	UIArenaQualityBattleResult = require "UI.UIArenaQualityBattleResult.UIArenaQualityBattleResultConfig",
	UIArenaReport = require "UI.UIArenaReport.UIArenaReportConfig",
	UIDailyTask = require "UI.UIDailyTask.UIDailyTaskConfig",
	UIExchangeGoldCoins=require "UI.UIExchangeGoldCoins.UIExchangeGoldCoinsConfig",
	UIConfirmationExchange=require "UI.UIConfirmationExchange.UIConfirmationExchangeConfig",
	UITongLin= require "UI.UITongLin.UITongLinConfig",
	UIChat = require "UI.UIChat.UIChatConfig",
	UIFriend= require "UI.UIFriend.UIFriendConfig",
	UIHDQiRiLiBao=require "UI.UIHDQiRiLiBao.UIHDQiRiLiBaoConfig",
	UIHDOnLineGift=require "UI.UIHDOnLineGift.UIHDOnLineGiftConfig",
	UIHDLevelGift=require "UI.UIHDLevelGift.UIHDLevelGiftConfig",
	UISetMain=require "UI.UISet.UISetMainConfig",
	UICommonBoxInfoTip = require "UI.UICommonBoxInfoTip.UICommonBoxInfoTipConfig",
	UIItemTips=require"UI.UIItemTips.UIItemTipsConfig",
	UIWuLingJiActive=require"UI.UIWuLingJiActive.UIWuLingJiActiveConfig",
	UIWeaponUnLock=require"UI.UIWeaponUnLock.UIWeaponUnLockConfig",
	UIShenQiActive=require"UI.UIShenQiActive.UIShenQiActiveConfig",
	UIOpenChat = require "UI.UIOpenChat.UIOpenChatConfig",
	UIMaincityGuide=require "UI.UIMaincityGuide.UIMaincityGuideConfig",
	UIMultipleMonstersChoose = require "UI.UIMultipleMonstersChoose.UIMultipleMonstersChooseConfig",
	UIMultipleMonstersOpen = require "UI.UIMultipleMonstersOpen.UIMultipleMonstersOpenConfig",
	UIMultipleMonstersResoult = require "UI.UIMultipleMonstersResoult.UIMultipleMonstersResoultConfig",
	UILeadingRoleFor=require "UI.UILeadingRoleFor.UILeadingRoleForConfig",
	--TODO:添加通灵中的卡片信息
	UIGetNewCard=require"UI.UIGetNewCard.UIGetNewCardConfig",
	UIGetNewCardResult=require"UI.UIGetNewCardResult.UIGetNewCardResultConfig",
    UIGuideCreateName = require "UI.UIGuideCreateName.UIGuideCreateNameConfig",
	UIGetStrong = require "UI.UIGetStrong.UIGetStrongConfig",
	-------------------------------国战相关界面---------------------------------
	UINationBornSelectCity = require "UI.UINationBornSelectCity.UINationBornSelectCityConfig",
	UINationMain = require "UI.UINationMain.UINationMainConfig",
	UINationWorldMap = require "UI.UINationWorldMap.UINationWorldMapConfig",
	UINationWithResTip = require"UI.UINationWithResTip.UINationWithResTipConfig",
	UINationWarCell = require "UI.UINationWarCell.UINationWarCellConfig",
	UINationCardDetail=require"UI.UINationCardDetail.UINationCardDetailConfig",
	UINationSkillInfo=require"UI.UINationSkillInfo.UINationSkillInfoConfig",
	UINationGuardianSoulForce=require"UI.UINationGuardianSoulForce.UINationGuardianSoulForceConfig",
	UINationTeamConfiguration=require"UI.UINationTeamConfiguration.UINationTeamConfigurationConfig",
	UINationBuildInfo = require"UI.UINationBuildInfo.UINationBuildInfoConfig",
	UINationBanditsTip=require"UI.UINationBanditsTip.UINationBanditsTipConfig",
	UINationAllianceList=require("UI.UINationAliance.UINationAlianceConfig"),
	UINationSelectTeamBattle = require "UI.UINationSelectTeamBattle.UINationSelectTeamBattleConfig",
	UINationTeamListInfo = require "UI.UINationTeamListInfo.UINationTeamListInfoConfig",
	UINationPunitiveMain = require "UI.UINationPunitiveMain.UINationPunitiveMainConfig",
	UINationResourcesMain = require "UI.UINationResourcesMain.UINationResourcesMainConfig",
    UINationScience=require"UI.UINationScience.UINationScienceConfig",
	UINationScienceInfo=require"UI.UINationScienceInfo.UINationScienceInfoConfig",
	UINationAliancePlayerDetail=require"UI.UINationAliancePlayerDetail.UINationAliancePlayerDetailConfig",
	UINationSiegeBattleMain = require "UI.UINationSiegeBattleMain.UINationSiegeBattleMainConfig",
	UINationSiegeRank = require "UI.UINationSiegeRank.UINationSiegeRankConfig",
	UINationRecordEvent = require "UI.UINationRecordEvent.UINationRecordEventConfig",
	UINationCommon = require "UI.UINationCommon.UINationCommonConfig",
	UIPVPMatch = require "UI.UIPVPMatch.UIPVPMatchConfig",
	UINationTeamSideInfo = require "UI.UINationTeamSideInfo.UINationTeamSideInfoConfig",
	UINationOccupiedLand = require "UI.UINationOccupiedLand.UINationOccupiedLandConfig",
	UINationRecruitArmy = require "UI.UINationRecruitArmy.UINationRecruitArmyConfig",
	UINationGuide = require "UI.UINationGuide.UINationGuideConfig",
	UINationSceneFX = require "UI.UINationSceneFX.UINationSceneFXConfig",
	-------------------------------国战相关界面结束---------------------------------

	UIItemJumpTip = require "UI.UIItemJumpTip.UIItemJumpTipConfig",
	UISkillTips = require "UI.UISkillTips.UISkillTipsConfig",
	UIChallengeEntrance=require "UI.UIChallengeEntrance.UIChallengeEntranceConfig",
	UIGuide = require "UI.UIGuide.UIGuideConfig",
	UIGuideButton = require "UI.UIGuideButton.UIGuideButtonConfig",
	UIWeakGuide=require "UI.UIWeakGuide.UIWeakGuideConfig",
	UIBattleGuide=require "UI.UIBattleGuide.UIBattleGuideConfig",
	UISkillBreakThrough = require "UI.UISkillBreakThrough.UISkillBreakThroughConfig",
	UIStoryJump= require "UI.UIStoryJump.UIStoryJumpConfig",
	UINewArtifact = require "UI.UINewArtifact.UINewArtifactConfig",
	UITargetAward = require "UI.UITargetAward.UITargetAwardConfig",
	UIHorseLamp = require "UI.UIHorseLamp.UIHorseLampConfig",
	---新版UI
	UICardList=require "UI.UICardList.UICardListConfig",
	--玩家地獄道
	UIUserHell=require "UI.UIUserHell.UIUserHellConfig",
	UIUserHellUp=require "UI.UIUserHellUp.UIUserHellUpConfig",
	--测试主界面
	UILevelMainNewConfig=require("UI.UILevelMainNew.UILevelMainNewConfig"),
	--恶灵入侵
	UICacodemon=require("UI.UICacodemon.UICacodemonConfig"),
	--技能提示
	UICardSkillTip = require("UI.UICardSkillTip.UICardSkillTipConfig"),
	--集训营
	UITrainingCamp = require("UI.UITrainingCamp.UITrainingCampConfig"),
	--芦花鼓楼
	UILhglNew=require("UI.UILhglNew.UILhglNewConfig"),
	UIPVPTip = require "UI.UIPVPTip.UIPVPTipConfig",
	--技能背包
	UICellSkillPacket = require "UI.UICellSkillPacket.UICellSkillPacketConfig",
	UINationAlianceDetail=require("UI.UINationAlianceDetail.UINationAlianceDetailConfig"),
	UINationAlianceConditionSet=require("UI.UINationAlianceConditionSet.UINationAlianceConditionSetConfig"),
	UIArenaPvp = require "UI.UIArenaPvp.UIArenaPvpConfig",
	--探险
	UIExploreMain=require("UI.UIExploreMain.UIExploreMainConfig"),
	UIExploreChapterList=require("UI.UIExploreChapterList.UIExploreChapterListConfig"),
	UIExploreSetTeamList=require("UI.UIExploreSetTeamList.UIExploreSetTeamListConfig"),
	UIExploreAddSpeed=require("UI.UIExploreAddSpeed.UIExploreAddSpeedConfig"),
	UIExploreSinglePointInfo=require("UI.UIExploreSinglePointInfo.UIExploreSinglePointInfoConfig"),
	--探险
	UIHellItemTips=require("UI.UIHellItemTips.UIHellItemTipsConfig"),

	--嘉年华
	UICarnival=require("UI.UICarnival.UICarnivalConfig"),
	--等级提示
	UILevelUnlockTip=require("UI.UILevelUnlockTip.UILevelUnlockTipConfig"),
	--试炼宝库
	UITestHoard=require("UI.UITestHoard.UITestHoardConfig"),
	--卡牌装备
	UICardEquipment=require("UI.UICardEquipment.UICardEquipmentConfig"),
	--装备详情
	UICardEquipmentProp=require("UI.UICardEquipmentProp.UICardEquipmentPropConfig"),
	--装备打造界面
	UICardEquipmentMake=require("UI.UICardEquipmentMake.UICardEquipmentMakeConfig"),
	--装备属性汇总界面
	UICardEquipmentSummary=require("UI.UICardEquipmentSummary.UICardEquipmentSummaryConfig"),
	--传记副本
	UIBiography=require("UI.UIBiography.UIBiographyConfig"),
	--boss显示
	UIBossShow=require("UI.UIBossShow.UIBossShowConfig"),
	---------------------------留言侦探----------------------------
	UILYZTMain=require("UI.UILYZTMain.UILYZTMainConfig"),
	UILYZTSelectCity=require("UI.UILYZTSelectCity.UILYZTSelectCityConfig"),
	UILYZTStoryRecall=require("UI.UILYZTStoryRecall.UILYZTStoryRecallConfig"),
	-------------------------多人boss----------------------------
	--主界面
	UIWorldBossMain = require "UI.UIWorldBossMain.UIWorldBossMainConfig",
	--房间界面
	UIDRBossRoom=require("UI.UIDRBossRoom.UIDRBossRoomConfig"),
	--阵容编辑界面
	UIDRBossEmBattle=require("UI.UIDRBossEmBattle.UIDRBossEmBattleConfig"),
    --邀请玩家进入房间界面
    UIDRBossInvite = require("UI.UIDRBossInvite.UIDRBossInviteConfig"),
	----------------------------流言侦探---------------------------------
	UILYZTEventInfo = require "UI.UILYZTEventInfo.UILYZTEventInfoConfig",
	UILYZTEventSearch = require "UI.UILYZTEventSearch.UILYZTEventSearchConfig",
	UILYZTEventCollect = require "UI.UILYZTEventCollect.UILYZTEventCollectConfig",
	UILYZTMessageList= require "UI.UILYZTMessageList.UILYZTMessageListConfig",
	UILYZTTestify= require "UI.UILYZTTestify.UILYZTTestifyConfig",
	UILYZTChat=require "UI.UILYZTChat.UILYZTChatConfig",
	UILYZTItemList=require "UI.UILYZTItemList.UILYZTItemListConfig",
    UILYZTCaseList=require "UI.UILYZTCaseList.UILYZTCaseListConfig",
	------------------------------------------------------------
	UIGetNewCardBuyItemTip=require "UI.UIGetNewCardBuyItemTip.UIGetNewCardBuyItemTipConfig";
	UINewFunOpen=require "UI.UINewFunOpen.UINewFunOpenConfig";
	--国战新战报UI
	UINationNewBattleLogs=require("UI.UINationNewBattleLogs.UINationNewBattleLogsConfig"),
}

local UIConfig = {}
for _,ui_module in pairs(UIModule) do 
	for _,ui_config in pairs(ui_module) do
		local ui_name = ui_config.Name
		assert(UIConfig.ui_name == nil, "Aready exsits : "..ui_name)
		if ui_config.View then
			assert(ui_config.PrefabPath ~= nil and #ui_config.PrefabPath > 0, ui_name.." PrefabPath empty.")
		end
		UIConfig[ui_name] = ui_config
	end
end

return ConstClass("UIConfig", UIConfig)