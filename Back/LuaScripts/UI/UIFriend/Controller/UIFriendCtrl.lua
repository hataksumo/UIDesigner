
--[[
-- 控制层
--]]

local UIFriendCtrl = BaseClass("UIFriendCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIFriend)
end


UIFriendCtrl.CloseSelf = CloseSelf

return UIFriendCtrl