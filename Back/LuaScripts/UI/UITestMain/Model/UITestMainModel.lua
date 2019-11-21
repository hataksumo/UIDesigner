---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2018/12/11 14:10
---
local UITestMainModel = BaseClass("UITestMainModel", UIBaseModel)
local base = UIBaseModel
local item = DataUtil.GetData("item")
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这

end
local function GetCoinData(self)
    local backPack = BackpackData:GetInstance()
    self.stamina = backPack:GetItemNumById(CoinDefine.Stamina)
    self.gold = backPack:GetItemNumById(CoinDefine.Gold)
    self.gem = backPack:GetItemNumById(CoinDefine.Diamond)
end

--          聊天更新
local function OnChatUpdate(self)
    local chatList = ChatData:GetInstance().world_list;
    self.WordChatData = {};
    local count = #chatList;
    if chatList[count] ~= nil then
        table.insert(self.WordChatData, string.format("<color=#3F793F>[世]</color>%s：%s", chatList[count].name, chatList[count].content));
    end

    --[[    local index=#chatList-1;
        for i = 1, 2 do
            if chatList[index]~=nil then
                table.insert(self.WordChatData,string.format("<color=#7f4a2d>世：</color>%s：%s",chatList[index].name,chatList[index].content));
            end
            index=index+1;
        end]]
    self:UIBroadcast(UIMessageNames.UIMAINCITY_CHAT_UPDATE)
end

local function UpdatePlayerLv(self)
    local userdata = UserData:GetInstance()
    self.curLevelExp = userdata.curLevelExp
    self.curLevelLimitTxp = userdata.curLevelLimitTxp
    self.exp_percent = self.curLevelExp / self.curLevelLimitTxp
    self.lv = userdata.pLevel
    self:UIBroadcast(UIMessageNames.UPDATE_MAIN_CITY_PLAYER_LV)
end

--检测10点半的开启时间状态
local function GetOpenTimeState()
    local curUnixTime = math.floor(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000);
    local curDate = os.date("!*t", curUnixTime);
    local openTime = os.time({ year = curDate.year, month = curDate.month, day = curDate.day, hour = 10, min = 30 })
    return curUnixTime >= openTime;
end

--刷新问卷调查状态
local function RefreshSurveyState(self, _noSend)
    self.isShowSurveyBtn = false;
    self.surveyTimes = 0;
    local state, type, des = UnlockData:GetInstance():GetLockDataState(901)
    self.surveyTime = UserData:GetInstance().questionTimes;

    if state then
        if UserData:GetInstance().questionTimes < 1 then
            self.isShowSurveyBtn = true;
        elseif UserData:GetInstance().questionTimes >= 1 and UserData:GetInstance().questionTimes < 2 then
            if UserData:GetInstance().loginDay == 3 and GetOpenTimeState() then
                self.isShowSurveyBtn = true;
            elseif UserData:GetInstance().loginDay > 3 then
                self.isShowSurveyBtn = true;
            end
        end
    end
    if not _noSend then
        UIManager:GetInstance():Broadcast(UIMessageNames.UI_SURVEY_RED_POINT_REFRESH);
    end
end

--获取功能预告数据
local function GetUnlockFun(self)
    local unlock = DataUtil.GetData("unlock");
    local dataList = {};
    for i, v in pairs(unlock) do
        if v.Condition ~= nil then
            for a, b in ipairs(v.Condition) do
                if b.id == 1050101 then
                    table.insert(dataList, { id = i, lv = b.param1, title = v.Title, icon = v.Icon });
                end
            end
        end
    end
    table.sort(dataList, function(a, b)
        if a.lv == b.lv then
            return a.id < b.id;
        else
            return a.lv < b.lv;
        end
    end)
    local dataIndex = 0;
    for i, v in ipairs(dataList) do
        if v.lv > self.lv then
            dataIndex = i;
            break ;
        end
    end
    return dataList[dataIndex];
end
-- 打开
local function OnEnable(self)
    base.OnEnable(self)
    GetCoinData(self)
    local userdata = UserData:GetInstance()
    self.max_stamina = userdata.maxStamina
    self.curLevelExp = userdata.curLevelExp;
    self.curLevelLimitTxp = userdata.curLevelLimitTxp;
    self.exp_percent = self.curLevelExp / self.curLevelLimitTxp;
    self.lv = userdata.pLevel
    self.headImg = item[userdata.pHead].Icon
    self.frameImg = SpriteDefine:GetItemQualityFrameByType(item[userdata.pHead].Quality)
    self.openFunData = GetUnlockFun(self);
    --self.max_lv = 100
    self.maxForce = CardData:GetInstance():GetBestPower();
    self.name = userdata.name
    local user = DataUtil.GetData("user")
    local userHellLevel = userdata.hellLevel;
    local master_hell = DataUtil.GetData("master_hell");
    self.masterIcon = master_hell[userHellLevel].Pic[3];
    if user[1] ~= nil then
        self.max_lv = user[1].MaxLevel
    end
    RefreshSurveyState(self, true);
    --SevenGiftData:GetInstance():RequestSevenGiftData()
    --OnlineGiftData:GetInstance():RequestOnlineGiftData()
    --LevelGiftData:GetInstance():RequestLevelGiftData()
    --self:UpdateMinuteGiftRedPointStates()
    --self:UpdateLevelGiftWindowState()
    --self:UpdateSevenDayGiftWindowState()
    OnChatUpdate(self)
    --检测 10步走完没

    if not GuideManager:GetInstance():CheckGuideGroupStreng() then
        --检测是否升级
        --检测升级，弹出升级界面
        local oldLv = UserData:GetInstance().oldLv;
        local curLv = UserData:GetInstance().pLevel;
        --self.isShowMask=false;
        if UserData:GetInstance().isShowLvPanel then
            -- self.isShowMask=true;
            UserData:GetInstance().isShowLvPanel = false;

            UIManager:GetInstance():OpenWindow(UIWindowNames.UILevelUnlockTip, oldLv, curLv);
            return ;
        end
        --检测是否有新功能开启
        if UnlockData:GetInstance().funOpenState > 0 and UnlockData:GetInstance().funOpenState~=3  then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UINewFunOpen);
            return
        elseif UnlockData:GetInstance().funOpenState==3 then
            --有解锁  开启引导
            GuideCheckManager:UnlockToGuide()
            return
        end
        if curLv > 1 then
            if not GuideGroup:GetInstance().Runing then
               UnlockData:GetInstance():CheckInitGuideStepList()
            end
        end
    end
end

local function CloseMainWindow(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UITestMain)
end

local function UpdateMailRedpoint(self)
    UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_MAILREDPOINT_UPDATE)
end

local function UpdateStamina(self)
    GetCoinData(self)
    self:UIBroadcast(UIMessageNames.UIMAINCITY_STAMINA_UPDATE)
end

local function UpdateMainTaskData()
    UIManager:GetInstance():Broadcast(UIMessageNames.UIMAIN_TASK_DATA_UPDATE)
end


-- 监听数据变动
local function OnAddListener(self)
    base.OnAddListener(self)
    self:AddDataListener(DataMessageNames.ON_UPDATE_MAINCITY_MAILREDPOINT, UpdateMailRedpoint)
    self:AddDataListener(DataMessageNames.ON_ITEM_CHANGE, UpdateStamina)
    self:AddDataListener(DataMessageNames.ON_MAIN_CITY_WINDOW_CLOSE, CloseMainWindow)

    self:AddDataListener(DataMessageNames.ON_MAIN_TASK_DATA_UPDATE, UpdateMainTaskData)
    self:AddDataListener(DataMessageNames.ON_CHAT_UPDATE, OnChatUpdate)
    self:AddDataListener(DataMessageNames.ON_PLAYER_LEVEL_UPDATE, UpdatePlayerLv)
    self:AddUIListener(UIMessageNames.UI_SURVEY_REFRESH, RefreshSurveyState)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    self:RemoveDataListener(DataMessageNames.ON_UPDATE_MAINCITY_MAILREDPOINT, UpdateMailRedpoint)
    self:RemoveDataListener(DataMessageNames.ON_ITEM_CHANGE, UpdateStamina)
    self:RemoveDataListener(DataMessageNames.ON_MAIN_CITY_WINDOW_CLOSE, CloseMainWindow)
    self:RemoveDataListener(DataMessageNames.ON_CHAT_UPDATE, OnChatUpdate)
    self:RemoveDataListener(DataMessageNames.ON_PLAYER_LEVEL_UPDATE, UpdatePlayerLv)
    self:RemoveDataListener(DataMessageNames.ON_MAIN_TASK_DATA_UPDATE, UpdateMainTaskData)
    self:RemoveUIListener(UIMessageNames.UI_SURVEY_REFRESH, RefreshSurveyState)
end



-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    if self.onlineTimer ~= nil then
        self.onlineTimer:Stop()
        self.onlineTimer = nil
    end
end

-- 销毁
local function OnDistroy(self)
    base.OnDistroy(self)
    -- 清理成员变量
end

UITestMainModel.OnCreate = OnCreate
UITestMainModel.OnEnable = OnEnable
UITestMainModel.OnAddListener = OnAddListener
UITestMainModel.OnRemoveListener = OnRemoveListener
UITestMainModel.OnDisable = OnDisable
UITestMainModel.OnDistroy = OnDistroy

return UITestMainModel