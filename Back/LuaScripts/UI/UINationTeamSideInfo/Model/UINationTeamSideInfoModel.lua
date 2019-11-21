--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local FLUSH_RESULT = {
    NONE_DATA = 1,
    CLOSE = 2,
    NORMAL = 3,
}

local UINationTeamSideInfoModel = BaseClass("UINationTeamSideInfoModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
    local nationGlobal = NationMapInfoData:GetInstance():GetNationalGlobal()
    self.QuickReturn = nationGlobal.QuickReturn
    self.allCardData = DataUtil.GetData("card")
end

-- 打开
local function OnEnable(self, nationArmyPath)
    base.OnEnable(self)
    self:FlushData(false, nationArmyPath)
end

local function FlushData(self, usedLocalData, nationArmyPath)
    if not usedLocalData then
        if nationArmyPath == nil then
            return self.FLUSH_RESULT.NONE_DATA
        end
    end
    if usedLocalData then
        nationArmyPath = self.marchData.nationArmyPath
        if nationArmyPath.uid == UserData:GetInstance().roleID then
            local myTeamData = NationTeamData:GetInstance():GetMyTeamDataByMarchId(nationArmyPath.marchId)
            nationArmyPath = NationTeamData:GetInstance().ConventMyTeam2NationMarchData(myTeamData)
        else
            --其他玩家
            nationArmyPath = NationMarchData:GetInstance():GetNationMarchDataById(nationArmyPath.marchId)
        end
        if nationArmyPath == nil then
            return self.FLUSH_RESULT.CLOSE
        end
    end
    self.marchData = {}
    self.marchData.nationArmyPath = nationArmyPath
    self.marchData.isSelf = nationArmyPath.uid == UserData:GetInstance().roleID
    self.marchData.campIndex = self.GetNationMarchCampByArmyPath(nationArmyPath.uid, nationArmyPath.unionId)

    if nationArmyPath.cardId ~= 0 then
        local staticCardData = self.allCardData[nationArmyPath.cardId]
        if staticCardData ~= nil then
            self.marchData.firstCard = {}
            self.marchData.firstCard.Icon = staticCardData.Icon
            self.marchData.firstCard.Quality = staticCardData.Quality
        end
    end
    if self.marchData.isSelf then
        --NATION_RETREAT_ST = {
        --	RESOURCE = 1, -- 资源区
        --	WAR_CELL = 2, --  接战区
        --	NONE = 3, --  错误
        --},
        --local BUILDING_TYPE_YU_DU = 1
        --local BUILDING_TYPE_WE_DU = 2
        --local BUILDING_TYPE_GUAN_AI = 3
        --local BUILDING_TYPE_TOWN = 4
        --local BUILDING_TYPE_RESOURCE = 5
        --local BUILDING_TYPE_PUNITIVE = 6

        self.marchData.cropsInfo = NationMapInfoData:GetInstance():GetNationalCropsById(nationArmyPath.armyGroupId)
        self.marchData.maxEndArmyTime = self.GetMaxEndArmyTime(nationArmyPath.teamCardTables)
        self.marchData.maxLastEndInJuryTime = self.GetMaxLastEndInJuryTime(nationArmyPath.teamCardTables)

        --	--local cellInfo, buildInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(nationArmyPath.targetMapID)
        --	--if cellInfo~= nil then
        --	--	--self.marchData.retreatStatus = NationDefine.NATION_RETREAT_ST.WAR_CELL
        --	--elseif buildInfo ~= nil then
        --	--	--if buildInfo.Type == NationUtil.BUILDING_TYPE_RESOURCE then
        --	--	--	--self.marchData.retreatStatus = NationDefine.NATION_RETREAT_ST.RESOURCE
        --	--	--elseif buildInfo.Type == NationUtil.BUILDING_TYPE_YU_DU or buildInfo.Type == NationUtil.BUILDING_TYPE_WE_DU
        --	--	--		or buildInfo.Type == NationUtil.BUILDING_TYPE_GUAN_AI then
        --	--	--	--self.marchData.retreatStatus = NationDefine.NATION_RETREAT_ST.SIEGE_KILL
        --	--	--else
        --	--	--	--self.marchData.retreatStatus = NationDefine.NATION_RETREAT_ST.NONE
        --	--	--end
        --	--
        --	--
        --	--
        --	--
        --	--
        --	--else
        --	--	self.marchData.retreatStatus = NationDefine.NATION_RETREAT_ST.NONE
        --	--end
        --else
        --	--self.marchData.retreatStatus = NationDefine.NATION_RETREAT_ST.NONE
    end
    return self.FLUSH_RESULT.NORMAL
end

--获取线的显示类型 1我自己的线 2 敌人的线 3 盟友的线
local function GetNationMarchCampByArmyPath(uid, unionId)
    if uid == UserData:GetInstance().roleID then
        -- 我自己的线
        return NationDefine.NATION_MARCH_CAMP_FLAG.SELF
    else
        local myUnionId = NationUnionData:GetInstance():GetNationUnionId()
        if myUnionId == 0 then
            return NationDefine.NATION_MARCH_CAMP_FLAG.ENEMY
        else
            if myUnionId == unionId then
                return NationDefine.NATION_MARCH_CAMP_FLAG.UNION
            else
                return NationDefine.NATION_MARCH_CAMP_FLAG.ENEMY
            end
        end
    end
end


-- 获取卡牌最大征兵时间
local function GetMaxEndArmyTime(teamCardTables)
    local lastTime = -1
    for k, v in pairs(teamCardTables) do
        if v ~= 0 then
            local dataCenterDyCardData = NationCardData:GetInstance():GetNationCardDataById(v)
            if dataCenterDyCardData == nil then
                Logger.LogError("获取卡牌数据不存在 卡牌id : " .. v)
            else
                if dataCenterDyCardData.endArmyTime > 0 then
                    if lastTime < dataCenterDyCardData.endArmyTime then
                        lastTime = dataCenterDyCardData.endArmyTime
                    end
                end
            end
        end
    end
    return lastTime
end

-- 获取卡牌最大负伤时间
local function GetMaxLastEndInJuryTime(teamCardTables)
    local lastTime = -1
    for k, v in pairs(teamCardTables) do
        if v ~= 0 then
            local dataCenterDyCardData = NationCardData:GetInstance():GetNationCardDataById(v)
            if dataCenterDyCardData == nil then
                Logger.LogError("获取卡牌数据不存在 卡牌id : " .. v)
            else
                if dataCenterDyCardData.endArmyTime > 0 then
                    if lastTime < dataCenterDyCardData.lastEndInJuryTime then
                        lastTime = dataCenterDyCardData.lastEndInJuryTime
                    end
                end
            end
        end
    end
    return lastTime
end

local function OnNationUnionTeamSideInfoUpdate(self, nationArmyPath)
    local flushResult = self:FlushData(false, nationArmyPath)
    UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE)
end

local function OnNationUnionTeamSideInfoClose(self, nationArmyPath)
    UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
end



local function __OnNationTeamMultiTeamDataChange(self,teamIds)
    if self.marchData == nil then
        return
    end

    if not self.marchData.isSelf then
        return
    end
    if not self.marchData.nationArmyPath  then
        return
    end
    if not self.__ArrayHasSameElement(teamIds,self.marchData.nationArmyPath.teamId) then
        return
    end

    local flushResult = self:FlushData(true)
    if flushResult == self.FLUSH_RESULT.NONE_DATA then
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
    elseif flushResult == self.FLUSH_RESULT.CLOSE then
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
    else
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE)
    end
end



local function __OnNationTeamOneTeamDataChange(self,teamId)
    if self.marchData == nil then
        return
    end

    if not self.marchData.isSelf then
        return
    end
    if not self.marchData.nationArmyPath  then
        return
    end
    if self.marchData.nationArmyPath.teamId ~= teamId then
        return
    end
    
    local flushResult = self:FlushData(true)
    if flushResult == self.FLUSH_RESULT.NONE_DATA then
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
    elseif flushResult == self.FLUSH_RESULT.CLOSE then
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
    else
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE)
    end
end

local function __OnNationOneCardUpdate(self, cardDataID)
    if self.marchData == nil then
        return
    end

    if not self.marchData.isSelf then
        return
    end

    local myTeamData = NationTeamData:GetInstance():GetMyTeamDataByMarchId(self.marchData.nationArmyPath.marchId)
    if myTeamData == nil then
        return
    end

    if not self.__CheckTeamCardTablesContainsOneCardId(myTeamData.teamCardTables,cardDataID) then
        return
    end

    local flushResult = self:FlushData(true)
    if flushResult == self.FLUSH_RESULT.NONE_DATA then
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
    elseif flushResult == self.FLUSH_RESULT.CLOSE then
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
    else
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE)
    end
end

local function __onNationMarchGoEnd(self, marchId)
    if self.marchData == nil then
        return
    end
    if self.marchData.isSelf then
        return
    end

    local nationArmyPath = self.marchData.nationArmyPath
    if nationArmyPath == nil then
        return
    end

    if marchId ~= nationArmyPath.marchId then
        return
    end

    UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
end

local function __onNationMarchListRemove(self, removeList)
    if self.marchData == nil then
        return
    end

    if self.marchData.isSelf then
        return
    end

    local nationArmyPath = self.marchData.nationArmyPath
    if nationArmyPath == nil then
        return
    end
    if removeList == nil then
        return
    end
    if table.length(removeList) < 1 then
        return
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
end


local function __OnNationCardMultiFlush(self, cardIds)

    if self.marchData == nil then
        return
    end

    if not self.marchData.isSelf then
        return
    end

    local myTeamData = NationTeamData:GetInstance():GetMyTeamDataByMarchId(self.marchData.nationArmyPath.marchId)
    if myTeamData == nil then
        return
    end

    if not self:__CheckTeamCardTablesContainsCardIds(myTeamData.teamCardTables,cardIds) then
        return
    end
    local flushResult = self:FlushData(true)
    if flushResult == self.FLUSH_RESULT.NONE_DATA then
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
    elseif flushResult == self.FLUSH_RESULT.CLOSE then
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE)
    else
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE)
    end
end

local function __CheckTeamCardTablesContainsOneCardId(teamCardTables,cardId)
    if teamCardTables == nil then
        return false
    end
    for k, v in pairs(teamCardTables) do
        if v ~= 0 then
            if v == cardId then
                return true
            end
        end
    end
    return false
end

local function __CheckTeamCardTablesContainsCardIds(self,teamCardTables,cardIds)
    if teamCardTables == nil then
        return false
    end
    for k, v in pairs(teamCardTables) do
        if v ~= 0 then
            if self.__ArrayHasSameElement(cardIds,v) then
                return true
            end
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
    self:AddDataListener(DataMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE, self.OnNationUnionTeamSideInfoUpdate)
    self:AddDataListener(DataMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE, self.OnNationUnionTeamSideInfoClose)


    self:AddDataListener(DataMessageNames.ON_NATION_TEAM_MULTI_TEAM_UPDATE, self.__OnNationTeamMultiTeamDataChange)
    self:AddDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, self.__OnNationTeamOneTeamDataChange)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_RECRUIT_ARMY_END, self.__OnNationOneCardUpdate)
    self:AddDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.__OnNationOneCardUpdate)



    self:AddDataListener(DataMessageNames.ON_NATION_MARCH_LIST_REMOVE, __onNationMarchListRemove)
    self:AddDataListener(DataMessageNames.ON_NATION_MARCH_GO_END, __onNationMarchGoEnd)

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE, self.OnNationUnionTeamSideInfoUpdate)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE, self.OnNationUnionTeamSideInfoClose)


    self:RemoveDataListener(DataMessageNames.ON_NATION_TEAM_MULTI_TEAM_UPDATE, self.__OnNationTeamMultiTeamDataChange)
    self:RemoveDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, self.__OnNationTeamOneTeamDataChange)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_MULTI_FLUSH, self.__OnNationCardMultiFlush)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_RECRUIT_ARMY_END, self.__OnNationOneCardUpdate)
    self:RemoveDataListener(DataMessageNames.ON_NATION_CARD_INJURY_END, self.__OnNationOneCardUpdate)

    self:RemoveDataListener(DataMessageNames.ON_NATION_MARCH_LIST_REMOVE, __onNationMarchListRemove)
    self:RemoveDataListener(DataMessageNames.ON_NATION_MARCH_GO_END, __onNationMarchGoEnd)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    self.marchData = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
    self.marchData = nil
end

UINationTeamSideInfoModel.OnCreate = OnCreate
UINationTeamSideInfoModel.OnEnable = OnEnable
UINationTeamSideInfoModel.OnAddListener = OnAddListener
UINationTeamSideInfoModel.OnRemoveListener = OnRemoveListener
UINationTeamSideInfoModel.OnDisable = OnDisable
UINationTeamSideInfoModel.OnDestroy = OnDestroy

UINationTeamSideInfoModel.OnNationUnionTeamSideInfoClose = OnNationUnionTeamSideInfoClose
UINationTeamSideInfoModel.OnNationUnionTeamSideInfoUpdate = OnNationUnionTeamSideInfoUpdate
UINationTeamSideInfoModel.GetNationMarchCampByArmyPath = GetNationMarchCampByArmyPath
UINationTeamSideInfoModel.GetMaxEndArmyTime = GetMaxEndArmyTime
UINationTeamSideInfoModel.GetMaxLastEndInJuryTime = GetMaxLastEndInJuryTime
UINationTeamSideInfoModel.FlushData = FlushData

UINationTeamSideInfoModel.FLUSH_RESULT = FLUSH_RESULT
UINationTeamSideInfoModel.__CheckTeamCardTablesContainsCardIds = __CheckTeamCardTablesContainsCardIds
UINationTeamSideInfoModel.__CheckTeamCardTablesContainsOneCardId = __CheckTeamCardTablesContainsOneCardId

UINationTeamSideInfoModel.__ArrayHasSameElement = __ArrayHasSameElement
UINationTeamSideInfoModel.__OnNationCardMultiFlush = __OnNationCardMultiFlush
UINationTeamSideInfoModel.__OnNationTeamOneTeamDataChange = __OnNationTeamOneTeamDataChange
UINationTeamSideInfoModel.__OnNationTeamMultiTeamDataChange = __OnNationTeamMultiTeamDataChange
UINationTeamSideInfoModel.__OnNationOneCardUpdate = __OnNationOneCardUpdate
return UINationTeamSideInfoModel