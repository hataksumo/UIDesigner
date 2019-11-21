
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
local UILYZTItemList = {
	Name = UIWindowNames.UILYZTItemList,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UILYZTItemList.Model.UILYZTItemListModel",
	Ctrl = require "UI.UILYZTItemList.Controller.UILYZTItemListCtrl",
	View = require "UI.UILYZTItemList.View.UILYZTItemListView",
	PrefabPath = "UI/Prefabs/View/UILYZTItemList.prefab",
}


return {
	-- 配置
	UILYZTItemList = UILYZTItemList,

}
