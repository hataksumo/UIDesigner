--[[
-- added by wsh @ 2017-12-05
-- 客户端数据
--]]

local ClientData = BaseClass("ClientData", Singleton)

local function __init(self)
	self.app_version = GameChannelMgr:GetInstance():getAppVersion()
	self.res_version = GameChannelMgr:GetInstance():getResVersion()
	self.account = CS.UnityEngine.PlayerPrefs.GetString("account")
	self.password = CS.UnityEngine.PlayerPrefs.GetString("password")
	self.openId = self.account
	self.login_server_id = CS.UnityEngine.PlayerPrefs.GetInt("login_server_id")
end

local function SetAccountInfo(self, account, password)
	self.account = account
	self.password = password
	self.openId = self.account
	CS.UnityEngine.PlayerPrefs.SetString("account", account)
	CS.UnityEngine.PlayerPrefs.SetString("password", password)
	--Logger.Log("openId"..self.openId)
	DataManager:GetInstance():Broadcast(DataMessageNames.ON_ACCOUNT_INFO_CHG, account, password)
end

--设置sdk的playerId
local function SetSdkPlayerId(self,_playerId)
	self.sdkPlayerId=_playerId;
end

local function SetLoginServerID(self, id)
	self.login_server_id = id
	CS.UnityEngine.PlayerPrefs.SetInt("login_server_id", id)
	DataManager:GetInstance():Broadcast(DataMessageNames.ON_LOGIN_SERVER_ID_CHG, id)
end

local function SetLoginServerData(self, data,name,password)
	if type(data) == "string" and #data > 0 then
		local json = require "cjson"
		local userData = json.decode(data)
		if userData.result ~= 0 then
			UIManager:GetInstance():OpenTwoButtonTip("提示",userData.error,"退出游戏","知道了",function()
				GameChannelMgr:GetInstance():ExitGame()
			end,nil)
			return
		end
		self.user_id = userData.uid
		self.token = userData.token
		self:SetAccountInfo(name, password)
		NetManager:GetInstance():ConnectServer(self.login_server_id,ClientData:GetInstance().token,self.user_id,0)
		UserData:GetInstance():SetRoleID(self.user_id)
	end

end

local function SetGetServerListData(self,data,name)
	if type(data) == "string" and #data > 0 then
 		local json = require "cjson"
		local userData = json.decode(data)
		if userData["result"] == 0  then
			UIManager:GetInstance():Broadcast(UIMessageNames.UI_GET_SERVER_LIST_DATA,name)
		elseif userData["result"] == 1 then
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100058))
		else
			UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100061))
		end
	end
end

---解析注册数据
local function ParseRegisterList(self,data,name,psd)
	if type(data) == "string" and #data > 0 then
		local json = require "cjson"
		local registerData = json.decode(data)
		--Logger.Log("noticeData数据：" ..table.dump(registerData,nil,15))
		if  registerData.result ~= 0 then
			UIManager:GetInstance():OpenTwoButtonTip("提示",registerData.error,"退出游戏","知道了",function()
				GameChannelMgr:GetInstance():ExitGame()
			end,nil)
			return
		else
			self:SetAccountInfo(name, psd)
			ServerData:GetInstance():ParseServerList(registerData)
			DataManager:GetInstance():Broadcast(DataMessageNames.ON_REGISTER_GET_SUCCESS,name,psd)
		end
	else
		Logger.Log("解析数据失败")
	end
end

local function GetLoginServerListUrl(self)
	local url =self.openId.."&sub_channel"
	return url
end

local function GetServerUserId(self)
	return self.user_id
end


ClientData.__init = __init
ClientData.SetSdkPlayerId=SetSdkPlayerId;
ClientData.SetAccountInfo = SetAccountInfo
ClientData.GetLoginServerListUrl = GetLoginServerListUrl
ClientData.SetLoginServerID = SetLoginServerID
ClientData.SetLoginServerData = SetLoginServerData
ClientData.ParseRegisterList = ParseRegisterList
ClientData.SetGetServerListData = SetGetServerListData
ClientData.GetServerUserId = GetServerUserId

return ClientData