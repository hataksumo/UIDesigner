--[[
-- 国战玩家行军线数据
--]]
local NationMarchData = BaseClass("NationMarchData", UpdatableSingleton)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function __init(self)
    self.marchTableDatas = nil
    self.marchIds = nil --只是缓存而已
    self.isInitData = false -- 是否数据已经获得过
    --local GlobalData = DataUtil.GetData("global")
    --for i, v in pairs(GlobalData) do
    --    if v.Key == "ReserveForceSpdSec" then
    --        self.armyReserveSpdSec = v.valueN
    --    elseif v.Key == "ReserveForceNum" then
    --        self.armyReserveSpdNum=v.valueN
    --    end
    --end
end

local function Update(self)
    if not self.isInitData then
        return
    end
    if self.marchIds == nil then
        return
    end
    --local counter = 0 -- 运行计数器
    local currentSimulationJavaMS = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    --local index = 0
    local index = 1
    local removeList = {}
    while index <= table.length(self.marchIds) do
        local marchData = self:GetNationMarchDataById(self.marchIds[index])
        if currentSimulationJavaMS >= marchData.endTime then
            -- 需要移除
            self:RemoveDataByMarchIdAndIndex(self.marchIds[index],index)
            -- 通知移除
            table.insert(removeList,marchData)
        else
            index = index + 1
        end
    end

    if table.length(removeList) >= 1 then
        -- 更新数据 -- 发送创建的通知
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_MARCH_LIST_REMOVE,removeList)
    end
end

--移除一个队伍数据
local function DoNationMarchRemoveByData(self,uid,teamId)
    local marchId = NationMarchData:GetInstance().GetMarchId(teamId,uid,true)
    local marchData = self:RemoveDataByMarchId(marchId)
    if marchData == nil then
        return
    end

    local removeList = {}
    table.insert(removeList,marchData)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_MARCH_LIST_REMOVE,removeList)
end


local function __delete(self)
    self:CleanUpData()
end


local function RemoveDataByMarchId(self,marchId)
    if self.marchTableDatas == nil then
        return
    end
   local marchData = self.marchTableDatas[marchId]
    if marchData == nil then
        return nil
    end
    self.marchTableDatas[marchId] = nil
    table.removebyvalue(self.marchIds,marchData)
    return marchData
end

local function RemoveDataByMarchIdAndIndex(self,marchId,index)
    self.marchTableDatas[marchId] = nil
    table.remove(self.marchIds,index)
end

--获取行军路线主键
local function GetMarchId(teamId,uid,modf)

    if modf then
        uid = math.modf(uid)
    end

    if modf then
        teamId = math.modf(teamId)
    end
    return string.format("%s:%s",uid,teamId)
end

local function UpdateOneMarchData(self,data,hasEvent)

    if data == nil or data._is_null then
        return nil
    end

    if self.marchTableDatas == nil then
        self.marchTableDatas = {}
    end
    if self.marchIds == nil then
        self.marchIds = {}
    end

    local endTime = math.modf(data.endTime)
    local currentSimulationJavaMS = TimeSyncManager:GetInstance():GetSimulationJavaMS()

    if currentSimulationJavaMS >= endTime then
        --Logger.LogVars(" UpdateOneMarchData    22222  endTime :  ",endTime , " currentSimulationJavaMS : ",currentSimulationJavaMS)
        return nil
    end


    local teamId = math.modf(data.teamId)
    local uid = math.modf(data.uid)


    --if uid == UserData:GetInstance().roleID then -- 自己的线忽略掉
    --    return nil
    --end
    local marchId = self.GetMarchId(teamId,uid)
    local item = self:GetNationMarchDataById(marchId)

    local isCreate = false -- 是否创建
    if item == nil then
        item = {}
        isCreate = true
    end
    item.marchId = marchId
    item.uid = uid
    item.teamId = teamId
    item.state = math.modf(data.state)
    --optional int32 state = 11;// 1：移动 3：返回
    if item.state == 3 then
        item.startPos = math.modf(data.targetPos)  --startMapID
        item.targetPos = math.modf(data.startPos) -- targetMapID
    else
        item.startPos = math.modf(data.startPos)  --startMapID
        item.targetPos = math.modf(data.targetPos) -- targetMapID
    end
    item.startTime = math.modf(data.startTime)
    item.endTime = endTime
    item.name = data.name
    if data.head ~= nil then
        item.head = math.modf(data.head)
    end
    if data.headIconFrameId ~= nil then
        item.headIconFrameId = math.modf(data.headIconFrameId)
    end

    item.unionId = math.modf(data.unionId)
    item.unionName = data.unionName
    item.cardId = math.modf(data.cardId)

    if isCreate then
        table.insert(self.marchIds,marchId)
        self.marchTableDatas[marchId] = item
    end

    if hasEvent then
        --if self:__CheckNationTownNeedTimer(item.townId) then
        --    LogicTimerManager:GetInstance():AddServerTimer(NationMarchData.ARMY_RESERVE_TIMER_PREFIX_NAME..item.townId,
        --            LogicTimerManager.LOGIC_TYPE.NATION_SCENE_CLEAR,SyncTimer.MODE_STEP, item.armyReserveLastTime,
        --            math.modf( self:GetNationTownReserveForceSpdMS(item.townId) * 1000), false, self.__UpdateArmyTimer,{data = item,superSelf = self})
        --else
        --    LogicTimerManager:GetInstance():RemoveTimer(NationMarchData.ARMY_RESERVE_TIMER_PREFIX_NAME..item.townId)
        --end
        --DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_USER_TOWN_DATA_FLUSH,item.townId)
    end
    return item
end

--复制一份对象
local function CopyNationMarchData(data,isModf)

    local item = {}
    local teamId = isModf and math.modf(data.teamId) or data.teamId
    local uid = isModf and math.modf(data.uid) or data.uid
    local marchId = NationMarchData:GetInstance().GetMarchId(teamId,uid)
    item.marchId = marchId
    item.uid = uid
    item.teamId = teamId
    item.startPos = isModf and math.modf(data.startPos) or data.startPos
    item.targetPos = isModf and math.modf(data.targetPos) or data.targetPos
    item.startTime = isModf and  math.modf(data.startTime)  or data.startTime
    item.endTime =  isModf and  math.modf(data.endTime)  or data.endTime
    item.name = data.name
    item.head = isModf and  math.modf(data.head)  or data.head

    if data.headIconFrameId ~= nil then
        item.headIconFrameId = isModf and  math.modf(data.headIconFrameId)  or data.headIconFrameId
    end

    item.state = isModf and math.modf(data.state)  or data.state

    item.unionId =  isModf and math.modf(data.unionId)  or data.unionId
    item.unionName = data.unionName
    item.cardId =  isModf and math.modf(data.cardId)  or data.cardId
    item.state = isModf and math.modf(data.state)  or data.state
    item.battleResult = isModf and math.modf(data.battleResult)  or data.battleResult



    return item
end

-- 获取某个行军路线数据
local function GetNationMarchDataById(self,marchId)
    return  self.marchTableDatas[marchId]
end


-- 获取行军路线数据
local function GetAllNationMarchTableDatas(self)
    return  self.marchTableDatas
end


local function CleanUpData(self,hasEvent)
    self.marchTableDatas = nil
    self.marchIds = nil --只是缓存而已
    self.isInitData = false
end


--进入更新数据
local function EnterGetMarchDataList(self,data,hasEvent)
    --Logger.LogErrorVars("EnterGetMarchDataList  data : ",data)
    local realDatas = nil
    if data == nil or data._is_null then
        realDatas = {}
    else
        realDatas = data
    end
    self:CleanUpData(self)
    self.marchTableDatas = {}
    self.marchIds = {}

    local addList = {}
    for n, c in ipairs(realDatas) do
        local item = self:UpdateOneMarchData(c,false)
        if item ~= nil then
            table.insert(addList,item)
        end
    end

    if table.length(addList) >= 1 then
        -- 更新数据 -- 发送创建的通知
        if hasEvent then
            --Logger.LogErrorVars("EnterGetMarchDataList  addList : ",addList)
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_MARCH_LIST_ADD,addList)
        end
    end
    self.isInitData = true
end

--进入更新数据
local function TestAddOneMarch(self)
    --uid: 104369.0
    --teamId: 1.0
    --startPos: 150016.0
    --targetPos: 200020.0
    --startTime: 1565080464232
    --endTime: 1565080538232
    --name: 镇魂将4369
    --unionId: 0.0
    --unionName:
    --cardId: 1101002.0
    --state: 1.0
    local item = {}
    local teamId =math.modf(math.random(1,100))
    --local teamId =math.modf(1)
    --local uid = 103566 -- 我的 uid
    local uid = 104369
    local marchId = self.GetMarchId(teamId,uid)
    item.marchId = marchId
    item.uid = uid
    item.teamId = teamId
    local ranX = 0
    local ranY = 0

    ranX = math.random(0, 100)
    ranY = math.random(0, 100)
    --490063
    --ranX = 49
    --ranY = 63
    item.startPos = NationUtil.GetCellId(ranX,ranY)
    ranX = math.random(0, 100)
    ranY = math.random(0, 100)
    --560056
    --ranX = 56
    --ranY = 56
    item.targetPos = NationUtil.GetCellId(ranX,ranY)

    item.startTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    item.endTime = TimeSyncManager:GetInstance():GetSimulationJavaMS() + 30000
    item.name = "镇魂将4369"
    item.head = 3000000
    item.headIconFrameId = 0
    item.unionId =  0
    item.unionName = "攻城战"
    item.cardId =  1101002
    item.state = 1
    local data =  self.CopyNationMarchData(item,true)
    Logger.LogErrorVars("TestAddOneMarch teamId: ",teamId)
    local datas = {}
    table.insert(datas,data)
    self:UpdateMarchDataList(datas,true)
end


-- 每次更新数据
local function UpdateMarchDataList(self,data,hasEvent)

    if data == nil or data._is_null then
        Logger.LogVars("UpdateMarchDataList data is null")
        return
    end
    local addList = {}

    for n, c in ipairs(data) do
        local item = self:UpdateOneMarchData(c,false)
        if item ~= nil then
            table.insert(addList,item)
        end
    end
    if table.length(addList) >= 1 then
        --Logger.LogErrorVars("UpdateMarchDataList addList ",addList)
        -- 更新数据 -- 发送创建的通知
        if hasEvent then
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_MARCH_LIST_ADD,addList)
        end
    end
end


--数据层运行逻辑计时器
local function __ShowAllOtherMarch(self)

    if not self.isInitData then
        return
    end
    if self.marchTableDatas == nil then
        return
    end
    local addList = {}
    for n, c in pairs(self.marchTableDatas) do
        table.insert(addList,c)
    end
    if table.length(addList) >= 1 then
        Logger.LogErrorVars("__ShowAllOtherMarch addList ",addList)
        -- 更新数据 -- 发送创建的通知
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_MARCH_LIST_ADD,addList)
    end
end



NationMarchData.__init = __init
NationMarchData.__delete = __delete
NationMarchData.Update = Update

NationMarchData.GetNationMarchDataById = GetNationMarchDataById
NationMarchData.GetAllNationMarchTableDatas = GetAllNationMarchTableDatas
NationMarchData.GetMarchId = GetMarchId
NationMarchData.RemoveDataByMarchIdAndIndex = RemoveDataByMarchIdAndIndex
NationMarchData.RemoveDataByMarchId = RemoveDataByMarchId
NationMarchData.CopyNationMarchData = CopyNationMarchData
NationMarchData.UpdateOneMarchData = UpdateOneMarchData
NationMarchData.UpdateMarchDataList = UpdateMarchDataList
NationMarchData.CleanUpData = CleanUpData
NationMarchData.EnterGetMarchDataList = EnterGetMarchDataList
NationMarchData.TestAddOneMarch = TestAddOneMarch
NationMarchData.DoNationMarchRemoveByData = DoNationMarchRemoveByData
NationMarchData.__ShowAllOtherMarch = __ShowAllOtherMarch

return NationMarchData