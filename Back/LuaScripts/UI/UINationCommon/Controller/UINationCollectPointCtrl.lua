--[[
-- 控制层
--]]

local UINationCollectPointCtrl = BaseClass("UINationCollectPointCtrl", UIBaseCtrl)

local function CloseSelf(self)
    UIManager:GetInstance():CloseWindow(UIWindowNames.UINationCollectPoint)
end

local function OnClickCollect(self, nameStr)
    if self.model.originNameTab ~= nil then
        NationCollectPosData:GetInstance():ChangePointName(self.model.originNameTab.ID, nameStr)
    else
        NationCollectPosData:GetInstance():AddNewPointData(self.model.buildID, self.model.subID, self.model.subPosID, self.model.areaID, nameStr)
    end

    CloseSelf(self)
end

UINationCollectPointCtrl.CloseSelf = CloseSelf
UINationCollectPointCtrl.OnClickCollect = OnClickCollect

return UINationCollectPointCtrl