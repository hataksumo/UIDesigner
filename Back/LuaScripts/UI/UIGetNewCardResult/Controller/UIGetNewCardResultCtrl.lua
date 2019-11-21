
--[[
-- 控制层
--]]

local UIGetNewCardResultCtrl = BaseClass("UIGetNewCardResultCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIGetNewCardResult)
end


UIGetNewCardResultCtrl.CloseSelf = CloseSelf

return UIGetNewCardResultCtrl