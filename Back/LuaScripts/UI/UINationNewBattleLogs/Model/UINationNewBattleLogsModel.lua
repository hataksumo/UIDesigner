--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UINationNewBattleLogsModel = BaseClass("UINationNewBattleLogsModel", UIBaseModel)
local base = UIBaseModel

local NationUtil = require "GameLogic.Nation.NationUtil"
local CARD_INDEX = {1,4,2,5,3,6}

--战斗的状态
local BattleState={
    All=1,--全部
    Attack=2,--攻击
    Defend=3,--防守
}
-- 服务器传的 进攻：1 防守：2
local NetAtkOrDefState={
    Atk=1,--进攻
    Def=2,--防守
}

-- 服务器传的 进攻：1 防守：2
local WIN_STATE={
    LOSE = 0,--失败
    WIN = 1 ,--胜利
    DRAW = 2,--平局
}

-- 根据一条网络消息创建一条完整的战斗日志
local function __InnerCreateFightLog(self,netLog)

    --message NationFightLogs{
    --optional int64 time = 1; //同时作为每一条战报的ID
    --optional int32 targetId = 2;//目标点
    --optional int32 startArmy = 3;//我方开始兵力
    --optional int32 endArmy = 4;//我方结束兵力
    --repeated int32 selfIcon = 5;// 前三个寄灵人，后三个守护灵，0就是没有
    --repeated int32 selfStar = 6;// 卡牌星级 0就是没有
    --optional int32 defStartArmy = 7;//敌方开始兵力
    --optional int32 defEndArmy = 8;//敌方结束兵力
    --repeated int32 defIcon = 9;// 前三个寄灵人，后三个守护灵，0就是没有
    --repeated int32 defStar = 10;// 卡牌星级 0就是没有
    --optional string unionName = 11;//我方联盟名，没有则为空
    --optional string selfName = 12;//我方名字
    --optional string defUnionName = 13;//敌方联盟名，没有则为空
    --optional string defName = 14;//敌方名字
    --optional int32 atkOrDef = 15;//进攻：1 防守：2
    --optional int32 killScore = 16;//攻城战得分
    --optional bool isLook = 17;//是否查看过战报详情
    --
    --optional bool isWin = 18;//是否胜利
    --}

    local item  = {}
    item.time = math.modf(netLog.time)
    item.targetId = math.modf(netLog.targetId)
    local targetBuildingName = NationMapInfoData:GetInstance():GetCellInfoName(item.targetId)
    local tilePosX, tilePosY = NationUtil.GetXYByCellId(item.targetId)
    item.targetName = string.format("%s (%s,%s)",targetBuildingName,tilePosX,tilePosY)
    item.atkOrDef = netLog.atkOrDef
    item.winState = netLog.winState
    item.isLook=netLog.isLook
    item.killScore=netLog.killScore
    local timeSecond = math.modf(item.time * 0.001)
    item.timeStr = os.date("%m月%d日 %H:%M:%S", timeSecond)

    item.selfCamp = self:__InnerCreateCampItem(netLog.selfUid,netLog.startArmy,netLog.endArmy,netLog.selfIcon,
            netLog.selfStar,netLog.unionName,netLog.selfName,item.atkOrDef == 1)
    item.enemyCamp = self:__InnerCreateCampItem(netLog.defUid,netLog.defStartArmy,netLog.defEndArmy,netLog.defIcon,
            netLog.defStar,netLog.defUnionName,netLog.defName,item.atkOrDef == 2)

    local isSelf = item.selfCamp:IsMy()
    if isSelf then
        item.lookSt = NationDefine.NATION_BATTLE_LOG_LOOK_ST.SELF
    else
        isSelf = item.enemyCamp:IsMy()
        if isSelf then
            item.lookSt = NationDefine.NATION_BATTLE_LOG_LOOK_ST.SELF
        else
            item.lookSt = NationDefine.NATION_BATTLE_LOG_LOOK_ST.UNION
        end
    end

    return item
end

--创建敌我双方的信息
local function __InnerCreateCampItem(self,uid,startArmy,endArmy,cardIds,stars,unionName,roleName,isAttackCamp)
    local campItem  = {}
    campItem.uid = uid
    campItem.startArmy = math.modf(startArmy)
    campItem.endArmy = math.modf(endArmy)
    campItem.unionName = unionName
    campItem.roleName = roleName
    campItem.cardIds ={}
    campItem.cardData = {}
    campItem.isAttackCamp = isAttackCamp

    for i, pos in ipairs(CARD_INDEX) do
        if cardIds == nil or cardIds._is_null then
        else
            local cardId = cardIds[pos]
            local oneStar = 0
            if stars == nil or stars._is_null then
            else
                oneStar = stars[pos]
                if oneStar == nil then
                    oneStar = 0
                end
            end
                local cardItem =  self:__InnerCreateCardItem(cardId,oneStar)
            if cardItem ~= nil then
                table.insert(campItem.cardData,cardItem)
                table.insert(campItem.cardIds,cardId)
            end
        end
    end

    -- 是否是我自己
    campItem.IsMy = function(self)
        local uid = UserData:GetInstance().roleID
       return uid == self.uid
    end
    return campItem
end

--创建卡牌信息
local function __InnerCreateCardItem(self,cardId,star)
    if cardId == 0 then
        return nil
    else
        local cardItem  = nil
        local staticCardData = nil
        staticCardData = self.allCardData[cardId]
        --cardItem.staticCardData = staticCardData
        if staticCardData ~= nil then
            --cardItem.starlv = staticCardData.starlv
            cardItem  = {}
            self:__AddCardAtt(cardItem,cardId,star,staticCardData,nil)
        else
            local monsterData = self.nationalWar_monster[cardId]
            if monsterData ~= nil then
                cardItem  = {}
                self:__AddCardAtt(cardItem,cardId,star,nil,monsterData)
            else
                Logger.LogErrorVars("此卡牌未找到 : cardId : ",cardId)
            end
        end
        return cardItem
    end
end

local function __AddCardAtt(self,cardItem,cardId,star, staticCardData,monsterData)
    cardItem.cardId = cardId
    cardItem.star = star
    cardItem.staticId = cardId
    if monsterData ~= nil then
        cardItem.icon = monsterData.Icon
        cardItem.quality = monsterData.Quality
        cardItem.hunTextImg = SpriteDefine:GetCrystalByCostNum(monsterData.CallCost)
        cardItem.hunImg = SpriteDefine:GetCrystalIconByType(monsterData.CrystalType)
        cardItem.cardMainType = monsterData.Type
    else
        cardItem.icon = staticCardData.Icon
        cardItem.quality = staticCardData.Quality
        cardItem.hunTextImg = SpriteDefine:GetCrystalByCostNum(staticCardData.CallCost)
        cardItem.hunImg = SpriteDefine:GetCrystalIconByType(staticCardData.CrystalType)
        cardItem.cardMainType = staticCardData.Type
    end
end


-- 初始化网络信息
local function __InitNetContent(self,lookState, msgObj)
    if msgObj == nil or msgObj._is_null then
        Logger.LogErrorVars("__InitNetContent  msgObj is null")
        return
    end

    local nationFightLogs = msgObj.nationFightLogs
    if nationFightLogs == nil or nationFightLogs._is_null then
        Logger.LogErrorVars("__InitNetContent  nationFightLogs is null")
        return
    end

    if lookState ==  NationDefine.NATION_BATTLE_LOG_LOOK_ST.SELF then
        self.fightSelfLogTable = {}
        for i, v in ipairs(nationFightLogs) do
            local item = self:__InnerCreateFightLog(v)
            self.fightSelfLogTable[item.time] = item
        end
        self.allSelfLogUnLook = self:__CheckAllLogUnLook() -- 是否有日志未查看过 如果为true可以设置为全部已读  false 不能
        self.myLookState = NationDefine.NATION_BATTLE_LOG_LOOK_ST.SELF -- 默认筛选规则 只看自己和全部
        self.myBattleState = self.BattleState.All
        self.unionId = NationUnionData:GetInstance():GetPlayerNationUnionData()
        self.hasUnion = self.unionId ~= 0  -- 我是否有联盟
        --Logger.LogVars("我获取的战斗日志为 : ",self.fightSelfLogTable)
    else
        self.fightUnionLogTable = {}
        for i, v in ipairs(nationFightLogs) do
            local item = self:__InnerCreateFightLog(v)
            self.fightUnionLogTable[item.time] = item
        end
        --Logger.LogVars("我获取的联盟战斗日志为 : ",self.fightUnionLogTable)
    end

end


-- 当改变看的规则
local function __onNationBattleLogsFilterLookChange(self,firstFlush,lookState,netMsgData)
    --Logger.LogErrorVars("__onNationBattleLogsFilterLookChange : lookState , ",lookState," firstFlush : ",firstFlush," data : ",netMsgData)
    self.myLookState = lookState
    if lookState ==  NationDefine.NATION_BATTLE_LOG_LOOK_ST.UNION then
        if firstFlush then
            self:__InitNetContent(lookState,netMsgData)
        end
    end
    self:__FlushWithModelData() --刷新model
    -- 刷新View
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_BATTLE_LOGS_VIEW_REFRESH,true)
end

-- 当改变进攻防守的规则
local function __onNationBattleLogsFilterCampChange(self,battleState)
    self.myBattleState =  battleState
    self:__FlushWithModelData() --刷新model
    -- 刷新View
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_BATTLE_LOGS_VIEW_REFRESH,true)
end


-- 检测所有日志有没有未查看的
local function __CheckAllLogUnLook(self)
    if self.fightSelfLogTable == nil then
        return false
    end

    for i, v in pairs(self.fightSelfLogTable) do
        if not v.isLook then
            return true
        end
    end
    return false
end


--根据model数据所有战斗日志刷新当前数据
local function __FlushWithModelData(self)
    self.fightLogList = {}

    if self.myLookState == NationDefine.NATION_BATTLE_LOG_LOOK_ST.SELF then
        if self.fightSelfLogTable ~= nil then
            for i, v in pairs(self.fightSelfLogTable) do
                if self.myLookState == v.lookSt then -- 看自己
                    if self.myBattleState == self.BattleState.All then -- 全部
                        table.insert(self.fightLogList,v)
                    else
                        if self.myBattleState == self.BattleState.Attack and   v.atkOrDef == self.NetAtkOrDefState.Atk   then -- 进攻
                            table.insert(self.fightLogList,v)
                        elseif self.myBattleState == self.BattleState.Defend and v.atkOrDef == self.NetAtkOrDefState.Def   then -- 防守
                            table.insert(self.fightLogList,v)
                        end
                    end
                end
            end
        end
    else
        if self.fightUnionLogTable ~= nil then
            for i, v in pairs(self.fightUnionLogTable) do
                    if self.myBattleState == self.BattleState.All then -- 全部
                        table.insert(self.fightLogList,v)
                    else
                        if self.myBattleState == self.BattleState.Attack and   v.atkOrDef == self.NetAtkOrDefState.Atk   then -- 进攻
                            table.insert(self.fightLogList,v)
                        elseif self.myBattleState == self.BattleState.Defend and v.atkOrDef == self.NetAtkOrDefState.Def   then -- 防守
                            table.insert(self.fightLogList,v)
                        end
                    end
            end
        end
    end


    table.sort(self.fightLogList, function(a, b)
        return a.time > b.time
    end)

    --Logger.LogVars(" __FlushWithModelData 刷新战斗日志 : ",self.fightLogList)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
    self.allCardData = DataUtil.GetData("card")
    self.nationalWar_monster = DataUtil.GetData("national_monster")

end

-- 打开
local function OnEnable(self,type, msgObj)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    self:__InitNetContent(type,msgObj)
    self:__FlushWithModelData()
    --self.logList = {}
    --__HandleFightLogsTime(self, msgObj)
    --self:OnRefresh()
end

-- 当接到已读的事件时候
local function __onNationBattleLogsAllIsRead(self)

    --Logger.LogErrorVars(" __onNationBattleLogsAllIsRead  : ")
    if self.fightSelfLogTable ~= nil then
        for i, v in pairs(self.fightSelfLogTable) do
            v.isLook = true
        end
        self.allSelfLogUnLook = false
    end
    -- 刷新
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_BATTLE_LOGS_VIEW_REFRESH,false)
end


-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_NATION_BATTLE_LOGS_ALL_IS_READ, __onNationBattleLogsAllIsRead);
    self:AddDataListener(DataMessageNames.ON_NATION_BATTLE_LOGS_FILTER_LOOK_CHANGE, __onNationBattleLogsFilterLookChange);
    self:AddDataListener(DataMessageNames.ON_NATION_BATTLE_LOGS_FILTER_CAMP_CHANGE, __onNationBattleLogsFilterCampChange);
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_BATTLE_LOGS_ALL_IS_READ, __onNationBattleLogsAllIsRead);
    self:RemoveDataListener(DataMessageNames.ON_NATION_BATTLE_LOGS_FILTER_LOOK_CHANGE, __onNationBattleLogsFilterLookChange);
    self:RemoveDataListener(DataMessageNames.ON_NATION_BATTLE_LOGS_FILTER_CAMP_CHANGE, __onNationBattleLogsFilterCampChange);
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.logList = {}

    self.fightLogList = nil
    self.fightSelfLogTable = nil
    self.fightUnionLogTable = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
    self.allCardData = nil
end

UINationNewBattleLogsModel.OnCreate = OnCreate
UINationNewBattleLogsModel.OnEnable = OnEnable
UINationNewBattleLogsModel.OnAddListener = OnAddListener
UINationNewBattleLogsModel.OnRemoveListener = OnRemoveListener
UINationNewBattleLogsModel.OnDisable = OnDisable
UINationNewBattleLogsModel.OnDestroy = OnDestroy

UINationNewBattleLogsModel.__InnerCreateCardItem = __InnerCreateCardItem
UINationNewBattleLogsModel.__InnerCreateCampItem = __InnerCreateCampItem
UINationNewBattleLogsModel.__InnerCreateFightLog = __InnerCreateFightLog
UINationNewBattleLogsModel.__InitNetContent = __InitNetContent
UINationNewBattleLogsModel.__AddCardAtt = __AddCardAtt
UINationNewBattleLogsModel.BattleState = BattleState
UINationNewBattleLogsModel.NetAtkOrDefState = NetAtkOrDefState
UINationNewBattleLogsModel.__FlushWithModelData = __FlushWithModelData
UINationNewBattleLogsModel.__CheckAllLogUnLook = __CheckAllLogUnLook
UINationNewBattleLogsModel.WIN_STATE = WIN_STATE


return UINationNewBattleLogsModel