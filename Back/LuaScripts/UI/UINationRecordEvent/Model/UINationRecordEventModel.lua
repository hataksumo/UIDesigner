--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local ActiveData = {
    ID = -1,
    Name = "",
    Describe = "",
    Target = "",
    State = -1,
    rewardState = 0,
    Reward = {},
    IsSchedule = true,
    Alliance = {},
    ScheduleValue = -1,
    SchedulePercent = "",
    ScheduleText = "",
    EndTime = 0,
}

local EnumRecordEventState = {
    NotStart = 0, --未开始
    Doing = 1, --进行中
    End = 2, --已结束
    Finish = 3, --已完成
}

local EnumRewardState = {
    NotGain = 0, --0：不能领取
    CanGain = 1, --1：可领取
    HadGain = 2, -- 2：已领取
}

local EnumRecordEventType = {
    Type1 = 1, --1、全地图[CounterMax]块Lv[Params]资源点被占领(Params不填则为全等级)
    Type2 = 2, --2、全地图激活城镇总数量达到[CounterMax]个
    Type3 = 3, -- 3、人数超过[Params]人的联盟数量达到[CounterMax]个
    Type4 = 4, --4、全服消灭Lv[Params]讨伐怪数量达到[CounterMax]个(Params不填则为全等级)
    Type5 = 5, --5、全地图[CounterMax]个卫都被占领
    Type6 = 6, --6、结束时联盟占领[CounterMax]个卫都
    Type7 = 7, --7、[CounterMax]个联盟角逐势力值排名
    Type8 = 8, --8、全服联盟攻占所属域以外的卫都数[CounterMax]个
    Type9 = 9, --9、[CounterMax]个域的域都全部被占领
    Type10 = 10, --10、中心域域都被占领
    Type11 = 11, --11、全地图[CounterMax]个域都被同一个联盟占领
}

local UINationRecordEventModel = BaseClass("UINationRecordEventModel", UIBaseModel)
local base = UIBaseModel
local ActiveDataModel = DataClass("ActiveData", ActiveData)
local ItemInfo = DataUtil.GetData("item")


-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
end

-- 打开
local function OnEnable(self, msgObj)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    --self:OnRefresh()
    self:FlushContent(msgObj,false)
end

local function FlushContent(self,msgObj,useLocal)
    local nationEventDataMap = DataUtil.GetData("national_event")
    self.curDoingActiveID = 0
    if useLocal then -- 使用本地数据刷新
        for _, v in ipairs(self.activeList) do
            local activeInfo = nationEventDataMap[v.ID]
            if self.curDoingActiveID == 0 then
                if v.rewardState == EnumRewardState.CanGain then
                    self.curDoingActiveID = activeInfo.Id
                elseif v.State == EnumRecordEventState.Doing then
                    self.curDoingActiveID = activeInfo.Id
                end
            end
        end
    else
        self.msgData = msgObj.nationEvent
        self.activeList = {}
        for _, v in ipairs(self.msgData) do
            local activeInfo = nationEventDataMap[v.eventId]

            local temp = ActiveDataModel.New()
            temp.ID = activeInfo.Id
            temp.Name = activeInfo.Name
            temp.Describe = activeInfo.Des

            if activeInfo.Type == EnumRecordEventType.Type1 then
                temp.Target = string.format(activeInfo.Target, activeInfo.CounterMax, activeInfo.Params or "")
            elseif activeInfo.Type == EnumRecordEventType.Type2 then
                temp.Target = string.format(activeInfo.Target, activeInfo.CounterMax)
            elseif activeInfo.Type == EnumRecordEventType.Type3 then
                temp.Target = string.format(activeInfo.Target, activeInfo.Params or "", activeInfo.CounterMax)
            elseif activeInfo.Type == EnumRecordEventType.Type4 then
                temp.Target = string.format(activeInfo.Target, activeInfo.Params or "", activeInfo.CounterMax)
            elseif activeInfo.Type == EnumRecordEventType.Type5 then
                temp.Target = string.format(activeInfo.Target, activeInfo.CounterMax)
            elseif activeInfo.Type == EnumRecordEventType.Type6 then
                temp.Target = string.format(activeInfo.Target, activeInfo.CounterMax)
            elseif activeInfo.Type == EnumRecordEventType.Type7 then
                temp.Target = string.format(activeInfo.Target, activeInfo.CounterMax)
            elseif activeInfo.Type == EnumRecordEventType.Type8 then
                temp.Target = string.format(activeInfo.Target, activeInfo.CounterMax)
            elseif activeInfo.Type == EnumRecordEventType.Type9 then
                temp.Target = string.format(activeInfo.Target, activeInfo.CounterMax)
            elseif activeInfo.Type == EnumRecordEventType.Type10 then
                temp.Target = string.format(activeInfo.Target)
            elseif activeInfo.Type == EnumRecordEventType.Type11 then
                temp.Target = string.format(activeInfo.Target, activeInfo.Params or "", activeInfo.CounterMax)
            end

            temp.rewardState = v.rewardState --奖励状态
            temp.State = v.curState --活动状态
            if self.curDoingActiveID == 0 then
                if temp.rewardState == EnumRewardState.CanGain then
                    self.curDoingActiveID = activeInfo.Id
                elseif temp.State == EnumRecordEventState.Doing then
                    self.curDoingActiveID = activeInfo.Id
                end
            end

            if activeInfo.RewardType == 1 then
                temp.IsSchedule = true
            else
                temp.IsSchedule = false
            end

            temp.EndTime = math.modf(tonumber(v.remainTime))

            --todo, 奖励的tab，数量
            for _, w in ipairs(activeInfo.Reward) do
                local rewardTemp = {}
                rewardTemp.icon = ItemInfo[w.type].Icon
                rewardTemp.id = w.type
                rewardTemp.count = w.value[1]
                rewardTemp.text = string.format(activeInfo.RewardText, w.value[1])
                table.insert(temp.Reward, rewardTemp)
            end

            if temp.IsSchedule then
                local curSchedule = math.modf(tonumber(v.curSchedule))
                if curSchedule > activeInfo.CounterMax then
                    curSchedule = activeInfo.CounterMax
                end
                temp.ScheduleValue = curSchedule / activeInfo.CounterMax
                temp.SchedulePercent = math.modf(curSchedule / activeInfo.CounterMax * 100) .. "%"
                temp.ScheduleText = curSchedule .. "/" .. activeInfo.CounterMax
            else
                for i = 1, 3 do
                    temp.Alliance[i] = {}
                    temp.Alliance[i].text = v.unionName[i]
                end
            end

            table.insert(self.activeList, temp)
        end
    end
end

local function __OnUIMsgUpdateRewardState(self, activeID,rewardState)
    local event = self.activeList[activeID]
    if event == nil then
        return
    end
    event.rewardState = rewardState
    self:FlushContent(nil,true)
    self:__UpdateNationEventRedPoint()
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_EVENT_VIEW_REFRESH)
end

local function __UpdateNationEventRedPoint (self)
    local hasRed = self:__CheckHasRedPoint()
    RedPointData:GetInstance():UpdateRedState(
            RedPointData:GetInstance().RedName.Nation_Event_Red,hasRed)
end


local function __CheckHasRedPoint(self)
    if self.activeList == nil then
        return false
    end
    for i, v in ipairs(self.activeList) do
        if v.rewardState == self.EnumRewardState.CanGain then
            return true
        end
    end
    return false
end


local function __OnUIMsgEventsUpdate(self, msgObj)
    self:FlushContent(msgObj,false);
    self:__UpdateNationEventRedPoint()
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_EVENT_VIEW_REFRESH)
end


-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_NATION_EVENT_ONE_STATUS_UPDATE,self.__OnUIMsgUpdateRewardState);
    self:AddDataListener(DataMessageNames.ON_NATION_EVENT_UPDATE_ALL_CONTENT,self.__OnUIMsgEventsUpdate);
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_NATION_EVENT_ONE_STATUS_UPDATE, self.__OnUIMsgUpdateRewardState);
    self:RemoveDataListener(DataMessageNames.ON_NATION_EVENT_UPDATE_ALL_CONTENT,self.__OnUIMsgEventsUpdate);
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    self.activeList = nil
    self.msgData = nil
    self.curDoingActiveID = nil
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationRecordEventModel.OnCreate = OnCreate
UINationRecordEventModel.OnEnable = OnEnable
UINationRecordEventModel.OnAddListener = OnAddListener
UINationRecordEventModel.OnRemoveListener = OnRemoveListener
UINationRecordEventModel.OnDisable = OnDisable
UINationRecordEventModel.OnDestroy = OnDestroy
UINationRecordEventModel.EnumRecordEventState = EnumRecordEventState
UINationRecordEventModel.EnumRewardState = EnumRewardState
UINationRecordEventModel.FlushContent = FlushContent
UINationRecordEventModel.__OnUIMsgUpdateRewardState = __OnUIMsgUpdateRewardState
UINationRecordEventModel.__UpdateNationEventRedPoint = __UpdateNationEventRedPoint
UINationRecordEventModel.__CheckHasRedPoint = __CheckHasRedPoint
UINationRecordEventModel.__OnUIMsgEventsUpdate = __OnUIMsgEventsUpdate

return UINationRecordEventModel