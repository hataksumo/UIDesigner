
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIExchangeGoldCoinsView = BaseClass("UIExchangeGoldCoinsView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	
	self.maskUIButton = self:AddComponent(UIButton, "mask_UIButton")
    
	self.titleNameUIText = self:AddComponent(UIText, "panel/top/titleImage/titleName_UIText")
    
	self.exitUIButton = self:AddComponent(UIButton, "panel/top/exit_UIButton")
    
	self.remainingExchangeTextUIText = self:AddComponent(UIText, "panel/center/RemainingExchangeNumber/RemainingExchangeText_UIText")
    
	self.remainingExchangeValueUIText = self:AddComponent(UIText, "panel/center/RemainingExchangeNumber/RemainingExchangeValue_UIText")
    
	self.doesItCostTextUIText = self:AddComponent(UIText, "panel/center/DoesItCost/DoesItCostText_UIText")
    
	self.diamondIconUIImage = self:AddComponent(UIImage, "panel/center/DoesItCost/DiamondIcon_UIImage",AtlasConfig.DynamicTex)
	self.diamondIconUIImage:SetSpriteName(SpriteDefine.Coin_Icon_Diamond)
	self.diamondNumberCostUIText = self:AddComponent(UIText, "panel/center/DoesItCost/DiamondNumberCost_UIText")
    
	self.exchangeIconUIImage = self:AddComponent(UIImage, "panel/center/DoesItCost/ExchangeIcon_UIImage")
    
	--self.exchangeTextUIText = self:AddComponent(UIText, "panel/center/DoesItCost/ExchangeIcon_UIImage/ExchangeText_UIText")
    
	--self.availableTextUIText = self:AddComponent(UIText, "panel/center/Available/AvailableText_UIText")
    
	self.availableIconUIImage = self:AddComponent(UIImage, "panel/center/Available/AvailableIcon_UIImage",AtlasConfig.DynamicTex)
	self.availableIconUIImage:SetSpriteName(SpriteDefine.Coin_Icon_Gold)
	self.coinsNumberValueUIText = self:AddComponent(UIText, "panel/center/Available/CoinsNumberValue_UIText")
    
	self.exchangeFiveTimesUIButton = self:AddComponent(UIButton, "panel/bottom/ExchangeFiveTimes_UIButton")
    
	self.exchangeOneTimesUIButton = self:AddComponent(UIButton, "panel/bottom/ExchangeOneTimes_UIButton")
	-- 关闭页面按钮
	self.maskUIButton:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
		self.ctrl:CloseSelf()
	end)
	self.exitUIButton:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
		self.ctrl:CloseSelf()
	end)
	--兑换5次按钮
	self.exchangeFiveTimesUIButton:SetOnClick(function()
		if((self.ExchangeCoinsMax-math.floor(UserData:GetInstance().buy_coin_times))>=5) then
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIConfirmationExchange,5)
			self.model:ConfirmFiveTimes()
		else
			UISpecial:GetInstance():UITipText("今日兑换次数不足")
		end
	end)
	--兑换1次按钮
	self.exchangeOneTimesUIButton:SetOnClick(function()
		if((self.ExchangeCoinsMax-math.floor(UserData:GetInstance().buy_coin_times))>0) then
			self.ctrl:BeginExchangeCoin(1,1,self.costDiamondNumber,self.getcoinsNumber)
		else
			UISpecial:GetInstance():UITipText("今日兑换次数不足")
		end
	end)
end


local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end

local function OnRefresh(self)
	-- 各组件刷新
	self.haveExchangeCoins=math.floor(UserData:GetInstance().buy_coin_times)
	self.getcoinsNumber=ShopData:GetInstance():GetGoldsNumber(1,self.haveExchangeCoins)
	self.costDiamondNumber=ShopData:GetInstance():GetCostDiamond(1,self.haveExchangeCoins)
	self.diamondNumberCostUIText:SetText(self.costDiamondNumber)
	self.ExchangeCoinsMax=ShopData:GetInstance():GetGlobleItemInfoById(114)
	self.coinsNumberValueUIText:SetText(self.getcoinsNumber)
	self.remainingExchangeValueUIText:SetText((self.ExchangeCoinsMax-math.floor(UserData:GetInstance().buy_coin_times)).."/"..self.ExchangeCoinsMax)
end

local function OnAddListener(self)
		base.OnAddListener(self)
	self:AddUIListener(UIMessageNames.ON_EXCHANGE_COIN, OnRefresh)
	-- UI消息注册
	
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	self:RemoveUIListener(UIMessageNames.ON_EXCHANGE_COIN, OnRefresh)
	-- UI消息注销
end


local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UIExchangeGoldCoinsView.OnCreate = OnCreate
UIExchangeGoldCoinsView.OnEnable = OnEnable
UIExchangeGoldCoinsView.OnRefresh = OnRefresh
UIExchangeGoldCoinsView.OnAddListener = OnAddListener
UIExchangeGoldCoinsView.OnRemoveListener = OnRemoveListener
UIExchangeGoldCoinsView.OnDestroy = OnDestroy

return UIExchangeGoldCoinsView
