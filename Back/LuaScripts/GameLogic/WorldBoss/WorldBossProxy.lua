--[[
    世界Boss控制代理
]]
local WorldBossProxy = BaseClass("WorldBossProxy", Updatable)

local WorldBossOneTeamController = require "GameLogic.WorldBoss.WorldBossOneTeamController"
local WorldBossOneBattleEvent = require "GameLogic.WorldBoss.WorldBossOneBattleEvent"

local AllRoleInfo = DataUtil.GetData("battle_role_config")

local Map_Prefab_Path = "Art/WorldBoss/MapPrefabs/"
local Map_Data_Path = "Art/WorldBoss/MapInfoData/"

local MAIN_CM_CAMERA_NAME = "CM vcam1"
local CM_CAMERA_LOOK_OBJ_NAME = "cmCameraLookAt"
local CHARACTER_2D_RENDERER = "Char2DRenderer"
local CHARA_SPRITE_ROOT = "2DSpriteRoot"
local CHARA_MODEL_ROOT = "3DModelRoot"
local MAP_MANAGER = "MapManager"

local TILEMAP_GRID = "Grid - Level"
local TILEMAP_GROUND_BASE = "Grid - Level/Tilemap - Ground - Base"
local TILEMAP_GROUND_TAG = "Grid - Level/Tilemap - Ground - Tag"
local MISC_LAYER = "Misc"

local EasyTouch = CS.HedgehogTeam.EasyTouch.EasyTouch

local NATION_EASY_TOUCH_SWIPE = 1
local NATION_EASY_TOUCH_START = 2
local NATION_EASY_TOUCH_UP = 3
local NATION_EASY_TOUCH_SIMPLE_TAP = 4
local NATION_EASY_TOUCH_PINCH_IN = 5
local NATION_EASY_TOUCH_PINCH_OUT = 6

local function __init(self)
    --存放当前地图的数据
    self.mapData = nil
    self.mapDataPath = nil
    --当前地图的prefab
    self.mapObj = nil
    --主相机
    self.mainCamera = nil
    --摄像机关注的trans
    self.cmCameraLookTran = nil
    --tilemap的Grid
    self.tilemapGrid = nil
    --射线检测的plane
    self.mapClickPlane = nil
    --模型2D渲染插件
    self.chara2DRenderer = nil
    --地图管理cs
    self.mapManager = nil
    --地图的装饰物等obj
    self.describeMapObjList = {}
    --A*寻路
    self.aStartMapGrid = nil

    --存放所有模型的list
    self.allRoleList = {}

    --模型渲染的图片节点
    self.sprite2DRoot = nil
    --3d模型节点
    self.model3DRoot = nil

    --存放所有战斗事件list
    self.allEventList = {}

    --自定义参数
    self.curSelectTeam = nil
    self.aStartFindPath = {}
end

local function __delete(self)

end

local function OnDestroy(self)
    self.mapObj = nil
    self.mainCamera = nil
    self.cmCameraLookTran = nil
    self.mapManager = nil
    self.tilemapGrid = nil
    self.mapClickPlane = nil
    self.describeMapObjList = {}
    self.chara2DRenderer = nil
    self.sprite2DRoot = nil
    self.model3DRoot = nil
    self.aStartMapGrid = nil

    if table.length(self.allRoleList) > 0 then
        for _, v in pairs(self.allRoleList) do
            v:OnDestroy(self)
        end
    end

    if self.mapData ~= nil then
        ResourcesManager:GetInstance():UnloadAssetBundle(self.mapDataPath)
        self.mapDataPath = nil
        self.mapData = nil
    end

    self:RemoveEventListener()
end

local function OnInit(self, mapID)
    local function ProgressCallback(co)
        return coroutine.yieldbreak(co)
    end
    local mapName = DRBossData:GetInstance().duplicate_scene
    local go = ResourcesManager:GetInstance():CoLoadAsync(Map_Prefab_Path .. mapName .. ".prefab", typeof(CS.UnityEngine.GameObject), ProgressCallback)
    self.mapObj = CS.UnityEngine.GameObject.Instantiate(go)
    self.mapDataPath = Map_Data_Path .. mapName .. ".asset"
    self.mapData = ResourcesManager:GetInstance():CoLoadAsync(self.mapDataPath, typeof(CS.WorldBoss.WorldBossTileMapData), ProgressCallback)
    WorldBossCtrlManager:GetInstance().mapData = self.mapData

    if IsNull(self.mapObj) then
        Logger.Log("self.mapObj is null!!!!!")
    end

    if IsNull(self.mapData) then
        Logger.Log(" self.mapData  is  null!!!!!")
    end

    --初始化，A星寻路
    self.aStartMapGrid = CS.AStar.MapGrid(100, 100, nil, 1)
    WorldBossCtrlManager:GetInstance().aStartMapGrid = self.aStartMapGrid
    for _, v in pairs(self.mapData.TileGridList) do
        local pos = CS.AStar.Position(v.pos.x, v.pos.y)
        self.aStartMapGrid:BlockCell(pos)
    end

    --相机设置
    self.mainCamera = CS.UnityEngine.Camera.main
    self.mainCMCameraBody = CS.UnityEngine.GameObject.Find(MAIN_CM_CAMERA_NAME):GetComponent(typeof(CS.Cinemachine.CinemachineVirtualCamera)):GetCinemachineComponent(CS.Cinemachine.CinemachineCore.Stage.Body)
    self.cmCameraLookTran = CS.UnityEngine.GameObject.Find(CM_CAMERA_LOOK_OBJ_NAME).transform
    WorldBossCtrlManager:GetInstance().cmCameraLookTran = self.cmCameraLookTran
    self.sprite2DRoot = CS.UnityEngine.GameObject.Find(CHARA_SPRITE_ROOT).transform
    self.model3DRoot = CS.UnityEngine.GameObject.Find(CHARA_MODEL_ROOT).transform

    --初始化，3d模型渲染2d图片工具
    local char2DRendererTrans = CS.UnityEngine.GameObject.Find(CHARACTER_2D_RENDERER).transform
    self.chara2DRenderer = char2DRendererTrans:GetComponent(typeof(CS.Character2DRenderer))
    self.chara2DRenderer:SetShowLayer(8, 28)
    WorldBossCtrlManager:GetInstance().chara2DRenderer = self.chara2DRenderer

    --初始化地图管理脚本
    local mapManagerTrans = CS.UnityEngine.GameObject.Find(MAP_MANAGER).transform
    if IsNull(mapManagerTrans) then
        Logger.Log("null!!!!!")
    end
    self.mapManager = mapManagerTrans:GetComponent(typeof(CS.WorldBossMapManager))
    self.mapObj.transform:Find(TILEMAP_GROUND_TAG).gameObject:SetActive(false)
    self.mapManager.groundTilemap = self.mapObj.transform:Find(TILEMAP_GROUND_BASE).transform:GetComponent(typeof(CS.UnityEngine.Tilemaps.Tilemap))
    self.mapManager.nearSize = 5
    self.mapManager.farSize = 9
    WorldBossCtrlManager:GetInstance().mapManager = self.mapManager

    --获得tilemap的Grid
    self.tilemapGrid = self.mapObj.transform:Find(TILEMAP_GRID).transform:GetComponent(typeof(CS.UnityEngine.Grid))
    WorldBossCtrlManager:GetInstance().tilemapGrid = self.tilemapGrid
    local mainGridForward = self.tilemapGrid.transform.forward
    local mainGridLuaDis = Vector3.Distance(self.tilemapGrid.transform.position, Vector3.New(0, 0, 0))
    self.mapClickPlane = Plane.New(Vector3.New(mainGridForward.x, mainGridForward.y, mainGridForward.z):Mul(-1),
            mainGridLuaDis)

    --获得装饰物和事件的obj
    local miscTrans = self.mapObj.transform:Find(MISC_LAYER).transform
    self:InitBattleEvent(miscTrans)

    --地图加载完成后
    ResourcesManager:GetInstance():UnloadAssetBundle(Map_Prefab_Path .. mapName .. ".prefab")
    --临时打开这个UI
    UIManager:GetInstance():OpenWindow(UIWindowNames.UIWorldBossMain)
    self:AddEventListener()
end

--初始化，战斗事件
local function InitBattleEvent(self, root)
    local eventInfo = nil
    local prefabPath = nil
    local cellPos = nil
    local scale = 1
    for _, v in ipairs(DRBossData:GetInstance().entergame_data) do
        --添加精英怪
        --cellPos = Vector3.New(v.elite.x, v.elite.y, 0)
        --local battleEvent = WorldBossOneBattleEvent.New()
        --battleEvent:InitEvent(root, "monster", cellPos, 0.5, 0)
        --local key = WorldBossCtrlManager:GetInstance():GetEventKeyByCellPosXY(cellPos.x, cellPos.y)
        --self.allEventList[key] = {}
        --self.allEventList[key] = battleEvent

        for _, w in ipairs(v.evnt) do
            eventInfo = DRBossData:GetInstance().element_event_info[w.eventId]
            if eventInfo.ElementType == CommDefine.DRBossEventType.EliteMonster then
                prefabPath = DRBossData:GetInstance():GetEliteMonsterHeadByQua(v.areaId)
                scale = 0.3
            else
                prefabPath = eventInfo.ElementModel
                scale = 1
            end
            cellPos = w.co
            local battleEvent = WorldBossOneBattleEvent.New()
            battleEvent:InitEvent(root, prefabPath, cellPos, scale, w.eventId)
            local key = WorldBossCtrlManager:GetInstance():GetEventKeyByCellPosXY(cellPos.x, cellPos.y)
            self.allEventList[key] = {}
            self.allEventList[key] = battleEvent

            --设置A星，某块地格的代价
            --if eventInfo.ElementType == CommDefine.DRBossEventType.Barrier then
            --    local pos = CS.AStar.Position(cellPos.x, cellPos.y)
            --    self.aStartMapGrid:SetCellCost(pos, 10)
            --end
        end
    end

    WorldBossCtrlManager:GetInstance().allEventList = self.allEventList
    --协同检测事件是否创建完毕
    local function CreateEventObj(self)
        for _, v in pairs(self.allEventList) do
            coroutine.waituntil(function()
                return v.battleEvent ~= nil
            end)
        end

        local sortingGroup = nil
        for i = 0, root.childCount - 1 do
            sortingGroup = root:GetChild(i).gameObject.transform:GetComponent(typeof(CS.UnityEngine.Rendering.SortingGroup))
            sortingGroup.sortingLayerName = "fore"
            self.describeMapObjList[i + 1] = root:GetChild(i).gameObject
        end
        --初始化模型
        self:InitAllTeamModel()
    end
    coroutine.start(CreateEventObj, self)
end

--实例化人物模型
local function InitAllTeamModel(self)
    --local allTeamList = DRBossData:GetInstance().entergame_data[1].teams
    local initPos = nil
    local path = nil
    local index = 0
    local tempCellPos = nil
    for _, w in ipairs(DRBossData:GetInstance().entergame_data) do
        for k, v in ipairs(w.teams) do
            if v.head ~= 0 then
                --相机默认位置
                if initPos == nil and v.roleId == ClientData:GetInstance().user_id then
                    initPos = {}
                    initPos.x = v.co.x
                    initPos.y = v.co.y
                    initPos.z = 0
                end
                path = AllRoleInfo[v.head].PrefabUI
                index = index + 1
                local roleCtrl = WorldBossOneTeamController.New()
                roleCtrl:InitPlayerModel(self.sprite2DRoot, self.model3DRoot, path, v.co)
                roleCtrl:InitTeamAttribute(v.roleId, index, k, tonumber(v.hp), tonumber(v.spirit))
                local teamID = v.roleId * 10 + v.position
                self.allRoleList[teamID] = roleCtrl
                --table.insert(self.allRoleList, roleCtrl)

                tempCellPos = {}
                tempCellPos.x = v.co.x
                tempCellPos.y = v.co.y
                tempCellPos.z = 0
                WorldBossCtrlManager:GetInstance():InitMapAddPos(tempCellPos, index)
            end
        end
    end
    --todo,
    WorldBossCtrlManager:GetInstance().allTeamList = self.allRoleList
    WorldBossCtrlManager:GetInstance():InitMap(self.describeMapObjList)
    --初始化，相机的位置
    local pos = WorldBossCtrlManager:GetInstance():GetGridUnityCellToWorldByIntXYZ(initPos.x, initPos.y, initPos.z)
    self.cmCameraLookTran.position = pos
end

--选中某个队伍
local function OnUIMsgSelectOneTeam(self, teamID)
    if self.allRoleList[teamID] == nil then
        Logger.LogError("选择队伍出错")
        return
    end
    self.curSelectTeam = self.allRoleList[teamID]
    self.cmCameraLookTran:SetParent(self.curSelectTeam.sprite2D.gameObject.transform)
    self.cmCameraLookTran.localPosition = Vector3.zero
end

--其他玩家的队伍移动，通知
local function OnDataMsgOtherPlayerTeamMove(self, msgData)
    local teamID = msgData.roleId * 10 + msgData.teamId
    if self.allRoleList[teamID] ~= nil then
        self.allRoleList[teamID]:NetMsgCallBackOtherPlayerTeamMove(msgData)
    end
end

--todo,临时的
local function IsHaveCollide(self, cellPos)
    for _, v in pairs(self.mapData.TileGridList) do
        if v.pos.x == cellPos.x and v.pos.y == cellPos.y then
            return true
        end
    end
    return false
end

-------------------------------------------------------------




--------------------------easyTouch函数-----------------------

--往里缩放，每帧调用(缩小)
local function OnEasyTouchPinchIn(self, gesture)
    local zoom = gesture.deltaPinch * Time.deltaTime
    local offsetVec3 = self.mainCMCameraBody.EffectiveOffset
    local offsetZ = offsetVec3.z
    if offsetZ == -8 then
        return
    end
    offsetZ = offsetVec3.z - zoom > -8 and offsetVec3.z - zoom or -8
    self.mainCMCameraBody.m_FollowOffset = Vector3.New(offsetVec3.x, offsetVec3.y, offsetZ)
end

--往外缩放，每帧调用(放大)
local function OnEasyTouchPinchOut(self, gesture)
    local zoom = gesture.deltaPinch * Time.deltaTime
    local offsetVec3 = self.mainCMCameraBody.EffectiveOffset
    local offsetZ = offsetVec3.z
    if offsetZ == -1 then
        return
    end
    offsetZ = offsetVec3.z + zoom < -1 and offsetVec3.z + zoom or -1
    self.mainCMCameraBody.m_FollowOffset = Vector3.New(offsetVec3.x, offsetVec3.y, offsetZ)
end

local function OnEasyTouchSwipe(self, gesture)
    local scalePos = gesture.deltaPosition * Time.deltaTime * 0.2

    local posX = self.cmCameraLookTran.position.x - scalePos.x
    local posY = self.cmCameraLookTran.position.y - scalePos.y

    self.cmCameraLookTran:SetParent(nil)
    --self.curSelectTeam = nil
    --self:SetCMCameraLookTransformPosition(posX, posY)
    WorldBossCtrlManager:GetInstance():SetCMCameraLookTransformPosition(posX, posY)
end

local function OnEasyTouchStart(self, gesture)
end

local function OnEasyTouchUp(self, gesture)

end

--一次完整的点击事件
local function OnEasyTouchSimpleTap(self, gesture)
    local unityRay = self.mainCamera:ScreenPointToRay(Vector3.New(gesture.position.x, gesture.position.y, 0))
    local unityRayDir = unityRay.direction
    local unityRayOrigin = unityRay.origin
    local myRay = Ray.New(Vector3.New(unityRayDir.x, unityRayDir.y, unityRayDir.z)
    , Vector3.New(unityRayOrigin.x, unityRayOrigin.y, unityRayOrigin.z))
    local hasCollide, rayLength = self.mapClickPlane:Raycast(myRay)
    if hasCollide then
        local hitPoint = myRay:GetPoint(rayLength)
        local unityCellPos = WorldBossCtrlManager:GetInstance():GetGridUnityWorldToCell(hitPoint)
        if self.curSelectTeam == nil then
            for k, v in pairs(self.allRoleList) do
                if v.sprite2D.cellPos.x == unityCellPos.x and v.sprite2D.cellPos.y == unityCellPos.y and v.sprite2D.isMoving == false then
                    if v.isLocalPlayer then
                        OnUIMsgSelectOneTeam(self, k)
                        Logger.Log("选中玩家队伍")
                    end
                end
            end
        else
            local info = self.curSelectTeam.model3D.animator:GetCurrentAnimatorStateInfo(0)
            if info:IsName("walk") or self.curSelectTeam.sprite2D.isMoving then
                return
            end
            if WorldBossCtrlManager:GetInstance():IsActiveByOneCellPos(unityCellPos) == false then
                return
            end
            if self.curSelectTeam.teamSpirit <= 0 then
                UISpecial:GetInstance():UITipText("当前队伍的行动力为0, 无法移动")
                return
            end
            local startPos = CS.AStar.Position(self.curSelectTeam.sprite2D.cellPos.x, self.curSelectTeam.sprite2D.cellPos.y)
            local endPos = CS.AStar.Position(unityCellPos.x, unityCellPos.y)
            if startPos == endPos then
                return
            end
            --开始移动
            self.aStartFindPath = self.aStartMapGrid:GetPath(startPos, endPos, CS.AStar.MovementPatterns.LateralOnly, 1000)
            if self.aStartFindPath.Length > 0 then
                self.curSelectTeam:Move2OneTeam(self.aStartFindPath, unityCellPos)
            end
        end
    end
end
-----------------------------------------------------------------------------------------------

local function AddEventListener(self)
    self.easyTouchEventFunc = {}
    self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE] = Bind(self, OnEasyTouchSwipe)
    self.easyTouchEventFunc[NATION_EASY_TOUCH_START] = Bind(self, OnEasyTouchStart)
    --self.easyTouchEventFunc[NATION_EASY_TOUCH_UP] = Bind(self, OnEasyTouchUp)
    self.easyTouchEventFunc[NATION_EASY_TOUCH_SIMPLE_TAP] = Bind(self, OnEasyTouchSimpleTap)
    self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_IN] = Bind(self, OnEasyTouchPinchIn)
    self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_OUT] = Bind(self, OnEasyTouchPinchOut)

    EasyTouch.On_Swipe("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE])
    EasyTouch.On_TouchStart("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_START])
    --EasyTouch.On_TouchUp("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_UP])
    EasyTouch.On_SimpleTap("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_SIMPLE_TAP])
    EasyTouch.On_PinchIn("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_IN])
    EasyTouch.On_PinchOut("+", self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_OUT])

    self.eventFunc = {}
    self.eventFunc[1] = Bind(self, OnUIMsgSelectOneTeam)
    self.eventFunc[2] = Bind(self, OnDataMsgOtherPlayerTeamMove)

    UIManager:GetInstance():AddListener(UIMessageNames.UI_WORLD_BOSS_SELECT_TEAM, self.eventFunc[1])
    DataManager:GetInstance():AddListener(DataMessageNames.ON_WORLD_BOSS_TEAM_ADD_MOVE, self.eventFunc[2])
end

local function RemoveEventListener(self)
    if self.easyTouchEventFunc ~= nil then
        EasyTouch.On_Swipe("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_SWIPE])
        EasyTouch.On_TouchStart("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_START])
        --EasyTouch.On_TouchUp("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_UP])
        EasyTouch.On_SimpleTap("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_SIMPLE_TAP])
        EasyTouch.On_PinchIn("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_IN])
        EasyTouch.On_PinchOut("-", self.easyTouchEventFunc[NATION_EASY_TOUCH_PINCH_OUT])
    end

    if self.eventFunc ~= nil then
        UIManager:GetInstance():RemoveListener(UIMessageNames.UI_WORLD_BOSS_SELECT_TEAM, self.eventFunc[1])
        DataManager:GetInstance():RemoveListener(DataMessageNames.ON_WORLD_BOSS_TEAM_ADD_MOVE, self.eventFunc[2])
    end
end

WorldBossProxy.__init = __init
WorldBossProxy.__delete = __delete
WorldBossProxy.OnInit = OnInit

WorldBossProxy.AddEventListener = AddEventListener
WorldBossProxy.RemoveEventListener = RemoveEventListener
WorldBossProxy.OnDestroy = OnDestroy

WorldBossProxy.InitAllTeamModel = InitAllTeamModel
WorldBossProxy.InitBattleEvent = InitBattleEvent

return WorldBossProxy