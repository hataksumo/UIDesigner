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
    pos = 0,
    y = 0,
}

local UINationWarCellModel = BaseClass("UINationWarCellModel", UIBaseModel)
local base = UIBaseModel

local NationUtil = require "GameLogic.Nation.NationUtil"
local CardInfo = DataUtil.GetData("card")
local TeamDataModel = DataClass("TeamData", TeamData)
local GlobalData = DataUtil.GetData("global")

--更新战场队伍的列表
local function callBackUpdateTeamList(self, opCode, msgObj)
    if opCode == -1 then
        self.netMsgCanSend = true
        return
    end

    self.netMsgCanSend = true
    self.teamList = {}
    if msgObj ~= nil then
        for _, v in ipairs(msgObj) do
            local temp = TeamDataModel.New()
            temp.ID = 0
            temp.TeamID = v.teamId
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

            table.insert(self.teamList, temp)
        end

        table.sort(self.teamList, function(a, b)
            return a.Weight > b.Weight
        end)
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_WARCELL_TEAM_UPDATE, true)
end

local function GetBattleTeamList(self)
    if self.netMsgCanSend == false then
        return
    end
    self.netMsgCanSend = false
    NationNetManager:GetInstance():SendGetBattleTeamListData(self.ownerBuildID, self.cellID, NationDefine.NATION_TEAM_TYPE.Warcell, 0, Bind(self, callBackUpdateTeamList))
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
            temp.State = NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY

            if v.uid == UserData:GetInstance().roleID then
                temp.IsMine = true
                temp.Weight = 10000 + temp.Weight
            end

            table.insert(self.teamDefendList, temp)
        end
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_WARCELL_TEAM_UPDATE, false)--UI_NATION_WARCELL_TEAM_UPDATE
end

local function OnDataMsgUpdateCallBackFunc(self, opcode, cellID, msgObj)
    if opcode ~= 0 then
        UISpecial:GetInstance():UITipText(msgObj.msg)
        return
    end
    if self.cellID ~= cellID then
        return
    end

    self.state = msgObj.state
    local areaCellInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(self.cellID)
    if self.state == NationDefine.NATION_RESOURCE_POINT_STATE.Empty then
        self.data.duration = 1 .. "/" .. self.DurNeutral
        self.data.durationValue = 1 / self.DurNeutral
    else
        self.data.duration = math.modf(msgObj.siege) .. "/" .. areaCellInfo.Duration
        self.data.durationValue = math.modf(tonumber(msgObj.siege) / tonumber(areaCellInfo.Duration))
    end

    self.data.ownerPlayerName = msgObj.userName
    self.data.ownerGroupName = msgObj.unionName
    self.data.notBattleTime = tonumber(msgObj.avoidWarTime) / 1000
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_WARCELL_UPDATE_DETAIL)
end

local function OnDataMsgUpdateWarCellDetailData(self, msgObj)
    for _, v in ipairs(msgObj.war_cell_state) do
        if v.cellId == self.cellID and self.state ~= v.state then
            --请求数据
            NationNetManager:GetInstance():SendGetNationWarCellRequest(self.ownerBuildID, self.cellID, Bind(self, OnDataMsgUpdateCallBackFunc))
            break
        end
    end
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

    for _, v in pairs(GlobalData) do
        if v.Key == "ResDurNeutral" then
            self.DurNeutral = v.valueN
        elseif v.Key == "BattleAbandon" then
            self.BattleAbandon = v.valueN
        end
    end
end

-- 打开
local function OnEnable(self, tab)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    local package = tab.package
    self.cellID = tab.id
    self.state = package.state
    self.teamList = {}
    self.teamDefendList = {}

    self.netMsgCanSend = true

    local areaCellInfo = NationMapInfoData:GetInstance():GetCellInfoAndBuildingInfoByCellId(self.cellID)
    local monsterInfo = NationMapInfoData:GetInstance():GetNationalWar_m_guardByTypeAndLevel(NationDefine.NATION_WAR_GUARD_TYPE.BLOCK, areaCellInfo.BuildLv)

    self.ownerBuildID = areaCellInfo.BuildId
    local temp = {}
    temp.terrain = NationUtil.GetCellTerrainByType(areaCellInfo.Terrain)

    if self.state == NationDefine.NATION_RESOURCE_POINT_STATE.Empty then
        temp.duration = 1 .. "/" .. self.DurNeutral
        temp.durationValue = 1 / self.DurNeutral
    else
        temp.duration = math.modf(package.siege) .. "/" .. areaCellInfo.Duration
        temp.durationValue = math.modf(tonumber(package.siege) / tonumber(areaCellInfo.Duration))
    end
    temp.name = areaCellInfo.Name
    temp.buildLv = "Lv" .. areaCellInfo.BuildLv
    temp.ImagePosX = areaCellInfo.PaintingPos.x
    temp.ImagePosY = areaCellInfo.PaintingPos.y
    temp.ImageScale = areaCellInfo.PaintingRatio

    --  temp.pic = areaCellInfo.Pic
    local map_manager = NationCtrlManager:GetInstance():GetCurrentNationProxy().mapManager
    local build_id_sprite = map_manager:GetTileSpriteByBuildingIdAndLayer(self.ownerBuildID, NationDefine.MAP_DEFAULT_LAYER_NAME)
    temp.pic = build_id_sprite
    --Logger.Log(temp.pic)
    temp.difficult = DataUtil.GetClientText(200070) .. monsterInfo.Difficult
    temp.ownerPlayerName = package.userName
    temp.ownerGroupName = package.unionName
    temp.notBattleTime = tonumber(package.avoidWarTime) / 1000

    self.data = temp

    --坐标收藏
    self.collectPosID = NationCollectPosData:GetInstance():GetPosPointIDByData(self.ownerBuildID, self.cellID)

    --驻守是否解锁
    self.unlockFunc = {}
    self.unlockFunc.defend = NationScienceData:GetInstance():GetScienceEffectBoolType(NationDefine.NATION_TECH_TYPE.TEAM_DEFEND)

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
    self:AddDataListener(DataMessageNames.ON_NATION_DEFEND_TEAM_UPDATE, OnDataMsgUpdateDefendTeamList)
    self:AddDataListener(DataMessageNames.ON_NATION_UPDATE_WARCELL_STATE, OnDataMsgUpdateWarCellDetailData)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_DEFEND_TEAM_UPDATE, OnDataMsgUpdateDefendTeamList)
    self:RemoveDataListener(DataMessageNames.ON_NATION_UPDATE_WARCELL_STATE, OnDataMsgUpdateWarCellDetailData)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    if self.timer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.timer)
        self.timer = nil
    end

    self.collectPosID = nil
    self.netMsgCanSend = nil
    self.cellID = nil
    self.state = nil
    self.ownerBuildID = nil
    self.data = {}
    self.teamList = {}
    self.teamDefendList = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
    self.DurNeutral = nil
    self.BattleAbandon = nil
end

UINationWarCellModel.OnCreate = OnCreate
UINationWarCellModel.OnEnable = OnEnable
UINationWarCellModel.OnRefresh = OnRefresh
UINationWarCellModel.OnAddListener = OnAddListener
UINationWarCellModel.OnRemoveListener = OnRemoveListener
UINationWarCellModel.OnDisable = OnDisable
UINationWarCellModel.OnDestroy = OnDestroy

return UINationWarCellModel