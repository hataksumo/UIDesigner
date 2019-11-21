
--[[
-- 控制层
--]]

local UILevelUnlockTipCtrl = BaseClass("UILevelUnlockTipCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILevelUnlockTip)
	DataManager:GetInstance():Broadcast(DataMessageNames.UIGuide_OverEvent)
end


UILevelUnlockTipCtrl.CloseSelf = CloseSelf

return UILevelUnlockTipCtrl