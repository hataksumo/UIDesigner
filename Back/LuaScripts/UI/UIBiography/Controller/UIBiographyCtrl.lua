
--[[
-- 控制层
--]]

local UIBiographyCtrl = BaseClass("UIBiographyCtrl", UIBaseCtrl)


local function CloseSelf(self)
	LJAudioManger:GetInstance():PlayOtherVoice("UI_Cancel")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIBiography)
end

local function OnHelp(self)
	LJAudioManger:GetInstance():PlayOtherVoice("UI_CommonClick")
	UIManager:GetInstance():OpenWindow(UIWindowNames.UICommonHelpInfo,13)
end

local function BackMainCtiy(self)
	LJAudioManger:GetInstance():PlayOtherVoice("UI_Cancel")
	UIUtil.BackHomeMain()
	UIManager:GetInstance():Broadcast(UIMessageNames.UIMAINCITY_BACK_SCENE,"UIBiography")
end


UIBiographyCtrl.CloseSelf = CloseSelf
UIBiographyCtrl.OnHelp = OnHelp
UIBiographyCtrl.BackMainCtiy = BackMainCtiy

return UIBiographyCtrl