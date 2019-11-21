-- 窗口配置
local UINotice = {
	Name = UIWindowNames.UINotice,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UINotice.Model.UINoticeModel",
	Ctrl = require "UI.UINotice.Controller.UINoticeCtrl",
	View = require "UI.UINotice.View.UINoticeView",
	PrefabPath = "UI/Prefabs/View/UINotice.prefab",
}


return {
	-- 配置
	UINotice = UINotice,
}