--[[
    国战场景总控实例对象
]]
local NationProxy = BaseClass("NationProxy", Updatable)

local NationMapManager = require "GameLogic.Nation.Logic.Manager.NationMapManager"
local NationCameraManager = require "GameLogic.Nation.Logic.Manager.NationCameraManager"
--local NationTeamManager = require "GameLogic.Nation.Logic.Manager.NationTeamManager"

local TeamBattleFX = require "GameLogic.Nation.Logic.Object.NationTeamBattleFX"

local NationUtil = require "GameLogic.Nation.NationUtil"

local EasyTouch = CS.HedgehogTeam.EasyTouch.EasyTouch
local GameObject = CS.UnityEngine.GameObject
local Reporter = CS.Reporter
local EventSystem = CS.UnityEngine.EventSystems.EventSystem

local NATION_EASY_TOUCH_PINCH_IN = 1
local NATION_EASY_TOUCH_PINCH_OUT = 2
local NATION_EASY_TOUCH_SWIPE_START = 3
local NATION_EASY_TOUCH_SWIPE = 4
local NATION_EASY_TOUCH_SWIPE_END = 5
local NATION_EASY_TOUCH_START = 6
local NATION_EASY_TOUCH_UP = 7
local NATION_EASY_TOUCH_SIMPLE_TAP = 8
local NATION_EASY_TOUCH_DOWN = 9

local MAIN_CM_CAMERA_NAME = "CM vcam1"
local CM_CAMERA_LOOK_OBJ_NAME = "cmCameraLookAt"
local SCENE_CANVAS_NAME = "SceneCanvas"
local SCENE_MARCH_ROOT_NAME = "MarchRoot"
local REPORTER_OBJECT_NAME = "Reporter"
local EASY_TOUCH_NAME = "Easytouch"
local CHARACTER_2D_RENDERER = "Char2DRenderer"
local CHARA_MODEL_ROOT = "3DModelRoot"
--local CinemachineBlendDefinition = CS.Cinemachine.CinemachineBlendDefinition
-- 国战相机控制功能

local function __init(self)
    --self.scene = nil

    --地图管理器
    self.mapManager = nil
    --相机管理器
    self.cameraManager = nil
    ----界面管理器
    --self.uiManager=nil
    --队伍管理器
    --self.teamManager = nil
    -- 缓存UI时间处理器
    self.cacheEventSystem = nil
    --easyTouch事件列表
    self.easyTouchEventFunc = nil

    --data事件列表
    self.dataEventFunc = nil

    --场景画布对象
    self.sceneCanvas = nil

    --场景线路对象
    self.sceneMarch = nil


    --队伍战斗FX对象
    self.teamBattleFXList = {}

    --cm虚拟相机主相机
    self.mainCMCamera = nil
    --cm虚拟相机Body组件
    self.mainCMCameraBody = nil

    -- 移动地图事件结束
    self.nationCameraMoveEndData = nil

    --cm虚拟相机追踪点
    --self.cmCameraLookTran = nil
    self.cmCameraLookData = nil

    --需要一个地图遮罩以便触摸区域为中心
    self.mapClickPlane = nil

    --主相机
    self.mainCamera = nil
    self.cinemachineBrain = nil

    -- 行军路线材质球缓存
    self.marchLineMats = nil

    --选中格子
    self.selectCell = nil

    -- 3d模型相机
    self.chara2DRenderer = nil
    self.model3DRoot = nil
    ---------自定义参数--------
    --是否进行了一次拖动
    self.isEasyTouchSwipe = nil
    self.isSendMsgUpdateWarCell = nil

    self.isCatchingCurScreenBuild = nil
    --self.warCellList = {}
    self.siegeBuildList = {}

    self.fingerSwipeTimer = nil

    self.fogCount = 0
    --------参数end--------
end

-- 析构函数
local function __delete(self)
    --self.scene = nil
    Logger.LogVars("-------------NationProxy __delete-----------------------------------")

end

local function Dispose(self)
    if self.mapManager ~= nil then
        self.mapManager:Dispose()
    end
    self.mapManager = nil

    if self.cameraManager ~= nil then
        self.cameraManager:Dispose()
    end
    self.cameraManager = nil



    --if self.teamManager ~= nil then
    --    self.teamManager:Dispose()
    --end
    --self.teamManager = nil

    if self.nationCameraMoveEndData ~= nil then
        if self.nationCameraMoveEndData.mainCMNationCameraMoveEnd ~= nil then
            local ctrl = self.nationCameraMoveEndData.mainCMNationCameraMoveEnd
            if self.mainCMCamera ~= nil then
                self.mainCMCamera:RemoveExtension(ctrl)
            end
            if ctrl.onNationVirtualCameraEnter ~= nil then
                --ctrl.onVirtualCameraEnter("-", self.nationCameraMoveEndData.onNationVirtualCameraEnter)
                self.nationCameraMoveEndData.mainCMNationCameraMoveEnd.onVirtualCameraEnter = nil
            end
        end
    end
    self.nationCameraMoveEndData = nil

    self.mainCMCamera = nil
    self.mainCMCameraBody = nil
    --self.cmCameraLookTran = nil
    self.cmCameraLookData = nil
    self.mapClickPlane = nil
    self.mainCamera = nil
    self.cinemachineBrain = nil

    if self.marchLineMats ~= nil then
        ResourcesManager:GetInstance():UnloadAssetBundle(NationDefine.MAP_LINE_MAT_SELF)
        ResourcesManager:GetInstance():UnloadAssetBundle(NationDefine.MAP_LINE_MAT_UNION)
        ResourcesManager:GetInstance():UnloadAssetBundle(NationDefine.MAP_LINE_MAT_ENEMY)
        self.marchLineMats = nil
    end

    --队伍战斗FX对象
    for _, v in pairs(self.teamBattleFXList) do
        if v ~= nil then
            v:OnDestroy()
        end
    end
    self.teamBattleFXList = nil

    if not IsNull(self.selectCell) then
        GameObjectPool:GetInstance():RecycleGameObject(NationDefine.MAP_DEFAULT_SELECT_TILEMAP, self.selectCell)
    end

    self.selectCell = nil

    self.isEasyTouchSwipe = nil
    self.isSendMsgUpdateWarCell = nil
    self.isCatchingCurScreenBuild = nil
    --self.warCellList = {}
    self.siegeBuildList = {}

    self:__DisposeWarCellFrameTimer()

    NationSceneUIManager:GetInstance():LeaveNation()

    --这个需要在关闭所有NationSceneUI后置nil
    self.chara2DRenderer = nil
    self.model3DRoot = nil

    self.sceneCanvas = nil
    self.sceneMarch = nil

    LogicTimerManager:GetInstance():RemoveTimer("GetWarCellTimer")

    self:RemoveEventListener()

    self.easyTouchEventFunc = nil
    self.dataEventFunc = nil
    if not IsNull(self.reporter) then
        self.reporter.numOfCircleToShow = 1
        self.reporter = nil
    end
    self.cacheEventSystem = nil


end

local function DoInit(self, nationScene)
    coroutine.start(self.__CoInit, self)
end


-- 加载场景根节点
local function __CoLoadSceneRoot(self)
    local scene_name = SceneLoadManager.GenSceneAssetFullPath(NationDefine.NATION_DYNAMIC_SCENE_ROOT)
    --local cur_percent = 0
    --local function ProgressCallback(co, progress)
    --    return coroutine.yieldcallback(co,  progress*0.5+cur_percent )
    --end
    --SceneLoadManager:GetInstance():CoGenerateScene(scene_name,ProgressCallback)
    SceneLoadManager:GetInstance():CoGenerateScene(scene_name, nil)
    SceneLoadManager:GetInstance():ConfigLitAndShadow(scene_name, Vector3.zero, Vector3.zero)
    self.sceneRootTran = SceneLoadManager:GetInstance():FindSceneRoot(scene_name).transform
end

local function __CoInit(self)

    self:__CoLoadSceneRoot()
    --地图管理器

    local cameraGameObj = GameObject.Find(MAIN_CM_CAMERA_NAME)
    cameraGameObj.transform:SetParent(self.sceneRootTran)
    local sceneCanvasGameObj = GameObject.Find(SCENE_CANVAS_NAME)
    sceneCanvasGameObj.transform:SetParent(self.sceneRootTran)
    local easyTouchGameObj = GameObject.Find(EASY_TOUCH_NAME)
    easyTouchGameObj.transform:SetParent(self.sceneRootTran)
    --local easyTouchCtrl = EasyTouch.instance
    --easyTouchCtrl.enable = true
    --easyTouchCtrl.allowUIDetection = true
    --easyTouchCtrl.enable2FingersGesture = true
    --easyTouchCtrl.enablePinch = true
    --easyTouchCtrl.enableSimulation = true
    ------------------new add---------------

    local reporterGameObj = GameObject.Find(REPORTER_OBJECT_NAME)
    if not IsNull(reporterGameObj) then
        self.reporter = reporterGameObj:GetComponent(typeof(Reporter))
        self.reporter.numOfCircleToShow = 20 -- 为了修改
    end

    -- 渲染模型相机
    local char2DRendererTrans = GameObject.Find(CHARACTER_2D_RENDERER).transform
    self.chara2DRenderer = char2DRendererTrans:GetComponent(typeof(CS.Character2DRenderer))
    self.chara2DRenderer:SetShowLayer(NationDefine.NATION_2D_CHAR_PARAMS.LAYER_CHARACTER, NationDefine.NATION_2D_CHAR_PARAMS.LAYER_NONE)
    self.model3DRoot = GameObject.Find(CHARA_MODEL_ROOT).transform
    char2DRendererTrans:SetParent(self.sceneRootTran)
    self.model3DRoot:SetParent(self.sceneRootTran)

    self.cacheEventSystem = EventSystem.current
    self.sceneCanvas = {}
    self.sceneCanvas.gameObject = sceneCanvasGameObj
    self.sceneCanvas.transform = sceneCanvasGameObj.transform

    NationSceneUIManager:GetInstance():EnterNation(self.sceneCanvas.gameObject)

    GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(NationDefine.MAP_MARCH_ROLE_FILE_NAME, NationDefine.MAP_MARCH_ROLE_PRE_LOAD_COUNT)
    GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(NationDefine.MAP_MARCH_LINE_TEMPLATE, NationDefine.MAP_MARCH_ROLE_PRE_LOAD_COUNT)
    GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(NationDefine.MAP_MARCH_3D_MODEL_FILE_NAME, NationDefine.MAP_MARCH_ROLE_PRE_LOAD_COUNT)

    local sceneMarchGameObj = GameObject.Find(SCENE_MARCH_ROOT_NAME)
    self.sceneMarch = {}
    self.sceneMarch.gameObject = sceneMarchGameObj
    self.sceneMarch.transform = sceneMarchGameObj.transform
    self.sceneMarch.transform:SetParent(self.sceneRootTran)
    self.marchLineMats = {}
    self.marchLineMats[NationDefine.NATION_MARCH_CAMP_FLAG.SELF] = ResourcesManager:GetInstance():
    CoLoadAsync(NationDefine.MAP_LINE_MAT_SELF, typeof(CS.UnityEngine.Material))
    self.marchLineMats[NationDefine.NATION_MARCH_CAMP_FLAG.UNION] = ResourcesManager:GetInstance():
    CoLoadAsync(NationDefine.MAP_LINE_MAT_UNION, typeof(CS.UnityEngine.Material))
    self.marchLineMats[NationDefine.NATION_MARCH_CAMP_FLAG.ENEMY] = ResourcesManager:GetInstance():
    CoLoadAsync(NationDefine.MAP_LINE_MAT_ENEMY, typeof(CS.UnityEngine.Material))

    --------------------------------

    self.mainCMCamera = cameraGameObj:GetComponent(typeof(CS.Cinemachine.CinemachineVirtualCamera))
    self.mainCMCameraBody = self.mainCMCamera:GetCinemachineComponent(CS.Cinemachine.CinemachineCore.Stage.Body)
    cast(self.mainCMCameraBody, typeof(CS.Cinemachine.CinemachineTransposer))

    if self.nationCameraMoveEndData == nil then
        self.nationCameraMoveEndData = {}
    end
    self.nationCameraMoveEndData.mainCMNationCameraMoveEnd = cameraGameObj:AddComponent(typeof(CS.Nation.CinemachineNationCameraMoveEnd))
    self.mainCMCamera:AddExtension(self.nationCameraMoveEndData.mainCMNationCameraMoveEnd)
    self.nationCameraMoveEndData.onNationVirtualCameraEnter = BindCallback(self, self.__onNationVirtualCameraEnter)
    --self.nationCameraMoveEndData.mainCMNationCameraMoveEnd.onVirtualCameraEnter
    --("+", self.nationCameraMoveEndData.onNationVirtualCameraEnter)
    self.nationCameraMoveEndData.mainCMNationCameraMoveEnd:Init(0.1,self.nationCameraMoveEndData.onNationVirtualCameraEnter)
    --self.nationCameraMoveEndData.mainCMNationCameraMoveEnd.onVirtualCameraEnter = self.nationCameraMoveEndData.onNationVirtualCameraEnter

    self.cmCameraLookData = {}
    self.cmCameraLookData.lastFollowTimeStamp = 0
    self.cmCameraLookData.cmCameraLookTran = GameObject.Find(CM_CAMERA_LOOK_OBJ_NAME).transform
    self.cmCameraLookData.cmCameraLookTran:SetParent(self.sceneRootTran)
    self.mainCamera = CS.UnityEngine.Camera.main
    self.cinemachineBrain = self.mainCamera.gameObject:GetComponent(typeof(CS.Cinemachine.CinemachineBrain))
    self.cinemachineBrain.m_DefaultBlend = CS.Cinemachine.CinemachineBlendDefinition(CS.Cinemachine.CinemachineBlendDefinition.Style.Cut, 0)

    coroutine.waitforframes(1)

    self.mapManager = NationMapManager.New()
    self.mapManager:DoInit(self.scene, self)
    coroutine.waitforframes(1)
    self.mapManager:CoInit()
    coroutine.waitforframes(1)

    local mainGrid = self.mapManager:GetUnityGrid()
    local mainGridForward = mainGrid.transform.forward
    local mainGridPosition = mainGrid.transform.position

    local mainGridLuaPosition = Vector3.New(mainGridPosition.x, mainGridPosition.y, mainGridPosition.z)
    local zeroLuaPosition = Vector3.New(0, 0, 0)
    local mainGridLuaDis = Vector3.Distance(mainGridLuaPosition, zeroLuaPosition)

    self.mapClickPlane = Plane.New(Vector3.New(mainGridForward.x, mainGridForward.y, mainGridForward.z):Mul(-1),
            mainGridLuaDis)

    coroutine.waitforframes(1)
    NationSceneUIManager:GetInstance():OpenWindow(UIWindowNames.UINationBuildName) -- 建筑名称
    coroutine.waitforframes(1)
    NationSceneUIManager:GetInstance():OpenWindow(UIWindowNames.UINationDefRecoverInfo)
    coroutine.waitforframes(1)

    -- 在这里注册一个事件
    local defaultPostion = self.mapManager:DefaultFocusMapLogic()
    self:SetCMCameraLookTransformPosition(defaultPostion.x, defaultPostion.y, false)

    -- load all timer
    self:CheckRunNationTimers()

    coroutine.waitforframes(1)
    self.cameraManager = NationCameraManager.New()
    self.cameraManager:DoInit(self)
    self.cameraManager:CoInitNationRouteManager(self.sceneRootTran)
    --local offsetVec3 = self.mainCMCameraBody.EffectiveOffset
    --self.mainCMCameraBody.m_FollowOffset = Vector3.New(offsetVec3.x, offsetVec3.y, NationDefine.NATION_PINCH_MAPS.DEFAULT)
    --self.cameraManager:ReCalcFogDistance(offsetVec3.x, offsetVec3.y, NationDefine.NATION_PINCH_MAPS.DEFAULT)
    coroutine.waitforframes(1)

    NationSceneUIManager:GetInstance():OpenWindow(UIWindowNames.UINationMarchMain) -- 路线对象

    coroutine.waitforframes(1)

    --启动，计时器，刷新屏幕内接战区地块的状态
    self:__UpdateCurScreenBuildingData()
    GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(NationDefine.MAP_DEFAULT_SELECT_TILEMAP, 1)

    coroutine.waitforframes(1)
    NationSceneUIManager:GetInstance():OpenWindow(UIWindowNames.UINationSceneFX)

    -- 打开主界面
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationMain)
    coroutine.waitforframes(1)
    --初始化，部分国战单例类
    NationCollectPosData:GetInstance()
    coroutine.waitforframes(1)
    self:__AfterCoLoadLogic()
    return coroutine.yieldbreak()
end

local function __AfterCoLoadLogic(self)
    NationMarchData:GetInstance():__ShowAllOtherMarch()
    self:InitBuildingNameFunc()
    self:AddEventListener()
    self.cameraManager:SetLineQuadTreeManagerCellSwapInOutDist()
end

--增加人物模型
local function AddCharacter2DRenderer(self, gameObject3D, sprite2D, image, width, height)
    if IsNull(self.chara2DRenderer) then
        return
    end
    self.chara2DRenderer:AddCharacterWidthHeight(gameObject3D, sprite2D, image, width, height)
end

--移除渲染人物模型
local function RemoveCharacter2DRenderer(self, gameObject3D)
    if IsNull(self.chara2DRenderer) then
        return
    end
    self.chara2DRenderer:RemoveCharacter(gameObject3D)
end

--设置渲染人物模型长宽
local function SetAllCharacter2DWidthHeight(self, width, height)
    if IsNull(self.chara2DRenderer) then
        return
    end
    self.chara2DRenderer:SetAllCharsWidthHeight(width, height)
end

--运行计时器
local function CheckRunNationTimers(self)
    NationTownData:GetInstance():__LogicTimer()
    NationPlayerData:GetInstance():__LogicTimer()
    NationOccupyData:GetInstance():__LogicTimer()
end

local function __DisposeWarCellFrameTimer(self)
    if self.fingerSwipeTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.fingerSwipeTimer)
        self.fingerSwipeTimer = nil
    end
end

--降帧处理，抬起后1s没有任何操作刷新地块等数据
local function RunWarCellFrameTimer(self)
    self:__DisposeWarCellFrameTimer()
    local countDown = 0
    local function updateTimer(self)
        countDown = countDown + 0.1
        if countDown >= 0.5 then
            self:GetBuildingsByCentre()
            if table.length(self.siegeBuildList) > 0 and self.isSendMsgUpdateWarCell == true then
                self.isCatchingCurScreenBuild = true
                NationNetManager:GetInstance():SendMsgGetWarCellStateData(self.siegeBuildList)
            end
            self:__DisposeWarCellFrameTimer()
        end
    end
    self.fingerSwipeTimer = TimerManager:GetInstance():SimpleTimerArgs(0.1, updateTimer, self, false, false)
end


--设置相机位置
local function SetCMCameraLookTransformPosition(self, x, y, isInitBuildName)
    --Logger.LogErrorVars("SetCMCameraLookTransformPosition x : ",x," y :",y)
    local z = self.cmCameraLookData.cmCameraLookTran.position.z

    x, y = self.mapManager:CalcMapBoundDataByXY(x, y)
    --cmCameraLookTran.positionxxxxxxx
    self.cmCameraLookData.cmCameraLookTran.position = Vector3.New(x, y, z)
    self.nationCameraMoveEndData.mainCMNationCameraMoveEnd:SetTriggerStatus(NationDefine.NATION_CM_PARAM.TRIGGER_END.WAIT)
    self.cmCameraLookData.lastFollowTimeStamp = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    self.cmCameraLookData.followEntity = nil
    self.cmCameraLookData.marchId = nil
    if isInitBuildName then
        self:InitBuildingNameFunc()
    end
end


--设置相机跟随某物体
local function SetCMCameraLookTransformLookAt(self, isFollow, nationMarchEntity, showBuildingName)
    if nationMarchEntity == nil then
        self.cmCameraLookData.followEntity = nil
        self.cmCameraLookData.marchId = nil
        return
    end

    local followPos = nationMarchEntity.transform.position
    local x = followPos.x
    local y = followPos.y
    local z = self.cmCameraLookData.cmCameraLookTran.position.z

    x, y = self.mapManager:CalcMapBoundDataByXY(x, y)
    --cmCameraLookTran.positionxxxxxxx
    self.cmCameraLookData.cmCameraLookTran.position = Vector3.New(x, y, z)
    self.nationCameraMoveEndData.mainCMNationCameraMoveEnd:SetTriggerStatus(NationDefine.NATION_CM_PARAM.TRIGGER_END.OK)
    self.cmCameraLookData.lastFollowTimeStamp = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    if isFollow then
        self.cmCameraLookData.followEntity = nationMarchEntity
        if nationMarchEntity ~= nil then
            self.cmCameraLookData.marchId = nationMarchEntity.nationArmyPath.marchId
        end
    else
        self.cmCameraLookData.followEntity = nil
        self.cmCameraLookData.marchId = nil
    end

    if showBuildingName then
        self:InitBuildingNameFunc()
    end
end

local function __UpdateCMCameraLookAt(self)
    if self.cmCameraLookData == nil then
        return
    end
    if self.cmCameraLookData.followEntity == nil then
        return
    end
    if self.cmCameraLookData.lastFollowTimeStamp + NationDefine.MAP_MARCH_FOLLOW_FLUSH_RATE_MS < TimeSyncManager:GetInstance():GetSimulationJavaMS() then
        return
    end

    local followPos = self.cmCameraLookData.followEntity.transform.position
    local x = followPos.x
    local y = followPos.y
    local z = self.cmCameraLookData.cmCameraLookTran.position.z

    x, y = self.mapManager:CalcMapBoundDataByXY(x, y)
    --cmCameraLookTran.positionxxxxxxx
    self.cmCameraLookData.cmCameraLookTran.position = Vector3.New(x, y, z)
    self.nationCameraMoveEndData.mainCMNationCameraMoveEnd:SetTriggerStatus(NationDefine.NATION_CM_PARAM.TRIGGER_END.OK)
    self.cmCameraLookData.lastFollowTimeStamp = TimeSyncManager:GetInstance():GetSimulationJavaMS()
end

local function OnEasyTouchStart(self, gesture)

    --if CS.GameUtility.IsPointerOverGameObject(self.cacheEventSystem) then
    --    self.isEasyTouchStartFromUI = true
    --else
    --    self.isEasyTouchStartFromUI = false
    --end

    if CS.GameUtility.IsPointerOverUIObjectTwo(self.cacheEventSystem, gesture.position) then
        self.isEasyTouchStartFromUI = true
    else
        self.isEasyTouchStartFromUI = false
    end
    --Logger.LogVars("OnEasyTouchStart  2 || isEasyTouchStartFromUI: " , self.isEasyTouchStartFromUI)
    self.isEasyTouchStart = true
    self.isEasyTouchSwipe = false
    self.isEasyTouchPinch = false
    local hasIgnoreUI = false
    if self.isEasyTouchStartFromUI then
        local tempTran = self.cacheEventSystem.currentSelectedGameObject
        if not IsNull(tempTran) then
            --Logger.LogErrorVars("OnEasyTouchStart tempTran : ",tempTran.gameObject.name)
            tempTran = tempTran.transform
            hasIgnoreUI = UIUtil.DoseTranParentHasName(tempTran, UIWindowNames.UINationTeamSideInfo)
            --Logger.LogVars("OnEasyTouchStart  4 || hasIgnoreUI: " , hasIgnoreUI)
            if not hasIgnoreUI then
                hasIgnoreUI = UIUtil.DoseTranParentHasName(tempTran, "RectTeamScrolls")
                --Logger.LogVars("OnEasyTouchStart  5 || hasIgnoreUI: " , hasIgnoreUI)
                if not hasIgnoreUI then
                    hasIgnoreUI = UIUtil.DoseTranParentHasName(tempTran, UIWindowNames.UINationTeamListInfo)
                    --Logger.LogVars("OnEasyTouchStart  6 || hasIgnoreUI: " , hasIgnoreUI)
                    if not hasIgnoreUI then
                        hasIgnoreUI = UIUtil.DoseTranParentHasName(tempTran, UIWindowNames.UINoticeTip)
                        --Logger.LogVars("OnEasyTouchStart  7 || hasIgnoreUI: " , hasIgnoreUI)
                    end
                end
            end
        end
    end

    --Logger.LogVars("OnEasyTouchStart  8 || hasIgnoreUI: " , hasIgnoreUI)
    if not hasIgnoreUI then
        -- 关闭侧边栏和左侧队伍选择界面 需要判断是不是自己的UI
        -- 不选中逻辑 但是先判断
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ONE_TEAM_MARCH_SELECT, nil, 0, 0)
    end
end

local function OnEasyTouchUp(self, gesture)

    if self.isEasyTouchStartFromUI then
        -- 抬起的时候触摸的是UI
        --Logger.LogErrorVars("OnEasyTouchUp   2222222222222222222222")
        self:__CleanEasyTouchData()
        return
    end


    --if self.cacheEventSystem:IsPointerOverGameObject() then -- 抬起的时候触摸的是UI
    --    --Logger.LogErrorVars("OnEasyTouchUp   2222222222222222222222")
    --    self:__CleanEasyTouchData()
    --    return
    --else
    --    --Logger.LogErrorVars("OnEasyTouchUp   3333333333333333333333333333")
    --end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_BUILDINFO_CLOSE)

    if self.isEasyTouchSwipe or self.isEasyTouchPinch then
        RunWarCellFrameTimer(self)
        if self.isEasyTouchPinch then
            if self.cameraManager == nil then
                return
            end
            local offsetVec3 = self.mainCMCameraBody.EffectiveOffset
            self.cameraManager:SetLineQuadTreeManagerCellSwapInOutDist()
            self.cameraManager:ReCalcFogDistance(offsetVec3.x, offsetVec3.y, offsetVec3.z)
        end
    else
        if not self.isEasyTouchStartFromUI then
            local position = gesture.position
            self:__DoClickBuildingLogic(position)
        end
    end

    self:__CleanEasyTouchData()
end

local function __CleanEasyTouchData(self)
    self.isEasyTouchSwipe = false
    self.isEasyTouchStart = false
    self.isEasyTouchPinch = false
    self.isEasyTouchStartFromUI = false
end

--往外缩放，每帧调用
local function OnEasyTouchPinchIn(self, gesture)
    --Logger.LogVars("OnEasyTouchPinchIn || isEasyTouchStartFromUI: " , self.isEasyTouchStartFromUI)
    if self.isEasyTouchStartFromUI then
        return
    end

    self.isEasyTouchPinch = true
    --counter = counter + 1
    --Logger.LogErrorVars(" OnEasyTouchPinchIn "..counter)
    local zoom = gesture.deltaPinch * Time.deltaTime;
    local offsetVec3 = self.mainCMCameraBody.EffectiveOffset
    local offsetZ = offsetVec3.z

    if offsetZ <= NationDefine.NATION_PINCH_MAPS.MIN then
        return
    else
        if offsetZ - zoom >= NationDefine.NATION_PINCH_MAPS.MIN then
            offsetZ = offsetZ - zoom
        else
            offsetZ = NationDefine.NATION_PINCH_MAPS.MIN
        end
        self.mainCMCameraBody.m_FollowOffset = Vector3.New(offsetVec3.x, offsetVec3.y, offsetZ)
        self.cameraManager:ReCalcFogDistance(offsetVec3.x, offsetVec3.y, offsetZ)
    end
end

--往回缩放，每帧调用
local function OnEasyTouchPinchOut(self, gesture)
    --Logger.LogVars("OnEasyTouchPinchOut || isEasyTouchStartFromUI: " , self.isEasyTouchStartFromUI)
    if self.isEasyTouchStartFromUI then
        return
    end
    self.fogCount = 0
    self.isEasyTouchPinch = true
    local zoom = gesture.deltaPinch * Time.deltaTime;
    local offsetVec3 = self.mainCMCameraBody.EffectiveOffset
    local offsetZ = offsetVec3.z

    if offsetZ >= NationDefine.NATION_PINCH_MAPS.MAX then
        return
    else
        if offsetZ + zoom <= NationDefine.NATION_PINCH_MAPS.MAX then
            offsetZ = offsetZ + zoom
        else
            offsetZ = NationDefine.NATION_PINCH_MAPS.MAX
        end
        self.mainCMCameraBody.m_FollowOffset = Vector3.New(offsetVec3.x, offsetVec3.y, offsetZ)
        self.cameraManager:ReCalcFogDistance(offsetVec3.x, offsetVec3.y, offsetZ)
    end
end

local function OnEasyTouchSwipeStart(self, gesture)
    if self.isEasyTouchStartFromUI then
        return
    end
    self.isEasyTouchSwipe = true
    --self:__DisposeWarCellFrameTimer()
    --if self.cacheEventSystem:IsPointerOverGameObject() then
    --    return
    --end
    --counter = counter + 1
    --Logger.LogErrorVars(" OnEasyTouchSwipeStart "..counter)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_EASY_TOUCH_SWIPE_START)
end

local function OnEasyTouchSwipe(self, gesture)

    if self.isEasyTouchPinch then
        return
    end

    if not self.isEasyTouchSwipe then
        return
    end

    --counter = counter + 1
    --Logger.LogErrorVars(" OnEasyTouchSwipe "..counter)

    local scalePos = gesture.deltaPosition * Time.deltaTime * 0.75

    local posX = self.cmCameraLookData.cmCameraLookTran.position.x - scalePos.x
    local posY = self.cmCameraLookData.cmCameraLookTran.position.y - scalePos.y

    self:SetCMCameraLookTransformPosition(posX, posY, false)
end

local function OnEasySwipeEnd(self, gesture)
    --if not self.isEasyTouchSwipe then
    --    return
    --end
    --counter = counter + 1
    --Logger.LogErrorVars(" OnEasySwipeEnd "..counter)
    --if self.fingerSwipeTimer == nil and self.isEasyTouchSwipe then
    --    RunWarCellFrameTimer(self)
    --end
    --self.isEasyTouchSwipe = false
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_EASY_TOUCH_SWIPE_END)
end

--local function OnEasyTouchDown(self, gesture)
--    --counter = counter + 1
--    --Logger.LogErrorVars(" OnEasyTouchDown "..counter)
--end

----一次快速的点击
--local function OnEasyTouchSimpleTap(self, gesture)
--
--end

local function __DoClickBuildingLogic(self, position)
    local unityRay = self.mainCamera:ScreenPointToRay(Vector3.New(position.x, position.y, 0))
    local unityRayDir = unityRay.direction
    local unityRayOrigin = unityRay.origin
    local myRay = Ray.New(Vector3.New(unityRayDir.x, unityRayDir.y, unityRayDir.z)
    , Vector3.New(unityRayOrigin.x, unityRayOrigin.y, unityRayOrigin.z))
    local hasCollider, rayLength = self.mapClickPlane:Raycast(myRay)
    if hasCollider then
        local hitPoint = myRay:GetPoint(rayLength);
        local unityCellPos = self.mapManager:GetGridUnityWorldToCell(hitPoint)
        self:__DoClickBuilding(NationUtil.GetCellId(unityCellPos.x, unityCellPos.y))
    end
end

local function __SelectOneCellTileMap(self, cellID)
    local posX, posY = NationUtil.GetXYByCellId(cellID)
    if self.selectCell == nil then
        self.selectCell = GameObjectPool:GetInstance():TryGetFromCache(NationDefine.MAP_DEFAULT_SELECT_TILEMAP)
        self.selectCell:SetActive(true)
    end

    local teamTransform = self.selectCell.transform
    teamTransform:SetParent(nil)
    teamTransform.position = self.mapManager:GetGridUnityCellToWorldByIntXYZ(posX, posY, 0)
end

local function __DoClickBuilding(self, cellID)
    local cellInfo, buildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(cellID)
    if buildInfo == nil then
        --Logger.LogVars("点到了无功能区域!")
        return
    end

    if buildInfo.Type == NationUtil.BUILDING_TYPE_YU_DU or
            buildInfo.Type == NationUtil.BUILDING_TYPE_WE_DU or
            buildInfo.Type == NationUtil.BUILDING_TYPE_GUAN_AI then
        -- 通过格子id获取格子信息
        if cellInfo == nil then
            -- 获取攻城战建筑信息
            --Logger.LogVars("获取攻城战建筑信息!")
            NationNetManager:GetInstance():SendGetNationWarBuildingRequest(buildInfo.BuildId, Bind(self, self.__GetNationTownRequestCallback))
        else
            self:__SelectOneCellTileMap(cellID)
            if cellInfo.Type == NationUtil.CELL_TYPE_OUTSIDE or cellInfo.Type == NationUtil.CELL_TYPE_INNER then
                --获取格子信息
                --Logger.LogVars("获取格子信息!")
                NationNetManager:GetInstance():SendGetNationWarCellRequest(buildInfo.BuildId, cellInfo.Id, Bind(self, self.__SendGetNationWarCellRequestCallback))
            elseif cellInfo.Type == NationUtil.CELL_TYPE_UNUSERD then
                -- 获取攻城战建筑信息
                --Logger.LogVars("点到了接战区阻碍区块!无操作")
                NationSceneUIManager:GetInstance():OpenWindow(UIWindowNames.UINationRoadblockTip, cellInfo.Id)
            end
        end
    elseif buildInfo.Type == NationUtil.BUILDING_TYPE_TOWN then
        -- 通过建筑id获取城市信息
        --Logger.LogVars("在点击城镇打开chengzhen界面")
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UINationTownBuilding, buildInfo.BuildId)
        NationSceneUIManager:GetInstance():OpenWindow(UIWindowNames.UINationTownBuildInfo, buildInfo.BuildId)
    elseif buildInfo.Type == NationUtil.BUILDING_TYPE_RESOURCE or buildInfo.Type == NationUtil.BUILDING_TYPE_PUNITIVE then
        --Logger.LogVars("点到资源区!")
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UINationResAndMonsterBuildingTip, buildInfo.BuildId, self.mapManager)
        NationSceneUIManager:GetInstance():OpenWindow(UIWindowNames.UINationResBuildInfo, buildInfo.BuildId)
    else
        -- 其他情况
        --Logger.LogVars("点到的建筑类型不存在!")
    end
end

local function __SendGetNationWarCellRequestCallback(self, opCode, cellId, package)
    if opCode ~= 0 then

    else
        -- 打开详情界面
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationWarCell, { package = package, id = cellId });
    end
end

local function __GetNationTownRequestCallback(self, opCode, buildingId, packages)
    if opCode ~= 0 then

    else
        --1.域都
        --2.卫都
        --3.关隘
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UINationBuildInfo, packages, buildingId)
        NationSceneUIManager:GetInstance():OpenWindow(UIWindowNames.UINationSiegeBuildInfo, packages, buildingId)
    end
end

local function __GetNationWarBuildingRequestCallback(self, opCode, buildingId, packages)
    if opCode ~= 0 then

    else
        -- 打开详情界面
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationTownBuilding, { package = packages, buildingId = buildingId })
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonBuildingCityInfoTip,{package = msg_obj.Packages,buildingId = msgBuildingId})
    end
end

local function SetWarCellUI(self, msgObj)
    --Logger.Log("收到地块数据")
    self.isCatchingCurScreenBuild = false

    if msgObj == nil or msgObj._is_null then
        return
    end

    local posX = nil
    local posY = nil
    local tileImage = nil

    local playerWarCell = {}
    local unionWarCell = {}
    for _, v in ipairs(msgObj) do
        posX = math.modf(v.cellId / 10000)
        posY = math.modf(v.cellId % 10000)
        --0:没有占领 1:自己占领 2:盟友占领 3:他人占领 4：放弃占领
        if v.state == 0 then
            tileImage = NationDefine.MAP_DYNAMIC_CELL.BATTLE_ZONE_1
        elseif v.state == 1 then
            tileImage = NationDefine.MAP_DYNAMIC_CELL.BATTLE_ZONE_2
            playerWarCell[v.cellId] = v.cellId
        elseif v.state == 2 then
            tileImage = NationDefine.MAP_DYNAMIC_CELL.BATTLE_ZONE_4
            unionWarCell[v.cellId] = v.cellId
        elseif v.state == 3 then
            tileImage = NationDefine.MAP_DYNAMIC_CELL.BATTLE_ZONE_3
        elseif v.state == 4 then
            tileImage = NationDefine.MAP_DYNAMIC_CELL.BATTLE_ZONE_2
            playerWarCell[v.cellId] = v.cellId
        end

        self.mapManager:SetTileBaseByTileIndex(NationDefine.MAP_DEFAULT_CODER_BLOCK_LAYER_NAME, posX, posY, 0, tileImage)
    end

    NationTownData:GetInstance():UpdatePlayerOccupyWarCellData(playerWarCell, unionWarCell)
end
--定时，向服务器请求当前屏幕内的接战区块的状态
local function __UpdateCurScreenBuildingData(self)
    local function UpdateTimer(self)
        --Logger.Log("计时器！！！！！")
        if table.length(self.obj.siegeBuildList) > 0 and self.obj.isCatchingCurScreenBuild == false then
            --Logger.Log("发送消息获得地块数据"..UIUtil.GetTimeStrDHMS(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000))
            NationNetManager:GetInstance():SendMsgGetWarCellStateData(self.obj.siegeBuildList)
            self.obj.isCatchingCurScreenBuild = true
        end
    end
    LogicTimerManager                                                                                          :GetInstance():AddServerTimer("GetWarCellTimer", LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR
    , SyncTimer.MODE_STEP, TimeSyncManager:GetInstance():GetSimulationJavaMS(), 3000, false, UpdateTimer, self):Start()
end

local function GetBuildingsByCentre(self)
    self.isSendMsgUpdateWarCell = false
    local buildList = {}

    local isChange = false
    local curSiegeList = {}
    if self.cmCameraLookData == nil then
        return
    end
    local nextCMCameraLookWorldUnityPos = self.cmCameraLookData.cmCameraLookTran.position
    local luaLookStartPos = Vector3(nextCMCameraLookWorldUnityPos.x, nextCMCameraLookWorldUnityPos.y, self.mainCMCamera.transform.position.z)

    local lowLeftOffsetPos, upperRightOffsetPos = self.cameraManager:GetCurrentScreenMapAllCellMinAndMax(luaLookStartPos, NationDefine.NATION_CATCH_SCREEN_CELL_OFFSET)
    for j = lowLeftOffsetPos.y, upperRightOffsetPos.y do
        for i = lowLeftOffsetPos.x, upperRightOffsetPos.x do
            if i >= 0 then
                if j >= 0 then
                    local cellInfo, buildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(NationUtil.GetCellId(i, j))
                    if cellInfo ~= nil then
                    elseif buildInfo ~= nil then
                        if buildInfo.Type == NationUtil.BUILDING_TYPE_YU_DU or buildInfo.Type == NationUtil.BUILDING_TYPE_WE_DU or buildInfo.Type == NationUtil.BUILDING_TYPE_GUAN_AI then
                            if self.siegeBuildList[buildInfo.BuildId] == nil then
                                isChange = true
                            end
                            curSiegeList[buildInfo.BuildId] = buildInfo.BuildId
                        end
                        buildList[buildInfo.BuildId] = buildInfo.BuildId
                    end
                end
            end
        end
    end

    --当前抓的攻城建筑发生变化，或者减少
    if isChange or table.length(self.siegeBuildList) ~= table.length(curSiegeList) then
        self.siegeBuildList = curSiegeList
        self.isSendMsgUpdateWarCell = true
    end

    --动态刷新屏幕内的建筑名字
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UPDATE_BUILDING_NAME, buildList)
end

local function InitBuildingNameFunc(self)
    --初始化，当前屏幕内的建筑名字，和接战区状态
    self:GetBuildingsByCentre()
    if table.length(self.siegeBuildList) > 0 then
        NationNetManager:GetInstance():SendMsgGetWarCellStateData(self.siegeBuildList)
    end
end

--获取路线材质球
local function GetMarchLineMatByIndex(self, index)
    return self.marchLineMats[index]
end

--获取场景根节点
local function GetSceneMarchRootObj(self)
    return self.sceneMarch
end


--选中队伍的事件 (从队伍栏选中) （点击人物选中）
local function __OnNationOneTeamMarchSelect(self, marchId, uid, teamId)
    if marchId == nil then
        self.cmCameraLookData.followEntity = nil
        self.cmCameraLookData.marchId = nil
        return
    end
    --Logger.LogErrorVars(" 11 __OnNationOneTeamMarchSelect  marchId :",marchId)
    local nationArmyPath = nil
    if uid == UserData:GetInstance().roleID then
        local myTeamData = NationTeamData:GetInstance():GetMyTeamDataByMarchId(marchId)
        --Logger.LogErrorVars("__OnNationOneTeamMarchSelect myTeamData : ",myTeamData)
        nationArmyPath = NationTeamData:GetInstance().ConventMyTeam2NationMarchData(myTeamData, true)
        --Logger.LogErrorVars("__OnNationOneTeamMarchSelect nationArmyPath : ",nationArmyPath)
    else
        nationArmyPath = NationMarchData:GetInstance():GetNationMarchDataById(marchId)
    end
    if nationArmyPath == nil then
        --Logger.LogErrorVars("44 __OnNationOneTeamMarchSelect   :")
        return
    end

    --Logger.LogErrorVars("55 __OnNationOneTeamMarchSelect   :")
    if UIManager:GetInstance():GetWindow(UIWindowNames.UINationTeamSideInfo, true, true) then
        -- 界面已经打开
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE, nationArmyPath)
    else

        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationTeamSideInfo, nationArmyPath)
    end

    -- 设置路径跟随模式
    local uiNationMarchMain = NationSceneUIManager:GetInstance():GetWindow(UIWindowNames.UINationMarchMain, true) -- 路线对象
    local nationMarchEntity = uiNationMarchMain.Component:GetNationMarchEntityByMarchId(marchId) -- see marchLine

    if uid == UserData:GetInstance().roleID then
        -- 队伍栏选中
        if nationMarchEntity == nil then
            -- 对焦到起点

            local result, position = self.mapManager:FocusMapToMyTeamData(nationArmyPath)
            if result then
                self:SetCMCameraLookTransformPosition(position.x, position.y, true)
            end
        else
            -- 跟随模式
            if nationMarchEntity ~= nil then
                self:SetCMCameraLookTransformLookAt(true, nationMarchEntity, true)
            end
        end
    else
        -- 跟随模式
        if nationMarchEntity ~= nil then
            self:SetCMCameraLookTransformLookAt(true, nationMarchEntity, true)
        end
    end
end

local function __onNationMarchGoEnd(self, marchId)
    if self.cmCameraLookData == nil then
        return
    end
    if self.cmCameraLookData.followEntity == nil then
        return
    end
    if self.cmCameraLookData.marchId == nil then
        return
    end
    if marchId ~= self.cmCameraLookData.marchId then
        return
    end
    self.cmCameraLookData.followEntity = nil
    self.cmCameraLookData.marchId = nil
end

local function __onNationMarchListRemove(self, removeList)

    if self.cmCameraLookData == nil then
        return
    end
    if self.cmCameraLookData.followEntity == nil then
        return
    end

    if self.cmCameraLookData.marchId == nil then
        return
    end

    if removeList == nil then
        return
    end
    if table.length(removeList) < 1 then
        return
    end

    for i, v in ipairs(removeList) do
        local marchId = v.marchId
        if marchId == self.cmCameraLookData.marchId then
            self.cmCameraLookData.followEntity = nil
            self.cmCameraLookData.marchId = nil
            break
        end
    end
end


local function __onNationVirtualCameraEnter(self)
    Logger.LogVars(" __onNationVirtualCameraEnter ~~~~~~~~~~~~~~~~~~~~~~")
    DataManager:GetInstance():Broadcast(DataMessageNames.Data_Nation_Camera_Move_End)
end

--播放队伍战斗的动画
local function PlayTeamBattleTween(self, teamID, targetMapId, secondMapId)
    local battleTween = TeamBattleFX.New()
    battleTween:OnCreate(targetMapId, secondMapId)
    self.teamBattleFXList[teamID] = battleTween
end

local function AddEventListener(self)

    self.easyTouchEventFunc = {}

    self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_IN] = Bind(self, OnEasyTouchPinchIn)
    self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_OUT] = Bind(self, OnEasyTouchPinchOut)
    self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE_START] = Bind(self, OnEasyTouchSwipeStart)
    self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE] = Bind(self, OnEasyTouchSwipe)
    self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE_END] = Bind(self, OnEasySwipeEnd)
    self.easyTouchEventFunc[NATION_EASY_TOUCH_START] = Bind(self, OnEasyTouchStart)
    self.easyTouchEventFunc[NATION_EASY_TOUCH_UP] = Bind(self, OnEasyTouchUp)
    --self.easyTouchEventFunc[NATION_EASY_TOUCH_SIMPLE_TAP] = Bind(self, OnEasyTouchSimpleTap)
    --self.easyTouchEventFunc[NATION_EASY_TOUCH_DOWN] = Bind(self, OnEasyTouchDown)

    EasyTouch.On_PinchIn("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_IN])
    EasyTouch.On_PinchOut("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_OUT])
    EasyTouch.On_SwipeStart("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE_START])
    EasyTouch.On_Swipe("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE])
    EasyTouch.On_SwipeEnd("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE_END])
    EasyTouch.On_TouchStart("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_START])
    EasyTouch.On_TouchUp("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_UP])
    --EasyTouch.On_SimpleTap("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_SIMPLE_TAP])

    --EasyTouch.On_TouchDown("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_DOWN])

    self.dataEventFunc = {}

    self.dataEventFunc[1] = BindCallback(self, __OnNationOneTeamMarchSelect)
    self.dataEventFunc[2] = BindCallback(self, __onNationMarchListRemove)
    self.dataEventFunc[3] = BindCallback(self, __onNationMarchGoEnd)
    self.dataEventFunc[4] = BindCallback(self, PlayTeamBattleTween)


    DataManager:GetInstance():AddListener(DataMessageNames.ON_NATION_ONE_TEAM_MARCH_SELECT, self.dataEventFunc[1])
    DataManager:GetInstance():AddListener(DataMessageNames.ON_NATION_MARCH_LIST_REMOVE, self.dataEventFunc[2])
    DataManager:GetInstance():AddListener(DataMessageNames.ON_NATION_MARCH_GO_END, self.dataEventFunc[3])
    DataManager:GetInstance():AddListener(DataMessageNames.ON_NATION_TEAM_BATTLE_TWEEN_PLAY, self.dataEventFunc[4])
end

local function RemoveEventListener(self)
    if self.easyTouchEventFunc ~= nil then
        EasyTouch.On_PinchIn("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_IN])
        EasyTouch.On_PinchOut("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_OUT])
        EasyTouch.On_SwipeStart("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE_START])
        EasyTouch.On_Swipe("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE])
        EasyTouch.On_SwipeEnd("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE_END])
        EasyTouch.On_TouchStart("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_START])
        EasyTouch.On_TouchUp("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_UP])
        --EasyTouch.On_SimpleTap("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_SIMPLE_TAP])
    end

    --EasyTouch.On_TouchDown("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_DOWN])
    if self.dataEventFunc ~= nil then
        DataManager:GetInstance():RemoveListener(DataMessageNames.ON_NATION_ONE_TEAM_MARCH_SELECT, self.dataEventFunc[1])
        DataManager:GetInstance():RemoveListener(DataMessageNames.ON_NATION_MARCH_LIST_REMOVE, self.dataEventFunc[2])
        DataManager:GetInstance():RemoveListener(DataMessageNames.ON_NATION_MARCH_GO_END, self.dataEventFunc[3])
        DataManager:GetInstance():RemoveListener(DataMessageNames.ON_NATION_TEAM_BATTLE_TWEEN_PLAY, self.dataEventFunc[4])
    end
    self.easyTouchEventFunc = nil
    self.dataEventFunc = nil

end

local function __UpdateCameraManager(self)
    if self.cameraManager ~= nil then
        self.cameraManager:DoUpdate()
    end
end

local function Update(self)
    self:__UpdateCMCameraLookAt()
    self:__UpdateCameraManager()
end

local function ReCalcFogDistanceWithDefaultDistance(self)
    if IsNull(self.mainCMCameraBody) then
        return
    end
    if self.cameraManager == nil then
        return
    end
    local offsetVec3 = self.mainCMCameraBody.EffectiveOffset
    --Logger.LogErrorVars("offsetVec3 : ",offsetVec3.x," ",offsetVec3.y," ",offsetVec3.z," ")
    --self.cameraManager:SetLineQuadTreeManagerCellSwapInOutDist()
    self.cameraManager:ReCalcFogDistance(offsetVec3.x, offsetVec3.y, offsetVec3.z)
end

--[[通过格子id获取格子当前世界坐标]]
local function GetWorldPositionByMapCellId(self,cellID)
    local posX, posY = NationUtil.GetXYByCellId(cellID)
    return self.mapManager:GetGridUnityCellToWorldByIntXYZ(posX, posY, 0)
end


NationProxy.AddEventListener = AddEventListener
NationProxy.RemoveEventListener = RemoveEventListener

NationProxy.DoInit = DoInit
NationProxy.__CoInit = __CoInit
NationProxy.__DoClickBuilding = __DoClickBuilding
NationProxy.__DoClickBuildingLogic = __DoClickBuildingLogic
NationProxy.__CleanEasyTouchData = __CleanEasyTouchData

NationProxy.__SelectOneCellTileMap = __SelectOneCellTileMap
NationProxy.__GetNationTownRequestCallback = __GetNationTownRequestCallback
NationProxy.__GetNationWarBuildingRequestCallback = __GetNationWarBuildingRequestCallback
NationProxy.__UpdateCurScreenBuildingData = __UpdateCurScreenBuildingData
NationProxy.__DisposeWarCellFrameTimer = __DisposeWarCellFrameTimer

NationProxy.SetCMCameraLookTransformPosition = SetCMCameraLookTransformPosition
NationProxy.SetCMCameraLookTransformLookAt = SetCMCameraLookTransformLookAt
NationProxy.__UpdateCMCameraLookAt = __UpdateCMCameraLookAt
NationProxy.__UpdateCameraManager = __UpdateCameraManager

NationProxy.GetBuildingsByCentre = GetBuildingsByCentre
NationProxy.InitBuildingNameFunc = InitBuildingNameFunc

NationProxy.CheckRunNationTimers = CheckRunNationTimers
NationProxy.__SendGetNationWarCellRequestCallback = __SendGetNationWarCellRequestCallback
NationProxy.__AfterCoLoadLogic = __AfterCoLoadLogic

NationProxy.SetWarCellUI = SetWarCellUI
NationProxy.GetMarchLineMatByIndex = GetMarchLineMatByIndex
NationProxy.GetSceneMarchRootObj = GetSceneMarchRootObj
NationProxy.__CoLoadSceneRoot = __CoLoadSceneRoot

NationProxy.__init = __init
NationProxy.__delete = __delete
NationProxy.Update = Update
NationProxy.Dispose = Dispose

NationProxy.AddCharacter2DRenderer = AddCharacter2DRenderer
NationProxy.RemoveCharacter2DRenderer = RemoveCharacter2DRenderer
NationProxy.SetAllCharacter2DWidthHeight = SetAllCharacter2DWidthHeight
NationProxy.ReCalcFogDistanceWithDefaultDistance = ReCalcFogDistanceWithDefaultDistance
NationProxy.__onNationVirtualCameraEnter = __onNationVirtualCameraEnter
NationProxy.GetWorldPositionByMapCellId = GetWorldPositionByMapCellId

return NationProxy