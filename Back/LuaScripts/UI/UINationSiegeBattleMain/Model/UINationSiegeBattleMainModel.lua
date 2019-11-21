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
    ArmyGroupID = -1,
    ArmyGroup = "",
    State = -1,
    Weight = 0,
    IsMine = false,
    pos = 0, --计算item位置用
    y = 0, --计算item位置用
}

local EnumRoundState = {
    Prepare = 1, --准备
    Battle = 2, --战斗中
}

local RoundSeverDelayTime = 1

local UINationSiegeBattleMainModel = BaseClass("UINationSiegeBattleMainModel", UIBaseModel)
local base = UIBaseModel

local CardInfo = DataUtil.GetData("card")
local TeamDataModel = DataClass("TeamData", TeamData)

--合并两个列表，玩家守军和系统守军
local function HandleAllDefendTeamList(self)
    self.defendTeamTab = {}

    for _, v in ipairs(self.defendTeamPlayerTab) do
        table.insert(self.defendTeamTab, v)
    end

    for _, w in ipairs(self.defendTeamSystemTab) do
        table.insert(self.defendTeamTab, w)
    end

    table.sort(self.defendTeamTab, function(a, b)
        return a.Weight > b.Weight
    end)

    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_SIEGE_DEFENDTEAM_UPDATE)
end

--防守方玩家守军队伍
local function OnNewMsgUpdateDefendTeamPlayerData(sender, msgObj)
    sender.defendTeamPlayerTab = {}

    local tempTab = msgObj.Packages.defendTeam
    if tempTab == nil or tempTab._is_null then
        tempTab = {}
    end

    for _, v in ipairs(tempTab) do
        local temp = TeamDataModel.New()
        temp.ID = 0
        temp.TeamID = v.teamId or 0
        temp.PlayerName = v.userName
        temp.ArmyGroupID = v.unionId
        temp.ArmyGroup = v.unionName
        temp.Icon = CardInfo[v.userIcon].Icon
        temp.State = v.teamState

        if v.uid == sender.playerUID then
            temp.IsMine = true
            temp.Weight = 10000 + temp.Weight
        end

        if v.teamState == NationDefine.SIEGE_KILL_TEAM_STATE.WAITBATTLE then
            temp.Weight = 100 + temp.Weight
        elseif v.teamState == NationDefine.SIEGE_KILL_TEAM_STATE.PREPARE then
            temp.Weight = 10 + temp.Weight
        elseif v.teamState == NationDefine.SIEGE_KILL_TEAM_STATE.INBATTLE then
            temp.Weight = 1000 + temp.Weight
        end

        table.insert(sender.defendTeamPlayerTab, temp)
    end

    HandleAllDefendTeamList(sender)
end

--防守方系统守军队伍
local function OnNetMsgUpdateDefendTeamSystemData(sender, msgObj)
    sender.defendTeamSystemTab = {}

    local tempTab = msgObj.Packages.systemTeam
    if tempTab == nil or tempTab._is_null then
        tempTab = {}
    end

    sender.data.defendNPCRemainCount = #tempTab
    for _, v in ipairs(tempTab) do
        local temp = TeamDataModel.New()
        temp.ID = 0
        temp.TeamID = v.defendId or 0
        temp.PlayerName = v.name
        temp.ArmyGroup = ""
        temp.Icon = "head_ssr_suipian"
        temp.State = -1
        temp.Weight = 1

        if sender.state == 1 then
            temp.ArmyGroupID = NationUnionData:GetInstance():GetNationUnionId()
        else
            temp.ArmyGroupID = 0
        end

        table.insert(sender.defendTeamSystemTab, temp)
    end

    HandleAllDefendTeamList(sender)
end

--整理，排序进攻方的队伍列表
local function SortAttackTeamList(self, tab)
    self.attackTeamTab = {}

    if tab == nil or tab._is_null then
        tab = {}
    end

    for _, v in ipairs(tab) do
        local temp = TeamDataModel.New()
        temp.ID = 0
        temp.TeamID = v.teamId or 0
        temp.PlayerName = v.userName
        temp.ArmyGroupID = v.unionId
        temp.ArmyGroup = v.unionName
        temp.Icon = CardInfo[v.userIcon].Icon
        temp.State = v.teamState

        if v.uid == self.playerUID then
            temp.IsMine = true
            temp.Weight = 10000 + temp.Weight
        end

        if v.teamState == NationDefine.SIEGE_KILL_TEAM_STATE.WAITBATTLE then
            temp.Weight = 100 + temp.Weight
        elseif v.teamState == NationDefine.SIEGE_KILL_TEAM_STATE.PREPARE then
            temp.Weight = 10 + temp.Weight
        elseif v.teamState == NationDefine.SIEGE_KILL_TEAM_STATE.INBATTLE then
            temp.Weight = 1000 + temp.Weight
        end

        table.insert(self.attackTeamTab, temp)
    end

    table.sort(self.attackTeamTab, function(a, b)
        return a.Weight > b.Weight
    end)
end

--进攻方队伍
local function OnNetMsgUpdateAttackTeamData(sender, msgObj)
    --Logger.Log("刷新进攻方队列, 间隔（秒s）：".. TimeSyncManager:GetInstance():GetSimulationJavaMS()/1000 - sender.lastTime)
    SortAttackTeamList(sender, msgObj.Packages.attackTeam)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_SIEGE_ATTACKTEAM_UPDATE)
    --sender.lastTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()/1000
end

local function OnDataMsgRemoveMineTeam(self, teamID)
    if self.state == 1 then
        for k, v in ipairs(self.defendTeamPlayerTab) do
            if v.IsMine and v.TeamID == teamID then
                table.remove(self.defendTeamPlayerTab, k)
            elseif v.IsMine and v.State == NationDefine.SIEGE_KILL_TEAM_STATE.PREPARE then
                v.State = NationDefine.SIEGE_KILL_TEAM_STATE.WAITBATTLE
                v.Weight = v.Weight + 90
                break
            end
        end
        HandleAllDefendTeamList(self)
    else
        for k, v in ipairs(self.attackTeamTab) do
            if v.IsMine and v.TeamID == teamID then
                table.remove(self.attackTeamTab, k)
            elseif v.IsMine and v.State == NationDefine.SIEGE_KILL_TEAM_STATE.PREPARE then
                v.State = NationDefine.SIEGE_KILL_TEAM_STATE.WAITBATTLE
                v.Weight = v.Weight + 90
                break
            end
            --备战队伍变参战等待，若两个备战队伍怎么处理？
        end

        table.sort(self.attackTeamTab, function(a, b)
            return a.Weight > b.Weight
        end)
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_SIEGE_ATTACKTEAM_UPDATE)
    end
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

    self.playerUID = UserData:GetInstance().roleID
end

-- 打开
local function OnEnable(self, buildID, state, msgObj)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    --self.lastTime = 0
    self.buildID = buildID
    --0 中立，1， 我的联盟占领  2， 其他联盟占领
    self.state = state
    self.myUnionID = NationUnionData:GetInstance():GetNationUnionId()

    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(buildID)
    local monsterInfo = NationMapInfoData:GetInstance():GetNationalWar_m_guardByTypeAndLevel(NationDefine.NATION_WAR_GUARD_TYPE.YU_DU, buildInfo.BuildLv)

    local temp = {}

    temp.roundState = tonumber(msgObj.curState)
    temp.remainTime = math.modf(tonumber(msgObj.remainTime) / 1000) - 1
    if temp.roundState == EnumRoundState.Battle then
        temp.stateText = DataUtil.GetClientText(200166)
    else
        temp.stateText = DataUtil.GetClientText(200165)
    end

    temp.readyTime = buildInfo.ReadyTime + RoundSeverDelayTime
    temp.runningTime = buildInfo.RunningTime + RoundSeverDelayTime
    temp.curRound = math.modf(tonumber(msgObj.curStage))       --curRound
    temp.maxRound = buildInfo.KillingRounds
    temp.name = buildInfo.Name
    temp.difficult = DataUtil.GetClientText(200087) .. monsterInfo.Difficult
    temp.defendNPCRemainCount = #msgObj.sysDefendTeam
    temp.defendNPCMaxCount = monsterInfo.GuardNum

    if self.state == 1 then
        temp.camp = DataUtil.GetClientText(200180)
    else
        temp.camp = DataUtil.GetClientText(200181)
    end
    self.data = temp

    self.attackTeamTab = {}
    self.defendTeamTab = {}
    self.defendTeamPlayerTab = {}
    self.defendTeamSystemTab = {}

    SortAttackTeamList(self, msgObj.attackTeam)

    for _, v in ipairs(msgObj.defendTeam) do
        local temp = TeamDataModel.New()
        temp.ID = 0
        temp.TeamID = v.defendId or 0
        temp.PlayerName = v.name
        temp.PlayerName = v.userName
        temp.ArmyGroup = v.armyGroupId
        temp.Icon = CardInfo[v.userIcon].Icon
        temp.State = v.teamState

        if v.uid == self.playerUID then
            temp.IsMine = true
            temp.Weight = 10000 + temp.Weight
        end

        if v.teamState == NationDefine.SIEGE_KILL_TEAM_STATE.WAITBATTLE then
            temp.Weight = 100 + temp.Weight
        elseif v.teamState == NationDefine.SIEGE_KILL_TEAM_STATE.PREPARE then
            temp.Weight = 10 + temp.Weight
        elseif v.teamState == NationDefine.SIEGE_KILL_TEAM_STATE.INBATTLE then
            temp.Weight = 1000 + temp.Weight
        end

        table.insert(self.defendTeamTab, temp)
        table.insert(self.defendTeamPlayerTab, temp)
    end

    for _, v in ipairs(msgObj.sysDefendTeam) do
        local temp = TeamDataModel.New()
        temp.ID = 0
        temp.TeamID = v.defendId or 0
        temp.PlayerName = v.name
        temp.ArmyGroup = ""
        temp.Icon = "head_ssr_suipian"
        temp.State = -1
        temp.Weight = 1

        if self.state == 1 then
            temp.ArmyGroupID = NationUnionData:GetInstance():GetNationUnionId()
        else
            temp.ArmyGroupID = 0
        end

        table.insert(self.defendTeamTab, temp)
        table.insert(self.defendTeamSystemTab, temp)
    end

    table.sort(self.defendTeamTab, function(a, b)
        return a.Weight > b.Weight
    end)

    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

local function OnNetMsgKillActiveEnd(self,msg_obj)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_SIEGE_DEFENDTEAM_UPDATE,msg_obj)
end
-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听

    self:AddDataListener(DataMessageNames.ON_NATION_SIEGE_UPDATE_ATTACK_TEAM, OnNetMsgUpdateAttackTeamData)
    self:AddDataListener(DataMessageNames.ON_NATION_SIEGE_UPDATE_DEFEND_TEAM, OnNewMsgUpdateDefendTeamPlayerData)
    self:AddDataListener(DataMessageNames.ON_NATION_SIEGE_UPDATE_SYSTEM_TEAM, OnNetMsgUpdateDefendTeamSystemData)
    self:AddDataListener(DataMessageNames.ON_NATION_SIEGE_REMOVE_ONE_TEAM, OnDataMsgRemoveMineTeam)
    self:AddDataListener(DataMessageNames.ON_NATION_SIEGE_REMOVE_ONE_TEAM, OnDataMsgRemoveMineTeam)
    self:AddDataListener(DataMessageNames.ON_NATION_SIEGE_KILL_ACTIVE_END, OnNetMsgKillActiveEnd)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听

    self:RemoveDataListener(DataMessageNames.ON_NATION_SIEGE_UPDATE_ATTACK_TEAM, OnNetMsgUpdateAttackTeamData)
    self:RemoveDataListener(DataMessageNames.ON_NATION_SIEGE_UPDATE_DEFEND_TEAM, OnNewMsgUpdateDefendTeamPlayerData)
    self:RemoveDataListener(DataMessageNames.ON_NATION_SIEGE_UPDATE_SYSTEM_TEAM, OnNetMsgUpdateDefendTeamSystemData)
    self:RemoveDataListener(DataMessageNames.ON_NATION_SIEGE_REMOVE_ONE_TEAM, OnDataMsgRemoveMineTeam)
    self:RemoveDataListener(DataMessageNames.ON_NATION_SIEGE_KILL_ACTIVE_END, OnNetMsgKillActiveEnd)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.buildID = nil
    self.state = nil
    self.myUnionID = nil
    self.data = {}
    self.attackTeamTab = {}
    self.defendTeamTab = {}
    self.defendTeamSystemTab = {}
    self.defendTeamPlayerTab = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
    self.playerUID = nil
end

UINationSiegeBattleMainModel.OnCreate = OnCreate
UINationSiegeBattleMainModel.OnEnable = OnEnable
UINationSiegeBattleMainModel.OnRefresh = OnRefresh
UINationSiegeBattleMainModel.OnAddListener = OnAddListener
UINationSiegeBattleMainModel.OnRemoveListener = OnRemoveListener
UINationSiegeBattleMainModel.OnDisable = OnDisable
UINationSiegeBattleMainModel.OnDestroy = OnDestroy
UINationSiegeBattleMainModel.EnumRoundState = EnumRoundState

return UINationSiegeBattleMainModel