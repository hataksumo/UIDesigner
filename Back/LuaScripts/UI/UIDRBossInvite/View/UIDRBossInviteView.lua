
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIDRBossInviteView = BaseClass("UIDRBossInviteView", UIBaseView)
local base = UIBaseView

local staticData = DataUtil.GetData("mu_p_boss_duplicate")

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
    self.maskBtn = self:AddComponent(UIButton, "mask");
    self.maskBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        DRBossData:GetInstance():RemoveInviteMsg(self.data);
    end)
    self.exitBtn = self:AddComponent(UIButton, "ParentLayout/exitBtn");
    self.exitBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        DRBossData:GetInstance():RemoveInviteMsg(self.data);
    end)
    self.certainBtn = self:AddComponent(UIButton, "ParentLayout/certainBtn");
    self.certainBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        DRBossData:GetInstance():SendJoinRoom(self.data.chapterId,self.data.roomId,self.data.password);
    end)
    self.cancelBtn = self:AddComponent(UIButton, "ParentLayout/cancelBtn");
    self.cancelBtn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        DRBossData:GetInstance():RemoveInviteMsg(self.data);
    end)
    self.infoText = self:AddComponent(UIText, "ParentLayout/infoTxt");
end

local function OnEnable(self)
	base.OnEnable(self)
    self:OnRefresh(self)
end

local function UpdateTime(self)
    if self.curTime > 0 then
        local nameAdd = "(<color=#df4c4c>陌生人</color>)";
        if self.data.type == 2 then
            nameAdd = "(<color=#3f793f>好友</color>)";
        end
        local str = string.format("%s%s（最强战力：%s）邀请您加入<color=#5da5f9>千机黑刹——%s</color>，是否同意？（<color=#df4c4c>%s</color>秒后自动拒绝）",nameAdd,self.data.name,self.data.power,staticData[self.data.chapterId].DuplicateName,self.curTime);
        self.infoText:SetText(str);
        self.curTime = self.curTime - 1;
    else
        DRBossData:GetInstance():RemoveInviteMsg(self.data);
    end
end

local function OnRefresh(self)
	-- 各组件刷新
    if self.timer ~= nil then
        self.timer:Stop()
    end
    self.timer = nil
    self.data = DRBossData:GetInstance().inviteMsg_list[1]
    if self.data == nil then
        self.ctrl:CloseSelf();
        return
    end
    self.curTime = 30
    self:UpdateTime(self)
    self.timer = TimerManager:GetInstance():GetTimer(1, self.UpdateTime , self)
    self.timer:Start()
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
    self:AddUIListener(UIMessageNames.UI_WORLD_BOSS_ROOM_INVITE_REFRESH, OnRefresh);
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_WORLD_BOSS_ROOM_INVITE_REFRESH, OnRefresh);
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量
    if self.timer ~= nil then
        self.timer:Stop()
    end
    self.timer = nil
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UIDRBossInviteView.OnCreate = OnCreate
UIDRBossInviteView.OnEnable = OnEnable
UIDRBossInviteView.OnRefresh = OnRefresh
UIDRBossInviteView.OnAddListener = OnAddListener
UIDRBossInviteView.OnRemoveListener = OnRemoveListener
UIDRBossInviteView.OnDisable = OnDisable
UIDRBossInviteView.OnDestroy = OnDestroy
UIDRBossInviteView.UpdateTime = UpdateTime

return UIDRBossInviteView
