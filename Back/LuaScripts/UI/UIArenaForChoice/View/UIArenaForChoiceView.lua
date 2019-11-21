
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIArenaForChoiceView = BaseClass("UIArenaForChoiceView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	
	--self.bgUIImage = self:AddComponent(UIImage, "BgRoot/bg_UIImage")
    self.up_img=self:AddComponent(UIImage,"BgRoot/arena_two_UIButton/mask/GW",AtlasConfig.DynamicTex)
	self.down_img=self:AddComponent(UIImage,"BgRoot/arena_one_UIButton/mask/XFL",AtlasConfig.DynamicTex)
	self.one_img=self:AddComponent(UIImage,"BgRoot/arena_one_UIButton/Image_one",AtlasConfig.Language)
	self.more_img=self:AddComponent(UIImage,"BgRoot/arena_two_UIButton/mask/Image_time",AtlasConfig.Language)
	self.arena_oneUIImage = self:AddComponent(UIButton, "BgRoot/arena_one_UIButton")
    self.arena_oneUIImage:SetOnClick(function ()
		if self.model.my_rank_critical_score ~= nil and self.model.my_rank_critical_score< ArenaData:GetInstance().rank_critical_score then
			self.ctrl:CloseSelf()
			LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
			ArenaData:GetInstance():OpenArenaOne()
		else
			UISpecial:GetInstance():UITipText("当前积分已经超出该段位~")
		end
	end)
	self.arena_twoUIImage = self:AddComponent(UIButton, "BgRoot/arena_two_UIButton")
    self.arena_twoUIImage:SetOnClick(function ()
		local state,type,des= UnlockData:GetInstance():GetLockDataState(311)
		if state then
			ArenaPVPData:GetInstance():GetRequestInfo()
		else
			UISpecial:GetInstance():UITipText(des)
		end
    end)
	--self.oneUIText = self:AddComponent(UIText, "BgRoot/one_UIText")
    
	--self.one_desUIText = self:AddComponent(UIText, "BgRoot/one_des_UIText")
    
	--self.twoUIText = self:AddComponent(UIText, "BgRoot/two_UIText")
    
	--self.two_desUIText = self:AddComponent(UIText, "BgRoot/two_des_UIText")
    
	self.close_btn =self:AddComponent(UIButton,"Mask")
	self.close_btn:SetOnClick(function ()
		self.ctrl:CloseSelf()
		UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UIArenaMain")
	end)

    self.unlockImg = self:AddComponent(UIImage, "BgRoot/arena_two_UIButton/mask/unlockImage")
    self.unlockText = self:AddComponent(UIText, "BgRoot/arena_two_UIButton/mask/unlockImage/unlockText")
    self.unlockImg.gameObject:SetActive(false)

	self.beginAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"BgRoot")
	self.TitleBar=UIUtil.FindTrans(self.transform,"TopLeft")
	UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go end,function()
		self.ctrl:CloseSelf()
	end,function ()
		TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
			UIUtil.BackHomeMain()
		end,nil,true)
	end ,"",false,0,false);
end

local function OnEnable(self)
	base.OnEnable(self)
	self.beginAnim:Rebind()
	self.beginAnim:Play("fx_ui_UIArenaForChoice_in")
	self.up_img:SetSpriteName("draw_gw_1101010")
	self.down_img:SetSpriteName("draw_xfl_1102016")
	self.one_img:SetSpriteName("ui_t_c2_504")
	self.more_img:SetSpriteName("ui_t_c2_505")
    if self.model.rank_critical_score ~= nil then
        --self.one_desUIText:SetText(ArenaData:GetInstance().rank_critical_score.."分以下可参加白银竞技场")
        --self.two_desUIText:SetText(ArenaData:GetInstance().rank_critical_score.."分以上可参加黄金竞技场，黄金竞技场为多队伍竞技场")
    end

    local state,type,des= UnlockData:GetInstance():GetLockDataState(311)
    self.unlockImg.gameObject:SetActive(not state)
    self.unlockText:SetText(des)

	self:OnRefresh()
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

UIArenaForChoiceView.OnCreate = OnCreate
UIArenaForChoiceView.OnEnable = OnEnable
UIArenaForChoiceView.OnRefresh = OnRefresh
UIArenaForChoiceView.OnAddListener = OnAddListener
UIArenaForChoiceView.OnRemoveListener = OnRemoveListener
UIArenaForChoiceView.OnDestroy = OnDestroy

return UIArenaForChoiceView
