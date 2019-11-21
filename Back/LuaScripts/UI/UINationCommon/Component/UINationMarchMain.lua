local UINationMarchMain = BaseClass("UINationMarchMain", UIBaseNationComponent)
local base = UIBaseNationComponent

local NationUtil = require "GameLogic.Nation.NationUtil"

local NationMarchEntity = require"GameLogic.Nation.Logic.Object.NationMarchEntity"
local NationRouteEntity = require"GameLogic.Nation.Logic.Object.NationRouteEntity"


local function CloseWindow(self)
    NationSceneUIManager:GetInstance():CloseWindow(UIWindowNames.UINationMarchMain)
end

local function OnUIMsgSelectTeamSprite(self, marchID)
    local teamObj = self:GetNationMarchEntityByMarchId(marchID)
    if teamObj ~= nil then
        teamObj.nationMarchPersonHolderEntity.transform:SetAsLastSibling()
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.dataTable = {}
    --self.root = UIUtil.FindTrans(self.transform, "")
    self.routeTable = {}
    --动态小人贴图计算大小
    self.dynamicModelTextureSize = NationDefine.NATION_2D_CHAR_PARAMS.MAX_SIZE
end

-- 重新计算人物当前大小
local function CalcDynamicModelTextureSize(self)
    if self.dataTable == nil then
        return
    end
    local count = 0
    for i, v in pairs(self.dataTable) do
        local nationMarchEntity = v
        local nationMarchPersonHolderEntity = nationMarchEntity.nationMarchPersonHolderEntity
        if nationMarchPersonHolderEntity.model3D ~= nil then -- 没有模型
            count = count + 1
        end
    end

    ---- 国战地图2d人物参数
    --NATION_2D_CHAR_PARAMS = {
    --    ALLOW_MEMORY = 16, -- 人物可占用内存(m)
    --    MAX_SIZE = 512, -- 最大渲染尺寸
    --    MIN_SIZE = 64, -- 最小渲染尺寸
    --    LAYER_NONE = 28, -- 非渲染层
    --    LAYER_CHARACTER = 8, -- 角色层
    --    CIRCLE_IN_BOUND = 4, -- 进入范围m
    --    CIRCLE_OUT_BOUND = 2, -- 出去范围m
    --    --LAYER_NONE = 10000000000, -- 非渲染层
    --    --LAYER_CHARACTER = 128, -- 角色层
    --},
    local timeModelTextureSize = 0
    if count  < NationDefine.NATION_2D_CHAR_PARAMS.ALLOW_MEMORY then
        timeModelTextureSize = NationDefine.NATION_2D_CHAR_PARAMS.MAX_SIZE
    else
        if count <=  NationDefine.NATION_2D_CHAR_PARAMS.ALLOW_MEMORY * 4 then -- 64
            timeModelTextureSize = NationDefine.NATION_2D_CHAR_PARAMS.MAX_SIZE / 2 -- 256
        elseif count <=  NationDefine.NATION_2D_CHAR_PARAMS.ALLOW_MEMORY * 16  then -- 256
            timeModelTextureSize = NationDefine.NATION_2D_CHAR_PARAMS.MAX_SIZE / 4 --  128
        elseif count <=  NationDefine.NATION_2D_CHAR_PARAMS.ALLOW_MEMORY * 64  then --1024
            timeModelTextureSize = NationDefine.NATION_2D_CHAR_PARAMS.MAX_SIZE / 4 --  64
        else
            timeModelTextureSize = NationDefine.NATION_2D_CHAR_PARAMS.MIN_SIZE / 4 --  64
        end
    end

    if timeModelTextureSize ~= self.dynamicModelTextureSize then
        self.dynamicModelTextureSize = timeModelTextureSize
        local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
        nationProxy:SetAllCharacter2DWidthHeight(timeModelTextureSize,timeModelTextureSize)
    end
end

local function OnEnable(self)
    base.OnEnable(self)
    NationTeamData:GetInstance():__RunMyTeamLogic() --刚创建初始化我方队伍
    local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
    if nationProxy~= nil then
        if nationProxy.cameraManager ~= nil then
            nationProxy.cameraManager:SetLineQuadTreeManagerRun(true)
        end
    end
end



local function OnDisable(self)
    base.OnDisable(self)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    if self.dataTable ~= nil then
        for i, v in pairs(self.dataTable) do
            v:Dispose()
            --self:RecycleItem(v.gameObject)
        end
    end
    self.dataTable = nil

    if self.routeTable ~= nil then
        for i, v in pairs(self.routeTable) do
            v:Dispose()
        end
    end
    self.routeTable = nil
    self.dynamicModelTextureSize = nil
end

local function OnAddListener(self)
    base.OnAddListener(self)
    self:AddDataListener(DataMessageNames.ON_NATION_MARCH_LIST_ADD, self.__onNationMarchListAdd)
    self:AddDataListener(DataMessageNames.ON_NATION_MARCH_LIST_REMOVE, self.__onNationMarchListRemove)
    self:AddDataListener(DataMessageNames.ON_NATION_MARCH_GO_END, self.__onNationMarchGoEnd)
    self:AddDataListener(DataMessageNames.ON_NATION_ROUTE_CHANGE, self.__onNationRouteChange)
    self:AddDataListener(DataMessageNames.ON_NATION_ONE_TEAM_MARCH_SELECT, OnUIMsgSelectTeamSprite)

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    self:RemoveDataListener(DataMessageNames.ON_NATION_MARCH_LIST_ADD, self.__onNationMarchListAdd)
    self:RemoveDataListener(DataMessageNames.ON_NATION_MARCH_LIST_REMOVE, self.__onNationMarchListRemove)
    self:RemoveDataListener(DataMessageNames.ON_NATION_MARCH_GO_END, self.__onNationMarchGoEnd)
    self:RemoveDataListener(DataMessageNames.ON_NATION_ONE_TEAM_MARCH_SELECT, OnUIMsgSelectTeamSprite)
    self:RemoveDataListener(DataMessageNames.ON_NATION_ROUTE_CHANGE, self.__onNationRouteChange)
end

local function __onNationRouteChange(self,lineInfo,active)
    --Logger.LogErrorVars("__onNationRouteChange ： ",active," id : ",lineInfo.id)

    local roadId = lineInfo.id
    local roadIdStr = tostring(roadId)
    if active then
        local pathData = NationMapInfoData:GetInstance():GetNationalRoadCostById(roadIdStr)
        self:CreateRouteItem(pathData,roadId)
    else
        local nationRouteEntity = self.routeTable[roadId]
        if nationRouteEntity ~= nil then -- 已经移除
            nationRouteEntity:Dispose()
            self.routeTable[roadId] = nil
        end
    end
end

local function CreateRouteItem(self, pathData,roadId)
    if pathData == nil then
        return
    end
    local nationRouteEntity = self.routeTable[roadId]

    if nationRouteEntity ~= nil then
        return
        --nationRouteEntity:Dispose()
        --self.routeTable[roadId] = nil
    end

    local go = GameObjectPool:GetInstance():TryGetFromCache(NationDefine.MAP_BUILDING_LINE_TEMPLATE)
    if  IsNull (go) then
        return
    end
    --Logger.LogErrorVars("CreateRouteItem roadId : ",roadId)
    local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
    go.transform:SetParent(nationProxy:GetSceneMarchRootObj().transform)
    go.transform.position = Vector3.one
    go.transform.rotation = Vector3.zero
    go.transform.localScale = Vector3.one
    nationRouteEntity = NationRouteEntity.New(go.transform,"")
    nationRouteEntity:OnCreate()
    nationRouteEntity:DoInit(pathData,roadId)
    go:SetActive(true)
    self.routeTable[roadId] = nationRouteEntity

    --GameObjectPool:GetInstance():GetGameObjectAsync(NationDefine.MAP_BUILDING_LINE_TEMPLATE, function(go)
    --    if not IsNull(go) then
    --
    --    end
    --end)
end


local function __onNationMarchListAdd(self, addList)
    if table.length(addList) >= 1 then
        for i, v in ipairs(addList) do
            local prevObj = self.dataTable[v.marchId]
            --Logger.LogErrorVars("__onNationMarchListAdd 111111 v.marchId :  ",v.marchId)
            local item = NationMarchData:GetInstance().CopyNationMarchData(v, false)
            if prevObj ~= nil then
                -- 更新
                --Logger.LogErrorVars("__onNationMarchListAdd 2222222222 :  ")
                prevObj:DoInit(item)
            else
                --Logger.LogErrorVars("__onNationMarchListAdd 333333333333 :  ")
                self:CreateMarchItem(item)
            end
        end
    end
end

local function __onNationMarchGoEnd(self, marchId)
    if self.dataTable ~= nil then
        local marchCtrl = self.dataTable[marchId]
        if marchCtrl ~= nil then
            -- 已经移除
            --self:RecycleItem(marchCtrl.gameObject)
            self.dataTable[marchId] = nil
        end
    end
end

local function __onNationMarchListRemove(self, removeList)


    if self.dataTable == nil then
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
        local marchCtrl = self.dataTable[marchId]
        if marchCtrl ~= nil then
            -- 已经移除
            marchCtrl:Dispose()
            --self:RecycleItem(marchCtrl.gameObject)
            self.dataTable[marchId] = nil
        end
    end

end

local function CreateMarchItem(self, nationArmyPath)
    GameObjectPool:GetInstance():GetGameObjectAsync(NationDefine.MAP_MARCH_ROLE_FILE_NAME, function(go)
        if not IsNull(go) then
            --local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
            go.transform:SetParent(self.transform)
            go.transform.position = Vector3.one
            go.transform.rotation = Vector3.zero
            go.transform.localScale = Vector3.one
            local nationMarchEntity = NationMarchEntity.New(go.transform, "")
            nationMarchEntity:OnCreate(self)
            nationMarchEntity:DoInit(nationArmyPath)
            self.dataTable[nationArmyPath.marchId] = nationMarchEntity
        end
    end)
end

-- 获取某个行军路线数据
local function GetNationMarchEntityByMarchId(self, marchId)
    if self.dataTable == nil then
        return nil
    end
    return self.dataTable[marchId]
end

local function BugFixModel3DWalk(self)
    if self.dataTable == nil then
        return
    end
    for i, v in pairs(self.dataTable) do
        local nationMarchEntity = v
        nationMarchEntity:BugFixModel3DWalk()
    end
end


--local function RecycleItem(self,go)
--    --Logger.LogErrorVars("RecycleItem RecycleGameObject ")
--    GameObjectPool:GetInstance():RecycleGameObject(NationDefine.MAP_MARCH_ROLE_FILE_NAME, go)
--end

UINationMarchMain.__onNationMarchListAdd = __onNationMarchListAdd
UINationMarchMain.__onNationMarchListRemove = __onNationMarchListRemove
UINationMarchMain.__onNationMarchGoEnd = __onNationMarchGoEnd
UINationMarchMain.__onNationRouteChange = __onNationRouteChange

UINationMarchMain.GetNationMarchEntityByMarchId = GetNationMarchEntityByMarchId

UINationMarchMain.OnCreate = OnCreate
UINationMarchMain.OnDestroy = OnDestroy

UINationMarchMain.OnEnable = OnEnable
UINationMarchMain.OnDisable = OnDisable
UINationMarchMain.OnAddListener = OnAddListener
UINationMarchMain.OnRemoveListener = OnRemoveListener
UINationMarchMain.CreateMarchItem = CreateMarchItem
UINationMarchMain.CreateRouteItem = CreateRouteItem
--UINationMarchMain.RecycleItem = RecycleItem
UINationMarchMain.CloseWindow = CloseWindow
UINationMarchMain.CalcDynamicModelTextureSize = CalcDynamicModelTextureSize
UINationMarchMain.BugFixModel3DWalk = BugFixModel3DWalk


return UINationMarchMain