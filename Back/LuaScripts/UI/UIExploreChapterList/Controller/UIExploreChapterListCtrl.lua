
--[[
-- 控制层
--]]

local UIExploreChapterListCtrl = BaseClass("UIExploreChapterListCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIExploreChapterList)
end


UIExploreChapterListCtrl.CloseSelf = CloseSelf

return UIExploreChapterListCtrl