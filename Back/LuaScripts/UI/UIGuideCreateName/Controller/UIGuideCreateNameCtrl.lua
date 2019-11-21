--[[
-- 控制层
--]]

local UIGuideCreateNameCtrl = BaseClass("UIGuideCreateNameCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UIGuideCreateName)
end

local function SendMsgCreatePlayerName(self, str,_call_back,defeat_call)
    local msgID = MsgIDDefine.PBUSER_SET_USER_NAME_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.name = str
    GuideManager:GetInstance():SetGuideServerStep(msgObj)
    local function callBack(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("screen_warCell_response出错~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            if defeat_call~=nil then
                defeat_call()
            end
        else
            UserData:GetInstance().name = str
            if _call_back ~= nil then
                _call_back()
            end
            TimerManager:GetInstance():SimpleTimerArgs(0.5, function(self)
                CloseSelf(self)
            end, self, true)


        end
    end

    NetManager:GetInstance():SendMessage(msgID, msgObj, callBack)
end

UIGuideCreateNameCtrl.CloseSelf = CloseSelf
UIGuideCreateNameCtrl.SendMsgCreatePlayerName = SendMsgCreatePlayerName

return UIGuideCreateNameCtrl