--[[
   地图模块相关
]]
local NationMapManager = BaseClass("NationMapManager")
--local Vector3Int = CS.UnityEngine.Vector3Int
local NationUtil = require "GameLogic.Nation.NationUtil"

local function __init(self)
    -- 瓦片地图所有图片缓存
    self.ljBaseTileConfig = nil
    -- 瓦片地图数据
    self.ljMapInfoData = nil
    -- 瓦片地图总类
    self.unityGrid = nil
    -- unity瓦片地图类
    self.unityTilemaps = nil
    -- unity瓦片地图着色器
    self.unityTilemapRenderer = nil
    --场景持有
    self.scene = nil
    --代理类
    self.proxy = nil
    --某建筑跟其他建筑是想通的 [ cellId,列表[cellId1,cellId2] ]
    self.cacheCellIdToAllLinkCellIdMap = nil
    -- 动态路径对象表
    self.allRoadObjs = nil
    --瓦片地图材质球
    self.mapDefaultTilemapMat = nil

    --背景的quad地面的trans
    self.QuadTrans = nil
    -- 地图边界信息
    self.mapBoundData = nil

end

-- 析构函数
local function __delete(self)
    self.ljBaseTileConfig = nil
    self.ljMapInfoData = nil
    self.unityGrid = nil
    self.unityTilemaps = nil
    self.unityTilemapRenderer = nil
    self.scene = nil
    self.proxy = nil
    self.cacheCellIdToAllLinkCellIdMap = nil
    self.QuadTrans = nil

    --if self.allRoadObjs ~= nil then
    --    for i, v in pairs(self.allRoadObjs) do
    --        GameObjectPool:GetInstance():RecycleGameObject(NationDefine.MAP_BUILDING_LINE_TEMPLATE, v.gameObject)
    --    end
    --end
    --self.allRoadObjs = nil
    if not IsNull(self.mapDefaultTilemapMat) then
        ResourcesManager:GetInstance():UnloadAssetBundle(self.mapDefaultTilemapMat)
    end
    self.mapDefaultTilemapMat = nil
    self.mapBoundData = nil

end

local function Dispose(self)
    --self:__delete()
end


--[[
    加载地图资源
]]
local function __CoInitMapData(self, map_info_data_name)

    local function ProgressCallback(co)
        --assert(progress <= 1.0, "What's the fuck!!!")
        return coroutine.yieldbreak(co)
    end

    Logger.LogAny("加载瓦片地图")

    if IsNull(self.ljBaseTileConfig) then
        self.ljBaseTileConfig = ResourcesManager:GetInstance():CoLoadAsync(NationDefine.ALL_BASE_TILE_FILE, typeof(CS.LJTilemaps.LJBaseTileConfig), ProgressCallback)
    end
    --Logger.LogAny(self.ljBaseTileConfig ,"图块信息 : ")
    coroutine.waitforframes(1)
    local mapInfoDataPath = NationDefine.MAP_INFO_DATA_PATH .. "/" .. map_info_data_name .. ".asset"

    self.ljMapInfoData = ResourcesManager:GetInstance():CoLoadAsync(mapInfoDataPath, typeof(CS.LJTilemaps.LJMapInfoData), ProgressCallback)
    coroutine.waitforframes(1)
    --Logger.LogAny(self.ljMapInfoData ,"地图信息 : ")
    -- 构建地图数据
    self:__CoCreateMap(self.ljMapInfoData, self.ljBaseTileConfig,self.proxy.sceneRootTran)

    coroutine.waitforframes(1)
    -- 缓存某建筑路径映射
    self:__InitLinkRoadInfo()
    coroutine.waitforframes(1)
    ResourcesManager:GetInstance():UnloadAssetBundle(mapInfoDataPath)
end

-- 新的创建底涂层
local function __CreateLayer(self, parent, lJMapLayer, baseTileConfig, map_info_data_name, mapDefaultTilemapMat)
    local tilemap = CS.GameUtility.CreateLayerByNation(parent,lJMapLayer,baseTileConfig,mapDefaultTilemapMat,0) -- 0 Chunk 1 Individual
    local tilemapRenderer = tilemap.transform:GetComponent(typeof(CS.UnityEngine.Tilemaps.TilemapRenderer))
    return tilemap,tilemapRenderer,lJMapLayer
end

-- 老的创建地图
local function __OldCreateLayer(self, parent, lJMapLayer, baseTileConfig, map_info_data_name, mapDefaultTilemapMat)
    local layerGameObj = CS.UnityEngine.GameObject(lJMapLayer.layerName)
    local tilemap = layerGameObj:AddComponent(typeof(CS.UnityEngine.Tilemaps.Tilemap))
    local tilemapRenderer = layerGameObj:AddComponent(typeof(CS.UnityEngine.Tilemaps.TilemapRenderer))
    local layerTran = layerGameObj.transform
    --layerGameObj:SetActive(false)
    layerTran:SetParent(parent)
    layerTran.position = lJMapLayer.worldPosition
    --tilemapRenderer.enabled = false
    --tilemapRenderer.mode = CS.UnityEngine.Tilemaps.TilemapRenderer.Mode.Individual -- 测试模式
    tilemapRenderer.mode = CS.UnityEngine.Tilemaps.TilemapRenderer.Mode.Chunk -- 合并DC模式
    tilemapRenderer.sortingOrder = lJMapLayer.orderInLayer
    tilemapRenderer.sortingLayerID = lJMapLayer.sortingLayer
    tilemap.origin = lJMapLayer.origin
    tilemap.size = lJMapLayer.size

    --tilemap.orientation =  CS.UnityEngine.Tilemaps.Tilemap.Orientation.XY
    tilemap.orientation = lJMapLayer.orientation
    tilemap.orientationMatrix = lJMapLayer.orientationMatrix
    if not IsNull(mapDefaultTilemapMat) then
        tilemapRenderer.sharedMaterial = mapDefaultTilemapMat
    end
    local tileDatas = lJMapLayer.tileDatas
    if IsNull(baseTileConfig) then
        return tilemap, tilemapRenderer, lJMapLayer
    end

    for i, v in pairs(tileDatas) do
        if v.tileId < 0 then

        else
            local tileBase = baseTileConfig:GetTileBaseById(v.tileId);
            if IsNull(tileBase) then
            else
                tilemap:SetTile(v.position, tileBase);
            end
        end
    end
    tilemap:CompressBounds()
    --tilemapRenderer.enabled = true
    --tilemapRenderer.enabled = false
    return tilemap, tilemapRenderer, lJMapLayer
end

local function __CoCreateNationBackGround(self, parent, map_info_data_name)
    if IsNull(map_info_data_name) then
        return coroutine.yieldbreak()
    end

    local lJMapBackGroundDatas = map_info_data_name.lJMapBackGroundDatas
    if IsNull(lJMapBackGroundDatas) then
        return coroutine.yieldbreak()
    end
    local backgroundRootObj = CS.UnityEngine.GameObject("BackGround")
    local backgroundRootTran = backgroundRootObj.transform
    if not IsNull(parent) then
        backgroundRootTran:SetParent(parent)
    end
    backgroundRootTran.position = Vector3.zero

    for i, v in pairs(lJMapBackGroundDatas) do
        if not IsNull(v) then
            if not IsNull(v.useMaterial) then
                local mat = v.useMaterial
                if not IsNull(mat) then
                    local oneBackgroundObj = CS.UnityEngine.GameObject.CreatePrimitive(CS.UnityEngine.PrimitiveType.Quad)
                    local mc = oneBackgroundObj:GetComponent(typeof(CS.UnityEngine.MeshCollider))
                    CS.UnityEngine.GameObject.Destroy(mc)
                    self.QuadTrans = oneBackgroundObj.transform
                    self.QuadTrans:SetParent(backgroundRootTran)
                    self.QuadTrans.position = v.worldPosition
                    self.QuadTrans.localScale = v.tranScale
                    oneBackgroundObj.name = v.backName
                    local mr = oneBackgroundObj:GetComponent(typeof(CS.UnityEngine.MeshRenderer))
                    mr.sharedMaterial = mat
                    coroutine.waitforframes(1)
                end
            end
        end
    end

    if IsNull(map_info_data_name.lJMapBackGroundData) then
        return coroutine.yieldbreak()
    end

    return coroutine.yieldbreak()
end

local function __CoCreateNationRoads(self, parent)

    local roadRootObj = CS.UnityEngine.GameObject("Road")
    local roadRootTran = roadRootObj.transform
    if not IsNull(parent) then
        roadRootTran:SetParent(parent)
    end
    roadRootTran.position = Vector3.zero
    local national_road_cost = NationMapInfoData:GetInstance().national_road_cost
    GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(NationDefine.MAP_BUILDING_LINE_TEMPLATE, #national_road_cost)
    self.allRoadObjs = {}
    for i, v in pairs(national_road_cost) do
        --local roadId = NationUtil.GetRoadIdByAB(v.PointA,v.PointB)
        local roadId = v.RoadId
        local oneRoadObj = GameObjectPool:GetInstance():TryGetFromCache(NationDefine.MAP_BUILDING_LINE_TEMPLATE)
        oneRoadObj.name = roadId .. "_path"
        local oneRoadTran = oneRoadObj.transform
        oneRoadTran:SetParent(roadRootTran)
        oneRoadTran.position = Vector3(v.CostP0[1], v.CostP0[2], 0)
        local lineCtrl = oneRoadObj:GetComponent(typeof(CS.LJTilemaps.DiLineCtrl))
        lineCtrl.localP1 = Vector3(v.CostP1[1], v.CostP1[2], 0)
        lineCtrl.localP2 = Vector3(v.CostP2[1], v.CostP2[2], 0)
        lineCtrl.localEndPos = Vector3(v.CostP3[1], v.CostP3[2], 0)
        lineCtrl:ForceUpdateMe()
        self.allRoadObjs[roadId] = lineCtrl
    end
end

local function GetNationRouteRoadData(self)
    local national_road_cost = NationMapInfoData:GetInstance().national_road_cost
    local list = {}
    for i, v in pairs(national_road_cost) do
        local lineInfo = CS.MapSys.LineInfo()
        local roadId = v.RoadId
        lineInfo.id = roadId
        lineInfo.segment = 20
        local position = Vector2(v.CostP0[1], v.CostP0[2])
        lineInfo.p0 = position
        local tempPosition = Vector2(position.x + v.CostP1[1], position.y + v.CostP1[2])
        lineInfo.p1 = tempPosition
        tempPosition = Vector2(position.x + v.CostP2[1], position.y + v.CostP2[2])
        lineInfo.p2 = tempPosition
        tempPosition = Vector2(position.x + v.CostP3[1], position.y + v.CostP3[2])
        lineInfo.p3 = tempPosition
        --Logger.LogVars(" i ",i," lineInfo : ",lineInfo)
        table.insert(list,lineInfo)
    end
    return list
end

local function __CoCreateTiledMap(self, parent, map_info_data_name, baseTileConfig)

    local girdRootObj = CS.UnityEngine.GameObject("myGrid")
    local girdRootTran = girdRootObj.transform
    if not IsNull(parent) then
        girdRootTran:SetParent(parent)
    end
    girdRootTran.position = map_info_data_name.mapOffset

    self.unityGrid = girdRootObj:AddComponent(typeof(CS.UnityEngine.Grid))
    self.unityGrid.cellLayout = CS.UnityEngine.GridLayout.CellLayout.Isometric
    self.unityGrid.cellSwizzle = CS.UnityEngine.GridLayout.CellSwizzle.XYZ
    self.unityGrid.cellSize = map_info_data_name.gridCellSize
    self.unityGrid.cellGap = map_info_data_name.gridCellGap
    self.mapDefaultTilemapMat = ResourcesManager:GetInstance():CoLoadAsync(NationDefine.MAP_DEFAULT_TILEMAP_MAT, typeof(CS.UnityEngine.Material))
    local allLayers = map_info_data_name.allLayers
    self.unityTilemaps = {}
    self.unityTilemapRenderer = {}

    for i, v in pairs(allLayers) do
        local tilemap, tilemapRenderer, lJMapLayer = self:__CreateLayer(girdRootTran, v, baseTileConfig, map_info_data_name, self.mapDefaultTilemapMat)
        self.unityTilemaps[lJMapLayer.layerName] = tilemap
        self.unityTilemapRenderer[lJMapLayer.layerName] = tilemapRenderer
        coroutine.waitforframes(1)
    end
end

local function __CoCreateMap(self, map_info_data_name, baseTileConfig,rootTran)

    local mapUnitRootObj = CS.UnityEngine.GameObject("MapUnit")
    local mapUnitRootTran = mapUnitRootObj.transform
    mapUnitRootTran.position = Vector3.zero
    if not IsNull(rootTran) then
        mapUnitRootTran:SetParent(rootTran)
    end
    --创建地面
    self:__CoCreateNationBackGround(mapUnitRootTran, map_info_data_name)

    ----创建路径
    --self:__CoCreateNationRoads(mapUnitRootTran)

    -- 创建层级
    self:__CoCreateTiledMap(mapUnitRootTran, map_info_data_name, baseTileConfig)

    --创建地图边界
    self:__CreateMapBound(map_info_data_name)

    return coroutine.yieldbreak()
end

--计算地图边界范围
local function __CreateMapBound(self, map_info_data_name)
    self.mapBoundData = {}
    local testBounder = false
    if IsNull(map_info_data_name) or testBounder then
        Logger.LogErrorVars("__CreateMapBound map_info_data_name == nil")
        self.mapBoundData.right = 10000
        self.mapBoundData.left = -10000
        self.mapBoundData.top = 10000
        self.mapBoundData.bottom = -10000
        return
    end
    local tempData = map_info_data_name.boundExpandX
    self.mapBoundData.expandX = Vector2.New(tempData.x, tempData.y)
    tempData = map_info_data_name.boundExpandY
    self.mapBoundData.expandY = Vector2.New(tempData.x, tempData.y)
    tempData = map_info_data_name.boundCenter
    self.mapBoundData.center = Vector2.New(tempData.x, tempData.y)
    tempData = map_info_data_name.boundSize
    self.mapBoundData.size = Vector2.New(tempData.x, tempData.y)

    self.mapBoundData.right = self.mapBoundData.center.x + self.mapBoundData.size.x * 0.5 + self.mapBoundData.expandX.x
    self.mapBoundData.left = self.mapBoundData.center.x - self.mapBoundData.size.x * 0.5 - self.mapBoundData.expandX.y
    self.mapBoundData.top = self.mapBoundData.center.y + self.mapBoundData.size.y * 0.5 + self.mapBoundData.expandY.x
    self.mapBoundData.bottom = self.mapBoundData.center.y - self.mapBoundData.size.y * 0.5 - self.mapBoundData.expandY.y
    --Logger.LogVars("top ~ : ",self.mapBoundData.top," bottom ： ", self.mapBoundData.bottom)
end


local function GetUnityGridCellSize(self)
    return self.unityGrid.cellSize
end

local function GetMapBoundData(self)
    return self.mapBoundData
end

local function GetUnityGridCellSize(self)
    return self.unityGrid.cellSize
end

local function CalcMapBoundDataByXY(self, x, y)
    local calcX, calcY
    if x < self.mapBoundData.left then
        calcX = self.mapBoundData.left
    elseif x > self.mapBoundData.right then
        calcX = self.mapBoundData.right
    else
        calcX = x
    end
    if y > self.mapBoundData.top then
        calcY = self.mapBoundData.top
    elseif y < self.mapBoundData.bottom then
        calcY = self.mapBoundData.bottom
    else
        calcY = y
    end
    return calcX, calcY
end

local function DoInit(self, scene, proxy)
    self.scene = scene
    self.proxy = proxy
end

local function CoInit(self)
    self:__CoInitMapData(NationDefine.MAP_DEFAULT_DATA_FILE_NAME)
end

local function GetUnityGrid(self)
    return self.unityGrid
end

local function GetMapForWard(self)
    return self.unityGrid.transform.forward
end

local function GetGridUnityWorldToCell(self, unityVec3Point)
    local unityCellPos = self.unityGrid:WorldToCell(unityVec3Point)
    return unityCellPos
end
-- 通过格子坐标获取Unity世界坐标
local function GetGridUnityCellToWorldByIntXYZ(self, xInt, yInt, zInt)
    local unityVec3Int = CS.UnityEngine.Vector3Int(xInt, yInt, zInt)
    local unityVec3 = self.unityGrid:CellToWorld(unityVec3Int)
    return unityVec3
end


-- 通过格子坐标获取Lua世界坐标
local function GetGridCellToWorldVec3PosByIntXYZ(self, xInt, yInt, zInt)
    local unityVec3Int = CS.UnityEngine.Vector3Int(xInt, yInt, zInt)
    local unityVec3 = self.unityGrid:CellToWorld(unityVec3Int)
    local vec3 = Vector3.New(unityVec3.x, unityVec3.y, unityVec3.z)
    return vec3
end

--默认对焦规则
local function DefaultFocusMapLogic(self)

    local allNationTeams = NationTeamData:GetInstance():GetAllNationTeamDataDict()
    for i, v in pairs(allNationTeams) do
        if NationTeamData:GetInstance():IsTeamHasCardById(v.teamId) then
            local result, pos = self:FocusMapToMyTeamData(v)
            if result then
                --Logger.LogVars(" 6666666666666 : ",result," pos : ",pos.x," y : ",pos.y)
                return pos
            end
        else
        end
    end
    -- 默认找第一个出生点
    local bornTownId = NationPlayerData:GetInstance().bornTown
    local pos = self:GetGridUnityCellToWorldByIntXYZ(
            NationUtil.GetXByCellId(bornTownId),
            NationUtil.GetYByCellId(bornTownId),
            0)
    return pos


    --local nationTowns = NationTownData:GetInstance():GetAllNationTownDatas()
    --local randomNationTown = nil
    ----Logger.LogVars("#nationTowns : ",table.count(nationTowns) )
    --local randomIndex = math.random(1, table.count(nationTowns))
    --local currentIndex = 1
    --for i, v in pairs(nationTowns) do
    --    if currentIndex == randomIndex then
    --        randomNationTown = v
    --        break
    --    end
    --    currentIndex = currentIndex + 1
    --end
    --Logger.LogVars(" 555555555555555555555555")
    --local pos = self:GetGridUnityCellToWorldByIntXYZ(
    --        NationUtil.GetXByCellId(randomNationTown.townId),
    --        NationUtil.GetYByCellId(randomNationTown.townId),
    --        0)
    --return pos
end

local function CalculateTeamMoveBehaviorFocusPos(self, startPos, targetPos, startTime, endTime)
    --local currentBehavior = nationTeam.currentBehavior
    local foundLinkRoadMode, linkRoadIdArr = self:FindLinkRoadByABId(startPos, targetPos)
    local pos
    if foundLinkRoadMode == NationDefine.NATION_FOUND_ROUND_LINK.NONE then
        local preIntX, preIntY = NationUtil.GetXYByCellId(startPos)
        local prePostion = self:GetGridCellToWorldVec3PosByIntXYZ(preIntX, preIntY, 0)
        local targetIntX, targetIntY = NationUtil.GetXYByCellId(targetPos)
        local targetPostion = self:GetGridCellToWorldVec3PosByIntXYZ(targetIntX, targetIntY, 0)
        ----获取开始和结束的时间节点
        pos = Vector3.Lerp(prePostion, targetPostion, NationUtil.GetTimeBeginEndRate(startTime, endTime))
    else
        -- 直接路径
        -- 不用管方向问题
        local dValRate = NationUtil.GetTimeBeginEndRate(startTime, endTime)

        local P0 = Vector3.New(linkRoadIdArr.CostP0[1], linkRoadIdArr.CostP0[2], 0) -- worldPosition
        local P1 = Vector3.New(linkRoadIdArr.CostP1[1], linkRoadIdArr.CostP1[2], 0)
        local P2 = Vector3.New(linkRoadIdArr.CostP2[1], linkRoadIdArr.CostP2[2], 0)
        local P3 = Vector3.New(linkRoadIdArr.CostP3[1], linkRoadIdArr.CostP3[2], 0)
        if foundLinkRoadMode == NationDefine.NATION_FOUND_ROUND_LINK.FORWARD then
            pos = P0 + NationUtil.CalculateTargetBezierPoint(dValRate, Vector3.zero, P1, P2, P3)
        else
            local startWorldPos = P0 + P3
            local worldP1 = P0 + P1
            local worldP2 = P0 + P2
            pos = startWorldPos + NationUtil.CalculateTargetBezierPoint(dValRate, Vector3.zero, worldP2 - startWorldPos, worldP1 - startWorldPos, -P3)
        end
    end
    return pos
end

--对焦到某个id
local function FocusMap2MyTeamIdLogic(self, teamId)
    local nationTeam = NationTeamData:GetInstance():GetNationTeamDataById(teamId)
    return self:FocusMapToMyTeamData(nationTeam)
end


--对焦到某个id
local function FocusMapToMyTeamData(self, nationTeam)
    if nationTeam == nil then
        --Logger.LogErrorVars("FocusMapToMyTeamData 11111111111111111")
        return false, nil -- x,y
    end

    local currentBehavior = nationTeam.currentBehavior
    if nationTeam.uid ~= UserData:GetInstance().roleID then
        --Logger.LogErrorVars("FocusMapToMyTeamData 2222222222222222222222")
        -- 队伍栏选中
        return true, self:GetGridUnityCellToWorldByIntXYZ(
                NationUtil.GetXByCellId(currentBehavior.startMapID),
                NationUtil.GetYByCellId(currentBehavior.startMapID),
                0)
    end

    if currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.ERROR then
        --Logger.LogErrorVars("FocusMapToMyTeamData 333333333333333333")
        return false, nil -- x,y
    end

    local targetPosID = currentBehavior.targetMapID
    local cellInfo = NationMapInfoData:GetInstance().national_battleZone[currentBehavior.secondMapID]
    if currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND_WARCELL
            or currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.WARCELL or cellInfo ~= nil then
        targetPosID = currentBehavior.secondMapID
        --Logger.LogErrorVars("FocusMapToMyTeamData 4444444444444444")
    end

    if currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
        --移动中
        --Logger.LogErrorVars("FocusMapToMyTeamData 55555555555555555555555")

        return true, self:CalculateTeamMoveBehaviorFocusPos(currentBehavior.startMapID,
                targetPosID, currentBehavior.startTime, currentBehavior.endTime)
    elseif currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
        return true, self:GetGridUnityCellToWorldByIntXYZ(
                NationUtil.GetXByCellId(targetPosID),
                NationUtil.GetYByCellId(targetPosID),
                0)
    elseif currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
        return true, self:CalculateTeamMoveBehaviorFocusPos(targetPosID, currentBehavior.startMapID,
                currentBehavior.startTime, currentBehavior.endTime)
    else
        if currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND_WARCELL then
            return true, self:GetGridUnityCellToWorldByIntXYZ(
                    NationUtil.GetXByCellId(currentBehavior.secondMapID),
                    NationUtil.GetYByCellId(currentBehavior.secondMapID),
                    0)
        elseif currentBehavior.type ~= NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
            --Logger.LogErrorVars("FocusMapToMyTeamData 666666666666666666")
            return true, self:GetGridUnityCellToWorldByIntXYZ(
                    NationUtil.GetXByCellId(currentBehavior.targetMapID),
                    NationUtil.GetYByCellId(currentBehavior.targetMapID),
                    0)
        else -- 待命
            --Logger.LogErrorVars("FocusMapToMyTeamData 7777777777777777777777777 currentBehavior ",currentBehavior)
            if nationTeam:IsTeamCardsEmpty() then
                return false,nil
            else
                return true, self:GetGridUnityCellToWorldByIntXYZ(
                        NationUtil.GetXByCellId(currentBehavior.startMapID),
                        NationUtil.GetYByCellId(currentBehavior.startMapID),
                        0)
            end
        end
    end

end

--[[
    查找ab之间的路径连接状态
    NATION_FOUND_ROUND_LINK = {
        FORWARD  = 1,--正向查找
        BACKWARD = 2,--反向查找
        NONE = 3 -- 未找到
    }
    未找到返回空 找到返回路径数据
]]
local function FindLinkRoadByABId(self, aPointId, bPointId)
    local roadId = math.modf(NationUtil.GetRoadIdByAB(aPointId, bPointId))
    local roadIdStr = tostring(roadId)
    local pathData = NationMapInfoData:GetInstance():GetNationalRoadCostById(roadIdStr)
    local foundLinkRoadMode = NationDefine.NATION_FOUND_ROUND_LINK.FORWARD -- 正向查找
    if pathData == nil then
        roadId = math.modf(NationUtil.GetRoadIdByAB(bPointId, aPointId))
        roadIdStr = tostring(roadId)
        pathData = NationMapInfoData:GetInstance():GetNationalRoadCostById(roadIdStr)
        foundLinkRoadMode = NationDefine.NATION_FOUND_ROUND_LINK.BACKWARD -- 反向查找
        if pathData == nil then
            foundLinkRoadMode = NationDefine.NATION_FOUND_ROUND_LINK.NONE
        end
    end
    --Logger.LogVars(" FindLinkRoadByABId roadId : ",roadId," roadIdStr : ",roadIdStr," foundLinkRoadMode :  ",foundLinkRoadMode," pathData : ",pathData)
    return foundLinkRoadMode, pathData
end


--local function GetRoadLinkById(self, id)
--    return self.ljMapInfoData:GetRoadLinkById(id)
--end

--初始化路径对格子能通那座建筑的表
local function __InitLinkRoadInfo(self)
    --local allRoadIds = self:GetAllRoadLinkKeys()
    self.cacheCellIdToAllLinkCellIdMap = {}
    local firstCreateX = false
    local firstCreateY = false

    --Logger.LogVars(" __InitLinkRoadInfo len : ",len)

    local national_road_cost = NationMapInfoData:GetInstance().national_road_cost
    for i, v in pairs(national_road_cost) do
        local roadId = tonumber(i)
        local xPoint, yPoint = NationUtil.GetPointABByRoadId(roadId)
        if xPoint ~= nil then
            local allCellXList = self.cacheCellIdToAllLinkCellIdMap[xPoint]
            local allCellYList = self.cacheCellIdToAllLinkCellIdMap[yPoint]

            if allCellXList == nil then
                firstCreateX = true
                allCellXList = {}
            else
                firstCreateX = false
            end

            if not self:__ArrayHasSameElement(allCellXList, yPoint) then
                table.insert(allCellXList, yPoint)
            end

            if firstCreateX then
                self.cacheCellIdToAllLinkCellIdMap[xPoint] = allCellXList
            end

            if allCellYList == nil then
                firstCreateY = true
                allCellYList = {}
            else
                firstCreateY = false
            end

            if not self:__ArrayHasSameElement(allCellYList, xPoint) then
                table.insert(allCellYList, xPoint)
            end

            if firstCreateY then
                self.cacheCellIdToAllLinkCellIdMap[yPoint] = allCellYList
            end

        end
    end
end


--[[
    查找与某点相通的所有格子id 列表形式
]]
local function FindCellIdAllLinkCellIds(self, cellId)
    return self.cacheCellIdToAllLinkCellIdMap[cellId]
end

local function __ArrayHasSameElement(self, allCellYList, xPoint)
    for j, v in ipairs(allCellYList) do
        if v == xPoint then
            return true
        end
    end
    return false
end


--local function GetAllRoadLinkKeys(self)
--    return self.ljMapInfoData:GetAllRoadLinkKeys()
--end

--根据地图层名称获取地图层对象
local function GetUnityTilemapByLayerName(self, layerName)
    return self.unityTilemaps[layerName]
end
--获取默认的地图层 地表层
local function GetDefaultUnityTilemap(self)
    return self:GetUnityTilemapByLayerName(NationDefine.MAP_DEFAULT_LAYER_NAME)
end

--获取地图层 接战区层
local function GetCoderTilemap(self)
    return self:GetUnityTilemapByLayerName(NationDefine.MAP_DEFAULT_CODER_BLOCK_LAYER_NAME)
end

--通过x,y,z坐标获取颜色
local function GetCoderTilemapUnityColorByXYZ(self, xInt, yInt, zInt)
    local unityVec3Int = CS.UnityEngine.Vector3Int(xInt, yInt, zInt)
    local unityColor = self:GetCoderTilemap():GetColor(unityVec3Int)
    return unityColor
    --return  Color.New(unityColor.r,unityColor.g,unityColor.b,unityColor.a)
end


--通过x,y,z坐标设置rgba颜色
local function SetCoderTilemapColorByXYZ(self, xInt, yInt, zInt, r, g, b, a)
    local unityVec3Int = CS.UnityEngine.Vector3Int(xInt, yInt, zInt)
    local unityColor = CS.UnityEngine.Color(r, g, b, a)
    self:GetCoderTilemap():SetColor(unityVec3Int, unityColor)
end

--通过x,y,z坐标设置unityColor颜色 推荐性能好
local function SetCoderTilemapUnityColorByXYZ(self, xInt, yInt, zInt, unityColor)
    local unityVec3Int = CS.UnityEngine.Vector3Int(xInt, yInt, zInt)
    self:GetCoderTilemap():SetColor(unityVec3Int, unityColor)
end


--通过x,y,z坐标设置Alpha颜色
local function SetCoderTilemapAlphaByXYZ(self, xInt, yInt, zInt, a)
    local unityVec3Int = CS.UnityEngine.Vector3Int(xInt, yInt, zInt)
    local oldUnityColor = self:GetCoderTilemapUnityColorByXYZ(xInt, yInt, zInt)
    local unityColor = CS.UnityEngine.Color(oldUnityColor.r, oldUnityColor.g, oldUnityColor.b, a)
    self:GetCoderTilemap():SetColor(unityVec3Int, unityColor)
end


--根据id获取地图块
local function GetTileBaseByIndex(self, index)
    local tileBase = self.ljBaseTileConfig:GetTileBaseById(index)
    return tileBase
end

--设置某层某位置为某个地图块 用图块索引方式参看  NationDefine.MAP_DYNAMIC_CELL
local function SetTileBaseByTileIndex(self, layerName, xInt, yInt, zInt, tileIndex)
    local tileBase = self:GetTileBaseByIndex(tileIndex)
    if IsNull(tileBase) then
        return
    end
    self:SetTileBase(layerName, xInt, yInt, zInt, tileBase)
end

--设置某层某位置为某个地图块
local function SetTileBase(self, layerName, xInt, yInt, zInt, tileBase)
    local unityTilemap = self:GetUnityTilemapByLayerName(layerName)
    if IsNull(unityTilemap) then
        return
    end
    local unityVec3Int = CS.UnityEngine.Vector3Int(xInt, yInt, zInt)
    unityTilemap:SetTile(unityVec3Int, tileBase)
end


--根据BuildingId和地图层获取地图块显示的精灵
local function GetTileSpriteByBuildingIdAndLayer(self, buildingId,layerName)
    --NationDefine.MAP_DEFAULT_LAYER_NAME
    local layerTileMap = self:GetUnityTilemapByLayerName(layerName)
    if IsNull(layerTileMap) then
        return nil
    end
    local x, y = NationUtil.GetXYByCellId(buildingId)
    local unityVec3Int = CS.UnityEngine.Vector3Int(x, y, 0)
    local tileBase = layerTileMap:GetTile(unityVec3Int)
    local unitySprite = self:GetTileSpriteByTileBase(tileBase)
    return unitySprite
end



--根据图块id获取地图块显示的精灵
local function GetTileSpriteByTileIndex(self, index)
    local tileBase = self.ljBaseTileConfig:GetTileBaseById(index)
    local unitySprite = self:GetTileSpriteByTileBase(tileBase)
    return unitySprite
end

--根据地图块获取地图块显示的精灵
local function GetTileSpriteByTileBase(self, tileBase)
    if IsNull(tileBase) then
        return nil
    end
    cast(tileBase, typeof(CS.UnityEngine.Tilemaps.Tile))
    if IsNull(tileBase) then
        return nil
    end
    return tileBase.sprite
end


local function GetMapInfoDataMapCellsNum(self)
    return self.ljMapInfoData.size
end


NationMapManager.__CreateLayer = __CreateLayer
NationMapManager.__CoCreateMap = __CoCreateMap
NationMapManager.__CoInitMapData = __CoInitMapData
NationMapManager.__CoCreateNationBackGround = __CoCreateNationBackGround
--NationMapManager.__CoCreateNationRoads = __CoCreateNationRoads
NationMapManager.__CoCreateTiledMap = __CoCreateTiledMap
NationMapManager.__CreateMapBound = __CreateMapBound

NationMapManager.__init = __init
NationMapManager.__delete = __delete
NationMapManager.__ArrayHasSameElement = __ArrayHasSameElement

NationMapManager.DoInit = DoInit
NationMapManager.CoInit = CoInit
NationMapManager.Dispose = Dispose

NationMapManager.GetUnityGrid = GetUnityGrid
NationMapManager.GetMapForWard = GetMapForWard
NationMapManager.GetDefaultUnityTilemap = GetDefaultUnityTilemap
NationMapManager.GetGridUnityWorldToCell = GetGridUnityWorldToCell
NationMapManager.GetGridUnityCellToWorldByIntXYZ = GetGridUnityCellToWorldByIntXYZ
NationMapManager.GetGridCellToWorldVec3PosByIntXYZ = GetGridCellToWorldVec3PosByIntXYZ

--NationMapManager.GetRoadLinkById = GetRoadLinkById
--NationMapManager.GetAllRoadLinkKeys = GetAllRoadLinkKeys
NationMapManager.__InitLinkRoadInfo = __InitLinkRoadInfo
NationMapManager.FindCellIdAllLinkCellIds = FindCellIdAllLinkCellIds

NationMapManager.FindLinkRoadByABId = FindLinkRoadByABId

NationMapManager.DefaultFocusMapLogic = DefaultFocusMapLogic

NationMapManager.FocusMap2MyTeamIdLogic = FocusMap2MyTeamIdLogic
NationMapManager.FocusMapToMyTeamData = FocusMapToMyTeamData

NationMapManager.CalculateTeamMoveBehaviorFocusPos = CalculateTeamMoveBehaviorFocusPos
NationMapManager.GetCoderTilemap = GetCoderTilemap
NationMapManager.GetUnityTilemapByLayerName = GetUnityTilemapByLayerName
NationMapManager.GetCoderTilemapUnityColorByXYZ = GetCoderTilemapUnityColorByXYZ
NationMapManager.SetCoderTilemapUnityColorByXYZ = SetCoderTilemapUnityColorByXYZ
NationMapManager.SetCoderTilemapColorByXYZ = SetCoderTilemapColorByXYZ
NationMapManager.SetCoderTilemapAlphaByXYZ = SetCoderTilemapAlphaByXYZ
NationMapManager.GetTileBaseByIndex = GetTileBaseByIndex
NationMapManager.SetTileBaseByTileIndex = SetTileBaseByTileIndex
NationMapManager.SetTileBase = SetTileBase
NationMapManager.GetMapBoundData = GetMapBoundData
NationMapManager.CalcMapBoundDataByXY = CalcMapBoundDataByXY
NationMapManager.GetTileSpriteByBuildingIdAndLayer = GetTileSpriteByBuildingIdAndLayer
NationMapManager.GetTileSpriteByTileIndex = GetTileSpriteByTileIndex
NationMapManager.GetTileSpriteByTileBase = GetTileSpriteByTileBase
NationMapManager.GetNationRouteRoadData = GetNationRouteRoadData
NationMapManager.GetUnityGridCellSize = GetUnityGridCellSize
NationMapManager.GetMapInfoDataMapCellsNum = GetMapInfoDataMapCellsNum

return NationMapManager