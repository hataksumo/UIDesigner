
--[[
-- 控制层
--]]

local UILYZTCaseListCtrl = BaseClass("UILYZTCaseListCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTCaseList)
end


UILYZTCaseListCtrl.CloseSelf = CloseSelf

return UILYZTCaseListCtrl