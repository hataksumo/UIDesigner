--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]
local ResPointData = {
    ID = -1,
    PosID = -1,
    CurPosID = -1,
    AbandonTime = -1,
    State = -1,
    Name = "",
    Level = -1,
    ResImage = "",
    Type = -1,
    IsHaveDefend = false, --本地玩家的队伍在该资源点的状态， 是否有驻守
    IsHaveCollect = false, --本地玩家的队伍在该资源点的状态  是否有采集
}
local AreaItemData = {
    ID = -1,
    Name = "",
}

local UINationResourcesMainModel = BaseClass("UINationResourcesMainModel", UIBaseModel)
local base = UIBaseModel
local ResourcesAreaInfo = DataUtil.GetData("national_res_info")
local ResPointDataModel = DataClass("ResPointData", ResPointData)
local AreaItemDataModel = DataClass("AreaItemData", AreaItemData)
local GlobalData = DataUtil.GetData("global")
local NationUtil = require "GameLogic.Nation.NationUtil"

local function UpdateResPointList(self, msgobj)
    if msgobj ~= nil then
        for _, v in ipairs(msgobj) do
            self.ResourcesPointList[v.pos].State = v.state
            self.ResourcesPointList[v.pos].AbandonTime = math.modf(tonumber(v.abandonDefendTime) / 1000)
        end
    end
    --刷新UI
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_ResPoint_REFRESH)
end

local function OnNetMsgUpdateResPointList(self, msgobj)
    UpdateResPointList(self, msgobj.Packages.source_pos_state)
end

--更换分区后
local function OnUIMsgSelectArea(self, index)
    self.curSelectArea = index
    local startIndex = 1 + (self.curSelectArea - 1) * NationDefine.NATION_RESOURCES_EVERY_MAXCOUNT
    local endIndex = startIndex + NationDefine.NATION_RESOURCES_EVERY_MAXCOUNT - 1
    if endIndex > table.length(self.ResourcesPointList) then
        endIndex = table.length(self.ResourcesPointList)
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_SELECT_AREA_REFRESH)
    NationNetManager:GetInstance():SendMsgGetResourcesPointData(self.buildID, startIndex, endIndex, Bind(self, UpdateResPointList))
end

local function OnUIMsgSelectResPoint(self, type, level, id)
    local temp = {}
    temp.Type = type
    temp.Level = level
    temp.ID = id
    --只有改变搜索的目标时，刷新其他的slider
    if self.curSearchRes ~= nil and self.curSearchRes.Type ~= type then
        self.curSearchRes = temp
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_REFRESH_SEARCH)
    else
        self.curSearchRes = temp
    end
end

local function OnUIMsgFindOneResPoint(self, buildID, findTarget)
    if buildID ~= self.buildID then
        return
    end

    local index = findTarget % NationDefine.NATION_RESOURCES_EVERY_MAXCOUNT
    local area = math.modf(findTarget / NationDefine.NATION_RESOURCES_EVERY_MAXCOUNT)
    OnUIMsgSelectArea(self, area + 1)

    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_FIND_ONE_RES, index)
end

--本地玩家的队伍，行为更新，是否有驻守，和采集状态
local function OnDataMsgTeamStateChange(self, teamID)
    local isChange = false
    local myTeamData = NationTeamData:GetInstance():GetNationTeamDataById(teamID)

    if myTeamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND_RES then
        if myTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY then
            self.ResourcesPointList[myTeamData.currentBehavior.secondMapID].IsHaveDefend = true
            isChange = true
        end
    elseif myTeamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE_COLLECT then
        if myTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.COLLECT then
            self.ResourcesPointList[myTeamData.currentBehavior.secondMapID].IsHaveCollect = true
            isChange = true
        elseif myTeamData.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
            self.ResourcesPointList[myTeamData.currentBehavior.secondMapID].IsHaveCollect = false
            isChange = true
        end
    elseif myTeamData.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.BACK then
        --目前行为类型的撤退，只有驻守类型之后，会置为这个类型
        self.ResourcesPointList[myTeamData.currentBehavior.secondMapID].IsHaveDefend = false
        isChange = true
    end

    if isChange then
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_ResPoint_REFRESH)
    end
end

--处理，资源点是否有本地玩家队伍驻守，和采集状态
local function HandleMyTeamState(self)
    local myTeamData = NationTeamData:GetInstance():GetAllNationTeamDataDict()
    for _, v in ipairs(myTeamData) do
        if v.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND_RES then
            if v.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY then
                self.ResourcesPointList[v.currentBehavior.secondMapID].IsHaveDefend = true
            end
        elseif v.currentBehavior.type == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE_COLLECT then
            if v.currentBehavior.state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.COLLECT then
                self.ResourcesPointList[v.currentBehavior.secondMapID].IsHaveCollect = true
            end
        end
    end
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

    for _, v in pairs(GlobalData) do
        if v.Key == "ResAbandon" then
            self.ResAbandonTime = v.valueN
        end
    end

    self.buildID = nil
    self.curSelectArea = 1
end

-- 打开
local function OnEnable(self, buildID, findTarget)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    self.buildID = buildID or self.buildID

    --分区列表
    self.AreaList = {}
    --资源点列表
    self.ResourcesPointList = {}
    --资源点类型表
    self.ResPointTypeTab = {}
    --当前选择的资源点类型
    self.curSearchRes = nil

    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(self.buildID)
    self.maxAreaCount = buildInfo.Submap
    self.buildName = buildInfo.Name

    local resPointInfo = {}
    for k, v in pairs(buildInfo.ResMap) do
        resPointInfo = ResourcesAreaInfo[k]
        for _, w in ipairs(v.Pos) do
            local temp = ResPointDataModel.New()
            temp.ID = resPointInfo.Id
            temp.PosID = w
            temp.Type = resPointInfo.Type
            temp.CurPosID = w % NationDefine.NATION_RESOURCES_EVERY_MAXCOUNT
            temp.State = NationDefine.NATION_RESOURCE_POINT_STATE.Empty
            temp.AbandonTime = 0
            temp.Level = resPointInfo.level
            temp.Name = NationUtil.GetResNameByType(resPointInfo.Type) .. " Lv" .. resPointInfo.level
            temp.ResImage = resPointInfo.Pic

            self.ResourcesPointList[w] = temp
            --table.insert(self.ResourcesPointList, w, temp)
        end

        if self.ResPointTypeTab[resPointInfo.Type] == nil then
            self.ResPointTypeTab[resPointInfo.Type] = {}
            self.ResPointTypeTab[resPointInfo.Type].minLevel = resPointInfo.level
            self.ResPointTypeTab[resPointInfo.Type].maxLevel = resPointInfo.level
            self.ResPointTypeTab[resPointInfo.Type].ID = resPointInfo.Id
            self.ResPointTypeTab[resPointInfo.Type].Type = resPointInfo.Type
            self.ResPointTypeTab[resPointInfo.Type].ResImage = resPointInfo.Pic
        elseif resPointInfo.level > self.ResPointTypeTab[resPointInfo.Type].maxLevel then
            self.ResPointTypeTab[resPointInfo.Type].maxLevel = resPointInfo.level
        elseif resPointInfo.level < self.ResPointTypeTab[resPointInfo.Type].minLevel then
            self.ResPointTypeTab[resPointInfo.Type].minLevel = resPointInfo.level
        end
    end

    for i = 1, self.maxAreaCount do
        local temp = AreaItemDataModel.New()
        temp.ID = i
        temp.Name = i .. DataUtil.GetClientText(200071)

        table.insert(self.AreaList, temp)
    end

    --跳转
    if findTarget ~= nil then
        local index = findTarget % NationDefine.NATION_RESOURCES_EVERY_MAXCOUNT
        local area = math.modf(findTarget / NationDefine.NATION_RESOURCES_EVERY_MAXCOUNT)
        OnUIMsgSelectArea(self, area + 1)
        self.findTarget = index
    else
        OnUIMsgSelectArea(self, self.curSelectArea)
    end

    HandleMyTeamState(self)
    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, OnDataMsgTeamStateChange)
    self:AddDataListener(DataMessageNames.ON_NATION_RES_STATE_UPDATE, OnNetMsgUpdateResPointList)
    self:AddUIListener(UIMessageNames.UI_NATION_RESOURCE_SELECT_AREA, OnUIMsgSelectArea)
    self:AddUIListener(UIMessageNames.UI_NATION_RESOURCE_SELECT_ResPoint, OnUIMsgSelectResPoint)
    self:AddUIListener(UIMessageNames.UI_NATION_RESOURCE_SET_FIND_TARGET_RES, OnUIMsgFindOneResPoint)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_TEAM_BEHAVIOR_CHANGE, OnDataMsgTeamStateChange)
    self:RemoveDataListener(DataMessageNames.ON_NATION_RES_STATE_UPDATE, OnNetMsgUpdateResPointList)
    self:RemoveUIListener(UIMessageNames.UI_NATION_RESOURCE_SELECT_AREA, OnUIMsgSelectArea)
    self:RemoveUIListener(UIMessageNames.UI_NATION_RESOURCE_SELECT_ResPoint, OnUIMsgSelectResPoint)
    self:RemoveUIListener(UIMessageNames.UI_NATION_RESOURCE_SET_FIND_TARGET_RES, OnUIMsgFindOneResPoint)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    self.maxAreaCount = nil
    self.findTarget = nil
    self.buildName = nil

    self.curSearchRes = {}
    self.AreaList = {}
    self.ResourcesPointList = {}
    self.ResPointTypeTab = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
    self.buildID = nil
    self.curSelectArea = nil
    self.ResAbandonTime = nil
end

UINationResourcesMainModel.OnCreate = OnCreate
UINationResourcesMainModel.OnEnable = OnEnable
UINationResourcesMainModel.OnRefresh = OnRefresh
UINationResourcesMainModel.OnAddListener = OnAddListener
UINationResourcesMainModel.OnRemoveListener = OnRemoveListener
UINationResourcesMainModel.OnDisable = OnDisable
UINationResourcesMainModel.OnDestroy = OnDestroy

return UINationResourcesMainModel