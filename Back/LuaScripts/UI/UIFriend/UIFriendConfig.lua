
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
local UIFriend = {
	Name = UIWindowNames.UIFriend,
	Layer = UILayers.NormalLayer, --這個界面特殊  不能设置为BackgroudLayer层
	Model = require "UI.UIFriend.Model.UIFriendModel",
	Ctrl = require "UI.UIFriend.Controller.UIFriendCtrl",
	View = require "UI.UIFriend.View.UIFriendView",
	PrefabPath = "UI/Prefabs/View/UIFriend.prefab",
}

local UIPlayerFunc = {
	Name = UIWindowNames.UIPlayerFunc,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UIFriend.Model.UIPlayerFuncModel",
	--Ctrl = require "UI.UIPlayerFunc.Controller.UIPlayerFuncCtrl",
	View = require "UI.UIFriend.View.UIPlayerFuncView",
	PrefabPath = "UI/Prefabs/Common/UIPlayerFunc.prefab",
}

return {
	-- 配置
	UIFriend = UIFriend,
	UIPlayerFunc = UIPlayerFunc,

}
