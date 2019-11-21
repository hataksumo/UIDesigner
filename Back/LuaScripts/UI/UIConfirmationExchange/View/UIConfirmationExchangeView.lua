
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIConfirmationExchangeView = BaseClass("UIConfirmationExchangeView", UIBaseView)
local base = UIBaseView
local isFive=false
local isOne=false
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.maskUIButton = self:AddComponent(UIButton, "mask_UIButton")
	self.exitUIButton = self:AddComponent(UIButton, "panel/top/exit_UIButton")
	self.doesItCostTextUIText = self:AddComponent(UIText, "panel/center/DoesItCostText_UIText")
	self.diamondIconUIImage = self:AddComponent(UIImage, "panel/center/DiamondIcon_UIImage",AtlasConfig.DynamicTex)
	self.diamondIconUIImage:SetSpriteName(SpriteDefine.Coin_Icon_Diamond)
	self.diamondNumberValueUIText = self:AddComponent(UIText, "panel/center/DiamondNumberValue_UIText")
	--self.exchangeTextUIText = self:AddComponent(UIText, "panel/center/ExchangeText_UIText")
	self.coinsIconUIImage = self:AddComponent(UIImage, "panel/center/CoinsIcon_UIImage",AtlasConfig.DynamicTex)
	self.coinsIconUIImage:SetSpriteName(SpriteDefine.Coin_Icon_Gold)
	self.coinsNumberValueUIText = self:AddComponent(UIText, "panel/center/CoinsNumberValue_UIText")
	self.cancelUIButton = self:AddComponent(UIButton, "panel/bottom/cancel_UIButton")
	self.cancelTextUIText = self:AddComponent(UIText, "panel/bottom/cancel_UIButton/cancelText_UIText")
	self.confirmUIButton = self:AddComponent(UIButton, "panel/bottom/confirm_UIButton")
	self.confirmTextUIText = self:AddComponent(UIText, "panel/bottom/confirm_UIButton/confirmText_UIText")
	-- 关闭页面按钮
	self.exitUIButton:SetOnClick(function()
		self.ctrl:CloseSelf()
	end)
	--取消按钮监听
	self.cancelUIButton:SetOnClick(function()
		self.ctrl:CloseSelf()
		--UIManager:GetInstance():OpenWindow(UIWindowNames.UIExchangeGoldCoins)
	end)
	--确认按钮监听
	self.confirmUIButton:SetOnClick(function()
		self.model:ConfirmExchange()
		if (isFive) then
			--兑换五次金币
			self.ExchangeCoinsMax=ShopData:GetInstance():GetGlobleItemInfoById(114)
			self.remaindTimes=self.ExchangeCoinsMax-math.floor(UserData:GetInstance().buy_coin_times)
			if (self.remaindTimes<5) then
				self.ctrl:BeginExchangeCoin(self.remaindTimes,2,self.costDiamondNumberFinal,self.getcoinsNumberFinal)
			else
				self.ctrl:BeginExchangeCoin(5,2,self.costDiamondNumberFinal,self.getcoinsNumberFinal)
			end
			isFive=false
		end
		if(isOne) then
			--兑换一次金币
			--UserData:GetInstance():AddBuyTimes(1)
			self.ctrl:BeginExchangeCoin(1,1,self.costDiamondNumberFinal1,self.getcoinsNumberFinal1)
			isOne=false
		end
		self.ctrl:CloseSelf()
	end)
end

local function OnRefreshConfirmOne(self)
	self.haveExchangeCoins=math.floor(UserData:GetInstance().buy_coin_times)
	self.getcoinsNumberFinal1=ShopData:GetInstance():GetGoldsNumber(1,self.haveExchangeCoins)
	self.costDiamondNumberFinal1=ShopData:GetInstance():GetCostDiamond(1,self.haveExchangeCoins)
	self.coinsNumberValueUIText:SetText(self.getcoinsNumberFinal1)
	self.diamondNumberValueUIText:SetText(self.costDiamondNumberFinal1)
	isOne=true;
end

local function OnRefreshConfirmFive(self)
	self.ExchangeCoinsMax=ShopData:GetInstance():GetGlobleItemInfoById(114)
	self.haveExchangeCoins=math.floor(UserData:GetInstance().buy_coin_times)
	self.remaindTimes=self.ExchangeCoinsMax-self.haveExchangeCoins

	if (self.remaindTimes<5) then
		self.getcoinsNumberFinal=ShopData:GetInstance():GetGoldsNumber(self.remaindTimes,self.haveExchangeCoins)
		self.costDiamondNumberFinal=ShopData:GetInstance():GetCostDiamond(self.remaindTimes,self.haveExchangeCoins)
	else
		self.getcoinsNumberFinal=ShopData:GetInstance():GetGoldsNumber(5,self.haveExchangeCoins)
		self.costDiamondNumberFinal=ShopData:GetInstance():GetCostDiamond(5,self.haveExchangeCoins)
	end
	self.coinsNumberValueUIText:SetText(self.getcoinsNumberFinal)
	self.diamondNumberValueUIText:SetText(self.costDiamondNumberFinal)
	isFive=true;
end

local function OnEnable(self)
	base.OnEnable(self)

    self.reciveData=self.model:GetReciveData()
    if self.reciveData==1 then
        self:OnRefreshConfirmOne()
    end
    if self.reciveData==5 then
        self:OnRefreshConfirmFive()
    end
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
end




local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.CONFIRM_ONE_TIMES, OnRefreshConfirmOne)
	self:AddUIListener(UIMessageNames.CONFIRM_FIVE_TIMES, OnRefreshConfirmFive)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	self:RemoveUIListener(UIMessageNames.CONFIRM_ONE_TIMES, OnRefreshConfirmOne)
	self:RemoveUIListener(UIMessageNames.CONFIRM_FIVE_TIMES, OnRefreshConfirmFive)
	-- UI消息注销
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UIConfirmationExchangeView.OnCreate = OnCreate
UIConfirmationExchangeView.OnEnable = OnEnable
UIConfirmationExchangeView.OnRefresh = OnRefresh
UIConfirmationExchangeView.OnAddListener = OnAddListener
UIConfirmationExchangeView.OnRemoveListener = OnRemoveListener
UIConfirmationExchangeView.OnDestroy = OnDestroy
UIConfirmationExchangeView.OnRefreshConfirmOne=OnRefreshConfirmOne
UIConfirmationExchangeView.OnRefreshConfirmFive=OnRefreshConfirmFive
return UIConfirmationExchangeView
