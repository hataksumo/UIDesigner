
--[[
-- 控制层
--]]

local UIArenaForChoiceCtrl = BaseClass("UIArenaForChoiceCtrl", UIBaseCtrl)


local function CloseSelf(self)
	LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIArenaForChoice)
end



UIArenaForChoiceCtrl.CloseSelf = CloseSelf
UIArenaForChoiceCtrl.ReceiveGetArenaInfoResponse = ReceiveGetArenaInfoResponse
UIArenaForChoiceCtrl.OpenArenaOne = OpenArenaOne

return UIArenaForChoiceCtrl