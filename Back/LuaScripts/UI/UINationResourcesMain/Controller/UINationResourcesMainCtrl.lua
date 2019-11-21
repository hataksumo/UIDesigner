--[[
-- 控制层
--]]

local UINationResourcesMainCtrl = BaseClass("UINationResourcesMainCtrl", UIBaseCtrl)

local function CloseSelf(self)
    local msgID = MsgIDDefine.PBNATION_TEAM_TEAM_CLOSE_SOURCE_REQUEST
    local msgObj = MsgIDMap[msgID]()
    msgObj.townId = self.model.buildID
    NetManager:GetInstance():SendMessage(msgID, msgObj, function(msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvPveStart出错了~")
            UISpecial:GetInstance():UITipText(msg_obj.Packages.msg)
            return
        end
    end)
    --这里不能放到服务器返回的消息后，再关闭，否则会引起界面关闭的顺序错误的问题
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationResourcesMain)
end

local function OnClickSwitchOneAreaByAreaNumber(self, num)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_SELECT_AREA, num)
end

local function OnClickArrowBtn(self, page)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")

    local tempNum = self.model.curSelectArea
    tempNum = tempNum + page

    if tempNum < 1 or tempNum > self.model.maxAreaCount then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200143))
        return
    end

    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_SELECT_AREA, tempNum)
end

local function SearchOneResourcesPoint(self)
    local firstTarget = nil
    local secondTarget = nil
    local thirdTarget = nil
    for k, v in pairs(self.model.ResourcesPointList) do
        if v.Type == self.model.curSearchRes.Type and v.Level == self.model.curSearchRes.Level then
            if firstTarget == nil and v.State == NationDefine.NATION_RESOURCE_POINT_STATE.Empty then
                firstTarget = k
            elseif secondTarget == nil and v.State == NationDefine.NATION_RESOURCE_POINT_STATE.Enemy then
                secondTarget = k
            elseif thirdTarget == nil and (v.State == NationDefine.NATION_RESOURCE_POINT_STATE.Ally or v.State == NationDefine.NATION_RESOURCE_POINT_STATE.Mine) then
                thirdTarget = k
            end
        end
    end
    local index = firstTarget or secondTarget or thirdTarget
    if index == nil then
        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(200144))
        return
    end
    local page = math.ceil(index / 9)
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NATION_RESOURCE_SELECT_AREA, page)
end

local function OpenResourcesTargetInfo(self, posID, resID, state)
    local function CallbackFunc(opcode, msgObj)
        if opcode ~= 0 then
            UISpecial:GetInstance():UITipText(msgObj.msg)
            return
        end
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationResourcesTargetInfo, self.model.buildID, resID, posID, state, msgObj)
    end

    NationNetManager:GetInstance():SendGetOneDetailResourcesPointData(self.model.buildID, posID, CallbackFunc)
end

local function OpenOccupiedResLandPanel(self)
    local function callFunc(opcode, msgObj)
        if opcode ~= 0 then
            UISpecial:GetInstance():UITipText(msgObj.msg)
            return
        end
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationOccupiedLand, msgObj, self.model.buildID)
    end
    NationNetManager:GetInstance():SendMsgGetOccupiedLand(callFunc)
end

UINationResourcesMainCtrl.CloseSelf = CloseSelf
UINationResourcesMainCtrl.OnClickArrowBtn = OnClickArrowBtn
UINationResourcesMainCtrl.SearchOneResourcesPoint = SearchOneResourcesPoint
UINationResourcesMainCtrl.OpenResourcesTargetInfo = OpenResourcesTargetInfo
UINationResourcesMainCtrl.OpenOccupiedResLandPanel = OpenOccupiedResLandPanel
UINationResourcesMainCtrl.OnClickSwitchOneAreaByAreaNumber = OnClickSwitchOneAreaByAreaNumber

return UINationResourcesMainCtrl