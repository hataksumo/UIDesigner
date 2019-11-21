--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local LandData = {
    ID = -1,
    PosID = -1,
    SubPosID = -1,
    Name = "",
    PosText = "",
    Level = -1,
    Type = -1,
    TypeText = "",
    EndTime = -1,
    AvoidEndTime = -1,
    State = -1,
}

local EnumLandType = {
    WarCell = 1,
    ResPoint = 2,
}

local UINationOccupiedLandModel = BaseClass("UINationOccupiedLandModel", UIBaseModel)
local base = UIBaseModel
local ResPointInfo = DataUtil.GetData("national_res_info")
local LandDataModel = DataClass("TeamData", LandData)
local NationUtil = require "GameLogic.Nation.NationUtil"
local GlobalData = DataUtil.GetData("global")

local function OnDataMsgUpdateLandDataEndTime(self, id, isGiveUp)
    local endTime = 0
    local type = nil
    local level = nil
    for k, v in ipairs(self.landList) do
        if id == v.ID then
            type = v.Type
            level = v.Level

            if isGiveUp then
                if type == EnumLandType.WarCell then
                    endTime = math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000) + self.ResAbandon
                elseif type == EnumLandType.ResPoint then
                    endTime = math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000) + self.BattleAbandon
                end
            end

            v.EndTime = endTime
            break
        end
    end

    for k, v in ipairs(self.allLandList[type][level]) do
        if id == v.ID then
            v.EndTime = endTime
            break
        end
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_OCCUPY_LAND_REFRESH)
end

--删除某个坐标数据
local function OnDataMsgDeleteData(self, id)
    local type = nil
    local level = nil
    for k, v in ipairs(self.landList) do
        if id == v.ID then
            type = v.Type
            level = v.Level
            table.remove(self.landList, k)
            break
        end
    end

    for k, v in ipairs(self.allLandList[type][level]) do
        if id == v.ID then
            table.remove(self.allLandList, k)
            break
        end
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_OCCUPY_LAND_REFRESH)
end

--选择某几个类型，筛选显示
local function OnDataMsgSelectType(self)
    self.AllSelectTypeState = true
    self.landList = {}
    for _, v in ipairs(self.landTypeList) do
        if v.isSelect == true then
            for _, w in ipairs(self.allLandList[v.type][v.level]) do
                local temp = {}
                temp.TypeText = w.TypeText
                temp.Type = w.Type
                temp.Name = w.Name
                temp.Level = w.Level
                temp.ID = w.ID
                temp.EndTime = w.EndTime
                temp.AvoidEndTime = w.AvoidEndTime
                temp.PosID = w.PosID
                temp.SubPosID = w.SubPosID
                temp.PosText = w.PosText

                table.insert(self.landList, temp)
            end
        else
            self.AllSelectTypeState = false
        end
    end
    --刷新列表
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_OCCUPY_LAND_REFRESH)
end

--是否全选
local function OnDataMsgSelectAllType(self, isSelect)
    if isSelect then
        for _, v in ipairs(self.landTypeList) do
            v.isSelect = true
        end
        OnDataMsgSelectType(self)
    else
        self.AllSelectTypeState = isSelect
        for _, v in ipairs(self.landTypeList) do
            v.isSelect = false
        end
        self.landList = {}
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_OCCUPY_LAND_REFRESH)
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_OCCUPY_LAND_TYPE_REFRESH)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

    for _, v in pairs(GlobalData) do
        if v.Key == "ResAbandon" then
            self.ResAbandon = v.valueN
        elseif v.Key == "BattleAbandon" then
            self.BattleAbandon = v.valueN
        end
    end
end

-- 打开
local function OnEnable(self, msgData, ResBuildID)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    --在哪个资源区内打开占领界面
    self.resBuildID = ResBuildID

    --按类型等级，分类存放所有的领地
    self.allLandList = {}
    self.allLandList[EnumLandType.WarCell] = {}
    self.allLandList[EnumLandType.ResPoint] = {}

    self.AllSelectTypeState = true

    self.landTypeList = {}
    local landTypeTab = {}
    landTypeTab[EnumLandType.WarCell] = {}
    landTypeTab[EnumLandType.ResPoint] = {}

    local buildInfo = nil
    local cellInfo = nil
    self.landList = {}

    if self.resBuildID == nil and msgData.occupyCellInfo ~= nil then
        for k, v in ipairs(msgData.occupyCellInfo) do
            local temp = LandDataModel.New()
            cellInfo, buildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(v.cellId)

            temp.TypeText = DataUtil.GetClientText(200192)
            temp.Type = EnumLandType.WarCell
            temp.Name = cellInfo.Name .. "Lv." .. cellInfo.BuildLv
            temp.Level = cellInfo.BuildLv

            if landTypeTab[temp.Type][temp.Level] == nil then
                landTypeTab[temp.Type][temp.Level] = 1
            else
                landTypeTab[temp.Type][temp.Level] = landTypeTab[temp.Type][temp.Level] + 1
            end

            temp.ID = k
            temp.EndTime = math.modf(tonumber(v.abandonTime) / 1000)
            temp.AvoidEndTime = math.modf(tonumber(v.avoidTime) / 1000)
            temp.PosID = cellInfo.BuildId
            temp.SubPosID = v.cellId

            local posX, posY = NationUtil.GetXYByCellId(v.cellId)
            temp.PosText = string.format("(%s,%s)", math.modf(posX), math.modf(posY))

            if self.allLandList[temp.Type][temp.Level] == nil then
                self.allLandList[temp.Type][temp.Level] = {}
            end

            table.insert(self.allLandList[temp.Type][temp.Level], temp)
            table.insert(self.landList, temp)
        end
    end

    if msgData.occupyResInfo ~= nil then
        local tempLen = #self.landList
        for k, v in ipairs(msgData.occupyResInfo) do
            while true do
                if self.resBuildID ~= nil and self.resBuildID ~= v.townId then
                    break
                end

                local temp = LandDataModel.New()
                local resInfo = ResPointInfo[v.resId]
                temp.TypeText = DataUtil.GetClientText(200193)
                temp.Type = EnumLandType.ResPoint
                temp.Name = NationUtil.GetResNameByType(resInfo.Type) .. "Lv." .. resInfo.level
                temp.Level = resInfo.level

                if landTypeTab[temp.Type][temp.Level] == nil then
                    landTypeTab[temp.Type][temp.Level] = 1
                else
                    landTypeTab[temp.Type][temp.Level] = landTypeTab[temp.Type][temp.Level] + 1
                end

                temp.ID = k + tempLen
                temp.EndTime = math.modf(tonumber(v.abandonTime) / 1000)
                temp.AvoidEndTime = math.modf(tonumber(v.avoidTime) / 1000)
                temp.PosID = v.townId
                temp.SubPosID = v.pointId

                local posX, posY = NationUtil.GetXYByCellId(v.townId)
                temp.PosText = string.format("(%s,%s)", math.modf(posX), math.modf(posY))

                if self.allLandList[temp.Type][temp.Level] == nil then
                    self.allLandList[temp.Type][temp.Level] = {}
                end
                table.insert(self.allLandList[temp.Type][temp.Level], temp)
                table.insert(self.landList, temp)
                break
            end
        end
    end

    for k, v in ipairs(landTypeTab) do
        for j, w in pairs(v) do
            local temp = {}
            temp.type = k
            temp.level = j
            temp.count = w
            temp.isSelect = true

            table.insert(self.landTypeList, temp)
        end
    end

    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_NATION_OCCUPY_LAND_SELECT_TYPE, OnDataMsgSelectType)
    self:AddDataListener(DataMessageNames.ON_NATION_OCCUPY_LAND_DELETE, OnDataMsgDeleteData)
    self:AddDataListener(DataMessageNames.ON_NATION_OCCUPY_LAND_ALL_SELECT, OnDataMsgSelectAllType)
    self:AddDataListener(DataMessageNames.ON_NATION_OCCUPY_LAND_UPDATE, OnDataMsgUpdateLandDataEndTime)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_OCCUPY_LAND_SELECT_TYPE, OnDataMsgSelectType)
    self:RemoveDataListener(DataMessageNames.ON_NATION_OCCUPY_LAND_DELETE, OnDataMsgDeleteData)
    self:RemoveDataListener(DataMessageNames.ON_NATION_OCCUPY_LAND_ALL_SELECT, OnDataMsgSelectAllType)
    self:RemoveDataListener(DataMessageNames.ON_NATION_OCCUPY_LAND_UPDATE, OnDataMsgUpdateLandDataEndTime)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.landList = {}
    self.landTypeList = {}
    self.allLandList = {}
    self.AllSelectTypeState = false
    self.resBuildID = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
    self.ResAbandon = nil
    self.BattleAbandon = nil
end

UINationOccupiedLandModel.OnCreate = OnCreate
UINationOccupiedLandModel.OnEnable = OnEnable
UINationOccupiedLandModel.OnRefresh = OnRefresh
UINationOccupiedLandModel.OnAddListener = OnAddListener
UINationOccupiedLandModel.OnRemoveListener = OnRemoveListener
UINationOccupiedLandModel.OnDisable = OnDisable
UINationOccupiedLandModel.OnDestroy = OnDestroy
UINationOccupiedLandModel.EnumLandType = EnumLandType

return UINationOccupiedLandModel