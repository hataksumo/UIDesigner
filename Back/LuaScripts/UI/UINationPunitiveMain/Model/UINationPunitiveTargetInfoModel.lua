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
    Weight = -1,
    IsMine = false,
}

local DropItemData = {
    ID = -1,
    ResImage = "",
    Quality = -1,
    Count = -1,
}

local OutlawData = {
    Name = "",
    Terrain = "",
    Difficult = "",
    ResImage = "",
    PosX = 0,
    PosY = 0,
    ResImageWidth = 0,
    ResImageHeight = 0,
}

local UINationPunitiveTargetInfoModel = BaseClass("UINationPunitiveTargetInfoModel", UIBaseModel)
local base = UIBaseModel
local OutlawMonsterInfo = DataUtil.GetData("national_crusade_info")
local ItemInfo = DataUtil.GetData("item")
local CardInfo = DataUtil.GetData("card")
local TeamDataModel = DataClass("TeamData", TeamData)
local DropItemDataModel = DataClass("DropItemData", DropItemData)
local OutlawDataModel = DataClass("OutlawData", OutlawData)
local NationUtil = require "GameLogic.Nation.NationUtil"

----数据发生变化时，刷新 or 实时刷新。
--local function OnNetMsgUpdateTeamData(sender, msg_obj)
--    --第一次推数据
--    if sender.IsLoadTeamData then
--        for _, v in ipairs(msg_obj.Packages.crusade_team_list) do
--            local temp = TeamDataModel.New()
--            temp.ID = 0  --todo
--            temp.TeamID = 0
--            temp.PlayerName = v.userName
--            temp.ArmyGroup = v.armyGroupId
--            temp.Icon = CardInfo[v.userIcon].Icon
--            temp.Time = tonumber(v.nationTeamBehavior.endTime) / 1000
--            temp.State = v.nationTeamBehavior.status[1]
--            --排序
--            if temp.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
--                temp.Weight = 2000000
--            elseif temp.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
--                temp.Weight = 1000000
--            elseif temp.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
--                temp.Weight = 3000000
--            end
--            temp.Weight = temp.Weight + tonumber(v.nationTeamBehavior.endTime - v.nationTeamBehavior.startTime) / 1000
--
--            table.insert(sender.teamDataList, temp)
--        end
--
--        table.sort(sender.teamDataList, function(a, b)
--            return a.Weight < b.Weight
--        end)
--        sender.IsLoadTeamData = false
--        return
--    end
--    --第二次，只推有改变的数据
--    for _, v in ipairs(msg_obj.Packages.crusade_team_list) do
--        for _, k in ipairs(sender.teamDataList) do
--            if k.ID == v.ID then
--                k.State = v.nationTeamBehavior.status[1]
--                k.Time = tonumber(v.nationTeamBehavior.endTime) / 1000
--                --排序
--                if k.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
--                    k.Weight = 2000000
--                elseif k.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
--                    k.Weight = 1000000
--                elseif k.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
--                    k.Weight = 3000000
--                end
--                k.Weight = k.Weight + (tonumber(v.nationTeamBehavior.endTime) - tonumber(v.nationTeamBehavior.startTime)) / 1000
--                break
--            end
--        end
--    end
--    table.sort(sender.teamDataList, function(a, b)
--        return a.Weight < b.Weight
--    end)
--    --刷新UI
--    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_PUNITIVE_TEAM_REFRESH)
--end
----添加，或刷新，自己的队伍数据
--local function OnNetMsgUpdateLocalPlayerTeamData(sender, msg_obj)
--    local v = msg_obj.Packages.crusade_team_data
--    --判断list 第一个数据是否为自己的队伍数据
--    if #sender.teamDataList <= 0 or sender.teamDataList[1].TeamID == 0 then
--        local temp = TeamDataModel.New()
--        temp.ID = 0 --todo
--        temp.PlayerName = v.userName
--        temp.ArmyGroup = v.armyGroupId
--        temp.Icon = CardInfo[v.userIcon].Icon
--        temp.Time = tonumber(v.nationTeamBehavior.endTime) / 1000
--        temp.State = v.nationTeamBehavior.status[1]
--        temp.TeamID = msg_obj.Packages.teamId
--        temp.Weight = 0
--
--        table.insert(sender.teamDataList, temp)
--    else
--        sender.teamDataList[1].State = v.nationTeamBehavior.status[1]
--        sender.teamDataList[1].Time = tonumber(v.nationTeamBehavior.endTime) / 1000
--    end
--
--    table.sort(sender.teamDataList, function(a, b)
--        return a.Weight < b.Weight
--    end)
--    --刷新UI
--    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_PUNITIVE_TEAM_REFRESH)
--end
--
----删除某个数据
--local function OnUIMsgRemoveTeamDataByID(self, id)
--    for k, v in ipairs(self.teamDataList) do
--        if v.ID == id then
--            self.teamDataList[k] = nil
--            break
--        end
--    end
--    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_PUNITIVE_TEAM_REFRESH)
--end
--
----滑动格子，向服务器请求数据
--local function OnDataMsgUpdateTeamData(self, msg_obj, index)
--    for _, v in ipairs(msg_obj) do
--        local temp = TeamDataModel.New()
--        temp.PlayerName = v.userName
--        temp.ArmyGroup = v.ArmyGroup
--        temp.Icon = CardInfo[v.userIcon].Icon
--        temp.Time = v.nationTeamBehavior.endTime - v.nationTeamBehavior.startTime
--        temp.State = v.nationTeamBehavior.status
--        table.insert(self.teamDataList, temp)
--    end
--
--    table.sort(self.teamDataList, function(a, b)
--        return a.Time < b.Time
--    end)
--
--    self.curTeamIndex = index
--    --实时更新的队伍数据
--    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_PUNITIVE_TEAM_REFRESH)
--end

local function OnUIMsgDeleteCollectPoint(self)
    self.collectPosID = nil
end

--更新战场队伍的列表
local function callBackUpdateTeamList(self, opCode, msgObj)
    if opCode == -1 then
        self.netMsgCanSend = true
        return
    end

    self.netMsgCanSend = true
    self.teamDataList = {}
    if msgObj ~= nil then
        for _, v in ipairs(msgObj) do
            local temp = TeamDataModel.New()
            temp.ID = 0
            temp.TeamID = v.teamId
            temp.Icon = CardInfo[v.userIcon].Icon
            temp.PlayerName = v.userName
            temp.ArmyGroup = v.unionName
            temp.ArmyGroupID = v.unionId
            temp.Time = math.modf(tonumber(v.nationTeamBehavior.endTime) / 1000) - math.modf((TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000))
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

            table.insert(self.teamDataList, temp)
        end

        table.sort(self.teamDataList, function(a, b)
            return a.Weight > b.Weight
        end)
    end

    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_PUNITIVE_TEAM_REFRESH)
end

local function GetBattleTeamList(self)
    if self.netMsgCanSend == false then
        return
    end

    self.netMsgCanSend = false
    NationNetManager:GetInstance():SendGetBattleTeamListData(self.buildID, self.posID, NationDefine.NATION_TEAM_TYPE.Punitive, self.areaID, Bind(self, callBackUpdateTeamList))
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

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
end

-- 打开
local function OnEnable(self, buildID, areaID, outlawID, posID)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这

    self.curTeamIndex = 0
    self.buildID = buildID
    self.areaID = areaID
    self.outlawID = outlawID
    self.posID = posID

    self.netMsgCanSend = true

    self.IsLoadTeamData = true
    self.teamDataList = {}
    self.dropItemList = {}
    self.outlawData = {}
    local outlawInfo = OutlawMonsterInfo[outlawID]
    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(buildID)
    local monsterInfo = NationMapInfoData:GetInstance():GetNationalWar_m_guardByTypeAndLevel(NationDefine.NATION_WAR_GUARD_TYPE.PUNITIVE, outlawInfo.Level)

    local tempInfo = {}
    for _, v in ipairs(outlawInfo.DropShow) do
        local temp = DropItemDataModel.New()
        tempInfo = ItemInfo[v.Id]
        temp.ID = v.Id
        temp.Count = v.Val
        temp.ResImage = tempInfo.Icon
        temp.Quality = tempInfo.Quality
        table.insert(self.dropItemList, temp)
    end

    local temp = OutlawDataModel.New()
    temp.Name = outlawInfo.Name .. "Lv" .. outlawInfo.Level
    temp.Terrain = NationUtil.GetCellTerrainByType(buildInfo.Terrain)
    temp.Difficult = DataUtil.GetClientText(200152) .. " Lv." .. monsterInfo.Difficult
    temp.ResImage = outlawInfo.Pic
    temp.PosX = outlawInfo.PaintingPos.x
    temp.PosY = outlawInfo.PaintingPos.y
    temp.ResImageWidth = outlawInfo.PaintingWidth
    temp.ResImageHeight = outlawInfo.PaintingHeight
    self.outlawData = temp

    --坐标收藏
    self.collectPosID = NationCollectPosData:GetInstance():GetPosPointIDByData(self.buildID, self.posID, self.areaID)

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
    --self:AddDataListener(DataMessageNames.ON_NATION_PUNITIVE_TEAM_UPDATE, OnDataMsgUpdateTeamData)
    --self:AddUIListener(UIMessageNames.UI_NATION_PUNITIVE_REMOVE_TEAMDATA, OnUIMsgRemoveTeamDataByID)
    self:AddUIListener(UIMessageNames.UI_NATION_POS_COLLECT_DELETE, OnUIMsgDeleteCollectPoint)
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBINDICATION_SYSC_CRUSADE_TEAM_LIST, OnNetMsgUpdateTeamData, self)
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBINDICATION_CRUSADE_MY_TEAM, OnNetMsgUpdateLocalPlayerTeamData, self)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    --self:RemoveDataListener(DataMessageNames.ON_NATION_PUNITIVE_TEAM_UPDATE, OnDataMsgUpdateTeamData)
    --self:RemoveUIListener(UIMessageNames.UI_NATION_PUNITIVE_REMOVE_TEAMDATA, OnUIMsgRemoveTeamDataByID)
    self:RemoveUIListener(UIMessageNames.UI_NATION_POS_COLLECT_DELETE, OnUIMsgDeleteCollectPoint)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBINDICATION_SYSC_CRUSADE_TEAM_LIST, OnNetMsgUpdateTeamData, self)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBINDICATION_CRUSADE_MY_TEAM, OnNetMsgUpdateLocalPlayerTeamData, self)
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
    self.curTeamIndex = nil
    self.buildID = nil
    self.areaID = nil
    self.outlawID = nil
    self.posID = nil

    self.netMsgCanSend = nil
    self.IsLoadTeamData = nil
    self.teamDataList = {}
    self.dropItemList = {}
    self.outlawData = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationPunitiveTargetInfoModel.OnCreate = OnCreate
UINationPunitiveTargetInfoModel.OnEnable = OnEnable
UINationPunitiveTargetInfoModel.OnRefresh = OnRefresh
UINationPunitiveTargetInfoModel.OnAddListener = OnAddListener
UINationPunitiveTargetInfoModel.OnRemoveListener = OnRemoveListener
UINationPunitiveTargetInfoModel.OnDisable = OnDisable
UINationPunitiveTargetInfoModel.OnDestroy = OnDestroy

return UINationPunitiveTargetInfoModel