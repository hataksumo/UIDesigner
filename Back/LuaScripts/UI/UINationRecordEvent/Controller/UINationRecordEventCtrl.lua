--[[
-- 控制层
--]]

local UINationRecordEventCtrl = BaseClass("UINationRecordEventCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationRecordEvent)
end

--点击一个活动，打开详情面板
local function OpenDetailRecordEvent(self, activeID)
    local dataTab = {}
    dataTab.state = self.model.msgData[activeID].curState
    dataTab.curSchedule = self.model.msgData[activeID].curSchedule
    dataTab.allianceNameTab = self.model.msgData[activeID].unionName
    dataTab.completeTime = self.model.msgData[activeID].completeTime
    dataTab.targetText = self.model.activeList[activeID].Target
    dataTab.rewardState = self.model.activeList[activeID].rewardState
    dataTab.endTime = self.model.activeList[activeID].EndTime

    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationRecordEventDetail, activeID, dataTab)
end

--领取一个纪事的奖励
local function GetRecordEventReward(self, activeID, reward)
    local function callback(opCode,msg,activeID, rewardState)
        if opCode ~= 0 then
            UISpecial:GetInstance():UITipText(msg)
            return
        end
        local dropTab = {}
        dropTab.items = {}
        dropTab.items.is_null = false
        dropTab.skills = {}
        dropTab.skills.is_null = true
        dropTab.cards = {}
        dropTab.cards.is_null = true
        dropTab.equips = {}
        dropTab.equips.is_null = true
        dropTab.exp = 0
        for _, v in ipairs(reward) do
            local temp = {}
            temp.itemId = v.id
            temp.count = v.count
            table.insert(dropTab.items, temp)
        end
        DataUtil.ParseDropItem(dropTab)
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICommGetRewards, dropTab)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_EVENT_ONE_STATUS_UPDATE,activeID, rewardState)
    end
    NationNetManager:GetInstance():SendGetRecordEventReward(activeID, callback)
end

local function NeedSendGetRecordEventData(self)
    local function callFunc(opcode,msg, msgObj)
        if opcode ~= 0 then
            UISpecial:GetInstance():UITipText(msg)
            return
        end
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_NATION_EVENT_UPDATE_ALL_CONTENT,msgObj)
    end
    NationNetManager:GetInstance():SendGetRecordEventData(callFunc)
end


UINationRecordEventCtrl.CloseSelf = CloseSelf
UINationRecordEventCtrl.OpenDetailRecordEvent = OpenDetailRecordEvent
UINationRecordEventCtrl.GetRecordEventReward = GetRecordEventReward
UINationRecordEventCtrl.NeedSendGetRecordEventData = NeedSendGetRecordEventData


return UINationRecordEventCtrl