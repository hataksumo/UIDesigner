local UITeamItem = BaseClass("UITeamItem", UIWrapComponent)
local base = UIWrapComponent

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnItemClick(self)

end

--计时器
local function HandleTimer(self, time, state)
    local countDown = time
    local function callbackFunc(self)
        countDown = countDown - 1
        if countDown < 1 then
            TimerManager:GetInstance():SimpleTimerStop(self.UpdateDataTimer)
            if state == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
                --删除数据，self.id,todo
                --UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_PUNITIVE_REMOVE_TEAMDATA, self.id)
            end
            return
        end
        self.time_text:SetText(os.date("%M:%S", math.modf(countDown)))
    end
    self.UpdateDataTimer = TimerManager:GetInstance():SimpleTimerArgs(1, callbackFunc, self, false, false)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.playerName_text = self:AddComponent(UIText, "nameInfo")
    self.armyGroup_text = self:AddComponent(UIText, "allianceInfo")
    self.time_text = self:AddComponent(UIText, "timeInfo")
    self.state_text = self:AddComponent(UIText, "state")
    self.icon_image = self:AddComponent(UIImage, "icon", AtlasConfig.DynamicTex)
    self.alliance_Image = self:AddComponent(UIImage, "allianceImage", AtlasConfig.DynamicTex)
    self.state_image = self:AddComponent(UIImage, "stateBg", AtlasConfig.DynamicNationTex)

    self.UpdateDataTimer = nil
end
-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    local itemData = self.view.model.teamDataList[real_index + 1]
    if itemData == nil then
        return
    end
    self.index = real_index
    self.id = itemData.ID
    self.teamID = itemData.TeamID

    self.playerName_text:SetText(itemData.PlayerName)
    self.armyGroup_text:SetText(itemData.ArmyGroup)
    self.icon_image:SetSpriteName(itemData.Icon)

    if isNilOrEmpty(itemData.ArmyGroup) then
        self.alliance_Image:SetEnabled(false)
    else
        self.alliance_Image:SetEnabled(true)
    end

    if itemData.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
        self.state_text:SetText("正在前往")
    elseif itemData.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
        self.state_text:SetText("战斗中")
    elseif itemData.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
        self.state_text:SetText("正在撤退")
    elseif itemData.State == NationDefine.NATION_TEAM_BEHAVIOR_STATE.WAITING then
        self.state_text:SetText("正在前往")
    else
        self.state_text:SetText("驻守中")
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

    if itemData.Time > 0 then
        self.time_text:SetText(os.date("%M:%S", math.modf(itemData.Time)))
        HandleTimer(self, itemData.Time, itemData.State)
    else
        self.time_text:SetText("")
    end
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