--[[
   国战相机管理模块相关
]]
local NationCameraManager = BaseClass("NationCameraManager")
local NationUtil = require "GameLogic.Nation.NationUtil"

local LINE_QUAD_TREE_MANAGER_NAME = "LineQuadTreeManager"
local testMode = false -- 测试模式

local function __init(self)

    --代理类
    self.proxy = nil
    -- 地图类
    self.mapManager = nil
    self.myMapClickPlane = nil
    self.myCamera = nil

    -- 四叉树路线管理器对象 LineQuadTreeManager
    self.lineQuadTreeManager = nil
    self.__onLineQuadTreeDataChangeEvent = nil -- 需要处理的事件
    self.defaultFogParams = nil -- 场景雾效参数
    self.mapCornerNormalDir = nil -- 四个角的向量
    self.myCameraUnityForward = nil -- 我的相机的方向
    --雾效浓度根据距离的比例
    self.startFogRate = nil
    self.endFogRate = nil

    self.testModeTrans = nil
end

-- 析构函数
local function __delete(self)
    self.proxy = nil
    -- 地图类
    self.mapManager = nil
    self.myMapClickPlane = nil
    self.myCamera = nil

    self.lineQuadTreeManager = nil
    self.__onLineQuadTreeDataChangeEvent = nil
    self.defaultFogParams = nil -- 场景雾效参数
    self.mapCornerNormalDir = nil -- 四个角的向量
    self.myCameraUnityForward = nil -- 我的相机的方向
    if self.testModeTrans ~= nil then

    end
    self.testModeTrans = nil
    self.centerHitPoint = nil
    self.circleCenterSqrtDistance = nil
end

local function Dispose(self)
    --self:__delete()

end

-- 抓相机与地面中心点距离
local function GetCurrentScreenMapCenterDistance(self)
    local cameraPosition = self.myCamera.transform.position
    -- 距离
    local cameraLuaWorldPos = Vector3.New(cameraPosition.x, cameraPosition.y, cameraPosition.z)
    -- 计算中心点到地图的默认距离
    --self.myCameraUnityForward = self.myCamera.transform.forward
    local myPlaneCenterRay = Ray.New(NationUtil.ConvertUnityVector3ToLuaVector3(self.myCameraUnityForward), cameraLuaWorldPos)
    local hasCollider, myPlaneCenterRayLength = self.myMapClickPlane:Raycast(myPlaneCenterRay)
    return myPlaneCenterRayLength
end


--[[
    sceneViewPortData
    mapCornerNormalDir 四角向量
    mapCornersDistance 标准屏幕一屏四角默认长度
    widthMeter,heightMeter 标准屏幕一屏距离长宽比
    widthCellNum,heightCellNum 标准屏幕一屏格子长宽数量

    myCamera 主相机
    myMapClickPlane 地图地面蒙版
    lineQuadTreeManager 四叉树管理器
    defaultViewPort2PlaneCenterDistance 标准屏幕相机到地图的距离
]]

--重新计算雾效距离
local function ReCalcFogDistance(self, posX, posY, posZ)
    -- 距离
    --local cameraPosition = self.myCamera.transform.position
    local cameraLuaWorldPos = Vector3.New(posX, posY, posZ)
    --local myCameraUnityForward = self.myCamera.transform.forward
    local myPlaneCenterRay = Ray.New(NationUtil.ConvertUnityVector3ToLuaVector3(self.myCameraUnityForward), cameraLuaWorldPos)
    local hasCollider, myPlaneCenterRayLength = self.myMapClickPlane:Raycast(myPlaneCenterRay)
    local nextDistance = myPlaneCenterRayLength - self.defaultFogParams.defaultViewPort2PlaneCenterDistance
    CS.UnityEngine.RenderSettings.fogStartDistance = myPlaneCenterRayLength * self.startFogRate
    CS.UnityEngine.RenderSettings.fogEndDistance = myPlaneCenterRayLength * self.endFogRate
end
-- 加载路线管理器
local function CoInitNationRouteManager(self,rootTran)

    GameObjectPool:GetInstance():CoPreLoadGameObjectAsync(NationDefine.MAP_BUILDING_LINE_TEMPLATE, NationDefine.MAP_MARCH_LINE_PRE_LOAD_COUNT)

    local lineQuadTreeGameObj = CS.UnityEngine.GameObject(LINE_QUAD_TREE_MANAGER_NAME)
    if not IsNull(rootTran) then
        lineQuadTreeGameObj.transform:SetParent(rootTran)
    end
    local lineQuadTreeManager = lineQuadTreeGameObj:AddComponent(typeof(CS.MapSys.LineQuadTreeManager))
    self.lineQuadTreeManager = lineQuadTreeManager

    self.defaultFogParams = {}
    self.defaultFogParams.fogStartDistance = CS.UnityEngine.RenderSettings.fogStartDistance
    self.defaultFogParams.fogEndDistance = CS.UnityEngine.RenderSettings.fogEndDistance
    if NationDefine.NATION_TEST_MODE then
        CS.UnityEngine.RenderSettings.fog = false
    else
        CS.UnityEngine.RenderSettings.fog = true
    end

    local cameraPosition = self.myCamera.transform.position
    -- 距离
    local cameraLuaWorldPos = Vector3.New(cameraPosition.x, cameraPosition.y, cameraPosition.z)

    -- 计算中心点到地图的默认距离
    self.myCameraUnityForward = self.myCamera.transform.forward
    local myPlaneCenterRay = Ray.New(NationUtil.ConvertUnityVector3ToLuaVector3(self.myCameraUnityForward), cameraLuaWorldPos)
    local hasCollider, myPlaneCenterRayLength = self.myMapClickPlane:Raycast(myPlaneCenterRay)
    --local myPlaneCenterWorldPos = myPlaneCenterRay:GetPoint(myPlaneCenterRayLength) -- 这个没有实际意义
    self.defaultFogParams.defaultViewPort2PlaneCenterDistance = myPlaneCenterRayLength
    --初始化，雾效浓度的比例
    self.startFogRate = self.defaultFogParams.fogStartDistance / myPlaneCenterRayLength
    self.endFogRate = self.defaultFogParams.fogEndDistance / myPlaneCenterRayLength
    ---------------------------------------------

    local cameraFovFusumCorners = NationUtil
            .GetCameraFovFusumCorners(self.myCamera) -- 视锥体最远端四个角的坐标

    local currentMapCorners = {}
    local currentMapCornerLengths = {} --四个角长度
    for i, v in ipairs(cameraFovFusumCorners) do
        --地图碰撞点坐标
        local tempPos = Vector3.New(Vector3.Get(v))
        tempPos:Sub(cameraLuaWorldPos)
        local myRay = Ray.New(tempPos, cameraLuaWorldPos)
        local hasCollider, rayLength = self.myMapClickPlane:Raycast(myRay)
        local hitPoint = myRay:GetPoint(rayLength)
        table.insert(currentMapCorners, hitPoint)
        table.insert(currentMapCornerLengths, rayLength)
    end

    local mapCornerNormalDir = {} --四个角方向向量
    for i, v in ipairs(currentMapCorners) do
        local tempPos = Vector3.New(Vector3.Get(v))
        tempPos:Sub(cameraLuaWorldPos)
        tempPos:SetNormalize()
        table.insert(mapCornerNormalDir, tempPos)
    end

    self.mapCornerNormalDir = mapCornerNormalDir --四个角方向向量

    if testMode then
        self.testModeTrans = {}
        for i, v in ipairs(currentMapCorners) do
            --测试四个角坐标
            local test1 = CS.UnityEngine.GameObject.CreatePrimitive(CS.UnityEngine.PrimitiveType.Cube)
            test1.name = string.format("currentMapCorners [%s]", i)
            test1.transform.position = CS.UnityEngine.Vector3(v.x, v.y, v.z)
            table.insert(self.testModeTrans, test1)
        end
    end

    local widthMeter = Vector3.Distance(currentMapCorners[1], currentMapCorners[2])  -- 长宽米
    local heightMeter = Vector3.Distance(currentMapCorners[1], currentMapCorners[3])
    local cellSize = self.mapManager:GetUnityGridCellSize() -- 地图一个格子大小  2米,1米
    local widthCellNum = math.ceil(widthMeter / cellSize.x) -- 一屏横向地图格子数
    local heightCellNum = math.ceil(heightMeter / cellSize.y) -- 一屏纵向地图格子数
    local ljMapInfoDataSize = self.mapManager:GetMapInfoDataMapCellsNum() -- 地图总格子大小
    local largerCellMapSize = math.max(cellSize.x, cellSize.y) -- 地图一个格子大小最多值
    local largerMapCellNum = math.max(ljMapInfoDataSize.x, ljMapInfoDataSize.y) -- 地图总格子大小最多值
    local largerScreenCellNum = math.max(widthCellNum, heightCellNum) -- 一屏最多格子数

    local CellSwapInDist = (largerCellMapSize * (largerScreenCellNum + NationDefine.NATION_LINE_QUAD_TREE_PARAMS.CELL_SWAP_IN_DIST_CELL_NUM)) * 0.5
    local CellSwapOutDist = (largerCellMapSize * (largerScreenCellNum + NationDefine.NATION_LINE_QUAD_TREE_PARAMS.CELL_SWAP_IN_DIST_CELL_NUM
            + NationDefine.NATION_LINE_QUAD_TREE_PARAMS.CELL_SWAP_OUT_DIST_CELL_NUM) * 0.5)

    self.__onLineQuadTreeDataChangeEvent = Bind(self, self.__OnLineQuadTreeDataChange)

    local rectSize = largerScreenCellNum * largerCellMapSize / 4; -- 分成四等分
    local rectCount = math.ceil(largerMapCellNum * largerCellMapSize / rectSize);
    local nationRoadData = self.mapManager:GetNationRouteRoadData()
    lineQuadTreeManager:Init(rectCount, rectSize,
            self.myCamera.transform, nationRoadData, CellSwapInDist, CellSwapOutDist, NationDefine.NATION_LINE_QUAD_TREE_PARAMS.SWAP_PROCESS_INTERVAL, NationDefine.NATION_LINE_QUAD_TREE_PARAMS.SWAP_TRIGGER_INTERVAL,
            self.__onLineQuadTreeDataChangeEvent)

end



-- 根据当前相机位置设置四叉树的范围距离
local function SetLineQuadTreeManagerCellSwapInOutDist(self)
    local cameraPosition = self.myCamera.transform.position
    local cameraLuaWorldPos = Vector3.New(cameraPosition.x, cameraPosition.y, cameraPosition.z)
    ---------------------------------------------

    local currentMapCorners = {}
    local currentMapCornerLengths = {}
    for i, v in ipairs(self.mapCornerNormalDir) do
        --四方向向量
        local myRay = Ray.New(v, cameraLuaWorldPos)
        local hasCollider, rayLength = self.myMapClickPlane:Raycast(myRay)
        local hitPoint = myRay:GetPoint(rayLength)
        table.insert(currentMapCorners, hitPoint)
        table.insert(currentMapCornerLengths, rayLength)
    end
    --Logger.LogVars("SetLineQuadTreeManagerCellSwapInOutDist currentMapCorners ： ",currentMapCorners," mapCornerNormalDir : ",self.mapCornerNormalDir)
    local widthMeter = Vector3.Distance(currentMapCorners[1], currentMapCorners[2])  -- 长宽米
    local heightMeter = Vector3.Distance(currentMapCorners[1], currentMapCorners[3])
    local cellSize = self.mapManager:GetUnityGridCellSize() -- 地图一个格子大小  2米,1米
    local widthCellNum = math.ceil(widthMeter / cellSize.x) -- 一屏横向地图格子数
    local heightCellNum = math.ceil(heightMeter / cellSize.y) -- 一屏纵向地图格子数
    local largerCellMapSize = math.max(cellSize.x, cellSize.y) -- 地图一个格子大小最多值
    local largerScreenCellNum = math.max(widthCellNum, heightCellNum) -- 一屏最多格子数

    local CellSwapInDist = (largerCellMapSize * (largerScreenCellNum + NationDefine.NATION_LINE_QUAD_TREE_PARAMS.CELL_SWAP_IN_DIST_CELL_NUM)) * 0.5
    local CellSwapOutDist = (largerCellMapSize * (largerScreenCellNum + NationDefine.NATION_LINE_QUAD_TREE_PARAMS.CELL_SWAP_IN_DIST_CELL_NUM
            + NationDefine.NATION_LINE_QUAD_TREE_PARAMS.CELL_SWAP_OUT_DIST_CELL_NUM) * 0.5)
    --Logger.LogVars("SetLineQuadTreeManagerCellSwapInOutDist CellSwapInDist : ",CellSwapInDist, " CellSwapOutDist : ",CellSwapOutDist)
    self.lineQuadTreeManager:SetCellSwapInOutDist(CellSwapInDist, CellSwapOutDist)
end
--设置四叉树可以运行
local function SetLineQuadTreeManagerRun(self,isRun)
    if IsNull(self.lineQuadTreeManager) then
        return
    end
    self.lineQuadTreeManager:SetRunning(isRun)
end

-- 根据当前相机位置抓取屏幕所有格子
local function GetCurrentScreenMapAllCellMinAndMax(self, cameraLuaWorldPos, offsetRoundCount)
    if IsNull(cameraLuaWorldPos) then
        local cameraPosition = self.myCamera.transform.position
        cameraLuaWorldPos = Vector3.New(cameraPosition.x, cameraPosition.y, cameraPosition.z)
    end

    local currentMapCorners = nil
    if testMode then
        currentMapCorners = {}
    end
    --local currentMapCornerLengths = {}
    local currentMapCornerVector3Int = {}

    for i, v in ipairs(self.mapCornerNormalDir) do
        --四方向向量
        local myRay = Ray.New(v, cameraLuaWorldPos)
        local hasCollider, rayLength = self.myMapClickPlane:Raycast(myRay)
        local hitPoint = myRay:GetPoint(rayLength)
        if testMode then
            table.insert(currentMapCorners, hitPoint)
        end
        local unityCellPos = self.mapManager:GetGridUnityWorldToCell(hitPoint)
        table.insert(currentMapCornerVector3Int, unityCellPos)
    end

    if testMode then
        if self.testModeTrans ~= nil then
            for i, v in ipairs(self.testModeTrans) do
                --测试四个角坐标
                v.transform.position = CS.UnityEngine.Vector3(currentMapCorners[i].x, currentMapCorners[i].y, currentMapCorners[i].z)
            end
        end
    end

    --Logger.LogVars("GetCurrentScreenMapAllCellMinAndMax currentMapCorners ： ",currentMapCorners," mapCornerNormalDir : ",self.mapCornerNormalDir)
    -- 当前四角坐标
    -- UpperLeft     -- UpperRight   -- LowerLeft   --LowerRight
    -- 1                   2               3         4
    --UpperRight - LowerRight  x length
    --LowerLeft - LowerRight  y length
    if offsetRoundCount == nil then
        offsetRoundCount = 0
    end
    --Logger.LogVars("currentMapCornerVector3Int ： ",currentMapCornerVector3Int)

    local lowLeftOffsetPos = { x = currentMapCornerVector3Int[3].x - 1 - offsetRoundCount, y = currentMapCornerVector3Int[4].y - 1 - offsetRoundCount }
    local upperRightOffsetPos = { x = currentMapCornerVector3Int[2].x + (1 + offsetRoundCount) * 2, y = currentMapCornerVector3Int[1].y + (1 + offsetRoundCount) * 2 }

    --Logger.LogVars("GetCurrentScreenMapAllCellMinAndMax lowLeftOffsetPos ： ",lowLeftOffsetPos, " upperRightOffsetPos : ",upperRightOffsetPos)

    return lowLeftOffsetPos, upperRightOffsetPos

    --local resultMap = {}
    --for j = lowLeftOffsetPos.y, upperRightOffsetPos.y do
    --    for i = lowLeftOffsetPos.x, upperRightOffsetPos.x do
    --        if i >= 0 then
    --            if j >= 0 then
    --                table.insert(resultMap,NationUtil.GetCellId(i,j))
    --            end
    --        end
    --    end
    --end

    --local widthScreenCellNum = currentMapCornerVector3Int[2].x -   currentMapCornerVector3Int[4].x
    --local heightScreenCellNum = currentMapCornerVector3Int[3].y -   currentMapCornerVector3Int[4].y
    --
    --local lowOffsetScreenCellNum = {x = widthScreenCellNum + 4 + offsetRoundCount * 2,y = heightScreenCellNum + 4  + offsetRoundCount * 2}
    --
    --Logger.LogVars("currentMapCornerVector3Int : ",currentMapCornerVector3Int)
    --Logger.LogVars("widthScreenCellNum : ",widthScreenCellNum," heightScreenCellNum : ",heightScreenCellNum, " lowLeftOffsetPos ： ",lowLeftOffsetPos , " lowOffsetScreenCellNum : ",lowOffsetScreenCellNum)
    --
    --for j = 0, lowOffsetScreenCellNum.y do
    --    for i = 0, lowOffsetScreenCellNum.x do
    --        local poxIntX = lowLeftOffsetPos.x + i
    --        if poxIntX >= 0 then
    --            local poxIntY = lowLeftOffsetPos.y + j
    --            if poxIntY >= 0 then
    --                table.insert(resultMap,NationUtil.GetCellId(poxIntX,poxIntY))
    --            end
    --        end
    --    end
    --end
    --
    --Logger.LogVars("GetCurrentScreenMapAllCellMinAndMax : ",resultMap)
    --return resultMap
end

local function DoInit(self, proxy)
    self.proxy = proxy
    self.mapManager = self.proxy.mapManager
    --myCamera 主相机
    --myMapClickPlane 地图地面蒙版
    self.myMapClickPlane = self.proxy.mapClickPlane
    self.myCamera = self.proxy.mainCamera

end


local function DoUpdate(self)
    if self.mapCornerNormalDir == nil then
        return
    end
    local cameraTran = self.myCamera.transform
    local cameraPosition = cameraTran.position
    local cameraLuaWorldPos = Vector3.New(cameraPosition.x, cameraPosition.y, cameraPosition.z)
    local cameraForwardUnityPos = cameraTran.forward
    local cameraForwardLuaWorldPos = Vector3.New(cameraForwardUnityPos.x, cameraForwardUnityPos.y, cameraForwardUnityPos.z)


    --UpperLeft
    local upperLeftRay = Ray.New(self.mapCornerNormalDir[1],cameraLuaWorldPos)
    local upperLeftHasCollider, upperLeftRayLength = self.myMapClickPlane:Raycast(upperLeftRay)
    local upperLeftHitPoint = upperLeftRay:GetPoint(upperLeftRayLength)
    --左上角坐标


    -- 中心坐标
    local centerRay = Ray.New(cameraForwardLuaWorldPos,  cameraLuaWorldPos)
    local centerHasCollider, centerRayLength = self.myMapClickPlane:Raycast(centerRay)
    local centerHitPoint = centerRay:GetPoint(centerRayLength)

    -- 距离
    local sqrtDistance = NationUtil.SqrtDistance(upperLeftHitPoint,centerHitPoint)
    --local sqrtDistance = Vector3.Distance(upperLeftHitPoint,centerHitPoint)
    self.centerHitPoint = centerHitPoint
    self.circleCenterSqrtDistance = sqrtDistance
    --Logger.LogErrorVars("DoUpdate run~ : ",upperLeftHitPoint)
end

local function __OnLineQuadTreeDataChange(self, lineInfo, active)
    --Logger.LogVars("__OnLineQuadTreeDataChange : ",active ," id : ",lineInfo.id)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ROUTE_CHANGE, lineInfo, active)
end

local function CoInit(self)
    self:__CoInitMapData(NationDefine.MAP_DEFAULT_DATA_FILE_NAME)
end

--local function UpdateMe(self)
--
--end


NationCameraManager.__init = __init
NationCameraManager.__delete = __delete

NationCameraManager.DoInit = DoInit
NationCameraManager.CoInit = CoInit
NationCameraManager.Dispose = Dispose

NationCameraManager.__OnLineQuadTreeDataChange = __OnLineQuadTreeDataChange
NationCameraManager.CoInitNationRouteManager = CoInitNationRouteManager
NationCameraManager.SetLineQuadTreeManagerCellSwapInOutDist = SetLineQuadTreeManagerCellSwapInOutDist
NationCameraManager.GetCurrentScreenMapCenterDistance = GetCurrentScreenMapCenterDistance
NationCameraManager.GetCurrentScreenMapAllCellMinAndMax = GetCurrentScreenMapAllCellMinAndMax
NationCameraManager.ReCalcFogDistance = ReCalcFogDistance
NationCameraManager.SetLineQuadTreeManagerRun = SetLineQuadTreeManagerRun
NationCameraManager.DoUpdate = DoUpdate
return NationCameraManager