
--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UICellSkillPacketView = BaseClass("UICellSkillPacketView", UIBaseView)
local UICellSkillItem = require"UI.UICellSkillPacket.Component.UICellSkillItem"
local CellSkillAwardItem = require "UI.UICellSkillPacket.Component.CellSkillAwardItem"
local ItemData=DataUtil.GetData("item")
local StaticBtn = DataUtil.GetData("skill_exchange_type")
local base = UIBaseView
---技能的状态  1 未激活  2 已激活  3 可激活
local SKILL_NO_ACTIVE_STATE
local SKILL_HAS_ACTIVE_STATE
local SKILL_HAVE_ACTIVE_STATE
local ResourceBarComponentManager=require("UI.UIResourceBar.ResourceBarComponentManager");



--设置按钮的父物体
local function SetBtnParent(self,child,parent)
	child.transform:SetParent(parent)
	child.localScale=Vector3.New(1,1,1)
	child.anchoredPosition=Vector2.New(0,0)
	--child:SetAsFirstSibling()
	child.gameObject:SetActive(true)
end

--根据技能效果类型筛选 1-攻击，2-防守，3-资源，4-增幅
local function FilterByType(self, _filterType,text)
    if not self.first then
        self.ClickID=nil
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    end
    if self.wrap_can_btn then
        UISpecial:GetInstance():UITipText("操作频繁")
        return
    end
    if _filterType>0 and #self.model.alreadySortList[_filterType]==0 then
        UISpecial:GetInstance():UITipText("没有该类型技能")
        return
    end
    SetBtnParent(self,self.select_img,self.BtnGroup[_filterType].Btn.transform)
    self.select_text:SetText(text)
    self.type = _filterType
    if _filterType==0 then
        self.skillList=self.model.skillCellData
    else
        self.skillList=self.model.alreadySortList[self.type]
    end
    self:UpdateSkillItem(1)
end
local function OnCreate(self)
	base.OnCreate(self)
	-- 初始化各个组件
    SKILL_NO_ACTIVE_STATE = 1
    SKILL_HAS_ACTIVE_STATE = 2
    SKILL_HAVE_ACTIVE_STATE = 3
    ---右侧技能数据信息
    ---
    ---


    self.TitleBar=UIUtil.FindTrans(self.transform,"TopLeft")
    UIUtil.CreatCloseBtnComponent(self,self.TitleBar.transform,function(go) self.closeComponent=go end,function()
       self.ctrl:CloseSelf()
    end,function ()
        self.backMainCityAnim:Play("ef_ui_UI Generic board back")
        LJAudioManger:GetInstance():PlayVoice("UI_Brush_03")
        TimerManager:GetInstance():SimpleTimerArgs(0.5,function()
            UIUtil.BackHomeMain()
        end,nil,true)
    end ,"武灵技背包",false,0,true)
    self.cardInfo = UIUtil.FindTrans(self.transform,"right panel/include r/Bg/Image (2)/cardBg")
	self.skillFromUIImg = self:AddComponent(UIImage, "right panel/include r/Bg/Image (2)/SkillFrom_UIImg",AtlasConfig.DynamicTex)
    
	self.skillIconUIImg = self:AddComponent(UIImage, "right panel/include r/Bg/Image (2)/SkillIcon_UIImg",AtlasConfig.DynamicTex)
    
	self.skillTypeChase = self:AddComponent(UIImage,"right panel/include r/Bg/Image (2)/SkillType_Chase",AtlasConfig.Language)
    
	self.costIcon = self:AddComponent(UIImage, "right panel/include r/Bg/Image (2)/Crystal/Cost_Icon",AtlasConfig.DynamicTex)
    
	self.costNum = self:AddComponent(UIText, "right panel/include r/Bg/Image (2)/Crystal/Cost_Num")
    
	self.skillNameUIText = self:AddComponent(UIText, "right panel/include r/Bg/Image (2)/skillName_UIText")
    --self.breakTips = self:AddComponent(UIText,"right panel/include r/Bg/Image (2)/breakTips")
	self.skilLevelUIText = self:AddComponent(UIText, "right panel/include r/Bg/Image (2)/skilLevel_UIText")
    self.award_group=self:AddComponent(UIBaseContainer,"right panel/include r/Bg/Image (2)/ItemGroup")
    local awardCount=self.award_group.transform.childCount
    self.awardPrbList={}
    for i = 0, awardCount-1 do
        local singleTrans=self.award_group.transform:GetChild(i)
        local pass=CellSkillAwardItem.New(self,singleTrans.gameObject)
        pass:OnCreate()
        table.insert(self.awardPrbList,pass)
    end
	self.cardFrameUIImage = self:AddComponent(UIImage, "right panel/include r/Bg/Image (2)/cardBg/cardFrame_UIImage",AtlasConfig.DynamicTex)
    self.CommonBtnImg = self:AddComponent(UIImage,"right panel/include r/Bg/Image (2)/CommonBtn")
    self.CommonBtn = self:AddComponent(UIButton,"right panel/include r/Bg/Image (2)/CommonBtn")
    self.CommonBtn:SetOnClick(function ()
        if self.skillData.isActivate == SKILL_HAVE_ACTIVE_STATE then
           self.ctrl:SendExchangeLevelRequest(self.skillData)
        elseif self.skillData.isActivate == SKILL_HAS_ACTIVE_STATE then
            if self.skillData.level < self.skillData.breakLevel then
                if self.take_num>self.expNum then
                    UIManager:GetInstance():OpenWindow(UIWindowNames.UIGetSkillExp)
                    return
                end
                self.ctrl:SendUpLevelRequest(self.skillData)
            elseif self.skillData.level == self.skillData.breakLevel and self.skillData.level < self.skillData.maxLevel then
                --local skillData=SkillData:GetInstance().skills[self.skillData.id]
                self.ctrl:OpenSkillBreakThroughWindow(self.skillData)
            else
               UISpecial:GetInstance():UITipText("等级已满~")
            end
        end
    end)
    self.gray = self.CommonBtnImg:GetMat()
    self.btnName = self:AddComponent(UIText,"right panel/include r/Bg/Image (2)/CommonBtn/name")
    self.tipText = self:AddComponent(UIText,"right panel/include r/Bg/Image (2)/CommonBtn/tip")
    self.takeIcon = self:AddComponent(UIImage,"right panel/include r/Bg/Image (2)/CommonBtn/costparent/costIcon",AtlasConfig.DynamicTex)
    self.takeNum = self:AddComponent(UIText,"right panel/include r/Bg/Image (2)/CommonBtn/costparent/costNum")
	self.cardIconUIImage = self:AddComponent(UIImage, "right panel/include r/Bg/Image (2)/cardBg/cardIcon_UIImage",AtlasConfig.DynamicTex)
    self.bg2Text = self:AddComponent(UIText,"right panel/include r/Bg/Image (2)/haveSkill/bg2/bg2Text")
    self.bg3Text = self:AddComponent(UIText,"right panel/include r/Bg/Image (2)/haveSkill/bg3/bg3Text")
    self.costparent = UIUtil.FindTrans(self.transform,"right panel/include r/Bg/Image (2)/CommonBtn/costparent")
	self.skill_scroll_view_content = self:AddComponent(UIWrapGroup3D, "left panel/include l/ScrollView/grid_UIWrapGroup3D",UICellSkillItem)
    self.skillGridObj=self:AddComponent(UIBaseContainer,"left panel/include l/ScrollView/grid_UIWrapGroup3D")
    self.skill_scroll=self:AddComponent(UIScrollRect,"left panel/include l/ScrollView")

    ---右侧的页签按
    self.scrollBtn=self:AddComponent(UIScrollRect,"rightBtnPanel/Scroll View")
    self.BtnGroup={}
    self.all_btn = self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/AllBtn")
    self.all_btn_text=self:AddComponent(UIText,"rightBtnPanel/Scroll View/GameObject/AllBtn/allText")
    table.insert(self.BtnGroup,{Btn=self.all_btn,Text=self.all_btn_text,Type=0})
    self.attack_btn = self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/MaterialsBtn")
    self.attack_btn_text=self:AddComponent(UIText,"rightBtnPanel/Scroll View/GameObject/MaterialsBtn/MaterialsText")
    table.insert(self.BtnGroup,{Btn=self.attack_btn,Text=self.attack_btn_text,Type=0})
    self.defence_btn = self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/DebrisForPeoBtn")
    self.defence_btn_text=self:AddComponent(UIText,"rightBtnPanel/Scroll View/GameObject/DebrisForPeoBtn/DebrisForPeoText")
    table.insert(self.BtnGroup,{Btn=self.defence_btn,Text=self.defence_btn_text,Type=0})
    self.resource_btn = self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/DebrisForMonBtn")
    self.resource_btn_text=self:AddComponent(UIText,"rightBtnPanel/Scroll View/GameObject/DebrisForMonBtn/DebrisForMonText")
    table.insert(self.BtnGroup,{Btn=self.resource_btn,Text=self.resource_btn_text,Type=0})
    self.buff_btn = self:AddComponent(UIButton,"rightBtnPanel/Scroll View/GameObject/ConsumeBtn")
    self.buff_btn_text = self:AddComponent(UIText,"rightBtnPanel/Scroll View/GameObject/ConsumeBtn/ConsumText")
    table.insert(self.BtnGroup,{Btn=self.buff_btn,Text=self.buff_btn_text,Type=0})
    local Btn_Num=#StaticBtn
    for i = 1, #self.BtnGroup do
        if i<=Btn_Num  then
            self.BtnGroup[i].Btn.gameObject:SetActive(true)
            self.BtnGroup[i].Text:SetText(StaticBtn[i].TagName)
            self.BtnGroup[i].Type=StaticBtn[i].Type
            self.BtnGroup[i].Tag = StaticBtn[i].TagName
            self.BtnGroup[i].Btn:SetOnClick(self,FilterByType,self.BtnGroup[i].Type,self.BtnGroup[i].Tag)
        else
            self.BtnGroup[i].Btn.gameObject:SetActive(false)
        end
    end

    self.scrollBtn:SetVerticalScrolling( Btn_Num>3)
    self.Img1Obj=UIUtil.FindTrans(self.transform,"rightBtnPanel/Scroll View/GameObject/Image")
    self.Img2Obj=UIUtil.FindTrans(self.transform,"rightBtnPanel/Scroll View/GameObject/Image1")
    self.Img3Obj=UIUtil.FindTrans(self.transform,"rightBtnPanel/Scroll View/GameObject/Image2")
    self.Img4Obj=UIUtil.FindTrans(self.transform,"rightBtnPanel/Scroll View/GameObject/Image3")
    self.LineGroup={self.Img1Obj,self.Img2Obj,self.Img3Obj,self.Img4Obj}
    for i = 1, Btn_Num do
        self.LineGroup[i].gameObject:SetActive(true)
    end
    for i =  Btn_Num+1,#self.LineGroup do
        self.LineGroup[i].gameObject:SetActive(false)
    end
    if Btn_Num>3 then

    end
	self.select_img = UIUtil.FindTrans(self.transform,"rightBtnPanel/SelectBtn")
	self.select_text = self:AddComponent(UIText,"rightBtnPanel/SelectBtn/SelectText")
	self.selectObj = UIUtil.FindTrans(self.transform,"left panel/include l/selectObj")
    self.NowLvObj = UIUtil.FindTrans(self.transform,"right panel/include r/Bg/Image (2)/NowLvObj")
    self.nowLvText = self:AddComponent(UIText,"right panel/include r/Bg/Image (2)/NowLvObj/nowScrollRect/NowLvText")
    self.NextLvObj = UIUtil.FindTrans(self.transform,"right panel/include r/Bg/Image (2)/NextLvObj")
    self.nextLvText = self:AddComponent(UIText,"right panel/include r/Bg/Image (2)/NextLvObj/nextScrollRect/NextLvText")
    ---资源条相关
	self.resourceBarParent=UIUtil.FindTrans(self.transform,"resourceBarParent")
	ResourceBarComponentManager:GetInstance():CreatResourceBarComponent(self.resourceBarParent,UIWindowNames.UICellSkillPacket,ResourceBarType.SKIL_BAGPACK,self)
    self.backMainCityAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"")
    self.infoBgAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"right panel/include r/Bg/Image (2)/bg1")
    self.infoTextAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"right panel/include r/Bg/Image (2)/bg1/Text")
    self.nowEffectBgAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"right panel/include r/Bg/Image (2)/haveSkill/bg2")
    self.nowEffectTextAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"right panel/include r/Bg/Image (2)/haveSkill/bg2/bg2Text")
    self.lvUpBgAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"right panel/include r/Bg/Image (2)/haveSkill/bg3")
    self.lvUpTextAnim = UIUtil.FindComponent(self.transform,typeof(CS.UnityEngine.Animator),"right panel/include r/Bg/Image (2)/haveSkill/bg3/bg3Text")
end

--设置左侧技能列表的物品显示
local function SetItemUpdateShow(self)
    --WrapScrollView BalaBala下来
    self.skill_scroll_view_content:SetComponentItemActive(false)
    self.skill_scroll:SetVerticalScrolling(false)

    coroutine.start(function ()
        self.wrap_can_btn=true
     for i = 0, #self.skillList - 1 do
       self.skill_scroll_view_content:SetComponentItemActive(true,i)
       coroutine.waitforseconds(0.01)
      end
        self.skill_scroll:SetVerticalScrolling(true)
      coroutine.yieldbreak()
        self.wrap_can_btn=false
        if GuideGroup:GetInstance().Runing  then
            DataManager:GetInstance():Broadcast(DataMessageNames.UI_Guide_NeedEvent)
        end
    end)

    self.infoBgAnim:Rebind()
    self.infoBgAnim:Play("ef_ui_generic_switchpage_bar")
    self.infoTextAnim:Rebind()
    self.infoTextAnim:Play("ef_ui_generic_switchpage_text")
    TimerManager:GetInstance():SimpleTimerArgs(0.1,function()
        self.nowEffectBgAnim:Rebind()
        self.nowEffectBgAnim:Play("ef_ui_generic_switchpage_bar")
        self.nowEffectTextAnim:Rebind()
        self.nowEffectTextAnim:Play("ef_ui_generic_switchpage_text")
    end,nil,true)
    TimerManager:GetInstance():SimpleTimerArgs(0.2,function()
        self.lvUpBgAnim:Rebind()
        self.lvUpBgAnim:Play("ef_ui_generic_switchpage_bar")
        self.lvUpTextAnim:Rebind()
        self.lvUpTextAnim:Play("ef_ui_generic_switchpage_text")
    end,nil,true)
    self.skill_scroll_view_content:WrapContent(true)
end

--新手专用方法  为了移动到物品位置
local function GetGuidePosById(self,skillId)
    local index = 0
    for i, v in ipairs(self.skillList) do
        if v.id == skillId then
            index = i-1
            self.skill_scroll_view_content:SetGridPositionByIndex(index)
            break
        end
    end
    return index
end

local function JudegHaveSkillID(self)
        local num=#self.skillList
        local haveClickSkill=false
        for i = 1,num  do
            if  self.ClickID == self.skillList[i].id then
                haveClickSkill=true
                break
            end
        end
        return haveClickSkill
end

--根据类型不同生成对应的技能列表
local function UpdateSkillItem(self,type,isUpdate)
	if self.skillList~=nil or #self.skillList ~=0 then
		self.skill_scroll_view_content:SetLength(table.count(self.skillList))
        if self.ClickID~=nil and not self:JudegHaveSkillID() then
            self.ClickID=nil
        end
        local Count=#self.skillList
        for i = 1, Count do
            if  self.ClickID ==nil then
                self.skill_scroll_view_content:SetGridPositionByIndex(0)
                local trans = self.skill_scroll_view_content:GetComponentByIndex(0)
                if trans == nil then
                    self.selectObj.gameObject:SetActive(false)
                    self:SetData(self.skillList[1])
                    return
                end
                self:SetRightPanelData(trans.transform:GetChild(0):GetChild(2),self.skillList[1])
                break
            else
                if  self.ClickID == self.skillList[i].id then
                    local trans = self.skill_scroll_view_content:GetComponentByIndex(i-1)
                    if trans == nil then
                        self.selectObj.gameObject:SetActive(false)
                        self:SetData(self.skillList[i])
                        if type==1 then
                            --激活
                            self:OpenEffect(true)
                            if i>12 then
                                self.skill_scroll_view_content:SetGridPositionByIndex(i-1)
                            else
                                self.skill_scroll_view_content:SetGridPositionByIndex(0)
                            end
                        elseif type==2 or type==3 then
                            --升级突破
                            self:OpenEffect(true)
                            self.skill_scroll_view_content:WrapContent(true)
                        end
                        return
                    end
                    self:SetRightPanelData(trans.transform:GetChild(0):GetChild(2),self.skillList[i])
                    if type==1 then
                        --激活s
                        if i>12 then
                            self.skill_scroll_view_content:SetGridPositionByIndex(i-1)
                        else
                            self.skill_scroll_view_content:SetGridPositionByIndex(0)
                        end
                        self:OpenEffect(true)
                    elseif type==2 or type==3 then
                        self.skill_scroll_view_content:WrapContent(true)
                        self:OpenEffect(true)
                        --升级突破
                    end
                   break
                end
            end
        end
	else
		self.skill_scroll_view_content:SetLength(0)
	end
    if isUpdate == nil then
        SetItemUpdateShow(self)
    end

end

local function OpenEffect(self,canOpen)
    if not canOpen then
        if self.base_eff~=nil and self.base_eff.effect.gameObject then
            self.base_eff.effect.gameObject:SetActive(false)
        end
        if self.up_eff~=nil and self.up_eff.effect.gameObject then
            self.up_eff.effect.gameObject:SetActive(false)
        end
        if self.skill_eff~=nil and self.skill_eff.effect.gameObject then
            self.skill_eff.effect.gameObject:SetActive(false)
        end
    else
        LJAudioManger:GetInstance():PlayVoice("UI_LevelUp_01")
        if self.base_eff~=nil then
            self.base_eff.effect.gameObject:SetActive(false)
            self.base_eff.effect.gameObject:SetActive(true)
        else
            self.base_eff = self:AddComponent(UIEffect, "right panel/include r/Bg/Image (2)/haveSkill/bg2/bg2 (1)", 1, EffectConfig.UICellSkillBackEffectShow_Normal)
        end
        if self.up_eff~=nil then
            self.up_eff.effect.gameObject:SetActive(false)
            self.up_eff.effect.gameObject:SetActive(true)
        else
            self.up_eff = self:AddComponent(UIEffect, "right panel/include r/Bg/Image (2)/haveSkill/bg3/bg3 (1)", 1, EffectConfig.UICellSkillBackEffectShow_Normal)
        end
        if self.skill_eff~=nil then
            self.skill_eff.effect.gameObject:SetActive(false)
            self.skill_eff.effect.gameObject:SetActive(true)
        else
            self.skill_eff = self:AddComponent(UIEffect, "right panel/include r/Bg/Image (2)/SkillIcon_UIImg", 1, EffectConfig.UICardIconShow)
        end
    end
end
---设置界面的显示隐藏
local function SetUIActive(self,item_list)
	if item_list==nil or table.count(item_list)==0 then
		self.selectObj.gameObject:SetActive(false)
	else
		self.selectObj.gameObject:SetActive(true)
	end
end

local function SetData(self,single_skill_data)
    self.skillData = single_skill_data
    self.skillFromUIImg:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(single_skill_data.quality))
    self.skillIconUIImg:SetSpriteName(single_skill_data.icon)
    self.skillNameUIText:SetText(single_skill_data.name)
    self.skilLevelUIText:SetText("等级: "..single_skill_data.levelInfo)
    if single_skill_data.crystalCost == 0 then
        self.costNum.gameObject:SetActive(false)
        self.costIcon.gameObject:SetActive(false)
    else
        self.costNum.gameObject:SetActive(true)
        self.costIcon.gameObject:SetActive(true)
        self.costNum:SetText(math.floor(single_skill_data.crystalCost))
    end

    if single_skill_data.showFireType == 1 or single_skill_data.showFireType == 4 then ---主動技能
    self.skillTypeChase.gameObject:SetActive(false)
    elseif single_skill_data.showFireType == 2 then  --- 被動技能
    self.skillTypeChase.gameObject:SetActive(true)
        self.skillTypeChase:SetSpriteName("ui_dtex_Quality_039")
    elseif single_skill_data.showFireType == 3 then --- 連擊技能
    self.skillTypeChase.gameObject:SetActive(true)
        self.skillTypeChase:SetSpriteName("ui_dtex_Quality_040")
    end
    self.nowLvText.rectTransform.anchoredPosition=Vector3.zero
    self.nowLvText:SetText(DataUtil.GetSkillDesByIdAndLevel(single_skill_data.templateId,1,1))
    if single_skill_data.isActivate ~= SKILL_HAS_ACTIVE_STATE then
        self.award_group.gameObject:SetActive(true)
        self.NextLvObj.gameObject:SetActive(false)
        --self.breakTips.gameObject:SetActive(false)
        if single_skill_data.items ~=nil and #single_skill_data.items > 0 then
            for i, v in ipairs(self.awardPrbList) do
                if single_skill_data.items[i] ~= nil then
                    v.gameObject:SetActive(true)
                    v:Refresh(single_skill_data.items[i])
                else
                    v.gameObject:SetActive(false)
                end
            end
        end
        self.cardInfo.gameObject:SetActive(false)
        self.bg3Text:SetText("激活需要")
        self.bg2Text:SetText("武灵技效果")
        self.btnName:SetText("激 活")
        self.costparent.gameObject:SetActive(false)
        if single_skill_data.isActivate == SKILL_NO_ACTIVE_STATE then  --未激活
            self.CommonBtnImg:SetMat(self.gray)
            self.CommonBtn.enabled=false
            self.tipText.gameObject:SetActive(true)
        else
            self.CommonBtnImg:SetMat(nil)
            self.CommonBtn.enabled=true
            self.tipText.gameObject:SetActive(false)
        end
    elseif single_skill_data.isActivate == SKILL_HAS_ACTIVE_STATE then --已激活
        self.bg3Text:SetText("升级效果")
        self.bg2Text:SetText("当前效果")
        self.tipText.gameObject:SetActive(false)
        if single_skill_data.cost and #single_skill_data.cost > 0 then
            self.takeIcon:SetSpriteName( ItemData[single_skill_data.cost[1].Id].Icon)
            self.take_id = single_skill_data.cost[1].Id
            self.take_num=single_skill_data.cost[1].Val
             self.expNum = BackpackData:GetInstance():GetItemNumById(1401005)
            if self.skillData.level < self.skillData.breakLevel then
                if self.take_num>self.expNum then
                    self.CommonBtnImg:SetMat(self.gray)
                    self.CommonBtn.enabled=true
                    self.tipText:SetText("技能经验不足")
                    self.tipText.gameObject:SetActive(true)
                    self.takeNum:SetText("<color=#B33A3A>"..math.floor(self.take_num).."</color>")
                else
                    self.CommonBtnImg:SetMat(nil)
                    self.CommonBtn.enabled=true
                    self.tipText.gameObject:SetActive(false)
                    self.takeNum:SetText(math.floor(self.take_num))
                end
            end

            --self.skillData.skillExp = math.floor(self.take_num)
        end
        if single_skill_data.level < single_skill_data.breakLevel then
            self.btnName:SetText("升 级")
            self.NextLvObj.gameObject:SetActive(true)
            --self.breakTips.gameObject:SetActive(false)
            self.costparent.gameObject:SetActive(true)
        elseif single_skill_data.level == single_skill_data.breakLevel and single_skill_data.level < single_skill_data.maxLevel then
            self.btnName:SetText("突 破")
            self.bg3Text:SetText("突破效果 (等级上限"..single_skill_data.level.."→"..single_skill_data.nextBreakLv..")")
            self.CommonBtnImg:SetMat(nil)
            self.CommonBtn.enabled=true
            --self.breakTips.gameObject:SetActive(true)
            self.NextLvObj.gameObject:SetActive(true)
            --self.breakTips:SetText("等级上限:"..single_skill_data.level.."        →        "..single_skill_data.nextBreakLv)
            self.costparent.gameObject:SetActive(false)
        else
            self.costparent.gameObject:SetActive(false)
            self.NextLvObj.gameObject:SetActive(false)
            --self.breakTips.gameObject:SetActive(false)
            self.NextLvObj.gameObject:SetActive(false)
            self.btnName:SetText("等级已满")
            self.bg3Text:SetText("已满级")
        end

        self.award_group.gameObject:SetActive(false)
        self.nowLvText:SetText(DataUtil.GetSkillDesByIdAndLevel(single_skill_data.templateId,single_skill_data.level,single_skill_data.breakTimes))
        if single_skill_data.level==single_skill_data.breakLevel then
            self.nextLvText:SetText(DataUtil.GetSkillDesByIdAndLevel(single_skill_data.templateId,single_skill_data.level,single_skill_data.breakTimes+1))
        else
            self.nextLvText:SetText(DataUtil.GetSkillDesByIdAndLevel(single_skill_data.templateId,single_skill_data.level + 1,single_skill_data.breakTimes))
        end

        if single_skill_data.cardId ~= nil and single_skill_data.cardId ~= 0 then
            self.costIcon:SetSpriteName(SpriteDefine:GetCrystalIconByType(single_skill_data.skillCrystalIcon))
            self.cardInfo.gameObject:SetActive(true)
            self.cardFrameUIImage:SetSpriteName(single_skill_data.heroCardFrame)
            self.cardIconUIImage:SetSpriteName(single_skill_data.heroCardIcon)
        else
            self.cardInfo.gameObject:SetActive(false)
            self.costIcon:SetSpriteName("ui_dtex_Quality_041")
        end
    end
end
---设置右侧技能数据
local function SetRightPanelData(self,my_trans,single_skill_data)
    self.skillData = single_skill_data
    self.ClickID=single_skill_data.id
    if my_trans == nil or single_skill_data == nil then
        return
    end
    SetBtnParent(self,self.selectObj.transform,my_trans)
    self:SetData(single_skill_data)
end

local function UpdateValue(self)
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_CELL_SKILL_ACTIVE_UPDATE,self.skillData.id,1)
end
---刷新数据
local function UpdateData(self,skillUid,type)
    if self.type == 0 then
        self.skillList=self.model.skillCellData
    else
        self.skillList=self.model.alreadySortList[self.type]
    end
    if skillUid ~= nil then
        self.ClickID = skillUid
    end
    self:UpdateSkillItem(type,true)
end


local function OnEnable(self)
	base.OnEnable(self)
    self.first=true
    self.child_count= self.skill_scroll_view_content.transform.childCount
    self.ClickID=self.model.skillID
    local index = self.model.skillEffectType
    FilterByType(self,self.BtnGroup[index].Type,self.BtnGroup[index].Tag)
    self:OpenEffect(false)
    self.first=false
    LJAudioManger:GetInstance():PlayVoice("UI_Brush_04")
end

local function OnRefresh(self)

end

local function OnAddListener(self)
	base.OnAddListener(self)
	-- UI消息注册
    self:AddUIListener(UIMessageNames.UI_Guide_UpdateUIEvent,UpdateValue)
    self:AddUIListener(UIMessageNames.UI_CELL_SKILL_UPDATE, UpdateData)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_CELL_SKILL_UPDATE, UpdateData)
    self:RemoveUIListener(UIMessageNames.UI_Guide_UpdateUIEvent,UpdateValue)
end

local function OnDestroy(self)
	-- 销毁
	base.OnDestroy(self)
	ResourceBarComponentManager:GetInstance():DestroyResourceBar(UIWindowNames.UICellSkillPacket)
    if self.closeComponent~=nil or not IsNull(self.closeComponent) then
        self.closeComponent:RecyleSelf();
    end
end

UICellSkillPacketView.SetUIActive = SetUIActive
UICellSkillPacketView.OnCreate = OnCreate
UICellSkillPacketView.OnEnable = OnEnable
UICellSkillPacketView.OnRefresh = OnRefresh
UICellSkillPacketView.OnAddListener = OnAddListener
UICellSkillPacketView.OnRemoveListener = OnRemoveListener
UICellSkillPacketView.OnDestroy = OnDestroy
UICellSkillPacketView.UpdateSkillItem = UpdateSkillItem
UICellSkillPacketView.SetRightPanelData = SetRightPanelData
UICellSkillPacketView.SetData= SetData
UICellSkillPacketView.UpdateValue= UpdateValue
UICellSkillPacketView.OpenEffect = OpenEffect
UICellSkillPacketView.GetGuidePosById = GetGuidePosById
UICellSkillPacketView.JudegHaveSkillID = JudegHaveSkillID
return UICellSkillPacketView
