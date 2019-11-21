
--[[
-- 控制层
--]]

local UIChallengeEntranceCtrl = BaseClass("UIChallengeEntranceCtrl", UIBaseCtrl)


local function CloseSelf(self)
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIChallengeEntrance)
	UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UIChallengeEntrance")
end
local function OpenWindow(self,windowname,param)
	UIManager:GetInstance():OpenWindow(windowname,param)
end

UIChallengeEntranceCtrl.CloseSelf = CloseSelf
UIChallengeEntranceCtrl.OpenWindow = OpenWindow
return UIChallengeEntranceCtrl