--[[
-- 控制层
--]]

local UINationPositionShareCtrl = BaseClass("UINationPositionShareCtrl", UIBaseCtrl)
local NationUtil = require "GameLogic.Nation.NationUtil"

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationPositionShare)
end

local function SendPosInfoToChatChannel(self, channel)
    local strTab = self.model.richReplaceList

    if channel == self.model.EnumChannelType.Mail then
        --todo,看策划要不要加
        UISpecial:GetInstance():UITipText("暂时没有邮件")
    else
        NationUtil.CloseAllWindowsReturnMainView()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIChat, channel, strTab)
    end
end

UINationPositionShareCtrl.CloseSelf = CloseSelf
UINationPositionShareCtrl.SendPosInfoToChatChannel = SendPosInfoToChatChannel

return UINationPositionShareCtrl