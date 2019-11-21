
local StroyBattlePveProxy=require "GameLogic.BattleNew.StroyBattlePveProxy"
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local BattleAssistFunction= require "GameLogic.BattleNew.BattleAssistFunction"
local StoryBattleScene = BaseClass("StoryBattleScene", BaseScene)
local base = BaseScene
local cam_path="UI/Prefabs/Other/UIBattleCam.prefab";
local CinemachineBlendDefinition = CS.Cinemachine.CinemachineBlendDefinition

local winPPPath = "Art/Scenes/Common/WinPostProcessVolume.prefab";
local board_broken = "Art/StoryUI/UIPrefabs/fx_mod_cut_board_broken.prefab"
local function InitCamParams(self)
	self.camState =30
	self.camIndexOffset = 0
end


local function CreateBoardBroken(self,tex)
	GameObjectPool:GetInstance():GetGameObjectAsync(board_broken,function(go)
		if not IsNull(go) then
			if self.playBoardAnim then
				GameObjectPool:GetInstance():RecycleGameObject(board_broken,go)
				return
			end
			self.board_anim = go:GetComponent(typeof(CS.UnityEngine.Animator))
			self.board_anim:Play("start",0,0)
			local ren = go:GetComponentInChildren(typeof(CS.UnityEngine.MeshRenderer))
			local layer =  UIManager:GetInstance():GetLayer(UILayers.InfoLayer.Name)
			go.transform:SetParent(layer.transform)
			go.transform.localPosition = Vector3.zero
			local per =  CS.UnityEngine.Screen.width * 9 / (16 * CS.UnityEngine.Screen.height);
			go.transform.localScale = Vector3.New(158*per,158*per,1)
			ren.sharedMaterial.mainTexture = tex
		end
	end)
end

--切换相机状态
--state 1=战斗  2=布阵
local function ChangeCamByState(self,state,time)
	local fade = 1
	if time ~= nil then
		fade = time
	end
	self.cam_brain.m_DefaultBlend =CinemachineBlendDefinition(CinemachineBlendDefinition.Style.EaseInOut,fade)
	for i, v in ipairs(self.camList) do
		v.gameObject:SetActive(state==(i - self.camIndexOffset));
	end
end



local function ChangeCamFov(self)
	Logger.Log("Cur State:" .. self.camState)
	if #self.camList < 6 then
		return
	end
	if self.camState ~= 30 then
		--set VirtualCamera
		self.camIndexOffset = 0
		if self.camList[4].gameObject.activeSelf then
			self.camList[1].gameObject:SetActive(true)
			self.camList[4].gameObject:SetActive(false)
		end

		--set fog
		--CS.SceneDataUtilities.SetFogBlend(self.scene_asset,0)
		self.camState =30
		Logger.Log("Trigger State 30")
	else
		--set VirtualCamera
		self.camIndexOffset = 3
		if self.camList[1].gameObject.activeSelf then
			self.camList[1].gameObject:SetActive(false)
			self.camList[4].gameObject:SetActive(true)
		end
		--set fog
		--CS.SceneDataUtilities.SetFogBlend(self.scene_asset,1)
		self.camState = 60
		Logger.Log("Trigger State 60")
	end
	Logger.Log("After Setting State:" .. self.camState)
end



local function TriggerWinEffect(self,param)
	if self.winPPVol ~= nil then
		self.winPPVol.gameObject:SetActive(true)
	end
end

local function PlayVideo(self,name,func)
	GameObjectPool:GetInstance():GetGameObjectAsync(self.video_player_path,function(go)
		if not IsNull(go) then
			self.cam_game.enabled = false
			local layer =  UIManager:GetInstance():GetLayer(UILayers.InfoLayer.Name)
			UIUtil.SetUIParent(go.transform,layer.transform)
			local videoMgr = CS.VideoManager.GetInstance()
			videoMgr:SetupTargetByGame(go)
			videoMgr:PlayVideo(name,false,function()
				if func then
					func()
				end
				self.cam_game.enabled = true
				GameObjectPool:GetInstance():RecycleGameObject(self.video_player_path,go);
			end)
		else
			if func then
				func()
			end
		end
	end)
end

local function ResetBattle(self,clear)
	--发送战斗请求到服务器
	self.playBoardAnim = false
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIBattleIn)
	DataManager:GetInstance():Broadcast("GuideResetBattleEnd")
	LJAudioManger:GetInstance():StopAllSoundEffect()
	self.proxy:OnDestroy()
	if clear then
		GameObjectPool:GetInstance():Cleanup()
	end
	--[[
	PlayVideo(self,"Audio/0621_BeginAnimation_2.mp4",function()
		BattleFieldManager:GetInstance().battlePath= "BattleProto/2/"
		ResourcesManager:GetInstance():LoadAsync(BattleFieldManager:GetInstance().battlePath.."pve_enter_fight_response.txt",typeof(CS.UnityEngine.TextAsset),function(asset)
			local protoSourceData = (MsgIDMap[MsgIDDefine.PBFIGHT_PVE_ENTER_FIGHT_RESPONSE])
			self.battlePackages  = protoSourceData()
			self.battlePackages:ParseFromString(asset.bytes)
			self.proxy:OnDestroy()
			self.camList[1].transform.localPosition = Vector3.New(self.config.cameraPos[1],self.config.cameraPos[2],self.config.cameraPos[3])
			self.camList[1].transform.localEulerAngles = Vector3.New(self.config.CameraEuler[1],self.config.CameraEuler[2],self.config.CameraEuler[3])
			ChangeCamByState(self,1,0);
			self.proxy=StroyBattlePveProxy.New()
			self.proxy:OnInit(self.battlePackages,self.config.RGBA,1.5,self.camList[1],true)
		end)
	end)
	--]]
end
--设置相机属性
local function SetCameraConfig(self)
	SceneLoadManager:GetInstance():ConfigBattleCam(self.camList[1]
	,Vector3.New(self.config.cameraPos[1],self.config.cameraPos[2],self.config.cameraPos[3])
	,Vector3.New(self.config.CameraEuler[1],self.config.CameraEuler[2],self.config.CameraEuler[3])
	,self.config.Fov
	,Vector3.New(0,0,0)
	)

	if #self.camList >= 3 then

		SceneLoadManager:GetInstance():ConfigBattleCam(self.camList[3]
		,Vector3.New(17.74,8.2,-11.86)---8.7
		,Vector3.New(19.8,-55.9,0)
		,25
		,Vector3.New(-1.33,0,0.6)

		)
		ChangeCamByState(self,1,0);
	end
end

local function EnterCamOver(self)
	SceneLoadManager:GetInstance():TriggerBlockCompont()
	GameObjectPool:GetInstance():GetGameObjectAsync(cam_path,function (go)
		if not IsNull(go) then
			self.cam_cache=go;
			self.cam_cache.transform:SetParent(self.areaObject.transform,false)
			self.camList={};
			local camCount=go.transform.childCount;
			for i = 1, camCount do
				local vCam = go.transform:GetChild(i-1):GetComponentInChildren(typeof(CS.Cinemachine.CinemachineVirtualCamera))
				if vCam ~= nil then
					table.insert(self.camList,vCam);
				end
			end
			if self.config == nil then
				self.config=DataUtil.GetData("battle_field_data")[BattleFieldManager:GetInstance().sceneConfigId]
			end
			SetCameraConfig(self)
			self.proxy=StroyBattlePveProxy.New()
			self.proxy:OnInit(self.battlePackages,self.config.RGBA,1.5,self.camList[1],self.battleEnd,self.game_cache,self.startPackage)
		end
	end)
end
local function InitBattleData(self)
	--播放战斗背景音乐
	SceneLoadManager:GetInstance():ConfigLitAndShadow(self.scene_name,self.areaPosition,self.areaEuler)

	self.cam_game = CS.UnityEngine.Camera.main;
	self.cam_brain = self.cam_game.gameObject:GetComponent(typeof(CS.Cinemachine.CinemachineBrain))
	self.cam_game.transform.position = Vector3.New(2.33,6.7,-18.64)
	self.cam_game.transform.eulerAngles = Vector3.New(18.4,-7.3,0)
	self.cam_game.fieldOfView = 30
	LJAudioManger:GetInstance():PlayMusic("BGM_Fighting_Common")
	if self.winPPVol ~= nil then
		self.winPPVol.transform:SetParent(self.cam_brain.transform,false)
	end
	GameObjectPool:GetInstance():GetGameObjectAsync(self.post_process_path,function (go)
		self.post_process_game = go
	end)
	InitCamParams(self)
	if self.config ~= nil and self.config.Amb ~= nil then
		LJAudioManger:GetInstance():PlayVoice(self.config.Amb)
	end
end
local function MiddleEnterBattle(self)
	ResourcesManager:GetInstance():LoadAsync(BattleFieldManager:GetInstance().battlePath.."pve_enter_fight_response.txt",typeof(CS.UnityEngine.TextAsset),function(asset)
		local protoSourceData = (MsgIDMap[MsgIDDefine.PBFIGHT_PVE_ENTER_FIGHT_RESPONSE])
		self.battlePackages  = protoSourceData()
		self.battlePackages:ParseFromString(asset.bytes)
		--self.camList[1].transform.localPosition = Vector3.New(self.config.cameraPos[1],self.config.cameraPos[2],self.config.cameraPos[3])
		--self.camList[1].transform.localEulerAngles = Vector3.New(self.config.CameraEuler[1],self.config.CameraEuler[2],self.config.CameraEuler[3])
		--ChangeCamByState(self,1,0);
		SetCameraConfig(self)
		self.proxy=StroyBattlePveProxy.New()
		self.proxy:OnInit(self.battlePackages,self.config.RGBA,1.5,self.camList[1],self.battleEnd,self.game_cache,self.startPackage)
	end)
end

--加载模型
local function LoadPrefab(self,list,data,isEnemy,battle_role_config)
	local playerType = BattleEnum.BattlePlayerType.MINE
	if isEnemy then
		playerType = BattleEnum.BattlePlayerType.ENEMY
	end
	if data ~= nil then
		for i, v in ipairs(data) do
			local viewDataId = BattleAssistFunction.GetCardIdByTeamAndEntityId(playerType, v.entityId)
			local config = battle_role_config[viewDataId]
			if config ~= nil then
				local role =  GameObjectPool:GetInstance():CoGetGameObjectAsync(config.prefab_Name)
				if role ~= nil then
					local tempList = list[config.prefab_Name]
					if tempList == nil then
						tempList = {}
						list[config.prefab_Name] = tempList
					end
					table.insert(tempList,role)
					--设置模型位置
					local position=BattleAssistFunction.GetRolePosition(BattleFieldManager:GetInstance().sceneConfigId, playerType,v.position+1);
					local eulerAngle=BattleAssistFunction.GetRoleEulerAngle(BattleFieldManager:GetInstance().sceneConfigId,playerType,v.position+1);
					role.transform:SetParent(self.areaObject.transform)
					role.transform.localPosition=position;
					role.transform.localEulerAngles=eulerAngle;
					role.transform.localScale=Vector3.New(config.PrefabZoom,config.PrefabZoom,config.PrefabZoom)
				end

			end
		end
	end
end
--播放入场动画
local function PlayCamAnim(self,path,func)
	if path ~= nil then
		GameObjectPool:GetInstance():GetGameObjectAsync(path,function (go)
			local pd = CS.LJ_TimelineExtension.PlayableDirectorBindingHelper.BindingBattleCamera(go,self.cam_brain)
			local camTime = 0.1
			if pd ~= nil then
				camTime = pd.duration
			end
			go.transform.eulerAngles = self.areaEuler
			TimerManager:GetInstance():SimpleTimerArgs(camTime,function ()
				CS.CamMaskUtilities.SetMaskColor(0,0)
				GameObjectPool:GetInstance():RecycleGameObject(path,go)
				if func ~= nil then
					func()
				end
			end,nil,true)
		end)
	else
		if func ~= nil then
			func()
		end
	end

end
--播放碎屏动画
local function PlayBlockAnim(self)
	if self.board_anim ~= nil then
		LJAudioManger:GetInstance():PlayVoice("UI_Crossing_01")
		self.board_anim:Play("play",0,0)
		coroutine.waitforseconds(1.43)
		GameObjectPool:GetInstance():RecycleGameObject(board_broken,self.board_anim.gameObject)
		self.board_anim = nil
	end
	self.playBoardAnim = true
end
--剧情开始战斗
local function StoryBeginBattle(self)
	--加载数据
	--配置场景光影
	local curGuide = GuideManager:GetInstance():GetGuideData()
	BattleFieldManager:GetInstance().sceneConfigId = curGuide.BattleConfigId
	self.areaPosition,self.areaEuler=BattleAssistFunction.GetBattleAreaInfo(BattleFieldManager:GetInstance().sceneConfigId)
	self.config=DataUtil.GetData("battle_field_data")[BattleFieldManager:GetInstance().sceneConfigId]
	BattleFieldManager:GetInstance().battlePath= curGuide.BattlePath
	self.battleEnd = curGuide.BattleEnd
	CS.CamMaskUtilities.SetMaskColor(1.0,100)
	coroutine.start(function()
		local asset = ResourcesManager:GetInstance():CoLoadAsync(BattleFieldManager:GetInstance().battlePath.."pve_enter_fight_response.txt",typeof(CS.UnityEngine.TextAsset))
		if asset ~= nil then
			local protoSourceData = (MsgIDMap[MsgIDDefine.PBFIGHT_PVE_ENTER_FIGHT_RESPONSE])
			self.battlePackages = protoSourceData()
			self.battlePackages:ParseFromString(asset.bytes)
		end
		asset = ResourcesManager:GetInstance():CoLoadAsync(BattleFieldManager:GetInstance().battlePath.."pve_start_response.txt",typeof(CS.UnityEngine.TextAsset))
		local protoSourceData = (MsgIDMap[MsgIDDefine.PBFIGHT_PVE_START_RESPONSE])
		self.startPackage = protoSourceData()
		self.startPackage:ParseFromString(asset.bytes)
		self.game_cache = {}
		local battle_role_config=DataUtil.GetData("battle_role_config")
		LoadPrefab(self,self.game_cache,self.battlePackages.enemyTeam, true,battle_role_config)
		LoadPrefab(self,self.game_cache,self.startPackage.myTeam, false,battle_role_config)
		local camAnimPath = curGuide.CamPath
		self.areaObject.transform.position=self.areaPosition
		self.areaObject.transform.eulerAngles=self.areaEuler
		CS.CamMaskUtilities.SetMaskColor(0,100);

		if not self.initial then
			--入场镜头
			self.initial = true



			InitBattleData(self)
			--如果剧情id不为空 先播放剧情
			PlayBlockAnim(self)
			if curGuide.StoryID ~= nil then
				StoryManager.TriggerStory(curGuide.StoryID)
			end

			PlayCamAnim(self,camAnimPath,function()
				EnterCamOver(self)
			end)
		else
			ChangeCamByState(self,-1,0);
			SceneLoadManager:GetInstance():ConfigLitAndShadow(self.scene_name,self.areaPosition,self.areaEuler)
			self.cam_game.transform.position = Vector3.New(-19.72,3.376,-0.5)
			self.cam_game.transform.eulerAngles = Vector3.New(6.218,87.8,0)
			self.cam_game.fieldOfView = 25
			PlayBlockAnim(self)
			--如果剧情id不为空 先播放剧情
			if curGuide.StoryID ~= nil then
				StoryManager.TriggerStory(curGuide.StoryID)
			end
			PlayCamAnim(self,camAnimPath,function()
				MiddleEnterBattle(self)
			end)
		end
	end)

end

-- 准备工作
function StoryBattleScene:OnComplete()
	--初始化相机
	self.changeCamFun = Bind(self,ChangeCamByState);
	UIManager:GetInstance():AddListener(UIMessageNames.UIEMBATTLE_CHANGE__CAM,self.changeCamFun);
	--cam fov
	--UIEMBATTLE_CHANGE__CAMFOV
	self.changeCamFovFun = Bind(self,ChangeCamFov);
	UIManager:GetInstance():AddListener(UIMessageNames.UIEMBATTLE_CHANGE__CAMFOV,self.changeCamFovFun);

	self.triggerWinEffect = Bind(self,TriggerWinEffect);
	UIManager:GetInstance():AddListener(UIMessageNames.UIBATTLE_WIN__CAM,self.triggerWinEffect);

	self.resetEnterBattle = Bind(self,ResetBattle);
	UIManager:GetInstance():AddListener(UIMessageNames.UIBATTLE_RESET_ENTER,self.resetEnterBattle);

	self.beginBattle = Bind(self,StoryBeginBattle)
	DataManager:GetInstance():AddListener(DataMessageNames.ON_GUIDE_STORY_BATTLE, self.beginBattle)

	self.createBoard = Bind(self,CreateBoardBroken)
	DataManager:GetInstance():AddListener(DataMessageNames.ON_GUIDE_BOARD_CREATE, self.createBoard)


	self.initial = false
	self.playBoardAnim = false
	self.areaObject=CS.UnityEngine.GameObject("BattleArea")

	base.OnComplete(self)
end


-- 离开场景
function StoryBattleScene:OnLeave()
	--停止背景音乐
	LJAudioManger:GetInstance():StopMusic(1.0)
	self.proxy:OnDestroy()
	self.proxy = nil
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIEMBATTLE_CHANGE__CAM,self.changeCamFun);
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIEMBATTLE_CHANGE__CAMFOV,self.changeCamFovFun);
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIBATTLE_WIN__CAM,self.triggerWinEffect);
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIBATTLE_RESET_ENTER,self.resetEnterBattle);
	DataManager:GetInstance():RemoveListener(DataMessageNames.ON_GUIDE_STORY_BATTLE, self.beginBattle)
	DataManager:GetInstance():RemoveListener(DataMessageNames.ON_GUIDE_BOARD_CREATE, self.createBoard)
	GameObjectPool:GetInstance():RecycleGameObject(cam_path,self.cam_cache);
	GameObjectPool:GetInstance():RecycleGameObject(self.post_process_path,self.post_process_game);
	SceneLoadManager:GetInstance():CleanSceneNode(self.scene_name)
	base.OnLeave(self)
	--self.cam_brain.enabled = false
	--elf.cam_game.gameObject:RemoveComponent(typeof(CS.Cinemachine.CinemachineBrain));
end


--
local function CoSceneRes(self)
	BattleFieldManager:GetInstance().battleType= BattleEnum.BattleType.STORY
	local guide_data = GuideManager:GetInstance():GetGuideData()
	self.scene_name = guide_data.Scene_Name
	self.scene_name = SceneLoadManager.GenSceneAssetFullPath(self.scene_name)
	local function ProgressCallback(co, progress)
		assert(progress <= 1.0, "What's the fuck!!!")
		return coroutine.yieldcallback(co,  progress )
	end

	SceneLoadManager:GetInstance():CoGenerateScene(self.scene_name,ProgressCallback)
	self.post_process_path = "Art/Scenes/Common/BattleBlackPostProcess.prefab"
	GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(self.post_process_path, 1, nil)
	GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(board_broken, 1, nil)
    --加载胜利后处理
    self.winPPVol = GameObjectPool:GetInstance():CoGetGameObjectAsync(winPPPath,nil)
	if self.winPPVol ~= nil then
		self.winPPVol.gameObject:SetActive(false)
	end
	local prefabId = guide_data.BattlePrefabId
	local battle_role_config=DataUtil.GetData("battle_role_config")
	if prefabId ~= nil then
		for i, v in ipairs(prefabId) do
			local config = battle_role_config[v]
			if config ~= nil then
				GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(config.prefab_Name,1,nil)
			end
		end
	end

	--SceneLoadManager:GetInstance():ConfigLitAndShadow(self.scene_name,self.areaPosition,self.areaEuler)
	--视频处理
	--self.video_player_path = "UI/Prefabs/Common/UIVideoPlayer.prefab"
	--GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(self.video_player_path, 1, nil)
	return coroutine.yieldbreak()

end
StoryBattleScene.CoSceneRes = CoSceneRes
return StoryBattleScene