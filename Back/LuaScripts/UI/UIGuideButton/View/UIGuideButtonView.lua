
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIGuideButtonView = BaseClass("UIGuideButtonView", UIBaseView)
local base = UIBaseView

local function ClearMaskGame(self)
	if not IsNull(self.mask_game) then
		self.guide_mask:OnDestroy()
		GameObjectPool:GetInstance():RecycleGameObject(self.data.mask_path,self.mask_game)
		self.mask_game = nil
	end
	if self.error_timer ~= nil then
		TimerManager:GetInstance():SimpleTimerStop(self.error_timer)
		self.error_timer = nil
	end

end

local function ClickEvent(self)
	if not self.can_click then
		return
	end

	--关闭遮罩
	ClearMaskGame(self)
	if not self.data.click_failure then
		local pointer=CS.UnityEngine.EventSystems.PointerEventData(CS.UnityEngine.EventSystems.EventSystem.current)
		local IPointerClickHandler=CS.UnityEngine.EventSystems.IPointerClickHandler;
		local clickHandler = UIUtil.FindComponent(self.guide_mask.m_target.transform,typeof(IPointerClickHandler))
		if clickHandler ~= nil then
			clickHandler:OnPointerClick(pointer);
			clickHandler:OnPointerDown(pointer);
			clickHandler:OnPointerUp(pointer);
		else
			--判斷父節點有沒有
			if self.guide_mask.m_target.transform.parent ~= nil then
				local clickHandler = UIUtil.FindComponent(self.guide_mask.m_target.transform.parent,typeof(IPointerClickHandler))
				if clickHandler ~= nil then
					clickHandler:OnPointerClick(pointer);
					clickHandler:OnPointerDown(pointer);
					clickHandler:OnPointerUp(pointer);
				else
					Logger.LogError("点击事件Is Nil")
				end
			else
				Logger.LogError("点击事件Is Nil")
			end
		end
	end
	local is_open_next = self.data.next_open
	if self.data.click_func ~= nil then
		self.data.click_func()
	end
	self.finger_trans.gameObject:SetActive(false)
	self.error_tip_two.gameObject:SetActive(false)
	self.error_tip.gameObject:SetActive(false)
	if not is_open_next then
		UIManager:GetInstance():CloseWindow(UIWindowNames.UIGuideButton)
	end
end
--点击到黑色遮罩
local function ClickMask(self)
	if not self.error_tip.gameObject.activeSelf then
		self.error_tip.gameObject:SetActive(true)
		UIUtil.CreateUIFadeAnim(self.error_tip)
	end
	if self.error_timer then
		return
	end
	self.error_tip_two.gameObject:SetActive(true)
	self.error_tip_two.localPosition = self.guide_mask.click_box.transform.localPosition
	self.error_timer = TimerManager:GetInstance():SimpleTimerArgs(1.5,function()
		self.error_tip_two.gameObject:SetActive(false)
		self.error_timer = nil
	end,nil,true)
end


local function OnCreate(self)
	base.OnCreate(self)
	self.finger_trans = UIUtil.FindTrans(self.transform,"ef_ui_start_Yindao")
	self.mask_parent = UIUtil.FindTrans(self.transform,"MaskParent")
	self.error_tip_two = UIUtil.FindTrans(self.transform,"fx_ui_guide_circletip")
	self.error_tip = self:AddComponent(UIText,"ErrorTip")
	--self:AddComponent(UICanvas,"ef_ui_start_Yindao", 3)
end

local function ShowFinger(self)

	local begin_pos = nil
	if self.data.begin_pos then
		begin_pos=Vector3.zero
	else
		begin_pos=self.finger_trans.localPosition
	end
	local pos = nil
	local target_local_pos = self.guide_mask.click_box.transform.localPosition
	pos = Vector3.New(target_local_pos.x+64,target_local_pos.y-64,0)
	self.can_click = false
	self.finger_anim = LuaTweener.UIMoveTo(self.finger_trans,begin_pos,pos,0.5,EaseFormula.OutQuad,function ()
		self.finger_trans.localPosition = pos
		self.guide_mask:ShowDialog()
		self.finger_anim = nil
		self.can_click = true
	end)
end

local function OnEnable(self)
	base.OnEnable(self)
	--创建预设
	self:OnRefresh(self.model.data)
end

local function OnRefresh(self,data)
	-- 各组件刷新
	self.data = data
	self.error_tip_two.gameObject:SetActive(false)
	if IsNull(self.mask_game) then
		GameObjectPool:GetInstance():GetGameObjectAsync(self.data.mask_path,function(go)
			if not IsNull(go) then
				go.name = "UIGuideRectMask"
				UIUtil.SetUIParent(go.transform,self.mask_parent)
				self.guide_mask = self.data.mask_type.New(self,"MaskParent/UIGuideRectMask")
				self.guide_mask:SetClick(Bind(self,ClickMask),Bind(self,ClickEvent))
				self.mask_game = go
				self.guide_mask:CreateMask(self.data,1)
				if self.data.hide_finger then
					self.finger_trans.gameObject:SetActive(false)
					self.guide_mask:ShowDialog()
				else
					self.finger_trans.gameObject:SetActive(true)
					ShowFinger(self)
				end
				self.error_tip.gameObject:SetActive(false)
			end
		end)
	end
end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_GUIDE_BUTTON_DATA, OnRefresh)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_GUIDE_BUTTON_DATA,OnRefresh)
	
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

local function OnDisable(self)
	base.OnDisable(self)
	ClearMaskGame(self)
end

UIGuideButtonView.OnCreate = OnCreate
UIGuideButtonView.OnEnable = OnEnable
UIGuideButtonView.OnRefresh = OnRefresh
UIGuideButtonView.OnAddListener = OnAddListener
UIGuideButtonView.OnRemoveListener = OnRemoveListener
UIGuideButtonView.OnDestroy = OnDestroy
UIGuideButtonView.OnDisable = OnDisable
return UIGuideButtonView
