
--[[
-- 控制层
--]]

local UILYZTChatCtrl = BaseClass("UILYZTChatCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTChat)
end


UILYZTChatCtrl.CloseSelf = CloseSelf

return UILYZTChatCtrl