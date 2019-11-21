local UINationDefRecoverInfo = BaseClass("UINationDefRecoverInfo", UIBaseNationComponent)
local base = UIBaseNationComponent

local NationUtil = require "GameLogic.Nation.NationUtil"
local UINationDefRecoverItem = require "UI.UINationBuildInfo.Component.UINationDefRecoverItem"
local NATION_DEF_RECOVER_ITEM_PATH = "UI/Prefabs/Other/NationDefRecoverItem.prefab"

local OFFSET_Y = 4.1

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.sizeChangeTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot").transform
    --self.sizeChangeTran.localScale = Vector3.New(NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_X, NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_Y, 1)

    --设置3d坐标
    self.transform.position = Vector3.New(0, 0, 0)
    self.transform.localScale = Vector3.New(1, 1, 1)

    self.createRoot = UIUtil.FindTrans(self.transform, "SizeChangeRoot/mask/root")

    self.townModelDefRecoverDatas = nil
    self.townDefUIDatas = nil
end

local function GetModelTownDefRecoverDataByTownId(self,townId)
    if  self.townDefRecoverDatas == nil then
        return
    end
    return self.townDefRecoverDatas[townId]
end

local function GetModelTownDefRecoverDataByTownIdAndPos(self,townId,pos)
 local oneModelData = self:GetModelTownDefRecoverDataByTownId(townId)
    if oneModelData == nil then
        return nil
    end
    if oneModelData.datas == nil then
        return nil
    end
    for i, v in ipairs(oneModelData.datas) do
        if v.pos == pos then
            return v
        end
    end
    return nil
end


local function GetUITownDefRecoverDataByTownId(self,townId)
    if  self.townDefUIDatas == nil then
        return
    end
    return self.townDefUIDatas[townId]
end

local function OnEnable(self)
    base.OnEnable(self)
    self:InitAllDefRecoverInfo()
end

local function OnDisable(self)
    base.OnDisable(self)
end

local function __CreatePrefabItem(self, townId)
    local preData = self:GetModelTownDefRecoverDataByTownId(townId)
    local tilePosX, tilePosY = NationUtil.GetXYByCellId(preData.townId)
    local pos = self.mapManager:GetGridUnityCellToWorldByIntXYZ(tilePosX, tilePosY, 0)
    GameObjectPool:GetInstance():GetGameObjectAsync(NATION_DEF_RECOVER_ITEM_PATH, function(go)
        if not IsNull(go) then
            local tran = go.transform
            if self == nil then
                GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_ITEM_PATH, go)
            else
                local modelData = self:GetUITownDefRecoverDataByTownId(townId)
                if modelData ~= nil then
                    tran:SetParent(self.createRoot)
                    tran.rotation = Vector3.zero
                    tran.position = Vector3.New(pos.x, pos.y + OFFSET_Y, 0)
                    tran.localScale = Vector3.one
                    local uiNationDefRecoverItem = UINationDefRecoverItem.New(self, go)
                    modelData.viewItem = uiNationDefRecoverItem
                    uiNationDefRecoverItem:OnCreate()
                    uiNationDefRecoverItem:OnRefresh(self,townId)
                else
                    GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_ITEM_PATH, go)
                end
            end
        end
    end)
end

local function InitAllDefRecoverInfo(self)
   local allNationDefRecoverData =  NationTownData:GetInstance():CopyAllNationDefRecoverData()
    self.mapManager = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager
    self.townDefRecoverDatas = {}
    local uiTownId = self:__GetUITownBuildInfoTownId()
    for i, v in ipairs(allNationDefRecoverData) do
        local townDefData = self:GetModelTownDefRecoverDataByTownId(v.townId)
        local isCreate = false
        if townDefData == nil then
            townDefData = {}
            townDefData.townId = v.townId
            townDefData.datas = {}
            isCreate = true
        end
        table.insert(townDefData.datas, v)
        if isCreate then
            self.townDefRecoverDatas[townDefData.townId] = townDefData
        end
    end

    self.townDefUIDatas = {}
    for i, v in pairs(self.townDefRecoverDatas) do
        local townDefData = self:GetUITownDefRecoverDataByTownId(v.townId)
        local isCreate = false
        if townDefData == nil then
            townDefData = {}
            townDefData.townId = v.townId
            townDefData.isActive = uiTownId ~= v.townId
            isCreate = true
        end

        if isCreate then
            self.townDefUIDatas[townDefData.townId] = townDefData
        end

        if IsNull(townDefData.viewItem) then
            -- createElement
            __CreatePrefabItem(self,townDefData.townId)
        else -- 有了就不创建 只更新
            townDefData.viewItem:OnRefresh()
        end
    end
end

local function __GetUITownBuildInfoTownId(self)
    local windowComponent = NationSceneUIManager:GetInstance():GetUIWindowComponent(UIWindowNames.UINationTownBuildInfo, true)
    if windowComponent == nil then
        return 0
    end
    return windowComponent.buildingId
end

-- 移除列表
local function OnDataMsgTownDefRecoverRemove(self, removeList)
    if self.townDefUIDatas == nil then
        return
    end
    self:ReloadAllItem()
end

-- 增加列表
local function OnDataMsgTownDefRecoverAdd(self, addList)
    if self.townDefUIDatas == nil then
        return
    end
    self:ReloadAllItem()
end


local function ReloadAllItem(self)
    if self.townDefUIDatas ~= nil then
        for i, v in pairs(self.townDefUIDatas) do
            if not IsNull(v.viewItem) then
                v.viewItem:OnDisposeItem()
                GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_ITEM_PATH, v.viewItem.gameObject)
            end
        end
    end
    self.townDefUIDatas = nil

    local allNationDefRecoverData =  NationTownData:GetInstance():CopyAllNationDefRecoverData()
    self.townDefRecoverDatas = {}
    local uiTownId = self:__GetUITownBuildInfoTownId()
    for i, v in ipairs(allNationDefRecoverData) do
        local townDefData = self:GetModelTownDefRecoverDataByTownId(v.townId)
        local isCreate = false
        if townDefData == nil then
            townDefData = {}
            townDefData.townId = v.townId
            townDefData.datas = {}
            isCreate = true
        end
        table.insert(townDefData.datas, v)
        if isCreate then
            self.townDefRecoverDatas[townDefData.townId] = townDefData
        end
    end

    self.townDefUIDatas = {}
    for i, v in pairs(self.townDefRecoverDatas) do
        local townDefData = self:GetUITownDefRecoverDataByTownId(v.townId)
        local isCreate = false
        if townDefData == nil then
            townDefData = {}
            townDefData.townId = v.townId
            townDefData.isActive = uiTownId ~= v.townId
            isCreate = true
        end

        if isCreate then
            self.townDefUIDatas[townDefData.townId] = townDefData
        end

        if IsNull(townDefData.viewItem) then
            -- createElement
            __CreatePrefabItem(self,townDefData.townId)
        else -- 有了就不创建 只更新
            townDefData.viewItem:OnRefresh(self,townDefData.townId)
        end
    end
end

-- 激活非激活列表
local function OnUITownDefRecoverActive(self,townId,isActive)
    if self.townDefUIDatas == nil then
        return
    end
      local uiData = self:GetUITownDefRecoverDataByTownId(townId)
    if uiData == nil then
        return
    end
    uiData.isActive = not isActive
    if uiData.viewItem ~= nil then
        uiData.viewItem:OnRefresh(self,uiData.townId)
    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    self:AddDataListener(DataMessageNames.ON_NATION_DEF_RECOVER_LIST_REMOVE, OnDataMsgTownDefRecoverRemove)
    self:AddDataListener(DataMessageNames.ON_NATION_DEF_RECOVER_LIST_ADD, OnDataMsgTownDefRecoverAdd)
    self:AddUIListener(UIMessageNames.UI_NATION_DEF_RECOVER_TOWN_ACTIVE, OnUITownDefRecoverActive)

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    self:RemoveDataListener(DataMessageNames.ON_NATION_DEF_RECOVER_LIST_REMOVE, OnDataMsgTownDefRecoverRemove)
    self:RemoveDataListener(DataMessageNames.ON_NATION_DEF_RECOVER_LIST_ADD, OnDataMsgTownDefRecoverAdd)
    self:RemoveUIListener(UIMessageNames.UI_NATION_DEF_RECOVER_TOWN_ACTIVE, OnUITownDefRecoverActive)
end

local function OnDestroy(self)
    base.OnDestroy(self)
   self:__RecycleAllItem(self)
    self.mapManager = nil
end

local function __DisposeItemByItemTownId(self,townId)
     local viewData =  self:GetUITownDefRecoverDataByTownId(townId)
    if viewData == nil then
        return
    end
    if IsNull(viewData.viewItem ) then
    else
        viewData.viewItem:OnDisposeItem()
    end
    self.townDefUIDatas[townId] = nil
end

----回收所有创建的缓存
local function __RecycleAllItem(self)
    if self.townDefUIDatas ~= nil then
        for i, v in pairs(self.townDefUIDatas) do
            if not IsNull(v.viewItem) then
                v.viewItem:OnDisposeItem()
                GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_ITEM_PATH, v.viewItem.gameObject)
            end
        end
        self.townDefUIDatas = nil
    end
    self.townDefRecoverDatas = nil
end

UINationDefRecoverInfo.OnCreate = OnCreate
UINationDefRecoverInfo.OnEnable = OnEnable
UINationDefRecoverInfo.OnDisable = OnDisable
UINationDefRecoverInfo.OnAddListener = OnAddListener
UINationDefRecoverInfo.OnRemoveListener = OnRemoveListener
UINationDefRecoverInfo.OnDestroy = OnDestroy
UINationDefRecoverInfo.GetModelTownDefRecoverDataByTownId = GetModelTownDefRecoverDataByTownId
UINationDefRecoverInfo.GetModelTownDefRecoverDataByTownIdAndPos = GetModelTownDefRecoverDataByTownIdAndPos
UINationDefRecoverInfo.GetUITownDefRecoverDataByTownId = GetUITownDefRecoverDataByTownId

UINationDefRecoverInfo.__RecycleAllItem = __RecycleAllItem
UINationDefRecoverInfo.InitAllDefRecoverInfo = InitAllDefRecoverInfo
UINationDefRecoverInfo.__GetUITownBuildInfoTownId = __GetUITownBuildInfoTownId
UINationDefRecoverInfo.__DisposeItemByItemTownId = __DisposeItemByItemTownId
UINationDefRecoverInfo.ReloadAllItem = ReloadAllItem




return UINationDefRecoverInfo