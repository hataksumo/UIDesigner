--[[
-- added by wsh @ 2017-12-01
-- UIBackpack控制层
--]]

local UIBackpackCtrl = BaseClass("UIBackpackCtrl", UIBaseCtrl)

local function CloseSelf(self)
    LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
    UIManager:GetInstance():CloseWindow(UIWindowNames.UIBackpack)
end

-- 打开物品使用界面
local function OpenUsePanel(self,id)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UICommItemUse, id)
end
-- 打开出售界面
local function OpenSellPanel(self)
    UIManager:GetInstance():OpenWindow(UIWindowNames.UICommItemSell, self.model.dataId)
end

UIBackpackCtrl.CloseSelf = CloseSelf
UIBackpackCtrl.OpenUsePanel = OpenUsePanel
UIBackpackCtrl.OpenSellPanel = OpenSellPanel

return UIBackpackCtrl