--[[
-- added by xupeng @ 2019-7-16
-- 该模块邀请队友列表
--]]
local UIDRBossRoomInviteView = BaseClass("UIDRBossRoomInviteView", UIWrapComponent)
local base = UIWrapComponent

local UIDRBossRoomInviteItem = require "UI.UIDRBossRoom.Component.UIDRBossRoomInviteItem"

local function SetActive(self, isActive)
    self.transform.gameObject:SetActive(isActive)
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.maskBtn = self:AddComponent(UIButton, "mask");
    self.maskBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        SetActive(self, false)
    end)
    self.exitBtn = self:AddComponent(UIButton, "ParentLayout/exitBtn");
    self.exitBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        SetActive(self, false)
    end)
    self.transform.gameObject:SetActive(true)
    self.list_group = self:AddComponent(UIWrapGroup3D,"ParentLayout/ScrollView/GameObject",UIDRBossRoomInviteItem)
    self.transform.gameObject:SetActive(false)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, data)
    self.itemData = data;
    if self.itemData ~= nil then
        self.list_group:SetLength(table.count(self.itemData))
        self.list_group:ResetToBeginning()
        SetActive(self, true)
    end
end

UIDRBossRoomInviteView.OnCreate = OnCreate
UIDRBossRoomInviteView.OnRefresh = OnRefresh

return UIDRBossRoomInviteView
