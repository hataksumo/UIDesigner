local UILeftTeamItem = BaseClass("UILeftTeamItem", UIWrapComponent)
local base = UIWrapComponent

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnItemClick(self)
    local itemData = self.view.model.attackTeamTab[self.index]
    self.view:OnClickOpenButtonPanel(itemData.TeamID)
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
    self.state_text = self:AddComponent(UIText, "InfoPanel/state")
    self.icon_image = self:AddComponent(UIImage, "InfoPanel/icon", AtlasConfig.DynamicTex)
    self.state_image = self:AddComponent(UIImage, "InfoPanel/stateBg", AtlasConfig.DynamicNationTex)

    self.retreatButtonPanelObj = UIUtil.FindTrans(self.transform, "TeamButtonPanel").gameObject
    self.retreatBtn_UIText = self:AddComponent(UIText, "TeamButtonPanel/Button/Text")
    self.retreatBtn_UIText:SetText(DataUtil.GetClientText(200040))
    self.retreatBtn = self:AddComponent(UIButton, "TeamButtonPanel/Button")
    self.retreatBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        local itemData = self.view.model.attackTeamTab[self.index]
        self.view.ctrl:OnClickRetreat(itemData.TeamID, itemData.State)
    end)
end
-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    local itemData = self.view.model.attackTeamTab[real_index]
    if itemData == nil then
        return
    end
    self.index = real_index
    self.id = itemData.ID

    self.playerName_text:SetText(itemData.PlayerName)
    self.armyGroup_text:SetText(itemData.ArmyGroup)
    self.icon_image:SetSpriteName(itemData.Icon)

    if itemData.State == NationDefine.SIEGE_KILL_TEAM_STATE.WAITBATTLE then
        self.state_text:SetText(DataUtil.GetClientText(200159))
    elseif itemData.State == NationDefine.SIEGE_KILL_TEAM_STATE.INBATTLE then
        self.state_text:SetText(DataUtil.GetClientText(200065))
    elseif itemData.State == NationDefine.SIEGE_KILL_TEAM_STATE.PREPARE then
        self.state_text:SetText(DataUtil.GetClientText(200160))
    end

    if itemData.IsMine and self.view.curOnClickTeamID == itemData.TeamID then
        self.retreatButtonPanelObj:SetActive(true)
    else
        self.retreatButtonPanelObj:SetActive(false)
    end

    if itemData.IsMine then
        self.state_image:SetSpriteName("ui_t_c2_603")
        self.isCanClick = true
    elseif itemData.ArmyGroupID == self.view.model.myUnionID then
        self.state_image:SetSpriteName("ui_t_c2_602")
        self.isCanClick = false
    else
        self.state_image:SetSpriteName("ui_t_c2_601")
        self.isCanClick = false
    end

    ----若刷到倒数第二个的时候,向服务器请求下20条数据
    --if real_index >= (#self.view.model.teamDataList - 2) then
    --    --向服务器发送请求。
    --    --往格子中，加入新的数据。
    --    --锁定位置到当前的index
    --    self.view.ctrl:ToSeverGetTeamData()
    --end
end

UILeftTeamItem.OnCreate = OnCreate
UILeftTeamItem.OnRefresh = OnRefresh
return UILeftTeamItem