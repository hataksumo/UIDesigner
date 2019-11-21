--[[
-- added by wsh @ 2018-01-08
-- 特效
--]]

local EffectConfig = {
	UITaskFinish = {
		Name = "UITaskFinish",
		EffectPath = "Effect/Prefab/UI/ef_ui_TaskFinish.prefab",
		-- 是否为UI特效，场景特效等可能使用情况会复杂些，到时候再考虑是否做扩展
		IsUIEffect = true,
		-- 是否循环：循环的特效不会被自动回收
		IsLoop = true,
		-- 存活时间：不循环时生效，存活时间到特效会自动回收
		LiveTime = 0,
	},
	UIPetRankYellow = {
		Name = "UIPetRankYellow",
		EffectPath = "Effect/Prefab/UI/ef_ui_pet_rank_yellow_test.prefab",
		IsUIEffect = true,
		IsLoop = true,
		LiveTime = 0,
	},
	UICardPoolBtnPress = {
		Name = "UICardPoolBtnPress",
		EffectPath = "Effect/Prefab/UI/ef_ui_card_pool_btn_press.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UICardPoolShowCard = {
		Name = "UICardPoolShowCard",
		EffectPath = "Effect/Prefab/UI/ef_ui_show_image.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UIBackpackBtnPress = {
		Name = "UIBackpackBtnPress",
		EffectPath = "Effect/Prefab/UI/ef_ui_backpack_btn_press.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
    UITongLingShowCard = {
        Name = "UIBackpackShowCard",
        EffectPath = "Effect/Prefab/UI/ef_ui_show_image.prefab",
        IsUIEffect = true,
        IsLoop = true,
        LiveTime = 0,
    },
    UICardHellLevelSliderHandler = {
        Name = "UICardHellLevelSliderHandler",
        EffectPath = "Effect/Prefab/UI/ef_ui_card_hell_slider_handler.prefab",
        IsUIEffect = true,
        IsLoop = false,
        LiveTime = 0,
    },
	UICardTongLingHandler = {
		Name = "UICardTongLingHandler",
		EffectPath = "Effect/Prefab/UI/ef_ui_tongling_liuguang.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UICardWraponUpHandler={
		Name = "UICardWraponUpHandler",
		EffectPath = "Effect/Prefab/UI/FX_ui_c_Card_weapon strengthen.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UICardUpLightHandler={
		Name = "UICardUpLightHandler",
		EffectPath = "Effect/Prefab/UI/FX_ui_c_sweeplight.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UICardWeaponLockHandler={
		Name = "UICardWeaponLockHandler",
		EffectPath = "Effect/Prefab/UI/FX_ui_c_jiesuo.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},

	UICardYangCheng = {
		Name = "UICardYangCheng",
		EffectPath = "Effect/Prefab/UI/FX_ui_c_yangcheng.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},

	UICardIconShow = {
		Name = "UICardIconShow",
		EffectPath = "Effect/Prefab/UI/FX_ui_c_Icon_show.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UIComLvUpShow = {
		Name = "UIComLvUpShow",
		EffectPath = "Effect/Prefab/UI/fx_ui_commonbutton_kuosan.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UIComGetBtnShow = {
		Name = "UIComGetBtnShow",
		EffectPath = "Effect/Prefab/UI/fx_ui_commonbutton_sweeplight.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UIArtifactLvUpShow = {
		Name = "UIArtifactLvUpShow",
		EffectPath = "Effect/Prefab/UI/FX_ui_c_sweeplight_Artifact.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UIArtifactSkillLvUpShow = {
		Name = "UIArtifactSkillLvUpShow",
		EffectPath = "Effect/Prefab/UI/FX_ui_c_Icon_show_artifact.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UIArtifactBodyEffectShow = {
		Name = "UIArtifactBodyEffectShow",
		EffectPath = "Effect/Prefab/UI/FX_ui_c_NewArtifact UPdate sur.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UIArtifactEffectShow = {
		Name = "UIArtifactSkillLvUpShow",
		EffectPath = "Effect/Prefab/UI/FX_ui_c_NewArtifact UPdate mid.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UICellSkillBackEffectShow = {
		Name = "UICellSkillBackEffectShow",
		EffectPath = "Effect/Prefab/UI/FX_ui_c_sweeplight_CellSkill.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UICellSkillBackEffectShow_Normal = {
		Name = "UICellSkillBackEffectShow_Normal",
		EffectPath = "Effect/Prefab/UI/FX_ui_c_sweeplight_CellSkill_Normal.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UITestRightItemEffect={
		Name = "UITestRightItemEffect",
		EffectPath = "Effect/Prefab/UI/fx_ui_RightActiveObject_stand.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
	UIOnLineItemEffect={
		Name = "UIOnLineItemEffect",
		EffectPath = "Effect/Prefab/UI/FX_ui_libao_sweeplight.prefab",
		IsUIEffect = true,
		IsLoop = false,
		LiveTime = 0,
	},
}

return ConstClass("EffectConfig", EffectConfig)