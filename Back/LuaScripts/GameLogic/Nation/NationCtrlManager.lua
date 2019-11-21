--[[
    国战全局总控口 提供数据保存 网络支持模块
]]
local NationCtrlManager = BaseClass("NationCtrlManager", Singleton)
--local NationUtil = require "GameLogic.Nation.NationUtil"
--local Messenger = require "Framework.Common.Messenger"
local NetUtil = require "Net.Util.NetUtil"

local function __init(self)
    --事件
    --self.isGetPlayerData = false
    self.loginNationStatus = NationDefine.NATION_LOGIN_STATUS.UN_SYNC
    --self.netManager = nil
    self.currentNationProxy = nil
    Logger.LogVars("NationCtrlManager__init")
    --self.netManager = NationNetManager.New()
    --self.netManager:OnInit()
end


-- 析构函数
local function __delete(self)

    self:__DisposeEvent()
    --self.isGetPlayerData = false
    self.loginNationStatus = NationDefine.NATION_LOGIN_STATUS.UN_SYNC
    self.currentNationProxy = nil
    --self.netManager = nil
end


--登出调用
local function __OnLogout(self)
    NationMarchData:GetInstance():CleanUpData()
    --self.isGetPlayerData = false
    self.loginNationStatus = NationDefine.NATION_LOGIN_STATUS.UN_SYNC
    LogicTimerManager:GetInstance():Cleanup() -- 清理计时器
    --TODO 断开国战服务器

end

--[[
    获取国战数据状态
]]
local function GetLoginNationStatus(self)
    if self.loginNationStatus == NationDefine.NATION_LOGIN_STATUS.UN_SYNC then
        return NationDefine.LOGIN_NATION_ST.NOT_GET_DATA -- 未获取数据需要获取数据
    else
        return NationDefine.LOGIN_NATION_ST.DATA_OK
    end
end

--进入国战
local function EnterNationLogicNew(self)
    if self.loginNationStatus == NationDefine.NATION_LOGIN_STATUS.UN_SYNC  then -- 没获取过国战数据
        NationNetManager:GetInstance():SendCheckNationOpenRequest(nil,Bind(self, self.__CheckNationOpenRequestCallback))
    elseif self.loginNationStatus == NationDefine.NATION_LOGIN_STATUS.DATA_OK then -- 已经获取过国战数据了
        --直接进入
        --二次进入
        NationNetManager:GetInstance():SendNationTeamSyncPathRequest(NationDefine.TEAM_SYNC_PATH_TYPE.ENTER_NATION,
                needEnterNation, Bind(self, self.__SecondGetNationTeamSyncPathRequestCallback))
    end
end

local function __CheckNationOpenRequestCallback(self, opCode, userDefineData, netDatas)
    if opCode ~= 0 then
         return
    end

    if not netDatas.isOpen then
        -- 国战未开放
        --断开连接
        --self:LogoutNation(true)
        return
    end

    --Logger.LogVars(" __CheckNationOpenRequestCallback netDatas.isOpen :",netDatas.isOpen," netDatas.secretKey ： ",netDatas.secretKey)

    --netDatas.isEnter
    if not netDatas.isEnter then -- 玩家从未进入过国战
        local myCallback = Bind(self,function(self,msg_obj)
            UIManager:GetInstance():OpenWindow(UIWindowNames.UINationBornSelectCity, msg_obj.Packages, Bind(self, function (self,selectOk) -- 出生选周
                if selectOk then
                    -- 正常进入国战 进入国战
                    NationNetManager:GetInstance():SendEnterNationRequest(true, Bind(self, self.__EnterNationRequestCallback))
                else
                    -- 关闭界面
                    --self:LogoutNation(true) -- 登出国战等待下次连接
                end
            end))
        end)
        NationNetManager:GetInstance():SendGetAllBornRegionRequest(myCallback)
    else -- 玩家已经进入过国战
        NationNetManager:GetInstance():SendEnterNationRequest(true, Bind(self, self.__EnterNationRequestCallback))
    end
end

----[[
--    国战登录逻辑 回调函数是已获取到数据后
--    needEnterNation 是否需要进入国战 用来判断某些不进入国战的数据不需要发送
--]]
--
--local function GetNationLoginData(self)
--    local st = self:GetLoginNationStatus()
--    if st == NationDefine.LOGIN_NATION_ST.UN_ENTER then
--        --第一次进入国战游戏
--        local myCallback = function(msg_obj)
--            UIManager:GetInstance():OpenWindow(UIWindowNames.UINationBornSelectCity, msg_obj.Packages)
--        end
--        NationNetManager:GetInstance():SendGetAllBornRegionRequest(myCallback)
--        Logger.LogErrorVars("GetNationLoginData  11111 NationDefine.LOGIN_NATION_ST.UN_ENTER")
--    elseif st == NationDefine.LOGIN_NATION_ST.NOT_GET_DATA then
--        --玩家本次游戏中，第一次切入国战游戏场景
--        NationNetManager:GetInstance():SendEnterNationRequest(needEnterNation, Bind(self, self.__EnterNationRequestCallback, callback))
--        Logger.LogErrorVars("GetNationLoginData  22222222222 NationDefine.LOGIN_NATION_ST.NOT_GET_DATA")
--    else
--        --玩家本次游戏中，切入过国战游戏场景（已经拥有部分国战数据）
--        if needEnterNation then
--            Logger.LogErrorVars("GetNationLoginData  333333333333333 NationDefine.LOGIN_NATION_ST.OK")
--            NationNetManager:GetInstance():SendNationTeamSyncPathRequest(NationDefine.TEAM_SYNC_PATH_TYPE.ENTER_NATION,
--                    needEnterNation, Bind(self, self.__SecondGetNationTeamSyncPathRequestCallback, callback))
--        else
--            Logger.LogErrorVars("GetNationLoginData  44444444444444 NationDefine.LOGIN_NATION_ST.OK")
--            if callback then
--                callback()
--            end
--        end
--    end
--end

--退出场景调用
local function DoLeaveNation(self)
    NationNetManager:GetInstance():SendNationTeamSyncPathRequest(NationDefine.TEAM_SYNC_PATH_TYPE.LEAVE_NATION,
            false, Bind(self, self.__SecondGetNationTeamSyncPathRequestCallback))
end

local function __FirstGetNationTeamSyncPathRequestCallback(self, opCode, userDefineData, type, nationArmyPath)
    if opCode ~= 0 then

    else
        NationMarchData:GetInstance():EnterGetMarchDataList(nationArmyPath, false)
        NationNetManager:GetInstance():SendGetNationRoleTownsRequest(userDefineData, Bind(self, self.__GetNationRoleTownsRequestCallback))
    end
end

local function __SecondGetNationTeamSyncPathRequestCallback(self, opCode, userDefineData, type, nationArmyPath)
    if opCode ~= 0 then

    else
        if type == NationDefine.TEAM_SYNC_PATH_TYPE.ENTER_NATION then
            -- 同步线段 进入国战
            NationMarchData:GetInstance():EnterGetMarchDataList(nationArmyPath, false)
            SceneManager:GetInstance():SwitchScene(SceneConfig.NationScene)
        elseif type == NationDefine.TEAM_SYNC_PATH_TYPE.LEAVE_NATION then
            -- 清除所有线段 返回主城
            NationMarchData:GetInstance():CleanUpData()
            UIUtil.BackHomeMain()
        end

    end
end


--
----[[
--    国战登录逻辑
--]]
--local function LoginNation(self)
--    local st = self:GetLoginNationStatus()
--    if st == NationDefine.NOT_GET_DATA then
--        NationNetManager:GetInstance():SendEnterNationRequest(Bind(self,self.__EnterNationRequestCallback))
--    elseif st == NationDefine.UN_ENTER then -- 未进入过
--        local myCallback = function(self,opCode)
--            if opCode ~= 0 then
--
--            else
--                NationNetManager:GetInstance():SendEnterNationRequest(Bind(self,self.__EnterNationRequestCallback))
--            end
--        end
--        NationNetManager:GetInstance():SendChoiceAscriptionRequest(1,Bind(self,myCallback))
--    else
--        SceneManager:GetInstance():SwitchScene(SceneConfig.NationScene)
--    end
--end


local function __EnterNationRequestCallback(self, opCode, needEnterNation)
    if opCode ~= 0 then

    else
        local unionId = NationUnionData:GetInstance():GetNationUnionId()
        --Logger.LogVars("__EnterNationRequestCallback unionId : ",unionId)
        if unionId == 0 then
            NationUnionData:GetInstance():ParseNationUserUnionData(nil, false)
            NationNetManager:GetInstance():SendGetNationTeamsRequest(needEnterNation, Bind(self, self.__GetNationTeamsRequestCallback))
        else
            NationNetManager:GetInstance():SendGetNationUnionInfoRequest(false, needEnterNation, Bind(self, self.__GetNationUnionInfoRequestCallback))
        end
    end
end

local function __GetNationUnionInfoRequestCallback(self, opCode, userDefineData)
    if opCode ~= 0 then

    else
        NationNetManager:GetInstance():SendGetNationTeamsRequest(userDefineData, Bind(self, self.__GetNationTeamsRequestCallback))
    end
end

local function __GetNationTeamsRequestCallback(self, opCode, userDefineData)
    if opCode ~= 0 then

    else
        NationNetManager:GetInstance():SendGetTechsRequest(userDefineData, Bind(self, self.__GetNationTechsRequestCallback))
    end
end

local function __GetNationTechsRequestCallback(self, opCode, userDefineData)
    if opCode ~= 0 then

    else
        NationNetManager:GetInstance():SendGetNationCardsRequest(userDefineData, Bind(self, self.__GetNationCardsRequestCallback))
    end
end

local function __GetNationCardsRequestCallback(self, opCode, userDefineData)
    if opCode ~= 0 then

    else
        NationNetManager:GetInstance():SendNationTeamSyncPathRequest(
                NationDefine.TEAM_SYNC_PATH_TYPE.ENTER_NATION, userDefineData, Bind(self, self.__FirstGetNationTeamSyncPathRequestCallback))
        --if userDefineData then
        --
        --else
        --    NationNetManager:GetInstance():SendGetNationRoleTownsRequest(userDefineData, Bind(self, self.__GetNationRoleTownsRequestCallback))
        --end
    end
end



local function __GetNationRoleTownsRequestCallback(self, opCode, userDefineData)
    if opCode ~= 0 then

    else
        --self.isGetPlayerData = true
        self.loginNationStatus = NationDefine.NATION_LOGIN_STATUS.DATA_OK
        --if callback then
        --    callback()
        --end
        SceneManager:GetInstance():SwitchScene(SceneConfig.NationScene)
    end
end

--local function OnInit(self)
--    --self.isGetPlayerData = false
--    self.loginNationStatus = NationDefine.NATION_LOGIN_STATUS.UN_SYNC
--end

local function GetCurrentNationProxy(self)
    return self.currentNationProxy
end

NationCtrlManager.__init = __init
NationCtrlManager.__delete = __delete
NationCtrlManager.__EnterNationRequestCallback = __EnterNationRequestCallback
NationCtrlManager.__GetNationTeamsRequestCallback = __GetNationTeamsRequestCallback
NationCtrlManager.__GetNationCardsRequestCallback = __GetNationCardsRequestCallback
NationCtrlManager.__GetNationRoleTownsRequestCallback = __GetNationRoleTownsRequestCallback
NationCtrlManager.__GetNationUnionInfoRequestCallback = __GetNationUnionInfoRequestCallback
NationCtrlManager.__FirstGetNationTeamSyncPathRequestCallback = __FirstGetNationTeamSyncPathRequestCallback
NationCtrlManager.__SecondGetNationTeamSyncPathRequestCallback = __SecondGetNationTeamSyncPathRequestCallback

NationCtrlManager.__GetNationTechsRequestCallback = __GetNationTechsRequestCallback

NationCtrlManager.__OnLogout = __OnLogout


NationCtrlManager.__CheckNationOpenRequestCallback = __CheckNationOpenRequestCallback

--NationCtrlManager.GetNationNetManager=GetNationNetManager

--NationCtrlManager.LoginNation=LoginNation
NationCtrlManager.GetLoginNationStatus = GetLoginNationStatus
--NationCtrlManager.GetNationLoginData = GetNationLoginData
NationCtrlManager.GetCurrentNationProxy = GetCurrentNationProxy

--NationCtrlManager.OnInit = OnInit
NationCtrlManager.DoLeaveNation = DoLeaveNation

-- new nation add

NationCtrlManager.EnterNationLogicNew = EnterNationLogicNew
--NationCtrlManager.OnNationConnectorEvent = OnNationConnectorEvent

--
return NationCtrlManager