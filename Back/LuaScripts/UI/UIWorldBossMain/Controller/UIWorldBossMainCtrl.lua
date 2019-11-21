
--[[
-- 控制层
--]]

local UIWorldBossMainCtrl = BaseClass("UIWorldBossMainCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIWorldBossMain)
end

local function BackMainCity(self)
	UIUtil.BackHomeMain()
end

UIWorldBossMainCtrl.CloseSelf = CloseSelf
UIWorldBossMainCtrl.BackMainCity = BackMainCity

return UIWorldBossMainCtrl