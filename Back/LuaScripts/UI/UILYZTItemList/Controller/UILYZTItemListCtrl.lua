
--[[
-- 控制层
--]]

local UILYZTItemListCtrl = BaseClass("UILYZTItemListCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILYZTItemList)
end


UILYZTItemListCtrl.CloseSelf = CloseSelf

return UILYZTItemListCtrl