
--[[
-- 控制层
--]]

local UIArenaReportCtrl = BaseClass("UIArenaReportCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIArenaReport)
end


UIArenaReportCtrl.CloseSelf = CloseSelf

return UIArenaReportCtrl