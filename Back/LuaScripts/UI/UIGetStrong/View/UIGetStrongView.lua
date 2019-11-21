
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIGetStrongView = BaseClass("UIGetStrongView", UIBaseView)
local base = UIBaseView
local UIStrongWrapItem=require"UI.UIGetStrong.Component.UIStrongWrapItem"

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.lvText = self:AddComponent(UIText,"ParentLayout/HeroImg/bg/lvText")
	self.recommendNumText = self:AddComponent(UIText,"ParentLayout/HeroImg/bg/recommendNumText")
	self.NumText = self:AddComponent(UIText,"ParentLayout/HeroImg/bg/NumText")
	self.infoImg = self:AddComponent(UIImage,"ParentLayout/HeroImg/bg/Image (2)",AtlasConfig.Language)
	self.itemScrollRect=self:AddComponent(UIWrapGroup3D,"ParentLayout/ShopScroll/Grid",UIStrongWrapItem)
	--资源条相关
	self.resourceBarParent=UIUtil.FindTrans(self.transform,"resourceBarParent")
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UIGetStrong,ResourceBarType.MAIN_CITY,self)
	self.TitleBar=UIUtil.FindTrans(self.transform,"TopLeft")
	UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go end,function()
		self.ctrl:CloseSelf()
	end,function ()
		LJAudioManger:GetInstance():PlayVoice("UI_Brush_03")
		UIUtil.BackHomeMain()
	end ,"我要变强",false,0,true)
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
	self.dataList = self.model.strongData
	if self.dataList.lv == nil then
		return
	end
	self.lvText:SetText(math.floor(self.dataList.lv))
	self.recommendNumText:SetText(math.floor(self.dataList.forceNum))
	self.NumText:SetText(math.floor(self.dataList.selfNum))
	self.infoImg:SetSpriteName(self.dataList.info)
	if #self.dataList.itemList>0 then
		self.itemScrollRect:SetLength(table.count(self.dataList.itemList))
		self.itemScrollRect:SetGridPositionByIndex(0)
	else
		self.itemScrollRect:SetLength(0)
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
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UIGetStrong)
end

UIGetStrongView.OnCreate = OnCreate
UIGetStrongView.OnEnable = OnEnable
UIGetStrongView.OnRefresh = OnRefresh
UIGetStrongView.OnAddListener = OnAddListener
UIGetStrongView.OnRemoveListener = OnRemoveListener
UIGetStrongView.OnDestroy = OnDestroy

return UIGetStrongView
