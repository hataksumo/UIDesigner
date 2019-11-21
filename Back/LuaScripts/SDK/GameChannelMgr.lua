---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2019/8/12 20:46
---
local GameChannelMgr = BaseClass("GameChannelMgr", Singleton)
local function __init(self)
    if IsNull(self.channelmanger) then
        self.channelmanger = CS.GameChannel.ChannelManager.instance
    end
    -- 成员变量
    if IsNull(self.basechannel) then
        self.basechannel = CS.GameChannel.ChannelManager.instance:GetCurChannel()
    end
    self:CreateLuaChannel()
end

local function CreateLuaChannel(self)
    local channelName = "Ljsd"
    if self.channelmanger ~= nil then
        channelName =  self.channelmanger.channelName
    end
    if channelName == "Ljsd" then
        local channal = require "SDK.LjsdChannal"
        self.luaChannal = channal.New()
    elseif channelName == "Ledou" then
        local channal = require "SDK.XunFengChannel"
        self.luaChannal = channal.New()
    else
        local channal = require "SDK.LjsdChannal"
        self.luaChannal = channal.New()
    end
end

local function GetNoticeData(self)
    self.luaChannal.GetNoticeData()
end

local function getAppVersion(self)
    return self.channelmanger.appVersion
end
local function getResVersion(self)
    return self.channelmanger.resVersion
end
local function ExitGame(self)
    return self.channelmanger:ExitGame()
end


local function ShowLoginPanel(self, bGuest, _OnLoginCallBack)
    if IsNull(self.basechannel) then
        return
    end
    self.basechannel:ShowLoginPanel(bGuest, _OnLoginCallBack)
end
local function AutoLogin(self,_OnLoginCallBack)
    if IsNull(self.basechannel) then
        return
    end
    self.basechannel:AutoLogin(_OnLoginCallBack)
end
local function LogOut(self,_OnLogoutCallback)
    if IsNull(self.basechannel) then
        return
    end
    self.basechannel:LogOut(_OnLogoutCallback)
end
local function SwitchAccount(self,_OnLogoutCallback, _OnLoginCallBack)
    if IsNull(self.basechannel) then
        return
    end
    self.basechannel:SwitchAccount(_OnLogoutCallback,_OnLoginCallBack)
end
local function ShowQuestion(self,level,playerid, serverId, roleId, extr, _OnCallBack)
    if IsNull(self.basechannel) then
        return
    end
    local data = { level,"0","0",playerid, serverId, roleId, extr}

    self.basechannel:GeneralFunction(1, _OnCallBack,data)
end
local function DataReport(self,ReportType, _table)
    if IsNull(self.basechannel) then
        return
    end
    self.basechannel:DataReport(ReportType, _table)
end

local function GetChannelId(self)
    if IsNull(self.basechannel) then
        return "PC"
    end
    return self.basechannel:GetChannelId()
end

local function GetSpecifiedInfo(self,_type)
    if IsNull(self.basechannel) then
        return "PC"
    end
    return self.basechannel:GetSpecifiedInfo(_type)
end
GameChannelMgr.__init = __init
GameChannelMgr.getAppVersion = getAppVersion
GameChannelMgr.getResVersion = getResVersion
GameChannelMgr.ExitGame = ExitGame
GameChannelMgr.GetChannelId = GetChannelId
GameChannelMgr.ShowLoginPanel = ShowLoginPanel
GameChannelMgr.AutoLogin = AutoLogin
GameChannelMgr.LogOut = LogOut
GameChannelMgr.SwitchAccount = SwitchAccount
GameChannelMgr.ShowQuestion = ShowQuestion
GameChannelMgr.DataReport = DataReport
GameChannelMgr.GetNoticeData = GetNoticeData
GameChannelMgr.CreateLuaChannel = CreateLuaChannel
GameChannelMgr.GetSpecifiedInfo = GetSpecifiedInfo
--------------
return GameChannelMgr