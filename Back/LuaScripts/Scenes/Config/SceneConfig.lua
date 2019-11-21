--[[
-- added by wsh @ 2017-11-15
-- 场景配置
-- 注意：
-- 1、level、name决定加载哪个物理场景
-- 2、Type决定加载哪个逻辑场景，多个逻辑场景可以使用同一个物理场景
--]]

local SceneConfig = {
	-- 启动场景
	LaunchScene = {
		-- level、name对应于BuldSetting中添加的场景
		Level = 0,
		Name = "LaunchScene",
		Type = nil,
	},
	-- 加载场景
	LoadingScene = {
		Level = 1,
		Name = "LoadingScene",
		Type = nil,
	},
	-- 登陆场景
	LoginScene = {
		Level = 2,
		Name = "LoginScene",
		Type = require "Scenes.LoginScene",
	},
	-- 主页场景
	HomeScene = {
		Level = 3,
		Name = "HomeScene",
		Type = require "Scenes.HomeScene",
	},
	-- 战斗场景
	BattleScene = {
		Level = 4,
		Name = "BattleScene",
		Type = require "Scenes.BattleScene",
	},
	-- 剧情场景
	StoryScene = {
		Level = 3,
		Name = "StoryScene",
		Type = require "Scenes.StoryScene",
	},
	-- 国战场景
	NationScene = {
		Level = 5,
		Name = "NationScene",
		Type = require "Scenes.NationScene",
	},
	-- 剧情战斗场景
	StoryBattleScene = {
		Level = 4,
		Name = "StoryBattleScene",
		Type = require "Scenes.StoryBattleScene",
	},
	-- PVP战斗场景
	PVPBattleScene = {
		Level = 4,
		Name = "PVPBattleScene",
		Type = require "Scenes.PVPBattleScene",
	},
	-- 世界boss场景
	WorldBossScene = {
		Level = 6,
		Name = "WorldBossScene",
		Type = require "Scenes.WorldBossScene",
	},
}

return ConstClass("SceneConfig", SceneConfig)