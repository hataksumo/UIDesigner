
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
local UINationScience = {
	Name = UIWindowNames.UINationScience,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UINationScience.Model.UINationScienceModel",
	Ctrl = require "UI.UINationScience.Controller.UINationScienceCtrl",
	View = require "UI.UINationScience.View.UINationScienceView",
	PrefabPath = "UI/Prefabs/View/UINationScience.prefab",
}


return {
	-- 配置
	UINationScience = UINationScience,

}
