--[[
-- 国战玩家城镇数据
--]]
local NationTownData = BaseClass("NationTownData", UpdatableSingleton)
local NationUtil = require "GameLogic.Nation.NationUtil"

local NationTownItemData = {
    townId = 0, --队伍id 从1开始
    status = 0, --城镇状态 0未激活 1已激活
    levelIds = {}, -- 如果在未激活状态下的已攻打关卡id
    armyReserve = 0, --服务器下发储备军
    maxArmyReserve = 0, --最大储备军
    armyReserveLastTime = 0, --时间,
    calcArmyReserve = 0, -- 用于计算的储备军逻辑数值
}

--local NationTeamItem = DataClass("NationTeamItem", NationTeamItemData)
local NationTownItemData = BaseClass("NationTownItem", NationTownItemData)
-- 前置计时器名称
local ARMY_RESERVE_TIMER_PREFIX_NAME = "NATION_TOWN_ARMY_RESERVE_"

local function __init(self)
    self.townServerData = nil
    self.isInitData = false -- 是否数据已经获得过

    --当前屏幕内，玩家已占领的接战区地块数据
    self.warCellData = {}
    --联盟内所有玩家已经占领的接战区地块数据(不包含自己的)
    self.unionWarCellData = {}
    --攻城战建筑，最内圈的接战区列表
    self.siegeBuildWarCellData = {}
    self:InitSiegeBuildWarCellData()

    --城镇守军回复列表
    self.townDefRecoverData = nil

    self.isInitDefRecoverData = false -- 是否城镇守军数据已经获得过

    local GlobalData = DataUtil.GetData("global")
    for i, v in pairs(GlobalData) do
        if v.Key == "ReserveForceSpdSec" then
            self.armyReserveSpdSec = v.valueN
        elseif v.Key == "ReserveForceNum" then
            self.armyReserveSpdNum = v.valueN
        end
    end

end

local function __delete(self)
    self:__DeleteTimers()
    self.townServerData = nil
    self.isInitData = false
    self.townDefRecoverData = nil

    self.isInitDefRecoverData = false
    self.warCellData = {}
    self.unionWarCellData = {}
end



local function Update(self)
    if not self.isInitDefRecoverData then
        return
    end

    if self.townDefRecoverData == nil then
        return
    end

    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    local index = 1
    local removeList = {}

    local townDefRecoverIds = table.keys(self.townDefRecoverData)
    local len = table.length(townDefRecoverIds)
    while index <= len do
        local currentId = townDefRecoverIds[index]
        if currentId ~= nil then
            local defRecoverData = self.townDefRecoverData[townDefRecoverIds[index]]
            if defRecoverData ~= nil then
                if currentTime >= defRecoverData.endTime then
                    self:RemoveDefRecoverByDefRecoverId(defRecoverData.defRecoverId)
                    table.insert(removeList,defRecoverData)
                end
                index = index + 1
            else
                index = index + 1
            end
        else
            index = index + 1
        end
    end

    if table.length(removeList) >= 1 then
        -- 更新数据 -- 发送创建的通知
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_DEF_RECOVER_LIST_REMOVE,removeList)
    end
end

local function RemoveDefRecoverByDefRecoverId(self,defRecoverId)
    self.townDefRecoverData[defRecoverId] = nil
end


local function InitSiegeBuildWarCellData(self)
    for _, v in pairs(NationMapInfoData:GetInstance().national_battleZone) do
        if self.siegeBuildWarCellData[v.BuildId] == nil then
            self.siegeBuildWarCellData[v.BuildId] = {}
        end
        if v.Type == NationUtil.CELL_TYPE_INNER and v.Circles == 1 then
            table.insert(self.siegeBuildWarCellData[v.BuildId], v.Id)
        end
    end
end

local function UpdateOneTownDataByServerData(self, data, hasEvent)

    if data == nil then
        return
    end

    if self.townServerData == nil then
        self.townServerData = {}
    end

    local item = self.townServerData[data.townId]
    local isCreate = false -- 是否创建
    if item == nil then
        item = NationTownItemData.New()
        isCreate = true
    end

    item.townId = math.modf(data.townId)
    item.staticBuildingData = NationMapInfoData:GetInstance():GetNationalMapById(item.townId)
    item.status = math.modf(data.status)
    item.levelIds = {}
    for __, c in ipairs(data.levelIds) do
        item.levelIds[__] = math.modf(c)
    end
    item.armyReserve = math.modf(data.armyReserve)
    item.maxArmyReserve = self:GetNationTownReserveMaxById(item.townId)
    item.calcArmyReserve = item.armyReserve
    item.armyReserveLastTime = math.modf(data.armyReserveLastTime)
    if isCreate then
        self.townServerData[item.townId] = item
    end
    if hasEvent then
        if self:__CheckNationTownNeedTimer(item.townId) then
            LogicTimerManager:GetInstance():AddServerTimer(NationTownData.ARMY_RESERVE_TIMER_PREFIX_NAME .. item.townId,
                    LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR, SyncTimer.MODE_STEP, item.armyReserveLastTime,
                    self:GetNationTownReserveForceSpdMS(item.townId), false, self.__UpdateArmyTimer, { data = item, superSelf = self })
        else
            LogicTimerManager:GetInstance():RemoveTimer(NationTownData.ARMY_RESERVE_TIMER_PREFIX_NAME .. item.townId)
        end
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_TOWN_DATA_FLUSH, item.townId)
    end
end

-- 获取某个城镇数据
local function GetNationTownDataById(self, townId)
    return self.townServerData[townId]
end

-- 获取某个城镇守军回复数据
local function GetNationDefRecoverDataByTownId(self, townId)
    local tempList = {}
    if not self.isInitDefRecoverData then
        return tempList
    end
    if self.townDefRecoverData == nil then
        return tempList
    end

    for i, v in pairs(self.townDefRecoverData) do
        if v.townId == townId then
            table.insert(tempList,v)
        end
    end
    return tempList
end


-- 获取某个城镇守军回复数据
local function CopyAllNationDefRecoverData(self)
    local tempList = {}
    if not self.isInitDefRecoverData then
        return tempList
    end
    if self.townDefRecoverData == nil then
        return tempList
    end

    for i, v in pairs(self.townDefRecoverData) do
        table.insert(tempList,NationTownData:GetInstance().CopyNationDefRecoverData(v,true))
    end
    return tempList
end

-- 解析队伍数据
local function GetAllNationTownDatas(self)
    return self.townServerData
end

--[[
     根据时间获取城镇储备兵
]]
local function GetNationTownArmyReserveByTime(self, townId, currentTime)
    local data = self:GetNationTownDataById(townId)
    if data == nil then
        return 0
    end

    if currentTime == nil then
        currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    end

    local maxVal = self:GetNationTownReserveMaxById(townId)
    local remindTime = currentTime - data.armyReserveLastTime --经过时间
    if remindTime < 0 then
        remindTime = 0
    end
    local spdMS = self:GetNationTownReserveForceSpdMS(townId)
    local addRate = nil -- 增长频度
    local incRate = nil -- 增长量
    local nowVal = nil -- 当前值
    local finalVal = nil -- 最终值
    local sourceVal = data.armyReserve -- 原始值
    incRate = self.armyReserveSpdNum
    addRate = math.modf(remindTime / spdMS)
    nowVal = addRate * incRate + sourceVal
    if nowVal > maxVal then
        finalVal = maxVal
    else
        finalVal = nowVal
    end
    return finalVal, maxVal
end

--检测是否需要计时器
local function __CheckNationTownNeedTimer(self, townId)
    local townData = self:GetNationTownDataById(townId)
    if townData == nil then
        return
    end
    townData.calcArmyReserve = math.modf(self:GetNationTownArmyReserveByTime(townId))
    if townData.status == NationDefine.NATION_TOWN_STATUS.ACTIVE and townData.calcArmyReserve < townData.maxArmyReserve then
        return true
    else
        return false
    end
end

--[[
  检测城镇储备里自增长计时器
]]
local function __RunAllArmyReserveTimer(self)
    if self.townServerData == nil then
        return
    end

    for k, v in pairs(self.townServerData) do
        if self:__CheckNationTownNeedTimer(v.townId) then
            LogicTimerManager:GetInstance():AddServerTimer(NationTownData.ARMY_RESERVE_TIMER_PREFIX_NAME .. v.townId,
                    LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR, SyncTimer.MODE_STEP, v.armyReserveLastTime,
                    self:GetNationTownReserveForceSpdMS(v.townId), false, self.__UpdateArmyTimer, { data = v, superSelf = self })
            LogicTimerManager:GetInstance():StartTimer(NationTownData.ARMY_RESERVE_TIMER_PREFIX_NAME .. v.townId)
        else
            LogicTimerManager:GetInstance():RemoveTimer(NationTownData.ARMY_RESERVE_TIMER_PREFIX_NAME .. v.townId)
        end
        --self.armyTimers[v.townId] = SyncTimer.New(SyncTimer.MODE_STEP, v.armyReserveLastTime,
        --        self.armyReserveSpdSec * 1000, false, self.__UpdateArmyTimer,{data = v,superSelf = self})
        --self.armyTimers[v.townId]:Start()
    end
end


--[[
  检测城镇储备里自增长计时器
]]
local function __DeleteTimers(self)
    if self.townServerData == nil then
        return
    end

    for k, v in pairs(self.townServerData) do
        LogicTimerManager:GetInstance():RemoveTimer(NationTownData.ARMY_RESERVE_TIMER_PREFIX_NAME .. v.townId)
    end
end

--[[
  更新储备数量计时器
]]
local function __UpdateArmyTimer(selfTimer, obj)
    local data = obj.data
    local superSelf = obj.superSelf
    local maxVal = data.maxArmyReserve
    local incRate = superSelf.armyReserveSpdNum
    --Logger.LogVars(" __UpdateArmyTimer         data .... : ",data, " maxVal : ",maxVal, "incRate",incRate)
    data.calcArmyReserve = superSelf:GetNationTownArmyReserveByTime(data.townId)
    if data.calcArmyReserve > maxVal then
        data.calcArmyReserve = maxVal
        LogicTimerManager:GetInstance():RemoveTimer(NationTownData.ARMY_RESERVE_TIMER_PREFIX_NAME .. data.townId)
    end
    -- 通知界面刷新
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_TOWN_DATA_FLUSH, data.townId)
    --储备力变化通知数量变化
end

-- 判断城镇是否激活，所有的类型，（包括资源区，讨伐区，卫都，关隘等）
local function IsNationTownDataActiveById(self, townId)
    local townData = self:GetNationTownDataById(townId)
    if townData == nil then
        return false
    end
    if townData.status ~= NationDefine.NATION_TOWN_STATUS.ACTIVE then
        return false
    end
    return true
end

-- 解析城镇数据
local function ParseNationTownData(self, data)
    if data == nil then
        return
    end

    if self.townServerData == nil then
        self.townServerData = {}
    end

    for n, c in ipairs(data.nation_role_town) do
        self:UpdateOneTownDataByServerData(c, false)
    end

    self.isInitData = true
end

--获取行军路线主键
local function GetDefRecoverId(townId,pos,modf)
    if modf then
        townId = math.modf(townId)
    end
    if modf then
        pos = math.modf(pos)
    end

    return string.format("%s:%s",townId,pos)
end

-- 增加一个城镇系统守军恢复数据
local function AddNationTownDefRecoverData(self,townId,pos, endTime)

    if not self.isInitDefRecoverData then
        return
    end

    if self.townDefRecoverData == nil then
        return
    end

    townId = math.modf(townId)
    pos = math.modf(pos)
    endTime = math.modf(endTime)

    local defRecoverId = NationTownData:GetInstance().GetDefRecoverId(townId,pos)
    if endTime <= 0 then
        --remove
        local item = self.townDefRecoverData[defRecoverId]
        if item ~= nil then
            item.endTime = 0
        end
        return
    end

    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    if endTime <= currentTime then
        local item = self.townDefRecoverData[defRecoverId]
        if item ~= nil then
            item.endTime = 0
        end
        return
    end

    local item = self.townDefRecoverData[defRecoverId]
    local isCreate = false
    if item ~= nil then
    else
        item = {}
        isCreate = true
    end
    item.townId = townId
    item.pos = pos
    item.defRecoverId = defRecoverId
    item.endTime = endTime
    if isCreate then
        self.townDefRecoverData[defRecoverId] = item
    end
    --Logger.LogErrorVars(" self.townDefRecoverData ",self.townDefRecoverData)
    local addList = {}
    table.insert(addList,item)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_DEF_RECOVER_LIST_ADD, addList)
end


local function TestAddNationTownDefRecoverData(self)
    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    local ranX = math.random(1, 3)
    local randomTime = math.random(1, 2)
    local time = 0
    if randomTime == 1 then
        time = currentTime + 1000
    else
        time = 0
    end
    Logger.LogVars(" 1090075 ",ranX," time ",time)
    self:AddNationTownDefRecoverData(1090075,ranX,time)
end

-- 解析城镇系统守军恢复数据
local function ParseNationTownDefRecoverData(self, data)

    self.townDefRecoverData = {}

    if data == nil or data._is_null then
        self.isInitDefRecoverData = true
        return
    end

    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    for i, v in ipairs(data) do
        local townId = math.modf(v.townId)
        local pos =math.modf(v.pos)
        local endTime = math.modf(v.endTime)
        local defRecoverId = NationTownData:GetInstance().GetDefRecoverId(townId,pos)
        local item = self.townDefRecoverData[defRecoverId]
        if endTime > currentTime then
            local isCreate = false
            if item == nil then
                isCreate = true
                item = {}
            end
            item.defRecoverId = defRecoverId
            item.endTime = endTime
            item.townId = townId
            item.pos = pos
            self.townDefRecoverData[defRecoverId] = item
        end
    end
    self.isInitDefRecoverData = true
end


--复制一份对象
local function CopyNationDefRecoverData(data,isModf)

    local item = {}
    local townId = isModf and math.modf(data.townId) or data.townId
    local pos = isModf and math.modf(data.pos) or data.pos
    local defRecoverId = NationTownData:GetInstance().GetDefRecoverId(townId,pos)
    item.defRecoverId = defRecoverId
    item.townId = townId
    item.pos = pos
    item.endTime = isModf and math.modf(data.endTime) or data.endTime

    return item
end

--获取城镇最大储备军力
local function GetNationTownReserveMaxById(self, townId)
    local reserveForce = NationMapInfoData:GetInstance():GetNationalMapReserveForceById(townId)
    local add = 0
    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.MAX_FORCE)
    local val = math.modf(reserveForce + add)
    return val
end

-- 获取玩家势力值
local function GetUserNationTownInfluenceValue(self)
    local towns = self:GetAllNationTownDatas()
    local val = 0
    for i, v in pairs(towns) do
        if v.status == NationDefine.NATION_TOWN_STATUS.ACTIVE then
            val = val + v.staticBuildingData.Power
        end
    end
    return val
end

--获取城镇储备军力回复速率（秒）
local function GetNationTownReserveForceSpdMS(self, townId)
    local val = self.armyReserveSpdSec

    local add = 0
    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.RESERVE_RECOVER)

    --军团加成
    local teamDatas = NationTeamData:GetInstance():GetAllNationTeamDataByCurrentMapId(townId)
    if teamDatas ~= nil then
        for i, v in ipairs(teamDatas) do
            add = add + NationTeamData:GetInstance():GetMyNationTeamEffectAddByType(
                    v, NationDefine.NATION_TECH_TYPE.RESERVE_RECOVER)
        end
    end

    val = val / (1 + add) * 1000
    val = math.modf(val)
    return val
end


--更新城镇储备(是否激活城镇)
local function ParseNationTownArmyReserveWithPush(self, data)
    if data == nil or data._is_null then
        return
    end

    for j, b in ipairs(data) do
        local townData = self:GetNationTownDataById(b.townId)
        local isCreate = false -- 是否创建
        local isActive = false  -- 城镇是否激活事件
        if townData == nil then
            townData = NationTownItemData.New()
            townData.townId = b.townId
            townData.staticBuildingData = NationMapInfoData:GetInstance():GetNationalMapById(townData.townId)
            isCreate = true
        end
        townData.maxArmyReserve = self:GetNationTownReserveMaxById(townData.townId)
        townData.armyReserve = math.modf(b.reserve)
        townData.armyReserveLastTime = math.modf(b.lastTime)
        townData.calcArmyReserve = townData.armyReserve
        if isCreate then
            townData.status = math.modf(b.status)
            if townData.status == NationDefine.NATION_TOWN_STATUS.ACTIVE then
                isActive = true
            end
        else
            local lastStatus = townData.status
            townData.status = math.modf(b.status)
            if lastStatus ~= townData.status and townData.status == NationDefine.NATION_TOWN_STATUS.ACTIVE then
                isActive = true
            end
        end

        --Logger.Log("同步的城镇status:"..b.status)
        townData.levelIds = {}
        for __, c in ipairs(b.levelIds) do
            townData.levelIds[__] = math.modf(c)
            --Logger.LogError("同步的城镇levelIds"..c)
        end

        if isCreate then
            self.townServerData[townData.townId] = townData
        end

        if self:__CheckNationTownNeedTimer(townData.townId) then
            LogicTimerManager:GetInstance():AddServerTimer(NationTownData.ARMY_RESERVE_TIMER_PREFIX_NAME .. townData.townId,
                    LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR, SyncTimer.MODE_STEP, townData.armyReserveLastTime,
                    self:GetNationTownReserveForceSpdMS(townData.townId), false, self.__UpdateArmyTimer, { data = townData, superSelf = self })
            LogicTimerManager:GetInstance():StartTimer(NationTownData.ARMY_RESERVE_TIMER_PREFIX_NAME .. townData.townId)
        else
            LogicTimerManager:GetInstance():RemoveTimer(NationTownData.ARMY_RESERVE_TIMER_PREFIX_NAME .. townData.townId)
        end

        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_TOWN_DATA_FLUSH, townData.townId)

        if isActive then
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_TOWN_DATA_ACTIVE, townData.townId)
        end
    end
end

--数据层运行逻辑计时器
local function __LogicTimer(self)
    if not self.isInitData then
        return
    end
    self:__RunAllArmyReserveTimer()
end

local function UpdatePlayerOccupyWarCellData(self, warCellList, unionWarCellList)
    self.warCellData = warCellList
    self.unionWarCellData = unionWarCellList
end

local function CanAttackWarCellByWarCellID(self, warCellID)
    local cellInfo = NationMapInfoData:GetInstance().national_battleZone[warCellID]
    if cellInfo.Type == NationUtil.CELL_TYPE_OUTSIDE then
        return NationUtil.CheckCanAttackByBuildID(cellInfo.BuildId, true)
    end

    if self.warCellData[warCellID] ~= nil or self.unionWarCellData[warCellID] ~= nil then
        return true
    end

    local function CheckCanAttackPoint(self, posX, posY)
        local cellID = NationUtil.GetCellId(posX, posY)
        return self.warCellData[cellID] or self.unionWarCellData[cellID]
    end

    local posX, posY = NationUtil.GetXYByCellId(warCellID)
    local tempStr = CheckCanAttackPoint(self, posX + 1, posY)
    if tempStr ~= nil then
        return true
    end
    local tempStr = CheckCanAttackPoint(self, posX + 1, posY + 1)
    if tempStr ~= nil then
        return true
    end
    local tempStr = CheckCanAttackPoint(self, posX + 1, posY - 1)
    if tempStr ~= nil then
        return true
    end
    local tempStr = CheckCanAttackPoint(self, posX, posY + 1)
    if tempStr ~= nil then
        return true
    end
    local tempStr = CheckCanAttackPoint(self, posX, posY - 1)
    if tempStr ~= nil then
        return true
    end
    local tempStr = CheckCanAttackPoint(self, posX - 1, posY)
    if tempStr ~= nil then
        return true
    end
    local tempStr = CheckCanAttackPoint(self, posX - 1, posY - 1)
    if tempStr ~= nil then
        return true
    end
    local tempStr = CheckCanAttackPoint(self, posX - 1, posY + 1)
    if tempStr ~= nil then
        return true
    end

    return false
end

NationTownData.__init = __init
NationTownData.__delete = __delete
NationTownData.Update = Update

NationTownData.InitSiegeBuildWarCellData = InitSiegeBuildWarCellData
NationTownData.UpdateOneTownDataByServerData = UpdateOneTownDataByServerData
NationTownData.ParseNationTownData = ParseNationTownData
NationTownData.GetNationTownDataById = GetNationTownDataById
NationTownData.IsNationTownDataActiveById = IsNationTownDataActiveById
NationTownData.GetNationTownArmyReserveByTime = GetNationTownArmyReserveByTime
NationTownData.ParseNationTownArmyReserveWithPush = ParseNationTownArmyReserveWithPush
NationTownData.GetAllNationTownDatas = GetAllNationTownDatas
NationTownData.GetNationTownReserveMaxById = GetNationTownReserveMaxById
NationTownData.GetNationTownReserveForceSpdMS = GetNationTownReserveForceSpdMS
NationTownData.GetUserNationTownInfluenceValue = GetUserNationTownInfluenceValue
NationTownData.UpdatePlayerOccupyWarCellData = UpdatePlayerOccupyWarCellData
NationTownData.CanAttackWarCellByWarCellID = CanAttackWarCellByWarCellID
NationTownData.ParseNationTownDefRecoverData = ParseNationTownDefRecoverData
NationTownData.GetNationDefRecoverDataByTownId = GetNationDefRecoverDataByTownId
NationTownData.RemoveDefRecoverByDefRecoverId = RemoveDefRecoverByDefRecoverId
NationTownData.GetDefRecoverId = GetDefRecoverId
NationTownData.AddNationTownDefRecoverData = AddNationTownDefRecoverData
NationTownData.CopyNationDefRecoverData = CopyNationDefRecoverData
NationTownData.CopyAllNationDefRecoverData = CopyAllNationDefRecoverData

NationTownData.__LogicTimer = __LogicTimer
NationTownData.__RunAllArmyReserveTimer = __RunAllArmyReserveTimer
NationTownData.__UpdateArmyTimer = __UpdateArmyTimer
NationTownData.__DeleteTimers = __DeleteTimers
NationTownData.__CheckNationTownNeedTimer = __CheckNationTownNeedTimer

NationTownData.TestAddNationTownDefRecoverData = TestAddNationTownDefRecoverData

NationTownData.ARMY_RESERVE_TIMER_PREFIX_NAME = ARMY_RESERVE_TIMER_PREFIX_NAME

return NationTownData