--[[
-- added by wsh @ 2017-12-11
-- UICardPool模块中卡牌列表的可复用Item
--]]

local UILearnSkillWrapItem = BaseClass("UILearnSkillWrapItem", UIWrapComponent)
local base = UIWrapComponent
local static_data=DataUtil.GetData("card")

local function OnItemClick(self)
    --self.view:OnSelectSkillItem(self._index)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_SELECT_CAN_LEARN_SKILL_ITEM, self._index,self._id)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
end



-- 创建
local function OnCreate(self,parent)
    base.OnCreate(self)
    -- 组件初始化
    self.parent=parent


    self._name=self:AddComponent(UIText,"bg/naem")
    self._icon_img = self:AddComponent(UIImage, "bg/skillbg/icon", AtlasConfig.DynamicTex)
    self._skilltypeImage=self:AddComponent(UIImage,"bg/skillbg/chip",AtlasConfig.Language)
    self._lvText=self:AddComponent(UIText,"bg/skillbg/lv")
    self._crystalUIImage = self:AddComponent(UIImage, "bg/skillbg/cry", AtlasConfig.DynamicTex)
    self._crystalNumUIText = self:AddComponent(UIText, "bg/skillbg/cry/Text")
    self.haveObj=UIUtil.FindTrans(self.transform,"bg/Have")
    self.NoObj=UIUtil.FindTrans(self.transform,"bg/No")
    self.hero_frame=self:AddComponent(UIImage,"bg/heroFrame",AtlasConfig.DynamicTex)
    self.hero_icon=self:AddComponent(UIImage,"bg/heroFrame/heroIcon",AtlasConfig.DynamicTex)
    self.frame = self:AddComponent(UIImage,"bg/skillbg",AtlasConfig.DynamicTex)
    self._btn = self:AddComponent(UIButton, "bg")
    self._btn:SetOnClick(self, OnItemClick)
    -- 变量初始化
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    local itemData
    self.slect=UIUtil.FindTrans(self.transform,"bg/namebg/selectEffPoint_UIBaseComponent");
    if (self.parent.model.dataIndex==real_index) then
        if self.slect~=nil then
            self.slect.gameObject:SetActive(true)
        end
    else
        if self.slect~=nil then
            self.slect.gameObject:SetActive(false)
        end
    end
    if self.view.model.showType>0 then
        itemData=self.view.model.alreadySortList[self.view.model.showType][real_index + 1]
        if itemData.id==self.parent.model.dataId then
            
        end
    else
        itemData=self.view.model.withoutSortList[real_index + 1]
    end

    if itemData ~= nil then
        --self._level_txt :SetText(tostring(itemData.id))
        self._icon_img:SetSpriteName(itemData.icon)
        self._name:SetText(itemData.name)
        self._index = real_index
        if itemData.cardId>0 then
            self.haveObj.gameObject:SetActive(true)
            self.NoObj.gameObject:SetActive(false)
            self.hero_frame.gameObject:SetActive(true)
            local card_data= static_data[itemData.cardId]
            self.hero_frame:SetSpriteName( SpriteDefine:GetItemQualityFrameByType(card_data.Quality))
            self.hero_icon:SetSpriteName(card_data.Icon)

        else
            self.haveObj.gameObject:SetActive(false)
            self.NoObj.gameObject:SetActive(true)
            self.hero_frame.gameObject:SetActive(false)
        end
        self._id = itemData.id
        self._lvText:SetText(itemData.level.."/"..math.floor(itemData.breakLevel))
        self.frame:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemData.quality))
        --判断 技能类型 和消耗水晶
        if itemData.showFireType==2 or itemData.showFireType==3 or itemData.doubleHit>0 then
            self._skilltypeImage.gameObject:SetActive(true)
            self._skilltypeImage:SetSpriteName(SpriteDefine:GetSkillFireByFireType(itemData.showFireType))
        else
            self._skilltypeImage.gameObject:SetActive(false)
        end

        if itemData.showFireType==2 or itemData.crystalCost==0 then
            self._crystalUIImage.gameObject:SetActive(false)
            self._crystalNumUIText.gameObject:SetActive(false)
        else
            self._crystalUIImage.gameObject:SetActive(true)
            self._crystalNumUIText.gameObject:SetActive(true)
            self._crystalUIImage:SetSpriteName(SpriteDefine:GetCrystalIconByType(0))
            self._crystalNumUIText:SetText(itemData.crystalCost)
            if itemData.cardId>0 then
                --技能在一个Card上
                local selfCardInfo=CardData:GetInstance().cards[itemData.cardId]
                if selfCardInfo~=nil then
                    self._crystalUIImage:SetSpriteName(SpriteDefine:GetCrystalIconByType(selfCardInfo.crystalType))
                end
            end
        end
    end
end


UILearnSkillWrapItem.OnCreate = OnCreate
UILearnSkillWrapItem.OnRefresh = OnRefresh

return UILearnSkillWrapItem