--[[
-- added by wsh @ 2017-12-18
-- UILoading视图层
--]]

local UILoadingView = BaseClass("UILoadingView", UIBaseView)
local base = UIBaseView

-- 各个组件路径
local loading_text_path = "ContentRoot/LoadingDesc"
local loading_slider_path = "ContentRoot/SliderBar"
local fast_driver_path="ContentRoot/SliderBar/FX_UI_Loading_2";
local slow_driver_path="ContentRoot/SliderBar/FX_UI_Loading_1";
--local fast_particle_path="ContentRoot/SliderBar/FX_UI_Loading_1/smoke2";


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.loading_text = self:AddComponent(UIText, loading_text_path)
	self.loading_slider = self:AddComponent(UISlider, loading_slider_path)
	self.loading_slider:SetValue(0.0)
	
	-- 定时器
	-- 这里一定要对回调函数持有引用，否则随时可能被GC，引起定时器失效
	-- 或者使用成员函数，它的生命周期是和对象绑定在一块的
	local circulator = table.circulator({"加载中", "加载中.", "加载中..", "加载中..."})
	self.timer_action = function(self)
		self.loading_text:SetText(circulator())
	end
	self.timer = TimerManager:GetInstance():GetTimer(1, self.timer_action , self)
	self.timer:Start()
	self.fastDriver=UIUtil.FindTrans(self.transform,fast_driver_path);
	self.fastDriver.transform.gameObject:SetActive(false);
	self.initPos=self.fastDriver.transform.localPosition;
	self.slowDriver=UIUtil.FindTrans(self.transform,slow_driver_path);
	self.slowDriverPos=self.slowDriver.transform.localPosition;
	--self.fastParticle=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.ParticleSystem),fast_particle_path);
end

--快速移动
local function FastDriverMove(self,_type)
	self.slowDriver.gameObject:SetActive(false);
	self.fastDriver.gameObject:SetActive(true);
	local beginPos=_type==1 and Vector3.New(-738-500,self.initPos.y,self.initPos.z) or Vector3.New(-738,self.initPos.y,self.initPos.z);
	local endPos=_type==1 and Vector3.New(-738,self.initPos.y,self.initPos.z) or Vector3.New(-738,self.initPos.y,self.initPos.z);
	if self.fastDriverAnim == nil then
		self.fastDriverAnim = LuaTweener.UIMoveTo(self.fastDriver,beginPos,endPos,0.2,EaseFormula.Linear,function ()
			self.fastDriver.gameObject:SetActive(false);
			self.slowDriver.gameObject:SetActive(true);
			--self.fastParticle:Play();
			self.fastDriverAnim = nil;
		end)

	end
end

local function OnEnable(self)
	base.OnEnable(self)
	FastDriverMove(self,1);
	--LJAudioManger:GetInstance():PlayVoice("UI_Moto")

end

local function Update(self)
	if self.loading_slider ~= nil then
		self.loading_slider:SetValue(self.model.value)
		self.slowDriver.transform.localPosition=Vector3.New(-750+self.model.value*1314,self.slowDriverPos.y,self.slowDriverPos.z);
	end


end

local function OnDestroy(self)
	DataManager:GetInstance():Broadcast(DataMessageNames.ON_LOADING_OVER)
	self.timer:Stop()
	self.loading_text = nil
	self.loading_slider = nil
	self.timer_action = nil
	self.timer = nil
	base.OnDestroy(self)
end

UILoadingView.OnCreate = OnCreate
UILoadingView.OnEnable = OnEnable
UILoadingView.Update = Update
UILoadingView.OnDestroy = OnDestroy

return UILoadingView