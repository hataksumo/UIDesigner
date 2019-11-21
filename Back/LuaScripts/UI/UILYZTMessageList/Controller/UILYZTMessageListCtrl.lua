
--[[
-- 控制层
--]]

local UILYZTMessageListCtrl = BaseClass("UILYZTMessageListCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTMessageList)
end


UILYZTMessageListCtrl.CloseSelf = CloseSelf

return UILYZTMessageListCtrl