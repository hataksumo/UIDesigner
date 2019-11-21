--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local EnumState = {
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

local UINationRecordEventDetailModel = BaseClass("UINationRecordEventDetailModel", UIBaseModel)
local base = UIBaseModel
local ItemInfo = DataUtil.GetData("item")

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

end

-- 打开
local function OnEnable(self, activeID, MsgData)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    --根据活动ID读取对应的策划表
    self.allianceNameList = {}
    self.rewardTextList = {}
    self.rewardItemList = {}
    self.addGameFunclist = {}

    local activeInfoTab = DataUtil.GetData("national_event")
    local activeInfo = activeInfoTab[activeID]

    self.data = {}
    local temp = {}
    self.data = temp
    temp.title = activeInfo.Name
    temp.describeText = activeInfo.Des
    temp.targetText = MsgData.targetText
    temp.state = MsgData.state
    temp.rewardState = MsgData.rewardState
    if activeInfo.RewardType == 1 then
        temp.isHaveAlliance = false
    else
        temp.isHaveAlliance = true
    end

    if temp.rewardState == EnumRewardState.HadGain then
        temp.tipText = DataUtil.GetClientText(200298) --奖励已领取
    elseif temp.rewardState == EnumRewardState.NotGain then
        if temp.isHaveAlliance then
            temp.tipText = DataUtil.GetClientText(200299) --未加入联盟或所在联盟未达成目标下，不能领取奖励
        else
            temp.tipText = DataUtil.GetClientText(200300) --未达成目标，不能领取奖励
        end
    elseif temp.rewardState == EnumRewardState.CanGain then
        temp.tipText = DataUtil.GetClientText(200305) --快去领取奖励吧~
    end

    if temp.state == EnumState.Finish then
        temp.rateText = math.modf(tonumber(MsgData.curSchedule)) .. "/" .. activeInfo.CounterMax
        temp.rateValue = MsgData.curSchedule / activeInfo.CounterMax

        temp.stateText = DataUtil.GetClientText(200301) .. os.date("%Y/%m/%d  %H:%M:%S", math.modf(MsgData.completeTime / 1000))--达成时间：
    elseif temp.state == EnumState.End then
        temp.rateText = math.modf(tonumber(MsgData.curSchedule)) .. "/" .. activeInfo.CounterMax
        temp.rateValue = MsgData.curSchedule / activeInfo.CounterMax

        temp.stateText = nil
        temp.tipText = DataUtil.GetClientText(200164) --已结束
    else
        temp.rateText = math.modf(tonumber(MsgData.curSchedule)) .. "/" .. activeInfo.CounterMax
        temp.rateValue = MsgData.curSchedule / activeInfo.CounterMax
        temp.remainTime = MsgData.endTime - math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000)
        temp.stateText = DataUtil.GetClientText(200302) .. UIUtil.GetTimeStrDHMS(temp.remainTime) --剩余时间
        temp.tipText = nil
    end

    if activeInfo.RewardType == 1 then
        temp.isHaveAlliance = false
    else
        temp.isHaveAlliance = true
    end

    if temp.isHaveAlliance then
        --特殊处理，排名 or 只联盟name
        if activeInfo.Type == 7 then
            temp.allianceTitle = DataUtil.GetClientText(200304)
        else
            temp.allianceTitle = DataUtil.GetClientText(200303)
        end

        for k, v in ipairs(MsgData.allianceNameTab) do
            local tempItem = {}

            --排名
            if activeInfo.Type == 7 then
                --第..名：..
                tempItem.text = DataUtil.GetClientText(100122) .. k .. DataUtil.GetClientText(200388) .. ": " .. v
            else
                tempItem.text = v
            end
            table.insert(self.allianceNameList, tempItem)
        end
    end

    local stringTemp = nil
    for _, v in ipairs(activeInfo.Reward) do
        local rewardTemp = {}
        rewardTemp.icon = ItemInfo[v.type].Icon
        rewardTemp.id = v.type
        rewardTemp.count = v.value[1]

        table.insert(self.rewardItemList, rewardTemp)
        --文本
        if activeInfo.Type == 7 then
            for k, w in ipairs(v.value) do
                local tempItem = {}
                tempItem.text = string.format(DataUtil.GetClientText(200420), k, w)
                table.insert(self.rewardTextList, tempItem)
            end
        else
            if stringTemp == nil then
                stringTemp = "  " .. string.format(activeInfo.RewardText, v.value[1])
            else
                stringTemp = "  " .. stringTemp .. "/n" .. string.format(activeInfo.RewardText, v.value[1])
            end
        end
    end
    temp.rewardText = stringTemp


    --todo,
    --for _, v in ipairs(activeInfo) do
    --    local tempFunc = {}
    --    tempFunc.icon = v.icon
    --    tempFunc.text = v.text
    --
    --    table.insert(self.addGameFunclist, tempFunc)
    --end

    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听

end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.allianceNameList = {}
    self.rewardTextList = {}
    self.rewardItemList = {}
    self.addGameFunclist = {}
    self.data = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量

end

UINationRecordEventDetailModel.OnCreate = OnCreate
UINationRecordEventDetailModel.OnEnable = OnEnable
UINationRecordEventDetailModel.OnRefresh = OnRefresh
UINationRecordEventDetailModel.OnAddListener = OnAddListener
UINationRecordEventDetailModel.OnRemoveListener = OnRemoveListener
UINationRecordEventDetailModel.OnDisable = OnDisable
UINationRecordEventDetailModel.OnDestroy = OnDestroy
UINationRecordEventDetailModel.EnumState = EnumState
UINationRecordEventDetailModel.EnumRewardState = EnumRewardState
return UINationRecordEventDetailModel