
--[[
-- 控制层
--]]

local UIEmBattle2DCtrl = BaseClass("UIEmBattle2DCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIEmBattle2D)
end

UIEmBattle2DCtrl.CloseSelf = CloseSelf

return UIEmBattle2DCtrl