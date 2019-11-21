--[[
-- added by wsh @ 2017-12-01
-- UILogin控制层
--]]


local UILoginCtrl = BaseClass("UILoginCtrl", UIBaseCtrl)


local function ChooseServer(self)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UILoginServer)
end

local function GetServerList(self,name,psd)
    local clientData =ClientData:GetInstance()
    clientData:SetAccountInfo(name, psd)
    ResourcesManager:GetInstance():DownloadWebResourceAsync(string.format("%s%s&sesseionId=%s",Config.URL_GET_SERVER_LIST, name,psd),
            function (asset)
                clientData:ParseRegisterList(asset.text,name)
                --ServerData:GetInstance():SetLastTimeServer()
            end)
end

local function LoginServer(self, name, password)
    local clientData =ClientData:GetInstance()
    clientData:SetAccountInfo(name, password)
    ResourcesManager:GetInstance():DownloadWebResourceAsync(string.format("%s%s&serverId=%s&%s&pwd=%s",Config.URL_GET_LOGIN, clientData.openId,clientData.login_server_id,name,password),
            function (asset)
                local content = asset.text
                clientData:SetLoginServerData(content,name,password)
            end)
end

local function NumberRegister(self,name,psd)
    local clientData =ClientData:GetInstance()
    clientData:SetAccountInfo(name, psd)
    local url = string.format("%s%s&sessionId=%s",Config.URL_GET_SERVER_LIST, name,psd)
    Logger.Log(url)
    ResourcesManager:GetInstance():DownloadWebResourceAsync(url,
            function (asset)
                ClientData:GetInstance():ParseRegisterList(asset.text,name,psd)
            end)
end

local function SendQuickLogin(self,_name)
    NumberRegister(self,_name,"111111",1)
end

UILoginCtrl.LoginServer = LoginServer
UILoginCtrl.ChooseServer = ChooseServer
UILoginCtrl.NumberRegister = NumberRegister
UILoginCtrl.GetServerList = GetServerList
UILoginCtrl.SendQuickLogin = SendQuickLogin
return UILoginCtrl