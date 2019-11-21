local ItemData = {
    --礼包图标
    icon = "",
    --领取天数
    day = 1
}
local SevenGiftData = BaseClass("SevenGiftData", Singleton)
local SevenGiftItem = DataClass("SevenGiftItem", ItemData)
local function __init(self)
    self.reward = {}
    self.hasRewardArrayId = {}
    self.all_seven_gifts = {}
    self.day = 0
    self.isFirstReward = true
    self.allSevenGiftItemData = DataUtil.GetData("seven_day_gift")
    self.allItemData = DataUtil.GetData("item")
    self.reddes=RedPointData:GetInstance().RedName.Seven_Gift_Red
end
---排序
local function sort_(a, b)
    local r
    local aid = tonumber(a.id)
    local bid = tonumber(b.id)
    r = aid < bid
    return r
end

--请求七日礼包数据（登录的天数和是否领过奖）
local function RequestSevenGiftData(self, msg_obj, state)
    --self.sevenDayGiftInfoIs=state
    self.sevenDayGiftInfoIsNull = state
    if msg_obj.Packages.sevenDayGiftInfo and not self.sevenDayGiftInfoIsNull then
        self.hasReward = msg_obj.Packages.sevenDayGiftInfo.hasReward--发下来的已经领取？？
        self.accuGem = msg_obj.Packages.sevenDayGiftInfo.accuGem
        self.canReward = msg_obj.Packages.sevenDayGiftInfo.canReward--可领取天数
    end
    self:UpdateSevenDayGiftWindowState()
end
--隔天刷新数据
local function DayFlushIndication(self)
    if not self.sevenDayGiftInfoIsNull then
        if self.canReward <7 then
            self.canReward = self.canReward+1
    end
        self:UpdateSevenDayGiftWindowState()
    end
end
--获取七日礼包奖励物品数据（点开七日奖品所获得物品的数据）
local function GetSevenRewardGiftRequest(self, id)
    local msdId = MsgIDDefine.PBMISSION_GET_SEVEN_DAY_GIFT_REQUEST
    local msdObj = MsgIDMap[msdId]()
    msdObj.rewardId = id
    NetManager:GetInstance():SendMessage(msdId, msdObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
        self.reward = msg_obj.Packages.reward
        DataUtil.ParseDropItem(self.reward)
        if not DataUtil.CheckDropItemIsNull(self.reward) then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, self.reward)
        end
        self.hasRewardId = math.floor(id)
        table.insert(self.hasRewardArrayId, self.hasRewardId)
        self:UpdateSevenDayGiftWindowState()
    end)
end


--获取全部图标等数据
local function GetAllSevenGiftInfo(self)
    self.all_seven_gifts = {}
    for i, v in pairs(self.allSevenGiftItemData) do
        local sevenData = {}
        sevenData.static = 0
        for _, v in ipairs(self.hasReward) do
            v = math.floor(v)
            if (i == v) then
                sevenData.static = 1
            end
        end
        if (self.sevenDayGiftInfoIsNull) then
            sevenData.static = 1
        end
        if (self.hasRewardArrayId ~= nil) then
            for _, m in ipairs(self.hasRewardArrayId) do
                if (m == i) then
                    sevenData.static = 1
                end
            end
        end
        sevenData.id = i
        if self.allItemData[self.allSevenGiftItemData[i].Award[1].id] then
            local seven_data=self.allItemData[self.allSevenGiftItemData[i].Award[1].id]
            sevenData.icon = seven_data.Icon
            sevenData.quality = seven_data.Quality
            sevenData.type= seven_data.ItemType
            sevenData.day = self.allSevenGiftItemData[i].Day
            sevenData.title = self.allSevenGiftItemData[i].Title
        else
            Logger.LogError("没有物品"..self.allSevenGiftItemData[i].Award[1].id)
        end
        table.insert(self.all_seven_gifts, sevenData)
    end
    table.sort(self.all_seven_gifts, sort_)
    return self.all_seven_gifts
end
--监测是否关闭七日礼包窗口
local function UpdateSevenDayGiftWindowState(self)
    if (not self.sevenDayGiftInfoIsNull) then
        self.canSevenClose = 1
        self.GetAllSevenGift = self:GetAllSevenGiftInfo()
        RedPointData:GetInstance():UpdateRedState(self.reddes, false)
        for _ , v in ipairs(self.GetAllSevenGift) do
            if (v.static == 0 and self.canReward >= v.day) then
                -- v.static==0  可领取
                RedPointData:GetInstance():UpdateRedState(self.reddes, true)
                self.canSevenClose = 0
            end
            if (v.static == 0) then
                self.canSevenClose = 0
            end
        end
    end
    if (self.sevenDayGiftInfoIsNull or self.canSevenClose == 1) then
        UIManager:GetInstance():Broadcast(UIMessageNames.SEVENDAY_LELVE_WINDOW_SHOW)
    else
            UIManager:GetInstance():Broadcast(UIMessageNames.ON_SEVEN_GIFT_DAY_END)
            if UIManager:GetInstance():GetWindow(UIWindowNames.UIHDQiRiLiBao,true,true) ~= nil then
                UIManager:GetInstance():GetWindow(UIWindowNames.UIHDQiRiLiBao).View:OnRefresh()
        end
    end
end
SevenGiftData.__init = __init
SevenGiftData.GetAllSevenGiftInfo = GetAllSevenGiftInfo
SevenGiftData.RequestSevenGiftData = RequestSevenGiftData
SevenGiftData.GetSevenRewardGiftRequest = GetSevenRewardGiftRequest
SevenGiftData.UpdateSevenDayGiftWindowState = UpdateSevenDayGiftWindowState
SevenGiftData.DayFlushIndication = DayFlushIndication
return SevenGiftData