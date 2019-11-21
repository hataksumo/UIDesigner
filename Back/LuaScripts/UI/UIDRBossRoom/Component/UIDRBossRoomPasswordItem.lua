--[[
-- added by xupeng @ 2019-7-16
-- 该模块用于设置密码预设
--]]
local UIDRBossRoomPasswordItem = BaseClass("UIDRBossRoomPasswordItem", UIWrapComponent)
local base = UIWrapComponent

local function SetActive(self, isActive)
    self.transform.gameObject:SetActive(isActive)
    if isActive then
        self.passwordText:SetText("")
    end  
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化
    self.passwordText = self:AddComponent(UIInput, "ParentLayout/InputField");
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
    self.changeBtn = self:AddComponent(UIButton, "ParentLayout/certainBtn");
    self.changeBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        local text = self.passwordText:GetText();
        if text == "" then
            UISpecial:GetInstance():UITipText("房间密码被移除，可自由加入")
        elseif string.len(text) < 3 then
            UISpecial:GetInstance():UITipText("密码不能少于3位数")
            return
        else
            UISpecial:GetInstance():UITipText("房间密码设置成功")
        end
        self.view.ctrl:SetPassword(self.passwordText:GetText());
        SetActive(self, false)
    end)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self)

end

UIDRBossRoomPasswordItem.OnCreate = OnCreate
UIDRBossRoomPasswordItem.OnRefresh = OnRefresh
UIDRBossRoomPasswordItem.SetActive = SetActive

return UIDRBossRoomPasswordItem
