
--[[
-- 控制层
--]]

local UILYZTStoryRecallCtrl = BaseClass("UILYZTStoryRecallCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTStoryRecall)
end


UILYZTStoryRecallCtrl.CloseSelf = CloseSelf

return UILYZTStoryRecallCtrl