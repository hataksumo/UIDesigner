---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/3/12 15:04
---
local BattleAwardData = BaseClass("BattleAwardData", UIBaseContainer)
local base = UIBaseContainer


local function OnCreate(self)
    base.OnCreate(self)
    self.frame_Img =self:AddComponent(UIImage,"Image",AtlasConfig.DynamicTex)
    self.icon_Img = self:AddComponent(UIImage,"Image/icon",AtlasConfig.DynamicTex)
    self.count_Text = self:AddComponent(UIText,"Image/num")
    self.info_iconPress=self:AddComponent(UIEventTrigger,"Image")
    self.info_iconPress:SetOnLongPress(function()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.item_data.id)
    end,(function()
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
    end),true)
end

--刷新
local function Refresh(self,itemData)
    self.item_data = itemData
    if itemData == nil then
        return
    end
    self.count_Text:SetText(itemData.num)
    self.icon_Img:SetSpriteName(itemData.icon)
    if itemData.type == 20 or itemData.type == 21 then
        self.frame_Img:SetSpriteName(SpriteDefine:GetCircleFrameByType(itemData.quality))
    else
        self.frame_Img:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemData.quality))
    end
end
BattleAwardData.OnCreate=OnCreate
BattleAwardData.Refresh=Refresh
return BattleAwardData