
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIArenaQualityBattleResultView = BaseClass("UIArenaQualityBattleResultView", UIBaseView)
local base = UIBaseView


local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.mask_close_btn = self:AddComponent(UIButton, "mask")
	self.mask_close_btn:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.closeUIButton = self:AddComponent(UIButton, "bgImg/close_UIButton")
    self.closeUIButton:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	self.scoreUIText = self:AddComponent(UIText, "bgImg/score_UIText")
    
	self.scorenumUIText = self:AddComponent(UIText, "bgImg/cur_text")
	self.addText=self:AddComponent(UIText,"bgImg/add_text");
    
	self.winUIText = self:AddComponent(UIText, "bgImg/win_UIText")
    
	self.winnumUIText = self:AddComponent(UIText, "bgImg/winnum_UIText")
    
	self.title_text = self:AddComponent(UIText,"bgImg/titleText/titleText (1)")
end

local function OnEnable(self)
	base.OnEnable(self)
	self.scorenumUIText:SetText(self.model.beforeScore)
	self.addText:SetText(string.format("(%s)",self.model.addScore));
	self.winnumUIText:SetText(self.model.quick_pk_data_win_num)
	self.title_text:SetText(self.model.quick_pk_data_name)
	self:OnRefresh()
	if self.model.dropData.exp ~= 0 or #self.model.dropData.skills > 0 or #self.model.dropData.items >0 or #self.model.dropData.cards >0 then
		DataUtil.ParseDropItem(self.model.dropData)
		UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards,self.model.dropData)
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

UIArenaQualityBattleResultView.OnCreate = OnCreate
UIArenaQualityBattleResultView.OnEnable = OnEnable
UIArenaQualityBattleResultView.OnRefresh = OnRefresh
UIArenaQualityBattleResultView.OnAddListener = OnAddListener
UIArenaQualityBattleResultView.OnRemoveListener = OnRemoveListener
UIArenaQualityBattleResultView.OnDestroy = OnDestroy

return UIArenaQualityBattleResultView
