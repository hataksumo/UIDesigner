--[[
-- added by wsh @ 2017-12-15
-- 场景管理系统：调度和控制场景异步加载以及进度管理，展示loading界面和更新进度条数据，GC、卸载未使用资源等
-- 注意：
-- 1、资源预加载放各个场景类中自行控制
-- 2、场景loading的UI窗口这里统一管理，由于这个窗口很简单，更新进度数据时直接写Model层
--]]


local SceneManager = BaseClass("SceneManager", Singleton)

-- 构造函数
local function __init(self)
	-- 成员变量
	-- 当前场景
	self.current_scene = nil
	-- 是否忙
	self.busing = false
	-- 场景对象
	self.scenes = {}
	-- 当前加载场景名
	self.current_loadingName = nil
end

-- 切换场景：内部使用协程
local function CoInnerSwitchScene(params)
	Logger.Log("進入場景")
	local self = params[1]
	local scene_config = params[2]
	local loading_name = params[3]
	local scene_list = params[4]
	local func = params[5]
	-- 打开loading界面
	local uimgr_instance = UIManager:GetInstance()
	self.current_loadingName = loading_name == nil and UIWindowNames.UILoading or loading_name
	uimgr_instance:OpenWindow(self.current_loadingName)
	local window = uimgr_instance:GetWindow(self.current_loadingName)
	local model = window.Model
	model.value = 0
	coroutine.waitforframes(1)
	-- 等待资源管理器加载任务结束，否则很多Unity版本在切场景时会有异常，甚至在真机上crash
	coroutine.waitwhile(function()
		return ResourcesManager:GetInstance():IsProsessRunning()
	end)
	-- 清理旧场景
	if self.current_scene then
		self.current_scene:OnLeave()
	end
	--local loadedSceneCount = CS.SceneDataUtilities.GetLoadedSceneCount()
	--if loadedSceneCount > 0 then
	--	Logger.LogError("Scene Not Deleted:" .. loadedSceneCount)
	--end
	model.value = model.value + 0.01
	coroutine.waitforframes(1)
	-- 清理UI
	if scene_list == nil then
		uimgr_instance:DestroyWindowExceptLayer(UILayers.TopLayer)
	else
		uimgr_instance:DestroyWindowExceptNames(scene_list)
	end
	model.value = model.value + 0.01
	-- 清理音效
	--LJAudioManger:GetInstance():StopAllAudio()
	LJAudioManger:GetInstance():UnloadBank()
	coroutine.waitforframes(1)
	-- 清理资源缓存
	GameObjectPool:GetInstance():Cleanup(true)
	model.value = model.value + 0.01
	coroutine.waitforframes(1)
	ResourcesManager:GetInstance():Cleanup()
	model.value = model.value + 0.01
	coroutine.waitforframes(1)
	-- 同步加载loading场景
	local scene_mgr = CS.UnityEngine.SceneManagement.SceneManager
	local resources = CS.UnityEngine.Resources
	scene_mgr.LoadScene(SceneConfig.LoadingScene.Level)
	model.value = model.value + 0.01
	coroutine.waitforframes(1)
	-- GC：交替重复2次，清干净一点)
	collectgarbage("collect")
	CS.System.GC.Collect()
	collectgarbage("collect")
	CS.System.GC.Collect()
	local cur_progress = model.value
	coroutine.waitforasyncop(resources.UnloadUnusedAssets(), function(co, progress)
		assert(progress <= 1.0, "What's the funck!!!")
		model.value = cur_progress + 0.1 * progress
	end)
	model.value = cur_progress + 0.1
	coroutine.waitforframes(1)
	-- 初始化目标场景
	local logic_scene = self.scenes[scene_config.Name]
	if logic_scene == nil then
		logic_scene = scene_config.Type.New(scene_config)
		self.scenes[scene_config.Name] = logic_scene
	end
	assert(logic_scene ~= nil)
	logic_scene:OnEnter(self.curSceneName)
	model.value = model.value + 0.02
	coroutine.waitforframes(1)
	-- 异步加载目标场景
	cur_progress = model.value
	coroutine.waitforasyncop(scene_mgr.LoadSceneAsync(scene_config.Level), function(co, progress)
		assert(progress <= 1.0, "What's the funck!!!")
		model.value = cur_progress + 0.15 * progress
	end)
	model.value = cur_progress + 0.15
	coroutine.waitforframes(1)
	cur_progress = model.value
	--存储当前场景的名字
	self.curSceneName = scene_config.Name

	--加载场景资源
	if logic_scene.CoSceneRes ~= nil then
		coroutine.yieldstart(logic_scene.CoSceneRes, function(co, progress)
			assert(progress <= 1.0, "Progress should be normalized value!!!")
			model.value = cur_progress + 0.45 * progress
		end, logic_scene)
	end
	self.current_scene = logic_scene
	model.value = cur_progress + 0.45
	-- 准备工作：预加载资源等
	-- 说明：现在的做法是不热更场景（都是空场景），所以主要的加载时间会放在场景资源的prefab上，这里给65%的进度时间
	cur_progress = model.value
	coroutine.yieldstart(logic_scene.CoOnPrepare, function(co, progress)
		assert(progress <= 1.0, "Progress should be normalized value!!!")
		model.value = cur_progress + 0.2 * progress
	end, logic_scene)
	model.value = cur_progress + 0.2
	coroutine.waitforframes(1)
	--add Story Trigger

	-----------------------------------在这里播剧情---------------------------------------------------
--[[
		local curLevel = MapData:GetInstance():GetCurSelectLevelId();
		local LevelInfo
		local loadingClosed
		if curLevel>1 and scene_config.Name ~= "HomeScene" then

			LevelInfo=  MapData:GetInstance():GetLevelInfos(curLevel);
			local id=LevelInfo._data.StoryId;
			if id then
				--Logger.Log("curLevel%100;   "..id)
				loadingClosed= StoryManager.TriggerStory(id)  --剧情播放完了
			end
		else

		end

		local isCloseLoading=logic_scene:OnComplete()                --主场景准备好了
		model.value = 1.0
		coroutine.waitforframes(3)
		CS.CustomDataStruct.Helper:Cleanup()

		loadingClosed=isCloseLoading==nil and loadingClosed or isCloseLoading;
		if loadingClosed then
			--关闭摄像机遮罩
			--但剧情场景加载逻辑结束时,剧情已经播放完成,为防止穿帮,不关闭遮罩,只显示UI
			if scene_config.Name ~= "StoryScene" then
				CS.CamMaskUtilities.SetMaskColor(0.0,100);
				CS.CamMaskUtilities.RemoveMask(100);
			end
		else
			-- 加载完成，关闭loading界面
			uimgr_instance:DestroyWindow(UIWindowNames.UILoading)
		end
		--]]
		---------------------------------不在这里播放剧情--------------------------
		local isCloseLoading=logic_scene:OnComplete()                --主场景准备好了
		model.value = 1.0
		coroutine.waitforframes(3)
		CS.CustomDataStruct.Helper:Cleanup()
		if isCloseLoading then

		else
			uimgr_instance:DestroyWindow(self.current_loadingName)
		end

	self.busing = false
	Time.timeSinceLevelLoad = 0
    if func ~= nil then
        func()
    end
end

local function CloseLoading(self)
	UIManager:GetInstance():DestroyWindow(self.current_loadingName)
end

local function ClearScene(func)
	coroutine.start(
			function()
				coroutine.waitwhile(function()
					return ResourcesManager:GetInstance():IsProsessRunning()
				end)
				-- 清理UI
				UIManager:GetInstance():DestroyWindowExceptLayer(UILayers.TopLayer)
				-- 清理资源缓存
				local _pre = GameObjectPool:GetInstance():GetAllCachePath()

				GameObjectPool:GetInstance():Cleanup()
				coroutine.waitforframes(1)
				if _pre ~= nil then
					for i, v in ipairs(_pre) do
						ResourcesManager:GetInstance():UnloadAssetBundle(v)
					end
				end
				coroutine.waitforframes(1)
				--ResourcesManager:GetInstance():Cleanup()
				--coroutine.waitforframes(1)
				-- GC：交替重复2次，清干净一点)
				collectgarbage("collect")
				CS.System.GC.Collect()
				collectgarbage("collect")
				CS.System.GC.Collect()
				local resources = CS.UnityEngine.Resources
				coroutine.waitforasyncop(resources.UnloadUnusedAssets())
				if func ~= nil then
					func()
				end
			end
	)
end


-- 切换场景(即将打开的场景名，加载界面名，不销毁的场景名列表, 回调方法)
local function SwitchScene(self, scene_config, loading_name, scene_list,_rebindScene,func)
	assert(scene_config ~= LaunchScene and scene_config ~= LoadingScene)
	assert(scene_config.Type ~= nil)
	if self.busing then
		return
	end
 	if self.current_scene and self.current_scene.scene_config.Name == scene_config.Name and not _rebindScene then
		return
	end
	self.busing = true
	coroutine.start(CoInnerSwitchScene, {self, scene_config, loading_name, scene_list, func})
end

-- 判断当前场景是什么场景
local function DoseSceneIsSceneConfig(self, scene_config)
	if self.current_scene and self.current_scene.scene_config.Name == scene_config.Name then
		return true
	end
	return false
end
-- 获取当前场景对象
local function GetCurrentScene(self)
	if self.current_scene == nil then
		return nil
	end
	return self.current_scene
end

-- 获取当前场景配置文件
local function GetCurrentSceneConfig(self)
	if self.current_scene == nil then
		return nil
	end
	return self.current_scene.scene_config
end

-- 析构函数
local function __delete(self)
	for _, scene in pairs(self.scenes) do
		scene:Delete()
	end
end

SceneManager.__init = __init
SceneManager.SwitchScene = SwitchScene
SceneManager.__delete = __delete
SceneManager.DoseSceneIsSceneConfig = DoseSceneIsSceneConfig
SceneManager.GetCurrentSceneConfig = GetCurrentSceneConfig
SceneManager.GetCurrentScene = GetCurrentScene
SceneManager.ClearScene = ClearScene
SceneManager.CloseLoading = CloseLoading


return SceneManager;
