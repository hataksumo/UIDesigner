
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILYZTEventSearchView = BaseClass("UILYZTEventSearchView", UIBaseView)
local base = UIBaseView

local UILTEventGetItemCom = require "UI.UILYZTEventSearch.Component.UILTEventGetItemCom"
local UILTTriEventCom = require "UI.UILYZTEventSearch.Component.UILTTriEventCom"
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
	self.type_group = {}
	self.type_group[1] = UIUtil.FindTrans(self.transform,"Bg/Searching")
	self.type_group[2] = UILTTriEventCom.New(self,"Bg/TriggerEvent")
	self.type_group[2]:OnCreate()
	self.type_group[3] = UILTEventGetItemCom.New(self,"Bg/GetItem")
	self.type_group[3]:OnCreate()

end
--激活窗口  1-开始探索  2-触发事件  3-获得物品
local function ActiveConByType(self,type,...)
	local result = nil
	for i, v in ipairs(self.type_group) do
		if i == type then
			if v.OnRefresh ~= nil then
				v:OnRefresh(...)
			else
				v.gameObject:SetActive(true)
			end
		else
			v.gameObject:SetActive(false)
		end
	end
	return result
end

local function OpenTriggerEventCon(self,address,desc,type)
	ActiveConByType(self,2,address,desc,type)
end

local function OpenGetItemCon(self,title,address,desc,icon)
	ActiveConByType(self,3,title,address,desc,icon)
end
--开始探索
local function BeginSearch(self)
	ActiveConByType(self,1)
	LTData:GetInstance():SearchEvent(self.model.event_id)
	self.search_time = Time.time
end

local function ShowSearchResult(self,type,data)
	local val = Time.time - self.search_time
	local function Execute()
		if type == 1 then
			OpenTriggerEventCon(self,data.city,data.des,1)
		elseif type == 2 then
			OpenTriggerEventCon(self,data.city,data.des,2)
		elseif type == 5 then
			OpenGetItemCon(self,"获得道具",data.city,data.des,data.icon)
		elseif type == 4 then
			OpenGetItemCon(self,"获得线索",data.city,data.des,data.icon)
		end
	end
	if val > 0 then
		TimerManager:GetInstance():SimpleTimerArgs(val,function()
			Execute()
		end,nil,true)
	else
		Execute()
	end

end

local function OnEnable(self)
	base.OnEnable(self)
	BeginSearch(self)
end


local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
	self:AddUIListener(UIMessageNames.UI_LT_SEARCH_EVENT_RESULT, ShowSearchResult)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- UI消息注销
	self:RemoveUIListener(UIMessageNames.UI_LT_SEARCH_EVENT_RESULT, ShowSearchResult)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UILYZTEventSearchView.OnCreate = OnCreate
UILYZTEventSearchView.OnEnable = OnEnable
UILYZTEventSearchView.OnAddListener = OnAddListener
UILYZTEventSearchView.OnRemoveListener = OnRemoveListener
UILYZTEventSearchView.OnDestroy = OnDestroy

return UILYZTEventSearchView
