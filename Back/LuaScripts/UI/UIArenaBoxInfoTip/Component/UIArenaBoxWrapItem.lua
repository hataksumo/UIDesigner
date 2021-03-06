---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/1/15 18:18
---
local UIArenaBoxWrapItem=BaseClass("UIArenaBoxWrapItem",UIWrapComponent)
local base = UIWrapComponent


local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.icon_img=self:AddComponent(UIImage,"iconImg",AtlasConfig.DynamicTex)
    self.frame_img = self:AddComponent(UIImage,"frameImg",AtlasConfig.DynamicTex)
    self.name = self:AddComponent(UIText,"nameText")
    self.count = self:AddComponent(UIText,"countText")
    self.info_iconPress=self:AddComponent(UIEventTrigger,"iconImg")
    self.info_iconPress:SetOnLongPress(function()
        if self.single_data.id then
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.single_data.id)
        end
    end,(function()
        UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
    end),true)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,real_index)
    self.single_data=self.view.itemData[real_index+1]
    if self.single_data == nil then
        return
    end
    self.icon_img:SetSpriteName(self.single_data.icon)
    --self.frame_img:SetSpriteName(self.single_data.challenge_frame)
    self.name:SetText(self.single_data.name)
    self.frame_img:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(self.single_data.quality))
    self.count:SetText(math.floor(self.single_data.num))

end

UIArenaBoxWrapItem.OnCreate = OnCreate
UIArenaBoxWrapItem.OnRefresh=OnRefresh

return UIArenaBoxWrapItem