
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIHorseLampView = BaseClass("UIHorseLampView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.channe1_obj=UIUtil.FindTrans(self.transform,"Up/Channel1");
	self.channe1_scrollsizedelta=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.RectTransform),"Up/Channel1").sizeDelta
	self.channe1_text=self:AddComponent(UIText,"Up/Channel1/obj/info")

end

local function OnEnable(self)
	base.OnEnable(self)
	self.channe1_heigh=self.channe1_scrollsizedelta.y
	self.channe1_width=self.channe1_scrollsizedelta.x
	self.no_show_pos=Vector3.New(0,2000,0)
	self.move_speed=Vector3.New(-5,0,0)
	self.chanel_end_pos=0
	self.update_hz=0.02
	self:OpenChannel_OneInfo()
end
local function OpenChannel_OneInfo(self)
	if self.model.lamp_data ~= nil then
		local info=self.model.lamp_data.content
		self.stop_time = 0
		if self.model.lamp_data.time ~= nil then
			self.stop_time = self.model.lamp_data.time
		end
		self.channe1_text:SetText(info)
		local width=self.channe1_text:GetPreferredWidth()
		if width>self.channe1_width then
			self.stop_time = 0
		end
		--if Width>self.channe1_width then
		--	--字体长度大于背景   需要滑倒最后一个字挺住
		--	self.chanel_end_pos=(self.channe1_width-Width)/2
		--else
		--	self.chanel_end_pos=0
		--end
		self.chanel_end_pos=-self.channe1_width/2-width/2
		self.channe1_text.rectTransform.sizeDelta=Vector2.New(width,self.channe1_heigh)
		self.channe1_text.transform.localPosition=Vector3.New(self.channe1_width/2+width/2,0,0)
		--更新位置  每次移动位置  知道结束
		if self.channe1_timer ~= nil then
			self.channe1_timer:Stop()
		end
		if self.stop_time > 0 then
			self.channe1_timer = TimerManager:GetInstance():GetTimer(self.update_hz, self.StopMiddlePos , self)
			self.channe1_timer:Start()
		else
			self.channe1_timer = TimerManager:GetInstance():GetTimer(self.update_hz, self.UpDateChannelPos , self)
			self.channe1_timer:Start()
		end

	else
		HorseData:GetInstance():CheckNewHorseData()
	end
end

local function ContinueMove(self)
	self.channe1_timer = TimerManager:GetInstance():GetTimer(self.update_hz, self.UpDateChannelPos , self)
	self.channe1_timer:Start()
end

local function StopMiddlePos(self)
	self.channe1_text.transform.localPosition=self.channe1_text.transform.localPosition+self.move_speed
	if self.channe1_text.transform.localPosition.x<=0 then
		self.channe1_timer:Stop()
		self.channe1_timer = TimerManager:GetInstance():GetTimer(self.stop_time, ContinueMove,self,true)
		self.channe1_timer:Start()
	end
end

local function UpDateChannelPos(self)
	self.channe1_text.transform.localPosition=self.channe1_text.transform.localPosition+self.move_speed
	if self.channe1_text.transform.localPosition.x<=self.chanel_end_pos then
		self.channe1_timer:Stop()
		self.channe1_timer= nil
		self.channe1_begin = TimerManager:GetInstance():GetTimer(1, self.Channel1Begin, self,true)
		self.channe1_begin:Start()
	end
end
local function Channel1Begin(self)
	self.channe1_begin=nil
	HorseData:GetInstance():CheckNewHorseData()
end

local function OnAddListener(self)
	self:AddUIListener(UIMessageNames.UI_ON_HORSE_LAMP_UPDATE,OpenChannel_OneInfo)
end

local function OnRemoveListener(self)
	self:RemoveUIListener(UIMessageNames.UI_ON_HORSE_LAMP_UPDATE,OpenChannel_OneInfo)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	if self.channe1_timer ~= nil then
		self.channe1_timer:Stop()
		self.channe1_timer= nil
	end
	if self.channe1_begin ~= nil then
		self.channe1_begin:Stop()
		self.channe1_begin=nil
	end
end

UIHorseLampView.OnCreate = OnCreate
UIHorseLampView.OnEnable = OnEnable
UIHorseLampView.OnAddListener = OnAddListener
UIHorseLampView.OnRemoveListener = OnRemoveListener
UIHorseLampView.OnDestroy = OnDestroy
UIHorseLampView.OpenChannel_OneInfo= OpenChannel_OneInfo
UIHorseLampView.UpDateChannelPos = UpDateChannelPos
UIHorseLampView.Channel1Begin = Channel1Begin
UIHorseLampView.StopMiddlePos = StopMiddlePos
return UIHorseLampView
