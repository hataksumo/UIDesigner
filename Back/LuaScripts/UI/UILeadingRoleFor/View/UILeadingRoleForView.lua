
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILeadingRoleForView = BaseClass("UILeadingRoleForView", UIBaseView)
local base = UIBaseView

local bg_close_btn_path="mask";
local btn_close_path="funObj/closeBtn";
local take_reward_btn_path="funObj/takeRewardBtn";
local go_head_btn_path="funObj/goheadBtn";
local item_frame_path="funObj/takeRewardBtn/frame";
local item_icon_path="funObj/takeRewardBtn/frame/icon";
local down_time_text_path="funObj/downTimeObj/downTimeText";
local have_taken_reward_obj_path="funObj/takeRewardBtn/haveTaken";

local function CloseSelf(self)
	self.panelAnim:Play("ef_ui_fun_Close_Anim");
	TimerManager:GetInstance():SimpleTimerArgs(0.6,function()
		self.ctrl:CloseSelf();
	end,nil,true,false);

end


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.bgCloseBtn=self:AddComponent(UIButton,bg_close_btn_path);
	self.bgCloseBtn:SetOnClick(function()
		CloseSelf(self);
	end)
	self.closeBtn=self:AddComponent(UIButton,btn_close_path);
	self.closeBtn:SetOnClick(function()
		CloseSelf(self);
	end)
	self.takeRewardBtn=self:AddComponent(UIButton,take_reward_btn_path);
	self.takeRewardBtn:SetOnClick(function()
		if self.model.isTakeReward then
			UISpecial:GetInstance():UITipText("已经领取过奖励")
		else
			self.ctrl:LdRewardRequest();
		end
	end)
	self.goHeadBtn=self:AddComponent(UIButton,go_head_btn_path);
	self.goHeadBtn:SetOnClick(function()
		CS.UnityEngine.Application.OpenURL ("https://www.taptap.com/app/174611");
	end)
	self.itemFrame=self:AddComponent(UIImage,item_frame_path,AtlasConfig.DynamicTex);
	self.itemIcon=self:AddComponent(UIImage,item_icon_path,AtlasConfig.DynamicTex);
	self.downTimeText=self:AddComponent(UIText,down_time_text_path);
	self.haveTakenObj=UIUtil.FindTrans(self.transform,have_taken_reward_obj_path);
	self.panelAnim=UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"funObj");
end

--开始倒计时
local function BeginDownTime(self,_times)
	local curTime=_times;
	curTime=curTime-(Time.realtimeSinceStartup- UserData:GetInstance().ldRewardInitIime)
	self.downTimeText:SetText(UIUtil.GetFinialTime(curTime))
	if self.timer~=nil then
		TimerManager:GetInstance():SimpleTimerStop(self.timer);
	end
	self.timer= TimerManager:GetInstance():SimpleTimerArgs(1,function()
		curTime=curTime-1;
		self.downTimeText:SetText(UIUtil.GetFinialTime(curTime));
		if curTime<=0 then
			self.ctrl:CloseSelf();
		end
	end,nil,false,false);
end

--显示奖励领取
local function ShowReward(self)
	self.haveTakenObj.transform.gameObject:SetActive(self.model.isTakeReward);
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
	ShowReward(self);
	BeginDownTime(self,self.model.downTime);
end

local function OnRefresh(self)
	-- 各组件刷新

end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_LD_REWARD_REFRESH,BeginDownTime)
	self:AddUIListener(UIMessageNames.UI_LD_TAKE_REWARD_REFRESH,ShowReward)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_LD_REWARD_REFRESH,BeginDownTime)
	self:RemoveUIListener(UIMessageNames.UI_LD_TAKE_REWARD_REFRESH,ShowReward)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

local function OnDisable(self)
	base.OnDisable(self)
	if self.timer~=nil then
		TimerManager:GetInstance():SimpleTimerStop(self.timer);
	end
end


UILeadingRoleForView.OnDisable=OnDisable
UILeadingRoleForView.OnCreate = OnCreate
UILeadingRoleForView.OnEnable = OnEnable
UILeadingRoleForView.OnRefresh = OnRefresh
UILeadingRoleForView.OnAddListener = OnAddListener
UILeadingRoleForView.OnRemoveListener = OnRemoveListener
UILeadingRoleForView.OnDestroy = OnDestroy

return UILeadingRoleForView
