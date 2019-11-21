
--[[
-- 模块窗口配置，要使用还需要导出到ui.config.uiconfig.lua
-- 一个模块可以对应多个窗口，每个窗口对应一个配置项
-- 使用范例：
-- 窗口配置表 ={
--		名字name
--		ui层级layer
-- 		控制器类controller
--		模型类model
--		视图类view
--		资源加载路径prefabpath
-- } 
--]]

-- 窗口配置
local UILYZTChat = {
	Name = UIWindowNames.UILYZTChat,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UILYZTChat.Model.UILYZTChatModel",
	Ctrl = require "UI.UILYZTChat.Controller.UILYZTChatCtrl",
	View = require "UI.UILYZTChat.View.UILYZTChatView",
	PrefabPath = "UI/Prefabs/View/UILYZTChat.prefab",
}


return {
	-- 配置
	UILYZTChat = UILYZTChat,

}
