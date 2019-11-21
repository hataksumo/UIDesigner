
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIChallengeEntranceView = BaseClass("UIChallengeEntranceView", UIBaseView)
local base = UIBaseView

local title_img_path="BgRoot/TopLeft/PageTitle";
local back_btn_path="BgRoot/TopLeft/exit_UIButton1";
local anim_path="BgRoot";
local return_btn_path="BgRoot/TopLeft/back_main_UIButton1";
local btn_group_path="BgRoot/EntrancePanel";

--单个按钮的点击
local function OnSingleBtnClick(self,_index)
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	--if _index>3 then
	--	return
	--end
	if self.model.showList[_index]~=nil then
		local funId=self.model.showList[_index].id;
		local lockState ,lockType,lockDes= UnlockData:GetInstance():GetLockDataState(funId)
		--检测开启
		if not lockState then
			UISpecial:GetInstance():UITipText(lockDes)
			return
		end
		if funId==102 then--芦花鼓楼
			UIManager:GetInstance():OpenWindow(UIWindowNames.UILhglNew,1)
		elseif funId==103 then--恶灵入侵
			if CacodemonData:GetInstance().isActive then
				UISpecial:GetInstance():UITipText("玩家等级不足"..CacodemonData:GetInstance().openLv.."级开启")
				UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemJumpTip,1401014)
				return
			end
			if CacodemonData:GetInstance().cacodemonList ~= nil and #CacodemonData:GetInstance().cacodemonList > 0 then
				self.ctrl:OpenWindow(UIWindowNames.UICacodemon)
			else
				CacodemonData:GetInstance():GetCacodemonListRequest()
			end
		elseif funId==107 then--试炼宝库
			self.ctrl:OpenWindow(UIWindowNames.UITestHoard)
		elseif funId==108 then--千机黑刹
			if DRBossData:GetInstance().is_request then
				self.ctrl:OpenWindow(UIWindowNames.UIMultipleMonstersChoose)
			else
				DRBossData:GetInstance():SendGetDRBossData()
			end
		end
	end
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.title_img=self:AddComponent(UIImage,title_img_path,AtlasConfig.Language)
	self.title_img:SetSpriteName(UIImage,"ui_t_c2_183");
	self.buttonBack = self:AddComponent(UIButton, back_btn_path)
	self.buttonBack:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
		self.ctrl:CloseSelf()
	end)
	self.anim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),anim_path);
	self.buttonReturn = self:AddComponent(UIButton,return_btn_path)
	self.buttonReturn:SetOnClick(function ()
        LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
		self.ctrl:CloseSelf()
	end)
	self.grayImg=self:AddComponent(UIImage,btn_group_path,AtlasConfig.DynamicTex);
	self.grayMat=self.grayImg:GetMat();

	--获取按钮组件列表
	self.btnGroupTrans=self:AddComponent(UIBaseContainer,btn_group_path);
	local count=self.btnGroupTrans.transform.childCount;
	self.btnList={};
	for i = 0, count-1 do
		local tempObj=self.btnGroupTrans:AddComponent(UIBaseContainer,i);
		local tempBtn=tempObj:AddComponent(UIButton,"");
		local realIndex=i+1;
		tempBtn:SetOnClick(function()
			OnSingleBtnClick(self,realIndex);
		end)
		local tempRedPoint=UIUtil.FindTrans(tempObj.transform,"redPoint");
		local tempText=tempObj:AddComponent(UIText,"infoText");
		local tempIcon=tempObj:AddComponent(UIImage,"icon",AtlasConfig.Language);
		table.insert(self.btnList,{icon=tempIcon,infoText=tempText,redPoint=tempRedPoint});
	end
end
local function OnEnable(self)
	base.OnEnable(self)
	self.anim:Rebind()
	self:OnRefresh()
end

--获取红点显示状态
local function GetRedPointStateByFunId(self,_funId)
	local lockState ,lockType,lockDes= UnlockData:GetInstance():GetLockDataState(_funId)
	if lockState then
		if _funId == 103 then
			if CacodemonData:GetInstance().cacodemonList == nil or #CacodemonData:GetInstance().cacodemonList <= 0 then
				CacodemonData:GetInstance():GetCacodemonListRequest()
			end
			if UserData:GetInstance().pLevel >= CacodemonData:GetInstance().openLv and CacodemonData:GetInstance().earningsTimes > 0 then
				return true
			else
				return false
			end
		else
			return false
		end
	end
end

local function OnRefresh(self)
	-- 各组件刷新
	--self.testHoard_RedImg.gameObject:SetActive(self.testhoardstate and TestHoardData:GetInstance().showRed);
	for i, v in ipairs(self.btnList) do
		if self.model.showList[i]~=nil and i < 4 then
			local funId=self.model.showList[i].id;
			local lockState ,lockType,lockDes= UnlockData:GetInstance():GetLockDataState(funId)
			if not lockState then
				v.icon:SetMat(self.grayMat);
			else
				v.icon:SetMat(nil);
			end
			v.redPoint.gameObject:SetActive(false)
			v.icon:SetSpriteName(self.model.showList[i].data.ChallengeIcon);
			if GetRedPointStateByFunId(self,funId) then
				v.redPoint.gameObject:SetActive(true)
			else
				v.redPoint.gameObject:SetActive(false)
			end
			--特殊处理
			if funId==108 then
				v.infoText:SetText("每天"..DRBossData:GetInstance().noon_time..":00~"..DRBossData:GetInstance().noon_time + DRBossData:GetInstance().continue_time..":00"..DRBossData:GetInstance().afternoon_time..":00~"..DRBossData:GetInstance().afternoon_time + DRBossData:GetInstance().continue_time..":00开启");
			end
		else
			v.icon:SetSpriteName("ui_t_c2_188");
		end
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
end

UIChallengeEntranceView.OnCreate = OnCreate
UIChallengeEntranceView.OnEnable = OnEnable
UIChallengeEntranceView.OnRefresh = OnRefresh
UIChallengeEntranceView.OnAddListener = OnAddListener
UIChallengeEntranceView.OnRemoveListener = OnRemoveListener
UIChallengeEntranceView.OnDestroy = OnDestroy
return UIChallengeEntranceView
