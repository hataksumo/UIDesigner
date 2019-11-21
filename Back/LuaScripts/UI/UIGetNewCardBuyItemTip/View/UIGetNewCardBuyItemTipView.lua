
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIGetNewCardBuyItemTipView = BaseClass("UIGetNewCardBuyItemTipView", UIBaseView)
local base = UIBaseView

local title_text_path="ParentLayout/titleTxt";
local close_btn_path="ParentLayout/exitBtn";
local cancel_btn_path="ParentLayout/cancelBtn";
local center_btn_path="ParentLayout/certainBtn";
local tip_text_path="ParentLayout/tipBuyText";
local item_grid_path="ParentLayout/itemGrid";
local bg_close_btn_path="mask";

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.titleText=self:AddComponent(UIText,title_text_path);
	self.bgCloseBtn=self:AddComponent(UIButton,bg_close_btn_path);
	self.bgCloseBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.grayImg=self:AddComponent(UIImage,center_btn_path,AtlasConfig.DynamicTex);
	self.grayMat=self.grayImg:GetMat();
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.cancelBtn=self:AddComponent(UIButton,cancel_btn_path);
	self.cancelBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.centerBtn=self:AddComponent(UIButton,center_btn_path);
	self.centerBtn:SetOnClick(function()
		if self.model.subItemHaveNum>=self.model.itemList[2].val then
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_RESET_GET_NEW_CARD_STATE)
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_AGAIN_GET_NEW_CARD,self.model.drawCardType,true)
			self.ctrl:CloseSelf()
			if UIManager:GetInstance():GetWindow(UIWindowNames.UIGetNewCardResult) then
				UIManager:GetInstance():CloseWindow(UIWindowNames.UIGetNewCardResult);
			end
		else
			UISpecial:GetInstance():UITipText(self.model.itemList[2].name.."不足")
		end

	end)
	self.tipText=self:AddComponent(UIText,tip_text_path);
	self.itemGird=self:AddComponent(UIBaseContainer,item_grid_path);
	local count=self.itemGird.transform.childCount;
	self.itemPrbList={};
	for i = 0, count-1 do
		local tempObj=self.itemGird:AddComponent(UIBaseContainer,i);
		local tempIcon=tempObj:AddComponent(UIImage,"icon",AtlasConfig.DynamicTex);
		local tempVal=tempObj:AddComponent(UIText,"val");
		table.insert(self.itemPrbList,{obj=tempObj,icon=tempIcon,valText=tempVal});
	end

end

local function OnEnable(self)
	base.OnEnable(self)
	self.titleText:SetText(string.format("【%s】不足",self.model.itemList[1].name))
	local str=self.model.drawCardType==1 and "单" or "十";
	self.tipText:SetText(string.format("本次%s抽共需：",str));
	for i, v in ipairs(self.itemPrbList) do
		local data=self.model.itemList[i];
		v.obj.transform.gameObject:SetActive(data.isShow)
		v.icon:SetSpriteName(data.icon);
		v.valText:SetText(data.val);
	end
	if self.model.subItemHaveNum>=self.model.itemList[2].val then
		self.grayImg:SetMat(nil);
		self.itemPrbList[2].valText:SetText(self.model.itemList[2].val)
	else
		self.grayImg:SetMat(self.grayMat);
		self.itemPrbList[2].valText:SetText(string.format("<color=red>%s</color>",self.model.itemList[2].val))
	end
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

UIGetNewCardBuyItemTipView.OnCreate = OnCreate
UIGetNewCardBuyItemTipView.OnEnable = OnEnable
UIGetNewCardBuyItemTipView.OnRefresh = OnRefresh
UIGetNewCardBuyItemTipView.OnAddListener = OnAddListener
UIGetNewCardBuyItemTipView.OnRemoveListener = OnRemoveListener
UIGetNewCardBuyItemTipView.OnDestroy = OnDestroy

return UIGetNewCardBuyItemTipView
