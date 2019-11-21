--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]
local OutlawData = {
    CrusadeID = -1,
    PosID = -1,
    Name = "",
    ResImage = "",
    Level = -1,
    ModelID = -1,
}
local AreaItemData = {
    ID = -1,
    Name = "",
}

local UINationPunitiveMainModel = BaseClass("UINationPunitiveMainModel", UIBaseModel)
local base = UIBaseModel
local OutlawMonsterInfo = DataUtil.GetData("national_crusade_info")
local OutlawDataModel = DataClass("OutlawData", OutlawData)
local AreaItemDataModel = DataClass("AreaItemData", AreaItemData)

local function OnUIMsgSelectMonster(self, monsterType, monsterID, level)
    local temp = {}
    temp.ID = monsterID
    temp.Level = level
    temp.Type = monsterType
    if self.curSearchMonster ~= nil and self.curSearchMonster.Type ~= monsterType then
        --莫删，刷新UIMonsterTypeItem里用这个
        self.curSearchMonster = temp
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_PUNITIVE_REFRESH_SEARCH)
    else
        self.curSearchMonster = temp
    end
end

--计时器，给服务器发消息，收到消息，回调
local function UpdateOutlawData(self, severData)
    self.OutlawMonsterList = {}
    local tempInfo = {}
    for _, v in ipairs(severData) do
        tempInfo = OutlawMonsterInfo[v.unPointId]
        local tempData = OutlawDataModel.New()
        tempData.CrusadeID = v.unPointId
        tempData.PosID = v.position + 1
        tempData.Name = tempInfo.Name
        tempData.ResImage = tempInfo.Pic
        tempData.Level = "Lv" .. tempInfo.Level
        tempData.ModelID = 1201010

        self.OutlawMonsterList[tempData.PosID] = tempData
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_PUNITIVE_OUTLAW_REFRESH)
    self.msgState = 2
end

--更换分区后
local function OnUIMsgSelectArea(self, index)
    self.curSelectArea = index
    self.msgState = 1
    NationNetManager:GetInstance():SendMsgGetOutlawData(self.buildID, self.curSelectArea, Bind(self, UpdateOutlawData))
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_PUNITIVE_SELECT_AREA)
end

--计时器
local function OnTimerUpdateOutlawData(self)
    local timer = 0
    local function UpdateData(self)
        timer = timer + 1
        if timer >= 2 and self.msgState == 2 then
            self.msgState = 1
            NationNetManager:GetInstance():SendMsgGetOutlawData(self.buildID, self.curSelectArea, Bind(self, UpdateOutlawData))
            timer = 0
        end
    end
    self.UpdateDataTimer = TimerManager:GetInstance():SimpleTimerArgs(1, UpdateData, self, false, false)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
    self.buildID = nil
    self.curSelectArea = 1
end

-- 打开
local function OnEnable(self, buildID, findTarget)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    self.buildID = buildID or self.buildID

    --消息状态
    self.msgState = 2
    --分区列表
    self.AreaList = {}
    --怪点列表
    self.OutlawMonsterList = {}
    --当前选择的怪物信息
    self.curSearchMonster = nil
    self.UpdateDataTimer = nil
    --怪点类型表
    self.outlawMonsterTypeList = {}

    local buildInfo = NationMapInfoData:GetInstance():GetNationalMapById(self.buildID)
    self.maxAreaCount = buildInfo.Submap
    self.buildName = buildInfo.Name

    self.findTarget = findTarget
    if self.findTarget ~= nil then
        OnUIMsgSelectArea(self, math.modf(findTarget.areaID))
    else
        OnUIMsgSelectArea(self, self.curSelectArea)
    end

    for i = 1, self.maxAreaCount do
        local temp = AreaItemDataModel.New()
        temp.ID = i
        temp.Name = i .. "区"

        table.insert(self.AreaList, temp)
    end

    local tempInfo = nil
    for k, v in ipairs(buildInfo.CrusadeMap) do
        tempInfo = OutlawMonsterInfo[k]
        if self.outlawMonsterTypeList[tempInfo.MonsterType] == nil then
            self.outlawMonsterTypeList[tempInfo.MonsterType] = {}
            self.outlawMonsterTypeList[tempInfo.MonsterType].ID = tempInfo.MonsterType
            self.outlawMonsterTypeList[tempInfo.MonsterType].Type = tempInfo.MonsterType
            self.outlawMonsterTypeList[tempInfo.MonsterType].Name = tempInfo.Name
            self.outlawMonsterTypeList[tempInfo.MonsterType].MaxLevel = tempInfo.Level
            self.outlawMonsterTypeList[tempInfo.MonsterType].MinLevel = tempInfo.Level
            self.outlawMonsterTypeList[tempInfo.MonsterType].ResImage = tempInfo.MonsterIcon
        elseif tempInfo.Level < self.outlawMonsterTypeList[tempInfo.MonsterType].MinLevel then
            self.outlawMonsterTypeList[tempInfo.MonsterType].MinLevel = tempInfo.Level
        elseif tempInfo.Level > self.outlawMonsterTypeList[tempInfo.MonsterType].MaxLevel then
            self.outlawMonsterTypeList[tempInfo.MonsterType].MaxLevel = tempInfo.Level
        end
    end

    --启动计时器
    OnTimerUpdateOutlawData(self)

    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_NATION_PUNITIVE_SELECT_AREA, OnUIMsgSelectArea)
    self:AddUIListener(UIMessageNames.UI_NATION_PUNITIVE_SELECT_MONSTER, OnUIMsgSelectMonster)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_PUNITIVE_SELECT_AREA, OnUIMsgSelectArea)
    self:RemoveUIListener(UIMessageNames.UI_NATION_PUNITIVE_SELECT_MONSTER, OnUIMsgSelectMonster)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    self.AreaList = {}
    self.OutlawMonsterList = {}
    self.curSearchMonster = {}
    self.maxAreaCount = nil
    self.findTarget = nil
    self.buildName = nil
    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
    self.buildID = nil
    self.curSelectArea = nil
end

UINationPunitiveMainModel.OnCreate = OnCreate
UINationPunitiveMainModel.OnEnable = OnEnable
UINationPunitiveMainModel.OnRefresh = OnRefresh
UINationPunitiveMainModel.OnAddListener = OnAddListener
UINationPunitiveMainModel.OnRemoveListener = OnRemoveListener
UINationPunitiveMainModel.OnDisable = OnDisable
UINationPunitiveMainModel.OnDestroy = OnDestroy

return UINationPunitiveMainModel