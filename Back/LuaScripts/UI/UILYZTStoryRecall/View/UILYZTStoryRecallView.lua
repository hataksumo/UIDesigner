
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILYZTStoryRecallView = BaseClass("UILYZTStoryRecallView", UIBaseView)
local base = UIBaseView

local UILyztSingleStoryItem = require "UI.UILYZTStoryRecall.Component.UILyztSingleStoryItem"

local story_titile_name_path="left panel/include l/AllMailScrollView/Panell/titleName";
local clue_title_name_path="right panel/include r/MailInfoRoot/Panelr/clueTitle";
local clue_content_path="right panel/include r/MailInfoRoot/Panelr/ScrollRect/contenText";
local close_btn_path="right panel/include r/closeBtn";
local story_grid_path="left panel/include l/AllMailScrollView/Panell/AllMailScrollRect/AllMailScrollContent";
local select_img_path="left panel/include l/AllMailScrollView/Panell/AllMailScrollRect/Slect";

local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.storyTitle=self:AddComponent(UIText,story_titile_name_path);
	self.clueTitle=self:AddComponent(UIText,clue_title_name_path);
	self.clueContent=self:AddComponent(UIText,clue_content_path);
	self.closeBtn=self:AddComponent(UIButton,close_btn_path);
	self.closeBtn:SetOnClick(function()
		self.ctrl:CloseSelf();
	end)
	self.selectImg=UIUtil.FindTrans(self.transform,select_img_path);
	self.storyItemWrapGroup=self:AddComponent(UIWrapGroup3D,story_grid_path,UILyztSingleStoryItem);
end

local function OnEnable(self)
	base.OnEnable(self)
	self:OnRefresh()
end

--显示故事内容
local function ShowStoryContet(self,_index)
	self.selectIndex=_index;
	self.clueTitle:SetText(self.model.storyList[_index].title)
	local pos=self.clueContent.transform.localPosition;
	pos.y=0;
	self.clueContent.transform.localPosition=pos;
	self.clueContent:SetText(self.model.storyList[_index].story);
end


local function OnRefresh(self)
	-- 各组件刷新
	self.selectIndex=1;
	ShowStoryContet(self,self.selectIndex);
	self.storyItemWrapGroup:SetLength(table.length(self.model.storyList));
	self.storyItemWrapGroup:ResetToBeginning();
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

UILYZTStoryRecallView.ShowStoryContet=ShowStoryContet;
UILYZTStoryRecallView.OnCreate = OnCreate
UILYZTStoryRecallView.OnEnable = OnEnable
UILYZTStoryRecallView.OnRefresh = OnRefresh
UILYZTStoryRecallView.OnAddListener = OnAddListener
UILYZTStoryRecallView.OnRemoveListener = OnRemoveListener
UILYZTStoryRecallView.OnDestroy = OnDestroy

return UILYZTStoryRecallView
