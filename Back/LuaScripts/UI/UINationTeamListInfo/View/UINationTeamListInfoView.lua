--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationTeamListInfoView = BaseClass("UINationTeamListInfoView", UIBaseView)
local base = UIBaseView

local UINationJLRItem = require "UI.UINationTeamListInfo.Component.UINationJLRItem"
local UINationSHLItem = require "UI.UINationTeamListInfo.Component.UINationSHLItem"

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.exitUIButton = self:AddComponent(UIButton, "Root/top/exit_UIButton")
    self.exitUIButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.titleNameText =  self:AddComponent(UIText, "Root/top/titleName_UIText")
    self.titleNameText:SetText(DataUtil.GetClientText(200129))

    self.corpsText = self:AddComponent(UIText, "Root/left/corpsIcon/corpsText")
    self.corpsIconBG = self:AddComponent(UIImage, "Root/left/corpsIcon/IconBG", AtlasConfig.DynamicNationTex)
    self.corpsIcon = self:AddComponent(UIImage, "Root/left/corpsIcon/Icon", AtlasConfig.DynamicNationTex)
    self.militaryText = self:AddComponent(UIText, "Root/left/militaryBgImage/militaryText")
    self.militaryText:SetText(DataUtil.GetClientText(200109))
    self.militaryValueText = self:AddComponent(UIText, "Root/left/militaryBgImage/militaryValueText")
    self.siegeText = self:AddComponent(UIText, "Root/left/siegeBgImage/siegeText")
    self.siegeText:SetText(DataUtil.GetClientText(200015))
    self.siegeValueText = self:AddComponent(UIText, "Root/left/siegeBgImage/siegeValueText")
    self.team_cost_text=self:AddComponent(UIText,"Root/left/teamCostImage/TeamCostText")

    --队伍第三个位置锁定
    self.lockThirdPosOverObj = UIUtil.FindTrans(self.transform, "Root/LockCardOver").gameObject
    self.lockThirdPosText = self:AddComponent(UIText, "Root/LockCardUnder/LockCardText")
    self.lockThirdPosUnderObj = UIUtil.FindTrans(self.transform, "Root/LockCardUnder").gameObject

    self.JLRCardItems = {}
    self.SHLCardItems = {}
    for i = 1, 3 do
        self.JLRCardItems[i] = UINationJLRItem.New(self, "Root/teamCardContent/Item" .. i .. "/JLRIcon" .. i)
        self.SHLCardItems[i] = UINationSHLItem.New(self, "Root/teamCardContent/Item" .. i .. "/SHLIcon" .. i)
        self.JLRCardItems[i]:OnCreate(self)
        self.JLRCardItems[i]:OnRefresh()
        self.SHLCardItems[i]:OnCreate(self)
        self.SHLCardItems[i]:OnRefresh()
    end
end

local function OnEnable(self)
    base.OnEnable(self)

    --队伍第三个位置是否解锁
    if self.model.is_unLock_third_team then
        self.JLRCardItems[3]:SetCardPosLocked(false)
        self.SHLCardItems[3]:SetCardPosLocked(false)
        self.lockThirdPosOverObj:SetActive(false)
        self.lockThirdPosUnderObj:SetActive(false)
    else
        self.JLRCardItems[3]:SetCardPosLocked(true)
        self.SHLCardItems[3]:SetCardPosLocked(true)
        self.lockThirdPosOverObj:SetActive(true)
        self.lockThirdPosUnderObj:SetActive(true)
        local name = NationScienceData:GetInstance():GetStaticNationalTechById(NationDefine.NATION_TECH_ID.FORMATION_UNLOCK).TechName
        self.lockThirdPosText:SetText(name .. "Lv." .. self.model.is_unLock_third_pos_level .. DataUtil.GetClientText(200348))
    end

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

    for k, v in pairs(self.JLRCardItems) do
        v:OnRefresh(self.model.deployUpArrayCards[1][k])
    end
    for j, w in pairs(self.SHLCardItems) do
        w:OnRefresh(self.model.deployUpArrayCards[2][j])
    end

    self.corpsText:SetText(self.model.armyGroupName)
    self.corpsIconBG:SetSpriteName(self.model.armyGroupIconBG)
    self.corpsIcon:SetSpriteName(self.model.armyGroupIcon)

    self.militaryValueText:SetText(self.model.totalArmy)
    self.siegeValueText:SetText(self.model.totalAttackPower)
    if self.model.card_sum == nil then
        self.team_cost_text:SetText("")
    else
        if self.model.card_sum>self.model.cardCostLimit then
            self.team_cost_text:SetText(string.format("<color=#E04B4D>%d</color>/%d",self.model.card_sum,self.model.cardCostLimit))
        else
            self.team_cost_text:SetText(string.format("%d/%d",self.model.card_sum,self.model.cardCostLimit))
        end
    end

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH, OnRefresh)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.ON_NATION_SELECTTEAM_REFRESH, OnRefresh)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationTeamListInfoView.OnCreate = OnCreate
UINationTeamListInfoView.OnEnable = OnEnable
UINationTeamListInfoView.OnRefresh = OnRefresh
UINationTeamListInfoView.OnAddListener = OnAddListener
UINationTeamListInfoView.OnRemoveListener = OnRemoveListener
UINationTeamListInfoView.OnDestroy = OnDestroy

return UINationTeamListInfoView
