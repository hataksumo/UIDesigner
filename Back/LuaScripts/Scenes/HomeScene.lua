--[[
-- added by wsh @ 2017-11-19
-- 主页场景
--]]

local HomeScene = BaseClass("HomeScene", BaseScene)
local base = BaseScene
local cam_path = "UI/Prefabs/Other/MainCamControl.prefab"


local EasyTouch = CS.HedgehogTeam.EasyTouch.EasyTouch
local CinemachineBlendDefinition = CS.Cinemachine.CinemachineBlendDefinition

local anim_effect_path="Effect/Prefab/UI/FX_UI_LoadingCutTo.prefab";


--播放进入场景动效
local function PlayEnterSceneEffect(self)
	GameObjectPool:GetInstance():GetGameObjectAsync(anim_effect_path,
		function(go)
			if not IsNull(go) then
				local layer =  UIManager:GetInstance():GetLayer(UILayers.TopLayer.Name)
				UIUtil.SetUIParent(go.transform,layer.transform);
				TimerManager:GetInstance():SimpleTimerArgs(0.5,function(go)
					SceneManager:GetInstance():CloseLoading()
					self:InitScene();
				end,go,true)
				TimerManager:GetInstance():SimpleTimerArgs(1.25,function(go)
					SceneManager:GetInstance():CloseLoading()
					GameObjectPool:GetInstance():RecycleGameObject(anim_effect_path,go)

				end,go,true)
			end
		end)
end
-- 加载前的初始化
local function OnEnter(self,_lastSceneName)
	base.OnEnter(self)
	self._lastSceneName=_lastSceneName;

	--Logger.Log("上一个场景的名字是啥呀:",_lastSceneName);
end
-- 创建：准备预加载资源
local function OnCreate(self)
	base.OnCreate(self)
	-- TODO
	self:AddPreloadResource(UIConfig[UIWindowNames.UITestMain].PrefabPath, typeof(CS.UnityEngine.GameObject), 1)
	self:AddPreloadResource(cam_path, typeof(CS.UnityEngine.GameObject), 1)
end
local function SwitchCamra(self,active_cam,delay,func,blend_type,blend_time)
	if not IsNull( self.last_active_came)  then
		if self.last_active_came == active_cam then
			return
		end
	end
	self.cam_brain.m_DefaultBlend =CinemachineBlendDefinition(CinemachineBlendDefinition.Style.Cut,0)
	if func~=nil then
		func();
	end
end
local function InitCamera(self)
	local mCam = CS.UnityEngine.Camera.main
	self.cam_brain = mCam.gameObject:GetComponent(typeof(CS.Cinemachine.CinemachineBrain))
	GameObjectPool:GetInstance():GetGameObjectAsync(cam_path,function (go)
		self.cam_cache = go
		local cam_trans = go.transform
		self.idle = cam_trans:Find("Idle").gameObject;
		if GuideManager:GetInstance():GetGuideGroup()==-1 then
			local UIScreenShake= require("Framework.UI.Component.UIScreenShake");
			self.screenShake=UIScreenShake.New();
			self.screenShake:OnCreate(self.idle.transform);
		end
		SwitchCamra(self,self.idle)
	end)
	--主相机不渲染ui层
	mCam.cullingMask = mCam.cullingMask & ~(1 << 5)
	EasyTouch.AddCamera(mCam)
end

local function SetCamera(self)
	SwitchCamra(self,self.idle)

end
	-- 准备工作
local function OnComplete(self)
    base.OnComplete(self)
	Logger.Log("-------?OnComplete")
	InitCamera(self)
    if not UIManager:GetInstance():OpenLastLeaveSceneWindow(self.scene_config.Name) then
		if self.load_guide_scene then
			LJAudioManger:GetInstance():PlayMusic(LJAudioManger.MAIN_CITY_BG_MUSIC_GUIDE)
			LJAudioManger:GetInstance():PlayVoice("Amb_02")
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIMaincityGuide);
			return
		else
			if GuideManager:GetInstance():CheckRunning() and GuideManager:GetInstance():GetGuideGroup() == 8 then

			else
				UIManager:GetInstance():OpenWindow(UIWindowNames.UITestMain)
			end

		end
    end
	local isCloseLoading=nil;
	if self._lastSceneName== SceneConfig.LoginScene.Name then
		PlayEnterSceneEffect(self);
		isCloseLoading= true;
	else
		self:InitScene();
	end
	return isCloseLoading;
end
local function OnMusicSet(self,isplay)
	Logger.LogVars("isplay=",isplay)
	if isplay then
		LJAudioManger:GetInstance():PlayMusic(LJAudioManger.MAIN_CITY_BG_MUSIC)
	end

end
local function InitScene(self)
	--播放主城背景音乐
	OnMusicSet(self,true)
    LJAudioManger:GetInstance():PlayVoice("UI_024")
	UIManager:GetInstance():AddListener(UIMessageNames.ON_MUSIC_MUTE_SET,OnMusicSet)
	self.sceen_width = CS.UnityEngine.Screen.width
	SetCamera(self)
end

	-- 离开场景
local function OnLeave(self)
	--停止背景音乐
	LJAudioManger:GetInstance():StopAllSoundEffect()
	LJAudioManger:GetInstance():StopMusic(1.0)
	if self.move_timer ~= nil then
		TimerManager:GetInstance():SimpleTimerStop(self.move_timer)
		self.move_timer = nil
		UIMask:GetInstance():CloseEmptyMask(-123)
	end

	EasyTouch.instance.enable = false
	self.cam_brain.enabled = false
	--RemoveEasyTouchListener(self)
	GameObjectPool:GetInstance():RecycleGameObject(cam_path,self.cam_cache)

	if not string.isNilOrEmpty(self.scene_name) then
		SceneLoadManager:GetInstance():CleanSceneNode(self.scene_name)
	end
	if not string.isNilOrEmpty(self.scene_added_name) then
		SceneLoadManager:GetInstance():CleanSceneNode(self.scene_added_name)
	end
	UIUtil.CleanDynamicCreateScenePath()
	if self.roleList ~= nil then
		for i, v in ipairs(self.roleList) do
			if v.obj then
				GameObjectPool:GetInstance():RecycleGameObject(v.path,v.obj);
			end
		end
		self.roleList=nil;
	end
	if self.screenShake then
		self.screenShake:Delete();
	end
	UIManager:GetInstance():RemoveListener(UIMessageNames.ON_MUSIC_MUTE_SET, OnMusicSet)

	base.OnLeave(self)
end

local function LoadHeroPrefab(self,_id,_rootTrans,_pos,_scale,_rotation)
	local battle_role_config=DataUtil.GetData("battle_role_config");
	local prbPath=battle_role_config[_id].prefab_Name;
	GameObjectPool:GetInstance():GetGameObjectAsync(prbPath,function (go)
		if not IsNull(go) then
			go.transform:SetParent(_rootTrans.transform);
			go.transform.localPosition=_pos;
			go.transform.localScale=Vector3.one*_scale;
			go.transform.localEulerAngles=_rotation;
			table.insert(self.roleList,{path=prbPath,obj=go});
		end
	end)
end

--临时测试效果
local function CoCapScreen(self)
	--截屏
	CS.ScreenCapturer.CaptureScreen()
	--等待截屏完成
	coroutine.waituntil(function()
		return CS.ScreenCapturer.IsFin()
	end
	)
	--inst capturebackground
	--实例化UI遮罩
	local caputer_game = GameObjectPool:GetInstance():CoGetGameObjectAsync("UI/Prefabs/Common/CaptureBackground.prefab")
	if not IsNull(caputer_game) then
        local layer =  CS.UnityEngine.GameObject.Find("UIRoot/LuanchLayer")
        UIUtil.SetUIParent(caputer_game.transform,layer.transform)
        coroutine.waitforframes(1)
        --切换场景
        SceneLoadManager:GetInstance():SwitchScene(self.scene_name,self.other_scene_name)
        coroutine.waitforframes(1)
        --播放UI遮罩动画 "Hiding"
        UIUtil.FindComponent(caputer_game.transform, typeof(CS.UnityEngine.Animator)):Play("Hiding",0,0)

        coroutine.waitforseconds(1)
        --...
        --清理截屏
        CS.ScreenCapturer.Release()
        GameObjectPool:GetInstance():RecycleGameObject("UI/Prefabs/Common/CaptureBackground.prefab",caputer_game)
    else
        Logger.Log("UI/Prefabs/Common/CaptureBackground.prefab 加載失敗");
	end
end
--end 临时测试效果



local function CoSceneRes(self)
    --load other scene_name
    --SceneLoadManager:GetInstance():CoGenerateScene(self.other_scene_name,nil)
	self.load_guide_scene = false
	local load_scene_name = "Map_MianCity_01"
	local guideMaxId = MapData:GetInstance().allChapter[3].curMaxLevelid
	if guideMaxId <=0 then
		guideMaxId = 100001
	else
		guideMaxId = guideMaxId+1
	end
	if guideMaxId <= 100003 then
		self.load_guide_scene = true
	end

	self.scene_name = SceneLoadManager.GenSceneAssetFullPath(load_scene_name)
	--local aniPath = "Art/Scenes/scene_"..scene_name.."/scene_"..scene_name.."/"..scene_name.."_sceneData.asset";
	local cur_percent = 0
	local function ProgressCallback(co, progress)
	--assert(progress <= 1.0, "What's the fuck!!!")
		return coroutine.yieldcallback(co,  progress*0.5+cur_percent )
	end
	SceneLoadManager:GetInstance():CoGenerateScene(self.scene_name,ProgressCallback)
	SceneLoadManager:GetInstance():ConfigLitAndShadow(self.scene_name,Vector3.zero,Vector3.zero)
	return coroutine.yieldbreak()
end



HomeScene.CoSceneRes = CoSceneRes
HomeScene.OnCreate = OnCreate
HomeScene.OnComplete = OnComplete
HomeScene.OnLeave = OnLeave
HomeScene.OnEnter=OnEnter
HomeScene.InitScene=InitScene
HomeScene.OnMusicSet=OnMusicSet
return HomeScene;