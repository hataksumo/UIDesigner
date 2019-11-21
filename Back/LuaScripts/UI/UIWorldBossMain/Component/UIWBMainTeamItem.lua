local UIWBMainTeamItem = BaseClass("UIWBMainTeamItem", UIBaseContainer)
local base = UIBaseContainer

local function OnClickTeamBtn(self)
    if self.data == nil or (self.data ~= nil and self.data.power == 0) then
        return
    end
    self.view:SelectOneTeamObj(self.index)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_WORLD_BOSS_SELECT_TEAM, self.data.teamID)
end

local function OnClickAddSpirit(self)
    --打开购买体力界面
    UISpecial:GetInstance():UITipText("打开购买体力界面")
end

local function OnCreate(self)
    base.OnCreate(self)

    self.name = self:AddComponent(UIText, "name")
    self.teamBtn = self:AddComponent(UIButton, "bg")
    self.teamBtn:SetOnClick(function()
        --选中这个队伍
        OnClickTeamBtn(self)
    end)

    self.addSpiritBtn = self:AddComponent(UIButton, "Info/addMoveValueBtn")
    self.addSpiritBtn:SetOnClick(function()
        OnClickAddSpirit(self)
    end)

    self.headImg = self:AddComponent(UIImage, "Info/head", AtlasConfig.DynamicTex)
    self.headTopImg = self:AddComponent(UIImage, "Info/headBg", AtlasConfig.DynamicTex)
    self.powerText = self:AddComponent(UIText, "Info/battleValue")
    self.moveText = self:AddComponent(UIText, "Info/moveValue")
    self.hpText = self:AddComponent(UIText, "Info/hpValue")
    self.hpSlider = self:AddComponent(UISlider, "Info/hpSlider")

    self.infoPanel = UIUtil.FindTrans(self.transform, "Info").gameObject
    self.emptyPanel = UIUtil.FindTrans(self.transform, "Empty").gameObject
    self.DeadPanel = UIUtil.FindTrans(self.transform, "Dead").gameObject
end

local function OnRefresh(self, index, data)
    self.data = data
    self.index = index
    self.name:SetText("队伍 " .. index)

    if data == nil or (data ~= nil and data.power == 0) then
        self.emptyPanel:SetActive(true)
        self.infoPanel:SetActive(false)
        self.DeadPanel:SetActive(false)
        return
    end

    --死亡
    if data.state == 2 then
        self.DeadPanel:SetActive(true)
        self.emptyPanel:SetActive(false)
        self.infoPanel:SetActive(true)
    else
        self.DeadPanel:SetActive(false)
        self.emptyPanel:SetActive(false)
        self.infoPanel:SetActive(true)
    end

    local cardData = CardData:GetInstance():GetCardDataById(self.data.head)
    --self.headTopImg:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(cardData.quality))
    self.headImg:SetSpriteName(cardData.icon)
    self.powerText:SetText(self.data.power)
    self.hpText:SetText(self.data.hp .. "/" .. self.data.maxHP)
    self.moveText:SetText(self.data.spirit)
    self.hpSlider:SetValue(self.data.hp / self.data.maxHP)
end

local function OnDestroy(self)
    base.OnDestroy(self)

end

UIWBMainTeamItem.OnCreate = OnCreate
UIWBMainTeamItem.OnRefresh = OnRefresh
UIWBMainTeamItem.OnDestroy = OnDestroy

return UIWBMainTeamItem