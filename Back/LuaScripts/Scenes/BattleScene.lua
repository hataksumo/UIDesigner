
local BattlePveProxy=require "GameLogic.BattleNew.BattlePveProxy"
local BattleFieldManager=require "GameLogic.BattleNew.Logic.Manager.BattleFieldManager"
local BattleAssistFunction= require "GameLogic.BattleNew.BattleAssistFunction"
local BattleScene = BaseClass("BattleScene", BaseScene)
local base = BaseScene
local cam_path="UI/Prefabs/Other/UIBattleCam.prefab";
local CinemachineBlendDefinition = CS.Cinemachine.CinemachineBlendDefinition

local winPPPath = "Art/Scenes/Common/WinPostProcessVolume.prefab";



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

local function ResetBattle(self,_id,_map_pso,_campIndex,_passIndex)
	if _id == -1 then
		UIManager:GetInstance():CloseWindow(UIWindowNames.UIBattleIn)
		LJAudioManger:GetInstance():StopAllSoundEffect()
		self.proxy:OnDestroy()
		MapData:GetInstance():PassLevel(BattleFieldManager:GetInstance().fightId)
		DataManager:GetInstance():Broadcast("GuideBattleEnd")
		return
	end
	--发送战斗请求到服务器
	local msd_id = MsgIDDefine.PBFIGHT_ENTER_REED_FIGHT_REQUEST
	local msg = (MsgIDMap[msd_id])()
	msg.fightId=_id;
	LuHuaGuLouData:GetInstance():SetCurFightId(_id,_campIndex,_passIndex);
	BattleFieldManager:GetInstance().battleType=BattleEnum.BattleType.LUHUAGULOU
	BattleFieldManager:GetInstance().sceneConfigId=_map_pso
	Logger.Log("进入战斗数据")
	NetManager:GetInstance():SendMessage(msd_id, msg,function(msg_obj)
		if msg_obj.OpCode==0 then
			--进入场景
			--UIMask:GetInstance():ShowEmptyMask(-1)
			self.proxy:OnDestroy()
			SceneManager.ClearScene(function()
				BattleFieldManager:GetInstance().battlePackages = msg_obj.Packages.enterFight
				BattleFieldManager:GetInstance().resetBattle = true
				UIManager:GetInstance():OpenWindow(UIWindowNames.UIEmBattle2D)
			end)
			--UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, data.dropItem)
		elseif msg_obj.OpCode==1 then
			UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
		end
	end)
end

local function ClearEnterCam(self)
	if self.enter_cam_prb~= nil then
		GameObjectPool:GetInstance():RecycleGameObject(self.enter_cam,self.enter_cam_prb)
		self.enter_cam_prb = nil
	end
end
local function OnMusicSet(self,isplay)
	if isplay then
		LJAudioManger:GetInstance():PlayMusic(LJAudioManger.FIGHT_BG_MUSIC)
	end

end
local function ResetEnterBattle(self)
	--UIMask:GetInstance():CloseEmptyMask(-1)
	OnMusicSet(self,true)
	self.camList[1].transform.localPosition = Vector3.New(self.config.cameraPos[1],self.config.cameraPos[2],self.config.cameraPos[3])
	self.camList[1].transform.localEulerAngles = Vector3.New(self.config.CameraEuler[1],self.config.CameraEuler[2],self.config.CameraEuler[3])
	self.proxy = BattlePveProxy.New()
	self.proxy:OnInit(BattleFieldManager:GetInstance().battlePackages,self.config.RGBA,1.5,self.game_cache)
	GameObjectPool:GetInstance():GetGameObjectAsync(self.enter_cam,function (go)
		if not IsNull(go) then
			go.transform.eulerAngles = self.areaEuler
			local pd =  CS.LJ_TimelineExtension.PlayableDirectorBindingHelper.BindingBattleCamera(go,self.cam_brain)
			local camTime = 0.1
			if pd ~= nil then
				camTime = pd.duration
			end
			--播放音效
			LJAudioManger:GetInstance():PlayVoice("UI_Camera_01")
			TimerManager:GetInstance():SimpleTimerArgs(camTime,function ()
				self.enter_cam_prb=go;
				ChangeCamByState(self,1,0.5);
				ClearEnterCam(self)
				self.proxy:SetControlCamera(self.camList[1],self.story_id)
			end,nil,true)
		else
			TimerManager:GetInstance():SimpleTimerArgs(0.1,function ()
				self.enter_cam_prb=nil;
				ChangeCamByState(self,1,0.5);
				self.proxy:SetControlCamera(self.camList[1],self.story_id)
			end,nil,true)
		end

	end)

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

function BattleScene:OnCreate()
	base.OnCreate(self)


	--战斗
	self.proxy=nil
end


local function EnterCamOver(self)
	self.enter_anim_over = 4
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
			self.proxy:SetControlCamera(self.camList[1],self.story_id)
			ChangeCamByState(self,1,0.5);
			--UIManager:GetInstance():Broadcast(UIMessageNames.UIEMBATTLE_ON_SET_LAYOUT_ALPHA);
		end
		ClearEnterCam(self)
	end)
end


--播放入场动画
local function PlayEnterSceneAnim(self)
	self.camState =30
	self.camIndexOffset = 0
	if self.enter_anim_over == 1 or self.enter_anim_over == 3 then
		return
	elseif self.enter_anim_over == 2 then
		if self.enter_timer == nil then
			self.enter_pd:Play()
			TimerManager:GetInstance():SimpleTimerArgs(self.enter_pd.duration - self.pass_enter_time,function ()
				self.enter_anim_over = 3
				CS.CamMaskUtilities.SetMaskColor(0,0)
				--self.cam_brain.enabled = false;
				if self.can_begin_battle then
					EnterCamOver(self)
				end
			end,nil,true)
		end
		return
	end
	self.enter_anim_over = 1
	GameObjectPool:GetInstance():GetGameObjectAsync(self.enter_cam,function (go)
		local camTime = 0.1
		if not IsNull(go) then
			--go.transform:Find("Play"):GetComponent(typeof(CS.UnityEngine.Playables.PlayableDirector)):Play()
			--初始化战斗
			go.transform.eulerAngles = self.areaEuler
			self.enter_pd = CS.LJ_TimelineExtension.PlayableDirectorBindingHelper.BindingBattleCamera(go,self.cam_brain)
			if self.enter_pd ~= nil then
				camTime = self.enter_pd.duration
			end
			--播放音效
			LJAudioManger:GetInstance():PlayVoice("UI_Camera_01")
			self.enter_anim_over = 2
			self.pass_enter_time = Time.time
			self.enter_cam_prb=go;
			self.enter_timer = TimerManager:GetInstance():SimpleTimerArgs(camTime,function ()
				self.enter_anim_over = 3
				self.enter_timer = nil
				CS.CamMaskUtilities.SetMaskColor(0,0)
				--self.cam_brain.enabled = false;
				if self.can_begin_battle then
					EnterCamOver(self)
				end
			end,nil,true)
		else
			self.enter_anim_over = 3
			if self.can_begin_battle then
				EnterCamOver(self)
			end
		end
	end)
end


local function BeginBattle(self)
	DataManager:GetInstance():Broadcast("EnterBattle")
	local curGuide = GuideGroup:GetInstance()
	local function EnterAnimPause(self)
		if self.enter_anim_over == 2 then
			self.pass_enter_time = Time.time - self.pass_enter_time
			if self.enter_pd ~= nil then
				self.enter_pd:Pause()
			end
			if self.enter_timer ~= nil then
				TimerManager:GetInstance():SimpleTimerStop(self.enter_timer)
				self.enter_timer = nil
			end
		end
	end
	if curGuide.Runing and curGuide.CurGuideItem.HandleType == 11  then

		return
	end

	self.can_begin_battle = true
	Logger.Log("--------->  begin battle"..tostring(self.enter_anim_over))
	if self.enter_anim_over == 3 then
		self.proxy=BattlePveProxy.New()
		self.proxy:OnInit(BattleFieldManager:GetInstance().battlePackages,self.config.RGBA,1.5,self.game_cache)
		EnterCamOver(self)
	elseif self.enter_anim_over < 3 then
		self.proxy=BattlePveProxy.New()
		self.proxy:OnInit(BattleFieldManager:GetInstance().battlePackages,self.config.RGBA,1.5,self.game_cache)
		PlayEnterSceneAnim(self)
	else

	end
end



-- 准备工作
function BattleScene:OnComplete()
	SceneLoadManager:GetInstance():ConfigLitAndShadow(self.scene_name,self.areaPosition,self.areaEuler)
	base.OnComplete(self)
	--触发剧情
    local play_story = false
	if self.story_id ~= nil and #self.story_id > 0 then
		local result = {}
		local plot = DataUtil.GetData("plot")
		for i, v in ipairs(self.story_id) do
			if plot[v] ~= nil then
				if plot[v].Param.msgId == 1 then
					table.insert(result,v)
				end
			else
				Logger.LogError("------>剧情表没有该剧情id  "..tostring(v))
			end

		end
		if #result > 0 then
			play_story = StoryManager.TriggerStory(result)
		end
	end
	self.can_begin_battle = false
	--CS.SceneDataUtilities.ConfigLitAndShadow(self.scene_asset ,self.areaPosition,self.areaEuler)
	--播放战斗背景音乐
	OnMusicSet(self,true)
	UIManager:GetInstance():AddListener(UIMessageNames.ON_MUSIC_MUTE_SET,OnMusicSet)

		--local areaPosition,areaEuler=BattleAssistFunction.GetBattleAreaInfo(BattleFieldManager:GetInstance().sceneConfigId)
	--初始化相机
	self.cam_game = CS.UnityEngine.Camera.main;
	self.cam_brain = self.cam_game.gameObject:GetComponent(typeof(CS.Cinemachine.CinemachineBrain));
	GameObjectPool:GetInstance():GetGameObjectAsync(self.post_process_path,function (go)
		self.post_process_game = go
	end)
	PlayEnterSceneAnim(self)
	if self.config ~= nil and self.config.Amb ~= nil then
		LJAudioManger:GetInstance():PlayVoice(self.config.Amb)
	end
	self.changeCamFun = Bind(self,ChangeCamByState);
	UIManager:GetInstance():AddListener(UIMessageNames.UIEMBATTLE_CHANGE__CAM,self.changeCamFun);
	--cam fov
	--UIEMBATTLE_CHANGE__CAMFOV
	self.changeCamFovFun = Bind(self,ChangeCamFov);
	UIManager:GetInstance():AddListener(UIMessageNames.UIEMBATTLE_CHANGE__CAMFOV,self.changeCamFovFun);

	self.resetBattle = Bind(self,ResetBattle);
	UIManager:GetInstance():AddListener(UIMessageNames.UIBATTLE_RESET_ENTER,self.resetBattle);

	self.resetEnterBattle = Bind(self, ResetEnterBattle);
	UIManager:GetInstance():AddListener(UIMessageNames.UIBATTLE_RESET_ENTER_BATTLE,self.resetEnterBattle);

	--win cam
	self.triggerWinEffect = Bind(self,TriggerWinEffect);
	UIManager:GetInstance():AddListener(UIMessageNames.UIBATTLE_WIN__CAM,self.triggerWinEffect);

	self.beginBattle = Bind(self,BeginBattle)
	DataManager:GetInstance():AddListener(DataMessageNames.ON_LOADING_OVER, self.beginBattle)

	if self.winPPVol ~= nil then
		self.winPPVol.transform:SetParent(self.cam_brain.transform,false)
	end

    if play_story then
        BeginBattle(self)
    end
end

-- 离开场景
function BattleScene:OnLeave()
	--停止背景音乐
	LJAudioManger:GetInstance():StopMusic(1.0)
	ClearEnterCam(self)
	if self.proxy ~= nil then
		self.proxy:OnDestroy()
		self.proxy = nil
	end
	UIManager:GetInstance():RemoveListener(UIMessageNames.ON_MUSIC_MUTE_SET, OnMusicSet)
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIEMBATTLE_CHANGE__CAM,self.changeCamFun);
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIEMBATTLE_CHANGE__CAMFOV,self.changeCamFovFun);
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIBATTLE_RESET_ENTER,self.resetBattle);
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIBATTLE_RESET_ENTER_BATTLE,self.resetEnterBattle);
	UIManager:GetInstance():RemoveListener(UIMessageNames.UIBATTLE_WIN__CAM,self.triggerWinEffect);
	DataManager:GetInstance():RemoveListener(DataMessageNames.ON_LOADING_OVER, self.beginBattle)
	if not IsNull(self.cam_cache) then
		GameObjectPool:GetInstance():RecycleGameObject(cam_path,self.cam_cache);
	end

	if not IsNull(self.post_process_game) then
		GameObjectPool:GetInstance():RecycleGameObject(self.post_process_path,self.post_process_game);
	end
	--if self.scene_asset ~= nil then
	--	CS.SceneDataUtilities.CleanSceneNode(self.scene_asset)
	--end
    if not string.isNilOrEmpty(self.scene_name) then
        SceneLoadManager:GetInstance():CleanSceneNode(self.scene_name)
    end
	UIUtil.CleanDynamicCreateScenePath()
	base.OnLeave(self)
	--self.cam_brain.enabled = false
	--elf.cam_game.gameObject:RemoveComponent(typeof(CS.Cinemachine.CinemachineBrain));
end



local function CoSceneRes(self)
	self.scene_name = "Map_chilianjie_4-2"
	local curBattleType = BattleFieldManager:GetInstance().battleType
    if curBattleType == BattleEnum.BattleType.NORMAL or curBattleType == BattleEnum.BattleType.GUIDE then
        local leveldata = MapData:GetInstance().curSelectLevelDoing
        if leveldata ~= nil then
            self.scene_name = leveldata._data.SceneName
			self.story_id = leveldata._data.StoryId
        end
    elseif curBattleType == BattleEnum.BattleType.TESTHOARD then
        self.scene_name = TestHoardData:GetInstance().fightSceneName
	elseif curBattleType == BattleEnum.BattleType.BIOGRAPLY then
		self.scene_name = BiographyData:GetInstance().fightSceneName
    end
	self.scene_name = SceneLoadManager.GenSceneAssetFullPath(self.scene_name)
	--local aniPath = "Art/Scenes/scene_"..scene_name.."/scene_"..scene_name.."/"..scene_name.."_sceneData.asset";
	self.config=DataUtil.GetData("battle_field_data")[BattleFieldManager:GetInstance().sceneConfigId]
	self.enter_cam = "Art/Scenes/Common/Enter.prefab"
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
	self.areaPosition,self.areaEuler=BattleAssistFunction.GetBattleAreaInfo(BattleFieldManager:GetInstance().sceneConfigId)
    --加载战斗中用到的模型
    self.areaObject=CS.UnityEngine.GameObject("BattleArea")
	self.areaObject.transform.position=self.areaPosition
	self.areaObject.transform.eulerAngles=self.areaEuler
    local battle_role_config=DataUtil.GetData("battle_role_config")
    local function LoadPrefab(list,data,type,isEnemy)
		local playerType = BattleEnum.BattlePlayerType.MINE
		if isEnemy then
			playerType = BattleEnum.BattlePlayerType.ENEMY
		end
        if data ~= nil then
            for i, v in ipairs(data) do
				local viewDataId = BattleAssistFunction.GetCardIdByTeamAndEntityId(playerType, v.entityId)
                local config = battle_role_config[viewDataId]
                if config ~= nil then
                    if type == 1 then
                        local role = GameObjectPool:GetInstance():CoGetGameObjectAsync(config.prefab_Name)
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
                    else
                        GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(config.prefab_Name, 1)
                    end
                end
            end
        end
    end
    local battle_group = BattleFieldManager:GetInstance().battleLoadPackage
    self.game_cache = {}
    LoadPrefab(self.game_cache,battle_group.myTeam,1, false)
    LoadPrefab(self.game_cache,battle_group.myGuard,2, false)
    LoadPrefab(self.game_cache,battle_group.enemyTeam,1, true)
    LoadPrefab(self.game_cache,battle_group.enemyGuard,2, true)

	SceneLoadManager:GetInstance():CoGenerateScene(self.scene_name,ProgressCallback)
	--加载镜头
	GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(self.enter_cam, 1, nil)
	self.post_process_path = "Art/Scenes/Common/BattleBlackPostProcess.prefab"
	GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(self.post_process_path, 1, nil)
    --加载胜利后处理
    self.winPPVol = GameObjectPool:GetInstance():CoGetGameObjectAsync(winPPPath,nil)
	if self.winPPVol ~= nil then
		self.winPPVol.gameObject:SetActive(false)
	end
	--配置场景光影

	--CS.SceneDataUtilities.ConfigLitAndShadow(asset,self.areaPosition,self.areaEuler)
	--SceneLoadManager:GetInstance():ConfigLitAndShadow(self.scene_name,self.areaPosition,self.areaEuler)
	return coroutine.yieldbreak()

end
BattleScene.CoSceneRes = CoSceneRes
BattleScene.OnMusicSet = OnMusicSet
return BattleScene