--[[
-- 控制层
--]]

local UINationBornSelectCityCtrl = BaseClass("UINationBornSelectCityCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationBornSelectCity)
end

local function DoCloseView(self)
    if self.model.callback ~= nil then
        self.model.callback(false)
    end
    self:CloseSelf()
end

local function SendMsgAckSelectBornCity(self, index)
    --if self.model.bornCityList[index].state == self.model.EnumCityState.UnStart then
    --    UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200312))
    --    return
    --end

    --local function CallBackEnterNation()
    --    local function callBackGetNationData(opCode, needEnterNation)
    --        local function callbackSwitchScene()
    --            CloseSelf(self)
    --            SceneManager:GetInstance():SwitchScene(SceneConfig.NationScene)
    --        end
    --
    --        NationCtrlManager:GetInstance():__EnterNationRequestCallback(callbackSwitchScene, opCode, needEnterNation)
    --    end
    --
    --    NationNetManager:GetInstance():SendEnterNationRequest(true, callBackGetNationData)
    --end

    NationNetManager:GetInstance():SendChoiceAscriptionRequest(index, UserData:GetInstance():GetInnerServerId(), true, Bind(self, self.__SendMsgAckSelectBornCityCallback))
end

local function __SendMsgAckSelectBornCityCallback(self, opCode, msgInfo, userdata, index, serverId)
    if opCode ~= 0 then
        if opCode == 3 then
            DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_CHOICE_ASCRIPTION, params.ascription)
        else
            Logger.Log("__SendMsgAckSelectBornCityCallback 出错了~ opCode ", opCode, " msgInfo : ", msgInfo)
            UISpecial:GetInstance():UITipText(msgInfo)
        end
        return
    end
    if self.model.callback ~= nil then
        self.model.callback(true)
    end
    self:CloseSelf()
end

UINationBornSelectCityCtrl.CloseSelf = CloseSelf
UINationBornSelectCityCtrl.DoCloseView = DoCloseView
UINationBornSelectCityCtrl.SendMsgAckSelectBornCity = SendMsgAckSelectBornCity
UINationBornSelectCityCtrl.__SendMsgAckSelectBornCityCallback = __SendMsgAckSelectBornCityCallback

return UINationBornSelectCityCtrl