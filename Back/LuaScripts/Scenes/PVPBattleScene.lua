
local PVPBattlePveProxy=require "GameLogic.BattleNew.PVPBattlePveProxy"
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local BattleAssistFunction= require "GameLogic.BattleNew.BattleAssistFunction"
local PVPBattleScene = BaseClass("PVPBattleScene", BaseScene)
local base = BaseScene
local cam_path="UI/Prefabs/Other/UIBattleCam.prefab";
local CinemachineBlendDefinition = CS.Cinemachine.CinemachineBlendDefinition

local winPPPath = "Art/Scenes/Common/WinPostProcessVolume.prefab";

local function InitCamParams(self)
	self.camState =30
	self.camIndexOffset = 0
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

function PVPBattleScene:OnCreate()
	base.OnCreate(self)


	--战斗
	self.proxy=nil
end


local function EnterCamOver(self)
	--CS.SceneDataUtilities.TriggerBlockCompont()
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
			--CS.SceneDataUtilities.ConfigBattleCam(self.camList[1]
            SceneLoadManager:GetInstance():ConfigBattleCam(self.camList[1]
			,Vector3.New(self.config.cameraPos[1],self.config.cameraPos[2],self.config.cameraPos[3])
			,Vector3.New(self.config.CameraEuler[1],self.config.CameraEuler[2],self.config.CameraEuler[3])
			,self.config.Fov
			,Vector3.New(0,0,0)
			)

			if #self.camList >= 3 then

				--CS.SceneDataUtilities.ConfigBattleCam(self.camList[3]
                SceneLoadManager:GetInstance():ConfigBattleCam(self.camList[3]
				,Vector3.New(17.74,8.2,-11.86)---8.7
				,Vector3.New(19.8,-55.9,0)
				,25
				,Vector3.New(-1.33,0,0.6)

				)
			end
			self.proxy:SetControlCamera(self.camList[1])
			ChangeCamByState(self,1,0);
			if BattleFieldManager:GetInstance().middleEnterBattle then
				self.proxy:ReEnter(self.config.RGBA,1.5)
			else
				self.proxy:OnInit(self.config.RGBA,1.5,BattleFieldManager:GetInstance().battlePackages,self.game_cache)
			end
		end
	end)
end
--pvp加载完成
local function PvpLoadingEnd(self)
	if self.proxy ~= nil then
		self.proxy:ChangeState(BattleEnum.LogicState.BATTLE)
	end
	SceneManager:GetInstance():CloseLoading()
end

-- 准备工作
function PVPBattleScene:OnComplete()
	base.OnComplete(self)
	--播放战斗背景音乐
	LJAudioManger:GetInstance():PlayMusic("BGM_Fighting_Common")
	self.areaObject=CS.UnityEngine.GameObject("BattleArea")
	--local areaPosition,areaEuler=BattleAssistFunction.GetBattleAreaInfo(BattleFieldManager:GetInstance().sceneConfigId)
	self.areaObject.transform.position=self.areaPosition
	self.areaObject.transform.eulerAngles=self.areaEuler
	--初始化相机
	self.cam_game = CS.UnityEngine.Camera.main;
	self.cam_brain = self.cam_game.gameObject:GetComponent(typeof(CS.Cinemachine.CinemachineBrain));
	InitCamParams(self)
	if self.config ~= nil and self.config.Amb ~= nil then
		LJAudioManger:GetInstance():PlayVoice(self.config.Amb)
	end

	self.changeCamFun = Bind(self,ChangeCamByState);
	UIManager:GetInstance():AddListener(UIMessageNames.UIEMBATTLE_CHANGE__CAM,self.changeCamFun);
	--cam fov
	--UIEMBATTLE_CHANGE__CAMFOV
	self.changeCamFovFun = Bind(self,ChangeCamFov);
	UIManager:GetInstance():AddListener(UIMessageNames.UIEMBATTLE_CHANGE__CAMFOV,self.changeCamFovFun);

	self.loadingEndFun = Bind(self,PvpLoadingEnd)
	DataManager:GetInstance():AddListener(DataMessageNames.ON_PVP_LOADING_END, self.loadingEndFun)

	--win cam
	self.triggerWinEffect = Bind(self,TriggerWinEffect);
	UIManager:GetInstance():AddListener(UIMessageNames.UIBATTLE_WIN__CAM,self.triggerWinEffect);
	if self.winPPVol ~= nil then
		self.winPPVol.transform:SetParent(self.cam_brain.transform,false)
	end
	GameObjectPool:GetInstance():GetGameObjectAsync(self.post_process_path,function (go)
		self.post_process_game = go
	end)
	self.proxy=PVPBattlePveProxy.New()
	EnterCamOver(self)
	if not BattleFieldManager:GetInstance().middleEnterBattle then
		return true
	end

end

-- 离开场景
function PVPBattleScene:OnLeave()
	--停止背景音乐
	LJAudioManger:GetInstance():StopMusic(1.0)
	self.proxy:OnDestroy()
	self.proxy = nil
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIEMBATTLE_CHANGE__CAM,self.changeCamFun);
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIEMBATTLE_CHANGE__CAMFOV,self.changeCamFovFun);
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIBATTLE_WIN__CAM,self.triggerWinEffect);
	DataManager:GetInstance():RemoveListener(DataMessageNames.ON_PVP_LOADING_END, self.loadingEndFun)
	GameObjectPool:GetInstance():RecycleGameObject(cam_path,self.cam_cache);
	GameObjectPool:GetInstance():RecycleGameObject(self.post_process_path,self.post_process_game);
	--if self.scene_asset ~= nil then
		--CS.SceneDataUtilities.CleanSceneNode(self.scene_asset)
	--end
    if not string.isNilOrEmpty(self.scene_name) then
        SceneLoadManager:GetInstance():CleanSceneNode(self.scene_name)
    end
	base.OnLeave(self)
	--self.cam_brain.enabled = false
	--elf.cam_game.gameObject:RemoveComponent(typeof(CS.Cinemachine.CinemachineBrain));
end

local function CoSceneRes(self)
	BattleFieldManager:GetInstance().fightId = -1
	BattleFieldManager:GetInstance().sceneConfigId = 14
	BattleFieldManager:GetInstance().battleType= BattleEnum.BattleType.PVP
    self.scene_name =SceneLoadManager.GenSceneAssetFullPath( "Map_chilianjie_4-2")
	--local aniPath = "Art/Scenes/scene_"..scene_name.."/scene_"..scene_name.."/"..scene_name.."_sceneData.asset";

	self.config=DataUtil.GetData("battle_field_data")[BattleFieldManager:GetInstance().sceneConfigId]
	local function ProgressCallback(co, progress)
		--assert(progress <= 1.0, "What's the fuck!!!")
		return coroutine.yieldcallback(co,  progress )
	end
	--local asset = ResourcesManager:GetInstance():CoLoadSceneAsync(aniPath, typeof(CS.SceneDataAsset), ProgressCallback)
	--local v1 = CS.SceneDataUtilities.GeneratScene(asset)
	--self.scene_asset = asset
	--coroutine.waitwhile(function ()
	--	return	v1:MoveNext()
	--end)
    SceneLoadManager:GetInstance():CoGenerateScene(self.scene_name,ProgressCallback)
	self.post_process_path = "Art/Scenes/Common/BattleBlackPostProcess.prefab"
	GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(self.post_process_path, 1, nil)
	--加载战斗中用到的模型

	if not BattleFieldManager:GetInstance().middleEnterBattle then
		local battle_role_config=DataUtil.GetData("battle_role_config")
		local function LoadPrefab(list,data,type)
			if data ~= nil then
				for i, v in ipairs(data) do
					if battle_role_config[v.entityId] ~= nil then
						if type == 1 then
							local role = GameObjectPool:GetInstance():CoGetGameObjectAsync(battle_role_config[v.entityId].prefab_Name)
							if role ~= nil then
								local tempList = list[battle_role_config[v.entityId].prefab_Name]
								if tempList == nil then
									tempList = {}
									list[battle_role_config[v.entityId].prefab_Name] = tempList
								end
								table.insert(tempList,role)
							end
						else
							GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(battle_role_config[v.entityId].prefab_Name, 1)
						end
					end
				end
			end
		end
		local battle_group = BattleFieldManager:GetInstance().battlePackages
		self.game_cache = {}
		LoadPrefab(self.game_cache,battle_group.myTeam,1)
		LoadPrefab(self.game_cache,battle_group.myGuard,2)
		LoadPrefab(self.game_cache,battle_group.enemyTeam,1)
		LoadPrefab(self.game_cache,battle_group.enemyGuard,2)
	end

    --加载胜利后处理
    self.winPPVol = GameObjectPool:GetInstance():CoGetGameObjectAsync(winPPPath,nil)
	if self.winPPVol ~= nil then
		self.winPPVol.gameObject:SetActive(false)
	end
	--配置场景光影
	self.areaPosition,self.areaEuler=BattleAssistFunction.GetBattleAreaInfo(BattleFieldManager:GetInstance().sceneConfigId)
	--CS.SceneDataUtilities.ConfigLitAndShadow(asset,self.areaPosition,self.areaEuler)
    SceneLoadManager:GetInstance():ConfigLitAndShadow(self.scene_name,self.areaPosition,self.areaEuler)
    --视频处理
	self.video_player_path = "UI/Prefabs/Common/UIVideoPlayer.prefab"
	GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(self.video_player_path, 1, nil)
	return coroutine.yieldbreak()

end
PVPBattleScene.CoSceneRes = CoSceneRes
return PVPBattleScene