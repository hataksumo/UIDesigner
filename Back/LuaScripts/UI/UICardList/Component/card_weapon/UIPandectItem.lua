---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/5/16 10:30
---
local UIPandectItem=BaseClass("UIPandectItem",UIWrapComponent)
local base = UIWrapComponent
local skill_effect=DataUtil.GetData("skill_effect")

local function OnCreate(self,_data)
    base.OnCreate(self)
    --组建初始化
    self.nameText = self:AddComponent(UIText, "infoBg/infoText")
    self.namebg = self:AddComponent(UIImage, "infoBg")
    self.text = self:AddComponent(UIText,"text")
    self.name_outline=self:AddComponent(UIOutlineEx,"infoBg/infoText")
    self.data = _data
    self.gray=self.namebg:GetMat()
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,real_index)
    self.singleData = self.data.infoDes[real_index]
    self.nameText:SetText("效果等级  ".. tostring(math.floor(real_index )))
    if self.singleData.type==1 then
        self.text:SetText(self.singleData.name.."+"..self.singleData.value)
    else
        self.text:SetText(self.singleData.name)
    end

    if real_index <=self.data.weaponData.unsealTimes then
        self.namebg:SetMat(nil)
        self.nameText:SetColor32(239,234,222)
        self.name_outline:SetEnable(true)
        self.text:SetColor32(21,24,30)

    else
        self.namebg:SetMat(self.gray)

        self.nameText:SetColor32(130,130,130)
        self.name_outline:SetEnable(false)
        self.text:SetColor32(149,149,149)
    end

end

UIPandectItem.OnCreate = OnCreate
UIPandectItem.OnRefresh=OnRefresh

return UIPandectItem