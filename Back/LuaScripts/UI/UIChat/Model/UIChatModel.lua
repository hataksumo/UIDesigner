
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

--与Sever的消息类型枚举保持一致，相差1
local EnumChannelType = {
	World = 1, --世界消息
	System = 2, --系统消息
	Team = 3, --队伍消息
	Nation = 4, --国战消息
	League = 5, --联盟消息
}

local UIChatModel = BaseClass("UIChatModel", UIBaseModel)
local base = UIBaseModel

--todo, 打开聊天时，保留上次选择的频道
local function OnUIMsgSelectChannel(self, channel)
	self.openChannel = channel
end

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

	self.openChannel = EnumChannelType.World
end

-- 打开
local function OnEnable(self, channel, strTab)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这

	self.richList = {}

	if strTab ~= nil then
		for _, v in ipairs(strTab) do
			local temp = {}
			temp.showText = v.showText
			temp.richText = v.richText
			temp.patText = v.patText

			table.insert(self.richList, temp)
		end
	end

	if channel ~= nil then
		self.openChannel = channel
	end

	self:OnRefresh()
	ChatData:GetInstance():BeginRequestChatInfo()
end

-- 刷新全部数据
local function OnRefresh(self)

	self.world_list = ChatData:GetInstance().world_list
	self.system_list = ChatData:GetInstance().system_list
	self.nation_list = ChatData:GetInstance().nation_list
	self.alliance_list = ChatData:GetInstance().alliance_list

	self:UIBroadcast(UIMessageNames.ONCHAT_UPDATE)
end

-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_CHAT_UPDATE, OnRefresh)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_CHAT_UPDATE, OnRefresh)
end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量

	self.richList = {}
	self.nation_list = {}
	self.alliance_list = {}
	ChatData:GetInstance():EndRequsetChatInfo()
end

-- 销毁
local function OnDistroy(self)
	base.OnDistroy(self)
	-- 清理成员变量

	self.openChannel = nil
end

UIChatModel.OnCreate = OnCreate
UIChatModel.OnEnable = OnEnable
UIChatModel.OnRefresh = OnRefresh
UIChatModel.OnAddListener = OnAddListener
UIChatModel.OnRemoveListener = OnRemoveListener
UIChatModel.OnDisable = OnDisable
UIChatModel.OnDistroy = OnDistroy

return UIChatModel