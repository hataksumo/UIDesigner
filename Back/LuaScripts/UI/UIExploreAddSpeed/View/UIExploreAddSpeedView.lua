
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIExploreAddSpeedView = BaseClass("UIExploreAddSpeedView", UIBaseView)
local base = UIBaseView

local bg_close_btn_path="mask";
local exit_btn_path="ParentLayout/exitBtn";
local certen_btn_path="ParentLayout/certainBtn";
local cancel_btn_path="ParentLayout/cancelBtn";
local tip_text_path="ParentLayout/tipText";
local ticket_obj_path="ParentLayout/ticketObj";
local diamond_obj_path="ParentLayout/diamondObj";


--设置选中
local function SetMark(self,_type)
	self.selectType=_type;
	self.ticketMarkImg.transform.gameObject:SetActive(self.selectType==1);
	self.diamondMarkImg.transform.gameObject:SetActive(self.selectType==2);
end
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.bgCloseBtn=self:AddComponent(UIButton,bg_close_btn_path);
	self.bgCloseBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel");
		self.ctrl:CloseSelf();
	end)
	self.exitBtn=self:AddComponent(UIButton,exit_btn_path);
	self.exitBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel");
		self.ctrl:CloseSelf();
	end)
	self.certenBtn=self:AddComponent(UIButton,certen_btn_path);
	self.certenBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
		if self.selectType~=0 then
			self.ctrl:UseOnHookItemRequest(self.selectType,self.model.addSpeedCost);
		end
	end)
	self.certenBtnImg=self:AddComponent(UIImage,certen_btn_path,AtlasConfig.DynamicTex);
	self.grayMat=self.certenBtnImg:GetMat();

	self.cancelBtn=self:AddComponent(UIButton,cancel_btn_path);
	self.cancelBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel");
		self.ctrl:CloseSelf();
	end)
	self.tipText=self:AddComponent(UIText,tip_text_path);
	self.ticketObj=self:AddComponent(UIBaseContainer,ticket_obj_path);
	self.ticketMarkImg=UIUtil.FindTrans(self.ticketObj.transform,"Checkmark");
	self.ticketLinkText=self.ticketObj:AddComponent(UIText,"infoText");
	self.ticketBtn=self:AddComponent(UIButton,ticket_obj_path);
	self.ticketBtn:SetOnClick(function()
		if self.selectType~=1 then
			if self.model.addSpeedItemCostNum>0 then
				SetMark(self,1)
			else
				UISpecial:GetInstance():UITipText("加速令不足")
			end

		end

	end)
	self.diamondObj=self:AddComponent(UIBaseContainer,diamond_obj_path);
	self.diamondMarkImg=UIUtil.FindTrans(self.diamondObj.transform,"Checkmark");
	self.diamondLinkText=self.diamondObj:AddComponent(UIText,"infoText");
	self.diamondBtn=self:AddComponent(UIButton,diamond_obj_path);
	self.diamondBtn:SetOnClick(function()
		if self.selectType~=2 then
			if self.model.addSpeedCostNum>self.model.addSpeedCost then
				SetMark(self,2)
			else
				UISpecial:GetInstance():UITipText("灵玉不足")
			end

		end
	end)
end




local function OnEnable(self)
	base.OnEnable(self)
	local type=0;
	self.tipText:SetText(string.format("今日已加速次数:%s/%s",math.floor(self.model.curSpeedTimes),self.model.speedMaxTimes));
	local ticketNumShow=self.model.addSpeedItemCostNum>999 and "999+" or self.model.addSpeedItemCostNum
	local ticketCostShow=self.model.addSpeedItemCostNum>0 and "<color=#3F793F>x1</color>" or "<color=#E04C4C>x1</color>"
	self.ticketLinkText:SetText(string.format("使用%s<quad name=%s size=80 width=1 />%s(拥有%s)",self.model.addSpeedItemData.name,
		self.model.addSpeedItemData.icon,ticketCostShow,ticketNumShow));
	local diamondNumShow=self.model.addSpeedCostNum>999 and "999+" or self.model.addSpeedCostNum
	local diamondCostShow=self.model.addSpeedCostNum>self.model.addSpeedCost and string.format("<color=#3F793F>x%s</color>",self.model.addSpeedCost)
			or string.format("<color=#E04C4C>x%s</color>",self.model.addSpeedCost);
	self.diamondLinkText:SetText(string.format("使用%s<quad name=%s size=80 width=1 />%s(拥有%s)",self.model.addSpeedCostData.name,
			self.model.addSpeedCostData.icon,diamondCostShow,diamondNumShow));
	if self.model.addSpeedItemCostNum>0 then--加速令够，默认选择加速令
		type=1;--选择加速令
	elseif self.model.addSpeedCostNum>self.model.addSpeedCost then
		type=2;--选择钻石
	end
	if type==0 then
		self.certenBtnImg:SetMat(self.grayMat)
	else
		self.certenBtnImg:SetMat(nil);
	end
	SetMark(self,type);
end

local function OnRefresh(self)
	-- 各组件刷新
	
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
end

UIExploreAddSpeedView.OnCreate = OnCreate
UIExploreAddSpeedView.OnEnable = OnEnable
UIExploreAddSpeedView.OnRefresh = OnRefresh
UIExploreAddSpeedView.OnAddListener = OnAddListener
UIExploreAddSpeedView.OnRemoveListener = OnRemoveListener
UIExploreAddSpeedView.OnDestroy = OnDestroy

return UIExploreAddSpeedView
