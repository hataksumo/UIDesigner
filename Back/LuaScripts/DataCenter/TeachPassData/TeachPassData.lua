local TeachPassData = BaseClass("TeachPassData", Singleton)
local global_data = DataUtil.GetData("global")
local item_data = DataUtil.GetData("item")

local function __init(self)
    --玩家已经获得奖励的关卡tab
    self.teachPassFinsh = {}
    self.data_state = 0  -- 0-为请求 1-请求中  2-请求结束
end

local function GetHadFinishTeachPass(self)
    local msgID = MsgIDDefine.PBCHAPTER_HAVECLEAR_TEACH_CHAPTER_REQUEST
    self.data_state = 1
    NetManager:GetInstance():SendMessage(msgID, nil, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            self.data_state = 0
            return
        end
        self.data_state = 2
        self.teachPassFinsh = msg_obj.Packages.clearList
        UIManager:GetInstance():OpenWindow(UIWindowNames.UITrainingCamp, true)
    end)
end

local function UpdateHadFinishTeachPass(self, dataTab)
    self.teachPassFinsh = dataTab
end

TeachPassData.GetHadFinishTeachPass = GetHadFinishTeachPass
TeachPassData.UpdateHadFinishTeachPass = UpdateHadFinishTeachPass

TeachPassData.__init = __init
return TeachPassData