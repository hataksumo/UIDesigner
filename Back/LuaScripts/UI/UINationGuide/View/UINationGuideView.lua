--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationGuideView = BaseClass("UINationGuideView", UIBaseView)
local base = UIBaseView

local TALKING_TYPE = {
    NOT_NEED = -1, -- 不需要文本框
    HAVE_HEAD = 1, -- 需要头像文本框
    NONE_HEAD = 2, -- 不需要头像
}

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    local rectTrans = UIUtil.FindComponent(self.transform.parent, typeof(CS.UnityEngine.RectTransform))
    self.screen_width = rectTrans.sizeDelta.x
    self.screen_height = rectTrans.sizeDelta.y
    -- 错误的准星
    self.error_tip_two = UIUtil.FindTrans(self.transform, "fx_ui_guide_circletip")
    -- 错误的文字
    self.error_tip = self:AddComponent(UIText, "ErrorTip")

    self.noneHaveIconContentUIText = self:AddComponent(UIText, "Image/Content_UIText1")
    self.hasIconContentUIText = self:AddComponent(UIText, "Image/Content_UIText2")

    self.talk_spriteRootUIImage = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), "Image")

    self.talk_head = self:AddComponent(UIImage, "Image/HeadFrame/Head", AtlasConfig.DynamicTex)
    self.talk_head_game = UIUtil.FindTrans(self.transform, "Image/HeadFrame").gameObject
    self.talk_dir = UIUtil.FindTrans(self.transform, "Image/Dir").gameObject
    self.talk_dir_child = { UIUtil.FindTrans(self.transform, "Image/Dir/RightDown").gameObject, UIUtil.FindTrans(self.transform, "Image/Dir/LeftDown").gameObject,
                            UIUtil.FindTrans(self.transform, "Image/Dir/LeftUp").gameObject, UIUtil.FindTrans(self.transform, "Image/Dir/RightUp").gameObject }

    -- 点击屏幕任意位置继续文字
    self.ClickBgTip = UIUtil.FindTrans(self.transform, "ClickBGTip").gameObject

    local TopBgBtn = self:AddComponent(UIButton, "BG/TopImg")
    local LeftBgBtn = self:AddComponent(UIButton, "BG/LeftImg")
    local ButtoBgBtn = self:AddComponent(UIButton, "BG/ButtoImg")
    local RightBtn = self:AddComponent(UIButton, "BG/RightImg")
    self.fourBorderButtonList = { TopBgBtn, LeftBgBtn, ButtoBgBtn, RightBtn }
    local TopBgImg = self:AddComponent(UIImage, "BG/TopImg")
    local LeftBgImg = self:AddComponent(UIImage, "BG/LeftImg")
    local ButtoBgImg = self:AddComponent(UIImage, "BG/ButtoImg")
    local RightImg = self:AddComponent(UIImage, "BG/RightImg")
    self.fourBorderImageList = { TopBgImg, ButtoBgImg, LeftBgImg, RightImg }
    for i = 1, #self.fourBorderButtonList do
        self.fourBorderButtonList[i]:SetOnClick(self, self.__OnFourBorderBgClick)
        self.fourBorderImageList[i]:SetColor32(255, 255, 255, 200)
    end

    self.click_boxRect = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), "Box");
    self.click_box = self:AddComponent(UIButton, "Box")
    self.click_boxImg = self:AddComponent(UIImage, "Box")
    self.click_box:SetOnClick(self, self.ClickEvent)

    self.click_figerRect = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), "ef_ui_start_Yindao");
    self.guidebg = UIUtil.FindTrans(self.transform, "ImageGuide").gameObject;

    self.shouzhiRootTran = UIUtil.FindTrans(self.transform, "ef_ui_start_Yindao")
    self.txhand = UIUtil.FindTrans(self.transform, "ef_ui_start_Yindao/hand")
    self.shouzhiRing = UIUtil.FindTrans(self.transform, "ef_ui_start_Yindao/ring").gameObject;
    self.shouzhiGrow = UIUtil.FindTrans(self.transform, "ef_ui_start_Yindao/glow").gameObject;
    self.txhandAnimator = self.txhand:GetComponent(typeof(CS.UnityEngine.Animator))

    self.CurLayer = 700
    self.OffLocal = Vector3.New(-10, 45, 1)
    self.CurrenMoveX = 150
    self.click_boxImg:SetAlphaVal(0)

    self.guideUITargetData = nil -- 引导目标数据

end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    self.guideUITargetData = nil -- 引导目标数据
end

local function OnEnable(self)
    base.OnEnable(self)
    self.click_box.gameObject:SetActive(false)
    self:SetGuide()
end

local function OnDisable(self)
    base.OnDisable(self)

    if self.pos_move_tweener ~= nil then
        LuaTweener.StopTweener(self.pos_move_tweener)
        self.pos_move_tweener = nil
    end

    if self.rightAnim ~= nil then
        LuaTweener.StopTweener(self.rightAnim)
        self.rightAnim = nil
    end

    --self.click_box.gameObject:SetActive(true)
    self.guideUITargetData = nil -- 引导目标数据

    self:ClearLoadGame()
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_GUIDE_NEXT, self.GoOnGuide)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_GUIDE_NEXT, self.GoOnGuide)
end

local function __GetNationTownIdByGuideDataItem(self, GuideDataItem)
    local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
    if nationProxy == nil then
        return nil
    end
    local cellId = nil
    if GuideDataItem.ClickTagParamType == GuideDefine.GUIDE_SHEET_ClickTagParamType.ON_CLICK_SELF_TOWN then
        cellId = NationPlayerData:GetInstance().bornTown
    else
        cellId = NationDefine.NATION_GUIDE_PARAM.BRON_TOWN_2_NEARBY[NationPlayerData:GetInstance().bornTown]
    end
    if cellId == nil then
        return nil
    end
    return cellId
end

local function __SetNationFingerUIWithGuideDataItem(self, GuideDataItem)
    local cellId = self:__GetNationTownIdByGuideDataItem(GuideDataItem)
    if cellId == nil then
        return
    end
    local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
    local worldPosition = nationProxy:GetWorldPositionByMapCellId(cellId)
    self.guideUITargetData.worldPosition = worldPosition

    local boxSizeVector2 = nil
    --点击 设置点击区域
    if GuideDataItem.BoxSizeX ~= 0 or GuideDataItem.BoxSizeY ~= 0 then
        boxSizeVector2 = Vector2.New(GuideDataItem.BoxSizeX, GuideDataItem.BoxSizeY)
    else
        boxSizeVector2 = self.guideUITargetData.mTargetTran.sizeDelta
    end

    local pos = self:__GetUIPosWithWorldPos(worldPosition)
    pos = Vector3.New(pos.x + self.GuideDataItem.MoveX, pos.y + self.GuideDataItem.MoveY, 0)
    Logger.LogErrorVars("__SetNationFingerUIWithGuideDataItem boxSizeVector2 : ", boxSizeVector2)
    self.click_boxRect.sizeDelta = boxSizeVector2
    self.click_boxRect.anchoredPosition3D = pos
    self.click_box.eulerAngles = Vector3.zero
    self.click_box.transform.localScale = Vector3.one
    self.click_box.gameObject:SetActive(true)
    self:__SetFourBGImageListStyle(true, true, pos, boxSizeVector2)
end

local function __OnInitGUIDE_SHEET_HandleTypeASSIGN_UI_BORDER(self)
    --点击UI
    if self.GuideDataItem.ClickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_UI then
        self:__GetUITargetWithGuideData(self.GuideDataItem)
        self:SetUIClickWithTarget()
    elseif self.GuideDataItem.ClickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_3D_OBJ then
        self:__GetUITargetWithGuideData(self.GuideDataItem)
        self:Set3DUIClickWithTarget()
    elseif self.GuideDataItem.ClickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_SPEC_REWARD then

    else
        self:SetUIClickWithTarget()
        self:__SetFingerAnimShowGuide()
    end
end

local function __SetFingerAnimShowGuide(self)
    --显示手指动画  一般是点击事件
    if self.GuideDataItem.ShowFiger then
        self.shouzhiRootTran.gameObject:SetActive(true)
        self.click_box:SetInteractable(false)
        local figer_pos = Vector3.New(self.click_box.transform.localPosition.x + self.click_figerRect.sizeDelta.x / 2, self.click_box.transform.localPosition.y - self.click_figerRect.sizeDelta.y / 2, 0)
        if self.click_boxRect.sizeDelta.x >= self.screen_width and self.click_boxRect.sizeDelta.y >= self.screen_height then
            figer_pos = Vector3.zero
        end
        local figer_beginpos = nil
        if self.GuideDataItem.ShowBeginPos then
            figer_beginpos = Vector3.zero
        else
            figer_beginpos = self.shouzhiRootTran.gameObject.transform.localPosition
        end
        self.rightAnim = LuaTweener.UIMoveTo(self.shouzhiRootTran.gameObject.transform, figer_beginpos, figer_pos, 0.5, EaseFormula.OutQuad, function()
            self.shouzhiRootTran.gameObject.transform.localPosition = figer_pos
            self:FigerAniRepeat()
            self:__SetTalkPos(self.GuideDataItem.TalkX, self.GuideDataItem.TalkY)
            self.click_box:SetInteractable(true)
            self.rightAnim = nil
        end)
    else
        self.shouzhiRootTran.gameObject:SetActive(false)
    end
end

local function __SetContentTalkWithData(self, GuideDataItem)
    if not string.isNilOrEmpty(GuideDataItem.Desc) then
        local width = UIUtil.GetTextWidth(self.noneHaveIconContentUIText.unity_uitext, GuideDataItem.Desc)
        if GuideDataItem.TalkIcon ~= nil then
            self.talk_head_game:SetActive(true)
            self.talk_head:SetSpriteName(self.GuideDataItem.TalkIcon)
            self.hasIconContentUIText.gameObject:SetActive(true)
            self.noneHaveIconContentUIText.gameObject:SetActive(false)
            self.talk_dir:SetActive(false)
            self.talkwidth = 693
            if width + 142 < 693 then
                self.talkheigth = 176
            else
                local height = UIUtil.GetTextHeight(self.noneHaveIconContentUIText.unity_uitext, GuideDataItem.Desc)
                if height + 50 > 176 then
                    self.talkheigth = height + 50
                else
                    self.talkheigth = 176
                end
            end
            self.hasIconContentUIText:SetText(GuideDataItem.Desc)
            self.talkType = TALKING_TYPE.HAVE_HEAD
        else
            self.talk_head_game:SetActive(false)
            self.hasIconContentUIText.gameObject:SetActive(false)
            self.noneHaveIconContentUIText.gameObject:SetActive(true)
            self.talk_dir:SetActive(GuideDataItem.HandleType ~= -1)
            self.talkwidth = 447
            if width + 87 < 447 then
                self.talkheigth = 134
            else
                local height = UIUtil.GetTextHeight(self.noneHaveIconContentUIText.unity_uitext, GuideDataItem.Desc)
                if height + 50 > 134 then
                    self.talkheigth = height + 50
                else
                    self.talkheigth = 134
                end
            end
            self.noneHaveIconContentUIText:SetText(GuideDataItem.Desc)
            self.talkType = TALKING_TYPE.NONE_HEAD
        end
        self.talk_spriteRootUIImage.sizeDelta = Vector2.New(self.talkwidth, self.talkheigth)
        --self.talk_spriteRootUIImage.gameObject:SetActive(true)
    else
        self.talkType = TALKING_TYPE.NOT_NEED
        self.talk_spriteRootUIImage.gameObject:SetActive(false)
    end
end
--[[设置是否显示错误提示]]
local function __SetClickUnspecifiedAreaTipShow(self, isShow)
    if isShow then
        if not self.error_tip.gameObject.activeSelf then
            self.error_tip.gameObject:SetActive(true)
            UIUtil.CreateUIFadeAnim(self.error_tip)
        end
        self.error_tip_two.localPosition = self.click_boxRect.transform.localPosition
        self.error_tip_two.gameObject:SetActive(false)
        self.error_tip_two.gameObject:SetActive(true)
    else
        self.error_tip_two.gameObject:SetActive(false)
        self.error_tip.gameObject:SetActive(false)
    end
end

-- 尖刺是否可以立即执行下一步
local function __CheckCanNextStepRightNow(self)
    if not string.isNilOrEmpty(self.GuideDataItem.OverEvent) then
        return
    end
    self:__UIDoNextStep()
end

local function SetGuide(self)
    -- 设置当前引导
    --1 类型  普通引导类型
    --2 类型战斗 推拽引导类型
    --3 黑化 两秒后可点击
    --4  弱弱引导
    --5 ruo引导组
    Logger.LogErrorVars("UINationGuideView SetGuide 0000000000")

    if NationGuideGroup:GetInstance():IsCurrentGuideRunning() then
        self.GuideDataItem = NationGuideGroup:GetInstance().CurGuideItem
    else
        Logger.LogErrorVars("国战新手引导未执行 不是强也不是弱")
        return
    end

    self.ClickBGNext = false
    self.ClickBgTip:SetActive(false)
    self:__SetClickUnspecifiedAreaTipShow(false)
    self.shouzhiRing.gameObject:SetActive(false)
    self.shouzhiGrow.gameObject:SetActive(false)
    self.txhandAnimator.enabled = false
    self.click_box.gameObject:SetActive(true)

    if self.rightAnim ~= nil then
        LuaTweener.StopTweener(self.rightAnim)
        self.rightAnim = nil
    end
    --if self.GuideDataItem.ShowFiger then
    --	self.shouzhiRootTran.gameObject:SetActive(true)
    --else
    --	self.shouzhiRootTran.gameObject:SetActive(false)
    --end

    self:__SetFourBGImageListStyle(true)

    self.guideUITargetData = {}

    --if self.GuideDataItem.LoadRes then
    --	local targetbegin = CS.UnityEngine.GameObject.Find(self.GuideDataItem.LoadRes)
    --	self.clone_game1 = CS.UnityEngine.GameObject.Instantiate(targetbegin.gameObject, self.transform)
    --	local clone_game1_boxRect=UIUtil.FindComponent(self.clone_game1.transform,typeof(CS.UnityEngine.RectTransform),"");
    --	clone_game1_boxRect.anchorMin = Vector2.New(0,0.5);
    --	clone_game1_boxRect.anchorMax = Vector2.New(0,0.5);
    --	clone_game1_boxRect.pivot = Vector2.New(1,1);
    --	clone_game1_boxRect.anchoredPosition3D=Vector3.New(500,378)
    --	self.clone_game1.transform.localScale=Vector3.one
    --end

    local HandleType = self.GuideDataItem.HandleType -- 界面类型
    if HandleType == GuideDefine.GUIDE_SHEET_HandleType.ASSIGN_UI_BORDER then
        self:__OnInitGUIDE_SHEET_HandleTypeASSIGN_UI_BORDER()
    elseif HandleType == GuideDefine.GUIDE_SHEET_HandleType.FORMATION then
        --战斗 推拽
        local find = self:__GetUITargetWithGuideData(self, self.GuideDataItem)
        if not find then
            return
        end
        local function FingerMover(self)
            if not IsNull(self.guideUITargetData.mTargetTran) then
                local coe = self:__GetBaseUIPositionScale(self)
                local targetPosition = self.guideUITargetData.mTargetTran.position
                self.shouzhiRootTran.gameObject.transform.position = Vector3.New(targetPosition.x * coe,
                        targetPosition.y * coe, targetPosition.z * coe)
            else

            end

            self.click_box.transform.position = self.shouzhiRootTran.gameObject.transform.position
            self.click_boxRect.sizeDelta = self.guideUITargetData.mTargetTran.sizeDelta
            self.click_box.gameObject:SetActive(false)

            local function GetArrayTargetPos(type)
                if type == 1 then
                    return Vector3.New(-582.8949, -70.6, 0)
                elseif type == 2 then
                    return Vector3.New(-99.895, -70.6, 0)
                else
                    return Vector3.New(337.1, -70.6, 0)
                end
            end

            --查找空位
            local tarPos = GetArrayTargetPos(NationGuideGroup:GetInstance().array_empty)
            self.talk_spriteRootUIImage.gameObject:SetActive(true)
            self:__SetTalkPos(self.GuideDataItem.TalkX, self.GuideDataItem.TalkY)
            local pos = Vector3.New(self.shouzhiRootTran.gameObject.transform.localPosition.x, self.shouzhiRootTran.gameObject.transform.localPosition.y, 0)
            self:__PosGroupMove(self.shouzhiRootTran.gameObject.transform, { pos, tarPos }, 1, -1, true)
            self:__SetFourBGImageListStyle(false)
            self.guidebg:SetActive(false)
        end
        FingerMover(self)
    elseif HandleType == GuideDefine.GUIDE_SHEET_HandleType.EMPTY_UI then
        -- 就显示一句  全黑
        self:__SetFourBGImageListStyle(true, false)
        self.ClickBGNext = true
        self.click_box.gameObject:SetActive(false)
        self.talk_spriteRootUIImage.gameObject:SetActive(true)
        self.shouzhiRootTran.gameObject:SetActive(false)
        self.talk_spriteRootUIImage.transform.localPosition = Vector3.zero
    elseif HandleType == GuideDefine.GUIDE_SHEET_HandleType.CAN_NOT_OPERATE then
        -- 不能操作
        self:__SetFourBGImageListStyle(true, false)
        self.ClickBGNext = false
        self.click_box.gameObject:SetActive(false)
        self.talk_spriteRootUIImage.gameObject:SetActive(false)
        self.shouzhiRootTran.gameObject:SetActive(false)
        Logger.LogErrorVars("--UINationGuideView SetGuide 设置 CAN_NOT_OPERATE")
    elseif HandleType == GuideDefine.GUIDE_SHEET_HandleType.NATION_MAP_CLICK then
        -- 国战点击UI引导
        self:__SetContentTalkWithData(self.GuideDataItem)
        self:__SetNationFingerUIWithGuideDataItem(self.GuideDataItem)
        self:__SetFingerAnimShowGuide()
    elseif HandleType == GuideDefine.GUIDE_SHEET_HandleType.NATION_UI_CLICK then
        -- 国战点击UI引导
        self:__SetContentTalkWithData(self.GuideDataItem)
        --self:__OnInitGUIDE_SHEET_HandleTypeASSIGN_UI_BORDER()
        self:__SetUINationCompTargetWithGuideData(self.GuideDataItem)
        self:__SetFingerAnimShowGuide()
    end
end

local function ClickEvent(self)
    --下一步？ 点击事件触发
    Logger.LogErrorVars("这里是 UINationGuideView ClickEvent 触发")
    self:__SetClickUnspecifiedAreaTipShow(false)

    if self.GuideDataItem.HandleType == GuideDefine.GUIDE_SHEET_HandleType.FORMATION then
        --不让点
        return
    elseif self.GuideDataItem.HandleType == GuideDefine.GUIDE_SHEET_HandleType.GET_CARD_SPC_12 then
        if not self.ClickBGNext then
            return
        end
    elseif self.GuideDataItem.HandleType == GuideDefine.GUIDE_SHEET_HandleType.EMPTY_UI then
        -- 空的UI
        self:__NextStepResetUI()
        self:__OnDefaultClickUI()
    elseif self.GuideDataItem.HandleType == GuideDefine.GUIDE_SHEET_HandleType.ASSIGN_UI_BORDER then
        -- 点击UI
        self:__NextStepResetUI()
        self:__OnDefaultClickUI()
    elseif self.GuideDataItem.HandleType == GuideDefine.GUIDE_SHEET_HandleType.CAN_NOT_OPERATE then
        -- 不能操作
        return
    elseif self.GuideDataItem.HandleType == GuideDefine.GUIDE_SHEET_HandleType.NATION_MAP_CLICK then
        -- 国战点击地图
        self:__NextStepResetUI()
        local cellId = self:__GetNationTownIdByGuideDataItem(self.GuideDataItem)
        if cellId ~= nil then
            local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
            nationProxy:__DoClickBuilding(cellId)
        end
        self:__CheckCanNextStepRightNow()
    elseif self.GuideDataItem.HandleType == GuideDefine.GUIDE_SHEET_HandleType.NATION_UI_CLICK then
        -- 国战点击场景UI
        self:__NextStepResetUI()
        self:__OnNationUIClickUI(self.GuideDataItem)
    end
end

local function __OnNationUIClickUI(self, GuideDataItem)

    --GUIDE_SHEET_ClickTag = {
    --	ON_CLICK_EMPTY = -1, -- 点击任意位置（背景）跳过
    --	ON_CLICK_UI = 1, -- 点击UI
    --	ON_CLICK_3D_OBJ = 2, -- 点击3d物体
    --	ON_CLICK_SPEC_REWARD = 3, -- 点击奖励特殊处理
    --	ON_CLICK_SCROLL_VIEW = 12, -- 点击滑动条数据类型
    --},
    local clickTag = GuideDataItem.ClickTag
    if clickTag == nil then
        clickTag = GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_EMPTY
    end

    if clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_UI then
        local pointer = CS.UnityEngine.EventSystems.PointerEventData(CS.UnityEngine.EventSystems.EventSystem.current)
        local IPointerClickHandler = CS.UnityEngine.EventSystems.IPointerClickHandler;

        local clickHandler = UIUtil.FindComponent(self.guideUITargetData.transform, typeof(IPointerClickHandler))
        if clickHandler ~= nil then
            self:__CheckCanNextStepRightNow()
            clickHandler:OnPointerClick(pointer);
            clickHandler:OnPointerDown(pointer);
            clickHandler:OnPointerUp(pointer);
        else
            --判斷父節點有沒有
            if self.guideUITargetData.mTargetTran.parent ~= nil then
                clickHandler = UIUtil.FindComponent(self.guideUITargetData.mTargetTran.parent, typeof(IPointerClickHandler))
                if clickHandler ~= nil then
                    self:__CheckCanNextStepRightNow()
                    clickHandler:OnPointerClick(pointer);
                    clickHandler:OnPointerDown(pointer);
                    clickHandler:OnPointerUp(pointer);
                else
                    Logger.LogError("点击事件Is Nil")
                end
            else
                Logger.LogError("点击事件Is Nil")
            end
        end
    elseif clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_3D_OBJ then
        -- 目前只有点击关卡功能
        --发事件
        self:__CheckCanNextStepRightNow()
        --事件写这里
        --主城事件
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_3DOBJ_CLICK_FUN, self.GuideDataItem.ClickEvent, self.GuideDataItem.ClickEventParas);
    elseif clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_SPEC_REWARD then
    elseif clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_SCROLL_VIEW then

    else
        self:__CheckCanNextStepRightNow()
    end
end

local function __OnDefaultClickUI(self, GuideDataItem)
    local clickTag = GuideDataItem.ClickTag
    if clickTag == nil then
        clickTag = GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_EMPTY
    end
    if clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_UI then
        local pointer = CS.UnityEngine.EventSystems.PointerEventData(CS.UnityEngine.EventSystems.EventSystem.current)
        local IPointerClickHandler = CS.UnityEngine.EventSystems.IPointerClickHandler;

        local clickHandler = UIUtil.FindComponent(self.guideUITargetData.mTargetTran, typeof(IPointerClickHandler))
        if clickHandler ~= nil then
            self:__CheckCanNextStepRightNow()
            clickHandler:OnPointerClick(pointer);
            clickHandler:OnPointerDown(pointer);
            clickHandler:OnPointerUp(pointer);
        else
            --判斷父節點有沒有
            if self.guideUITargetData.mTargetTran.parent ~= nil then
                clickHandler = UIUtil.FindComponent(self.guideUITargetData.mTargetTran.parent, typeof(IPointerClickHandler))
                if clickHandler ~= nil then
                    self:__CheckCanNextStepRightNow()
                    clickHandler:OnPointerClick(pointer);
                    clickHandler:OnPointerDown(pointer);
                    clickHandler:OnPointerUp(pointer);
                else
                    Logger.LogError("点击事件Is Nil")
                end
            else
                Logger.LogError("点击事件Is Nil")
            end
        end
    elseif clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_3D_OBJ then
        -- 目前只有点击关卡功能
        --发事件
        self:__CheckCanNextStepRightNow()
        --事件写这里
        --主城事件
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_3DOBJ_CLICK_FUN, self.GuideDataItem.ClickEvent, self.GuideDataItem.ClickEventParas);
    elseif clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_SPEC_REWARD then
        self:__CheckCanNextStepRightNow()
    elseif clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_SCROLL_VIEW then
    end
end

--获得点击目标
local function __SetUINationCompTargetWithGuideData(self, GuideDataItem)
    local clickTag = GuideDataItem.ClickTag
    if clickTag == nil then
        clickTag = GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_EMPTY
    end

    if clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_EMPTY then
        -- 点击空背景
        self:__SetFingerAnimShowGuide()
    elseif clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_UI then
        -- 2dUI物体

        local targetGameObject = CS.UnityEngine.GameObject.Find(GuideDataItem.TargetPath)
        if IsNull(targetGameObject) then
            Logger.LogVars(" GuideDataItem.TargetPath ： ", GuideDataItem.TargetPath, " not found guide null ? : ", IsNull(targetGameObject))
        end

        self.guideUITargetData.mTargetGameObject = targetGameObject
        self.guideUITargetData.mTargetTran = targetGameObject.transform
        --if  IsNull(self.guideUITargetData.mTargetGameObject) then
        --	self.click_box.gameObject:SetActive(false)
        --else
        --	self.click_box.gameObject:SetActive(true)
        --end
        local boxSize = self:__GetGuideDataBoxSize(self, GuideDataItem, self.guideUITargetData.mTargetTran)
        if boxSize ~= nil then
            local targetTran = self.guideUITargetData.mTargetTran
            local uiPos = self:__GetUIPosWithWorldPos(self.guideUITargetData.mTargetTran.position)
            self.click_box.transform.position = Vector3.New(uiPos.x,
                    uiPos.y + self:__GetGuideDataMoveX(GuideDataItem),
                    0 + self:__GetGuideDataMoveY(GuideDataItem))

            self.click_box.transform.eulerAngles = Vector3.zero
            self.click_box.transform.localScale = self.guideUITargetData.mTargetTran.localScale
            --local coe = self:__GetBaseUIPositionScale()
            self.click_boxRect.sizeDelta = boxSize
            local pos = self.click_box.transform.anchoredPosition
            self:__SetFourBGImageListStyle(true, true, pos, boxSize)
        end
    elseif clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_3D_OBJ then
        -- 3d场景物体
        self:__GetUITargetWithGuideData(self.GuideDataItem)
        self:SetUIClickWithTarget()
    elseif clickTag == GuideDefine.GUIDE_SHEET_ClickTag.ON_CLICK_SCROLL_VIEW then
        -- 滑动条
        --NationSceneUIManager:GetInstance():GetWindow()
        self:__GetUITargetWithGuideData(self.GuideDataItem)
        self:SetUIClickWithTarget()
    end
end

local function __OnFourBorderBgClick(self)
    if self.ClickBGNext then
        --比如结算的时候  点击背景也算是走下一步
        if self.GuideDataItem.ClickTag > 0 and self.GuideDataItem.HandleType ~= GuideDefine.GUIDE_SHEET_HandleType.UNKNOWN_3 then
            self:ClickEvent()
        else
            self:__NextStepResetUI()
            self:__UIDoNextStep()
        end
    else
        -- 点背景出提示信息
        self:__SetClickUnspecifiedAreaTipShow(true)
    end
end

local function ClearLoadGame(self)
    --if not IsNull(self.load_game) then
    --	GameObjectPool:GetInstance():RecycleGameObject(self.load_path,self.load_game)
    --	self.load_game = nil
    --	self.load_path = nil
    --end

    --if not IsNull(self.clone_game1) then
    --	CS.UnityEngine.GameObject.Destroy(self.clone_game1)
    --	self.clone_game1=nil
    --end
end

local function __NextStepResetUI(self)
    self:__SetFourBGImageListStyle(false)

    self.click_box.gameObject:SetActive(false)
    self.shouzhiRootTran.gameObject:SetActive(false)
    self.talk_spriteRootUIImage.gameObject:SetActive(false)
    if self.GuideDataItem.GuideBG then
        self.guidebg:SetActive(true)
    else
        self.guidebg:SetActive(false)
    end
    self.ClickBgTip:SetActive(false)
end

local function __UIDoNextStep(self)
    if NationGuideGroup:GetInstance():IsCurrentGuideRunning() then
        NationGuideGroup:GetInstance():DoNextStep()
    else
        Logger.LogError("下一步不是强也不是弱")
    end
    --ClearLoadGame(self)
end

-- 根据位置和大小设置四边黑色蒙版
local function __SetFourBGImageListStyle(self, showHide, style, pos, size)
    if showHide then
        for i = 1, #self.fourBorderImageList do
            self.fourBorderImageList[i].gameObject:SetActive(true)
        end
        if style then
            self.fourBorderImageList[1].rectTransform.anchoredPosition = Vector3.zero
            self.fourBorderImageList[2].rectTransform.anchoredPosition = Vector3.zero
            self.fourBorderImageList[3].rectTransform.anchoredPosition = Vector3.New(0, pos.y, 0)
            self.fourBorderImageList[4].rectTransform.anchoredPosition = Vector3.New(0, pos.y, 0)
            self.fourBorderImageList[1].rectTransform.sizeDelta = Vector2.New(self.screen_width, self.screen_height / 2 - pos.y - size.y / 2)
            self.fourBorderImageList[2].rectTransform.sizeDelta = Vector2.New(self.screen_width, self.screen_height / 2 + pos.y - size.y / 2)
            self.fourBorderImageList[3].rectTransform.sizeDelta = Vector2.New(self.screen_width / 2 + pos.x - size.x / 2, size.y)
            self.fourBorderImageList[4].rectTransform.sizeDelta = Vector2.New(self.screen_width / 2 - pos.x - size.x / 2, size.y)
        else

            self.fourBorderImageList[1].rectTransform.anchoredPosition = Vector3.zero
            self.fourBorderImageList[2].rectTransform.anchoredPosition = Vector3.zero
            self.fourBorderImageList[3].rectTransform.anchoredPosition = Vector3.zero
            self.fourBorderImageList[4].rectTransform.anchoredPosition = Vector3.zero
            self.fourBorderImageList[1].rectTransform.sizeDelta = Vector2.New(self.screen_width, self.screen_height)
            self.fourBorderImageList[2].rectTransform.sizeDelta = Vector2.zero
            self.fourBorderImageList[3].rectTransform.sizeDelta = Vector2.zero
            self.fourBorderImageList[4].rectTransform.sizeDelta = Vector2.zero
        end
    else
        for i = 1, #self.fourBorderImageList do
            self.fourBorderImageList[i].gameObject:SetActive(false)
        end
    end
end

local function Set3DUIClickWithTarget(self)
    --点击3D 物品
    local box = Vector2.New(self.GuideDataItem.BoxSizeX, self.GuideDataItem.BoxSizeY)
    --3D 转2D  转成屏幕  再用UICamera 专程UI
    self.click_box.gameObject.transform.eulerAngles = Vector3.zero
    self.click_box.gameObject.transform.localScale = Vector3.one;
    local pos = self:__GetUIPosWithWorldPos(self.guideUITargetData.mTargetTran.position)
    pos = Vector3.New(pos.x + self.GuideDataItem.MoveX, pos.y + self.GuideDataItem.MoveY, 0)
    self.click_boxRect.sizeDelta = box
    self.click_boxRect.anchoredPosition3D = pos
    self.click_box.gameObject:SetActive(true)
    self:__SetFourBGImageListStyle(true, true, pos, box)
end

--获得UI之间的缩放比率参数
local function __GetBaseUIPositionScale(self)
    local NeedLayer = self.CurLayer
    if string.isNilOrEmpty(self.GuideDataItem.Layer) then
        --Logger.LogError("点击事件没有Layer")
    else
        --NeedLayer = UIManager:GetInstance():GetLayer(self.GuideDataItem.Layer).PlaneDistance
        if self.GuideDataItem.Layer == "BackgroudLayer" then
            NeedLayer = 900
        elseif self.GuideDataItem.Layer == "NormalLayer" then
            NeedLayer = 800
        elseif self.GuideDataItem.Layer == "InfoLayer" then
            NeedLayer = 700
        elseif self.GuideDataItem.Layer == "TipLayer" then
            NeedLayer = 600
        elseif self.GuideDataItem.Layer == "TopLayer" then
            NeedLayer = 500
        else
            Logger.LogError("Layer 类型没有" .. self.GuideDataItem.Layer)
        end
    end
    local coe = self.CurLayer / NeedLayer
    return coe
end

local function SetUIClickWithTarget(self)
    --点击 设置点击区域
    local box = self.guideUITargetData.mTargetTran.transform.sizeDelta
    if not box then
        Logger.LogError("Bug 选中Box Nil")
    end
    if self.GuideDataItem.BoxSizeX ~= 0 or self.GuideDataItem.BoxSizeY ~= 0 then
        box = Vector2.New(self.GuideDataItem.BoxSizeX, self.GuideDataItem.BoxSizeY)
    end
    if box ~= nil then
        self.click_box.gameObject:SetActive(true)
        self.click_box.gameObject.transform.eulerAngles = Vector3.zero
        self.click_box.gameObject.transform.localScale = self.guideUITargetData.mTargetTran.transform.localScale;
        local coe = self:__GetBaseUIPositionScale()
        self.click_box.transform.position = Vector3.New(self.guideUITargetData.mTargetTran.position.x * coe,
                self.guideUITargetData.mTargetTran.position.y * coe,
                self.guideUITargetData.mTargetTran.position.z * coe)
        if self.GuideDataItem.MoveX ~= 0 or self.GuideDataItem.MoveY ~= 0 then
            self.click_box.transform.localPosition = Vector3.New(self.click_box.transform.localPosition.x + self.GuideDataItem.MoveX, self.click_box.transform.localPosition.y + self.GuideDataItem.MoveY, 0)
        end

        local size = box
        if box.x > 0 then
            self.click_boxRect.sizeDelta = size
        else
            size = Vector2.New(self.screen_width, self.screen_height)
            self.click_boxRect.sizeDelta = size
        end
        local pos = self.click_box.transform.anchoredPosition
        self:__SetFourBGImageListStyle(true, true, pos, size)
    end
end

--获得点击目标
local function __GetUITargetWithGuideData(self, GuideDataItem)
    local targetType = GuideDataItem.TargetType
    if targetType == nil then
        targetType = GuideDefine.GUIDE_SHEET_TargetType.NONE_TARGET
    end

    if targetType == GuideDefine.GUIDE_SHEET_TargetType.NONE_TARGET then

    elseif targetType == GuideDefine.GUIDE_SHEET_TargetType.SCROLL_VIEW_ITEM then
        local targetPath = nil
        if GuideDataItem.TargetId ~= nil and GuideDataItem.TargetView ~= nil then
            local cardView = UIManager:GetInstance():GetWindow(GuideDataItem.TargetView).View
            local index, paras = cardView:GetGuidePosById(GuideDataItem.TargetId, GuideDataItem.TargetType)
            targetPath = string.format(GuideDataItem.TargetPath, index)
            if paras == -1 then
                self:__NextStepResetUI()
                self:__UIDoNextStep()
                return false
            end
            NationGuideGroup:GetInstance().array_empty = paras
        else
            targetPath = GuideDataItem.TargetPath
        end

        local targetGame = CS.UnityEngine.GameObject.Find(targetPath)
        if targetGame == nil then
            Logger.LogError("路径问题" .. "--" .. targetPath)
            return
        end
        self.guideUITargetData.mTargetGameObject = targetGame.gameObject
        self.guideUITargetData.mTargetTran = self.guideUITargetData.mTargetGameObject.transform
        if not self.guideUITargetData.mTargetGameObject.activeInHierarchy then
            Logger.Log("目标关闭" .. "--" .. targetPath)
        end
        --只要路径不是空的就有点击Box
        if GuideDataItem.TargetPath == nil or #GuideDataItem.TargetPath == 0 then
            self.shouzhiRootTran.gameObject:SetActive(false)
            self.click_box.gameObject:SetActive(false)
        else
            self.click_box.gameObject:SetActive(true)
        end
        return true
    elseif targetType == GuideDefine.GUIDE_SHEET_TargetType.NATION_VIEW_COMP then
        -- UI组件
        local targetPath = nil

        local targetGame = CS.UnityEngine.GameObject.Find(targetPath)
        if targetGame == nil then
            Logger.LogError("路径问题" .. "--" .. targetPath)

        end

        self.guideUITargetData.mTargetGameObject = targetGame.gameObject
        self.guideUITargetData.mTargetTran = targetGame.transform

        if not self.guideUITargetData.mTargetGameObject.activeInHierarchy then
            Logger.Log("目标关闭" .. "--" .. targetPath)
        end

        --只要路径不是空的就有点击Box
        if IsNull(self.guideUITargetData.mTargetGameObject) then
            self.shouzhiRootTran.gameObject:SetActive(false)
            self.click_box.gameObject:SetActive(false)
        else
            self.click_box.gameObject:SetActive(true)
        end
    else

    end
end

local function __SetTalkPos(self, x, y)
    if self.talkType == TALKING_TYPE.NOT_NEED then
        return
    end

    self.talk_spriteRootUIImage.gameObject:SetActive(true)
    if x ~= nil and y ~= nil then
        self.talk_spriteRootUIImage.localPosition = Vector3.New(x, y, 0)
        return
    end
    local owx = self.click_box.transform.localPosition.x + self.click_boxRect.sizeDelta.x / 2
    local owy = self.click_box.transform.localPosition.y + self.click_boxRect.sizeDelta.y / 2
    --判断TALK位置
    local talkX = owx
    local talkY = owy
    local xType = 1
    local yType = 1
    if owx + self.talkwidth / 2 + 166 > self.screen_width / 2 then
        --X方向改
        talkX = owx - self.click_boxRect.sizeDelta.x - 166
        xType = 2
    else
        talkX = owx + 166
    end

    if owy + self.talkheigth + 86 > self.screen_height / 2 then
        talkY = owy - self.talkheigth - self.click_boxRect.sizeDelta.y - 86
        yType = 2
    else
        talkY = owy + self.talkheigth / 2 + 86
    end
    self.talk_spriteRootUIImage.localPosition = Vector3.New(talkX, talkY, 0)
    if self.talkType == TALKING_TYPE.NONE_HEAD then
        local dirIndex = 2
        if xType == 2 and yType == 1 then
            dirIndex = 1
        elseif xType == 1 and yType == 2 then
            dirIndex = 3
        elseif xType == 2 and yType == 2 then
            dirIndex = 4
        end
        for i, v in ipairs(self.talk_dir_child) do
            if i == dirIndex then
                v:SetActive(true)
            else
                v:SetActive(false)
            end
        end
    end
end

local function FigerAniRepeat(self)
    self.shouzhiRing.gameObject:SetActive(true);
    self.shouzhiGrow.gameObject:SetActive(true);
    self.txhandAnimator.enabled = true
end

--滚动手指循环处理
local function __PosGroupMove(self, trans, move_group, index, times, is_ui)
    local function NextMove()
        self.pos_move_tweener = nil
        index = index + 1
        if index + 1 <= #move_group then
            self:__PosGroupMove(trans, move_group, index, times, is_ui)
        else
            if times == -1 then
                self:__PosGroupMove(trans, move_group, 1, times, is_ui)
            else
                times = times - 1
                if times > 0 then
                    self:__PosGroupMove(trans, move_group, 1, times, is_ui)
                else
                    trans.gameObject:SetActive(false)
                    self.ClickBGNext = true
                    self.ClickBgTip:SetActive(true)
                end
            end
        end
    end

    if is_ui then
        self.pos_move_tweener = LuaTweener.UIMoveTo(trans, move_group[index], move_group[index + 1], 1, EaseFormula.OutQuad, NextMove)
    else
        self.pos_move_tweener = LuaTweener.TransMoveTo(trans, move_group[index], move_group[index + 1], 1, EaseFormula.OutQuad, NextMove)
    end
end

local function GoOnGuide(self)
    self:SetGuide()
end


----根据3d世界位置获取UI位置
local function __GetUIPosWithWorldPos(self, pos, Name, offsetX, offsetY)
    local layer = nil
    if Name then
        if Name == "SceneCanvas" then
        else
            layer = UIManager:GetInstance():GetLayer(Name)
        end
    else
        layer = UIManager:GetInstance():GetLayer(UILayers.InfoLayer.Name)
    end

    local size_delta = UIUtil.FindComponent(layer.transform, typeof(CS.UnityEngine.RectTransform)).sizeDelta
    local cam = nil
    if IsNull(cam) then
        cam = CS.UnityEngine.Camera.main
        if IsNull(cam) then
            local cam_game = CS.UnityEngine.GameObject.FindGameObjectWithTag("GameMain")
            cam = cam_game:GetComponent(typeof(CS.UnityEngine.Camera))
        end
    end
    if offsetY == nil then
        offsetY = 0
    end

    if offsetX == nil then
        offsetX = 0
    end

    local lpos = nil
    if not IsNull(cam) then
        lpos = cam:WorldToViewportPoint(pos)
        lpos = Vector3.New((lpos.x - 0.5) * size_delta[0] + offsetX, (lpos.y - 0.5) * size_delta[1] + offsetY, 0)
    else
        lpos = Vector3.New(0, 0, 0)
    end
    return lpos
end

local function __GetGuideDataBoxSize(self, GuideDataItem, targetTran)
    local boxSize = nil
    local sizeX, sizeY
    sizeX = GuideDataItem.BoxSizeX
    sizeY = GuideDataItem.BoxSizeY
    if sizeX ~= nil and sizeY ~= nil then

    else
        if IsNull(targetTran) then
            return nil
        end
        local sizeDelta = self.guideUITargetData.mTargetTran.sizeDelta
        sizeX = sizeDelta.x
        sizeY = sizeDelta.y
    end

    if sizeX <= 0 or sizeY <= 0 then
        sizeX = self.screen_width
        sizeY = self.screen_height
    end
    return Vector2.New(sizeX, sizeY)
end

local function __GetGuideDataMoveX(self, GuideDataItem)
    local move = GuideDataItem.MoveX
    if move ~= nil then
        return move
    end
    return 0
end

local function __GetGuideDataMoveY(self, GuideDataItem)
    local move = GuideDataItem.MoveY
    if move ~= nil then
        return move
    end
    return 0
end

UINationGuideView.OnCreate = OnCreate
UINationGuideView.OnEnable = OnEnable
UINationGuideView.OnAddListener = OnAddListener
UINationGuideView.OnRemoveListener = OnRemoveListener
UINationGuideView.OnDestroy = OnDestroy
UINationGuideView.OnDisable = OnDisable

UINationGuideView.__UIDoNextStep = __UIDoNextStep
UINationGuideView.SetGuide = SetGuide
UINationGuideView.SetUIClickWithTarget = SetUIClickWithTarget
UINationGuideView.__OnFourBorderBgClick = __OnFourBorderBgClick
UINationGuideView.GoOnGuide = GoOnGuide
UINationGuideView.Set3DUIClickWithTarget = Set3DUIClickWithTarget
UINationGuideView.__NextStepResetUI = __NextStepResetUI
UINationGuideView.__SetTalkPos = __SetTalkPos

UINationGuideView.FigerAniRepeat = FigerAniRepeat

UINationGuideView.__CheckCanNextStepRightNow = __CheckCanNextStepRightNow
UINationGuideView.ClearLoadGame = ClearLoadGame
UINationGuideView.ClickEvent = ClickEvent
UINationGuideView.__GetUITargetWithGuideData = __GetUITargetWithGuideData
UINationGuideView.__GetBaseUIPositionScale = __GetBaseUIPositionScale
UINationGuideView.__PosGroupMove = __PosGroupMove
UINationGuideView.__OnInitGUIDE_SHEET_HandleTypeASSIGN_UI_BORDER = __OnInitGUIDE_SHEET_HandleTypeASSIGN_UI_BORDER
UINationGuideView.__GetUIPosWithWorldPos = __GetUIPosWithWorldPos
UINationGuideView.__SetNationFingerUIWithGuideDataItem = __SetNationFingerUIWithGuideDataItem
UINationGuideView.__GetNationTownIdByGuideDataItem = __GetNationTownIdByGuideDataItem
UINationGuideView.__SetClickUnspecifiedAreaTipShow = __SetClickUnspecifiedAreaTipShow
UINationGuideView.__SetFourBGImageListStyle = __SetFourBGImageListStyle
UINationGuideView.__SetFingerAnimShowGuide = __SetFingerAnimShowGuide
UINationGuideView.__SetContentTalkWithData = __SetContentTalkWithData
UINationGuideView.__OnDefaultClickUI = __OnDefaultClickUI
UINationGuideView.__OnNationUIClickUI = __OnNationUIClickUI
UINationGuideView.__GetGuideDataBoxSize = __GetGuideDataBoxSize
UINationGuideView.__GetGuideDataMoveX = __GetGuideDataMoveX
UINationGuideView.__GetGuideDataMoveY = __GetGuideDataMoveY
UINationGuideView.__SetUINationCompTargetWithGuideData = __SetUINationCompTargetWithGuideData
UINationGuideView.__NationGetUIPos = __NationGetUIPos

return UINationGuideView
