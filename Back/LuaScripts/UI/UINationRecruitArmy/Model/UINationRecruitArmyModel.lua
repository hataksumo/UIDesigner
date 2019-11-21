
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationRecruitArmyModel = BaseClass("UINationRecruitArmyModel", UIBaseModel)
local base = UIBaseModel

local RECRUIT_MODE = { -- 征兵模式
    REDIF = 1, -- 立即征兵模式
	NORMAL = 2, -- 正常征兵
}

local CARD_ARMY_STATUS = { -- 征兵模式
	NONE_HAVE_CARD = 1, -- 此位置没有卡牌
	RECRUITING = 2, -- 正在征兵中
	MAX_ARMY = 3, -- 军力值已达上限
	NORMAL_ARMY = 4, -- 正常征兵
}

--local CARD_INDEXs_STATUS = { -- 征兵模式
--    NONE_HAVE_CARD = 1, -- 此位置没有卡牌
--    RECRUITING = 2, -- 正在征兵中
--    MAX_ARMY = 3, -- 军力值已达上限
--    NORMAL_ARMY = 4, -- 正常征兵
--}

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
	self.RES_ID = {
		NationDefine.ITEM_WOOD_ID,
		NationDefine.ITEM_IRON_ID,
		NationDefine.ITEM_STONE_ID, NationDefine.ITEM_FOOD_ID }

    self.CARD_ORDER_INDEX = {NationDefine.NATION_TEAM_CARD_INDEX.HOST1
    ,NationDefine.NATION_TEAM_CARD_INDEX.GUARD1
    ,NationDefine.NATION_TEAM_CARD_INDEX.HOST2
    ,NationDefine.NATION_TEAM_CARD_INDEX.GUARD2
    ,NationDefine.NATION_TEAM_CARD_INDEX.HOST3
    ,NationDefine.NATION_TEAM_CARD_INDEX.GUARD3
    } -- 正确顺序

    self.ConfirmBoxRecruitCancelText=DataUtil.GetClientText(200007)
    self.ConfirmBoxRecruitSureText=DataUtil.GetClientText(200006)
    self.ConfirmBoxRecruitTitle=DataUtil.GetClientText(200005)
    self.ConfirmBoxRecruitContent=DataUtil.GetClientText(200004)
    self.NoTeamCanDraft=DataUtil.GetClientText(200008)
    --self.ImmediaDes=DataUtil.GetClientText(200003)
    self.NoTeamCanStop=DataUtil.GetClientText(200009)
    self.StopRecruitArmyReturnTips =DataUtil.GetClientText(200327) -- 提前停止征募将只返还未完成征募数量所需%s的资源，是否确定停止征募？
    self.StopRecruitArmyReturnTipTitle =DataUtil.GetClientText(200330)
end

-- 打开
local function OnEnable(self,teamId)
	base.OnEnable(self)
	self.teamId = teamId
	self.recruitMode = self.RECRUIT_MODE.NORMAL -- 正常征兵模式

	-- 窗口关闭时可以清理的成员变量放这
	self:OnRefresh()
end

--[[获取卡牌招募状态]]
local function GetCardRecruitStatus(self, copyCardData)
	if copyCardData == nil then
		return self.CARD_ARMY_STATUS.NONE_HAVE_CARD
	end

	if copyCardData.armyST then
		return self.CARD_ARMY_STATUS.RECRUITING
	else
		if copyCardData.armyMax - copyCardData.copyArmy <= 0 then -- 军力值已达上限
			return self.CARD_ARMY_STATUS.MAX_ARMY
		else
			return self.CARD_ARMY_STATUS.NORMAL_ARMY
		end
	end
end


local function IsCardTablesRecruitingStatus(self)
	if self.nationCardTables == nil then
		return false
	end
	for i, v in pairs(self.nationCardTables) do
		if self:GetCardRecruitStatus(v) == self.CARD_ARMY_STATUS.RECRUITING then
			return true
		end
	end
	return false
end

-- 刷新全部数据
local function OnRefresh(self)
    self:__DoFlushTeam()
    self:__DoFlushCards()
    self:__DoFlushOther()
end


local function __DoFlushTeam(self)
    local nativeTeamData =  NationTeamData:GetInstance():GetNationTeamDataById(self.teamId)
    self.teamData = NationTeamData:GetInstance().CopyOneNationTeamData(nativeTeamData)
end

local function __DoFlushCards(self)
    self.nationCardTables = {}
    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    --self.teamData.armyST = false
    --local isCardRecruitArmyST = false
    for i, v in pairs(self.teamData.teamCardTables) do
        local dataCenterDyCardData = NationCardData:GetInstance():GetNationCardDataById(v)
        if dataCenterDyCardData ~= nil then
            -- 有卡牌 存储卡牌数据
            local copyCardData = NationCardData:GetInstance().CopyOneNationCardData(dataCenterDyCardData)
            if copyCardData ~= nil then
                -- 相关数据
                if currentTime <= copyCardData.endArmyTime then --状态是正在征兵
                    copyCardData.armyST = true
                    --isCardRecruitArmyST = true
                else
                    copyCardData.armyST = false
                end
                local noneNationData = CardData:GetInstance():GetCardDataById(copyCardData.id)
                copyCardData.starlv = noneNationData.starlv
                copyCardData.icon = noneNationData.icon
                copyCardData.quality = noneNationData.quality
                copyCardData.hunImg = SpriteDefine:GetCrystalIconByType(noneNationData.crystalType)
                copyCardData.hunTextImg = SpriteDefine:GetCrystalByCostNum(noneNationData.callCost)
                copyCardData.cardMainType = noneNationData.type

                copyCardData.copyCalcArmy = copyCardData.calcArmy -- 备份增加兵力值用于计算
                copyCardData.copyArmy = copyCardData.army -- 备份之前兵力值用于计算
                copyCardData.armyMax = NationCardData:GetInstance():GetCardNationArmyMax(v) -- 最大军力值
                --copyCardData.remindArmyMax = copyCardData.armyMax - copyCardData.copyCalcArmy -- 剩余可招募兵力
                copyCardData.armyGroupId = self.teamData.armyGroupId
                copyCardData.startMapID = self.teamData.currentBehavior.startMapID
                copyCardData.cropsConsumeMS = NationCardData:GetInstance():GetCardNationArmyCropsConsumeMS(v,copyCardData.armyGroupId,copyCardData.startMapID)
                copyCardData.cropsConsumeRes =  NationCardData:GetInstance():GetCardNationArmyCropsConsumeResource(v,copyCardData.armyGroupId,copyCardData.startMapID)
                self.nationCardTables[i] = copyCardData
            end
        end
    end
end

local function __DoFlushOther(self)
    -- 缓存现有资源
    self.currentResData = {}
    for i, v in ipairs(self.RES_ID) do
        self.currentResData[v] = math.modf(NationPlayerData:GetInstance():GetNationResourceRealNumByItemId(v))
    end
    -- 缓存储备兵力
    local startMapID = self.teamData.currentBehavior.startMapID
    local townData = NationTownData:GetInstance():GetNationTownDataById(startMapID)
    self.townData = {}
    self.townData.maxArmyReserve = townData.maxArmyReserve --最大储备兵力
    self.townData.townId = townData.townId -- 所在城镇
    self.townData.calcArmyReserve = townData.calcArmyReserve -- 储备兵力
    self.recruitReturnRate = NationCardData:GetInstance():GetRecruitReturnRate() -- 返还系数
end

-- 状态切换
local function __OnNationRecruitModeChange(self)
	if self.recruitMode == self.RECRUIT_MODE.NORMAL then
		self.recruitMode = self.RECRUIT_MODE.REDIF
	else
		self.recruitMode = self.RECRUIT_MODE.NORMAL
	end
	UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RECRUIT_MODE_CHANGE)
end

-- 若干张卡牌更新
local function __OnNationCardMultiFlush(self,cardIds)
    if self.nationCardTables == nil then
        return
    end

    if not self:__CheckHasSameCardId(cardIds) then
        return
    end

    self:__DoFlushTeam()
    self:__DoFlushCards()
    self:__DoFlushOther()

    -- 刷新界面
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RECRUIT_CARD_CHANGE)
end



local function __OnNationOneCardUpdate(self, cardId)
    if self.teamData == nil then
        return
    end

    if self.teamData.teamCardTables == nil then
        return
    end
    if not self.__TableHasSameElement(self.teamData.teamCardTables,cardId) then
        return
    end

    -- 征募结束之类的
    -- 刷新界面
    self:__DoFlushTeam()
    self:__DoFlushCards()
    self:__DoFlushOther()

    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RECRUIT_CARD_CHANGE)
end

local function __CheckHasSameCardId(self,list)
    for i, v in pairs(self.nationCardTables) do
        if self.__ArrayHasSameElement(list,v.id) then
            return true
        end
    end
    return false
end

local function __ArrayHasSameElement(list,elem)
    for j, v in ipairs(list) do
        if v == elem then
            return true
        end
    end
    return false
end

local function __TableHasSameElement(tab,elem)
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



-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_NATION_RECRUIT_MODE_CHANGE, self.__OnNationRecruitModeChange)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_RECRUIT_ARMY_END, self.__OnNationOneCardUpdate)

    self:AddDataListener(DataMessageNames.ON_NATION_PLAYER_DATA_FLUSH, self.__OnNationPlayerDataFlush)
    self:AddDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_FLUSH, self.__OnNationTownDataFlush)

    --self:AddDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.__OnNationOneCardUpdate)
    -- 招募结束
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_NATION_RECRUIT_MODE_CHANGE, self.__OnNationRecruitModeChange)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_RECRUIT_ARMY_END, self.__OnNationOneCardUpdate)


    self:RemoveDataListener(DataMessageNames.ON_NATION_PLAYER_DATA_FLUSH, self.__OnNationPlayerDataFlush)
    self:RemoveDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_FLUSH, self.__OnNationTownDataFlush)
    --self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.__OnNationOneCardUpdate)
end


local function __OnNationTownDataFlush(self,townId)
    if townId ~=  self.townData.townId then
        return
    end
    self:__DoFlushOther()
    -- 刷新界面
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RECRUIT_CARD_CHANGE)
end

local function __OnNationPlayerDataFlush(self)
    self:__DoFlushOther()
    -- 刷新界面
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RECRUIT_CARD_CHANGE)
end


-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	
end

-- 销毁
local function OnDestroy(self)
	base.OnDestroy(self)
	-- 清理成员变量

end

UINationRecruitArmyModel.OnCreate = OnCreate
UINationRecruitArmyModel.OnEnable = OnEnable
UINationRecruitArmyModel.OnRefresh = OnRefresh
UINationRecruitArmyModel.OnAddListener = OnAddListener
UINationRecruitArmyModel.OnRemoveListener = OnRemoveListener
UINationRecruitArmyModel.OnDisable = OnDisable
UINationRecruitArmyModel.OnDestroy = OnDestroy
UINationRecruitArmyModel.RECRUIT_MODE = RECRUIT_MODE
UINationRecruitArmyModel.CARD_ARMY_STATUS = CARD_ARMY_STATUS
UINationRecruitArmyModel.GetCardRecruitStatus = GetCardRecruitStatus
UINationRecruitArmyModel.IsCardTablesRecruitingStatus = IsCardTablesRecruitingStatus
UINationRecruitArmyModel.__OnNationRecruitModeChange = __OnNationRecruitModeChange
UINationRecruitArmyModel.__OnNationCardMultiFlush = __OnNationCardMultiFlush
UINationRecruitArmyModel.__OnNationOneCardUpdate = __OnNationOneCardUpdate
UINationRecruitArmyModel.__OnNationPlayerDataFlush = __OnNationPlayerDataFlush
UINationRecruitArmyModel.__OnNationTownDataFlush = __OnNationTownDataFlush


UINationRecruitArmyModel.__ArrayHasSameElement = __ArrayHasSameElement
UINationRecruitArmyModel.__TableHasSameElement = __TableHasSameElement

UINationRecruitArmyModel.__CheckHasSameCardId = __CheckHasSameCardId
UINationRecruitArmyModel.__DoFlushTeam = __DoFlushTeam
UINationRecruitArmyModel.__DoFlushCards = __DoFlushCards
UINationRecruitArmyModel.__DoFlushOther = __DoFlushOther


return UINationRecruitArmyModel