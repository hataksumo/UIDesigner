local UIGMCommandCtrl = BaseClass("UIGMCommandCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UIGMCommand)
end


local function SkipEnterGuide(self)
    local getItemMsg_id = MsgIDDefine.PBUSER_GM_COMMAND
    local getItemMsg = MsgIDMap[getItemMsg_id]()
    getItemMsg.cmd = 5
    getItemMsg.command = "100003"
    NetManager:GetInstance():SendMessage(getItemMsg_id, getItemMsg,function()
        local num = 0
        for i = 2, 8 do
            getItemMsg.cmd = 12
            getItemMsg.command = tostring(i)
            NetManager:GetInstance():SendMessage(getItemMsg_id, getItemMsg,function()
                num = num+1
                if num == 7 then
                    Logger.Log("----------->SkipEnterGuideSuceess")
                end
            end)
        end
    end)
end

local function SendGetCommand(self,_cmdId, _cmdParam)
    if type(_cmdParam) == "string" then
        local getItemMsg_id = MsgIDDefine.PBUSER_GM_COMMAND
        local getItemMsg = MsgIDMap[getItemMsg_id]()
        getItemMsg.cmd = _cmdId
        getItemMsg.command = _cmdParam
        if _cmdId == 20 and GuideGroup:GetInstance().Runing then
            getItemMsg.command = tostring(GuideGroup:GetInstance().CurType)
        end
        if _cmdId == -1 then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIExploreAddSpeed)
            CloseSelf(self)
            return
        end
        if _cmdId == 12 and _cmdParam == "-1" then
            SkipEnterGuide(self)
            return
        end
        NetManager:GetInstance():SendMessage(getItemMsg_id, getItemMsg,Bind(self,self.ReceiveCommandBackMsg),{ _cmdId = _cmdId,_cmdParam = _cmdParam})
        --NetManager:GetInstance():AddListener(MsgIDDefine.PBUSER_GM_INDICATION, self.ReceiveCommandBackMsg, self)
    end
end



local function ReceiveNationCommandBackMsg(self, msg_obj)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("出错了~")
        UISpecial:GetInstance():UITipText("输入的命令有误")
        return
    end

    self.opReturn=msg_obj.Packages.opReturn
    self.target=msg_obj.Packages.target
    self.endTime=msg_obj.Packages.endTime
    self.nation_team=msg_obj.Packages.nation_team
    self.nation_card=msg_obj.Packages.nation_card

end

local function ReceiveCommandBackMsg(sender, msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBUSER_GM_INDICATION, sender.ReceiveCommandBackMsg)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("出错了~")
        return
    end

    if msg_obj.Packages.gmState ~= 1 then
        Logger.Log("gm命令执行失败~")
        return
    end

    local _cmdId =  msg_obj.Params._cmdId
    local _cmdParam =  msg_obj.Params._cmdParam


    if _cmdId == 6 then -- 当修改时间完成后同步服务器时间
        TimeSyncManager:GetInstance():ForceSyncTime()
    elseif _cmdId == 7 then -- 修改玩家等级
        UserData:GetInstance():SetUserLevel(tonumber(_cmdParam))
    elseif _cmdId == 20 then
        if SceneManager:GetInstance().current_scene.proxy ~= nil then
            SceneManager:GetInstance().current_scene.proxy.battleMessage:Broadcast(BattleEnum.BattleMessage.NOTIFYUIRESULT,msg_obj.Packages.settlement)
            CloseSelf(sender)
        else
            Logger.LogError("非战斗场景")
        end
        return
    elseif _cmdId == 22 then
        TaskData:GetInstance():GetMainTaskData(msg_obj.Packages.majorMission,1)
    elseif _cmdId == 26 then
        CloseSelf(self)
    end
    if msg_obj.Packages.dropItem.items._is_null and msg_obj.Packages.dropItem.cards._is_null then
        return
    else
        DataUtil.ParseDropItem(msg_obj.Packages.dropItem)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.dropItem)
    end
end


UIGMCommandCtrl.ReceiveNationCommandBackMsg=ReceiveNationCommandBackMsg
UIGMCommandCtrl.CloseSelf = CloseSelf
UIGMCommandCtrl.SendGetCommand = SendGetCommand
UIGMCommandCtrl.ReceiveCommandBackMsg = ReceiveCommandBackMsg

return UIGMCommandCtrl