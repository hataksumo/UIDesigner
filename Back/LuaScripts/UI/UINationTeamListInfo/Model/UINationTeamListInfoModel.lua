--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationTeamListInfoModel = BaseClass("UINationTeamListInfoModel", UIBaseModel)
local base = UIBaseModel

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
local nationCardItem = DataClass("nationCardItem", nationCardShowData)
local NationUtil = require "GameLogic.Nation.NationUtil"


-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self, _id)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    self.teamId = _id
    self.nationTeamData = NationTeamData:GetInstance():GetNationTeamDataById(self.teamId)
    self.is_unLock_third_team = NationTeamData:GetInstance():GetTeamFormationUnlockByTeamId(self.teamId)
    self.is_unLock_third_pos_level = NationScienceData:GetInstance():GetTeamThirdPosUnlockLevelByTeamId(self.teamId)
    self:UpdateTeamArmyGroup()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:PackageUpArrayCards()
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
    self.cardCostLimit = NationTeamData:GetInstance():GetTeamCostByTeamId(self.teamId)

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
            local cardData = nil
            local nationCardData = nil
            cardData = CardData:GetInstance():GetCardDataById(item.id)
            nationCardData = NationCardData:GetInstance():GetNationCardDataById(item.id)
            item.icon = cardData.icon
            item.kpkm = cardData.kpkm
            item.name = cardData.name
            item.hellSmallLevel = cardData.hellSmallLevel
            item.hellNameColor = cardData.hellNameColor
            item.quality = cardData.quality
            item.lvText = math.modf(cardData.level)
            item.starlv = cardData.starlv

            item.cardCost = math.modf(nationCardData.cardCost)
            self.card_sum = item.cardCost + self.card_sum

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
    end
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

---- 刷新全部数据
--local function OnTeamCardDataChange(self)
--
--
--
--    self:PackageUpArrayCards()
--    self.totalArmy = self:CalculateTotalArmy()
--    self.totalAttackPower = self:CalculateTotalAttackPower()
--    self:UpdateTeamArmyGroup()
--    self:UIBroadcast(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH)
--end


-- 若干张卡牌更新
local function __OnNationCardMultiFlush(self, cardIds)

    if not self:__CheckHasSameCardId(cardIds) then
        return
    end

    self:PackageUpArrayCards()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:UIBroadcast(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH)
end

local function __CheckHasSameCardId(self, list)
    if self.nationTeamData == nil then
        return false
    end

    if self.nationTeamData.teamCardTables == nil then
        return false
    end

    for i, v in pairs(self.nationTeamData.teamCardTables) do
        if self.__ArrayHasSameElement(list, v) then
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
    self:AddDataListener(DataMessageNames.ON_NATION_TEAM_MULTI_TEAM_UPDATE, self.__OnNationTeamMultiTeamDataChange)
    self:AddDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, self.__OnNationTeamOneTeamDataChange)

    self:AddDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.__OnNationOneCardUpdate)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_TEAM_MULTI_TEAM_UPDATE, self.__OnNationTeamMultiTeamDataChange)
    self:RemoveDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, self.__OnNationTeamOneTeamDataChange)

    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.__OnNationOneCardUpdate)
end
--一张卡牌更新
local function __OnNationOneCardUpdate(self, cardId)

    local nationTeamData = NationTeamData:GetInstance():GetNationTeamDataById(self.teamId)
    if nationTeamData == nil then
        return
    end

    if not self.__TableHasSameElement(nationTeamData.teamCardTables, cardId) then
        return true
    end

    self:PackageUpArrayCards()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:UIBroadcast(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH)
end

local function __OnNationTeamMultiTeamDataChange(self, teamIds)
    if not self.__ArrayHasSameElement(teamIds, self.teamId) then
        return
    end
    self:PackageUpArrayCards()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:UIBroadcast(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH)
end

local function __OnNationTeamOneTeamDataChange(self, teamId)
    if self.teamId ~= teamId then
        return
    end
    self:PackageUpArrayCards()
    self.totalArmy = self:CalculateTotalArmy()
    self.totalAttackPower = self:CalculateTotalAttackPower()
    self:UIBroadcast(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH)
end

local function __TableHasSameElement(tab, elem)
    if tab == nil then
        return
    end
    if elem == nil then
        return
    end

    for j, v in pairs(tab) do
        if v == elem then
            return true
        end
    end
    return false
end



-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.deployUpArrayCards = {}
    self.nationTeamData = {}
    self.teamId = nil
    self.totalArmy = nil
    self.totalAttackPower = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationTeamListInfoModel.OnCreate = OnCreate
UINationTeamListInfoModel.OnEnable = OnEnable
UINationTeamListInfoModel.OnAddListener = OnAddListener
UINationTeamListInfoModel.OnRemoveListener = OnRemoveListener
UINationTeamListInfoModel.OnDisable = OnDisable
UINationTeamListInfoModel.OnDestroy = OnDestroy
UINationTeamListInfoModel.PackageUpArrayCards = PackageUpArrayCards
UINationTeamListInfoModel.CalculateTotalArmy = CalculateTotalArmy
UINationTeamListInfoModel.CalculateTotalAttackPower = CalculateTotalAttackPower
UINationTeamListInfoModel.UpdateTeamArmyGroup = UpdateTeamArmyGroup
UINationTeamListInfoModel.__OnNationCardMultiFlush = __OnNationCardMultiFlush
UINationTeamListInfoModel.__OnNationOneCardUpdate = __OnNationOneCardUpdate
UINationTeamListInfoModel.__OnNationTeamMultiTeamDataChange = __OnNationTeamMultiTeamDataChange
UINationTeamListInfoModel.__OnNationTeamOneTeamDataChange = __OnNationTeamOneTeamDataChange

UINationTeamListInfoModel.__CheckHasSameCardId = __CheckHasSameCardId
UINationTeamListInfoModel.__ArrayHasSameElement = __ArrayHasSameElement
UINationTeamListInfoModel.__TableHasSameElement = __TableHasSameElement

return UINationTeamListInfoModel