
--[[
-- 控制层
--]]

local UITestHoardCtrl = BaseClass("UITestHoardCtrl", UIBaseCtrl)


local function CloseSelf(self)
	LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UITestHoard)
end

local function OnHelp(self)
	LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
	UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonHelpInfo,5)
end

local function BackMainCtiy(self)
	LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
	UIUtil.BackHomeMain()
	UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UIChallengeEntrance")
end


UITestHoardCtrl.CloseSelf = CloseSelf
UITestHoardCtrl.OnHelp = OnHelp
UITestHoardCtrl.BackMainCtiy = BackMainCtiy

return UITestHoardCtrl