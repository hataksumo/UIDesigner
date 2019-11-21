local OnlineGiftData = BaseClass("OnlineGiftData", Singleton)
local function __init(self)
    self.reward = {}
    self.hasRewardArrayId = {}
    self.all_gifts = {}
    self.addTime = 0
    self.isFirst = true
    self.isFirstTime = true
    self.isFirstReward = false
    self.allOnilineGiftItemData = DataUtil.GetData("online_gift")
    self.allItemData = DataUtil.GetData("item")
    self.reddes=RedPointData:GetInstance().RedName.Online_Gift_Red
    self.second = 0
    self.hasRewardMinute = 0
    self.nowTime = 0
    self.InitNum=0;
end
---排序
local function sort_(a, b)
    local r
    local aid = tonumber(a.id)
    local bid = tonumber(b.id)
    r = aid < bid
    return r
end
--更新时间
local function GetOnlineTime(self)
    self.addTime = self.addTime + 1
    self.nowTime = self.second + self.addTime
    self:UpdateMinuteGiftRedPointState()
end
--请求在线时长数据（登录的时长和是否领过奖）
local function RequestOnlineGiftData(self, msg_obj, state)
    self.onlineGiftInfoIsNull = state
    if self.onlineGiftInfoIsNull then
    end
    if msg_obj.Packages.onlineGiftInfo and not self.onlineGiftInfoIsNull then
        self.hasRewardArrayId={}
        self.hasRewardMinute={}
        if msg_obj.Packages.onlineGiftInfo.second then
            Logger.Log("---时间点"..msg_obj.Packages.onlineGiftInfo.second)
        else
            Logger.Log("时间是0")
        end
        if self.timer ~= nil then
            self.timer:Stop()
            self.timer = nil
        end
        self.second = math.floor(msg_obj.Packages.onlineGiftInfo.second)
        self.nowTime = self.second
        self.addTime=0
        self.hasRewardMinute = msg_obj.Packages.onlineGiftInfo.hasReward
        for i = 1, #self.hasRewardMinute do
           Logger.Log("已经领奖"..self.hasRewardMinute[i])
        end
        self.timer = TimerManager:GetInstance():GetTimer(1, GetOnlineTime, self,false,false,true)
        self.timer:Start()
        self.GetAllOnlineGift = self:GetAllOnlineGiftInfo()

        self:UpdateMinuteGiftRedPointState()
        if UIManager:GetInstance():GetWindow(UIWindowNames.UIHDOnLineGift,true,true) ~= nil then
            UIManager:GetInstance():GetWindow(UIWindowNames.UIHDOnLineGift).View:SetOnlineRewardData()
        end
    else
        Logger.Log("发下来---nil")
    end
end
--隔天刷新数据
local function DayFlushIndication(self)
        self.onlineGiftInfoIsNull=false
        self.hasRewardMinute={}
        self.hasRewardArrayId={}
        if self.timer ~= nil then
            self.timer:Stop()
            self.timer = nil
        end
        self.second=0
        self.nowTime = self.second
        self.addTime=0
        self.timer = TimerManager:GetInstance():GetTimer(1, GetOnlineTime, self,false,false,true)
        self.timer:Start()
        self.GetAllOnlineGift = self:GetAllOnlineGiftInfo()
        self:UpdateMinuteGiftRedPointState()
    if UIManager:GetInstance():GetWindow(UIWindowNames.UIHDOnLineGift,true,true) ~= nil then
        UIManager:GetInstance():GetWindow(UIWindowNames.UIHDOnLineGift).View:SetOnlineRewardData()
    end
end
local function UpdateMinuteGiftRedPointState(self)
    self.tempNum=0;
    local online_status=RedPointData:GetInstance():GetRedState(self.reddes)
    if (not self.onlineGiftInfoIsNull) then
        self.canOnlineClose = 1
        RedPointData:GetInstance():UpdateRedState(self.reddes, false)
        for _, v in ipairs(self.GetAllOnlineGift) do
            if (v.static == 0 and self.nowTime >= v.minute * 60) then
                RedPointData:GetInstance():UpdateRedState(self.reddes, true)
                self.tempNum=self.tempNum+1
                self.canOnlineClose = 0
            end
            if (v.static == 0) then
                self.canOnlineClose = 0
            end
        end

    end
    if online_status~=RedPointData:GetInstance():GetRedState(self.reddes) then
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_ONLINE_GIFT_MINUTE_END)
        --检测这次的是不是和上次的一样  如果一样不更新
        if UIManager:GetInstance():GetWindow(UIWindowNames.UIHDOnLineGift,true,true) ~= nil and self.tempNum>0 and self.tempNum ~= self.InitNum then
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_ONLINE_REFRESH, self.InitNum, self.tempNum)
        end
    end
    self.InitNum=self.tempNum
    if (self.canOnlineClose == 1 or self.onlineGiftInfoIsNull) then
        self.onlineGiftInfoIsNull=true
        UIManager:GetInstance():Broadcast(UIMessageNames.ONLINE_WINDOW_SHOW)
        if self.timer ~= nil then
            self.timer:Stop()
            self.timer = nil
        end
    end
end
--获取在线时长礼包奖励物品数据（点开在线时长奖品所获得物品的数据）
local function GetOnlineRewardGiftRequest(self, id)
    local msdId = MsgIDDefine.PBMISSION_GET_ONLINE_GIFT_REQUEST
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

        self.GetAllOnlineGift = self:GetAllOnlineGiftInfo()
        self:UpdateMinuteGiftRedPointState()
    end)
end
--获取全部在线时长礼包图标等数据
local function GetAllOnlineGiftInfo(self)
    if  self.onlineGiftInfoIsNull then
        return
    end
    self.all_online_gifts = {}
    for i, v in pairs(self.allOnilineGiftItemData) do
        local onlineData = {}
        onlineData.static = 0
        if (self.hasRewardMinute ~= nil) then
            --已经领取
            for _, v in ipairs(self.hasRewardMinute) do
                v = math.floor(v)
                if (i == v) then
                    onlineData.static = 1
                end
            end
        end
        if (self.hasRewardArrayId ~= nil) then
            --上线后领取
            for _, m in ipairs(self.hasRewardArrayId) do
                if (m == i) then
                    onlineData.static = 1
                end
            end
        end
        onlineData.id = i
        local award_data=self.allItemData[self.allOnilineGiftItemData[i].Award[1].id]
        onlineData.icon =award_data .Icon
        onlineData.quality = award_data.Quality
        onlineData.type=award_data.ItemType
        onlineData.minute = self.allOnilineGiftItemData[i].Minute
        table.insert(self.all_online_gifts, onlineData)
    end
    table.sort(self.all_online_gifts, sort_)
    return self.all_online_gifts
end

OnlineGiftData.__init = __init
OnlineGiftData.GetAllOnlineGiftInfo = GetAllOnlineGiftInfo
OnlineGiftData.RequestOnlineGiftData = RequestOnlineGiftData
OnlineGiftData.GetOnlineRewardGiftRequest = GetOnlineRewardGiftRequest
OnlineGiftData.UpdateMinuteGiftRedPointState = UpdateMinuteGiftRedPointState
OnlineGiftData.DayFlushIndication = DayFlushIndication

return OnlineGiftData