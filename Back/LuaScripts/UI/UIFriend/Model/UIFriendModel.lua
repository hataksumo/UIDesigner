
--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIFriendModel = BaseClass("UIFriendModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这

end
 
-- 打开
local function OnEnable(self,send_id)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	self.limit = {friend = 150,black = 80,recent = 20,team = 20}
   local global = DataUtil.GetData("global")
	for i, v in pairs(global) do
		if v.Key == "FriendNumLimit" then
			self.limit.friend = v.valueN
		elseif v.Key == "BlackNumLimit" then
			self.limit.black = v.valueN
		elseif v.Key == "ContactsNumLimit" then
			self.limit.recent = v.valueN
		end
	end
	self.send_id = send_id
	FriendData:GetInstance():GetAllList()
	self:OnRefresh()
end
-- 刷新全部数据
local function OnRefresh(self)
	local friend_data = FriendData:GetInstance()
	self.friend_list = friend_data.friend_list
	self.black_list = friend_data.black_list
	self.recent_list = friend_data.recent_list
	self.team_list = friend_data.team_list
	self.apply_list = friend_data.apply_list
	self.recommend_list = friend_data.recommend_list
	self.all_chat = friend_data.all_chat
	self.all_player = friend_data.all_player

end

-- 刷新全部数据
local function OnChatRefresh(self,id)
	OnRefresh(self)
	self:UIBroadcast(UIMessageNames.ONCHAT_UPDATE,id)
end

local function OnListRefrsh(self)
	OnRefresh(self)
	self:UIBroadcast(UIMessageNames.ON_FRIEND_LIST_REFRESH)
end


-- 监听
local function OnAddListener(self)
	base.OnAddListener(self)
	--添加监听
	self:AddDataListener(DataMessageNames.ON_CHAT_UPDATE,OnChatRefresh)
	self:AddDataListener(DataMessageNames.ON_FRIEND_LIST_REFRESH,OnListRefrsh)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	-- 移除监听
	self:RemoveDataListener(DataMessageNames.ON_CHAT_UPDATE,OnChatRefresh)
	self:RemoveDataListener(DataMessageNames.ON_FRIEND_LIST_REFRESH,OnListRefrsh)
end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	-- 清理成员变量
	
end

-- 销毁
local function OnDistroy(self)
	base.OnDistroy(self)
	-- 清理成员变量

end

UIFriendModel.OnCreate = OnCreate
UIFriendModel.OnEnable = OnEnable
UIFriendModel.OnRefresh = OnRefresh
UIFriendModel.OnAddListener = OnAddListener
UIFriendModel.OnRemoveListener = OnRemoveListener
UIFriendModel.OnDisable = OnDisable
UIFriendModel.OnDistroy = OnDistroy

return UIFriendModel