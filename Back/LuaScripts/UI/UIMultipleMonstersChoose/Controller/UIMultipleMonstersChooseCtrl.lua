
--[[
-- 控制层
--]]

local UIMultipleMonstersChooseCtrl = BaseClass("UIMultipleMonstersChooseCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIMultipleMonstersChoose)
end

local function SendMultipleMonstersOpenWind(self,_id)
	DRBossData:GetInstance():SetSelectCustoms(_id)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UIMultipleMonstersOpen,_id)
end

UIMultipleMonstersChooseCtrl.CloseSelf = CloseSelf
UIMultipleMonstersChooseCtrl.SendMultipleMonstersOpenWind = SendMultipleMonstersOpenWind

return UIMultipleMonstersChooseCtrl