
--[[
-- 控制层
--]]

local UIUserHellUpCtrl = BaseClass("UIUserHellUpCtrl", UIBaseCtrl)


local function CloseSelf(self)
	LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
	UIManager:GetInstance():CloseWindow(UIWindowNames.UIUserHellUp)
	local master_hell_data = DataUtil.GetData("master_hell")
	if UserData:GetInstance().hellLevel >= #master_hell_data then
		UIManager:GetInstance():CloseWindow(UIWindowNames.UIUserHell)
	end
end


UIUserHellUpCtrl.CloseSelf = CloseSelf

return UIUserHellUpCtrl