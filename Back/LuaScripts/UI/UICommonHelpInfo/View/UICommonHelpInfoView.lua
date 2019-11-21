
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UICommonHelpInfoView = BaseClass("UICommonHelpInfoView", UIBaseView)
local base = UIBaseView

local info_text_parent_path="UIImgPanel/ScrollRect/Grid";
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.closeBtn=self:AddComponent(UIButton,"UIImgPanel/exitBtn");
	self.closeBtn:SetOnClick(function()
		self.ctrl:CloseSelf()
	end)
	self.closeUIButton = self:AddComponent(UIButton, "close_UIButton")
    self.closeUIButton:SetOnClick(function ()
		self.ctrl:CloseSelf()
	end)
	--self.titleUIText = self:AddComponent(UIText, "UIImgPanel/title_UIText")
    
	self.nameUIText = self:AddComponent(UIText, "UIImgPanel/name_UIText")

	--self.desUIText = self:AddComponent(UIText, "UIImgPanel/contenText/des_UIText")
    self.infoTextParent=self:AddComponent(UIBaseContainer,info_text_parent_path);
	self.textList={};
	local count=self.infoTextParent.transform.childCount;
	for i = 0, count-1 do
		local tempObj=self.infoTextParent:AddComponent(UIBaseContainer,i);
		local bgImg=tempObj:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		local infoText=tempObj:AddComponent(UIText,"contentText");
		table.insert(self.textList,{obj=tempObj,bg=bgImg,text=infoText});
	end

end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
	self.nameUIText:SetText(self.model.helpTitle)
	--self.desUIText:SetText(self.model.helpInfo)
	local strList= string.split(self.model.helpInfo,"#")
	for i, v in ipairs(self.textList) do
		v.obj.transform.gameObject:SetActive(strList[i]~=nil);
		if strList[i]~=nil then
			v.bg:SetEnabled((i+1)%2==0);
			v.text:SetText(strList[i]);
		end
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

UICommonHelpInfoView.OnCreate = OnCreate
UICommonHelpInfoView.OnEnable = OnEnable
UICommonHelpInfoView.OnRefresh = OnRefresh
UICommonHelpInfoView.OnAddListener = OnAddListener
UICommonHelpInfoView.OnRemoveListener = OnRemoveListener
UICommonHelpInfoView.OnDestroy = OnDestroy

return UICommonHelpInfoView
