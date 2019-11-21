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

local UINationTownBuildInfo = {
    Name = UIWindowNames.UINationTownBuildInfo,
    Component = require "UI.UINationBuildInfo.Component.UINationTownBuildInfo",
    PrefabPath = "UI/Prefabs/View/UINationTownBuilding.prefab",
}

local UINationSiegeBuildInfo = {
    Name = UIWindowNames.UINationSiegeBuildInfo,
    Component = require "UI.UINationBuildInfo.Component.UINationSiegeBuildInfo",
    PrefabPath = "UI/Prefabs/View/UINationSiegeBuildInfo.prefab",
}

local UINationResBuildInfo = {
    Name = UIWindowNames.UINationResBuildInfo,
    Component = require "UI.UINationBuildInfo.Component.UINationResBuildInfo",
    PrefabPath = "UI/Prefabs/View/UINationResBuildInfo.prefab",
}

local UINationBuildName = {
    Name = UIWindowNames.UINationBuildName,
    Component = require "UI.UINationBuildInfo.Component.UINationBuildNameOptimize",
    PrefabPath = "UI/Prefabs/View/UINationBuildingName.prefab",
}

local UINationRoadblockTip = {
    Name = UIWindowNames.UINationRoadblockTip,
    Component = require "UI.UINationBuildInfo.Component.UINationRoadblockTip",
    PrefabPath = "UI/Prefabs/View/UINationRoadblockTip.prefab",
}

local UINationDefRecoverInfo = {
    Name = UIWindowNames.UINationDefRecoverInfo,
    Component = require "UI.UINationBuildInfo.Component.UINationDefRecoverInfo",
    PrefabPath = "UI/Prefabs/View/UINationDefRecoverInfo.prefab",
}


return {
    -- 配置
    --场景UI
    UINationTownBuildInfo = UINationTownBuildInfo,
    UINationSiegeBuildInfo = UINationSiegeBuildInfo,
    UINationResBuildInfo = UINationResBuildInfo,
    UINationBuildName = UINationBuildName,
    UINationRoadblockTip = UINationRoadblockTip,
    UINationDefRecoverInfo = UINationDefRecoverInfo,
}
