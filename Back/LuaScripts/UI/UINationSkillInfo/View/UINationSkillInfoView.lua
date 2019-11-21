--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationSkillInfoView = BaseClass("UINationSkillInfoView", UIBaseView)
local base = UIBaseView
--local skillDataList = DataUtil.GetData("skill")
local function OnCloseBtnClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
    self.ctrl:CloseSelf()
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.maskUIButton = self:AddComponent(UIButton, "mask_UIButton")
    --self.titleNameUIText = self:AddComponent(UIText, "panel/tilteImage/titleName_UIText")
    self.exitUIButton = self:AddComponent(UIButton, "panel/exit_UIButton")
    self.frameUIImage = self:AddComponent(UIImage, "panel/skill/frame_UIImage", AtlasConfig.DynamicTex)
    self.iconUIImage = self:AddComponent(UIImage, "panel/skill/frame_UIImage/icon_UIImage", AtlasConfig.DynamicTex)
    self.crystalNumUIText = self:AddComponent(UIText, "panel/skill/frame_UIImage/icon_UIImage/crystalNum_UIText")
    self.crystalUIImage = self:AddComponent(UIImage, "panel/skill/frame_UIImage/icon_UIImage/crystal_UIImage", AtlasConfig.DynamicTex)
    self._skilltypeImage=self:AddComponent(UIImage,"panel/skill/frame_UIImage/icon_UIImage/Image",AtlasConfig.DynamicTex)
    self.nameUIText = self:AddComponent(UIText, "panel/skill/name_UIText")
    self.levelTitleUIText = self:AddComponent(UIText, "panel/skill/levelBg/levelTitle_UIText")
    self.levelValueUIText = self:AddComponent(UIText, "panel/skill/levelBg/levelValue_UIText")
    self.skillTypeUIText = self:AddComponent(UIText, "panel/skill/skillType_UIText")
    self.desPrefab = self:AddComponent(UIText, "prefab/desPrefab")
    self.desUIScrollRect = self:AddComponent(UIScrollRect,"panel/desBg/des_UIScrollRect")
    self.desContent = self:AddComponent(UIBaseComponent,"panel/desBg/des_UIScrollRect/content")
    self.maskUIButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)
    self.exitUIButton:SetOnClick(self, OnCloseBtnClick)
    self.desPool = {}
    self.desPoolYPos = {}
end

local function OnEnable(self)
    base.OnEnable(self)
    self:OnRefresh()
end
local function GetSVMovePos(self,Index)
    local AddNum=0
    if Index==1 then
        return 0
    end
    for i = 1, Index do
        AddNum=AddNum+self.desPoolYPos[i]
    end
    if  self.desUIScrollRect.rectTransform.sizeDelta.y> AddNum then
        return 0
    else
        return AddNum- self.desUIScrollRect.rectTransform.sizeDelta.y
    end
end
local function GetContentHeight(self)
    local AddNum=0
    for i = 1,#self.desPoolYPos do
        AddNum=AddNum+self.desPoolYPos[i]
    end
    Logger.Log( AddNum.."-----")
    return  AddNum
end
local function OnRefresh(self)
    -- 各组件刷新
    local temValue = 0
    local allNationCards = NationCardData:GetInstance().nationCards
    if allNationCards==nil then
        return;
    end
    local skillIndex = 0
    local nationCard = allNationCards[self.model.cardId]
    --local staticNationCard = NationCardData:GetInstance():GetStaticNationCardDataById(self.model.cardId)
    --staticNationCard.talentUnlockLevels
    --local singleSkill=nationCard.selfTalents;
    for i, v in ipairs(nationCard.selfTalents) do
        if v.id==self.model.skillId then
            self.skillData=v
            skillIndex = i
            break
        end
    end
    Logger.LogAny(self.model.skillId,"啊哈哈哈")
    if self.skillData ~= nil then
        self.skillTypeUIText:SetText(self.skillData.showFireTypeStr)
        for i = 1, self.skillData.maxLevel - #self.desPool do
            local desObj = CS.UnityEngine.GameObject.Instantiate(self.desPrefab.gameObject, self.desContent.transform)
            desObj.name = tostring(i)
            local desUIText = self:AddComponent(UIText, desObj)
            table.insert(self.desPool, desUIText)
        end
        self.posYOffset = 0
        self.desPool[1].rectTransform.anchoredPosition = Vector3.zero
        if self.skillData.description then
            self.desPool[1]:SetText(self.skillData.description[1])
        else
            self.desPool[1]:SetText(DataUtil.GetClientText(200389))
        end

        if self.skillData.level == 1 then
            self.desPool[1]:SetColor32(0xfc,0xfc,0x00)
        else
            self.desPool[1]:SetColor32(0xff,0xff,0xff)
        end

        self.posYOffset = self.posYOffset -30 - self.desPool[1]:GetPreferredHeight()
        temValue=self.desPool[1]:GetPreferredHeight()
        self.desPoolYPos[1]=temValue+30
        local skillLevel = nationCard.talentLevels[skillIndex]
        local unlockLevels = nationCard.talentOpenLevels[skillIndex]
        for i = 2, #self.desPool do
            self.desPool[i].rectTransform.anchoredPosition = Vector3.New(0,self.posYOffset,0)


            if self.skillData.description then
                if skillLevel <= unlockLevels[i] then
                    self.desPool[i]:SetText(self.skillData.description[i]..DataUtil.GetClientText(200087)..unlockLevels[i]..DataUtil.GetClientText(200390))
                else
                    self.desPool[i]:SetText(self.skillData.description[i])
                end
            else
                self.desPool[i]:SetText(DataUtil.GetClientText(200389))
            end

            if i < self.skillData.level then
                self.desPool[i]:SetColor32(0xff,0xff,0xff)
            elseif i == self.skillData.level then
                self.desPool[i]:SetColor32(0xfc,0xc0,0x00)
            else
                self.desPool[i]:SetColor32(0xa0,0xa0,0xa0)
            end
            self.posYOffset = self.posYOffset -30 - self.desPool[i]:GetPreferredHeight()

            temValue=self.desPool[i]:GetPreferredHeight()
            self.desPoolYPos[i]=temValue+30
        end

        self.desContent.rectTransform.sizeDelta = Vector2.New(self.desContent.rectTransform.sizeDelta.x, GetContentHeight(self))-- -self.posYOffset
        --更改Y
        --Logger.Log(self.desPoolYPos[self.skillData.level])
        self.desContent.rectTransform.anchoredPosition = Vector3.New(0,GetSVMovePos(self,self.skillData.level),0)
        --self.desContent.rectTransform.anchoredPosition = Vector3.zero
        self.desUIScrollRect:SetVerticalScrolling(self.desUIScrollRect.rectTransform.sizeDelta.y < -self.posYOffset -30)
        self.nameUIText:SetText(self.skillData.name)
        self.levelValueUIText:SetText(tostring(math.floor(self.skillData.level)) .. "/" .. tostring(math.floor(self.skillData.maxLevel)))
        self.iconUIImage:SetSpriteName(self.skillData.icon)
        --被动技能不显示水晶消耗
        local cardData = CardData:GetInstance().cards[self.skillData.cardId]
        if  self.skillData.showFireType==2 or self.skillData.showFireType==3then
            self._skilltypeImage.gameObject:SetActive(true)
            self._skilltypeImage:SetSpriteName(SpriteDefine:GetSkillFireByFireType(self.skillData.showFireType))
        else
            self._skilltypeImage.gameObject:SetActive(false)
        end

--[[        if cardData.type==1 then
            self.crystalNumUIText.gameObject:SetActive(false)
            self.crystalUIImage.gameObject:SetActive(false)
        else
            self.crystalNumUIText.gameObject:SetActive(self.skillData.showFireType ~= 2 and self.skillData.crystalCost>0)
            self.crystalUIImage.gameObject:SetActive(self.skillData.showFireType ~= 2 and self.skillData.crystalCost>0)
        end

        self.crystalUIImage:SetSpriteName(SpriteDefine:GetCrystalIconByType(cardData ~= nil and cardData.crystalType or 0))]]

    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_SKILL_REFRESH, self.OnRefresh)
    self:AddUIListener(UIMessageNames.ON_SKILL_EXP_NUM_CHANGE, self.OnRefresh)

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_SKILL_REFRESH, self.OnRefresh)
    self:RemoveUIListener(UIMessageNames.ON_SKILL_EXP_NUM_CHANGE, self.OnRefresh)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationSkillInfoView.OnCreate = OnCreate
UINationSkillInfoView.OnEnable = OnEnable
UINationSkillInfoView.OnRefresh = OnRefresh
UINationSkillInfoView.OnAddListener = OnAddListener
UINationSkillInfoView.OnRemoveListener = OnRemoveListener
UINationSkillInfoView.OnDestroy = OnDestroy

return UINationSkillInfoView
