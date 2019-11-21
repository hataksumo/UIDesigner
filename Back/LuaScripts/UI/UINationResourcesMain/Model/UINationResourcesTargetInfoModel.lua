--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]
local TeamData = {
    ID = -1,
    TeamID = -1,
    Icon = "",
    PlayerName = "",
    ArmyGroup = "",
    ArmyGroupID = -1,
    Time = -1,
    State = -1,
    Weight = 0,
    IsMine = false,
    pos = 0, --计算item位置用
    y = 0, --计算item位置用
}

local ResPointData = {
    Name = "",
    Level = -1,
    ResImage = "",
    Endurance = "",
    EnduranceValue = -1,
    Terrain = "",
    Difficult = "",
    OwnerPlayer = "",
    OwnerGroup = "",
    Product = {},
}

local UINationResourcesTargetInfoModel = BaseClass("UINationResourcesTargetInfoModel", UIBaseModel)
local base = UIBaseModel
local ResPointInfo = DataUtil.GetData("national_res_info")
local ItemInfo = DataUtil.GetData("item")
local CardInfo = DataUtil.GetData("card")
local GlobalData = DataUtil.GetData("global")
local TeamDataModel = DataClass("TeamData", TeamData)
local ResPointDataModel = DataClass("ResPointData", ResPointData)
local NationUtil = require "GameLogic.Nation.NationUtil"

--更新战场队伍的列表数据
local function callBackUpdateTeamList(self, opCode, msgObj)
    if opCode == -1 then
        self.netMsgCanSend = true
        return
    end

    self.netMsgCanSend = true
    self.teamBattleList = {}
    if msgObj ~= nil then
        for _, v in ipairs(msgObj) do
            local temp = TeamDataModel.New()
            temp.ID = 0
            temp.TeamID = v.teamId or 0
            temp.Icon = CardInfo[v.userIcon].Icon
            temp.PlayerName = v.userName
            temp.ArmyGroup = v.unionName
            temp.ArmyGroupID = v.unionId
            temp.Time = math.modf(tonumber(v.nationTeamBehavior.endTime) / 1000)
            temp.State = v.nationTeamBehavior.status[1]

            if v.uid == UserData:GetInstance().roleID then
                temp.IsMine = true
                temp.Weight = 10000 + temp.Weight
            end

            if temp.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
                temp.Weight = 100 + temp.Weight
            elseif temp.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
                temp.Weight = 10 + temp.Weight
            elseif temp.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
                temp.Weight = 1000 + temp.Weight
            elseif temp.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.WAITING then
                temp.Weight = 100 + temp.Weight
            end

            table.insert(self.teamBattleList, temp)
        end

        table.sort(self.teamBattleList, function(a, b)
            return a.Weight > b.Weight
        end)
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_TEAM_REFRESH, true)
end

local function GetBattleTeamList(self)
    if self.netMsgCanSend == false then
        return
    end

    self.netMsgCanSend = false
    NationNetManager:GetInstance():SendGetBattleTeamListData(self.buildID, self.posID, NationDefine.NATION_TEAM_TYPE.Resources, 0, Bind(self, callBackUpdateTeamList))
end

local function StartTimerGetTeamList(self)
    local timer = 1
    local function updateTimer(self)
        timer = timer + 1
        if timer > 2 then
            GetBattleTeamList(self)
            timer = 0
        end
    end
    self.timer = TimerManager:GetInstance():SimpleTimerArgs(1, updateTimer, self, false, false)
end

--获得驻守队伍的数据
local function OnDataMsgUpdateDefendTeamList(self, msgObj)
    self.teamDefendList = {}
    if msgObj ~= nil then
        for _, v in ipairs(msgObj) do
            local temp = TeamDataModel.New()
            temp.ID = 0
            temp.TeamID = v.teamId
            temp.Icon = CardInfo[v.userIcon].Icon
            temp.PlayerName = v.userName
            temp.ArmyGroup = v.unionName
            temp.ArmyGroupID = v.unionId
            temp.State = v.nationTeamBehavior.status[1] or NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY
            temp.Time = math.modf(tonumber(v.nationTeamBehavior.endTime) / 1000)

            if v.uid == UserData:GetInstance().roleID then
                temp.IsMine = true
                temp.Weight = 10000 + temp.Weight
            end

            table.insert(self.teamDefendList, temp)
        end
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_TEAM_REFRESH, false)
end

local function OnNetMsgCallBackFunc(self, opcode, msgObj)
    if opcode ~= 0 then
        UISpecial:GetInstance():UITipText(msgObj.msg)
        return
    end

    self.battleTime = math.modf(msgObj.avoidWarTime / 1000)
    self.resPointData.OwnerPlayer = msgObj.userName
    self.resPointData.OwnerGroup = msgObj.unionName
    if self.state == NationDefine.NATION_RESOURCE_POINT_STATE.Empty then
        self.resPointData.Endurance = 1 .. "/" .. self.ResDurNeutral
        self.resPointData.EnduranceValue = 1 / self.ResDurNeutral
    else
        self.resPointData.Endurance = math.modf(msgObj.siege) .. "/" .. self.ResDurOccupied
        self.resPointData.EnduranceValue = msgObj.siege / self.ResDurOccupied
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_UPDATE_DETAIL)
end

local function OnNetMsgRefreshResPoint(sender, msgObj)
    for _, v in ipairs(msgObj.Packages.source_pos_state) do
        if v.pos == sender.posID and sender.state ~= v.state then
            sender.state = v.state
            NationNetManager:GetInstance():SendGetOneDetailResourcesPointData(sender.buildID, sender.posID, Bind(sender, OnNetMsgCallBackFunc))
            break
        end
    end
end

local function OnUIMsgDeleteCollectPoint(self)
    self.collectPosID = nil
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

    for _, v in pairs(GlobalData) do
        if v.Key == "ResDurNeutral" then
            self.ResDurNeutral = v.valueN
        elseif v.Key == "ResDurOccupied" then
            self.ResDurOccupied = v.valueN
        elseif v.Key == "ResAbandon" then
            self.ResAbandon = v.valueN
        end
    end
end

-- 打开
local function OnEnable(self, buildID, resID, posID, state, msg_obj)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    self.buildID = buildID
    self.resID = resID
    self.posID = posID
    self.battleTime = math.modf(msg_obj.avoidWarTime / 1000)
    self.state = state

    self.netMsgCanSend = true

    self.teamBattleList = {}
    self.teamDefendList = {}
    self.resPointData = {}

    local resPointInfo = ResPointInfo[self.resID]
    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(buildID)
    local monsterInfo = NationMapInfoData:GetInstance():GetNationalWar_m_guardByTypeAndLevel(NationDefine.NATION_WAR_GUARD_TYPE.RESOURCE, resPointInfo.level)

    local temp = ResPointDataModel.New()
    temp.Name = NationUtil.GetResNameByType(resPointInfo.Type)
    temp.Level = "Lv" .. resPointInfo.level
    temp.ResImage = resPointInfo.Pic
    if state == NationDefine.NATION_RESOURCE_POINT_STATE.Empty then
        temp.Endurance = 1 .. "/" .. self.ResDurNeutral
        temp.EnduranceValue = 1 / self.ResDurNeutral
    else
        temp.Endurance = math.modf(msg_obj.siege) .. "/" .. self.ResDurOccupied
        temp.EnduranceValue = msg_obj.siege / self.ResDurOccupied
    end
    temp.Terrain = NationUtil.GetCellTerrainByType(buildInfo.Terrain)
    temp.Difficult = DataUtil.GetClientText(200070) .. monsterInfo.Difficult
    temp.OwnerPlayer = msg_obj.userName
    temp.OwnerGroup = msg_obj.unionName

    local itemInfo = {}
    for k, v in ipairs(resPointInfo.addition) do
        itemInfo = ItemInfo[v.Id]
        temp.Product[k] = {}
        temp.Product[k].value = v.val
        temp.Product[k].name = itemInfo.Name
        temp.Product[k].resImage = itemInfo.Icon
    end
    self.resPointData = temp

    --坐标收藏
    self.collectPosID = NationCollectPosData:GetInstance():GetPosPointIDByData(self.buildID, self.posID)

    --驻守和采集是否解锁
    self.unlockFunc = {}
    self.unlockFunc.defend = NationScienceData:GetInstance():GetScienceEffectBoolType(NationDefine.NATION_TECH_TYPE.TEAM_DEFEND)
    self.unlockFunc.collect = NationScienceData:GetInstance():GetScienceEffectBoolType(NationDefine.NATION_TECH_TYPE.COLLECT_UNLOCK)

    GetBattleTeamList(self)
    StartTimerGetTeamList(self)
    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddUIListener(UIMessageNames.UI_NATION_POS_COLLECT_DELETE, OnUIMsgDeleteCollectPoint)
    self:AddDataListener(DataMessageNames.ON_NATION_DEFEND_TEAM_UPDATE, OnDataMsgUpdateDefendTeamList)
    self:AddDataListener(DataMessageNames.ON_NATION_RES_STATE_UPDATE, OnNetMsgRefreshResPoint)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveUIListener(UIMessageNames.UI_NATION_POS_COLLECT_DELETE, OnUIMsgDeleteCollectPoint)
    self:RemoveDataListener(DataMessageNames.ON_NATION_DEFEND_TEAM_UPDATE, OnDataMsgUpdateDefendTeamList)
    self:RemoveDataListener(DataMessageNames.ON_NATION_RES_STATE_UPDATE, OnNetMsgRefreshResPoint)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    if self.timer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.timer)
        self.timer = nil
    end

    self.netMsgCanSend = nil
    self.buildID = nil
    self.resID = nil
    self.posID = nil
    self.battleTime = nil
    self.state = nil
    self.collectPosID = nil

    self.teamBattleList = {}
    self.teamDefendList = {}
    self.resPointData = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
    self.ResDurNeutral = nil
    self.ResDurOccupied = nil
    self.ResAbandon = nil
end

UINationResourcesTargetInfoModel.OnCreate = OnCreate
UINationResourcesTargetInfoModel.OnEnable = OnEnable
UINationResourcesTargetInfoModel.OnRefresh = OnRefresh
UINationResourcesTargetInfoModel.OnAddListener = OnAddListener
UINationResourcesTargetInfoModel.OnRemoveListener = OnRemoveListener
UINationResourcesTargetInfoModel.OnDisable = OnDisable
UINationResourcesTargetInfoModel.OnDestroy = OnDestroy

return UINationResourcesTargetInfoModel