
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
local UIEmBattle2D = {
	Name = UIWindowNames.UIEmBattle2D,
	Layer = UILayers.BackgroudLayer,
	Model = require "UI.UIEmBattle2D.Model.UIEmBattle2DModel",
	Ctrl = require "UI.UIEmBattle2D.Controller.UIEmBattle2DCtrl",
	View = require "UI.UIEmBattle2D.View.UIEmBattle2DView",
	PrefabPath = "UI/Prefabs/View/UIEmBattle2D.prefab",
}


return {
	-- 配置
	UIEmBattle2D = UIEmBattle2D,

}
