
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
local UINationPunitiveMain = {
	Name = UIWindowNames.UINationPunitiveMain,
	Layer = UILayers.BackgroudLayer,
	Model = require "UI.UINationPunitiveMain.Model.UINationPunitiveMainModel",
	Ctrl = require "UI.UINationPunitiveMain.Controller.UINationPunitiveMainCtrl",
	View = require "UI.UINationPunitiveMain.View.UINationPunitiveMainView",
	PrefabPath = "UI/Prefabs/View/UINationPunitiveMain.prefab",
}

local UINationPunitiveTargetInfo = {
	Name = UIWindowNames.UINationPunitiveTargetInfo,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UINationPunitiveMain.Model.UINationPunitiveTargetInfoModel",
	Ctrl = require "UI.UINationPunitiveMain.Controller.UINationPunitiveTargetInfoCtrl",
	View = require "UI.UINationPunitiveMain.View.UINationPunitiveTargetInfoView",
	PrefabPath = "UI/Prefabs/View/UINationPunitiveTargetInfo.prefab",
}

return {
	-- 配置
	UINationPunitiveMain = UINationPunitiveMain,
	UINationPunitiveTargetInfo = UINationPunitiveTargetInfo,

}
