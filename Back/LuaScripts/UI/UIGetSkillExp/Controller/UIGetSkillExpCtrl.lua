--[[
-- 控制层
--]]

local UIGetSkillExpCtrl = BaseClass("UIGetSkillExpCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UIGetSkillExp)
end

local function SendGetExpRequest(self, selectTable, selectExp)
    local msd_id = MsgIDDefine.PBCARD_FRAGMENT_DECOMPOSE_REQUEST
    local msg = (MsgIDMap[msd_id])()
    self.selectList = {}
    self.selectExp = selectExp
    for _, v in pairs(selectTable) do
        local item = msg.fragment:add()
        item.id = v.id
        item.num = v.haveNum
        table.insert(self.selectList, { id = v.id, num = v.haveNum })
    end
    NetManager:GetInstance():SendMessage(msd_id, msg,Bind(self,self.ReceiveGetExpResponse))
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBCARD_FRAGMENT_DECOMPOSE_RESPONSE, self.ReceiveGetExpResponse, self)
end

local function ReceiveGetExpResponse(self, msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBCARD_FRAGMENT_DECOMPOSE_RESPONSE, self.ReceiveGetExpResponse, self)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("出错了~")
        return
    end
    for i = 1, #self.selectList do
        BackpackData:GetInstance():UpdateItemData(self.selectList[i].id, -self.selectList[i].num)
    end
    BackpackData:GetInstance():UpdateItemData(CoinDefine.SkillExp, self.selectExp)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_GET_SKILL_EXP_REFRESH)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_CELL_SKILL_ACTIVE_UPDATE,nil,1)
end

UIGetSkillExpCtrl.CloseSelf = CloseSelf
UIGetSkillExpCtrl.SendGetExpRequest = SendGetExpRequest
UIGetSkillExpCtrl.ReceiveGetExpResponse = ReceiveGetExpResponse

return UIGetSkillExpCtrl