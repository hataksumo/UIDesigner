
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]
local UIOnLineRewardWrapItem = require "UI.UIHDOnLineGift.Component.UIOnlineRewardWrapItem"
local UIHDOnLineGiftView = BaseClass("UIHDOnLineGiftView", UIBaseView)
local base = UIBaseView
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.maskUIButton = self:AddComponent(UIButton, "mask_UIButton")
	self.exitUIButton = self:AddComponent(UIButton, "ParentLayout/top/close_UIButton")
	self.Online_reward_scroll_view_content=self:AddComponent(UIWrapGroup3D,"ParentLayout/panel/AwardGroup",UIOnLineRewardWrapItem)
	self.onlinetimeUIText=self:AddComponent(UIText, "ParentLayout/Info/time/onlinetime_UIText")
	-- 关闭页面按钮
	self.maskUIButton:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
		self.ctrl:CloseSelf()
	end)
	self.exitUIButton:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
		self.ctrl:CloseSelf()
	end)
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end

local function OnRefresh(self)
	self.reward=self.model.reward
	self.allItemData=self.model.allItemData
	self:GetReciveRewardIcon()
end

local function OnUIMsgRefreshRewardData(self, InitNum, tempNum)
    self.reward = self.model.reward
    self.allItemData = self.model.allItemData
    self.initNum = InitNum
    self.tempNum = tempNum
end

--更新在线时间
local function UpdateOnlineTime(self)
	if (self.model:GetOnlineTime()~=nil) then
		self.onlinetimeUIText:SetText(self.model:GetOnlineTime())
	end

    if self.initNum ~= self.tempNum then
        self:SetOnlineRewardData()
    end
end

--显示领取了几分钟的奖励
local function GetReciveRewardIcon(self)
	self:SetOnlineRewardData()
	self:UpdateOnlineTime()
	self.timer = TimerManager:GetInstance():GetTimer(1, UpdateOnlineTime ,self,false,false,true)
	self.timer:Start()
end

---设置在线礼包列表
local function SetOnlineRewardData(self)
	self.online_reward_data=self.model.online_reward_data
		if self.online_reward_data ~= nil and #self.online_reward_data > 0 then
			self.Online_reward_scroll_view_content:SetLength(table.count(self.online_reward_data))
			self.Online_reward_scroll_view_content:ResetToBeginning()
		else
			self.Online_reward_scroll_view_content:SetLength(0)
		end
end



local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.ON_CHANGE_ONLINE, OnUIMsgRefreshRewardData)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.ON_CHANGE_ONLINE, OnUIMsgRefreshRewardData)

end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end
-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	if self.timer ~= nil then
		self.timer:Stop()
		self.timer = nil
	end

    self.initNum = nil
    self.tempNum = nil
end

UIHDOnLineGiftView.OnCreate = OnCreate
UIHDOnLineGiftView.OnEnable = OnEnable
UIHDOnLineGiftView.OnRefresh = OnRefresh
UIHDOnLineGiftView.OnDisable=OnDisable
UIHDOnLineGiftView.OnAddListener = OnAddListener
UIHDOnLineGiftView.OnRemoveListener = OnRemoveListener
UIHDOnLineGiftView.OnDestroy = OnDestroy
UIHDOnLineGiftView.SetOnlineRewardData=SetOnlineRewardData
UIHDOnLineGiftView.UpdateOnlineTime=UpdateOnlineTime
UIHDOnLineGiftView.GetReciveRewardIcon=GetReciveRewardIcon
return UIHDOnLineGiftView
