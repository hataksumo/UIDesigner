
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
local UICardList = {
	Name = UIWindowNames.UICardList,
	Layer = UILayers.BackgroudLayer,
	Model = require "UI.UICardList.Model.UICardListModel",
	Ctrl = require "UI.UICardList.Controller.UICardListCtrl",
	View = require "UI.UICardList.View.UICardListView",
	PrefabPath = "UI/Prefabs/View/UICardList.prefab",
}

local UICardUpStarTip = {
	Name = UIWindowNames.UICardUpStarTip,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UICardList.Model.UICardUpStarTipModel",
	Ctrl = nil,
	View = require "UI.UICardList.View.UICardUpStarTipView",
	PrefabPath = "UI/Prefabs/View/UICardUpStarTip.prefab",
}

local UICardStarUpSuccess = {
	Name = UIWindowNames.UICardStarUpSuccess,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UICardList.Model.UICardStarUpSuccessModel",
	Ctrl = nil,
	View = require "UI.UICardList.View.UICardStarUpSuccessView",
	PrefabPath = "UI/Prefabs/View/UICardStarUpSuccess.prefab",
}
local UICardUpTip = {
	Name = UIWindowNames.UICardUpTip,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UICardList.Model.UICardUpTipModel",
	Ctrl = nil,
	View = require "UI.UICardList.View.UICardUpTipView",
	PrefabPath = "UI/Prefabs/View/UICardUpTip.prefab",
}
local UICardTalentTip = {
	Name = UIWindowNames.UICardTalentTip,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UICardList.Model.UICardTalentTipModel",
	Ctrl = nil,
	View = require "UI.UICardList.View.UICardTalentTipView",
	PrefabPath = "UI/Prefabs/View/UICardTalentTip.prefab",
}

local UICardShow = {
	Name = UIWindowNames.UICardShow,
	Layer = UILayers.NormalLayer,
	Model = require "UI.UICardList.Model.UICardShowModel",
	Ctrl =nil,
	View = require "UI.UICardList.View.UICardShowView",
	PrefabPath = "UI/Prefabs/View/UICardShow.prefab",
}

return {
	-- 配置
	UICardList = UICardList,
	UICardUpStarTip=UICardUpStarTip,
	UICardStarUpSuccess=UICardStarUpSuccess,
	UICardUpTip = UICardUpTip,
	UICardTalentTip=UICardTalentTip,
	UICardShow=UICardShow,
}
