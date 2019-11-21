--[[
-- added by ljl @ 2018-11-26
-- UIMail控制层
--]]
local UIMailCtr=BaseClass("UIMailCtr",UIBaseCtrl)

local function CloseSelf()
    LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
    UIManager:GetInstance():CloseWindow(UIWindowNames.UIMail)
end

local function OnNullDelegateMail(self)
    UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100031))
end

--发送读取邮件
local function SendReadMailRequest(self,_mailid)
    local readmail_id = MsgIDDefine.PBUSER_SET_MAIL_READ_REQUEST
    local readmail = (MsgIDMap[readmail_id])()
    readmail.mailId =_mailid
    self._mailid=_mailid
    NetManager:GetInstance():SendMessage(readmail_id, readmail,Bind(self,self.ReceiveReadMailResponse))
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBUSER_SET_MAIL_READ_RESPONSE,self.ReceiveReadMailResponse,self)
end
--接受读取邮件
local function ReceiveReadMailResponse(self,msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBUSER_SET_MAIL_READ_RESPONSE,self.ReceiveReadMailResponse)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("出错了PBUSER_SET_MAIL_READ_RESPONSE； ".." OpCode :"..msg_obj.OpCode.." msg : "..table.dump(msg_obj.Packages,nil,10))
        return
    else
        MailData:GetInstance():SetMailReadState(self._mailid)
     end
end
--发送领取取邮件附件
local function SendGetMailRewardRequest(self,_mailid)
    local rewardmail_id=MsgIDDefine.PBUSER_GET_MAIL_REWARD_REQUEST
    local rewardmail=(MsgIDMap[rewardmail_id])()
    rewardmail.mailId=_mailid
    self._mailid=_mailid
    NetManager:GetInstance():SendMessage(rewardmail_id, rewardmail,Bind(self,self.ReceiveGetMailRewardResponse))
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBUSER_GET_MAIL_REWARD_RESPONSE,self.ReceiveGetMailRewardResponse,self)
end
--接受邮件附件奖励物品
local function ReceiveGetMailRewardResponse(self,msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBUSER_GET_MAIL_REWARD_RESPONSE,self.ReceiveGetMailRewardResponse)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("ERROR PBUSER_GET_MAIL_REWARD_RESPONSE ~~ ； ".. table.dump(msg_obj.Packages,nil,10))
        return
    else
        MailData:GetInstance():SetMailGetState(self._mailid)
        DataUtil.ParseDropItem(msg_obj.Packages.reward)
        if not DataUtil.CheckDropItemIsNull(msg_obj.Packages.reward) then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards,msg_obj.Packages.reward)
        end
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.reward)
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_MAILREDPOINT_UPDATE)
end
--删除单个邮件
local function SendDelegateMailRequest(self,_mailid)
    MailData:GetInstance():SetSingleMailDelegate(_mailid)
--[[    local delegate_id=MsgIDDefine.PBUSER_DELETE_MAIL_REQUEST
    local delegate= (MsgIDMap[delegate_id])()
    delegate.mailId=_mailid
    self._mailid=_mailid
    NetManager:GetInstance():SendMessage(delegate_id, delegate,Bind(self,self.ReceiveDelegateMailResponse))]]
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBUSER_DELETE_MAIL_RESPONSE,self.ReceiveDelegateMailResponse,self)
end
--接受删除单个邮件
local function ReceiveDelegateMailResponse(self,msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBUSER_DELETE_MAIL_RESPONSE,self.ReceiveDelegateMailResponse)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("ERROR PBUSER_DELETE_MAIL_RESPONSE ~~ ； ".. table.dump(msg_obj.Packages,nil,10))
        return
    else
        MailData:GetInstance():SetSingleMailDelegate(self._mailid)
    end
end
--一键删除邮件
local function SendDelegateAllMaillsRequest(self,_idList)
--[[    local delegateall_id=MsgIDDefine.PBUSER_ONE_KEY_DELETE_MAILS_REQUEST
    NetManager:GetInstance():SendMessage(delegateall_id, nil,self.ReceiveDelegateAllMailsResponse)]]
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBUSER_ONE_KEY_DELETE_MAILS_RESPONSE,self.ReceiveDelegateAllMailsResponse,self)
    local idList = {}
    for i, v in ipairs(_idList) do
        table.insert(idList,v.id)
    end
    MailData:GetInstance():SetDelegateAllMailData(idList)
end
--接受一键删除邮件
local function ReceiveDelegateAllMailsResponse(msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBUSER_ONE_KEY_DELETE_MAILS_RESPONSE,self.ReceiveDelegateAllMailsResponse)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("ERROR PBUSER_ONE_KEY_DELETE_MAILS_RESPONSE ~~ ； ".. table.dump(msg_obj.Packages,nil,10))
        return
    else
        MailData:GetInstance():SetDelegateAllMailData(msg_obj.Packages)
    end
end
--发送一键领取
local function SendAllGetMailsRequest(self)
    local delegateall_id=MsgIDDefine.PBUSER_ONE_KEY_GET_MAILS_REWARD_REQUEST
    NetManager:GetInstance():SendMessage(delegateall_id, nil,self.ReceiveAllGetMailsResponse)
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBUSER_ONE_KEY_GET_MAILS_REWARD_RESPONSE,self.ReceiveAllGetMailsResponse,self)
end
--接受一键领取
local function ReceiveAllGetMailsResponse(msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBUSER_ONE_KEY_GET_MAILS_REWARD_RESPONSE,self.ReceiveAllGetMailsResponse)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("出错了~")
        return
    else
        DataUtil.ParseDropItem(msg_obj.Packages.reward)
        if not DataUtil.CheckDropItemIsNull(msg_obj.Packages.reward) then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards,msg_obj.Packages.reward)
        end
        --UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.reward)
        MailData:GetInstance():SetGetAllMailData(msg_obj.Packages)
       -- MailData:GetInstance():SetMailReadState(self._mailid)
    end
    UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_MAILREDPOINT_UPDATE)
end

UIMailCtr.CloseSelf = CloseSelf
UIMailCtr.OnNullDelegateMail = OnNullDelegateMail
UIMailCtr.SendReadMailRequest=SendReadMailRequest
UIMailCtr.ReceiveReadMailResponse=ReceiveReadMailResponse
UIMailCtr.SendGetMailRewardRequest = SendGetMailRewardRequest
UIMailCtr.ReceiveGetMailRewardResponse = ReceiveGetMailRewardResponse
UIMailCtr.SendDelegateMailRequest=SendDelegateMailRequest
UIMailCtr.ReceiveDelegateMailResponse=ReceiveDelegateMailResponse
UIMailCtr.SendDelegateAllMaillsRequest=SendDelegateAllMaillsRequest
UIMailCtr.ReceiveDelegateAllMailsResponse=ReceiveDelegateAllMailsResponse
UIMailCtr.SendAllGetMailsRequest=SendAllGetMailsRequest
UIMailCtr.ReceiveAllGetMailsResponse=ReceiveAllGetMailsResponse
return UIMailCtr