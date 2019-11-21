--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UILearnSkillView = BaseClass("UILearnSkillView", UIBaseView)
local base = UIBaseView
local skillWrapItem = require "UI.UILearnSkill.Component.UILearnSkillWrapItem"
local StaticCardInfo = DataUtil.GetData("card")
local UIMatButton = require "UI.UIComm.Component.UIMatButton"
local StaticBtn = DataUtil.GetData("skill_exchange_type")
local function OnExitBtnClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_Cancel")
    self.ctrl:CloseSelf()
end

local function OnLearnBtnClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    if self.selectSkillData ~= nil then
        if self.selectSkillData.cardId ~= 0 then
            UIManager:GetInstance():OpenTwoButtonTip("提<size=40>示</size>","此技能已有守护灵学习，确定替换给当前守护灵？（原守护灵会移除此技能）"
            , "确定", "取消",function()
                        self.ctrl:SendLearnRequest()
            end,nil)
        else
            self.ctrl:SendLearnRequest()
        end
    else
        return
    end
end

--根据技能效果类型筛选 1-攻击，2-防守，3-资源，4-增幅
local function FilterByType(self, _filterType,text)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    if _filterType>0 and #self.model.alreadySortList[_filterType]==0 then
        UISpecial:GetInstance():UITipText("没有该类型技能")
        --return
    end
    self.slectObj:SetParent(self.BtnGroup[_filterType+1].Btn.transform)
    self.slectObj.localPosition=Vector3.zero
    self.slectText:SetText(text)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_SELECT_CAN_LEARN_SKILL_SHOW_TYPE, _filterType)
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
    return  AddNum
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件



    self.exitUIButton = self:AddComponent(UIButton, "mask_UIButton")
    self.exitUIButton:SetOnClick(self, OnExitBtnClick)

    self.slectObj=UIUtil.FindTrans(self.transform,"SlecBtn")
    self.slectText=self:AddComponent(UIText,"SlecBtn/Slect_Text")
    self.BtnGroup={}
    self.allUIButton =self:AddComponent(UIButton,"skillEffectGroup/all_UIButton")
    self.allUIText = self:AddComponent(UIText,"skillEffectGroup/all_UIButton/all_UIText")
    table.insert(self.BtnGroup,{Btn=self.allUIButton,Text=self.allUIText,Type=0})
    self.attackUIButton = self:AddComponent(UIButton, "skillEffectGroup/atk_UIButton")
    self.atkackUIText = self:AddComponent(UIText, "skillEffectGroup/atk_UIButton/atk_UIText")
    table.insert(self.BtnGroup,{Btn=self.attackUIButton,Text=self.atkackUIText,Type=0})
    self.defenceUIButton = self:AddComponent(UIButton, "skillEffectGroup/def_UIButton")
    self.defenceUIText = self:AddComponent(UIText, "skillEffectGroup/def_UIButton/def_UIText")
    table.insert(self.BtnGroup,{Btn=self.defenceUIButton,Text=self.defenceUIText,Type=0})
    self.resourceUIButton = self:AddComponent(UIButton, "skillEffectGroup/res_UIButton")
    self.resourceUIText = self:AddComponent(UIText, "skillEffectGroup/res_UIButton/res_UIText")
    table.insert(self.BtnGroup,{Btn=self.resourceUIButton,Text=self.resourceUIText,Type=0})
    self.buffUIButton = self:AddComponent(UIButton, "skillEffectGroup/buff_UIButton")
    self.buffUIText = self:AddComponent(UIText, "skillEffectGroup/buff_UIButton/buff_UIText")
    table.insert(self.BtnGroup,{Btn=self.buffUIButton,Text=self.buffUIText,Type=0})
    local Btn_Num=#StaticBtn
    for i = 1, #self.BtnGroup do
        if i<=Btn_Num+1  then
            self.BtnGroup[i].Btn.gameObject:SetActive(true)
            if i==1 then
                self.BtnGroup[i].Text:SetText("全部")
                self.BtnGroup[i].Btn:SetOnClick(self,FilterByType,self.BtnGroup[i].Type,"全部")
            else
                self.BtnGroup[i].Text:SetText(StaticBtn[i-1].TagName)
                self.BtnGroup[i].Type=StaticBtn[i-1].Type
                self.BtnGroup[i].Btn:SetOnClick(self,FilterByType,self.BtnGroup[i].Type,StaticBtn[i-1].TagName)
            end
        else
            self.BtnGroup[i].Btn.gameObject:SetActive(false)
        end
    end

    self.frameUIImage = self:AddComponent(UIImage, "panel/SkillInfo/HaveInfo/skillbg", AtlasConfig.DynamicTex)
    self.iconUIImage = self:AddComponent(UIImage, "panel/SkillInfo/HaveInfo/skillbg/icon", AtlasConfig.DynamicTex)
    self.crystalUIImage = self:AddComponent(UIImage, "panel/SkillInfo/HaveInfo/skillbg/cry", AtlasConfig.DynamicTex)
    self.crystalNumUIText = self:AddComponent(UIText, "panel/SkillInfo/HaveInfo/skillbg/cry/crytext")
    self.fireTypeImg = self :AddComponent(UIImage,"panel/SkillInfo/HaveInfo/skillbg/chip",AtlasConfig.Language)
    self.nameUIText = self:AddComponent(UIText, "panel/SkillInfo/HaveInfo/tilteImage/Skill_name")
    self.skillTypeUIText = self:AddComponent(UIText, "panel/SkillInfo/HaveInfo/tilteImage/skillType_UIText")
    self.levelValueUIText = self:AddComponent(UIText, "panel/SkillInfo/HaveInfo/titlebg/levelValue_UIText")
    self.leranHero_frame=self:AddComponent(UIImage,"panel/SkillInfo/HaveInfo/titlebg/hero",AtlasConfig.DynamicTex)
    self.learnHero_icon=self:AddComponent(UIImage,"panel/SkillInfo/HaveInfo/titlebg/hero/hero_icon",AtlasConfig.DynamicTex)
    self.gridUIWrapGroup3D = self:AddComponent(UIWrapGroup3D, "panel/SkillBag/right/Scroll View/grid_UIWrapGroup3D", skillWrapItem,self)
    self.selectEffPointUIBaseComponent = self:AddComponent(UIBaseComponent, "panel/selectEffPoint_UIBaseComponent")
    self.HaveObj=UIUtil.FindTrans(self.transform,"panel/SkillInfo/HaveInfo").gameObject
    --self.EmpObj=UIUtil.FindTrans(self.transform,"panel/SkillInfo/NoInfo").gameObject
    self.leftBtn=UIMatButton.New(self,"panel/SkillInfo/HaveInfo/LeftBtn")
    self.leftBtn:OnCreate()
    self.rightBtn=UIMatButton.New(self,"panel/SkillInfo/HaveInfo/RightBtn")
    self.rightBtn:OnCreate()
    self.rightBtn:OnInitBtn("养成",function ()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        --UISpecial:GetInstance():UITipText("技能表不全  等技能表数据")
        self.ctrl:CloseSelf()
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICellSkillPacket,self.selectSkillData)
    end )
    self.desPool = {}
    self.desPoolYPos = {}




    --self.skillDesUIText = self:AddComponent(UIText, "panel/left/desBg/skillDes_UIText")
    --self.learnUIButton = self:AddComponent(UIButton, "panel/left/learn_UIButton")

    self.desPrefab = self:AddComponent(UIText, "panel/SkillInfo/HaveInfo/desBg/des_UIScrollRect/content/prefab/desPrefab")
    self.desUIScrollRect = self:AddComponent(UIScrollRect,"panel/SkillInfo/HaveInfo/desBg/des_UIScrollRect")
    self.desContent = self:AddComponent(UIBaseComponent,"panel/SkillInfo/HaveInfo/desBg/des_UIScrollRect/content")



    --self.learnUIButton:SetOnClick(self, OnLearnBtnClick)

end

local function OnEnable(self)
    base.OnEnable(self)
    FilterByType(self,self.model.showType)
end

local function UpdateSkillDesContent(self)
    local temValue = 0
    --self.skillData = SkillData:GetInstance().skills[skillId]
    if  self.selectSkillData ~= nil then
        self.desPrefab:SetText(DataUtil.GetSkillDesByIdAndLevel(self.selectSkillData.templateId,self.selectSkillData.level,self.selectSkillData.breakTimes))
        --[[
        for i = 1, self.selectSkillData.maxLevel - #self.desPool do
            local desObj = CS.UnityEngine.GameObject.Instantiate(self.desPrefab.gameObject, self.desContent.transform)
            desObj.name = tostring(i)
            local desUIText = self:AddComponent(UIText, desObj)
            table.insert(self.desPool, desUIText)
        end
        self.posYOffset = 0
        self.desPool[1].rectTransform.anchoredPosition = Vector3.zero
        if  self.selectSkillData.description then
            self.desPool[1]:SetText( self.selectSkillData.description[1])
        else
            self.desPool[1]:SetText(" 暂无描述")
        end

        if  self.selectSkillData.level == 1 then
            self.desPool[1]:SetColor32(63,121,63)
        else
            self.desPool[1]:SetColor32(21,24,30)
        end

        self.posYOffset = self.posYOffset -30 - self.desPool[1]:GetPreferredHeight()
        temValue=self.desPool[1]:GetPreferredHeight()
        self.desPoolYPos[1]=temValue+30
        for i = 2, #self.desPool do
            self.desPool[i].rectTransform.anchoredPosition = Vector3.New(0,self.posYOffset,0)
            if  self.selectSkillData.description then
                self.desPool[i]:SetText(self.selectSkillData.description[i])
            else
                self.desPool[i]:SetText(" 暂无描述")
            end

            if i < self.selectSkillData.level then
                self.desPool[i]:SetColor32(21,24,30)
            elseif i ==  self.selectSkillData.level then
                self.desPool[i]:SetColor32(63,121,63)
            else
                self.desPool[i]:SetColor32(149,149,149)
            end
            self.posYOffset = self.posYOffset -30 - self.desPool[i]:GetPreferredHeight()

            temValue=self.desPool[i]:GetPreferredHeight()
            self.desPoolYPos[i]=temValue+30
        end
--]]
        --self.desContent.rectTransform.sizeDelta = Vector2.New(self.desContent.rectTransform.sizeDelta.x, GetContentHeight(self))-- -self.posYOffset
        --更改Y
        --self.desContent.rectTransform.anchoredPosition = Vector3.New(0,GetSVMovePos(self,self.selectSkillData.level),0)
        --self.desContent.rectTransform.anchoredPosition = Vector3.zero
        --self.desUIScrollRect:SetVerticalScrolling(self.desUIScrollRect.rectTransform.sizeDelta.y < -self.posYOffset -30)
        self.desUIScrollRect:SetVerticalScrolling(false)
    end
end

local function JudgeHaveSkill(self)
    local MyCard= CardData:GetInstance().cards[self.model.cardId]
    if MyCard~=nil then
        if MyCard.wearSkills[self.model.blankPosition]==nil or MyCard.wearSkills[self.model.blankPosition]<=0 then
            --这个位置是没有技能的
            return false
        else
            return true
        end
    else
        Logger.LogError("空卡牌？BUG")
    end
end
local function OnSelectSkillItem(self, _dataIndex)
    if _dataIndex<0 then
        return
    end
    local trans = self.gridUIWrapGroup3D:GetComponentByIndex(_dataIndex)
    if self.model.showType>0 then
        self.selectSkillData = self.model.alreadySortList[self.model.showType][_dataIndex + 1]
    else
        self.selectSkillData = self.model.withoutSortList[_dataIndex + 1]
    end

    if trans ~= nil and self.selectSkillData ~= nil then
        --local EffecBoxTrans=trans.transform:GetChild(0);
        self.selectEffPointUIBaseComponent.gameObject:SetActive(true)
        self.selectEffPointUIBaseComponent.transform:SetParent(trans.transform:GetChild(0):GetChild(3))
        self.selectEffPointUIBaseComponent.rectTransform.anchoredPosition = Vector3.New(0,-3.2,0)


        self.iconUIImage:SetSpriteName(self.selectSkillData.icon)
        self.frameUIImage:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(self.selectSkillData.quality) )
        if self.selectSkillData.showFireType == 2 or self.selectSkillData.crystalCost==0 then
            self.crystalUIImage.gameObject:SetActive(false)
        else
            self.crystalUIImage.gameObject:SetActive(true)
            if self.selectSkillData.cardId>0then
                local info= StaticCardInfo[self.selectSkillData.cardId]
                if info then
                    self.crystalUIImage:SetSpriteName(SpriteDefine:GetCrystalIconByType(info.CrystalType))
                else
                    self.crystalUIImage:SetSpriteName(SpriteDefine:GetCrystalIconByType(0))
                end
            else
                self.crystalUIImage:SetSpriteName(SpriteDefine:GetCrystalIconByType(0))
            end
            self.crystalNumUIText:SetText(tostring(math.floor(self.selectSkillData.crystalCost)))
        end
        if self.selectSkillData.showFireType==2 or self.selectSkillData.showFireType==3 then
            self.fireTypeImg.gameObject:SetActive(true)
            self.fireTypeImg:SetSpriteName(SpriteDefine:GetSkillFireByFireType(self.selectSkillData.showFireType))
        else
            self.fireTypeImg.gameObject:SetActive(false)
        end
        --self.frameUIImage:SetSpriteName(SpriteDefine:GetSkillQualityByType(self.selectSkillData.quality))
        self.nameUIText:SetText(self.selectSkillData.name)
        self.skillTypeUIText:SetText(self.selectSkillData.showFireTypeStr)
        self.levelValueUIText:SetText(tostring(math.floor(self.selectSkillData.level)) .. "/" .. tostring(math.floor(self.selectSkillData.breakLevel)))
        --self.skillDesUIText:SetText(self.selectSkillData.description[self.selectSkillData.level])
        self:UpdateSkillDesContent()
        if self.selectSkillData.cardId == 0 then
            self.leranHero_frame.gameObject:SetActive(false)
            self: SetBtnInfo()
        else
            local cardData = CardData:GetInstance().cards[self.selectSkillData.cardId]
            self.leranHero_frame.gameObject:SetActive(true)
            if cardData ~= nil then
                self: SetBtnInfo()
                self.learnHero_icon:SetSpriteName(cardData.icon)
                self.leranHero_frame:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(cardData.quality) )
            else
                Logger.LogError("没有人学这个技能？"..self.selectSkillData.cardId)
            end
        end
    end
end
local function JudgeSameSkillIdOther(self)
--判断是否和其他位置SkillID 一样
    local MyCard= CardData:GetInstance().cards[self.model.cardId]
    if MyCard~=nil then
        for i = 1, #MyCard.wearSkills do
            if i~=self.model.blankPosition and (MyCard.wearSkills[i]~=nil and MyCard.wearSkills[i]>0) then
                if SkillData:GetInstance().skills[MyCard.wearSkills[i]].templateId==self.selectSkillData.templateId then
                    return true
                end
            end
            -- CardData:GetInstance().cards[self.selectSkillData.cardId]
        end
    else
        Logger.LogError("空卡牌？BUG")
    end
    return false
end
local function JudgeSameSkillId(self)
    --判断是否和当前位置SkillID 一样
    local MyCard= CardData:GetInstance().cards[self.model.cardId]
    if MyCard~=nil then
        for i = 1, #MyCard.wearSkills do
            if i==self.model.blankPosition and (MyCard.wearSkills[i]~=nil and MyCard.wearSkills[i]>0) then
                if SkillData:GetInstance().skills[MyCard.wearSkills[i]].templateId==self.selectSkillData.templateId then
                    return true
                end
            end
            -- CardData:GetInstance().cards[self.selectSkillData.cardId]
        end
    else
        Logger.LogError("空卡牌？BUG")
    end
    return false
end
local function SetBtnInfo(self)
    local blankPositionHaveSkill=self:JudgeHaveSkill()  --这个位置有技能吗
     local TheSameSkillIdOther =self:JudgeSameSkillIdOther() -- 是否和身上的其他位置 的 SkillID 一样
    local TheSameSkillId=self:JudgeSameSkillId()  --和当前位置SkillID一样
    --是否 和身上这个位置 ID 一样
    local TheSameCardID=self.selectSkillData.cardId==self.model.cardId
    if blankPositionHaveSkill then
        --点击位置有技能
        if TheSameSkillIdOther then
            --和身上的其他位置 的 SkillID 一样
            if TheSameCardID then
                --如果和CardID 一样
                self.leftBtn:OnInitBtn("替换",function ()
                    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
                    self:OnLearnBtnClick()
                end )
            else
                self.leftBtn:OnInitBtn("已安装",function ()
                end )
                self.leftBtn:UpdateButtonState(0,"卡牌已拥有此技能")
            end
        else
            if TheSameSkillId and TheSameCardID  then
                --和当前一样
                self.leftBtn:OnInitBtn("卸下",function ()
                    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
                    self.ctrl:SendLearnRequest(true)
                end)
            else
                self.leftBtn:OnInitBtn("替换",function ()
                    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
                    self:OnLearnBtnClick()
                end )
            end
        end
    else
        --点击位置无技能
        if TheSameSkillIdOther then
            --和身上的其他位置 的 SkillID 一样
            if TheSameCardID then
                --如果和CardID 一样
                self.leftBtn:OnInitBtn("安装",function ()
                    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
                    self:OnLearnBtnClick()
                end )
            else
                self.leftBtn:OnInitBtn("已安装",function ()
                end )
                self.leftBtn:UpdateButtonState(0,"卡牌已拥有此技能")
            end
        else
            self.leftBtn:OnInitBtn("安装",function ()
                LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
                self:OnLearnBtnClick()
            end )
        end
    end
end
--新手移动列表
local function GetGuidePosById(self,skillId)
    local list = nil
    if self.model.showType>0 then
        list = self.model.alreadySortList[self.model.showType]
    else
        list = self.model.withoutSortList
    end
    local index = 0
    for i, v in ipairs(list) do
        if v.templateId == skillId then
            index = i-1
            self.gridUIWrapGroup3D:SetGridPositionByIndex(index)
            break
        end
    end
    return index
end

local function OnRefresh(self)
    -- 各组件刷新
    local length=0
    local slectID=0
    if self.model.showType>0 then
        length = #self.model.alreadySortList[self.model.showType]
        if #self.model.alreadySortList[self.model.showType]>0 then
            slectID=self.model.alreadySortList[self.model.showType][1].id
        end
    else
        length = #self.model.withoutSortList
        if length>0 then
            slectID=self.model.withoutSortList[1].id
        end

    end
    if length == 0 then
        self.selectEffPointUIBaseComponent.gameObject:SetActive(false)
        self.gridUIWrapGroup3D:SetLength(0)
        self.HaveObj:SetActive(false)
        --self.EmpObj:SetActive(true)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_SELECT_CAN_LEARN_SKILL_ITEM, -1, slectID)
    else
        self.gridUIWrapGroup3D:SetLength(length)
        self.gridUIWrapGroup3D:SetGridPositionByIndex(0)
        if not self.HaveObj.activeInHierarchy then
            self.HaveObj:SetActive(true)
        end
        --self.EmpObj:SetActive(false)
        DataManager:GetInstance():Broadcast(DataMessageNames.ON_SELECT_CAN_LEARN_SKILL_ITEM, 0, slectID)
    end

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_LEARN_SKILL_ON_SELECT_SKILL, OnSelectSkillItem)
    self:AddUIListener(UIMessageNames.UI_SKILL_REFRESH, self.OnRefresh)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_LEARN_SKILL_ON_SELECT_SKILL, OnSelectSkillItem)
    self:RemoveUIListener(UIMessageNames.UI_SKILL_REFRESH, self.OnRefresh)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UILearnSkillView.OnCreate = OnCreate
UILearnSkillView.OnEnable = OnEnable
UILearnSkillView.OnRefresh = OnRefresh
UILearnSkillView.OnAddListener = OnAddListener
UILearnSkillView.OnRemoveListener = OnRemoveListener
UILearnSkillView.OnDestroy = OnDestroy
UILearnSkillView.UpdateSkillDesContent=UpdateSkillDesContent
UILearnSkillView.GetSVMovePos=GetSVMovePos
UILearnSkillView.GetContentHeight=GetContentHeight
UILearnSkillView.JudgeHaveSkill = JudgeHaveSkill
UILearnSkillView.SetBtnInfo = SetBtnInfo
UILearnSkillView.OnLearnBtnClick = OnLearnBtnClick
UILearnSkillView.JudgeSameSkillIdOther = JudgeSameSkillIdOther
UILearnSkillView.JudgeSameSkillId = JudgeSameSkillId
UILearnSkillView.GetGuidePosById = GetGuidePosById
--UILearnSkillView.OnSelectSkillItem = OnSelectSkillItem
return UILearnSkillView
