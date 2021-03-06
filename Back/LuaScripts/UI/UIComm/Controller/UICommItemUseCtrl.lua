---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2018/12/27 11:15
---
local UICommItemUseCtrl = BaseClass("UICommItemUseCtrl", UIBaseCtrl)

local function CloseSelf(self)
    LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
    UIManager:GetInstance():CloseWindow(UIWindowNames.UICommItemUse)
end

local function OpenCardPool(self,type)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UICardPool,type)
end

local function OnSellBtnClick(self,itemId,itemNum)

    local sellItemMsg_id = MsgIDDefine.PBITEM_OPEN_CHEST_REQUEST
    local sellItemMsg = MsgIDMap[sellItemMsg_id]()
    sellItemMsg.chestId  = itemId
    sellItemMsg.num = itemNum
    self.boxId = itemId
    self.num  = itemNum
    NetManager:GetInstance():SendMessage(sellItemMsg_id, sellItemMsg,Bind(self,self.ReceiveSellBackMsg))
    --NetManager:GetInstance():AddListener(MsgIDDefine.PBITEM_OPEN_CHEST_RESPONSE, self.ReceiveSellBackMsg, self)
end
local function ReceiveSellBackMsg(sender, msg_obj)
    --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBITEM_OPEN_CHEST_RESPONSE, sender.ReceiveSellBackMsg)
    if msg_obj.OpCode ~= 0 then
        Logger.Log("出错了~")
        return
    end
    BackpackData:GetInstance():UpdateItemData(sender.boxId, -sender.num)
    DataUtil.ParseDropItem(msg_obj.Packages.reward)
    if not DataUtil.CheckDropItemIsNull(msg_obj.Packages.reward) then
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, msg_obj.Packages.reward )
    end

end

UICommItemUseCtrl.CloseSelf = CloseSelf
UICommItemUseCtrl.OpenCardPool = OpenCardPool
UICommItemUseCtrl.OnSellBtnClick = OnSellBtnClick
UICommItemUseCtrl.ReceiveSellBackMsg = ReceiveSellBackMsg

return UICommItemUseCtrl