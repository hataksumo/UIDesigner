
--[[
-- 控制层
--]]

local UIArenaQualityBattleResultCtrl = BaseClass("UIArenaQualityBattleResultCtrl", UIBaseCtrl)


local function CloseSelf(self)
    LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIArenaQualityBattleResult)
end


UIArenaQualityBattleResultCtrl.CloseSelf = CloseSelf

return UIArenaQualityBattleResultCtrl