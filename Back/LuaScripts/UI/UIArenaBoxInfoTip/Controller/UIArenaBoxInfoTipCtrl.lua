
--[[
-- 控制层
--]]

local UIArenaBoxInfoTipCtrl = BaseClass("UIArenaBoxInfoTipCtrl", UIBaseCtrl)


local function CloseSelf(self)
	LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIArenaBoxInfoTip)
end


UIArenaBoxInfoTipCtrl.CloseSelf = CloseSelf

return UIArenaBoxInfoTipCtrl