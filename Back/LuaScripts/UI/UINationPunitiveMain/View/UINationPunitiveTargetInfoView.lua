--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationPunitiveTargetInfoView = BaseClass("UINationPunitiveTargetInfoView", UIBaseView)
local base = UIBaseView
local UITeamItem = require "UI.UINationPunitiveMain.Component.UITeamItem"
local UIDropItem = require "UI.UINationPunitiveMain.Component.UIDropItem"
--暂时不用
--local function OnChangedTeamPanelScrollView(self)
--    local cellSize, spacing = self.team_group:GetCellSizeAndSpacing()
--    local totalHeight = (#self.model.teamDataList - 1) * (cellSize.y + spacing.y) - spacing.y
--    local targetHeight = totalHeight - self.team_group_rectTrans.height
--    if self.team_group_rectTrans.PosY >= targetHeight then
--        --向服务器请求消息
--    end
--end

local function OnUIMsgRefreshTeamDataGroup(self)
    local itemDataTab = self.model.teamDataList
    if itemDataTab ~= nil then
        self.team_group_empty:SetText("")
        self.team_group:SetLength(#itemDataTab)
        local index = self.team_group:GetRealIndex(self.team_group.transform.localPosition)
        if index < 0 then
            index = 0
        end
        self.team_group:SetGridPositionByIndex(index)
    else
        self.team_group:SetLength(0)
        self.team_group_empty:SetText(DataUtil.GetClientText(200036))
    end
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.closeBtn = self:AddComponent(UIButton, "Root/BgRoot/CloseBtn")
    self.mask_btn = self:AddComponent(UIButton, "MaskBtn")
    self.mask_btn:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)
    self.closeBtn:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    self.collectButton_UIText = self:AddComponent(UIText, "Root/RightRoot/collect_UIText")
    self.collectButton_UIText:SetText(DataUtil.GetClientText(200043))
    self.collectUIButton_UIImage = self:AddComponent(UIImage, "Root/RightRoot/collect_UIButton", AtlasConfig.DynamicNationTex)
    self.collectUIButton = self:AddComponent(UIButton, "Root/RightRoot/collect_UIButton")
    self.collectUIButton:SetOnClick(function()
        if self.model.collectPosID ~= nil then
            self.collectUIButton_UIImage:SetSpriteName("ui_t_c2_592")
        end

        self.ctrl:CollectThisPoint()
    end)

    self.shareButton_UIText = self:AddComponent(UIText, "Root/RightRoot/share_UIText")
    self.shareButton_UIText:SetText(DataUtil.GetClientText(200044))
    self.shareUIButton = self:AddComponent(UIButton, "Root/RightRoot/share_UIButton")
    self.shareUIButton:SetOnClick(function()
        self.ctrl:ShareThisPoint()
    end)

    self.attackButton_UIText = self:AddComponent(UIText, "Root/RightRoot/attackText")
    self.attackButton_UIText:SetText(DataUtil.GetClientText(200027))
    self.attackUIButton = self:AddComponent(UIButton, "Root/RightRoot/attack_UIButton")
    self.attackUIButton:SetOnClick(function()
        --开始攻打
        self.ctrl:StartAttack()
    end)

    self.title_UIText = self:AddComponent(UIText, "Root/RightRoot/title_UIText")
    self.mapIcon_UIImage = self:AddComponent(UIImage, "Root/RightRoot/mapIcon_UIImage", AtlasConfig.DynamicTex)
    self.type_Title = self:AddComponent(UIText, "Root/RightRoot/type_Title")
    self.type_Title:SetText(DataUtil.GetClientText(200025))
    self.terrain_UIText = self:AddComponent(UIText, "Root/RightRoot/type_UIText")
    self.jun_Title = self:AddComponent(UIText, "Root/RightRoot/jun_Title")
    self.jun_Title:SetText(DataUtil.GetClientText(200047))
    self.difficult_UIText = self:AddComponent(UIText, "Root/RightRoot/jun_UIText")
    self.drop_UIText = self:AddComponent(UIText, "Root/RightRoot/drop_UIText")
    self.drop_UIText:SetText(DataUtil.GetClientText(200026))
    self.dropItem_group = self:AddComponent(UIWrapGroup3D, "Root/RightRoot/DropScrollView/Content", UIDropItem)

    --队伍列表
    self.team_group_title = self:AddComponent(UIText, "Root/LeftRoot/nationGroup/nationGroupText")
    self.team_group_title:SetText(DataUtil.GetClientText(200060))
    self.team_group = self:AddComponent(UIWrapGroup3D, "Root/LeftRoot/TeamScrollView/Grid", UITeamItem)
    self.team_group_empty = self:AddComponent(UIText, "Root/LeftRoot/TeamScrollView/Empty")
    self.team_group_rectTrans = UIUtil.FindComponent(self.team_group.transform, typeof(CS.UnityEngine.RectTransform))
end

local function OnEnable(self)
    base.OnEnable(self)

    if self.model.collectPosID then
        self.collectUIButton_UIImage:SetSpriteName("ui_t_c2_630")
    else
        self.collectUIButton_UIImage:SetSpriteName("ui_t_c2_592")
    end

    self.team_group:SetLength(0)

    local itemDataTab = self.model.dropItemList
    if itemDataTab ~= nil then
        self.dropItem_group:SetLength(#itemDataTab)
        self.dropItem_group:SetGridPositionByIndex(0)
    else
        self.dropItem_group:SetLength(0)
    end

    local outlawData = self.model.outlawData
    self.title_UIText:SetText(outlawData.Name)
    self.terrain_UIText:SetText(outlawData.Terrain)
    self.difficult_UIText:SetText(outlawData.Difficult)
    self.mapIcon_UIImage:SetSpriteName(outlawData.ResImage)
    self.mapIcon_UIImage.rectTransform.sizeDelta = Vector2.New(outlawData.ResImageWidth, outlawData.ResImageHeight)
    self.mapIcon_UIImage.transform.localPosition = Vector3.New(outlawData.PosX, outlawData.PosY, 0)

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_PUNITIVE_TEAM_REFRESH, OnUIMsgRefreshTeamDataGroup)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_PUNITIVE_TEAM_REFRESH, OnUIMsgRefreshTeamDataGroup)
end

local function OnDisable(self)
    base.OnDisable(self)

end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationPunitiveTargetInfoView.OnCreate = OnCreate
UINationPunitiveTargetInfoView.OnEnable = OnEnable
UINationPunitiveTargetInfoView.OnRefresh = OnRefresh
UINationPunitiveTargetInfoView.OnAddListener = OnAddListener
UINationPunitiveTargetInfoView.OnRemoveListener = OnRemoveListener
UINationPunitiveTargetInfoView.OnDisable = OnDisable
UINationPunitiveTargetInfoView.OnDestroy = OnDestroy

return UINationPunitiveTargetInfoView
