--[[
-- added by wsh @ 2017-11-30
-- Lua全局配置
--]]

local Config = Config or {}

-- 调试模式：真机出包时关闭
Config.Debug = true
Config.CShapDebug = true
-- AssetBundle
Config.UseAssetBundle = false
---- 登录平台 Ljsd：登录默认平台蓝鲸 Ledou：乐逗
Config.ChannelName = "Ljsd"
-- Gm 是否开启
Config.IsGmOpen = true
--URL
--http
--王晨曦 = "http://60.1.1.225:8080/
--后端 = "https://60.1.1.23/
--外网CND更新地址 https://cdn-zhj.lanjingshidai.com/
--http:
--https://58.87.65.104
--cdn更新地址 pr1 android
--https://cdn-zhj.lanjingshidai.com/test2/Android/Android/
--https://cdn-zhj.lanjingshidai.com/pr1/ios
--内網更新地址1
--https://58.87.65.104:444/pr1/Android/Android/
--内網更新地址2
--https://58.87.65.104:444/pr2/Android/Android/
local IP_WCX="60.1.1.23"
local IP_LHR="60.1.1.236"
local IP_OUT="58.87.65.104" --乐逗日志上报
local IP_OUT_PR1="login-zhj.lanjingshidai.com"
local IP_OUT_TEST="62.234.23.248" --外网测试服
Config.HttpHead = "https://"
Config.IP = IP_WCX--IP_OUT--
Config.URL_GET_SERVER_LIST = Config.HttpHead..Config.IP.."/loginserver/loginSDK?channel=pc&plat=android&openId="
Config.URL_GET_USER_ID = Config.HttpHead..Config.IP.."/loginserver/login?"
Config.URL_GET_NOTICE_LIST = Config.HttpHead..Config.IP.."/loginserver/noticeList"
Config.URL_GET_REGISTER = Config.HttpHead..Config.IP.."/loginserver/registUser?openId="
Config.URL_GET_LOGIN = Config.HttpHead..Config.IP.."/loginserver/getUserInfo?openId="
Config.URL_GET_CHECK_VERSION = Config.HttpHead..Config.IP.."/loginserver/checkVersion"

-- Net
Config.HEARTBEAT_TIME_UNITY_SECONDS = 20 -- 网络心跳时间 秒
Config.NET_RESEND_TIME_UNITY_SECONDS = 3 -- 网络协议重发重试时间
Config.NET_TIME_OUT_RETRY_SEND_COUNT = 2 -- 网络协议重发最大重试次数
Config.SYNC_SERVER_TIME_UNITY_SECONDS = 45 -- 服务器时间同步时间

Config.NATION_CLIENT_SWITCH = true -- 是否前端有国战功能(是打开国战,否关闭国战)
local function Init()
    --当前有调试配置文件，可加载对应数据
    if CS.GameDebugConfig.instance:IsConfigOK() then
        Config.CShapDebug = CS.GameDebugConfig.instance:IsCShapeDebugOpen()
        Config.Debug = CS.GameDebugConfig.instance:IsLuaDebugOpen()
        local server_temp = CS.GameDebugConfig.instance:GetServerHost(0)
        if string.len(server_temp) >0 then
            Config.URL_GET_SERVER_LIST = server_temp
        end
        server_temp = CS.GameDebugConfig.instance:GetServerHost(1)
        if string.len(server_temp) >0 then
            Config.URL_GET_USER_ID = server_temp
        end
        server_temp = CS.GameDebugConfig.instance:GetServerHost(2)
        if string.len(server_temp) >0 then
            Config.URL_GET_NOTICE_LIST = server_temp
        end
        server_temp = CS.GameDebugConfig.instance:GetServerHost(3)
        if string.len(server_temp) >0 then
            Config.URL_GET_REGISTER = server_temp
        end
        server_temp = CS.GameDebugConfig.instance:GetServerHost(4)
        if string.len(server_temp) >0 then
            Config.URL_GET_LOGIN = server_temp
        end
        server_temp = CS.GameDebugConfig.instance:GetServerHost(5)
        if string.len(server_temp) >0 then
            Config.URL_GET_CHECK_VERSION = server_temp
        end
        local channelName = CS.GameDebugConfig.instance:GetChannelName()
        if not IsNull(channelName)  then
            Config.ChannelName = channelName
        end
        local isGM = CS.GameDebugConfig.instance:IsGMOpen()
        if isGM  then
            Config.IsGmOpen = isGM
        end
    end
end
Config.Init = Init
return Config