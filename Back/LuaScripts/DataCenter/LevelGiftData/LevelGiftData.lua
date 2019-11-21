local LevelGiftData = BaseClass("LevelGiftData", Singleton)
local allLevelGiftItemData
local allItemData
local function __init(self)
    self.reward = {}
    self.hasReciveRewardLevel = {}
    self.isFirst = true
    self.allLevelGiftItemData = DataUtil.GetData("level_gift")
    self.hasRewardArrayId = {}
    allItemData = DataUtil.GetData("item")
    self.reddes=RedPointData:GetInstance().RedName.Level_Gift_Red

end
---排序
local function sort_(a, b)
    local r
    local aid = tonumber(a.id)
    local bid = tonumber(b.id)
    r = aid < bid
    return r
end
---排序
---第一：是否可领取
---第二：任务id
local function sortReward_(a, b)
    local r
    local al = tonumber(a.static)
    local bl = tonumber(b.static)
    local aid = tonumber(a.id)
    local bid = tonumber(b.id)
    if al == bl then
        r = aid < bid
    else
        r = al < bl
    end
    return r
end
--请求等级礼包数据（返回已领取的最大等级）
local function RequestLevelGiftData(self, msg_obj, state)
    self.levelGiftInfoIsNull = state
    self.hasReciveRewardLevel = msg_obj.Packages.levelGiftInfo.hasRewardId
    self:UpdateLevelGiftWindowState()
end
--获取等级礼包奖励物品数据（点开等级礼包所获得物品的数据）
local function GetLevelRewardGiftRequest(self, id)
    local msdId = MsgIDDefine.PBMISSION_GET_LEVEL_GIFT_REQUEST
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
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, LevelGiftData:GetInstance().reward)
        self.hasRewardId = math.floor(id)
        table.insert(self.hasRewardArrayId, self.hasRewardId)
       self:UpdateLevelGiftWindowState()
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_LVGIFT_REFRESH)
    end)
end

--监测是否关闭等级礼包窗口
local function UpdateLevelGiftWindowState(self)
    self.level = math.floor(UserData:GetInstance().pLevel)
    if (not self.levelGiftInfoIsNull) then
        self.canLevelClose = 1
        self.GetAllLevelGift = self:GetAllLevelGiftInfo()
        RedPointData:GetInstance():UpdateRedState(self.reddes, false)
        for _, m in pairs(self.GetAllLevelGift) do
            if (m.static == 0 and m.level >= m.maxLevel) then
                RedPointData:GetInstance():UpdateRedState(self.reddes, true)
                self.canLevelClose = 0
            end
            if (m.static == 0) then
                self.canLevelClose = 0
            end
        end
        UIManager:GetInstance():Broadcast(UIMessageNames.LEVEL_GIFT_MAX)
    end
    if (self.canLevelClose ==1) or self.levelGiftInfoIsNull then
        self.levelGiftInfoIsNull=true
        UIManager:GetInstance():Broadcast(UIMessageNames.LELVE_WINDOW_SHOW)
    end
end

--获取全部等级礼包图标等数据
local function GetAllLevelGiftInfo(self)
    local userdata = UserData:GetInstance()
    self.level = math.floor(userdata.pLevel)
    self.all_level_gifts = {}
    for i, v in pairs(self.allLevelGiftItemData) do
        local levelData = {}
        levelData.id = i
        levelData.reward = {}
        levelData.static = 0

        for _, b in ipairs(self.hasReciveRewardLevel) do
            b = math.floor(b)
            if (i == b) then
                levelData.static = 1
            end
        end
        if (self.levelGiftInfoIsNull) then
            levelData.static = 1
        end
        if (self.hasRewardArrayId ) then
            for _, m in ipairs(self.hasRewardArrayId) do
                if (m == i) then
                    levelData.static = 1
                end
            end
        end
        for _, k in ipairs(self.allLevelGiftItemData[i].Award) do
            local award = {}
            if allItemData[k.id] then
                award.id = k.id
                award.icon = allItemData[k.id].Icon
                award.num = k.val
                award.type = allItemData[k.id].ItemType
                award.Quality = allItemData[k.id].Quality
            else
               Logger.LogError("没有物品"..k.id)
            end

            table.insert(levelData.reward, award)
        end
        levelData.level = self.level
        levelData.maxLevel = self.allLevelGiftItemData[i].Level
        levelData.levelDetail = levelData.maxLevel .. "级礼包"
        table.insert(self.all_level_gifts, levelData)
    end

    table.sort(self.all_level_gifts, sort_)
    table.sort(self.all_level_gifts, sortReward_)
    return self.all_level_gifts
end
LevelGiftData.__init = __init
LevelGiftData.GetAllLevelGiftInfo = GetAllLevelGiftInfo
LevelGiftData.RequestLevelGiftData = RequestLevelGiftData
LevelGiftData.GetLevelRewardGiftRequest = GetLevelRewardGiftRequest
LevelGiftData.UpdateLevelGiftWindowState = UpdateLevelGiftWindowState
return LevelGiftData