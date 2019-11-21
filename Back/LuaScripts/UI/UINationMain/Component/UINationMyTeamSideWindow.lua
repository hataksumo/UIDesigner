
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationMyTeamSideWindow = BaseClass("UINationMyTeamSideWindow", UIBaseContainer)
local base = UIBaseContainer

local UINationMyTeamItem = require "UI.UINationMain.Component.UINationMyTeamItem"
local function OnCreate(self)
	base.OnCreate(self)
	self.model = self.view.model
	self.ctrl = self.view.ctrl
	-- 初始化各个组件
	self.team_view_content = self:AddComponent(UIWrapGroup3D, "RectTeamScrolls/RectScroll/grid", UINationMyTeamItem)
end

local function OnEnable(self)
	base.OnEnable(self)
	self:FlushMyTeamDatas(true)
end


local function OnAddListener(self)
	---- UI消息注册
	self.func = {}
	self.func[1] = Bind(self, self.OnFlushMyTeamSide)
	UIManager:GetInstance():AddListener(UIMessageNames.UI_NATION_MY_TEAM_SIDE_FLUSH,
			self.func[1])
end

local function OnRemoveListener(self)
	---- UI消息注销
	UIManager:GetInstance():RemoveListener(UIMessageNames.UI_NATION_MY_TEAM_SIDE_FLUSH,
			self.func[1])
	self.func = nil
end

local function OnFlushMyTeamSide(self)
	self:FlushMyTeamDatas(false)
end

local function FlushMyTeamDatas(self,needReset)
	local count = table.length(self.model.allTeamList)
	self.team_view_content:SetLength(count)
	if needReset then
		self.team_view_content:ResetToBeginning()
	else
		self.team_view_content:WrapContent(true) -- 刷新选中
	end
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
end

UINationMyTeamSideWindow.OnFlushMyTeamSide = OnFlushMyTeamSide
UINationMyTeamSideWindow.FlushMyTeamDatas = FlushMyTeamDatas
UINationMyTeamSideWindow.OnCreate = OnCreate
UINationMyTeamSideWindow.OnEnable = OnEnable
UINationMyTeamSideWindow.OnAddListener = OnAddListener
UINationMyTeamSideWindow.OnRemoveListener = OnRemoveListener
UINationMyTeamSideWindow.OnDestroy = OnDestroy

return UINationMyTeamSideWindow
