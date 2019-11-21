--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationAliancePlayerDetailView = BaseClass("UINationAliancePlayerDetailView", UIBaseView)
local base = UIBaseView

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.titleUIText = self:AddComponent(UIText, "Bg/title_UIText")
    self.titleUIText:SetText(DataUtil.GetClientText(200225))

    self.maskButton = self:AddComponent(UIButton, "maskButton")
    self.maskButton:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        --关闭界面
        self.ctrl:CloseSelf()
    end)

    self.closeUIButton = self:AddComponent(UIButton, "Bg/CloseButton")
    self.closeUIButton:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        --关闭界面
        self.ctrl:CloseSelf()
    end)

    --玩家信息
    self.memberNameText = self:AddComponent(UIText, "memberNameText")
    self.iconFrame_UIImage = self:AddComponent(UIImage, "frameImage", AtlasConfig.DynamicTex)
    self.iconImage_UIImage = self:AddComponent(UIImage, "frameImage/iconImage_UIImage", AtlasConfig.DynamicTex)
    self.shiliValueUIText = self:AddComponent(UIText, "shiliValue_UIText")

    --所属联盟，信息
    self.subTitle1 = self:AddComponent(UIText, "unionGroup/title")
    self.subTitle1:SetText(DataUtil.GetClientText(200226))
    self.unionName_UIText = self:AddComponent(UIText, "unionGroup/unionName_UIText")
    self.unionPos_UIText = self:AddComponent(UIText, "unionGroup/unionPos_UIText")

    self.weekContribution_title = self:AddComponent(UIText, "unionGroup/weekContribution_title")
    self.weekContribution_title:SetText(DataUtil.GetClientText(200227))
    self.allContribution_title = self:AddComponent(UIText, "unionGroup/allContribution_title")
    self.allContribution_title:SetText(DataUtil.GetClientText(200228))
    self.weekBattle_title = self:AddComponent(UIText, "unionGroup/weekBattle_title")
    self.weekBattle_title:SetText(DataUtil.GetClientText(200229))
    self.regionName_title = self:AddComponent(UIText, "unionGroup/regionName_title")
    self.regionName_title:SetText(DataUtil.GetClientText(200106))

    self.weekContribution_UIText = self:AddComponent(UIText, "unionGroup/weekContribution_value")
    self.allContribution_UIText = self:AddComponent(UIText, "unionGroup/allContribution_value")
    self.weekBattle_UIText = self:AddComponent(UIText, "unionGroup/weekBattle_value")
    self.regionName_UIText = self:AddComponent(UIText, "unionGroup/regionName_value")

    self.subTitle2 = self:AddComponent(UIText, "singleGroup/singleTitle_UIText")
    self.subTitle2:SetText(DataUtil.GetClientText(200231))
    self.single_infoUIText = self:AddComponent(UIText, "singleGroup/single_info_UIText")

    --暂时没有这个按钮
    --self.addToBlackUIText = self:AddComponent(UIText, "addToBlack_UIButton/addToBlack_UIText")
    --self.addToBlackUIText:SetText("加入黑名单")
    --self.addToBlackUIButton = self:AddComponent(UIButton, "addToBlack_UIButton")
    --self.addToBlackUIButton:SetOnClick(function()
    --	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    --	--关闭界面
    --	UISpecial:GetInstance():UITipText("暂无功能")
    --end)

    --暂时为确定按钮
    self.sendMailTextUIText = self:AddComponent(UIText, "sendMail_UIButton/sendMailText_UIText")
    self.sendMailTextUIText:SetText(DataUtil.GetClientText(200006))
    self.sendMailUIButton = self:AddComponent(UIButton, "sendMail_UIButton")
    self.sendMailUIButton:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.ctrl:CloseSelf()
    end)
end

local function OnEnable(self)
    base.OnEnable(self)
    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

    --玩家信息
    self.shiliValueUIText:SetText(DataUtil.GetClientText(200063) .. "  " .. math.modf(self.model.memberData.force))
    self.memberNameText:SetText(self.model.memberData.name)
    self.iconFrame_UIImage:SetSpriteName(self.model.headFrame)
    self.iconImage_UIImage:SetSpriteName(self.model.headIcon)

    --联盟名字
    self.unionName_UIText:SetText(self.model.memberData.unionName)
    self.unionPos_UIText:SetText(self.model.memberData.positionData.OrderName)
    self.weekContribution_UIText:SetText(math.modf(self.model.memberData.contributionWeek))
    self.allContribution_UIText:SetText(math.modf(self.model.memberData.contribution))
    self.weekBattle_UIText:SetText(math.modf(self.model.memberData.militaryExploits))
    self.regionName_UIText:SetText(self.model.memberData.regionData.Name)

    --todo，临时的
    self.single_infoUIText:SetText("这家伙很懒，什么都没有留下~")
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_UNION_PLAYER_DETAIL_USER_UNION_FLUSH, self.OnNationUnionPlayerDetailUserUnionFlush)

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_UNION_PLAYER_DETAIL_USER_UNION_FLUSH, self.OnNationUnionPlayerDetailUserUnionFlush)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

local function OnNationUnionPlayerDetailUserUnionFlush(self, unionId)
    if unionId ~= nil and unionId ~= 0 then
        self.ctrl:CloseSelf()
    else
    end
end

UINationAliancePlayerDetailView.OnNationUnionPlayerDetailUserUnionFlush = OnNationUnionPlayerDetailUserUnionFlush
UINationAliancePlayerDetailView.OnCreate = OnCreate
UINationAliancePlayerDetailView.OnEnable = OnEnable
UINationAliancePlayerDetailView.OnRefresh = OnRefresh
UINationAliancePlayerDetailView.OnAddListener = OnAddListener
UINationAliancePlayerDetailView.OnRemoveListener = OnRemoveListener
UINationAliancePlayerDetailView.OnDestroy = OnDestroy

return UINationAliancePlayerDetailView
