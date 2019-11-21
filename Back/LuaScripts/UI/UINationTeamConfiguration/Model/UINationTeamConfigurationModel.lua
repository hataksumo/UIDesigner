--[[
-- added by zzg @ 2018-11-19
-- UIEmBattleModel模型层
--]]

local nationCardShowData = {
    id = 0,
    type = 0,
    state = 0,
    icon = "",
    kpkm = "",
    name = "",
    hellSmallLevel = 0,
    hellNameColor = "",
    quality = 0,
    level = "",
    fight_num = "",
    move_num = "",
    starlv = 0,
    slider_fight_value = 0,
    slider_move_value = 0,
    hunImg = "",
    hunTextImg = "",
    maskText = "",
    stateEndTime = 0,
    teamData = {},
    weight = 0,
    cardCost = 0,
}

local EnumCardState = {
    Empty = 0, --无状态
    Injure = 1, --重伤
    Recruit = 2, --征募
}

local UINationTeamConfigurationModel = BaseClass("UINationTeamConfigurationModel", UIBaseModel)
local base = UIBaseModel
local nationCardItem = DataClass("nationCardItem", nationCardShowData)
local GlobalData = DataUtil.GetData("global")
local NationUtil = require "GameLogic.Nation.NationUtil"

--获得当前应该选中的队伍
local function GetDefaultSelectIndex(self)
    local index = 0
    for k, v in pairs(self.teamList) do
        if not v:IsTeamCardsEmpty() and v.currentBehavior.startMapID == self.buildingId then
            index = k
            break
        end
    end
    if index == 0 then
        for k, v in pairs(self.teamList) do
            if v:IsTeamCardsEmpty() then
                index = k
                break
            end
        end
    end
    return index
end



-- 创建
local function OnCreate(self)
    base.OnCreate(self)

    for _, v in pairs(GlobalData) do
        if v.Key == "ManoeuvreCost" then
            self.ManoeuvreCost = v.valueN
        elseif v.Key == "UninstallReturn" then
            self.UninstallReturn = v.valueN -- 下阵返还比例
        end
    end

    self.RecruitReturnLimit = NationMapInfoData:GetInstance():GetNationalGlobal().RecruitReturnLimit -- 下阵最少兵力限制
    self.RecruitReturnResContent = DataUtil.GetClientText(200328)
    self.RecruitReturnResTitle = DataUtil.GetClientText(200332)

end

local function OnRefresh(self)

end


-- 打开
local function OnEnable(self, buildingId)
    base.OnEnable(self)
    self.buildingId = buildingId
    --当前配置队伍的城镇ID，（有队伍，为队伍所在的城镇）
    self.curTeamBuildID = buildingId

    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(buildingId)
    if buildInfo == nil then
        self.townName = ""
    else
        self.townName = buildInfo.Name
    end

    self.teamList = NationTeamData:GetInstance():GetAllNationTeamDataDict()
    self.currentSelectIndex = GetDefaultSelectIndex(self)
    self:PackageCardListData()
    if self.currentSelectIndex ~= 0 then
        --当前选择的队伍数据
        self.nationTeamData = self.teamList[self.currentSelectIndex]
        self:UpdateTeamArmyGroup()
        self.totalArmy = self:CalculateTotalArmy()
        self.totalAttackPower = self:CalculateTotalAttackPower()
        self:PackageUpArrayCards()
        self.currentSelectIndexTwo = 1
        self.currentSelectCardList = self.jlrList--当前二级界面选择的卡牌列表
    else
        --没有可选择的队伍
        self.nationTeamData = nil
        self.totalArmy = nil
        self.totalAttackPower = nil
        self.card_sum = nil
        self.cardCostLimit = nil
        self.is_lock_third_team = nil
    end
end

--更新队伍天赋，军团数据
local function UpdateTeamArmyGroup(self)
    if self.nationTeamData ~= nil then
        local cropsData = NationMapInfoData:GetInstance():GetNationalCropsById(self.nationTeamData.armyGroupId)
        self.armyGroupName = cropsData.Name
        self.armyGroupIconBG = cropsData.CorpsTypeIcon
        self.armyGroupIcon = cropsData.Icon
    else
        local cropsData = NationMapInfoData:GetInstance():GetNationalCropsById(NationTeamData:GetInstance().InitialCorps)
        self.armyGroupName = cropsData.Name
        self.armyGroupIconBG = cropsData.CorpsTypeIcon
        self.armyGroupIcon = cropsData.Icon
    end
end

--整理玩家所拥有的守护灵卡牌和寄灵人卡牌
local function PackageCardListData(self)
    self.jlrList = {}--纪灵人显示信息列表
    self.shlList = {}--守护灵显示信息列表
    local cardList = CardData:GetInstance().cards
    local cardData = nil
    local nationCardData = nil
    for k, v in pairs(cardList) do
        local item = nationCardItem.New()
        item.id = v.id
        if item.id ~= 0 then
            cardData = CardData:GetInstance():GetCardDataById(item.id)
            nationCardData = NationCardData:GetInstance():GetNationCardDataById(item.id)
            item.icon = cardData.icon
            item.kpkm = cardData.kpkm
            item.name = cardData.name
            item.hellSmallLevel = cardData.hellSmallLevel
            item.hellNameColor = cardData.hellNameColor
            item.quality = cardData.quality
            item.level = math.modf(nationCardData.dominanceLevel)
            item.cardCost = math.modf(nationCardData.cardCost)
            item.starlv = cardData.starlv
            item.fight_num = math.floor(NationCardData:GetInstance():GetCardNationArmyValue(item.id))
            item.move_num = math.floor(NationCardData:GetInstance():GetNationCardApByTime(item.id, TimeSyncManager:GetInstance():GetSimulationJavaMS()))
            item.slider_fight_value = NationCardData:GetInstance():GetCardNationArmyValue(item.id) / NationCardData:GetInstance():GetCardNationArmyMax(item.id)
            item.slider_move_value = NationCardData:GetInstance():GetNationCardApByTime(item.id, TimeSyncManager:GetInstance():GetSimulationJavaMS()) / NationCardData:GetInstance():GetNationCardApMax(item.id)
            item.hunImg = SpriteDefine:GetCrystalIconByType(cardData.crystalType)
            item.hunTextImg = SpriteDefine:GetCrystalByCostNum(cardData.callCost)

            local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
            if NationCardData:GetInstance():IsNationCardInArmyTime(item.id, currentTime) or NationCardData:GetInstance():IsNationCardInJuryTime(item.id, currentTime) then
                if NationCardData:GetInstance():GetNationCardDataById(item.id).endArmyTime > NationCardData:GetInstance():GetNationCardDataById(item.id).lastEndInJuryTime then
                    item.stateEndTime = NationCardData:GetInstance():GetNationCardDataById(item.id).endArmyTime
                    --math.floor((NationCardData:GetInstance():GetNationCardDataById(item.id).endArmyTime - currentTime) / 1000)
                    item.maskText = DataUtil.GetClientText(200110)
                    item.state = EnumCardState.Recruit
                else
                    item.stateEndTime = NationCardData:GetInstance():GetNationCardDataById(item.id).lastEndInJuryTime
                    --math.floor((NationCardData:GetInstance():GetNationCardDataById(item.id).lastEndInJuryTime - currentTime) / 1000)
                    item.maskText = DataUtil.GetClientText(200119)
                    item.state = EnumCardState.Injure
                end
            else
                item.state = EnumCardState.Empty
                item.maskText = ""
                item.stateEndTime = 0
            end

            item.weight = item.quality * 10000000 + item.weight
            item.weight = item.level * 10000 + item.weight

            local teamID, teamData = NationTeamData:GetInstance():GetTeamIdAndTeamDataByCardId(item.id)
            if teamID ~= nil and teamData ~= nil then
                if teamID == 1 then
                    item.teamData.teamText = DataUtil.GetClientText(200120)
                    item.weight = 900000000 + item.weight
                end
                if teamID == 2 then
                    item.teamData.teamText = DataUtil.GetClientText(200121)
                    item.weight = 800000000 + item.weight
                end
                if teamID == 3 then
                    item.teamData.teamText = DataUtil.GetClientText(200122)
                    item.weight = 700000000 + item.weight
                end
                local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(teamData.currentBehavior.startMapID)
                if buildInfo == nil then
                    --队伍所在的城镇ID不存在, 注：若数据正确是不会走到这里的
                    item.teamData.teamTownText = ""
                    Logger.Log("队伍所在的城镇ID不存在")
                else
                    item.teamData.teamTownText = buildInfo.Name
                    item.teamData.townID = teamData.currentBehavior.startMapID
                    item.teamData.state = self:GetTeamDispatchState(teamData)
                end
            end

            item.type = cardData.type
        end
        if cardData.type == 2 then
            table.insert(self.shlList, item)
        else
            table.insert(self.jlrList, item)
        end
    end

    table.sort(self.shlList, function(a, b)
        return a.weight > b.weight
    end)

    table.sort(self.jlrList, function(a, b)
        return a.weight > b.weight
    end)
end

--组织上阵卡牌显示信息
local function PackageUpArrayCards(self)
    -- 第三个队伍是否解锁
    self.deployUpArrayCards = { {}, {} }--上阵卡牌的显示信息
    self.card_sum = 0
    self.cardCostLimit = NationTeamData:GetInstance():GetTeamCostByTeamId(self, self.currentSelectIndex)
    self.is_unLock_third_team = NationTeamData:GetInstance():GetTeamFormationUnlockByTeamId(self.currentSelectIndex)
    self.is_unLock_third_pos_level = NationScienceData:GetInstance():GetTeamThirdPosUnlockLevelByTeamId(self.currentSelectIndex)

    if self.nationTeamData == nil then
        return
    end

    if self.nationTeamData.teamCardTables == nil then
        return
    end

    local cardData = nil
    local nationCardData = nil
    for k, v in pairs(NationDefine.NATION_TEAM_CARD_INDEX) do
        local cardId = self.nationTeamData.teamCardTables[v] -- 几号位的卡牌
        local cardPosition, enumCardMainType = NationUtil.__GetNationTeamCardsDoubleRowDataHelper(v)
        --Logger.LogErrorVars(" cardPosition, ",cardPosition,"enumCardMainType : ",enumCardMainType," teamCardTables : ",self.nationTeamData.teamCardTables
        --," v : ",v," cardId : ",cardId," k : ",k
        --)
        if self.deployUpArrayCards[enumCardMainType] == nil then
            self.deployUpArrayCards[enumCardMainType] = {}
        end
        local item = nationCardItem.New()
        if cardId ~= nil then
            item.id = cardId
        else
            item.id = 0
        end
        if item.id ~= 0 then
            cardData = CardData:GetInstance():GetCardDataById(item.id)
            nationCardData = NationCardData:GetInstance():GetNationCardDataById(item.id)
            item.icon = cardData.icon
            item.kpkm = cardData.kpkm
            item.name = cardData.name
            item.hellSmallLevel = cardData.hellSmallLevel
            item.hellNameColor = cardData.hellNameColor
            item.quality = cardData.quality
            item.level = math.modf(nationCardData.dominanceLevel)
            item.cardCost = math.modf(nationCardData.cardCost)
            self.card_sum = item.cardCost + self.card_sum

            item.starlv = cardData.starlv
            item.fight_num = math.floor(NationCardData:GetInstance():GetCardNationArmyValue(item.id))
            item.move_num = math.floor(NationCardData:GetInstance():GetNationCardApByTime(item.id, TimeSyncManager:GetInstance():GetSimulationJavaMS()))
            item.slider_fight_value = NationCardData:GetInstance():GetCardNationArmyValue(item.id) / NationCardData:GetInstance():GetCardNationArmyMax(item.id)
            item.slider_move_value = NationCardData:GetInstance():GetNationCardApByTime(item.id, TimeSyncManager:GetInstance():GetSimulationJavaMS()) / NationCardData:GetInstance():GetNationCardApMax(item.id)
            item.hunImg = SpriteDefine:GetCrystalIconByType(cardData.crystalType)
            item.hunTextImg = SpriteDefine:GetCrystalByCostNum(cardData.callCost)

            local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
            if NationCardData:GetInstance():IsNationCardInArmyTime(item.id, currentTime) or NationCardData:GetInstance():IsNationCardInJuryTime(item.id, currentTime) then
                if NationCardData:GetInstance():GetNationCardDataById(item.id).endArmyTime > NationCardData:GetInstance():GetNationCardDataById(item.id).lastEndInJuryTime then
                    item.stateEndTime = NationCardData:GetInstance():GetNationCardDataById(item.id).endArmyTime
                    --math.floor((NationCardData:GetInstance():GetNationCardDataById(item.id).endArmyTime - currentTime) / 1000)
                    item.maskText = DataUtil.GetClientText(200110)
                    item.state = EnumCardState.Recruit
                else
                    item.stateEndTime = NationCardData:GetInstance():GetNationCardDataById(item.id).lastEndInJuryTime
                    --math.floor((NationCardData:GetInstance():GetNationCardDataById(item.id).lastEndInJuryTime - currentTime) / 1000)
                    item.maskText = DataUtil.GetClientText(200119)
                    item.state = EnumCardState.Injure
                end
            else
                item.state = EnumCardState.Empty
                item.maskText = ""
                item.stateEndTime = 0
            end

            item.type = cardData.type
        else
            item = nil
        end
        self.deployUpArrayCards[enumCardMainType][cardPosition] = item
    end
end

--上阵的卡牌数据，刷新，只刷新一张卡牌
local function PackageUpArrayOneCardByCardID(self, cardID)
    if self.nationTeamData == nil then
        return
    end

    if self.nationTeamData.teamCardTables == nil then
        return
    end

    --只更新动态数据，静态数据不再更新
    local nationCardData = NationCardData:GetInstance():GetNationCardDataById(cardID)
    for _, v in ipairs(self.deployUpArrayCards) do
        for _, w in ipairs(v) do
            if w.id == cardID then
                w.level = math.modf(nationCardData.dominanceLevel)
                w.fight_num = math.floor(NationCardData:GetInstance():GetCardNationArmyValue(w.id))
                w.move_num = math.floor(NationCardData:GetInstance():GetNationCardApByTime(w.id, TimeSyncManager:GetInstance():GetSimulationJavaMS()))
                w.slider_fight_value = NationCardData:GetInstance():GetCardNationArmyValue(w.id) / NationCardData:GetInstance():GetCardNationArmyMax(w.id)
                w.slider_move_value = NationCardData:GetInstance():GetNationCardApByTime(w.id, TimeSyncManager:GetInstance():GetSimulationJavaMS()) / NationCardData:GetInstance():GetNationCardApMax(w.id)

                local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
                if NationCardData:GetInstance():IsNationCardInArmyTime(w.id, currentTime) or NationCardData:GetInstance():IsNationCardInJuryTime(w.id, currentTime) then
                    if NationCardData:GetInstance():GetNationCardDataById(w.id).endArmyTime > NationCardData:GetInstance():GetNationCardDataById(w.id).lastEndInJuryTime then
                        w.stateEndTime = NationCardData:GetInstance():GetNationCardDataById(w.id).endArmyTime

                        w.maskText = DataUtil.GetClientText(200110)
                        w.state = EnumCardState.Recruit
                    else
                        w.stateEndTime = NationCardData:GetInstance():GetNationCardDataById(w.id).lastEndInJuryTime
                        w.maskText = DataUtil.GetClientText(200119)
                        w.state = EnumCardState.Injure
                    end
                else
                    w.state = EnumCardState.Empty
                    w.maskText = ""
                    w.stateEndTime = 0
                end
                return
            end
        end
    end
end

--队伍可以操作状态
local function GetTeamDispatchState(self, nationTeamData)
    if nationTeamData:IsTeamCardsEmpty() then
        return NationDefine.NATION_TEAM_OPRE_STATE.EMPTY
    end
    if nationTeamData.currentBehavior.type ~= NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
        return NationDefine.NATION_TEAM_OPRE_STATE.NOT_IN_STAY
    end
    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    for k, v in pairs(nationTeamData.teamCardTables) do
        local cardId = v
        if cardId ~= 0 then
            if NationCardData:GetInstance():IsNationCardInArmyTime(cardId, currentTime) or NationCardData:GetInstance():IsNationCardInJuryTime(cardId, currentTime) then
                if NationCardData:GetInstance():GetNationCardDataById(cardId).endArmyTime > NationCardData:GetInstance():GetNationCardDataById(cardId).lastEndInJuryTime then
                    return NationDefine.NATION_TEAM_OPRE_STATE.SOMEONE_RECRUIT
                else
                    return NationDefine.NATION_TEAM_OPRE_STATE.SOMEONE_HURT
                end

            end

            if NationCardData:GetInstance():GetNationCardApByTime(cardId, currentTime) < self.ManoeuvreCost then
                return NationDefine.NATION_TEAM_OPRE_STATE.SOMEONE_POWER_NOT_ENOUGH
            end
        end
    end
    if nationTeamData.currentBehavior.startMapID == self.buildingId then
        return NationDefine.NATION_TEAM_OPRE_STATE.STAY_IN_SAME_BUILDING
    end
    return NationDefine.NATION_TEAM_OPRE_STATE.CANOPRE
end


--获取队伍中最长的征兵时间
local function GetLongestTimeInArmyByTeam(self, nationTeamData)
    local time = 0
    if nationTeamData == nil then
        return time
    end

    if nationTeamData.teamCardTables == nil then
        return time
    end
    for k, v in pairs(nationTeamData.teamCardTables) do
        if v ~= 0 then
            if NationCardData:GetInstance():IsNationCardInArmyTime(v, TimeSyncManager:GetInstance():GetSimulationJavaMS()) then
                local currentTime = math.floor((NationCardData:GetInstance():GetNationCardDataById(v).endArmyTime - TimeSyncManager:GetInstance():GetSimulationJavaMS()) / 1000)
                if currentTime > time then
                    time = currentTime
                end
            end
        end
    end
    return time
end

--获取队伍中最长的负伤是时间
local function GetLongsetTimeInJuryByTeamId(self, nationTeamData)
    local time = 0
    if nationTeamData == nil then
        return time
    end

    if nationTeamData.teamCardTables == nil then
        return time
    end
    for k, v in pairs(nationTeamData.teamCardTables) do
        if v ~= 0 then
            if NationCardData:GetInstance():IsNationCardInJuryTime(v, TimeSyncManager:GetInstance():GetSimulationJavaMS()) then
                local currentTime = math.floor((NationCardData:GetInstance():GetNationCardDataById(v).lastEndInJuryTime - TimeSyncManager:GetInstance():GetSimulationJavaMS()) / 1000)
                if currentTime > time then
                    time = currentTime
                end
            end
        end
    end
    return time
end

--计算总军力值
local function CalculateTotalArmy(self)
    local num = 0
    if self.nationTeamData == nil then
        return num
    end

    if self.nationTeamData.teamCardTables == nil then
        return num
    end

    for k, v in pairs(self.nationTeamData.teamCardTables) do
        if v ~= 0 then
            local army = NationCardData:GetInstance():GetCardNationArmyValue(v)
            num = num + army
        end
    end
    return math.floor(num)
end
--计算总攻城值
local function CalculateTotalAttackPower(self)
    local num = 0
    if self.nationTeamData == nil then
        return num
    end

    if self.nationTeamData.teamCardTables == nil then
        return num
    end
    local nationWarCardData = NationCardData:GetInstance().nationWarCardData
    for k, v in pairs(self.nationTeamData.teamCardTables) do
        if v ~= 0 then
            local staticNationCard = nationWarCardData[v]
            local army = 0
            if staticNationCard ~= nil then
                army = staticNationCard.Siege
            end
            --local army = DataUtil.GetData("national_card")[v].Siege
            num = num + army
        end
    end
    return math.floor(num)
end

--切换队伍
local function OnSelectTeamChange(self, index)
    self.currentSelectIndex = index
    self.nationTeamData = self.teamList[self.currentSelectIndex]
    if not self.nationTeamData:IsTeamCardsEmpty() then
        local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(self.nationTeamData.currentBehavior.startMapID)
        if buildInfo ~= nil then
            self.townName = buildInfo.Name
            self.curTeamBuildID = self.nationTeamData.currentBehavior.startMapID
        end
    elseif self.nationTeamData:IsTeamCardsEmpty() then
        local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(self.buildingId)
        if buildInfo ~= nil then
            self.townName = buildInfo.Name
            self.curTeamBuildID = self.buildingId
        end
    end
    self:UpdateTeamArmyGroup()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:PackageCardListData()
    self:PackageUpArrayCards()
    self:UIBroadcast(UIMessageNames.ON_NATION_TEAM_CONFIG_UI_REFRESH)
end

local function OnUpTeamCardUpdate(self)
    self:UpdateTeamArmyGroup()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:PackageCardListData()
    self:PackageUpArrayCards()
    self:UIBroadcast(UIMessageNames.ON_NATION_TEAM_CONFIG_UI_REFRESH)
end

-- 若干张卡牌更新
local function __OnNationCardMultiFlush(self, cardIds)
    self:UpdateTeamArmyGroup()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:PackageCardListData()
    self:PackageUpArrayCards()
    self:UIBroadcast(UIMessageNames.ON_NATION_TEAM_CONFIG_UI_REFRESH)
end

--队伍行为改变
local function OnTeamBehaviorChange(self)
    if not self.nationTeamData:IsTeamCardsEmpty() then
        local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(self.nationTeamData.currentBehavior.startMapID)
        if buildInfo ~= nil then
            self.townName = buildInfo.Name
            self.curTeamBuildID = self.nationTeamData.currentBehavior.startMapID
        end
    end
    self:PackageCardListData()
    self:UIBroadcast(UIMessageNames.ON_NATION_TEAM_CONFIG_UI_REFRESH)
end

local function __OnNationTeamMultiTeamUpdate(self, teamIds)
    self:UpdateTeamArmyGroup()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:PackageCardListData()
    self:PackageUpArrayCards()
    self:UIBroadcast(UIMessageNames.ON_NATION_TEAM_CONFIG_UI_REFRESH)
end

local function OnAddListener(self)
    base.OnAddListener(self)
    self:AddDataListener(DataMessageNames.ON_NATION_UI_FIRST_SELECT_TEAM, OnSelectTeamChange)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    self:AddDataListener(DataMessageNames.ON_NATION_TEAM_MULTI_TEAM_UPDATE, self.__OnNationTeamMultiTeamUpdate)

    self:AddDataListener(DataMessageNames.ON_NATION_CARD_RECRUIT_ARMY_END, self.__OnNationOneCardUpdate)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.__OnNationOneCardUpdate)

    self:AddDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, OnTeamBehaviorChange)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UI_FIRST_SELECT_TEAM, OnSelectTeamChange)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    self:RemoveDataListener(DataMessageNames.ON_NATION_TEAM_MULTI_TEAM_UPDATE, self.__OnNationTeamMultiTeamUpdate)

    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_RECRUIT_ARMY_END, self.__OnNationOneCardUpdate)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.__OnNationOneCardUpdate)

    self:RemoveDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, OnTeamBehaviorChange)
end

local function __OnNationOneCardUpdate(self, cardId)

    local allTeamCards = NationTeamData:GetInstance():GetAllCardInTeams()
    if allTeamCards == nil then
        return
    end

    if not self.__CheckTeamCardTablesContainsOneCardId(allTeamCards, cardId) then
        return
    end

    self:UpdateTeamArmyGroup()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:PackageCardListData()
    PackageUpArrayOneCardByCardID(self, cardId)
    self:UIBroadcast(UIMessageNames.ON_NATION_TEAM_CONFIG_UI_REFRESH)
end

local function __CheckTeamCardTablesContainsOneCardId(teamCardTables, cardId)
    if teamCardTables == nil then
        return false
    end
    for k, v in ipairs(teamCardTables) do
        if v ~= 0 then
            if v == cardId then
                return true
            end
        end
    end
    return false
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)

    self.buildingId = nil
    self.teamList = {}
    self.currentSelectIndex = nil
    self.nationTeamData = {}

    self.armyGroupName = nil
    self.townName = nil
    self.armyGroupIconBG = nil
    self.armyGroupIcon = nil
    self.totalArmy = nil
    self.totalAttackPower = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)

    self.ManoeuvreCost = nil
end

UINationTeamConfigurationModel.OnCreate = OnCreate
UINationTeamConfigurationModel.OnEnable = OnEnable
UINationTeamConfigurationModel.OnRefresh = OnRefresh
UINationTeamConfigurationModel.OnAddListener = OnAddListener
UINationTeamConfigurationModel.OnRemoveListener = OnRemoveListener
UINationTeamConfigurationModel.OnDisable = OnDisable
UINationTeamConfigurationModel.OnDestroy = OnDestroy
UINationTeamConfigurationModel.PackageCardListData = PackageCardListData
UINationTeamConfigurationModel.PackageUpArrayCards = PackageUpArrayCards
UINationTeamConfigurationModel.GetTeamDispatchState = GetTeamDispatchState
UINationTeamConfigurationModel.GetLongestTimeInArmyByTeam = GetLongestTimeInArmyByTeam
UINationTeamConfigurationModel.GetLongsetTimeInJuryByTeamId = GetLongsetTimeInJuryByTeamId
UINationTeamConfigurationModel.CalculateTotalArmy = CalculateTotalArmy
UINationTeamConfigurationModel.CalculateTotalAttackPower = CalculateTotalAttackPower
UINationTeamConfigurationModel.UpdateTeamArmyGroup = UpdateTeamArmyGroup
UINationTeamConfigurationModel.EnumCardState = EnumCardState

UINationTeamConfigurationModel.__OnNationCardMultiFlush = __OnNationCardMultiFlush
UINationTeamConfigurationModel.__OnNationTeamMultiTeamUpdate = __OnNationTeamMultiTeamUpdate
UINationTeamConfigurationModel.__OnNationOneCardUpdate = __OnNationOneCardUpdate
UINationTeamConfigurationModel.__CheckTeamCardTablesContainsOneCardId = __CheckTeamCardTablesContainsOneCardId

return UINationTeamConfigurationModel