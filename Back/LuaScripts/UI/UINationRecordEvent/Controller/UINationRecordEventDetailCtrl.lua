
--[[
-- 控制层
--]]

local UINationRecordEventDetailCtrl = BaseClass("UINationRecordEventDetailCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UINationRecordEventDetail)
end

UINationRecordEventDetailCtrl.CloseSelf = CloseSelf

return UINationRecordEventDetailCtrl