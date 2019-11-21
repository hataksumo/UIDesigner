local UITeamItem = BaseClass("UITeamItem", UIWrapComponent)
local base = UIWrapComponent
-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnItemClick(self)
    self.view:OnClickOpenButtonPanel(self.teamID)
end

--计时器
local function HandleTimer(self, time, state)
    local countDown = time
    local function callbackFunc(self)
        countDown = countDown - 1
        self.time_text:SetText(os.date("%M:%S", math.modf(countDown)))
        if countDown < 1 then
            TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
            self.UpdateDataTimer = nil
            if state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
                --删除数据，self.id todo
                --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_PUNITIVE_REMOVE_TEAMDATA, self.id)
            end
            return
        end
    end
    self.UpdateDataTimer = TimerManager:GetInstance():SimpleTimerArgs(1, callbackFunc, self, false, false)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.itemButton = self:AddComponent(UIButton, "InfoPanel")
    self.itemButton:SetOnClick(function()
        if self.isCanClick == false then
            return
        end
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        OnItemClick(self)
    end)
    self.playerName_text = self:AddComponent(UIText, "InfoPanel/nameInfo")
    self.armyGroup_text = self:AddComponent(UIText, "InfoPanel/allianceInfo")
    self.time_text = self:AddComponent(UIText, "InfoPanel/timeInfo")
    self.state_text = self:AddComponent(UIText, "InfoPanel/state")
    self.icon_image = self:AddComponent(UIImage, "InfoPanel/icon", AtlasConfig.DynamicTex)
    self.state_image = self:AddComponent(UIImage, "InfoPanel/stateBg", AtlasConfig.DynamicNationTex)

  --  self.arrow_btn = self:AddComponent(UIButton, "arrow_UIButton")
  --  self.arrow_btn:SetOnClick(self, OnItemClick)
 --   self.arrow_btn.gameObject:SetActive(false)
    self.retreatButtonPanelObj = UIUtil.FindTrans(self.transform, "TeamButtonPanel").gameObject
    self.retreatBtn = self:AddComponent(UIButton, "TeamButtonPanel/Button")
    self.retreat_text=self:AddComponent(UIText,"TeamButtonPanel/Button/Text")
    self.retreatBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.view.ctrl:OnClickRetreat(self.teamID)
    end)
    self.UpdateDataTimer = nil
end
-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    local itemData = {}
    if self.view.curSelectTeamType == self.view.TeamType.battle then
        itemData = self.view.model.teamList[real_index]--*  +1
    elseif self.view.curSelectTeamType == self.view.TeamType.defend then
        itemData = self.view.model.teamDefendList[real_index]--*  +1
    end

    if itemData == nil then
        return
    end
    self.index = real_index
    self.id = itemData.ID
    self.teamID = itemData.TeamID

   -- local countDown = itemData.Time
    self.playerName_text:SetText(itemData.PlayerName)
    self.armyGroup_text:SetText(itemData.ArmyGroup)
    self.icon_image:SetSpriteName(itemData.Icon)
    if self.view.curOnClickTeamID == self.teamID then
        self.retreatButtonPanelObj:SetActive(true)
    else
        self.retreatButtonPanelObj:SetActive(false)
    end

    --if itemData.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY and itemData.IsMine then
    --    self.arrow_btn.gameObject:SetActive(true)
    --else
    --    self.arrow_btn.gameObject:SetActive(false)
    --end

    if itemData.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
        self.state_text:SetText(DataUtil.GetClientText(200064))
    elseif itemData.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
        self.state_text:SetText(DataUtil.GetClientText(200065))
    elseif itemData.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
        self.state_text:SetText(DataUtil.GetClientText(200066))
    elseif itemData.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.WAITING then
        self.state_text:SetText(DataUtil.GetClientText(200064))
    else
        self.state_text:SetText(DataUtil.GetClientText(200069))
    end

    if itemData.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.EMPTY and itemData.IsMine then
        self.isCanClick = true
    else
        self.isCanClick = false
    end


    if itemData.IsMine then
        self.state_image:SetSpriteName("ui_t_c2_603")
    elseif itemData.ArmyGroupID == NationUnionData:GetInstance():GetNationUnionId() then
        self.state_image:SetSpriteName("ui_t_c2_602")
    else
        self.state_image:SetSpriteName("ui_t_c2_601")
    end

    ----若刷到倒数第二个的时候,向服务器请求下20条数据
    --if real_index >= (#self.view.model.teamDataList - 2) then
    --    --向服务器发送请求。
    --    --往格子中，加入新的数据。
    --    --锁定位置到当前的index
    --    self.view.ctrl:ToSeverGetTeamData()
    --end

    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end
    local remainTime = itemData.Time - math.modf(TimeSyncManager:GetInstance():GetSimulationJavaMS() / 1000)--countDown
    if remainTime > 0 then
        self.time_text:SetText(os.date("%M:%S", math.modf(remainTime)))
        HandleTimer(self, remainTime, itemData.State)
    else
        self.time_text:SetText("")
    end
    self.retreat_text:SetText(DataUtil.GetClientText(200040))
end

local function OnDisable(self)
    base.OnDisable(self)
    if self.UpdateDataTimer ~= nil then
        TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
        self.UpdateDataTimer = nil
    end
end

UITeamItem.OnCreate = OnCreate
UITeamItem.OnRefresh = OnRefresh
UITeamItem.OnDisable = OnDisable

return UITeamItem