
--[[
-- 模块窗口配置，要使用还需要导出到UI.Config.UIConfig.lua
-- 一个模块可以对应多个窗口，每个窗口对应一个配置项
-- 使用范例：
-- 窗口配置表 ={
--		名字Name
--		UI层级Layer
-- 		控制器类Controller
--		模型类Model
--		视图类View
--		资源加载路径PrefabPath
-- } 
--]]

-- 窗口配置
local UINationCollectPoint = {
	Name = UIWindowNames.UINationCollectPoint,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UINationCommon.Model.UINationCollectPointModel",
	Ctrl = require "UI.UINationCommon.Controller.UINationCollectPointCtrl",
	View = require "UI.UINationCommon.View.UINationCollectPointView",
	PrefabPath = "UI/Prefabs/View/UINationCollectPoint.prefab",
}

-- 窗口配置
local UINationPositionPanel = {
	Name = UIWindowNames.UINationPositionPanel,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UINationCommon.Model.UINationPositionPanelModel",
	Ctrl = require "UI.UINationCommon.Controller.UINationPositionPanelCtrl",
	View = require "UI.UINationCommon.View.UINationPositionPanelView",
	PrefabPath = "UI/Prefabs/View/UINationPositionPanel.prefab",
}

local UINationTurnToMark = {
	Name = UIWindowNames.UINationTurnToMark,
	Component = require "UI.UINationCommon.Component.UINationTurnToMark",
	PrefabPath = "UI/Prefabs/View/UINationTurnToMark.prefab",
}


local UINationMarchMain = {
	Name = UIWindowNames.UINationMarchMain,
	Component = require "UI.UINationCommon.Component.UINationMarchMain",
	PrefabPath = "UI/Prefabs/View/UINationMarchMain.prefab",
}

-- 窗口配置
local UINationPositionShare = {
	Name = UIWindowNames.UINationPositionShare,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UINationCommon.Model.UINationPositionShareModel",
	Ctrl = require "UI.UINationCommon.Controller.UINationPositionShareCtrl",
	View = require "UI.UINationCommon.View.UINationPositionShareView",
	PrefabPath = "UI/Prefabs/View/UINationPositionShare.prefab",
}

return {
	-- 配置
	UINationCollectPoint = UINationCollectPoint,
	UINationPositionPanel = UINationPositionPanel,
	UINationTurnToMark = UINationTurnToMark,
	UINationMarchMain = UINationMarchMain,
	UINationPositionShare = UINationPositionShare,
}
