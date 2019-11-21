-- 全局模块
require "Global.Global"
	
-- 定义为全局模块，整个lua程序的入口类
GameMain = {};

-- 全局初始化
local function Initilize()
	QualityManager:GetInstance():InitGame()
	local loadingAssetbundlePath = "UI/Prefabs/View/UILoading.prefab"
	ResourcesManager:GetInstance():CoLoadAssetBundleAsync(loadingAssetbundlePath)
	loadingAssetbundlePath = "UI/Prefabs/View/UIEmBattle2D.prefab"
	ResourcesManager:GetInstance():CoLoadAssetBundleAsync(loadingAssetbundlePath)
	loadingAssetbundlePath = "UI/Prefabs/View/UIEmBattleLoading.prefab"
	ResourcesManager:GetInstance():CoLoadAssetBundleAsync(loadingAssetbundlePath)
end

-- 进入游戏
local function EnterGame()

	--测试地图数据
	--MapData:GetInstance():ParseMapData({normalLevel = 1120515,hardLevel = 1210515 })
	--登陆前新手  9月份版本注释
	--local canGuide = CS.UnityEngine.PlayerPrefs.GetInt("GameGuide", 0)
	--if canGuide == 0 then
	--	if GuideManager:GetInstance():CheckLaunchGuide() <= 0 then
	--		SceneManager:GetInstance():SwitchScene(SceneConfig.LoginScene)
	--	else
	--		--SceneManager:GetInstance():SwitchScene(SceneConfig.StoryBattleScene)
	--	end
	--	CS.UnityEngine.PlayerPrefs.SetInt("GameGuide", 1)
	--else
	--	SceneManager:GetInstance():SwitchScene(SceneConfig.LoginScene)
	--end
	SceneManager:GetInstance():SwitchScene(SceneConfig.LoginScene)
end


local function UpdateIosDevice()
	local iosDevices = {}
	table.insert(iosDevices,"iPhone10,3")
	table.insert(iosDevices,"iPhone10,6")
	table.insert(iosDevices,"iPhone11,2")
	table.insert(iosDevices,"iPhone11,6")
	table.insert(iosDevices,"iPhone11,8")
	CS.iDreamsky.MSLD.Notch.MSLDNotchManager.UpdateIosDevice(iosDevices)
end

--主入口函数。从这里开始lua逻辑
local function Start()
	-- 模块启动

	--禁用多点触控
	--CS.UnityEngine.Input.multiTouchEnabled = false
	--配置初始化
	Config.Init()
	UpdateManager:GetInstance():Startup()
	TimerManager:GetInstance():Startup()
	LogicUpdater:GetInstance():Startup()
	UIManager:GetInstance():Startup()
	TimeSyncManager:GetInstance():Startup()
	--PushManager:GetInstance():Register()
	UIMask:GetInstance():InitEmptyMask()
	Logger.OnInit()

	if Config.Debug then
		-- 单元测试
		--local UnitTest = require "UnitTest.UnitTestMain"
		--UnitTest.Run()
	end
	--设置ios设备号
	UpdateIosDevice()

	coroutine.start(function()
		Initilize()
		EnterGame()
	end)
end

-- 场景切换通知
--local function OnLevelWasLoaded(level)
--	collectgarbage("collect")
--	Time.timeSinceLevelLoad = 0
--end

local function OnApplicationQuit()
	-- 模块注销
	UpdateManager:GetInstance():Dispose()
	TimerManager:GetInstance():Dispose()
	LogicUpdater:GetInstance():Dispose()
	NetManager:GetInstance():Release()
	TimeSyncManager:GetInstance():Dispose()
	--PushManager:GetInstance():UnRegister()
end

-- GameMain公共接口，其它的一律为私有接口，只能在本模块访问
GameMain.Start = Start
GameMain.OnLevelWasLoaded = OnLevelWasLoaded
GameMain.OnApplicationQuit = OnApplicationQuit

return GameMain