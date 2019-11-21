
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIExploreSinglePointInfoView = BaseClass("UIExploreSinglePointInfoView", UIBaseView)
local base = UIBaseView

local exit_btn_path="ParentLayout/exitBtn";
local close_bg_btn_path="mask";
local explore_name_path="ParentLayout/titleTxt";
local drop_show_obj_path="ParentLayout/rewardList";
local random_show_obj_path="ParentLayout/necessaryReward/grid";
local go_head_btn_path="ParentLayout/goHeadBtn";

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.exitBtn=self:AddComponent(UIButton,exit_btn_path);
	self.exitBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel");
		self.ctrl:CloseSelf();
	end)
	self.closeBgBtn=self:AddComponent(UIButton,close_bg_btn_path);
	self.closeBgBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
		LJAudioManger:GetInstance():PlayVoice("UI_Cancel");
	end)
	self.exploreName=self:AddComponent(UIText,explore_name_path);
	self.dropShowObj=self:AddComponent(UIBaseContainer,drop_show_obj_path);
	self.dropList={};
	local count=self.dropShowObj.transform.childCount;
	for i = 0, count-1 do
		local tempObj=self.dropShowObj:AddComponent(UIBaseContainer,i);
		local tempIcon=tempObj:AddComponent(UIImage,"Icon",AtlasConfig.DynamicTex);
		local tempNumText=tempObj:AddComponent(UIText,"numText");
		table.insert(self.dropList,{obj=tempObj,icon=tempIcon,numText=tempNumText});
	end
	self.randomShowObj=self:AddComponent(UIBaseContainer,random_show_obj_path);
	count=self.randomShowObj.transform.childCount;
	self.randowDropList={};
	for i = 0, count-1 do
	 	local tempObj=self.randomShowObj:AddComponent(UIBaseContainer,i);
		local tempIcon=tempObj:AddComponent(UIImage,"icon",AtlasConfig.DynamicTex);
		local tempFrame=tempObj:AddComponent(UIImage,"",AtlasConfig.DynamicTex);
		local tempNumShow=tempObj:AddComponent(UIText,"numText");
		local info_iconPress=tempObj:AddComponent(UIEventTrigger,"icon");
		info_iconPress:SetOnLongPress(function()
			UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.model.randomShow[i+1].item.id);
		end,(function()
			UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
		end),true)
		table.insert(self.randowDropList,{obj=tempObj,icon=tempIcon,frame=tempFrame,numShow=tempNumShow});
	end
	self.goHeadBtn=self:AddComponent(UIButton,go_head_btn_path);
	self.goHeadBtn:SetOnClick(function()
		LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
		self.ctrl:SetOnHookTeamRequest(self.model.levelId);
	end)

end

local function OnEnable(self)
	base.OnEnable(self)
	self.exploreName:SetText(self.model.titleName);
	for i, v in ipairs(self.dropList) do
		v.obj.transform.gameObject:SetActive(self.model.dropShow[i]~=nil);
		if self.model.dropShow[i] then
			v.icon:SetSpriteName(self.model.dropShow[i].icon);
			v.numText:SetText(self.model.dropShow[i].str);
		end
	end
	for i, v in ipairs(self.randowDropList) do
		v.obj.transform.gameObject:SetActive(self.model.randomShow[i]~=nil);
		if self.model.randomShow[i] then
			v.icon:SetSpriteName(self.model.randomShow[i].item.icon);
			v.frame:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(self.model.randomShow[i].item.quality))
			v.numShow:SetText(self.model.randomShow[i].str);
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

UIExploreSinglePointInfoView.OnCreate = OnCreate
UIExploreSinglePointInfoView.OnEnable = OnEnable
UIExploreSinglePointInfoView.OnAddListener = OnAddListener
UIExploreSinglePointInfoView.OnRemoveListener = OnRemoveListener
UIExploreSinglePointInfoView.OnDestroy = OnDestroy

return UIExploreSinglePointInfoView
