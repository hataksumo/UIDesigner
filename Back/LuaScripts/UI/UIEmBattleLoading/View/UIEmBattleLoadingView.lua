
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIEmBattleLoadingView = BaseClass("UIEmBattleLoadingView", UIBaseView)
local base = UIBaseView

local ScreenWidth = CS.UnityEngine.Screen.width;

local progressRightPre = "Effect/Prefab/UI/FX_ui_EmBattle2D_Progressbar_right.prefab"
local progressleftPre = "Effect/Prefab/UI/FX_ui_EmBattle2D_Progressbar_left.prefab"
local lightPre = "Effect/Prefab/UI/FX_ui_EmBattle2D_loading_light.prefab"

--特效提层
local function SetRenderQueueTop(self, effect, order)
	if not IsNull(effect) then
		local topRenderer = effect.gameObject:GetComponentsInChildren(typeof(CS.UnityEngine.ParticleSystem))
		if topRenderer ~= nil then
			for i = 0, topRenderer.Length - 1 do
				local mats = topRenderer[i]:GetComponentsInChildren(typeof(CS.UnityEngine.Renderer))
				if mats ~= nil then
					for j = 0, mats.Length - 1 do
						mats[j].sortingOrder = order
					end
				end
			end
		end
	end
end

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.loading_slider_right = self:AddComponent(UISlider, "rightSlider");
	self.loading_slider_left = self:AddComponent(UISlider, "leftSlider");
	self.vsImage = self:AddComponent(UIImage, "vsImage");

	--设置层级
	self.vsImageCanvas = self:AddComponent(UICanvas, "vsImage", 6)
	local nowOrder = self.vsImageCanvas:GetOrder()
	GameObjectPool:GetInstance():GetGameObjectAsync(progressRightPre,function(go)
		if not IsNull(go) then
			go.transform:SetParent(self.transform)
			go.transform.localPosition = Vector3.New(0, 108, 0)
			go.transform.localScale = Vector3.New(1,1,1)
			go.transform.localEulerAngles = Vector3.New(0, 0, 0)
			self.fX_ui_EmBattle2D_Progressbarright = go
			SetRenderQueueTop(self, self.fX_ui_EmBattle2D_Progressbarright,  nowOrder + 5000 - 1)
		end
	end)
	GameObjectPool:GetInstance():GetGameObjectAsync(progressleftPre,function(go)
		if not IsNull(go) then
			go.transform:SetParent(self.transform)
			go.transform.localPosition = Vector3.New(0, 108, 0)
			go.transform.localScale = Vector3.New(1,1,1)
			go.transform.localEulerAngles = Vector3.New(0, 0, 180)
			self.fX_ui_EmBattle2D_Progressbarleft = go
			SetRenderQueueTop(self, self.fX_ui_EmBattle2D_Progressbarleft,  nowOrder + 5000 - 1)
		end
	end)
	GameObjectPool:GetInstance():GetGameObjectAsync(lightPre,function(go)
		if not IsNull(go) then
			go.transform:SetParent(self.transform)
			go.transform.localPosition = Vector3.New(0, 0, 0)
			go.transform.localScale = Vector3.New(1,1,1)
			self.FX_ui_EmBattle2D_loading_light = go
			SetRenderQueueTop(self, self.FX_ui_EmBattle2D_loading_light, nowOrder + 5000 + 1)
		end
	end)
	--self.fX_ui_EmBattle2D_Progressbarright = UIUtil.FindTrans(self.transform, "FX_ui_EmBattle2D_Progressbar_right")
	--self.fX_ui_EmBattle2D_Progressbarleft = UIUtil.FindTrans(self.transform, "FX_ui_EmBattle2D_Progressbar_left")
	--self.FX_ui_EmBattle2D_loading_light = UIUtil.FindTrans(self.transform, "FX_ui_EmBattle2D_loading_light")
	--SetRenderQueueTop(self, self.fX_ui_EmBattle2D_Progressbarright,  nowOrder + 5000 - 1)
	--SetRenderQueueTop(self, self.fX_ui_EmBattle2D_Progressbarleft,  nowOrder + 5000 - 1)
	--SetRenderQueueTop(self, self.FX_ui_EmBattle2D_loading_light, nowOrder + 5000 + 1)
end

local function OnEnable(self)
	base.OnEnable(self)
    UIUtil.SetChatImgStatus(false)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UIChat)
	self.loading_slider_right:SetValue(0.0)
	self.loading_slider_left:SetValue(0.0)
	self.loading_slider_right.rectTransform.sizeDelta = Vector2.New(ScreenWidth / 2, 43);
	self.loading_slider_left.rectTransform.sizeDelta = Vector2.New(ScreenWidth / 2, 43);

	if self.fX_ui_EmBattle2D_Progressbarright ~= nil and self.fX_ui_EmBattle2D_Progressbarleft ~= nil then
		self.fX_ui_EmBattle2D_Progressbarright.transform.localPosition = Vector3.New(0, 108, 0);
		self.fX_ui_EmBattle2D_Progressbarleft.transform.localPosition = Vector3.New(0, 108, 0);
	end
end

local function Update(self)
	if self.model ~= nil and self.loading_slider_right ~= nil and self.loading_slider_left ~= nil then
		self.loading_slider_right:SetValue(self.model.value)
		self.loading_slider_left:SetValue(self.model.value)
		if self.fX_ui_EmBattle2D_Progressbarright ~= nil and self.fX_ui_EmBattle2D_Progressbarleft ~= nil then
			self.fX_ui_EmBattle2D_Progressbarright.transform.localPosition = Vector3.New(self.model.value * ScreenWidth / 2, 108, 0);
			self.fX_ui_EmBattle2D_Progressbarleft.transform.localPosition = Vector3.New(-self.model.value * ScreenWidth / 2, 108, 0);
		end
	end
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	if self.fX_ui_EmBattle2D_Progressbarright ~= nil then
		GameObjectPool:GetInstance():RecycleGameObject(progressRightPre,self.fX_ui_EmBattle2D_Progressbarright);
		self.fX_ui_EmBattle2D_Progressbarright = nil
	end
	if self.fX_ui_EmBattle2D_Progressbarleft ~= nil then
		GameObjectPool:GetInstance():RecycleGameObject(progressleftPre,self.fX_ui_EmBattle2D_Progressbarleft);
		self.fX_ui_EmBattle2D_Progressbarleft = nil
	end
	if self.FX_ui_EmBattle2D_loading_light ~= nil then
		GameObjectPool:GetInstance():RecycleGameObject(lightPre,self.FX_ui_EmBattle2D_loading_light);
		self.FX_ui_EmBattle2D_loading_light = nil
	end

	UIManager:GetInstance():Broadcast(UIMessageNames.UIEMBATTLE2D_ON_LOADING_COMPLETE);
end

UIEmBattleLoadingView.OnCreate = OnCreate
UIEmBattleLoadingView.OnEnable = OnEnable
UIEmBattleLoadingView.OnDestroy = OnDestroy
UIEmBattleLoadingView.Update = Update

return UIEmBattleLoadingView
