
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
local UILevelMainNew = {
	Name = UIWindowNames.UILevelMainNew,
	Layer = UILayers.BackgroudLayer,
	Model = require "UI.UILevelMainNew.Model.UILevelMainNewModel",
	Ctrl = require "UI.UILevelMainNew.Controller.UILevelMainNewCtrl",
	View = require "UI.UILevelMainNew.View.UILevelMainNewView",
	PrefabPath = "UI/Prefabs/View/UILevelMainNew.prefab",
}
local UILevelNewDetail = {
	Name = UIWindowNames.UILevelNewDetail,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UILevelMainNew.Model.UILevelNewDetailModel",
	Ctrl = require "UI.UILevelMainNew.Controller.UILevelNewDetailCtrl",
	View = require "UI.UILevelMainNew.View.UILevelNewDetailView",
	PrefabPath = "UI/Prefabs/View/UILevelNewDetail.prefab",
}

return {
	-- 配置
	UILevelMain = UILevelMainNew,
    UILevelNewDetail=UILevelNewDetail,
}
