--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationMainModel = BaseClass("UINationMainModel", UIBaseModel)
local base = UIBaseModel

local NationUtil = require "GameLogic.Nation.NationUtil"
local ItemInfo = DataUtil.GetData("item")

--聊天更新,todo
local function OnChatUpdate(self)
    local chatList = ChatData:GetInstance().world_list
    self.WordChatData = {}
    local index = #chatList - 1
    for i = 1, 2 do
        if chatList[index] ~= nil then
            table.insert(self.WordChatData, string.format("<color=#7f4a2d>世：</color>%s：%s", chatList[index].name, chatList[index].content))
        end
        index = index + 1
    end
    self:UIBroadcast(UIMessageNames.UIMAINCITY_CHAT_UPDATE)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
    self.RES_ID = {
        NationDefine.ITEM_DECREE_ID,
        NationDefine.ITEM_WOOD_ID,
        NationDefine.ITEM_IRON_ID,
        NationDefine.ITEM_STONE_ID, NationDefine.ITEM_FOOD_ID }
    self.allCardData = DataUtil.GetData("card")
end

-- 打开
local function OnEnable(self)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    local userdata = UserData:GetInstance()
    self.playerName = userdata.name
    self.playerHeadImg = ItemInfo[userdata.pHead].Icon
    self.selectMarchId = nil -- 未选中队伍时候是0
    self:FlushTeamData(true)
    self:GetNationResource()
    self:GetNationFame(false)
    self.unionId = NationUnionData:GetInstance():GetPlayerNationUnionData()
    OnChatUpdate(self)
end

local function FlushMyUnion(self)
    self.unionId = NationUnionData:GetInstance():GetPlayerNationUnionData()
    self:GetNationResource()
end

local function FlushTeamData(self, firstIn)
    local teamList = NationTeamData:GetInstance():GetAllNotEmptyTeamData()
    self.allTeamMap = {}
    self.allTeamList = {}

    --todo,优化
    if table.length(teamList) <= 0 then
        local temp = {}
        temp.isReturnTown = true
        temp.title = "我的城镇"
        temp.buildID = NationPlayerData:GetInstance().bornTown
        local posX, posY = NationUtil.GetXYByCellId(temp.buildID)
        temp.pos = string.format("(%s,%s)", posX, posY)
        table.insert(self.allTeamList, temp)
    end
    --todo,end

    for i, v in ipairs(teamList) do
        local tempData = NationTeamData:GetInstance().CopyOneNationTeamData(v)
        tempData.teamCardNeedDataTables = {}
        for i, cardId in pairs(tempData.teamCardTables) do
            if cardId ~= 0 then
                local dataCenterDyCardData = NationCardData:GetInstance():GetNationCardDataById(cardId)
                if dataCenterDyCardData == nil then
                    Logger.LogError("获取卡牌数据不存在 卡牌id : " .. cardId)
                else
                    local myDyCardData = {}
                    myDyCardData.id = dataCenterDyCardData.id
                    myDyCardData.startArmyTime = dataCenterDyCardData.startArmyTime
                    myDyCardData.endArmyTime = dataCenterDyCardData.endArmyTime
                    myDyCardData.lastEndInJuryTime = dataCenterDyCardData.lastEndInJuryTime
                    tempData.teamCardNeedDataTables[i] = myDyCardData
                    --table.insert(tempData.teamCardNeedDataTables[i] ,myDyCardData)
                end
            end
        end

        tempData.maxEndArmyTime = self:GetMaxEndArmyTime(tempData.teamCardNeedDataTables)
        tempData.maxLastEndInJuryTime = self:GetMaxLastEndInJuryTime(tempData.teamCardNeedDataTables)
        local firstCardId = NationTeamData:GetInstance().GetFirstNotNullTeamCardIdByCardTables(tempData.teamCardTables)
        tempData.cardId = firstCardId
        tempData.firstCard = {}
        tempData.firstCard.CardId = firstCardId
        if firstCardId ~= 0 then
            local staticCardData = self.allCardData[firstCardId]
            if staticCardData ~= nil then
                tempData.firstCard.Icon = staticCardData.Icon
                tempData.firstCard.Quality = staticCardData.Quality
            end
        end

        self.allTeamMap[v.marchId] = tempData
        table.insert(self.allTeamList, tempData)
    end
end

-- 获取卡牌最大征兵时间
local function GetMaxEndArmyTime(self, cards)
    local lastTime = -1
    for i, v in pairs(cards) do
        if v.endArmyTime > 0 then
            if lastTime < v.endArmyTime then
                lastTime = v.endArmyTime
            end
        end
    end
    return lastTime
end
-- 获取卡牌最大负伤时间
local function GetMaxLastEndInJuryTime(self, cards)
    local lastTime = -1
    for i, v in ipairs(cards) do
        if v ~= nil then
            if v.lastEndInJuryTime > 0 then
                if lastTime < v.lastEndInJuryTime then
                    lastTime = v.lastEndInJuryTime
                end
            end
        end
    end
    return lastTime
end



-- 刷新全部数据
local function OnRefresh(self)

end

local function GetNationResAndFame(self)
    self:GetNationResource()
    self:GetNationFame(false)
end

local function GetNationResource(self)

    self.allRes = {}
    for i, v in ipairs(self.RES_ID) do
        local tempData = self.allRes[v]
        local isCreate = false
        if tempData == nil then
            tempData = {}
            isCreate = true
        end
        tempData.id = v
        tempData.num, tempData.maxNum, tempData.lastTime, tempData.rateMS, tempData.incRate = NationPlayerData:GetInstance():GetNationResourceNumByTime(v)
        tempData.num = math.modf(tempData.num)
        local tempVal = NationPlayerData:GetInstance():GetNationResourceIncreaseHourAmount(tempData.id)
        tempData.increaseRate = math.modf(tempVal)
        tempData.icon = ItemInfo[tempData.id].Icon
        tempData.name = ItemInfo[tempData.id].Name

        if isCreate then
            self.allRes[v] = tempData
        end
    end

    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_MAIN_USER_RESOURCE_UPDATE)

end

local function GetNationFame (self, checkSendMessage)
    local fameData = NationPlayerData:GetInstance():GetCurrentNationFameData()
    --local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    local occupyNum = NationOccupyData:GetInstance():GetAllPlayerNationOccupyNumAndMax()

    local levelChange
    if checkSendMessage then
        if fameData.realFameLevel ~= self.fameLevel then
            levelChange = true
        end
    end

    --self.nationFame.exp = tonumber(data.fameExp) -- 当前经验
    --self.nationFame.lastTime = tonumber(data.lastFameTime)
    --self.nationFame.fameLevel = tonumber(data.famelevel) -- 当前等级
    --self.nationFame.realFameLevel = self.nationFame.fameLevel
    --self.nationFame.realExp = self.nationFame.exp -- 当前真正经验
    --local fameLevel, fameLevelData = self:GetNationFameExpLevelAndData(self.nationFame.realExp)
    --self.nationFame.DecreeMax = fameLevelData.DecreeMax
    --self.nationFame.OccupyNumMax = fameLevelData.OccupyNum
    --self.nationFame.realFameLevel = fameLevel
    --local fameExp = NationPlayerData:GetInstance():GetNationFameExpByTime(currentTime)
    --local fameLevel,fameExpData = NationPlayerData:GetInstance():GetNationFameExpLevelAndData(fameExp)
    --local occupyNum = table.count(NationTownData:GetInstance():GetAllNationTownDatas())

    self.fameLevel = math.modf(fameData.realFameLevel)
    self.OccupyNumMax = math.modf(fameData.OccupyNumMax +
            NationScienceData:GetInstance():GetScienceEffectAddByType(NationDefine.NATION_TECH_TYPE.TERRITORY_MAX))
    self.occupyNum = occupyNum
    self.FameSpeedSec = NationPlayerData:GetInstance().FameSpeedSec
    self.FameMaxData = NationPlayerData:GetInstance().FameMaxData
    self.fameExp = fameData.realExp
    self.fameLastTime = fameData.lastTime
    self.influenceValue = NationTownData:GetInstance():GetUserNationTownInfluenceValue() +
            NationOccupyData:GetInstance():GetUserOccupyInfluenceValue()
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_MAIN_USER_FAME_UPDATE)
    --if levelChange then
    --	NationNetManager:GetInstance():SendSyncNationFameRequest(nil)
    --end
end

local function __OnNationCardMultiFlush(self, cardIds)
    local allTeamCards = NationTeamData:GetInstance():GetAllCardInTeams()
    if allTeamCards == nil then
        return
    end

    if not self:__CheckHasSameCardIds(allTeamCards, cardIds) then
        return
    end

    self:FlushTeamData()
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_MY_TEAM_SIDE_FLUSH)
end

local function __CheckHasSameCardIds(self, list1, list2)
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

local function OnNationTeamDataChange(self)
    self:FlushTeamData()
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_MY_TEAM_SIDE_FLUSH)
end

local function OnNationCardUpdate(self, cardDataID)
    local allTeamCards = NationTeamData:GetInstance():GetAllCardInTeams()
    if allTeamCards == nil then
        return
    end
    if not self.__ArrayHasSameElement(allTeamCards, cardDataID) then
        return
    end
    self:FlushTeamData()
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_MY_TEAM_SIDE_FLUSH)
end

local function OnNationOneTeamMarchSelect(self, marchId, uid, teamId)
    if uid ~= UserData:GetInstance().roleID then
        -- select == null
        self.selectMarchId = nil
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_MY_TEAM_SIDE_FLUSH)
        return
    end
    self.selectMarchId = marchId
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_MY_TEAM_SIDE_FLUSH)
end


--更新主线任务
local function UpdateMainTaskData()
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_MAIN_TASK_REFRESH)
end


-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_NATION_ONE_TEAM_MARCH_SELECT, self.OnNationOneTeamMarchSelect)

    self:AddDataListener(DataMessageNames.ON_NAITON_PLAYER_FAME_VALUE_CHANGE, GetNationFame)
    self:AddDataListener(DataMessageNames.ON_NATION_PLAYER_RES_VALUE_CHANGE, GetNationResAndFame)
    self:AddDataListener(DataMessageNames.ON_NATION_PLAYER_DATA_FLUSH, GetNationResAndFame)
    self:AddDataListener(DataMessageNames.ON_NATION_UI_FAME_TIMER_UPDATE, GetNationFame)

    self:AddDataListener(DataMessageNames.ON_NATION_ALL_RES_AREA_DATA_FLUSH, GetNationResAndFame)
    self:AddDataListener(DataMessageNames.ON_NATION_ALL_WAR_CELL_DATA_FLUSH, GetNationFame)
    self:AddDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_ACTIVE, GetNationFame)

    self:AddDataListener(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH, self.FlushMyUnion)

    self:AddDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, OnNationTeamDataChange)
    self:AddDataListener(DataMessageNames.ON_NATION_TEAM_MULTI_TEAM_UPDATE, OnNationTeamDataChange)

    self:AddDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_RECRUIT_ARMY_END, self.OnNationCardUpdate)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.OnNationCardUpdate)

    self:AddDataListener(DataMessageNames.ON_CHAT_UPDATE, OnChatUpdate)
    self:AddDataListener(DataMessageNames.ON_NATION_MAIN_TASK_UPDATE, UpdateMainTaskData)

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_ONE_TEAM_MARCH_SELECT, self.OnNationOneTeamMarchSelect)

    self:RemoveDataListener(DataMessageNames.ON_NAITON_PLAYER_FAME_VALUE_CHANGE, GetNationFame)
    self:RemoveDataListener(DataMessageNames.ON_NATION_PLAYER_RES_VALUE_CHANGE, GetNationResAndFame)
    self:RemoveDataListener(DataMessageNames.ON_NATION_PLAYER_DATA_FLUSH, GetNationResAndFame)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UI_FAME_TIMER_UPDATE, GetNationFame)

    self:RemoveDataListener(DataMessageNames.ON_NATION_ALL_RES_AREA_DATA_FLUSH, GetNationResAndFame)
    self:RemoveDataListener(DataMessageNames.ON_NATION_ALL_WAR_CELL_DATA_FLUSH, GetNationFame)
    self:RemoveDataListener(DataMessageNames.ON_NATION_USER_TOWN_DATA_ACTIVE, GetNationFame)
    self:RemoveDataListener(DataMessageNames.ON_NATION_USER_UNION_DATA_FLUSH, self.FlushMyUnion)

    self:RemoveDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, OnNationTeamDataChange)
    self:RemoveDataListener(DataMessageNames.ON_NATION_TEAM_MULTI_TEAM_UPDATE, OnNationTeamDataChange)

    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_RECRUIT_ARMY_END, self.OnNationCardUpdate)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.OnNationCardUpdate)

    self:RemoveDataListener(DataMessageNames.ON_CHAT_UPDATE, OnChatUpdate)
    self:RemoveDataListener(DataMessageNames.ON_NATION_MAIN_TASK_UPDATE, UpdateMainTaskData)
end


-- 关闭

local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    self.playerName = nil
    self.playerHeadImg = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
    self.allCardData = nil
end

UINationMainModel.OnCreate = OnCreate
UINationMainModel.OnEnable = OnEnable
UINationMainModel.OnRefresh = OnRefresh
UINationMainModel.OnAddListener = OnAddListener
UINationMainModel.OnRemoveListener = OnRemoveListener
UINationMainModel.OnDisable = OnDisable
UINationMainModel.OnDestroy = OnDestroy
UINationMainModel.GetNationResource = GetNationResource
UINationMainModel.GetNationFame = GetNationFame
UINationMainModel.GetNationResAndFame = GetNationResAndFame
UINationMainModel.FlushMyUnion = FlushMyUnion

UINationMainModel.FlushTeamData = FlushTeamData
UINationMainModel.GetMaxEndArmyTime = GetMaxEndArmyTime
UINationMainModel.GetMaxLastEndInJuryTime = GetMaxLastEndInJuryTime
UINationMainModel.OnNationTeamDataChange = OnNationTeamDataChange
UINationMainModel.OnNationCardUpdate = OnNationCardUpdate
UINationMainModel.OnNationOneTeamMarchSelect = OnNationOneTeamMarchSelect
UINationMainModel.__OnNationCardMultiFlush = __OnNationCardMultiFlush
UINationMainModel.__CheckHasSameCardIds = __CheckHasSameCardIds
UINationMainModel.__ArrayHasSameElement = __ArrayHasSameElement

return UINationMainModel