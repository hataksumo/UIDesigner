--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local nationCardShowData = {
    id = 0,
    icon = "",
    kpkm = "",
    name = "",
    hellSmallLevel = 0,
    hellNameColor = "",
    quality = 0,
    lvText = "",
    fight_num = "",
    move_num = "",
    starlv = 0,
    slider_fight_value = 0,
    slider_move_value = 0,
    hunImg = "",
    hunTextImg = "",
    maskText = "",
    countDownTime = 0,
    cardCost = 0,
}

local UINationSelectTeamBattleModel = BaseClass("UINationSelectTeamBattleModel", UIBaseModel)
local base = UIBaseModel
local nationCardItem = DataClass("nationCardItem", nationCardShowData)
local NationUtil = require "GameLogic.Nation.NationUtil"


-- 创建
local function OnCreate(self)
    base.OnCreate(self)

    self.buildingId = 0--建筑id
    self.startBuildId = 0--从何而来的建筑id
    self.currentSelectIndex = 1--当前选择的队伍页签
    self.teamList = {}--玩家所有队伍
    self.nationTeamData = 0--当前选择的队伍

    local GlobalData = DataUtil.GetData("global")
    for _, v in pairs(GlobalData) do
        if v.Key == "ManoeuvreCost" then
            self.globalTransfer = v.valueN
        elseif v.Key == "WipeOutCost" then
            self.globalWipe = v.valueN
        elseif v.Key == "AttackCost" then
            self.globalAttack = v.valueN
        elseif v.Key == "DefendCost" then
            self.globalDefend = v.valueN
        elseif v.Key == "KillingCost" then
            self.globalKilling = v.valueN
        elseif v.Key == "BrokeCost" then
            self.globalBroke = v.valueN
        end
    end

end

-- 打开
local function OnEnable(self, params)
    base.OnEnable(self)

    self.severNeedData = params
    self.behaviorType = params[1]

    --队伍行为的消息信息等
    self.teamBehaviorInfo = {}
    local nationGlobal = NationMapInfoData:GetInstance():GetNationalGlobal()

    if self.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.TRANSFER then
        self.buildingId = params[2]
        self.teamBehaviorInfo.text = DataUtil.GetClientText(200019)
        self.teamBehaviorInfo.resumeEnergy = self.globalTransfer
        self.teamBehaviorInfo.resumeOrder = nil
    elseif self.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND then
        self.buildingId = params[2]
        self.teamBehaviorInfo.text = DataUtil.GetClientText(200039)
        self.teamBehaviorInfo.resumeEnergy = self.globalDefend
        self.teamBehaviorInfo.resumeOrder = nil
    elseif self.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.BATTLE then
        self.buildingId = params[2]
        self.pointId = params[3]
        self.teamBehaviorInfo.text = DataUtil.GetClientText(200130)
        self.teamBehaviorInfo.resumeEnergy = self.globalWipe
        self.teamBehaviorInfo.resumeOrder = nil
    elseif self.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.PUNITIVE then
        self.buildingId = params[2]
        self.teamBehaviorInfo.text = DataUtil.GetClientText(200130)
        self.teamBehaviorInfo.resumeEnergy = self.globalAttack
        self.teamBehaviorInfo.resumeOrder = nil
    elseif self.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE then
        self.buildingId = params[2]
        self.teamBehaviorInfo.text = DataUtil.GetClientText(200130)
        self.teamBehaviorInfo.resumeEnergy = self.globalAttack
        self.teamBehaviorInfo.resumeOrder = nil
    elseif self.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE_COLLECT then
        self.buildingId = params[2]
        self.isResOverflow = params[5]
        self.teamBehaviorInfo.text = DataUtil.GetClientText(200117)
        self.teamBehaviorInfo.resumeEnergy = nationGlobal.CollectCost
        self.teamBehaviorInfo.resumeOrder = nationGlobal.CollectDecree
    elseif self.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.WARCELL then
        self.buildingId = params[2]
        self.teamBehaviorInfo.text = DataUtil.GetClientText(200130)
        self.teamBehaviorInfo.resumeEnergy = self.globalAttack
        self.teamBehaviorInfo.resumeOrder = nil
    elseif self.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_BREAK then
        self.buildingId = params[2]
        self.teamBehaviorInfo.text = DataUtil.GetClientText(200130)
        self.teamBehaviorInfo.resumeEnergy = self.globalBroke
        self.teamBehaviorInfo.resumeOrder = nil
    elseif self.behaviorType == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_KILL then
        self.buildingId = params[2]
        self.teamBehaviorInfo.text = DataUtil.GetClientText(200130)
        self.teamBehaviorInfo.resumeEnergy = self.globalKilling
        self.teamBehaviorInfo.resumeOrder = nil
    end
    local cellInfo, buildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(self.buildingId)
    if buildInfo == nil then
        Logger.LogVars("error not found this buildInfo by buildingId :", buildingId)
        return
    end
    self.townName = buildInfo.Name
    self.townType = buildInfo.Type
    self.teamList = NationTeamData:GetInstance():GetAllNotEmptyTeamData()
    self.currentSelectIndex = self:GetDefaultSelectIndex()
    self.nationTeamData = self.teamList[self.currentSelectIndex]
    self.is_unLock_third_team = NationTeamData:GetInstance():GetTeamFormationUnlockByTeamId(self.currentSelectIndex)
    self.is_unLock_third_pos_level = NationScienceData:GetInstance():GetTeamThirdPosUnlockLevelByTeamId(self.currentSelectIndex)
    self:UpdateTeamArmyGroup()
    --self.armyGroupName=DataUtil.GetData("national_crops")[self.nationTeamData.armyGroupId].Name

    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:PackageUpArrayCards()
    self.currentTeamState = self:GetTeamDispatchState(self.nationTeamData)
    self.startBuildId = self.nationTeamData.currentBehavior.startMapID --从何而来的建筑id
    local startCellInfo, startBuildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(self.startBuildId)
    if startBuildInfo == nil then
        self.startBuildName = ""
    else
        self.startBuildName = startBuildInfo.Name
    end


    local cur, max = NationOccupyData:GetInstance():GetAllPlayerNationOccupyNumAndMax()
    if cur >= max then
        self.isFullManor = true
    else
        self.isFullManor = false
    end

    self.girdCostNeedTimeSecond = NationUtil.GridCostTimeSecond(self.nationTeamData.currentBehavior.startMapID, self.buildingId, self.nationTeamData.armyGroupId, self.nationTeamData.teamCardTables, self.behaviorType)
end

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

local function __GetResourceCollectVal(self, techRateId, amount, teamData)

end


--获取资源产量增加科技索引
local function __GetResTechIdByItemId(itemId)
    if itemId == NationDefine.ITEM_WOOD_ID then
        return NationDefine.NATION_TECH_TYPE.RESOURCE_COLLECT_WOOD
    elseif itemId == NationDefine.ITEM_IRON_ID then
        return NationDefine.NATION_TECH_TYPE.RESOURCE_COLLECT_IRON
    elseif itemId == NationDefine.ITEM_STONE_ID then
        return NationDefine.NATION_TECH_TYPE.RESOURCE_COLLECT_STONE
    elseif itemId == NationDefine.ITEM_FOOD_ID then
        return NationDefine.NATION_TECH_TYPE.RESOURCE_COLLECT_FOOD
    end
    return 0
end

--采集资源加成 -- itemId 采集的物品  amount 采集的原始数量  teamData 队伍数据
local function GetResourceCollectVal(self, itemId, amount, teamData)
    local add = 0
    local techRateId = self.__GetResTechIdByItemId(itemId)
    if techRateId <= 0 then
        return add
    end
    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(techRateId)
    local cardIdList = table.values(teamData.teamCardTables)
    add = add + NationCardData:GetInstance():GetCardListTalentEffectAddByType(
            cardIdList, NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, techRateId)
    add = add + NationScienceData:GetInstance():GetScienceEffectAddByType(techRateId)
    add = add + NationCardData:GetInstance():GetCardListTalentEffectAddByType(
            cardIdList, NationDefine.NATION_CARD_TALENT_TYPE.IN_TECH, NationDefine.NATION_TECH_TYPE.RESOURCE_COLLECT_ALL)
    add = add + NationTeamData:GetInstance():GetMyNationTeamEffectAddByType(
            teamData, NationDefine.NATION_TECH_TYPE.RESOURCE_COLLECT_ALL)
    local val = math.modf(amount * (1 + add))
    return val
end

local function GetDefaultSelectIndex(self)
    local index = 1
    for k, v in pairs(self.teamList) do
        local state = self:GetTeamDispatchState(v)
        if state == 0 then
            index = k
            break
        end
    end
    return index
end

--组织上阵卡牌显示信息
local function PackageUpArrayCards(self)


    self.deployUpArrayCards = { {}, {} }--上阵卡牌的显示信息
    if self.nationTeamData == nil then
        return
    end

    if self.nationTeamData.teamCardTables == nil then
        return
    end
    self.card_sum = 0
    self.cardCostLimit=NationTeamData:GetInstance():GetTeamCostByTeamId(self.nationTeamData.teamId)
    self.is_lock_third_team=NationTeamData:GetInstance():GetTeamFormationUnlockByTeamId(self.nationTeamData.teamId)

    local cardData = nil
    local nationCardData = nil
    for k, v in pairs(NationDefine.NATION_TEAM_CARD_INDEX) do
        local cardId = self.nationTeamData.teamCardTables[v]
        local cardPosition, enumCardMainType = NationUtil.__GetNationTeamCardsDoubleRowDataHelper(v)
        if self.deployUpArrayCards[enumCardMainType] == nil then
            self.deployUpArrayCards[enumCardMainType] = {}
        end
        local item = nationCardItem.New()
        item.id = cardId
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
            item.lvText = math.modf(cardData.level)

            item.cardCost = math.modf(nationCardData.cardCost)
            self.card_sum=item.cardCost+self.card_sum

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
                    item.countDownTime = math.floor((NationCardData:GetInstance():GetNationCardDataById(item.id).endArmyTime - currentTime) / 1000)
                    item.maskText = DataUtil.GetClientText(200110)
                else
                    item.countDownTime = math.floor((NationCardData:GetInstance():GetNationCardDataById(item.id).lastEndInJuryTime - currentTime) / 1000)
                    item.maskText = DataUtil.GetClientText(200119)
                end
            else
                item.maskText = ""
                item.countDownTime = 0
            end
        end
        self.deployUpArrayCards[enumCardMainType][cardPosition] = item
        --table.insert(self.deployUpArrayCards[k], item)
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
        if v ~= 0 then
            if NationCardData:GetInstance():IsNationCardInArmyTime(v, currentTime) or NationCardData:GetInstance():IsNationCardInJuryTime(v, currentTime) then

                if NationCardData:GetInstance():GetNationCardDataById(v).endArmyTime > NationCardData:GetInstance():GetNationCardDataById(v).lastEndInJuryTime then
                    return NationDefine.NATION_TEAM_OPRE_STATE.SOMEONE_RECRUIT
                else
                    return NationDefine.NATION_TEAM_OPRE_STATE.SOMEONE_HURT
                end

            end

            if NationCardData:GetInstance():GetNationCardApByTime(v, currentTime) < self.teamBehaviorInfo.resumeEnergy then
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
    if self.nationTeamData == nil then
        return time
    end

    if self.nationTeamData.teamCardTables == nil then
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
    if self.nationTeamData == nil then
        return time
    end

    if self.nationTeamData.teamCardTables == nil then
        return time
    end
    for k, v in pairs(nationTeamData.teamCardTables) do
        if v ~= 0 then
            if NationCardData:GetInstance():IsNationCardInJuryTime(v, TimeSyncManager:GetInstance():GetSimulationJavaMS()) then
                local currentTime = math.floor((NationCardData:GetInstance():GetNationCardDataById(v).lastEndInJuryTime
                        - TimeSyncManager:GetInstance():GetSimulationJavaMS()) / 1000)
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
            num = num + army
        end
    end
    return math.floor(num)
end

--切换队伍
local function OnSelectTeamChange(self, index)
    self.currentSelectIndex = index
    self.nationTeamData = self.teamList[self.currentSelectIndex]
    self:UpdateTeamArmyGroup()
    --self.armyGroupName=DataUtil.GetData("national_crops")[self.nationTeamData.armyGroupId].Name
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:PackageUpArrayCards()
    self.currentTeamState = self:GetTeamDispatchState(self.nationTeamData)
    self.is_unLock_third_team = NationTeamData:GetInstance():GetTeamFormationUnlockByTeamId(self.currentSelectIndex)
    self.is_unLock_third_pos_level = NationScienceData:GetInstance():GetTeamThirdPosUnlockLevelByTeamId(self.currentSelectIndex)
    self.startBuildId = self.nationTeamData.currentBehavior.startMapID --从何而来的建筑id
    local startCellInfo, startBuildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(self.startBuildId)
    if startBuildInfo == nil then
        self.startBuildName = ""
    else
        self.startBuildName = startBuildInfo.Name
    end
    self:UIBroadcast(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH)
end

local function OnTeamBehaviorChange(self)
    self.currentTeamState = self:GetTeamDispatchState(self.nationTeamData)
    self.startBuildId = self.nationTeamData.currentBehavior.startMapID --从何而来的建筑id
    local startCellInfo, startBuildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(self.startBuildId)
    if startBuildInfo == nil then
        self.startBuildName = ""
    else
        self.startBuildName = startBuildInfo.Name
    end
    self:UIBroadcast(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH)
end

local function OnTeamCardDataChange(self, ids)

    self:PackageUpArrayCards()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self.currentTeamState = self:GetTeamDispatchState(self.nationTeamData)
    self:UIBroadcast(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH)
end

-- 若干张卡牌更新
local function __OnNationCardMultiFlush(self, cardIds)

    local allTeamCards = NationTeamData:GetInstance():GetAllCardInTeams()
    if allTeamCards == nil then
        return
    end

    if not self:__CheckHasSameCardId(allTeamCards, cardIds) then
        return
    end

    self:PackageUpArrayCards()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self.currentTeamState = self:GetTeamDispatchState(self.nationTeamData)
    self:UIBroadcast(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH)
end

local function __CheckHasSameCardId(self, list1, list2)
    for i, v in ipairs(list1) do
        if self.__ArrayHasSameElement(list2, v) then
            return true
        end
    end
    return false
end

local function __ArrayHasSameElement(list, elem)
    for j, v in ipairs(list) do
        if v == elem then
            return true
        end
    end
    return false
end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_NATION_SELECTTEAM__SELECT, OnSelectTeamChange)
    self:AddDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, OnTeamBehaviorChange)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    --self:AddDataListener(DataMessageNames.ON_NATION_CARD_RECRUIT_ARMY_END, self.__OnNationOneCardUpdate)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.__OnNationOneCardUpdate)

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_SELECTTEAM__SELECT, OnSelectTeamChange)
    self:RemoveDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, OnTeamBehaviorChange)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    --self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_RECRUIT_ARMY_END, self.__OnNationOneCardUpdate)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.__OnNationOneCardUpdate)

end

local function __OnNationOneCardUpdate(self, cardId)

    local allTeamCards = NationTeamData:GetInstance():GetAllCardInTeams()
    if allTeamCards == nil then
        return
    end

    if not self.__CheckTeamCardTablesContainsOneCardId(allTeamCards, cardId) then
        return
    end

    self:PackageUpArrayCards()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self.currentTeamState = self:GetTeamDispatchState(self.nationTeamData)
    self:UIBroadcast(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH)
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
    -- 清理成员变量
    self.severNeedData = nil
    self.isFullManor = nil
    self.teamBehaviorText = nil
    self.isResOverflow = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

    self.globalTransfer = nil
    self.globalWipe = nil
    self.globalAttack = nil
    self.globalDefend = nil
    self.globalKilling = nil
    self.globalBroke = nil
end

UINationSelectTeamBattleModel.OnCreate = OnCreate
UINationSelectTeamBattleModel.OnEnable = OnEnable
UINationSelectTeamBattleModel.OnAddListener = OnAddListener
UINationSelectTeamBattleModel.OnRemoveListener = OnRemoveListener
UINationSelectTeamBattleModel.OnDisable = OnDisable
UINationSelectTeamBattleModel.OnDestroy = OnDestroy
UINationSelectTeamBattleModel.GetTeamDispatchState = GetTeamDispatchState
UINationSelectTeamBattleModel.PackageUpArrayCards = PackageUpArrayCards
UINationSelectTeamBattleModel.CalculateTotalArmy = CalculateTotalArmy
UINationSelectTeamBattleModel.CalculateTotalAttackPower = CalculateTotalAttackPower
UINationSelectTeamBattleModel.GetDefaultSelectIndex = GetDefaultSelectIndex
UINationSelectTeamBattleModel.GetLongestTimeInArmyByTeam = GetLongestTimeInArmyByTeam
UINationSelectTeamBattleModel.GetLongsetTimeInJuryByTeamId = GetLongsetTimeInJuryByTeamId
UINationSelectTeamBattleModel.UpdateTeamArmyGroup = UpdateTeamArmyGroup
UINationSelectTeamBattleModel.GetResourceCollectVal = GetResourceCollectVal
UINationSelectTeamBattleModel.__GetResTechIdByItemId = __GetResTechIdByItemId
UINationSelectTeamBattleModel.__OnNationCardMultiFlush = __OnNationCardMultiFlush
UINationSelectTeamBattleModel.__ArrayHasSameElement = __ArrayHasSameElement
UINationSelectTeamBattleModel.__CheckHasSameCardId = __CheckHasSameCardId
UINationSelectTeamBattleModel.__OnNationOneCardUpdate = __OnNationOneCardUpdate
UINationSelectTeamBattleModel.__CheckTeamCardTablesContainsOneCardId = __CheckTeamCardTablesContainsOneCardId

return UINationSelectTeamBattleModel




