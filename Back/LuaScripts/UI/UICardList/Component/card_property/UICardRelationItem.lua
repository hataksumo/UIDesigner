---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/7/9 17:21
---
local UICardRelationItem = BaseClass("UICardRelationItem",UIWrapComponent)
local base = UIWrapComponent
local propertyData = DataUtil.GetData("property")
local card_datas=DataUtil.GetData("card")
local function OnCreate(self,parent)
    base.OnCreate(self)
    --组建初始化
    self.parent=parent
    self.bg = self:AddComponent(UIImage,"tip")
    self.bgText = self:AddComponent(UIText,"tip/baseTip")
    self.bgText2 = self:AddComponent(UIText,"tip/baseTip (1)")
    self.bgText2:SetText("获得所有角色激活")
    self.infoText = self:AddComponent(UIText,"tip/Image (2)/AsddDesText")
    self.gray = self.bg:GetMat()

    self.gridObj=self:AddComponent(UIBaseContainer,"TeamGroup")
    self.objList={}
    local count=self.gridObj.transform.childCount
    for i = 0, count-1 do
        local tempItem=self.gridObj:AddComponent(UIBaseContainer,i)
        local frame = tempItem:AddComponent(UIImage,"FromImg/CardHead/Frame",AtlasConfig.DynamicTex)
        local icon = tempItem:AddComponent(UIImage,"FromImg/CardHead/IconImg",AtlasConfig.DynamicTex)
        local quality = tempItem:AddComponent(UIImage,"FromImg/CardHead/QualityImg",AtlasConfig.DynamicTex)
        local costIcon = tempItem:AddComponent(UIImage,"FromImg/CardHead/Crystal",AtlasConfig.DynamicTex)
        local costNum=tempItem:AddComponent(UIText,"FromImg/CardHead/Crystal/CrystalNum")
        local lv = tempItem:AddComponent(UIText,"FromImg/CardHead/LevelText")
        local name = tempItem:AddComponent(UIText,"Image/NameText")
        local active = UIUtil.FindTrans(tempItem.transform,"maskObj")
        tempItem:AddComponent(UIText,"maskObj/Text"):SetText("尚未获取")
        local starGroup = tempItem:AddComponent(UIBaseContainer, "FromImg/CardHead/Star")
        local starList = {}
        local starCount = starGroup.transform.childCount
        for j = 0, starCount - 1 do
            local singleStarImg = starGroup:AddComponent(UIImage, j, AtlasConfig.DynamicTex)
            table.insert(starList, singleStarImg)
        end
        table.insert(self.objList,{obj = tempItem,frameImg = frame,iconImg = icon,qualityImg=quality,costIconImg=costIcon,costNumText=costNum,lvText=lv,activeObj = active,starListObj = starList,starGroupObj = starGroup,nameText= name})
    end
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,real_index)
    self.single_data = CardData:GetInstance().relationData
    if self.single_data == nil then
        return
    end
    self.bgText:SetText(self.single_data[real_index + 1].Name)
    local prop_info_data = propertyData[self.single_data[real_index + 1].Prop[1].Id]
    local prop_info_type = prop_info_data.Show_Fac
    if prop_info_type == 1 then
        self.infoText:SetText(self.parent.card_name..":"..prop_info_data.CnName..math.floor(self.single_data[real_index + 1].Prop[1].Val))
    else
        self.infoText:SetText(self.parent.card_name..":"..prop_info_data.CnName..math.floor(self.single_data[real_index + 1].Prop[1].Val * 100) .."%")
    end
--[[    for i, m in ipairs(self.single_data[real_index + 1].Prop) do
    end]]
    local haveNum = 0
   for i, v in ipairs(self.objList) do
        if self.single_data[real_index + 1].RelationIds[i] == nil then
            v.obj.transform.gameObject:SetActive(false)
        else
            v.obj.transform.gameObject:SetActive(true)
            local heroId = self.single_data[real_index + 1].RelationIds[i]
            local cardData = CardData:GetInstance():GetCardDataById(tonumber(heroId))
            local card_data_info =card_datas[tonumber(heroId)]
            v.frameImg:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(card_data_info.Quality))
            v.iconImg:SetSpriteName(card_data_info.Icon)
            v.nameText:SetText(card_data_info.Name)
            if cardData ~= nil then
                haveNum = haveNum + 1
                v.activeObj.gameObject:SetActive(false)
                v.frameImg:SetMat(nil)
                v.iconImg:SetMat(nil)
                v.qualityImg.gameObject:SetActive(true)
                v.costIconImg.gameObject:SetActive(true)
                v.starGroupObj.transform.gameObject:SetActive(true)
                v.lvText.gameObject:SetActive(true)
                v.lvText:SetText(math.floor(cardData.level))
                UIUtil.SetHeroStar(cardData.starlv, v.starListObj)
                if cardData.callCost>0 then
                    v.costIconImg.gameObject:SetActive(true)
                    v.costIconImg:SetSpriteName(SpriteDefine:GetCrystalIconByType(cardData.crystalType))
                    v.costNumText:SetText(math.floor(cardData.callCost))
                else
                    v.costIconImg.gameObject:SetActive(false)
                end
                v.qualityImg:SetSpriteName(SpriteDefine:GetQuaIconByType(cardData.quality))
            else
                v.activeObj.gameObject:SetActive(true)
                v.frameImg:SetMat(self.gray)
                v.iconImg:SetMat(self.gray)
                v.qualityImg.gameObject:SetActive(false)
                v.costIconImg.gameObject:SetActive(false)
                v.starGroupObj.transform.gameObject:SetActive(false)
                v.lvText.gameObject:SetActive(false)
            end
        end
    end
    if haveNum == #self.single_data[real_index + 1].RelationIds then
        self.bg:SetMat(nil)
    else
        self.bg:SetMat(self.gray)
    end

end

UICardRelationItem.OnCreate = OnCreate
UICardRelationItem.OnRefresh=OnRefresh

return UICardRelationItem