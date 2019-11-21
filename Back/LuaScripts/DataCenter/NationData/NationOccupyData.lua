--[[
-- 国战资源区数据
--]]
local NationOccupyData = BaseClass("NationOccupyData", Singleton)
local NationUtil = require "GameLogic.Nation.NationUtil"

local ABANDON_TIMER_PREFIX_NAME = "ABANDON_TIMER_PREFIX_NAME"-- 放弃时间计时器前缀
local ABANDON_TIMER_LOGIC_OFFSET_MS = 1000 -- 放弃地块计时器计时偏移量

local ABANDON_BUILDING_TYPE = {
    RESOURCE = 1,
    WAL_CELL = 2,
}

local function __init(self)
    self.sourceAreas = {} -- 我的资源区信息
    self.warCells = {} -- 我的接战区信息
    self.abandonData = {} -- 放弃对象列表

    local GlobalData = DataUtil.GetData("global")
    for i, v in pairs(GlobalData) do
        if v.Key == "ResAbandon" then
            self.ResAbandon = v.valueN
        elseif v.Key == "BattleAbandon" then
            self.BattleAbandon = v.valueN
        end
    end

    local national_map = NationMapInfoData:GetInstance():GetNationalMap()
    self.buildId2ResPos2ResId = {}
    for i, building in pairs(national_map) do
        if building.Type == NationUtil.BUILDING_TYPE_RESOURCE then
            if self.buildId2ResPos2ResId[building.BuildId] == nil then
                self.buildId2ResPos2ResId[building.BuildId] = {}
            end
            local resMap = building.ResMap
            for j, res in pairs(resMap) do
                local poss = res.Pos
                for m, onePos in ipairs(poss) do
                    self.buildId2ResPos2ResId[building.BuildId][onePos] = j
                end
            end
        end
    end
    --Logger.LogVars("self.buildId2ResPos2ResId ： ",self.buildId2ResPos2ResId)
end

local function __delete(self)
    self.sourceAreas = nil
    self.warCells = nil
    self.abandonData = nil -- 放弃对象列表
end

--解析，一个资源区的，数据
local function ParseOneNationResAreaData(self, data, hasEvent)
    if data == nil or data._is_nul then
        Logger.LogVars("ParseOneNationResAreaData data == nil ： ")
        return
    end

    if self.sourceAreas == nil then
        return
    end

    local townId = data.townId
    local pos = data.pos
    local len = #pos
    --Logger.LogVars("ParseOneNationResAreaData data == pos ： ",pos," townId ,",townId ," len : ",len)
    if len > 0 then
        if self.sourceAreas[townId] == nil then
            self.sourceAreas[townId] = {}
            self.sourceAreas[townId].townId = townId
        end

        self.sourceAreas[townId].pos = {}
        for i, v in ipairs(pos) do
            table.insert(self.sourceAreas[townId].pos, v)
        end
    else
        -- remove
        self.sourceAreas[townId] = nil
    end

    if hasEvent then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ONE_RES_AREA_DATA_FLUSH, townId)
    end
end

--解析我的接战区数据（进入国战场景）
local function ParseNationWallCellData(self, msgData)
    if msgData == nil or msgData._is_nul then
        Logger.LogVars("ParseNationWallCellData data == nil ： ")
        return
    end

    self.warCells = {}
    for i, v in ipairs(msgData) do
        table.insert(self.warCells, v)
    end
    --Logger.LogVars(" ParseNationWallCellData 接战区收到数据 ~", table.length(self.warCells))
end

-- 解析我的资源区数据（进入国战场景）
local function ParseNationResAreaData(self, msgData)
    if msgData == nil or msgData._is_nul then
        Logger.LogVars("ParseNationResAreaData data == nil ： ")
        return
    end

    self.sourceAreas = {}
    for i, v in ipairs(msgData) do
        self:ParseOneNationResAreaData(v, false)
    end
end

--解析服务器的数据，同步资源区和接战区放弃时间
local function ParseAbandonDataByServer(self, msgData)
    if msgData == nil or msgData._is_nul then
        self.abandonData = {}
        Logger.LogVars("ParseAbandonDataByServer data is nil!")
        return
    end

    self.abandonData = {}
    --Logger.LogVars("ParseAbandonDataByServer  msgData : ", msgData)
    for i, v in ipairs(msgData) do
        if tonumber(v.remainTimer) > 0 then
            local item = self:__CreateAbandonDataBySelf(v.townId, v.pos, v.remainTimer)
            LogicTimerManager:GetInstance():RemoveTimer(item.id)
            if item ~= nil then
                self.abandonData[item.id] = item
            end
        end
    end
end

--被动更新资源点，push 推送（全部数据）
local function UpdateNationResAreaDataByPassivePush(self, msgData, hasEvent)
    if msgData == nil or msgData._is_nul then
        Logger.LogVars("UpdateNationResAreaDataByPassivePush data == nil ： ")
        return
    end

    for i, v in ipairs(msgData) do
        self:ParseOneNationResAreaData(v, true)
    end
    if hasEvent then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ALL_RES_AREA_DATA_FLUSH)
    end
end

--主动更新资源点, 服务器 push 推送（一个资源建筑的所有已占领的点）
local function UpdateNationResAreaDataByInitiativePush(self, msgData, hasEvent)
    if msgData == nil or msgData._is_nul then
        Logger.LogVars("UpdateNationResAreaDataByInitiativePush data == nil ： ")
        return
    end

    self:ParseOneNationResAreaData(msgData, true)
    if hasEvent then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ALL_RES_AREA_DATA_FLUSH)
    end
end

--主动更新接战区, 服务器 push 推送（全部数据）
local function UpdateNationWallCellDataByInitiativePush(self, msgData, hasEvent)
    if msgData == nil or msgData._is_nul then
        return
    end
    local cells = msgData.cellId
    if cells == nil or cells._is_nul then
        Logger.LogVars("UpdateNationResAreaDataByInitiativePush msgData == nil ： ")
        return
    end
    self.warCells = {}
    for i, v in ipairs(cells) do
        table.insert(self.warCells, v)
    end
    --Logger.LogVars("地块变更引起数据变化~",table.length(self.warCells))
    if hasEvent then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ALL_WAR_CELL_DATA_FLUSH)
    end
end

-- 获取我的资源点占领数量
local function GetAllPlayerNationResAreaOccupyNum(self)
    local resAddNum = 0
    for buildingId, serverResArea in pairs(self.sourceAreas) do
        for i, onePos in ipairs(serverResArea.pos) do
            resAddNum = resAddNum + 1
        end
    end
    return resAddNum
end

--获取我的接战区地块占领数
local function GetAllPlayerNationWarCellOccupyNum(self)
    if self.warCells == nil then
        return 0
    end
    return #self.warCells
end

--获取当前占领地块数和总占领数
local function GetAllPlayerNationOccupyNumAndMax(self)
    local resAreaNum = self:GetAllPlayerNationResAreaOccupyNum()
    local warCellNum = self:GetAllPlayerNationWarCellOccupyNum()
    local currentNationFameData = NationPlayerData:GetInstance():GetCurrentNationFameData()
    local occupyNumMax = 0
    if currentNationFameData ~= nil then
        occupyNumMax = currentNationFameData.OccupyNumMax
    end
    return resAreaNum + warCellNum, occupyNumMax
end

-- 获取我的资源点资源加成
local function GetAllPlayerNationResAreaIncreaseAmountByResId(self, resId)
    local resAddNum = 0
    for buildingId, serverResArea in pairs(self.sourceAreas) do
        for i, onePos in ipairs(serverResArea.pos) do
            local resAreaStaticId = self:GetResIdByBuildId2ResPos(buildingId, onePos)
            resAddNum = resAddNum + self:GetStaticNationResAreaIncreaseRateByResId(resAreaStaticId, resId)
        end
    end
    return resAddNum
end

--获取某个资源点的资源增加量
local function GetStaticNationResAreaIncreaseRateByResId(self, resAreaStaticId, resId)
    local staticResAreaInfo = nil
    if resAreaStaticId ~= nil then
        staticResAreaInfo = NationMapInfoData:GetInstance():GetNationalResInfoById(resAreaStaticId)
    end
    local addNum = 0
    if staticResAreaInfo ~= nil then
        for i, v in pairs(staticResAreaInfo.addition) do
            if v.Id == resId then
                addNum = addNum + v.val
            end
        end
    end
    return addNum
end

-- 获取玩家资源区势力值
local function GetUserNationResAreaInfluenceValue(self)
    local val = 0
    for buildingId, serverResArea in pairs(self.sourceAreas) do
        for i, onePos in ipairs(serverResArea.pos) do
            local resAreaStaticId = self:GetResIdByBuildId2ResPos(buildingId, onePos)
            if resAreaStaticId ~= nil then
                local staticResAreaInfo = NationMapInfoData:GetInstance():GetNationalResInfoById(resAreaStaticId)
                if staticResAreaInfo ~= nil then
                    val = val + staticResAreaInfo.Power
                end
            end
        end
    end
    return val
end

-- 获取玩家接战区势力值
local function GetUserNationWarCellInfluenceValue(self)
    if self.warCells == nil then
        return 0
    end
    local val = 0
    for i, v in ipairs(self.warCells) do
        local wallCellStaticData = NationMapInfoData:GetInstance():GetNationalMapById(v)
        if wallCellStaticData ~= nil then
            val = val + wallCellStaticData.Power
        end
    end
    return val
end

--获取玩家的势力值总和
local function GetUserOccupyInfluenceValue(self)
    return self:GetUserNationWarCellInfluenceValue() + self:GetUserNationResAreaInfluenceValue()
end

--todo，没有调用
-- 根据城镇id获取我的资源点数据
local function GetPlayerNationResAreaDataById(self, townId)
    return self.sourceAreas[townId]
end

--todo，没有调用
-- 获取我的资源点数据
local function GetAllPlayerNationResAreaData(self)
    return self.sourceAreas
end

--通过建筑id和资源位置获取资源info（策划配置的数据）
local function GetResIdByBuildId2ResPos(self, buildingId, resPos)
    local buildingAllResPos = self.buildId2ResPos2ResId[buildingId]

    if buildingAllResPos == nil then
        return nil
    end
    return buildingAllResPos[resPos]
end

--[[
    增加一个放弃计时器
    townId 接战区id或者资源区id
    pos 资源点二级id pointid 或者接战区为0
    remainTimer 放弃倒计时时间戳
]]
local function AddAdandonDataBySelf(self, townId, pos, remainTimer)
    local data = self:__CreateAbandonDataBySelf(townId, pos, remainTimer)
    if data == nil then
        return
    end
    local lastData = self.abandonData[data.id]
    if lastData == nil then
        self.abandonData[data.id] = data
    else
        LogicTimerManager:GetInstance():RemoveTimer(lastData.id)
        self.abandonData[data.id] = data
    end
    --Logger.LogErrorVars("AddAdandonDataBySelf 放弃还有时间 : ",data.remainTimer," 当前时间 : ",TimeSyncManager:GetInstance():GetSimulationJavaMS()," 原来时间 : ",remainTimer)
    LogicTimerManager:GetInstance():AddServerTimer(data.id,
            LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR, SyncTimer.MODE_END_TIME, data.remainTimer,
            0, true, self.__UpdateAdandonLogicTimer, { data = data, superSelf = self })
    LogicTimerManager:GetInstance():StartTimer(data.id)
end

--  更新占领放弃计时器
local function __UpdateAdandonLogicTimer(selfTimer, obj)
    --Logger.LogErrorVars(" __UpdateAdandonLogicTimer  111111111111")
    local item = obj.data
    local superSelf = obj.superSelf
    local buildId, pos, cellId
    --Logger.LogErrorVars(" __UpdateAdandonLogicTimer  22222222222222")
    if item.nType == NationOccupyData.ABANDON_BUILDING_TYPE.RESOURCE then
        buildId = item.townId
        pos = item.pos
        cellId = 0
    else
        pos = 0
        local cellInfo, buildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(item.townId)
        buildId = buildInfo.BuildId
        cellId = cellInfo.Id
    end
    --Logger.LogErrorVars(" __UpdateAdandonLogicTimer  333333333333333")
    superSelf:RemoveAdandonDataById(item.id)
    --Logger.LogErrorVars(" __UpdateAdandonLogicTimer  444444444444444")
    NationNetManager:GetInstance():SendAbandonSourceCheckRequest(buildId, pos, cellId, item, Bind(superSelf, superSelf.__SendAbandonSourceCheckCallback))
end

local function __SendAbandonSourceCheckCallback(self, opCode, buildId, pos, cellId, item, result)
    --Logger.LogErrorVars(" __SendAbandonSourceCheckCallback  55555555555555555")
    if opCode ~= 0 then
        return
    end
    --Logger.LogErrorVars(" __SendAbandonSourceCheckCallback    result : ",result)
    local time = tonumber(result)
    if time <= 0 then
        Logger.LogErrorVars("__SendAbandonSourceCheckCallback 放弃成功")
        self:__RemoveResWallCellByAdandonData(item)
    else
        -- 接着启动计时器
        if item.nType == NationOccupyData.ABANDON_BUILDING_TYPE.RESOURCE then
            item.remainTimer = math.modf(time) + self.ResAbandon * 1000
        else
            item.remainTimer = math.modf(time) + self.BattleAbandon * 1000
        end
        Logger.LogErrorVars("__SendAbandonSourceCheckCallback 放弃还有时间 : ", item.remainTimer, " 当前时间 : ", TimeSyncManager:GetInstance():GetSimulationJavaMS())
        local realTime = TimeSyncManager:GetInstance():GetSimulationJavaMS() > item.remainTimer and TimeSyncManager:GetInstance():GetSimulationJavaMS() or item.remainTimer

        LogicTimerManager:GetInstance():AddServerTimer(item.id,
                LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR, SyncTimer.MODE_END_TIME, realTime + NationOccupyData.ABANDON_TIMER_LOGIC_OFFSET_MS,
                0, true, self.__UpdateAdandonLogicTimer, { data = item, superSelf = self })
        LogicTimerManager:GetInstance():StartTimer(item.id)
    end
end

local function __RemoveResWallCellByAdandonData(self, item)
    if item.nType == NationOccupyData.ABANDON_BUILDING_TYPE.RESOURCE then
        local oneSourceArea = self.sourceAreas[item.townId]
        if oneSourceArea == nil then
            return
        end
        if oneSourceArea.pos == nil then
            return
        end
        local count = table.removebyvalue(oneSourceArea.pos, item.pos)
        if count > 0 then
            if table.length(oneSourceArea.pos) <= 0 then
                self.sourceAreas[item.townId] = nil
            end
            Logger.LogVars("__RemoveResWallCellByAdandonData 单个资源放弃成功~", item)
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ONE_RES_AREA_DATA_FLUSH, item.townId)
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ALL_RES_AREA_DATA_FLUSH)
        end
    else
        if self.warCells == nil then
            return
        end
        local count = table.removebyvalue(self.warCells, item.townId)
        if count > 0 then
            --Logger.LogVars("__RemoveResWallCellByAdandonData 地块变更引起数据变化~",table.length(self.warCells))
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_ALL_WAR_CELL_DATA_FLUSH)
        end
    end
end

local function __GenerateAdandonId(townId, pos)
    if pos == nil then
        return NationOccupyData.ABANDON_TIMER_PREFIX_NAME .. townId .. "_WALL"
    else
        return NationOccupyData.ABANDON_TIMER_PREFIX_NAME .. townId .. "_" .. pos
    end
end

local function __GetAdandonBuildingTypeByTownId(townId)
    local cellInfo, buildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(townId)
    local type = nil
    if buildInfo.Type == NationUtil.BUILDING_TYPE_RESOURCE then
        type = NationOccupyData.ABANDON_BUILDING_TYPE.RESOURCE
    elseif buildInfo.Type == NationUtil.BUILDING_TYPE_YU_DU or
            buildInfo.Type == NationUtil.BUILDING_TYPE_WE_DU or
            buildInfo.Type == NationUtil.BUILDING_TYPE_GUAN_AI then
        -- 通过格子id获取格子信息
        if cellInfo == nil then
            -- 获取攻城战建筑信息
        else
            if cellInfo.Type == NationUtil.CELL_TYPE_OUTSIDE or cellInfo.Type == NationUtil.CELL_TYPE_INNER then
                --获取格子信息
                type = NationOccupyData.ABANDON_BUILDING_TYPE.WAL_CELL
            elseif cellInfo.Type == NationUtil.CELL_TYPE_UNUSERD then
                -- 获取攻城战建筑信息
            end
        end
    end
    if type == nil then
        return nil
    end
    return type
end

--创建放弃倒计时数据
local function __CreateAbandonDataBySelf(self, townId, pos, remainTimer)
    local nTownId = math.modf(townId)

    local nType = self.__GetAdandonBuildingTypeByTownId(nTownId)
    if nType == nil then
        return nil
    end

    local data = {}
    data.nType = math.modf(nType)
    data.townId = nTownId
    if nType == NationOccupyData.ABANDON_BUILDING_TYPE.RESOURCE then
        data.pos = math.modf(pos)
        data.id = self.__GenerateAdandonId(data.townId, data.pos)
        data.remainTimer = math.modf(tonumber(remainTimer)) + self.ResAbandon * 1000
    elseif NationOccupyData.ABANDON_BUILDING_TYPE.WAL_CELL then
        data.pos = nil
        data.id = self.__GenerateAdandonId(data.townId, data.pos)
        data.remainTimer = math.modf(tonumber(remainTimer)) + self.BattleAbandon * 1000
    end
    return data
end


--数据层运行逻辑计时器
local function __LogicTimer(self)
    if self.abandonData == nil then
        return
    end
    for i, v in pairs(self.abandonData) do
        LogicTimerManager:GetInstance():AddServerTimer(v.id,
                LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR, SyncTimer.MODE_END_TIME, v.remainTimer,
                0, true, self.__UpdateAdandonLogicTimer, { data = v, superSelf = self })
        LogicTimerManager:GetInstance():StartTimer(v.id)
    end
end

local function RemoveAdandonDataByTownIdAndPos(self, townId, pos)
    local nType = self.__GetAdandonBuildingTypeByTownId(townId)
    if nType == nil then
        return
    end
    local id = self.__GenerateAdandonId(townId, pos)
    self:RemoveAdandonDataById(id)
end

local function RemoveAdandonDataById(self, id)
    if self.abandonData == nil then
        return
    end
    self.abandonData[id] = nil
    LogicTimerManager:GetInstance():RemoveTimer(id)
end

NationOccupyData.__init = __init
NationOccupyData.__delete = __delete

NationOccupyData.GetAllPlayerNationResAreaData = GetAllPlayerNationResAreaData
NationOccupyData.GetPlayerNationResAreaDataById = GetPlayerNationResAreaDataById
NationOccupyData.ParseNationResAreaData = ParseNationResAreaData
NationOccupyData.ParseNationWallCellData = ParseNationWallCellData

NationOccupyData.ParseOneNationResAreaData = ParseOneNationResAreaData
NationOccupyData.UpdateNationResAreaDataByPassivePush = UpdateNationResAreaDataByPassivePush
NationOccupyData.UpdateNationWallCellDataByInitiativePush = UpdateNationWallCellDataByInitiativePush

NationOccupyData.GetResIdByBuildId2ResPos = GetResIdByBuildId2ResPos
NationOccupyData.GetAllPlayerNationResAreaIncreaseAmountByResId = GetAllPlayerNationResAreaIncreaseAmountByResId
NationOccupyData.GetStaticNationResAreaIncreaseRateByResId = GetStaticNationResAreaIncreaseRateByResId
NationOccupyData.GetAllPlayerNationResAreaOccupyNum = GetAllPlayerNationResAreaOccupyNum
NationOccupyData.UpdateNationResAreaDataByInitiativePush = UpdateNationResAreaDataByInitiativePush
NationOccupyData.GetAllPlayerNationOccupyNumAndMax = GetAllPlayerNationOccupyNumAndMax
NationOccupyData.GetAllPlayerNationWarCellOccupyNum = GetAllPlayerNationWarCellOccupyNum
NationOccupyData.GetUserOccupyInfluenceValue = GetUserOccupyInfluenceValue
NationOccupyData.GetUserNationWarCellInfluenceValue = GetUserNationWarCellInfluenceValue
NationOccupyData.GetUserNationResAreaInfluenceValue = GetUserNationResAreaInfluenceValue

NationOccupyData.__CreateAbandonDataBySelf = __CreateAbandonDataBySelf
NationOccupyData.__GenerateAdandonId = __GenerateAdandonId
NationOccupyData.__UpdateAdandonLogicTimer = __UpdateAdandonLogicTimer
NationOccupyData.__LogicTimer = __LogicTimer
NationOccupyData.__GetAdandonBuildingTypeByTownId = __GetAdandonBuildingTypeByTownId

NationOccupyData.AddAdandonDataBySelf = AddAdandonDataBySelf
NationOccupyData.ParseAbandonDataByServer = ParseAbandonDataByServer
NationOccupyData.RemoveAdandonDataById = RemoveAdandonDataById
NationOccupyData.RemoveAdandonDataByTownIdAndPos = RemoveAdandonDataByTownIdAndPos
NationOccupyData.__RemoveResWallCellByAdandonData = __RemoveResWallCellByAdandonData
NationOccupyData.__SendAbandonSourceCheckCallback = __SendAbandonSourceCheckCallback

NationOccupyData.ABANDON_TIMER_PREFIX_NAME = ABANDON_TIMER_PREFIX_NAME
NationOccupyData.ABANDON_BUILDING_TYPE = ABANDON_BUILDING_TYPE
NationOccupyData.ABANDON_TIMER_LOGIC_OFFSET_MS = ABANDON_TIMER_LOGIC_OFFSET_MS

return NationOccupyData