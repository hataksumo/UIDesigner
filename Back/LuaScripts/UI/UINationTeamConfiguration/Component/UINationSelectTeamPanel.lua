local UINationSelectTeamPanel = BaseClass("UINationSelectTeamPanel", UIBaseContainer)
local base = UIBaseContainer

local UINationTeamListItem = require "UI.UINationTeamConfiguration.Component.UINationTeamListItem"
local UINationJLRItem = require "UI.UINationTeamConfiguration.Component.UINationJLRItem"
local UINationSHLItem = require "UI.UINationTeamConfiguration.Component.UINationSHLItem"

local function OnCreate(self)
    base.OnCreate(self)

    self.configureButton_UIImage = self:AddComponent(UIImage, "configureButton")
    self.grayMaterial = self.configureButton_UIImage:GetMat()
    self.configureButton_UIText = self:AddComponent(UIText, "configureButton/configureText")
    self.configureButton_UIText:SetText(DataUtil.GetClientText(200018))
    self.configureButton = self:AddComponent(UIButton, "configureButton")
    self.configureButton:SetOnClick(function()
        self.view.ctrl:DeployBeforeconfigureButtonClick()
    end)

    self.recruitButton_UIImage = self:AddComponent(UIImage, "recruitButton")
    self.recruitButton_UIText = self:AddComponent(UIText, "recruitButton/recruitText")
    self.recruitButton_UIText:SetText(DataUtil.GetClientText(200110))
    self.recruitButton = self:AddComponent(UIButton, "recruitButton")
    self.recruitButton:SetOnClick(function()
        self.view.ctrl:DeployBeforeRecruitButtonClick()
    end)

    self.nationTeam_scroll_view_content = self:AddComponent(UIWrapGroup3D, "ScrollRect/grid", UINationTeamListItem)

    self.teamCardContentObj = UIUtil.FindTrans(self.transform, "teamCardContent").gameObject
    self.JLRCardItems = {}
    self.SHLCardItems = {}
    for i = 1, 3 do
        self.JLRCardItems[i] = UINationJLRItem.New(self, "teamCardContent/Item" .. i .. "/JLRIcon" .. i)
        self.JLRCardItems[i]:OnCreate(self)
        self.JLRCardItems[i]:OnCreateArmySlider(self)
        self.JLRCardItems[i]:OnSetData()
        self.SHLCardItems[i] = UINationSHLItem.New(self, "teamCardContent/Item" .. i .. "/SHLIcon" .. i)
        self.SHLCardItems[i]:OnCreate(self)
        self.SHLCardItems[i]:OnCreateArmySlider(self)
        self.SHLCardItems[i]:OnSetData()
    end

    self.teamSelectTrans = UIUtil.FindTrans(self.transform, "teamSelectObj")
    self.teamSelectTrans_TitleText = self:AddComponent(UIText, "teamSelectObj/teamSeria")
    self.teamSelectTrans_TimeText = self:AddComponent(UIText, "teamSelectObj/textTime")
end

local function OnEnable(self)
    local myNationTeamList = self.view.model.teamList
    self.nationTeam_scroll_view_content:SetLength(#myNationTeamList)
    self.nationTeam_scroll_view_content:ResetToBeginning()

    self:OnRefresh()
end

local function OnRefresh(self)
    --没有选择队伍
    if self.view.model.currentSelectIndex == 0 then
        self.teamSelectTrans.gameObject:SetActive(false)
        self.recruitButton:SetActive(false)
        self.configureButton:SetActive(false)

        self.teamCardContentObj:SetActive(false)
        for k, v in pairs(self.JLRCardItems) do
            v:OnSetData(nil)
        end
        for j, w in pairs(self.SHLCardItems) do
            w:OnSetData(nil)
        end
    else
        self.recruitButton:SetActive(true)
        self.configureButton:SetActive(true)
        self.teamCardContentObj:SetActive(true)

        if self.view.model.nationTeamData.currentBehavior.type ~= NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
            self.recruitButton_UIImage:SetMat(self.grayMaterial)
            self.configureButton_UIImage:SetMat(self.grayMaterial)
        else
            if not self.view.model.nationTeamData:IsTeamCardsEmpty() then
                -- 空的
                self.recruitButton_UIImage:SetMat()
            else
                self.recruitButton_UIImage:SetMat(self.grayMaterial)
            end
            self.configureButton_UIImage:SetMat()
        end

        for k, v in pairs(self.JLRCardItems) do
            v:OnSetData(self.view.model.deployUpArrayCards[1][k])
        end
        for j, w in pairs(self.SHLCardItems) do
            w:OnSetData(self.view.model.deployUpArrayCards[2][j])
        end

        self.nationTeam_scroll_view_content:WrapContent(true)
        self.teamSelectTrans:SetParent(self.nationTeam_scroll_view_content:GetComponentByIndex(self.view.model.currentSelectIndex - 1).transform)
        self.teamSelectTrans.localPosition = Vector3.zero
        self.teamSelectTrans.localScale = Vector3.one
        self.teamSelectTrans.gameObject:SetActive(true)
    end
end

UINationSelectTeamPanel.OnCreate = OnCreate
UINationSelectTeamPanel.OnEnable = OnEnable
UINationSelectTeamPanel.OnRefresh = OnRefresh
return UINationSelectTeamPanel