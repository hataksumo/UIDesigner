--[[
-- added by wsh @ 2017-12-01
-- UILoginServerModel模型层
--]]

local UILoginServerModel = BaseClass("UILoginServerModel", UIBaseModel)
local base = UIBaseModel

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- 窗口生命周期内保持的成员变量放这
end

-- 打开
local function OnEnable(self)
	base.OnEnable(self)
	-- 窗口关闭时可以清理的成员变量放这
	-- 当前选择的登陆服务器
	self.selected_server_id = 0
	self.area_ids = nil
	self.area_servers = nil
	self.servers = nil
	self:OnRefresh()
end


-- 按区域划分服务器列表
local function FetchAreaList(servers)
	local area_ids_record = {}
	local area_ids = {}
	local area_servers = {}
	local count = 1
	for _,v in pairs(servers) do
		if area_ids_record[v.area_name] == nil then
			area_ids_record[v.area_name] = count
			count = count+1
			table.insert(area_ids, v.area_name)
		end
		local key = area_ids_record[v.area_name]
		local area = area_servers[key]
		if area == nil then
			area = {}
		end
		table.insert(area, v)
		area_servers[key] = area
	end
	return area_ids, area_servers
end
local function FetchRecommendList(servers)
	local list = {}
	for _,v in pairs(servers) do
		table.insert(list,v)
	end
	return list
end
local function OnRefresh(self)
	local server_data = ServerData:GetInstance()
	self.recommend_servers = FetchRecommendList(server_data.recommend_servers)
	self.my_server_list_data = server_data.my_servers
	self.have_info_server_data = server_data.last_time_server
	if server_data.servers ~= nil then
		self.area_ids, self.area_servers = FetchAreaList(server_data.servers)
		self.selected_server_id = ClientData:GetInstance().login_server_id
	end

end

local function OnServerListChg(self)
	self:OnRefresh()
end

local function OnAddListener(self)
	base.OnAddListener(self)
	self:AddDataListener(DataMessageNames.ON_SERVER_LIST_CHG, OnServerListChg)
end

local function OnRemoveListener(self)
	base.OnRemoveListener(self)
	self:RemoveDataListener(DataMessageNames.ON_SERVER_LIST_CHG, OnServerListChg)
end

-- 关闭
local function OnDisable(self)
	base.OnDisable(self)
	self.selected_server_id = 0
	self.servers = nil
	self.area_ids = nil
	self.area_servers = nil
end

-- 销毁
local function OnDestory(self)
	base.OnDestory(self)
	-- 清理成员变量
end

UILoginServerModel.OnCreate = OnCreate
UILoginServerModel.OnEnable = OnEnable
UILoginServerModel.OnRefresh = OnRefresh
UILoginServerModel.OnAddListener = OnAddListener
UILoginServerModel.OnRemoveListener = OnRemoveListener
UILoginServerModel.OnDisable = OnDisable
UILoginServerModel.OnDestory = OnDestory


return UILoginServerModel