---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/6/4 17:27
---
local CellSkillAwardItem = BaseClass("CellSkillAwardItem", UIBaseContainer)
local base = UIBaseContainer


local function OnCreate(self)
    base.OnCreate(self)
    self.haveActive=UIUtil.FindTrans(self.transform,"chipImg")
    self.haveActive.gameObject:SetActive(false)
    self.icon = self:AddComponent(UIImage,"Icon",AtlasConfig.DynamicTex)
    self.frame = self:AddComponent(UIImage,"",AtlasConfig.DynamicTex)
    self.num=self:AddComponent(UIText,"chipNum")
    self.btn = self:AddComponent(UIButton,"Icon")
    self.btn:SetOnClick(function ()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemJumpTip,self.data.heroId)
    end)
end

--刷新
local function Refresh(self,_data)
    self.data = _data
    self.icon:SetSpriteName(_data.heroIcon)
    self.frame:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(_data.heroQuality))
    self.num:SetText(_data.heroCount)
end
CellSkillAwardItem.OnCreate=OnCreate
CellSkillAwardItem.Refresh=Refresh
return CellSkillAwardItem