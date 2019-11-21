--[[
--
-- 国战队伍数据
--]]
local NationTeamData = BaseClass("NationTeamData", Singleton)
local NationUtil = require "GameLogic.Nation.NationUtil"

local NationTeamItemData = {
    marchId = 0, -- 玩家id + 队伍id 总id
    uid = 0, --玩家id 其实是玩家本身(这个不是服务器下发)
    teamId = 0, --队伍id 从1开始
    armyGroupId = 0, --军团阵法ID

    currentBehavior = {}, --当前行为
    --teamCards = { {}, {} }, --队伍卡牌
    teamCardTables = {}, -- 新队伍列表 1 2 3 守护灵 4 5 6 寄灵人
    IsTeamCardsEmpty = function(self)
        if self.teamCardTables == nil then
            return true
        end
        for _, v in pairs(self.teamCardTables) do
            if v ~= 0 then
                return false
            end
        end
        return true
    end
}

local NationTeamBehaviorData = {
    type = 0, --行为类型( 0待命 1移动 2出征 3驻守 4撤退 5剿匪 6 资源区 7 讨伐区)
    state = 0, --行为状态（1去 2打 3回）
    startTime = 0, --行为开始时间
    endTime = 0, --行为结束时间

    startMapID = 0, --队伍起始的城镇（城镇ID）
    targetMapID = 0, --队伍目标的城镇 （普通行为的目标地块ID）
    secondMapID = 0, --队伍目标的二级坐标（接战区的地块ID，资源区的资源点位置ID，讨伐区的怪点所在的大区（分页）ID）
    thirdMapID = 0, --队伍目标的三级坐标（讨伐区的怪点位置ID）
}

--local NationTeamItemDataModel = DataClass("NationTeamItemDataModel", NationTeamItemData)
--local NationTeamBehaviorDataModel = DataClass("NationTeamBehaviorDataModel", NationTeamBehaviorData)

local function __init(self)

    self.myNationTeamTable = nil -- 字典
    self.unlock_army_group = nil

    local GlobalData = DataUtil.GetData("global")
    for i, v in pairs(GlobalData) do
        if v.Key == "InitialCorpsNum" then
            self.InitialCorpsNum = v.valueN
        elseif v.Key == "InitialCorps" then
            self.InitialCorps = v.valueN
        end
    end

    self.teamTweenList = {}
end

local function __delete(self)
    self.unlock_army_group = nil
    self.myNationTeamTable = nil -- 字典
    self.teamTweenList = {}
end

--释放资源
local function __Dispose(self)
    self.unlock_army_group = nil
    self.myNationTeamTable = nil -- 字典
    self.teamTweenList = {}
end


-----------------------------------------------------------------------------------------------------
-------------------------------------------队伍数据接口Func--------------------------------------------
------------------------------------------------------------------------------------------------------

-- 获取所有队伍数据列表
local function GetAllNationTeamDataList(self)
    local teamTables = self:GetAllNationTeamDataDict()
    if teamTables == nil then
        return {}
    end
    local arr = {}

    for k, v in pairs(teamTables) do
        table.insert(arr, v)
    end

    table.sort(arr, function(a, b)
        return a.teamId < b.teamId
    end)
    return arr
end

-- 获取所有队伍字典数据
local function GetAllNationTeamDataDict(self)
    return self.myNationTeamTable
end

--判断所有的队伍是否全是空
local function DoseAllTeamCardsEmpty(self)
    local bool = true
    for _, v in pairs(self.myNationTeamTable) do
        if not v:IsTeamCardsEmpty() then
            bool = false
            break
        end
    end
    return bool
end

--[[
  通过队伍id判断队伍是否是空的
]]
local function IsTeamHasCardById(self, teamId)
    local team = self:GetNationTeamDataById(teamId)
    if team == nil then
        return 0
    end
    local cardId = self.GetFirstNotNullTeamCardIdByTeamData(team)
    return cardId ~= 0
end

--[[
  通过队伍id获取第一个不为空的卡牌id
]]
local function GetFirstNotNullTeamCardIdByTeamData(team)
    if team == nil then
        return 0
    end
    return NationTeamData:GetInstance().GetFirstNotNullTeamCardIdByCardTables(team.teamCardTables)
end

--通过城镇ID， 获取所有在此城镇的队伍
local function GetAllNationTeamDataByCurrentMapId(self, cellId)
    local teamData = self:GetAllNationTeamDataDict()
    if teamData == nil then
        return nil
    end
    local teams = nil
    for k, v in pairs(teamData) do
        if v ~= nil then
            if v.currentBehavior.startMapID == cellId then
                if teams == nil then
                    teams = {}
                end
                table.insert(teams, v)
            end

        else
            Logger.LogErrorVars("GetAllNotEmptyTeamData  k : ", k, " teamData :", v)
        end
    end
    return teams
end

local function GetFirstNotNullTeamCardIdByCardTables(teamCardTables)
    if teamCardTables == nil then
        return 0
    end
    local keys = table.keys(teamCardTables)
    table.sort(keys, function(a, b)
        return a < b
    end)
    for i, v in ipairs(keys) do
        local cardId = teamCardTables[v]
        if cardId ~= 0 then
            return cardId
        end
    end
    return 0
end

--通过队伍id判断队伍是否是待命状态
local function IsTeamInStandBy(self, teamId)
    if self.myNationTeamTable == nil then
        return false
    end
    local team = self:GetNationTeamDataById(teamId)
    if team == nil then
        return false
    end
    if team.currentBehavior == nil then
        return true
    end

    if team.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
        return true
    end
    return false
end
--[[
  通过队伍id判断队伍是否在征兵中
]]
local function IsTeamCardConscriptionInTime(self, teamId)
    if self.myNationTeamTable == nil then
        return false
    end
    local team = self:GetNationTeamDataById(teamId)
    if team == nil then
        return false
    end

    local cards = team.teamCardTables
    if cards == nil then
        return false
    end

    local curTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    for k, id in pairs(cards) do
        if id ~= 0 then
            if (NationCardData:GetInstance():CheckCardConscriptionInTime(id, curTime)) then
                return true
            end
        end
    end
    return false
end

-- 根据id获取一个队伍数据
local function GetNationTeamDataById(self, id)
    return self.myNationTeamTable[id]
end

--[[
  通过队伍id获取队伍所有卡牌id
]]
local function GetNationTeamCardsByTeamId(self, teamId)
    local team = self:GetNationTeamDataById(teamId)
    if team == nil then
        return 0
    end
    local cards = team.teamCardTables
    if cards == nil then
        return 0
    end
    local tab = {}
    for i, v in pairs(cards) do
        if v ~= 0 then
            table.insert(tab, v)
        end
    end
    return tab
end

--[[
  通过队伍id和卡牌位置获取队伍卡牌id
]]
local function GetNationTeamCardIdByTeamIdAndCardIndex(self, teamId, cardId)
    local team = self:GetNationTeamDataById(teamId)
    if team == nil then
        return 0
    end
    if cardId == 0 then
        return 0
    end

    local cards = team.teamCardTables
    if cards == nil then
        return 0
    end
    return cards[cardId]
end

--[[
  通过卡牌id判断卡牌在哪个队伍中 队伍id 队伍数据
]]
local function GetTeamIdAndTeamDataByCardId(self, cardId)
    local teams = self.myNationTeamTable
    for teamKey, oneTeam in pairs(teams) do
        local teamCardTables = oneTeam.teamCardTables
        if teamCardTables ~= nil then
            for i, v in pairs(teamCardTables) do
                if v == cardId then
                    return oneTeam.teamId, oneTeam
                end
            end
        end
    end
    return nil, nil
end

--获取所有非空队伍
local function GetAllNotEmptyTeamData(self)
    local teams = {}
    for k, v in pairs(self.myNationTeamTable) do
        if v ~= nil then
            if not v:IsTeamCardsEmpty() then
                table.insert(teams, v)
            end
        else
            Logger.LogErrorVars("GetAllNotEmptyTeamData  k : ", k, " teamData :", v)
        end
    end
    return teams
end


--获取所有在队伍中的卡牌
local function GetAllCardInTeams(self)
    local list = nil
    if self.myNationTeamTable == nil then
        return
    end
    for k, team in pairs(self.myNationTeamTable) do
        if team ~= nil then
            local cards = team.teamCardTables
            if cards ~= nil then
                for pos, cardId in pairs(cards) do
                    if cardId ~= 0 then
                        if list == nil then
                            list = {}
                        end
                        table.insert(list, cardId)
                    end
                end
            end
        end
    end
    return list
end

--获取某队伍的cost上限
local function GetTeamCostByTeamId(self, teamId)
    local add = 0
    --基础值
    add = add + NationMapInfoData:GetInstance():GetNationalGlobal().GlobalCostLimit
    --科技加成
    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.COST_MAX_NUM)
    return add
end

--判断某个队伍的第三个位置是否解锁
local function GetTeamFormationUnlockByTeamId(self, teamId)
    local add = 0
    --科技加成
    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.FORMATION_UNLOCK)
    if add >= teamId then
        return true
    end
    return false
end

-------------------------------------------------------------------
----------------------------关于队伍军团的Func------------------------------
-------------------------------------------------------------------

---检测军团的数量满足红点与否
local function CheckNationCropsRedPoint(self)
    if self.unlock_army_group == nil then
        return false
    end

    local unlock_army_group_number = table.length(self.unlock_army_group) -- 已解锁的军团数量
    local unlock_army_group_maxnumber = NationTeamData:GetInstance():GetMaxCorpsNum() -- 军团最大数量
    if unlock_army_group_number < unlock_army_group_maxnumber then
        return true
    else
        return false
    end
end
--更新解锁国战军团数据
local function UpdateUnLockNationCropsData(self, unlockCropsId)
    table.insert(self.unlock_army_group, unlockCropsId)
    RedPointData:GetInstance():UpdateRedState(
            RedPointData:GetInstance().RedName.Nation_JunTuan_Red,
            NationTeamData:GetInstance():CheckNationCropsRedPoint())
end

--更新改变使用国战军团数据
local function UpdateChangeNationCropsData(self, ChangeCropsId, teamId)
    local nationTeamItem = self:GetNationTeamDataById(teamId)
    if nationTeamItem == nil then
        return
    end
    nationTeamItem.armyGroupId = math.modf(ChangeCropsId)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_TEAM_MULTI_TEAM_UPDATE, { nationTeamItem.teamId })
end

--更新重置国战军团数据
local function UpdateResetNationCropsData(self, unlockCropsId)
    table.removebyvalue(self.unlock_army_group, unlockCropsId)
    local changeTeams = nil
    for n, v in pairs(self.myNationTeamTable) do
        if v.armyGroupId == unlockCropsId then
            v.armyGroupId = math.modf(self.InitialCorps)
            if changeTeams == nil then
                changeTeams = {}
            end
            table.insert(changeTeams, v.teamId)
        end
    end
    RedPointData:GetInstance():UpdateRedState(
            RedPointData:GetInstance().RedName.Nation_JunTuan_Red,
            NationTeamData:GetInstance():CheckNationCropsRedPoint())
    if changeTeams ~= nil then
        if table.length(changeTeams) > 0 then
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_TEAM_MULTI_TEAM_UPDATE, changeTeams)
        end
    end
end

--获取使用该军团的所有国战队伍id 没有返回nil
local function GetTeamIdsByArmyGroupId(self, armyGroupId)
    local tab = nil
    for n, c in pairs(self.myNationTeamTable) do
        if c.armyGroupId == armyGroupId then
            if tab == nil then
                tab = {}
            end
            table.insert(tab, c.teamId)
        end
    end
    return tab
end

--获取使用该军团的所有国战队伍id 没有返回nil
local function GetMyTeamDataByMarchId(self, marchId)
    for k, v in pairs(self.myNationTeamTable) do
        if v.marchId == marchId then
            return v
        end
    end
    return nil
end

--纯数据获取军团效果
local function GetMyNationTeamEffectAddByArmyGroupIdMapIdAndType(armyGroupId, mapId, effectType)
    local val = 0
    if armyGroupId == nil then
        return val
    end
    local nationalCrop = NationMapInfoData:GetInstance():GetNationalCropsById(armyGroupId)
    if nationalCrop == nil then
        return val
    end

    if nationalCrop.CorpsEffect ~= nil then
        for i, v in ipairs(nationalCrop.CorpsEffect) do
            if effectType == v.Type then
                val = val + v.Value
                -- 科技加成军团
                if v.TechId ~= nil then
                    val = val + NationScienceData:GetInstance():GetScienceEffectAddByType(v.TechId)
                end
            end
        end
    end
    if mapId == nil then
        return val
    end

    if mapId == 0 then
        return val
    end

    local terrain = NationMapInfoData:GetInstance():GetTerrainByCellId(mapId)
    if terrain == nil then
        return val
    end

    if nationalCrop.Effect ~= nil then
        for i, v in ipairs(nationalCrop.Effect) do
            if terrain ~= v.EffectTerrain then

            else
                if effectType ~= v.Type then

                else
                    val = val + v.Value

                end
            end
        end
    end
    return val
end

--通过队伍id获取军团加成效果
local function GetMyNationTeamEffectAddByTypeAndTeamId(self, teamId, effectType)
    local teamData = self:GetNationTeamDataById(teamId)
    return self:GetMyNationTeamEffectAddByType(teamData, effectType)
end

-- 获取某军团的加成效果包括地形
local function GetMyNationTeamEffectAddByType(self, teamData, effectType)
    if teamData == nil then
        return 0
    end
    return self.GetMyNationTeamEffectAddByArmyGroupIdMapIdAndType(teamData.armyGroupId, teamData.currentBehavior.startMapID, effectType)
end

--[[获取当前可解锁军团数量]]
local function GetMaxCorpsNum(self)
    local add = 0
    add = add + self.InitialCorpsNum
    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.CORPS_MAX_NUM)
    return add
end


-----------------------------------------------------------------------
---------------------对Team数据进行处理的逻辑（核心）---------------------
-----------------------------------------------------------------------


-- 获取最大队伍的id
local function __GetMaxTeamId(self)
    local teamTables = self:GetAllNationTeamDataDict()
    if teamTables == nil then
        return -1
    end
    local maxId = 1
    for k, v in pairs(teamTables) do
        if v.teamId > maxId then
            maxId = v.teamId
        end
    end

    return maxId
end


--科技，解锁新的队伍上限
local function AddNewMyTeamData(self)
    --local nextId = table.length(self.myNationTeamList) + 1
    local nextId = self:__GetMaxTeamId()
    if nextId == -1 then
        return -1
    end
    local nationTeam = {}
    nationTeam.IsTeamCardsEmpty = function(self)
        if self.teamCardTables == nil then
            return true
        end
        for k, v in pairs(self.teamCardTables) do
            if v ~= 0 then
                return false
            end
        end
        return true
    end

    local teamId = nextId
    local uid = UserData:GetInstance().roleID
    local marchId = NationMarchData:GetInstance().GetMarchId(teamId, uid)
    nationTeam.marchId = marchId
    nationTeam.uid = uid
    nationTeam.teamId = teamId
    nationTeam.armyGroupId = self.InitialCorps

    nationTeam.currentBehavior = nil
    nationTeam.teamCardTables = nil
    self.myNationTeamTable[nationTeam.teamId] = nationTeam
    return nextId
end

--转化我的队伍到行军对象
local function ConventMyTeam2NationMarchData(data, isModf, battleResult)
    local item = NationTeamData:GetInstance().CopyOneNationTeamData(data)
    local teamId = isModf and math.modf(data.teamId) or data.teamId
    local uid = isModf and math.modf(data.uid) or data.uid
    local marchId = data.marchId
    item.marchId = marchId
    item.uid = uid
    item.teamId = teamId

    local dataBehavior = data.currentBehavior

    ----todo, 扩展
    ----回
    if dataBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
        --接战区特殊处理（这行代码有点恶心）
        local cellInfo = NationMapInfoData:GetInstance().national_battleZone[dataBehavior.secondMapID]
        if dataBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.WARCELL or cellInfo ~= nil then
            item.startPos = isModf and math.modf(dataBehavior.secondMapID) or dataBehavior.secondMapID
            item.targetPos = isModf and math.modf(dataBehavior.startMapID) or dataBehavior.startMapID
        else
            item.startPos = isModf and math.modf(dataBehavior.targetMapID) or dataBehavior.targetMapID
            item.targetPos = isModf and math.modf(dataBehavior.startMapID) or dataBehavior.startMapID
        end
    else
        --去，战斗中
        --接战区特殊处理
        if dataBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.WARCELL or dataBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND_WARCELL then
            item.startPos = isModf and math.modf(dataBehavior.startMapID) or dataBehavior.startMapID
            item.targetPos = isModf and math.modf(dataBehavior.secondMapID) or dataBehavior.secondMapID
        else
            item.startPos = isModf and math.modf(dataBehavior.startMapID) or dataBehavior.startMapID
            item.targetPos = isModf and math.modf(dataBehavior.targetMapID) or dataBehavior.targetMapID
        end
    end

    item.startTime = isModf and math.modf(dataBehavior.startTime) or dataBehavior.startTime
    item.endTime = isModf and math.modf(dataBehavior.endTime) or dataBehavior.endTime

    item.name = UserData:GetInstance().name
    item.head = UserData:GetInstance().pHead
    item.headIconFrameId = UserData:GetInstance().pHeadFrame
    item.battleResult = battleResult or NationDefine.TEAM_BATTLE_RESULT.EMPTY -- 0不显示

    local unionId, dataMyNation, myMember = NationUnionData:GetInstance():GetPlayerNationUnionData()
    item.unionId = isModf and math.modf(unionId) or unionId
    if unionId ~= 0 then
        item.unionName = dataMyNation.name
    else
        item.unionName = nil
    end

    local cardId = NationTeamData:GetInstance().GetFirstNotNullTeamCardIdByCardTables(data.teamCardTables)
    item.cardId = isModf and math.modf(cardId) or cardId
    item.state = isModf and math.modf(dataBehavior.state) or dataBehavior.state
    return item
end

-- 解析队伍数据 总口(解析服务器的消息)
local function ParseNationTeamData(self, msgData)
    if msgData == nil or msgData._is_null then
        return
    end

    --if self.myNationTeamTable == nil then
    --
    --end
    self.myNationTeamTable = {}

    --if self.unlock_army_group == nil then
    --end
    self.unlock_army_group = {}

    for k, v in ipairs(msgData.unlock_army_group) do
        table.insert(self.unlock_army_group, v)
    end
    RedPointData:GetInstance():UpdateRedState(
            RedPointData:GetInstance().RedName.Nation_JunTuan_Red,
            NationTeamData:GetInstance():CheckNationCropsRedPoint())

    for k, v in ipairs(msgData.nation_team) do
        local nationTeam = self:ParseOneNationTeamData(v)
        self.myNationTeamTable[nationTeam.teamId] = nationTeam
    end
end

--复制一个队伍信息(这里不用数据model.New,为其他UIModel层，添加新的字段，灵活使用)
local function CopyOneNationTeamData(data)
    local nationTeam = {}
    nationTeam.IsTeamCardsEmpty = function(self)
        if self.teamCardTables == nil then
            return true
        end
        for k, v in pairs(self.teamCardTables) do
            if v ~= 0 then
                return false
            end
        end
        return true
    end
    local teamId = data.teamId
    local uid = data.uid
    local marchId = data.marchId
    nationTeam.marchId = marchId
    nationTeam.uid = uid
    nationTeam.teamId = teamId
    nationTeam.armyGroupId = data.armyGroupId

    if data.currentBehavior == nil then
        nationTeam.currentBehavior = nil
    else
        local behavior = {}
        local dataBehavior = data.currentBehavior
        behavior.type = dataBehavior.type
        behavior.state = dataBehavior.state
        behavior.startTime = dataBehavior.startTime
        behavior.endTime = dataBehavior.endTime

        behavior.startMapID = dataBehavior.startMapID
        behavior.targetMapID = dataBehavior.targetMapID
        behavior.secondMapID = dataBehavior.secondMapID
        behavior.thirdMapID = dataBehavior.thirdMapID

        nationTeam.currentBehavior = behavior
    end

    local serverTeam = data.teamCardTables
    if serverTeam ~= nil then
        nationTeam.teamCardTables = {}
        for k, v in pairs(serverTeam) do
            nationTeam.teamCardTables[k] = v
        end
        --nationTeam.teamCards = { { nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.HOST1],
        --                           nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.HOST2],
        --                           nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.HOST3] },
        --                         { nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.GUARD1],
        --                           nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.GUARD2],
        --                           nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.GUARD3] } }
    end
    return nationTeam
end

--解析一个队伍信息(解析服务器的数据)
local function ParseOneNationTeamData(self, msgData)
    if msgData == nil or msgData._is_null then
        return nil
    end
    --local nationTeam = NationTeamItemDataModel.New()
    local nationTeam = {}
    nationTeam.IsTeamCardsEmpty = function(self)
        if self.teamCardTables == nil then
            return true
        end
        for k, v in pairs(self.teamCardTables) do
            if v ~= 0 then
                return false
            end
        end
        return true
    end

    local uid = UserData:GetInstance().roleID
    local marchId = NationMarchData:GetInstance().GetMarchId(msgData.teamId, uid, true)

    nationTeam.marchId = marchId
    nationTeam.uid = uid
    nationTeam.teamId = msgData.teamId
    nationTeam.armyGroupId = msgData.armyGroupId

    if msgData.nationTeamBehavior == nil or msgData.nationTeamBehavior._is_null then
        nationTeam.currentBehavior = nil
    else
        --Logger.LogErrorVars(" msgData.nationTeamBehavior ",msgData.nationTeamBehavior," is null : ",msgData.nationTeamBehavior._is_null)
        --local behavior = NationTeamBehaviorDataModel.New()
        local behavior = {}
        local dataBehavior = msgData.nationTeamBehavior
        behavior.type = dataBehavior.opCode
        local status = dataBehavior.status
        local stLen = #status
        --队伍行为空状态
        if stLen == 0 then
            behavior.state = NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY
        else
            behavior.state = status[1]
        end

        behavior.startTime = math.modf(dataBehavior.startTime)
        behavior.endTime = math.modf(dataBehavior.endTime)

        behavior.startMapID = dataBehavior.startMapId
        behavior.targetMapID = dataBehavior.targetMapId
        behavior.secondMapID = dataBehavior.secondMapId
        behavior.thirdMapID = dataBehavior.thirdMapId

        nationTeam.currentBehavior = behavior
    end
    local teamCardTables = self.__ParseServerTeamCardTables(msgData.team)
    nationTeam.teamCardTables = teamCardTables
    --Logger.LogErrorVars(" teamCardTables ",teamCardTables)
    return nationTeam
end


--更新一个队伍数据 只在队伍换阵型时候使用
local function UpdateOneNationTeamData(self, msgData, hasEvent)
    if msgData == nil or msgData._is_null then
        return nil
    end

    local nationTeam = self:GetNationTeamDataById(msgData.teamId)
    local isCreate = false
    if nationTeam == nil then
        -- need create
        --nationTeam = NationTeamItemDataModel.New()
        nationTeam = {}
        nationTeam.IsTeamCardsEmpty = function(self)
            if self.teamCardTables == nil then
                return true
            end
            for k, v in pairs(self.teamCardTables) do
                if v ~= 0 then
                    return false
                end
            end
            return true
        end
        isCreate = true
    end

    local uid = UserData:GetInstance().roleID
    local marchId = NationMarchData:GetInstance().GetMarchId(msgData.teamId, uid, true)

    nationTeam.marchId = marchId
    nationTeam.uid = uid
    nationTeam.teamId = msgData.teamId
    nationTeam.armyGroupId = msgData.armyGroupId

    if msgData.nationTeamBehavior == nil or msgData.nationTeamBehavior._is_null then
        --Logger.LogErrorVars(" msgData.nationTeamBehavior isnil ", " msgData.teamId : ",msgData.teamId)
        nationTeam.currentBehavior = nil
    else
        --local behavior = NationTeamBehaviorDataModel.New()
        local behavior = {}
        local dataBehavior = msgData.nationTeamBehavior
        behavior.type = dataBehavior.opCode
        local status = dataBehavior.status
        local stLen = #status
        --队伍行为空状态
        if stLen == 0 then
            behavior.state = NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY
        else
            behavior.state = status[1]
        end

        behavior.startTime = math.modf(dataBehavior.startTime)
        behavior.endTime = math.modf(dataBehavior.endTime)

        behavior.startMapID = dataBehavior.startMapId

        behavior.targetMapID = dataBehavior.targetMapId
        behavior.secondMapID = dataBehavior.secondMapId
        behavior.thirdMapID = dataBehavior.thirdMapId

        nationTeam.currentBehavior = behavior
        --Logger.LogErrorVars(" behavior ",behavior, " msgData.teamId : ",msgData.teamId)
    end

    local teamCardTables = self.__ParseServerTeamCardTables(msgData.team)
    nationTeam.teamCardTables = teamCardTables

    if isCreate then
        self.myNationTeamTable[nationTeam.teamId] = nationTeam
    end

    self:__DoTeamMoveLogic(nationTeam)

    if hasEvent then
        --DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, nationTeam.teamId)
    end
    return nationTeam
end

--更新上下阵队伍卡牌数据
local function UpdateNationTeamFormation(self, msgData)
    if msgData == nil or msgData._is_null then
        return
    end
    local teamIds = nil
    if not msgData.oldTeam._is_null then
        local team = self:UpdateOneNationTeamData(msgData.oldTeam, false)
        if team ~= nil then
            if teamIds == nil then
                teamIds = {}
            end
            table.insert(teamIds, team.teamId)
        end
    end

    local team = self:UpdateOneNationTeamData(msgData.newTeam, false)
    if team ~= nil then
        if teamIds == nil then
            teamIds = {}
        end
        table.insert(teamIds, team.teamId)
    end

    if teamIds ~= nil then
        if table.length(teamIds) > 0 then
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_TEAM_MULTI_TEAM_UPDATE, teamIds)
        end
    end
end

--更新一条队伍的行为数据
local function UpdateOneTeamBehaviorData(self, msgData, teamId, hasEvent)
    if msgData == nil or msgData._is_null then
        return
    end
    local team = self:GetNationTeamDataById(teamId)
    local currentBehavior = team.currentBehavior
    currentBehavior.type = msgData.opCode
    local status = msgData.status
    local stLen = #msgData.status
    --队伍行为空状态
    if stLen == 0 then
        currentBehavior.state = NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY
    else
        currentBehavior.state = status[1]
    end

    currentBehavior.startTime = math.modf(msgData.startTime)
    currentBehavior.endTime = math.modf(msgData.endTime)

    currentBehavior.startMapID = msgData.startMapId
    currentBehavior.targetMapID = msgData.targetMapId
    currentBehavior.secondMapID = msgData.secondMapId
    currentBehavior.thirdMapID = msgData.thirdMapId

    self:__DoTeamMoveLogic(team)
    if hasEvent then
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, team.teamId)
    end
end

--更新队伍待命(pushManager调用)
local function UpdateOneTeamStayByNetData(self, msgData)
    if msgData == nil or msgData._is_null then
        return
    end
    local teamId = msgData.teamId
    local teamData = self:GetNationTeamDataById(teamId)
    if teamData == nil then
        return
    end
    local currentBehavior = teamData.currentBehavior
    if currentBehavior == nil then
        return
    end

    currentBehavior.type = msgData.opcode
    currentBehavior.state = NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY
    currentBehavior.endTime = -1
    currentBehavior.startTime = -1

    currentBehavior.startMapID = msgData.startMapId
    currentBehavior.targetMapID = msgData.targetMapId
    currentBehavior.secondMapID = msgData.secondMapId

    self.__BroadcastRemoveMyTeamMarch(teamData)
    --self:__DoTeamMoveLogic(teamData)
    --self:DoTeamLogic(teamId)

    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, teamId)
end

--更新队伍战斗结束(pushManager调用)
local function UpdateOneTeamPveEndByNetData(self, msgData)
    if msgData == nil or msgData._is_null then
        return
    end
    local teamId = msgData.teamId
    local teamData = self:GetNationTeamDataById(teamId)
    if teamData == nil then
        return
    end
    local currentBehavior = teamData.currentBehavior
    if currentBehavior == nil then
        return
    end
    local lastCurrentBehaviorType = currentBehavior.type
    currentBehavior.startTime = math.modf(msgData.startTime)
    currentBehavior.endTime = math.modf(msgData.endTime)
    currentBehavior.startMapID = msgData.startMapId
    currentBehavior.targetMapID = msgData.targetMapId

    local function CallBackFunc()
        currentBehavior.state = NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK
        self:__DoTeamMoveLogic(teamData, msgData.success)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, teamId)
    end

    --数据延迟没有完毕，等待
    if self.teamTweenList[teamId] ~= nil then
        currentBehavior.state = NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE

        local function WaitAfterBattleTween(self)
            coroutine.waituntil(function()
                return self.teamTweenList[teamId] == nil
            end)

            CallBackFunc()
        end
        coroutine.start(WaitAfterBattleTween, self)
    else
        CallBackFunc()
    end

    --更新战斗结果，引起的其他数据的变动
    if lastCurrentBehaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE_COLLECT then
        NationNetManager:GetInstance():SendMsgUpdateResourcesData()
    elseif lastCurrentBehaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.BATTLE then
        NationNetManager:GetInstance():SendMsgUpdateResourcesData()
        --Logger.LogErrorVars("战斗结束日志 : " ,teamData)
        NationNetManager:GetInstance():SendTeamBanditsRecoveryTimeRequest(currentBehavior.targetMapID, currentBehavior.secondMapID)
    elseif lastCurrentBehaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE then
        --资源区
        NationNetManager:GetInstance():SendMsgUpdateResourcesData()
    end
end

--更新开始战斗(pushManager调用)
local function UpdateOneTeamPveStartByNetData(self, msgData)
    if msgData == nil or msgData._is_null then
        return
    end
    local teamId = msgData.teamId
    local teamData = self:GetNationTeamDataById(teamId)
    if teamData == nil then
        return
    end
    local currentBehavior = teamData.currentBehavior
    if currentBehavior == nil then
        return
    end

    if currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE_COLLECT then
        currentBehavior.endTime = math.modf(NationMapInfoData:GetInstance():GetNationalGlobal().CollectTime * 1000 + TimeSyncManager:GetInstance():GetSimulationJavaMS())
        currentBehavior.state = NationDefine.NATION_TEAM_BEHAVIOR_STATE.COLLECT
    else
        currentBehavior.endTime = -1
        currentBehavior.state = NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE

        local function CreateTeamTweenTimer(self, teamID)
            local function callBack()
                TimerManager:GetInstance():SimpleTimerStop(self.teamTweenList[teamID])
                self.teamTweenList[teamID] = nil
            end
            local delayTime = NationMapInfoData:GetInstance():GetNationalGlobal().BattlePause
            self.teamTweenList[teamID] = TimerManager:GetInstance():SimpleTimerArgs(delayTime, callBack, nil, true)
        end
        CreateTeamTweenTimer(self, teamId)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_TEAM_BATTLE_TWEEN_PLAY, teamId, msgData.targetMapId, msgData.secondMapId)
    end

    currentBehavior.targetMapID = msgData.targetMapId
    currentBehavior.secondMapID = msgData.secondMapId
    currentBehavior.thirdMapID = msgData.thirdMapId

    self:__DoTeamMoveLogic(teamData)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, teamId)
end

local function __BroadcastAddMyTeamMarch(team, battleResult)
    local nationArmyPath = NationTeamData:GetInstance().ConventMyTeam2NationMarchData(team, true, battleResult)
    local addList = {}
    table.insert(addList, nationArmyPath)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_MARCH_LIST_ADD, addList)
end

local function __BroadcastRemoveMyTeamMarch(team)
    local nationArmyPath = NationTeamData:GetInstance().ConventMyTeam2NationMarchData(team, true)
    local removeList = {}
    table.insert(removeList, nationArmyPath)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_MARCH_LIST_REMOVE, removeList)
end

----处理队伍的行为逻辑
local function __DoTeamMoveLogic(self, team, battleResult)
    local currentBehavior = team.currentBehavior

    if currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
        self.__BroadcastAddMyTeamMarch(team, battleResult)
    elseif currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
        self.__BroadcastAddMyTeamMarch(team, battleResult)
    else
    end
end

--当前我的队伍进入国战需要运行的
local function __RunMyTeamLogic(self)
    if self.myNationTeamTable == nil then
        return
    end

    for i, v in pairs(self.myNationTeamTable) do
        self:__DoTeamMoveLogic(v)
    end
end

local function __ParseServerTeamCardTables(serverTeam)
    if serverTeam == nil then
        return nil
    end

    if serverTeam._is_null then
        return nil
    end
    local teamCardTables = nil
    for k, v in ipairs(serverTeam) do
        --Logger.LogErrorVars(" __ParseServerTeamCardTables ,",serverTeam)
        local host = v.host
        local guardian = v.guardian
        if v.position == NationDefine.NATION_TEAM_LINE.LEFT then
            if host == nil or host._is_null then
            else
                if teamCardTables == nil then
                    teamCardTables = {}
                end
                teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.HOST1] = math.modf(host.cardId)
            end
            if guardian == nil or guardian._is_null then
            else
                if teamCardTables == nil then
                    teamCardTables = {}
                end
                teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.GUARD1] = math.modf(guardian.cardId)
            end
        elseif v.position == NationDefine.NATION_TEAM_LINE.CENTER then
            if host == nil or host._is_null then
            else
                if teamCardTables == nil then
                    teamCardTables = {}
                end
                teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.HOST2] = math.modf(host.cardId)
            end
            if guardian == nil or guardian._is_null then
            else
                if teamCardTables == nil then
                    teamCardTables = {}
                end
                teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.GUARD2] = math.modf(guardian.cardId)
            end
        elseif v.position == NationDefine.NATION_TEAM_LINE.RIGHT then
            if host == nil or host._is_null then
            else
                if teamCardTables == nil then
                    teamCardTables = {}
                end
                teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.HOST3] = math.modf(host.cardId)
            end
            if guardian == nil or guardian._is_null then
            else
                if teamCardTables == nil then
                    teamCardTables = {}
                end
                teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.GUARD3] = math.modf(guardian.cardId)
            end
        end
    end

    --nationTeam.teamCards = { { nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.HOST1],
    --                           nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.HOST2],
    --                           nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.HOST3] },
    --                         { nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.GUARD1],
    --                           nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.GUARD2],
    --                           nationTeam.teamCardTables[NationDefine.NATION_TEAM_CARD_INDEX.GUARD3] } }
    return teamCardTables
end

NationTeamData.__init = __init
NationTeamData.__delete = __delete
NationTeamData.ParseNationTeamData = ParseNationTeamData
NationTeamData.ParseOneNationTeamData = ParseOneNationTeamData

NationTeamData.UpdateNationTeamFormation = UpdateNationTeamFormation
NationTeamData.GetNationTeamDataById = GetNationTeamDataById
NationTeamData.GetNationTeamCardsByTeamId = GetNationTeamCardsByTeamId
NationTeamData.UpdateOneNationTeamData = UpdateOneNationTeamData
NationTeamData.UpdateOneTeamBehaviorData = UpdateOneTeamBehaviorData
NationTeamData.GetAllNotEmptyTeamData = GetAllNotEmptyTeamData
NationTeamData.DoseAllTeamCardsEmpty = DoseAllTeamCardsEmpty

NationTeamData.GetAllNationTeamDataList = GetAllNationTeamDataList
NationTeamData.GetAllNationTeamDataDict = GetAllNationTeamDataDict
NationTeamData.CopyOneNationTeamData = CopyOneNationTeamData
NationTeamData.GetMyNationTeamEffectAddByArmyGroupIdMapIdAndType = GetMyNationTeamEffectAddByArmyGroupIdMapIdAndType
NationTeamData.GetMyNationTeamEffectAddByTypeAndTeamId = GetMyNationTeamEffectAddByTypeAndTeamId
NationTeamData.GetMyNationTeamEffectAddByType = GetMyNationTeamEffectAddByType

NationTeamData.IsTeamHasCardById = IsTeamHasCardById
NationTeamData.GetNationTeamCardIdByTeamIdAndCardIndex = GetNationTeamCardIdByTeamIdAndCardIndex
NationTeamData.GetTeamIdAndTeamDataByCardId = GetTeamIdAndTeamDataByCardId
NationTeamData.UpdateUnLockNationCropsData = UpdateUnLockNationCropsData
NationTeamData.UpdateChangeNationCropsData = UpdateChangeNationCropsData
NationTeamData.UpdateResetNationCropsData = UpdateResetNationCropsData
NationTeamData.CheckNationCropsRedPoint = CheckNationCropsRedPoint

NationTeamData.IsTeamInStandBy = IsTeamInStandBy
NationTeamData.IsTeamCardConscriptionInTime = IsTeamCardConscriptionInTime
NationTeamData.GetTeamIdsByArmyGroupId = GetTeamIdsByArmyGroupId
NationTeamData.GetMaxCorpsNum = GetMaxCorpsNum
NationTeamData.__DoTeamMoveLogic = __DoTeamMoveLogic

NationTeamData.UpdateOneTeamPveStartByNetData = UpdateOneTeamPveStartByNetData
NationTeamData.UpdateOneTeamStayByNetData = UpdateOneTeamStayByNetData
NationTeamData.UpdateOneTeamPveEndByNetData = UpdateOneTeamPveEndByNetData
NationTeamData.GetMyTeamDataByMarchId = GetMyTeamDataByMarchId

NationTeamData.GetFirstNotNullTeamCardIdByTeamData = GetFirstNotNullTeamCardIdByTeamData
NationTeamData.GetFirstNotNullTeamCardIdByCardTables = GetFirstNotNullTeamCardIdByCardTables
NationTeamData.ConventMyTeam2NationMarchData = ConventMyTeam2NationMarchData
NationTeamData.AddNewMyTeamData = AddNewMyTeamData
NationTeamData.__GetMaxTeamId = __GetMaxTeamId

NationTeamData.GetAllNationTeamDataByCurrentMapId = GetAllNationTeamDataByCurrentMapId
NationTeamData.GetAllCardInTeams = GetAllCardInTeams
NationTeamData.GetTeamCostByTeamId = GetTeamCostByTeamId
NationTeamData.GetTeamFormationUnlockByTeamId = GetTeamFormationUnlockByTeamId

NationTeamData.__Dispose = __Dispose
NationTeamData.__BroadcastAddMyTeamMarch = __BroadcastAddMyTeamMarch
NationTeamData.__BroadcastRemoveMyTeamMarch = __BroadcastRemoveMyTeamMarch
NationTeamData.__RunMyTeamLogic = __RunMyTeamLogic
NationTeamData.__ParseServerTeamCardTables = __ParseServerTeamCardTables

return NationTeamData