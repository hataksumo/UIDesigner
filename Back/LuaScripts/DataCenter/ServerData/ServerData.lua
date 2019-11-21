--[[
-- added by wsh @ 2017-12-05
-- 服务器数据
--]]

local ServerItemData = {
	--大区名字
	area_name = "",
	-- 服务器ip
	ip = "",
	--是否是新服  0否1是
	is_new = 0,
	-- 服务器名字
	name = "",
	--开服时间
	open_time = 0,
	--上次登录时间 （越大代表越近）
	login_time = 0,
	--端口号
	port = 1,
	--是否是推荐服  0否1是
	recommend = 0,
	--服务器id
	server_id = 1,
	-- 服务器状态：0-良好、1-普通、2-爆满、3-白名单、4-未开服
	state = 0,
	level = 0,
	head = 0,
	frame = 0,
	--是否有玩家的信息
	isHavePlayerData= false,
}

local ServerData = BaseClass("ServerData", Singleton)
local ServerItem = DataClass("ServerItem", ServerItemData)


---设置推荐服务器列表
local function ParseRecommendList(self)
	if self.servers == nil then
		return
	end
	for _, v in pairs(self.servers) do
		if v.recommend == 1 then
			self.recommend_servers[v.server_id] = v
		end
	end

	--[[local newItem = ServerItem.New()
	newItem.name = "李浩然"
	newItem.ip = "60.1.1.236"
	newItem.port = 9000
	newItem.server_id = 10004
	self.recommend_servers[10004] = newItem
	newItem = ServerItem.New()
	newItem.name = "罗刹街"
	newItem.ip = "60.1.1.23"
	newItem.port = 9000
	newItem.server_id = 10023--]]
end

---设置我的服务器列表数据
local function ParseMyServerList(self,myServerListId)
	self.my_servers = {}
	if myServerListId == nil then
		self.my_servers = nil
		return
	elseif self.servers~=nil and myServerListId ~=nil then
		local list = {}
		for _,v in pairs(self.servers) do
			table.insert(list,v)
		end

		local index = 1
		while index <= table.length(list) do
			local found = false
			for _, v in pairs(myServerListId) do
				if tonumber(v.server_id) ==  list[index].server_id then
					local item = ServerItem.New()
					item.area_name =  list[index].area_name
					item.ip =  list[index].ip
					item.is_new = tonumber(list[index].is_new)
					item.name = list[index].name
					item.open_time = list[index].open_time
					item.port = list[index].port
					item.recommend = tonumber(list[index].recommend)
					item.server_id = tonumber(list[index].server_id)
					item.state = list[index].state
					item.isHavePlayerData = true
					item.login_time = v.login_time
					item.level = v.level
					item.head = v.head
					item.frame = v.frame
					item.head = v.head
					table.insert(self.my_servers,item)
					found = true
					table.remove(list, index)
					break
				end
			end
			if found then

			else
				index = index + 1
			end
		end
	else
		self.my_servers = nil
	end
end

local function __init(self)
	-- 所有服务器列表
	self.servers = {}
	self.recommend_servers = {}
	self.my_servers = {}
	self.last_time_server = {}
	self.server_id = 0
	self.default_server_list = {}---排序open_time从小到大
end

local function ServerListSort(_list)
	if  #_list ~= 0 then
		table.sort(_list,function (a,b) return a.open_time > b.open_time end)
		ClientData:GetInstance():SetLoginServerID(_list[1].server_id)---选出最近开服的
        Logger.Log("当前的server_id".._list[1].server_id)
	end
end


---解析网络数据获取全部服务器数据
local function ParseServerList(self, data)
	self.default_server_list = {}
	if data ~= nil then
		if  data.serverList~= nil then
			for i = 1, table.length( data.serverList) do
				local item = ServerItem.New()
				item.area_name =  data.serverList[i].area_name
				item.ip =  data.serverList[i].ip
				item.is_new = tonumber(data.serverList[i].is_new)
				item.name = data.serverList[i].name
				item.open_time =  tonumber(data.serverList[i].open_time)
				item.port = data.serverList[i].port
				item.recommend = tonumber(data.serverList[i].recommend)
				item.server_id = tonumber(data.serverList[i].server_id)
				item.isHavePlayerData = false
				self.server_id = item.server_id
				item.state = data.serverList[i].state
				self.servers[item.server_id] = item
				table.insert(self.default_server_list,item)
			end
		else
			Logger.Log("数据为空")
		end
		ParseRecommendList(self)
		ParseMyServerList(self,data.myServerList)
	else
		Logger.Log("解析数据失败")
	end
	self:SetLastTimeServer()
end

local function SetLastTimeServer(self)
	self.last_time_server = {}
	if self.my_servers ~= nil and #self.my_servers > 0 then ---記錄上次的服務器
	table.sort(self.my_servers,function (a,b) return a.login_time > b.login_time end)
		ClientData:GetInstance():SetLoginServerID(self.my_servers[1].server_id)---选出最近开服的
		--Logger.Log("当前的server_id"..self.my_servers[1].server_id)
		DataManager:GetInstance():Broadcast(DataMessageNames.ON_LOGIN_SERVER_ID_CHG,ClientData:GetInstance().login_server_id)
		for _, v in ipairs(self.my_servers) do
			if v.server_id == ClientData:GetInstance().login_server_id then
				table.insert(self.last_time_server,v)
			end
		end
	else
		ServerListSort(self.default_server_list)
	end
end

---容错处理
local function GetServerAddressAndPortByServerId(self,server_id)
    if self.servers[server_id] ~= nil then
        --return "127.0.0.1",9000
        return self.servers[server_id].ip,self.servers[server_id].port
    end
    return "127.0.0.1",9000
end


ServerData.__init = __init
ServerData.ParseServerList = ParseServerList
ServerData.GetServerAddressAndPortByServerId = GetServerAddressAndPortByServerId
ServerData.SetLastTimeServer = SetLastTimeServer

return ServerData
