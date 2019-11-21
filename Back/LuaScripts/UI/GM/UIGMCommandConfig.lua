
-- 通用窗口配置

local UIGMCommand = {
	Name = UIWindowNames.UIGMCommand,
	Layer = UILayers.TopLayer,
	Model = nil,
	Ctrl = require "UI.GM.Controller.UIGMCommandCtrl",
	View = require "UI.GM.View.UIGMCommandView",
	PrefabPath = "UI/Prefabs/View/UIGMCommand.prefab",
}

return {
	-- 配置
	UIGMCommand = UIGMCommand,
}