---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by aaa.
--- DateTime: 2019/3/11 13:45
---
local EnemyRoleHead = BaseClass("EnemyRoleHead", UIBaseContainer)
local base = UIBaseContainer

local function GetCrystalSpriteNameByCostType(type)
    if type == 1 then
        return "ui_dtex_Quality_032"
    elseif type == 2 then
        return "ui_dtex_Quality_033"
    elseif type == 3 then
        return "ui_dtex_Quality_034"
    else
        return "ui_dtex_Quality_032"
    end
end

local function GetCrystalSpriteNumByNum(num)
    return "ui_dtex_Quality_0"..math.floor(num+22)
end


local function OnCreate(self)
    base.OnCreate(self)
    self.icon = self:AddComponent(UIImage,"Icon",AtlasConfig.DynamicTex)
    self.frame = self:AddComponent(UIImage,"topBg",AtlasConfig.DynamicTex)
    self.quality = self:AddComponent(UIImage,"QualityImg",AtlasConfig.DynamicTex)
    self.level = self:AddComponent(UIText,"Level")
    self.crystal_img = self:AddComponent(UIImage,"Crystal",AtlasConfig.DynamicTex)
    self.crystal_num = self:AddComponent(UIImage,"Crystal/costSoulImg",AtlasConfig.DynamicTex)
    self.star = {}
    for i = 1, 5 do
        self.star[i] = self:AddComponent(UIImage,"starGroup/"..i,AtlasConfig.DynamicTex)
    end
    self.star_parent = UIUtil.FindTrans(self.transform,"starGroup").gameObject
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,data)
    self.icon:SetSpriteName(data.icon)
    if data.is_arena then
        self.frame:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(data.quality))
        self.quality:SetSpriteName(SpriteDefine:GetQualityIconByType(data.quality))
        self.level:SetText(data.lv)
        for i = 1, 5 do
            if i <= data.star then
                self.star[i]:SetSpriteName("ui_t_Stage_013")
            else
                self.star[i]:SetSpriteName("ui_t_Stage_014")
            end
        end
        self.quality.gameObject:SetActive(true)
        self.star_parent:SetActive(true)
    else
        self.frame:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(4))
        self.quality.gameObject:SetActive(false)
        self.level:SetText("")
        self.star_parent:SetActive(false)
    end



    if data.isHost then
        self.crystal_img.gameObject:SetActive(false)
    else
        self.crystal_img.gameObject:SetActive(true)
        self.crystal_img:SetSpriteName(GetCrystalSpriteNameByCostType(data.callType))
        self.crystal_num:SetSpriteName(GetCrystalSpriteNumByNum(data.callNum))
    end

end


EnemyRoleHead.OnRefresh = OnRefresh
EnemyRoleHead.OnCreate = OnCreate
return EnemyRoleHead