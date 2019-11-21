--[[
-- added by wsh @ 2018-02-26
-- UIBattle模块窗口配置，要使用还需要导出到UI.Config.UIConfig.lua
--]]

-- 窗口配置

local UIBattleIn = {
	Name = UIWindowNames.UIBattleIn,
	Layer = UILayers.NormalLayer,
	Model =  require "UI.UIBattle.Model.UIBattleInModel",
	Ctrl = nil,
	View = require "UI.UIBattle.View.UIBattleInView",
	PrefabPath = "UI/Prefabs/View/UIBattleIn.prefab",
}

local UIBattleSettlement = {
	Name = UIWindowNames.UIBattleSettlement,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UIBattle.Model.UIBattleSettlementModel",
	Ctrl = nil,
	View = require "UI.UIBattle.View.UIBattleSettlementView",
	PrefabPath = "UI/Prefabs/View/UIBattleSettlement.prefab",
}
local UIBattleSettlementFail = {
	Name = UIWindowNames.UIBattleSettlementFail,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UIBattle.Model.UIBattleSettlementFailModel",
	Ctrl = nil,
	View = require "UI.UIBattle.View.UIBattleSettlementFailView",
	PrefabPath = "UI/Prefabs/View/UIBattleSettlementFail.prefab",
}

return {
	-- 配置
	UIBattleIn = UIBattleIn,
	UIBattleSettlement = UIBattleSettlement,
	UIBattleSettlementFail = UIBattleSettlementFail,
}