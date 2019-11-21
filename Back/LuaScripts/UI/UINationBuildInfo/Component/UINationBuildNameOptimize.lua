local UINationBuildNameOptimize = BaseClass("UINationBuildNameOptimize", UIBaseNationComponent)
local base = UIBaseNationComponent

local NationUtil = require "GameLogic.Nation.NationUtil"

local Build_Name_Image_Path = "UI/Prefabs/Other/NationBuildNameTipBg"
local Build_Name_Text_Path = "UI/Prefabs/Other/NationBuildNameTipText"
local WARCELL_TIME_PATH = "UI/Prefabs/Other/NationGiveUpTimeTip"
local Siege_STATE_PATH = "UI/Prefabs/Other/NationSiegeStateTip"

local function OnUIMsgRefreshBuildingName(self, buildID)
    local tempObj = self.itemNamePrefabList[buildID]
    if tempObj == nil then
        return
    end
    if self.nameItemList[buildID] == nil then
        return
    end
    tempObj.modelData.name = self.nameItemList[buildID].name
    UIUtil.FindText(tempObj.textObj.transform, "").text = tempObj.modelData.name
end

local function CreateBuildNameItem(self, modelData)
    local bgPath = string.format("%s.prefab", Build_Name_Image_Path)
    local textPath = string.format("%s.prefab", Build_Name_Text_Path)
    local objData = { imageObj = nil, bgPathName = bgPath, textObj = nil, textPathName = textPath, modelData = modelData }
    local tilePosX, tilePosY = NationUtil.GetXYByCellId(modelData.buildId)
    local pos = self.mapManager:GetGridUnityCellToWorldByIntXYZ(tilePosX, tilePosY, 0)

    GameObjectPool:GetInstance():GetGameObjectAsync(bgPath, function(go)
        if not IsNull(go) then
            objData.imageObj = go
            go.transform:SetParent(self.ImageRootTran)
            go.transform.rotation = Vector3.zero
            go.transform.position = Vector3.New(pos.x, pos.y + modelData.offSetY, 0)
            go.transform.localScale = Vector3.one
        end
    end)

    GameObjectPool:GetInstance():GetGameObjectAsync(textPath, function(go)
        if not IsNull(go) then
            objData.textObj = go
            local label = UIUtil.FindText(go.transform, "")
            label.text = modelData.name
            go.transform:SetParent(self.TextRootTran)
            go.transform.rotation = Vector3.zero
            go.transform.position = Vector3.New(pos.x, pos.y + modelData.offSetY + 0.1, 0)
            go.transform.localScale = Vector3.one
        end
    end)

    if self.itemNamePrefabList[modelData.buildId] == nil then
        self.itemNamePrefabList[modelData.buildId] = {}
    end
    self.itemNamePrefabList[modelData.buildId] = objData
end

local function NewWarCellTimer(self, time)
    local countDown = time
    local function UpdateTimer()
        countDown = countDown - 1
        self.tag.text = UIUtil.GetTimeStrMS(countDown)
        if countDown <= 0 then
            TimerManager:GetInstance():SimpleTimerStop(self.timer)
            --池子，回收
            GameObjectPool:GetInstance():RecycleGameObject(self.pathName, self.gameObj)
            countDown = 0
        end
    end
    self.timer = TimerManager:GetInstance():SimpleTimerArgs(1, UpdateTimer, self, false, false)
end

local function CreateTimeItem(self, modelData, parentTrans)
    local danPath = string.format("%s.prefab", WARCELL_TIME_PATH)
    GameObjectPool:GetInstance():GetGameObjectAsync(danPath, function(go)
        if not IsNull(go) then
            local objData = { gameObj = go, pathName = danPath, modelData = modelData, tag = nil, timer = nil }
            local tempTran = go.transform
            objData.tag = UIUtil.FindText(tempTran, "Lable")
            objData.tag.text = UIUtil.GetTimeStrMS(modelData.time)

            local tilePosX, tilePosY = NationUtil.GetXYByCellId(modelData.buildId)
            local pos = self.mapManager:GetGridUnityCellToWorldByIntXYZ(tilePosX, tilePosY, 0)
            go.transform:SetParent(parentTrans)
            go.transform.rotation = Vector3.zero
            go.transform.position = Vector3.New(pos.x, pos.y + 1, 0)
            go.transform.localScale = Vector3.one

            NewWarCellTimer(objData, modelData.time)

            if self.itemWarCellTimePrefabList[modelData.buildId] == nil then
                self.itemWarCellTimePrefabList[modelData.buildId] = {}
            end
            self.itemWarCellTimePrefabList[modelData.buildId] = objData
        end
    end)
end

local function CreateSiegeStateItem(self, modelData, parentTrans)
    local danPath = string.format("%s.prefab", Siege_STATE_PATH)
    GameObjectPool:GetInstance():GetGameObjectAsync(danPath, function(go)
        if not IsNull(go) then
            local objData = { gameObj = go, pathName = danPath, modelData = modelData }

            local tilePosX, tilePosY = NationUtil.GetXYByCellId(modelData.buildId)
            local pos = self.mapManager:GetGridUnityCellToWorldByIntXYZ(tilePosX, tilePosY, 0)
            go.transform:SetParent(parentTrans)
            go.transform.rotation = Vector3.zero
            go.transform.position = Vector3.New(pos.x, pos.y + modelData.offSetY, 0)
            go.transform.localScale = Vector3.one

            if self.itemSiegeStatePrefabList[modelData.buildId] == nil then
                self.itemSiegeStatePrefabList[modelData.buildId] = {}
            end
            self.itemSiegeStatePrefabList[modelData.buildId] = objData
        end
    end)
end

--动态生成，回收建筑名字
local function OnUIMsgRefreshBuildingNameTip(self, addList, deleteList)
    --添加，新的
    if table.length(addList) > 0 then
        for _, v in pairs(addList) do
            self:CreateBuildNameItem(self.nameItemList[v])
        end
    end

    --回收需要删除
    if table.length(deleteList) > 0 then
        local temp = nil
        for _, v in pairs(deleteList) do
            temp = self.itemNamePrefabList[v.buildId]

            if temp ~= nil and not IsNull(temp.imageObj) and not IsNull(temp.textObj) then
                GameObjectPool:GetInstance():RecycleGameObject(temp.bgPathName, temp.imageObj)
                GameObjectPool:GetInstance():RecycleGameObject(temp.textPathName, temp.textObj)
            end

            self.itemNamePrefabList[v.buildId] = nil
        end
    end
end
--动态生成，回收接战区地块放弃时间
local function OnUIMsgRefreshWarCellGiveUpTime(self, addList, deleteList)
    --添加，新的
    if table.length(addList) > 0 then
        for _, v in pairs(addList) do
            self:CreateTimeItem(self.timeItemList[v], self.warcellTimeRootTran, nil)
        end
    end

    --回收需要删除
    if table.length(deleteList) > 0 then
        local temp = nil
        for _, v in pairs(deleteList) do
            temp = self.itemWarCellTimePrefabList[v.buildId]

            if temp.timer ~= nil then
                TimerManager:GetInstance():SimpleTimerStop(temp.timer)
                temp.timer = nil
            end

            if temp ~= nil and not IsNull(temp.gameObj) then
                GameObjectPool:GetInstance():RecycleGameObject(temp.pathName, temp.gameObj)
            end

            self.itemWarCellTimePrefabList[v.buildId] = nil
        end
    end
end
--动态生成，回收攻城战建筑开战状态的显示
local function OnUIMsgRefreshSiegeState(self, addList, deleteList)
    --添加，新的
    if table.length(addList) > 0 then
        for _, v in pairs(addList) do
            self:CreateSiegeStateItem(self.siegeItemList[v], self.siegeStateRootTran, nil)
        end
    end

    --回收需要删除
    if table.length(deleteList) > 0 then
        local temp = nil
        for _, v in pairs(deleteList) do
            temp = self.itemSiegeStatePrefabList[v.buildId]

            if temp ~= nil and not IsNull(temp.gameObj) then
                GameObjectPool:GetInstance():RecycleGameObject(temp.pathName, temp.gameObj)
            end

            self.itemSiegeStatePrefabList[v.buildId] = nil
        end
    end
end

----回收所有,名字列表，接战区地块的时间
local function RecycleAllItem(self)
    if self.itemNamePrefabList ~= nil then
        for _, v in pairs(self.itemNamePrefabList) do
            if not IsNull(v.imageObj) and not IsNull(v.textObj) then
                GameObjectPool:GetInstance():RecycleGameObject(v.bgPathName, v.imageObj)
                GameObjectPool:GetInstance():RecycleGameObject(v.textPathName, v.textObj)
            end
        end
    end
    self.itemNamePrefabList = nil

    if self.itemWarCellTimePrefabList ~= nil then
        for _, v in pairs(self.itemWarCellTimePrefabList) do
            if not IsNull(v.gameObj) then
                if v.timer ~= nil then
                    TimerManager:GetInstance():SimpleTimerStop(v.timer)
                    v.timer = nil
                end
                GameObjectPool:GetInstance():RecycleGameObject(v.pathName, v.gameObj)
            end
        end
    end
    self.itemWarCellTimePrefabList = nil

    if self.itemSiegeStatePrefabList ~= nil then
        for _, v in pairs(self.itemSiegeStatePrefabList) do
            if not IsNull(v.gameObj) then
                GameObjectPool:GetInstance():RecycleGameObject(v.pathName, v.gameObj)
            end
        end
    end
    self.itemSiegeStatePrefabList = nil
end

local function OnDataMsgUpdateBuildingNameList(self, buildID)
    local temp = self.nameItemList[buildID]
    if temp == nil then
        return
    end

    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(buildID)
    --目前只针对城镇名字处理。
    if buildInfo.Type == NationUtil.BUILDING_TYPE_TOWN then
        if NationTownData:GetInstance():IsNationTownDataActiveById(buildID) == false then
            if NationUnionData:GetInstance():BuildIsActiveByBuildID(buildID) then
                temp.name = "<color=#88CCEB>" .. buildInfo.Name .. "</color>"
            else
                temp.name = "<color=#9D9D9C>" .. buildInfo.Name .. "</color>"
            end
        else
            temp.name = "<color=#EFEADE>" .. buildInfo.Name .. "</color>"
        end
    else
        temp.name = "<color=#EFEADE>" .. buildInfo.Name .. "</color>"
    end

    OnUIMsgRefreshBuildingName(self, buildID)
end

local function OnDataMsgUpdateBuildingNameAllList(self)
    for k, v in pairs(self.nameItemList) do
        OnDataMsgUpdateBuildingNameList(self, k)
    end
end

local function OnDataMsgUpdateBuildingNameTip(self, buildList)
    local deleteList = self.nameItemList
    local addList = {}
    local newList = {}
    local buildInfo = nil

    for _, v in pairs(buildList) do

        --添加，新的
        if self.nameItemList[v] == nil then
            addList[v] = {}
            addList[v] = v
        else
            --删除，不需要回收的，剩下，需要回收的
            deleteList[v] = nil
        end

        buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(v)
        local temp = {}
        temp.pos = {}
        if buildInfo.Type == NationUtil.BUILDING_TYPE_TOWN then
            temp.offSetY = 2.6
        elseif buildInfo.Type == NationUtil.BUILDING_TYPE_RESOURCE then
            temp.offSetY = 2
        elseif buildInfo.Type == NationUtil.BUILDING_TYPE_PUNITIVE then
            temp.offSetY = 1.6
        elseif buildInfo.Type == NationUtil.BUILDING_TYPE_GUAN_AI then
            temp.offSetY = 2.6
        elseif buildInfo.Type == NationUtil.BUILDING_TYPE_WE_DU then
            temp.offSetY = 2.8
        elseif buildInfo.Type == NationUtil.BUILDING_TYPE_YU_DU then
            temp.offSetY = 5
        end

        --目前只针对城镇名字处理。
        if buildInfo.Type == NationUtil.BUILDING_TYPE_TOWN then
            if NationTownData:GetInstance():IsNationTownDataActiveById(v) == false then
                if NationUnionData:GetInstance():BuildIsActiveByBuildID(v) ~= false then
                    temp.name = "<color=#88CCEB>" .. buildInfo.Name .. "</color>"
                else
                    temp.name = "<color=#9D9D9C>" .. buildInfo.Name .. "</color>"
                end
            else
                temp.name = "<color=#EFEADE>" .. buildInfo.Name .. "</color>"
            end
        else
            temp.name = "<color=#EFEADE>" .. buildInfo.Name .. "</color>"
        end

        temp.buildId = v
        temp.pos.xInt, temp.pos.yInt = NationUtil.GetXYByCellId(v)
        if newList[v] == nil then
            newList[v] = {}
        end
        newList[v] = temp
    end

    self.nameItemList = newList
    OnUIMsgRefreshBuildingNameTip(self, addList, deleteList)
end

local function OnDataMsgUpdateWarCellTime(self, msgObj)
    ----------------------------------------------
    ----处理攻城战，建筑的开战状态的UI
    local deleteList = self.siegeItemList
    local addList = {}
    local newList = {}
    local buildInfo = nil

    for _, v in ipairs(msgObj.war_build_state) do
        --添加，新的
        --攻城战状态 1 未开战 2开战中
        if v.warStatus == 2 then
            if self.siegeItemList[v.buildingId] == nil then
                addList[v.buildingId] = {}
                addList[v.buildingId] = v.buildingId
            else
                --删除，不需要回收的，剩下，需要回收的
                deleteList[v.buildingId] = nil
            end

            buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(v.buildingId)
            local temp = {}
            if buildInfo.Type == NationUtil.BUILDING_TYPE_GUAN_AI then
                temp.offSetY = 5.1
            elseif buildInfo.Type == NationUtil.BUILDING_TYPE_WE_DU then
                temp.offSetY = 5.1
            elseif buildInfo.Type == NationUtil.BUILDING_TYPE_YU_DU then
                temp.offSetY = 7.4
            end
            temp.pos = {}
            temp.buildId = v.buildingId
            temp.pos.xInt, temp.pos.yInt = NationUtil.GetXYByCellId(v.buildingId)
            if newList[v.buildingId] == nil then
                newList[v.buildingId] = {}
            end
            newList[v.buildingId] = temp
        end
    end

    self.siegeItemList = newList
    if table.length(self.siegeItemList) > 0 then
        OnUIMsgRefreshSiegeState(self, addList, deleteList)
    end
    -----------------------------------------------------
    ---处理攻城战，接战区放弃占领的时间的UI
    local deleteList = self.timeItemList
    local addList = {}
    local newList = {}

    for _, v in ipairs(msgObj.war_cell_state) do
        if tonumber(v.abandonDefendTime) > 0 then
            --添加，新的
            if self.timeItemList[v.cellId] == nil then
                addList[v.cellId] = {}
                addList[v.cellId] = v.cellId
            else
                --删除，不需要回收的，剩下，需要回收的
                deleteList[v.cellId] = nil
            end

            local temp = {}
            temp.pos = {}
            temp.buildId = v.cellId
            temp.time = math.modf(tonumber(v.abandonDefendTime) / 1000)
            temp.pos.xInt, temp.pos.yInt = NationUtil.GetXYByCellId(v.cellId)
            if newList[v.cellId] == nil then
                newList[v.cellId] = {}
            end
            newList[v.cellId] = temp
        end
    end

    self.timeItemList = newList
    if table.length(self.timeItemList) > 0 or table.length(deleteList) > 0 then
        OnUIMsgRefreshWarCellGiveUpTime(self, addList, deleteList)
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.sizeChangeTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot").transform
    self.sizeChangeTran.localScale = Vector3.New(NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_X, NationDefine.NATION_SCENE_CANVAS_PARAM.SIZE_Y, 1)

    --设置3d坐标
    self.transform.position = Vector3.New(0, 0, 0)
    self.transform.localScale = Vector3.New(1, 1, 1)

    self.nameItemList = {}
    self.timeItemList = {}
    self.siegeItemList = {}

    --各个根节点
    self.ImageRootTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot/mask/imageRoot")
    self.TextRootTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot/mask/textRoot")

    self.warcellTimeRootTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot/mask/timeRoot")
    self.siegeStateRootTran = UIUtil.FindTrans(self.transform, "SizeChangeRoot/mask/imageRoot")

    self.itemNamePrefabList = {}
    self.itemWarCellTimePrefabList = {}
    self.itemSiegeStatePrefabList = {}

end

local function OnEnable(self)
    base.OnEnable(self)

    self.mapManager = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnDisable(self)
    base.OnDisable(self)

end

local function OnAddListener(self)
    base.OnAddListener(self)

    self:AddDataListener(DataMessageNames.ON_NATION_UPDATE_BUILDING_NAME, OnDataMsgUpdateBuildingNameTip)
    self:AddDataListener(DataMessageNames.ON_NATION_UPDATE_WARCELL_STATE, OnDataMsgUpdateWarCellTime)
    self:AddDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_ACTIVE, OnDataMsgUpdateBuildingNameList)
    self:AddDataListener(DataMessageNames.ON_NATION_UNION_BUILD_ACTIVE_UPDATE, OnDataMsgUpdateBuildingNameAllList)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)

    self:RemoveDataListener(DataMessageNames.ON_NATION_UPDATE_BUILDING_NAME, OnDataMsgUpdateBuildingNameTip)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UPDATE_WARCELL_STATE, OnDataMsgUpdateWarCellTime)
    self:RemoveDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_ACTIVE, OnDataMsgUpdateBuildingNameList)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UNION_BUILD_ACTIVE_UPDATE, OnDataMsgUpdateBuildingNameAllList)
end

local function OnDestroy(self)
    base.OnDestroy(self)

    self.nameItemList = nil
    self.timeItemList = nil
    self.siegeItemList = nil
    RecycleAllItem(self)
end

UINationBuildNameOptimize.OnCreate = OnCreate
UINationBuildNameOptimize.OnEnable = OnEnable
UINationBuildNameOptimize.OnRefresh = OnRefresh
UINationBuildNameOptimize.OnDisable = OnDisable
UINationBuildNameOptimize.OnAddListener = OnAddListener
UINationBuildNameOptimize.OnRemoveListener = OnRemoveListener
UINationBuildNameOptimize.OnDestroy = OnDestroy
UINationBuildNameOptimize.CreateBuildNameItem = CreateBuildNameItem
UINationBuildNameOptimize.CreateTimeItem = CreateTimeItem
UINationBuildNameOptimize.CreateSiegeStateItem = CreateSiegeStateItem

return UINationBuildNameOptimize