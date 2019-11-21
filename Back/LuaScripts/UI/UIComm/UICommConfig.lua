--[[
-- added by wsh @ 2017-11-30
-- UILogin模块窗口配置，要使用还需要导出到UI.Config.UIConfig.lua
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

-- 通用窗口配置
-- 物品使用
local UICommItemUse = {
	Name = UIWindowNames.UICommItemUse,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UIComm.Model.UICommItemUseModel",
	Ctrl = require "UI.UIComm.Controller.UICommItemUseCtrl",
	View = require "UI.UIComm.View.UICommItemUseView",
	PrefabPath = "UI/Prefabs/Common/UICommItemUse.prefab",
}
-- 获得物品界面
local UICommGetRewards = {
	Name = UIWindowNames.UICommGetRewards,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UIComm.Model.UICommGetRewardsModel",
	Ctrl = nil,
	View = require "UI.UIComm.View.UICommGetRewardsView",
	PrefabPath = "UI/Prefabs/Common/UICommGetRewards.prefab",
}
--公用提示框
local UICommonCostTip = {
	Name = UIWindowNames.UICommonCostTip,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UIComm.Model.UICommonCostTipModel",
	Ctrl = nil,
	View = require "UI.UIComm.View.UICommonCostTipView",
	PrefabPath = "UI/Prefabs/Common/UICommonCostTip.prefab",
}
---例子：
---local UICommXXX = {
---	Name = UIWindowNames.UICommXXX,
---	Layer = UILayers.InfoLayer,						---根据需要自行定义Layer
---	Model = require "UI.UIComm.Model.UIXXXModel",	---可以为nil
---	Ctrl = nil,										---可以为nil
---	View = require "UI.UIComm.View.UIXXXView",
---	PrefabPath = "UI/Prefabs/View/UIXXX.prefab",
---}

return {
	-- 配置
	UICommItemUse = UICommItemUse,
	UICommGetRewards = UICommGetRewards,
	UICommonCostTip=UICommonCostTip,
	---UICommXXX = UICommXXX,
}