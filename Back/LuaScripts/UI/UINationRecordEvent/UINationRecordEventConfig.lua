
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
local UINationRecordEvent = {
	Name = UIWindowNames.UINationRecordEvent,
	Layer = UILayers.BackgroudLayer,
	Model = require "UI.UINationRecordEvent.Model.UINationRecordEventModel",
	Ctrl = require "UI.UINationRecordEvent.Controller.UINationRecordEventCtrl",
	View = require "UI.UINationRecordEvent.View.UINationRecordEventView",
	PrefabPath = "UI/Prefabs/View/UINationRecordEvent.prefab",
}

-- 窗口配置
local UINationRecordEventDetail = {
	Name = UIWindowNames.UINationRecordEventDetail,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UINationRecordEvent.Model.UINationRecordEventDetailModel",
	Ctrl = require "UI.UINationRecordEvent.Controller.UINationRecordEventDetailCtrl",
	View = require "UI.UINationRecordEvent.View.UINationRecordEventDetailView",
	PrefabPath = "UI/Prefabs/View/UINationRecordEventDetail.prefab",
}

-- 窗口配置
local UINationRecordEventShowItem = {
	Name = UIWindowNames.UINationRecordEventShowItem,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UINationRecordEvent.Component.UINationRecordEventShowItemModel",
	View = require "UI.UINationRecordEvent.Component.UINationRecordEventShowItemView",
	PrefabPath = "UI/Prefabs/Common/UINationRecordEventShowItem.prefab",
}

return {
	-- 配置
	UINationRecordEvent = UINationRecordEvent,
	UINationRecordEventDetail = UINationRecordEventDetail,
	UINationRecordEventShowItem = UINationRecordEventShowItem,
}



