
--[[
-- 控制层
--]]

local UICommonHelpInfoCtrl = BaseClass("UICommonHelpInfoCtrl", UIBaseCtrl)


local function CloseSelf(self)
	LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UICommonHelpInfo)
end


UICommonHelpInfoCtrl.CloseSelf = CloseSelf

return UICommonHelpInfoCtrl