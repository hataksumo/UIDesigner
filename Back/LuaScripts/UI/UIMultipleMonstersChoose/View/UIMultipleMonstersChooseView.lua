
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIMultipleMonstersChooseView = BaseClass("UIMultipleMonstersChooseView", UIBaseView)
local base = UIBaseView
local ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager")
local UIMultipleMonstersChooseWrapItem = require "UI.UIMultipleMonstersChoose.Component.UIMultipleMonstersChooseWrapItem"

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.nameUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item/Name_UIText")
	self.scrollContent=self:AddComponent(UIWrapGroup3D,"RightScroll/ScrollRect2/Content2",UIMultipleMonstersChooseWrapItem)
--[[	self.statusInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item/StatusInfo_UIText")
    
	self.dropInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item/DropInfo_UIText")
    
	self.nuLockUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item/LockImage/NuLock_UIText")
    
	self.nameUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (1)/Name_UIText")
    
	self.statusInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (1)/StatusInfo_UIText")
    
	self.dropInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (1)/DropInfo_UIText")
    
	self.nuLockUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (1)/LockImage/NuLock_UIText")
    
	self.nameUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (2)/Name_UIText")
    
	self.statusInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (2)/StatusInfo_UIText")
    
	self.dropInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (2)/DropInfo_UIText")
    
	self.nuLockUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (2)/LockImage/NuLock_UIText")
    
	self.nameUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (3)/Name_UIText")
    
	self.statusInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (3)/StatusInfo_UIText")
    
	self.dropInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (3)/DropInfo_UIText")
    
	self.nuLockUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (3)/LockImage/NuLock_UIText")
    
	self.nameUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (4)/Name_UIText")
    
	self.statusInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (4)/StatusInfo_UIText")
    
	self.dropInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (4)/DropInfo_UIText")
    
	self.nuLockUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (4)/LockImage/NuLock_UIText")
    
	self.nameUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (5)/Name_UIText")
    
	self.statusInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (5)/StatusInfo_UIText")
    
	self.dropInfoUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (5)/DropInfo_UIText")
    
	self.nuLockUIText = self:AddComponent(UIText, "RightScroll/ScrollRect2/Content2/Item (5)/LockImage/NuLock_UIText")]]
	self.timesText = self:AddComponent(UIText,"TotalText")
	self.resourceBarParent=UIUtil.FindTrans(self.transform,"LeftUp");
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UIMultipleMonstersChoose,ResourceBarType.MAIN_CITY,self)
	UIUtil.CreatCloseBtnComponent(self,self.resourceBarParent,function(go) self.closeComponent=go end,function()
		self.ctrl:CloseSelf()
	end,function()
		LJAudioManger:GetInstance():PlayVoice("UI_Brush_03")
		TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
			UIUtil.BackHomeMain()
		end,nil,true)
	end ,"千机黑刹",true,1)
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新

	self.timesText:SetText("今日剩余总次数"..self.model.attackNum)
	self.bossData = self.model.bossData
	if  #self.bossData > 0 then
		self.scrollContent:SetLength(table.count(self.bossData))
		self.scrollContent:SetGridPositionByIndex(0)
	else
		self.scrollContent:SetLength(0)
	end
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIMultipleMonstersChoose)
end

UIMultipleMonstersChooseView.OnCreate = OnCreate
UIMultipleMonstersChooseView.OnEnable = OnEnable
UIMultipleMonstersChooseView.OnRefresh = OnRefresh
UIMultipleMonstersChooseView.OnAddListener = OnAddListener
UIMultipleMonstersChooseView.OnRemoveListener = OnRemoveListener
UIMultipleMonstersChooseView.OnDestroy = OnDestroy

return UIMultipleMonstersChooseView
