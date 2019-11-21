--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationTeamSideInfoView = BaseClass("UINationTeamSideInfoView", UIBaseView)
local base = UIBaseView
local NationUtil = require "GameLogic.Nation.NationUtil"

local VIEW_ST = {
    CENTER = 1, -- 没有按钮的界面
    BIG = 2, -- -- 全部界面
    DIAMOND = 3 -- -- 带灵玉显示界面
}

local function PlayUIOpenTween(self)
    local curPos = self.defaultTeamPosRectPos
    local targetPos = Vector3.New(curPos.x - 630, curPos.y, curPos.z)
    self.tweener_flag = LuaTweener.UIMoveTo(self.teamPosRect, curPos, targetPos, 0.3, EaseFormula.OutQuad, Bind(self, function(self)
        self.tweener_flag = nil
    end))
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件

    self.returnNotEnoughTip = DataUtil.GetClientText(200353) -- 灵玉不足，无法立即返回
    self.returnTipTitle = DataUtil.GetClientText(200029) -- 提<size=40>示</size>
    self.returnTipContent =  DataUtil.GetClientText(200354)   -- 是否确定消耗<color=#3E793F>灵玉%s</color>立即返回？
    self.returnTipConfirm =  DataUtil.GetClientText(200006)   -- 确定
    self.returnTipCancel =  DataUtil.GetClientText(200007)    -- 取消

    self.teamDetailST_ERROR = DataUtil.GetClientText(200355) -- 错误
    self.teamDetailST_ERROR_NULL = DataUtil.GetClientText(200356) -- 队伍类型为Null
    self.teamDetailST_TRANSFER = DataUtil.GetClientText(200357) -- 行军
    self.teamDetailST_BACK = DataUtil.GetClientText(200358) -- 返回
    self.teamDetailST_DEFEND = DataUtil.GetClientText(200359) -- 驻守
    self.teamDetailST_STAY = DataUtil.GetClientText(200360) -- 待命
    self.teamDetailST_INJURED = DataUtil.GetClientText(200361) -- 负伤
    self.teamDetailST_RECRUIT = DataUtil.GetClientText(200362) -- 征募
    self.teamDetailST_SIEGE_KILL = DataUtil.GetClientText(200363) -- 攻城战中
    self.teamDetailST_BATTLE = DataUtil.GetClientText(200364) -- 战斗中
    self.teamDetailST_COLLECT = DataUtil.GetClientText(200365) -- 采集中


    self.activeGameObj = UIUtil.FindTrans(self.transform, "spcRoot").gameObject
    self.teamPosRect = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform), "spcRoot/teamPosition")
    self.itemBackground_UIImage = self:AddComponent(UIImage, "spcRoot/teamPosition/ItemBackground_UIImage", AtlasConfig.DynamicNationTex)
    self.stretchBackground_UIImage = self:AddComponent(UIImage, "spcRoot/teamPosition/StretchBackground_UIImage")
    self.stretchBackground_Button = self:AddComponent(UIButton, "spcRoot/teamPosition/StretchBackground_UIImage")
    self.stretchBackground_Button:SetOnClick(function()
        --self:__OpenDetailBtnPressed()
    end)
    self.stretchBackgroundTran = self.stretchBackground_UIImage.gameObject:GetComponent(typeof(CS.UnityEngine.RectTransform))
    self.stretchBackgroundData = {}
    self.stretchBackgroundData[self.VIEW_ST.CENTER] = 47.3
    self.stretchBackgroundData[self.VIEW_ST.BIG] = 101
    self.stretchBackgroundData[self.VIEW_ST.DIAMOND] = 120
    --self.stretchBackgroundData.maxY = self.stretchBackgroundTran.sizeDelta.y
    --self.stretchBackgroundData.centerY = 47.3
    --self.stretchBackgroundData.diamond = 120
    --self.stretchBackgroundData.minY = 101

    --头像
    self.teamListBottomImg = self:AddComponent(UIImage, "spcRoot/teamPosition/teamDetail/CardIcon/diBg_UIImage", AtlasConfig.DynamicTex)
    self.teamListHeadIcon = self:AddComponent(UIImage, "spcRoot/teamPosition/teamDetail/CardIcon/Icon_UIImage", AtlasConfig.DynamicTex)
    self.teamListFrameImg = self:AddComponent(UIImage, "spcRoot/teamPosition/teamDetail/CardIcon/topBg_UIImage", AtlasConfig.DynamicTex)

    self.teamListStatus = self:AddComponent(UIText, "spcRoot/teamPosition/teamDetail/teamStatusGroup/horExpand/teamStatusText")
    self.teamListStatusTime = self:AddComponent(UIText, "spcRoot/teamPosition/teamDetail/teamStatusGroup/teamStatusTime")
    self.teamListArmyGroupImgBG = self:AddComponent(UIImage, "spcRoot/teamPosition/teamDetail/teamStatusGroup/horExpand/teamStatusBG", AtlasConfig.DynamicNationTex)
    self.teamListArmyGroupImg = self:AddComponent(UIImage, "spcRoot/teamPosition/teamDetail/teamStatusGroup/horExpand/teamStatusBG/teamStatusIcon", AtlasConfig.DynamicNationTex)

    self.teamListUserName = self:AddComponent(UIText, "spcRoot/teamPosition/teamDetail/userImage/userNameText")

    self.teamListUserLeagueIcon = self:AddComponent(UIImage, "spcRoot/teamPosition/teamDetail/userLeagueImage", AtlasConfig.DynamicTex)
    self.userLeagueNameText = self:AddComponent(UIText, "spcRoot/teamPosition/teamDetail/userLeagueImage/userLeagueNameText")

    self.group_1Tran = UIUtil.FindTrans(self.transform, "spcRoot/teamPosition/group_1").gameObject
    self.teamStartPosition = self:AddComponent(UIText, "spcRoot/teamPosition/group_1/startPositionBgImage/startPositionText1")
    self.teamEndPosition = self:AddComponent(UIText, "spcRoot/teamPosition/group_1/endPositionBgImage/endPositionText1")
    self.oncePositionText = self:AddComponent(UIText, "spcRoot/teamPosition/group_1/oncePositionBgImage/oncePositionText")

    self.start_pos_Btn = self:AddComponent(UIButton, "spcRoot/teamPosition/group_1/startPositionBgImage")
    self.start_pos_Btn:SetOnClick(function()
        local marchData = self.model.marchData
        local x, y
        x, y = NationUtil.GetXYByCellId(marchData.nationArmyPath.startPos)
        local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
        local pos = nationProxy.mapManager:GetGridUnityCellToWorldByIntXYZ(x, y, 0)
        nationProxy:SetCMCameraLookTransformPosition(pos.x, pos.y, true)
    end)
    self.end_pos_Btn = self:AddComponent(UIButton, "spcRoot/teamPosition/group_1/endPositionBgImage")
    self.end_pos_Btn:SetOnClick(function()
        local marchData = self.model.marchData
        local x, y
        x, y = NationUtil.GetXYByCellId(marchData.nationArmyPath.targetPos)
        local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
        local pos = nationProxy.mapManager:GetGridUnityCellToWorldByIntXYZ(x, y, 0)
        nationProxy:SetCMCameraLookTransformPosition(pos.x, pos.y, true)
    end)
    self.once_pos_Btn = self:AddComponent(UIButton, "spcRoot/teamPosition/group_1/oncePositionBgImage")
    self.once_pos_Btn:SetOnClick(function()
        local marchData = self.model.marchData
        local x, y
        x, y = NationUtil.GetXYByCellId(marchData.nationArmyPath.startPos)
        local nationProxy = NationCtrlManager:GetInstance():GetCurrentNationProxy()
        local pos = nationProxy.mapManager:GetGridUnityCellToWorldByIntXYZ(x, y, 0)
        nationProxy:SetCMCameraLookTransformPosition(pos.x, pos.y, true)
    end)

    self.arrows_Btn = self:AddComponent(UIButton, "spcRoot/teamPosition/group_1/arrows")

    self.group_2Tran = UIUtil.FindTrans(self.transform, "spcRoot/teamPosition/group_2").gameObject

    self.retreatBtn = self:AddComponent(UIButton, "spcRoot/teamPosition/group_2/retreatBtn")
    self.retreatBtn_UIText = self:AddComponent(UIButton, "spcRoot/teamPosition/group_2/retreatBtn/Text")
    self.retreatBtn:SetOnClick(function()
        local marchData = self.model.marchData
        self.ctrl:OnRetreatBtnClick(marchData.nationArmyPath.teamId)
    end)
    self.setBtn = self:AddComponent(UIButton, "spcRoot/teamPosition/group_2/setBtn")
    self.setBtnImage = self:AddComponent(UIImage, "spcRoot/teamPosition/group_2/setBtn", AtlasConfig.DynamicTex)
    self.setBtn:SetOnClick(function()
        local marchData = self.model.marchData
        self.ctrl:OnSetBtnClick(marchData)
    end)

    self.getBtn = self:AddComponent(UIButton, "spcRoot/teamPosition/group_2/getBtn")
    self.getBtnImage = self:AddComponent(UIImage, "spcRoot/teamPosition/group_2/getBtn", AtlasConfig.DynamicTex)
    self.getBtn:SetOnClick(function()
        local marchData = self.model.marchData
        self.ctrl:OnGetBtnClick(marchData)
    end)


    self.returnNowBtn = self:AddComponent(UIButton, "spcRoot/teamPosition/group_2/returnNowBtn")
    self.returnNow_UIText = self:AddComponent(UIText, "spcRoot/teamPosition/group_2/returnNowBtn/diamondGroup/Text_value")
    self.returnNow_UIText:SetText(self.model.QuickReturn)
    self.returnNowBtn:SetOnClick(function()
        UIManager:GetInstance():OpenTwoButtonTip(self.returnTipTitle, string.format(self.returnTipContent ,self.model.QuickReturn) , self.returnTipCancel, self.returnTipConfirm,
                function()
                    UIManager:GetInstance():CloseTip()
                end, Bind(self, function(self)
                    if BackpackData:GetInstance():GetItemNumById(CoinDefine.Diamond) < self.model.QuickReturn then
                        UISpecial:GetInstance():UITipText(self.returnNotEnoughTip)
                        return
                    end
                    local marchData = self.model.marchData
                    if marchData == nil then
                        UISpecial:GetInstance():UITipText("队伍已发生变化")
                        UIManager:GetInstance():CloseTip()
                        return
                    end
                    self.ctrl:OnClickRightNowRetreatBtn(marchData.nationArmyPath.teamId)
                end))
    end)

    self.openDetailBtn = self:AddComponent(UIButton, "spcRoot/teamPosition/ItemBackground_UIImage/openDetailBtn")
    self.openDetailBtn:SetOnClick(function()
        self:__OpenDetailBtnPressed()
    end)

    self.defaultTeamPosRectPos = self.teamPosRect.anchoredPosition3D



end

local function OnRefresh(self)
    -- 各组件刷新

    local marchData = self.model.marchData
    if marchData.cropsInfo ~= nil then
        self.teamListArmyGroupImg.gameObject:SetActive(true)
        self.teamListArmyGroupImgBG:SetSpriteName(marchData.cropsInfo.CorpsTypeIcon)
        self.teamListArmyGroupImg:SetSpriteName(marchData.cropsInfo.Icon)
    else
        self.teamListArmyGroupImg.gameObject:SetActive(false)
    end

    if marchData.nationArmyPath.unionId ~= 0 then
        self.teamListUserLeagueIcon.gameObject:SetActive(true)
        self.userLeagueNameText:SetText(marchData.nationArmyPath.unionName)
    else
        self.teamListUserLeagueIcon.gameObject:SetActive(false)
        self.userLeagueNameText:SetText("")
    end
    self.teamListUserName:SetText(marchData.nationArmyPath.name)

    local firstCard = marchData.firstCard
    --Logger.LogErrorVars("OnRefresh firstCard : ",firstCard)
    if firstCard ~= nil then
        self.teamListHeadIcon:SetSpriteName(firstCard.Icon)
        self.teamListFrameImg:SetSpriteName(SpriteDefine:GetCardTopFrameByQuality(firstCard.Quality))
        self.teamListBottomImg:SetSpriteName(SpriteDefine:GetCardBGByQua(firstCard.Quality))
    end

    self:SetBorderImgByCampIndex(self.itemBackground_UIImage, marchData.campIndex)

    if marchData.isSelf then
        --自己的状态

        local behavior = marchData.nationArmyPath.currentBehavior
        local openCode = behavior.type
        local behaviorState = behavior.state

        if openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.ERROR then
            self.teamListStatus:SetText(self.teamDetailST_ERROR)
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.TRANSFER then
            self.teamListStatus:SetText(self.teamDetailST_TRANSFER)
            self:__SetStretchViewST(self.VIEW_ST.CENTER)
            self:__SetMoveToUI(marchData)
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.BACK then
            self.teamListStatus:SetText(self.teamDetailST_BACK)
            self:__SetStretchViewST(self.VIEW_ST.DIAMOND)
            self:__SetMoveToUI(marchData)
            self.returnNowBtn.gameObject:SetActive(true)
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND_WARCELL then
            if behaviorState == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
                self:__SetBattleStateUI(marchData)
            else
                self.teamListStatus:SetText(self.teamDetailST_DEFEND)
                self:__SetSpecialStateUI(marchData)
            end
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.DEFEND_RES then
            if behaviorState == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
                self:__SetBattleStateUI(marchData)
            else
                self.teamListStatus:SetText(self.teamDetailST_DEFEND)
                self:__SetSpecialStateUI(marchData)
            end
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
            local maxEndArmyTime = marchData.maxEndArmyTime
            local maxLastEndInJuryTime = marchData.maxLastEndInJuryTime
            local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
            if maxEndArmyTime < currentTime then
                -- 不在征募
                if maxLastEndInJuryTime < currentTime then
                    -- 不在负伤
                    -- 待命
                    self.teamListStatus:SetText(self.teamDetailST_STAY)
                else
                    -- 负伤
                    self.teamListStatus:SetText(self.teamDetailST_INJURED)
                end
            else
                -- 征兵
                self.teamListStatus:SetText(self.teamDetailST_RECRUIT)
            end

            --面板UI（待命状态，不可撤退）
            self:__SetStretchViewST(self.VIEW_ST.BIG)
            self.start_pos_Btn.gameObject:SetActive(false)
            self.end_pos_Btn.gameObject:SetActive(false)
            self.arrows_Btn.gameObject:SetActive(false)
            self.once_pos_Btn.gameObject:SetActive(true)
            self.returnNowBtn.gameObject:SetActive(false)
            self.retreatBtn.gameObject:SetActive(false)
            self.setBtnImage:SetActive(true)
            self.getBtnImage:SetActive(true)
            local prevTownStr = NationUtil.GetBuildingFormatNamePositionStr(behavior.startMapID)
            self.oncePositionText:SetText(prevTownStr)
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.BATTLE then
            self:__SetBattleStateUI(marchData)
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.PUNITIVE then
            self:__SetBattleStateUI(marchData)
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE then
            self:__SetBattleStateUI(marchData)
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.RESOURCE_COLLECT then
            self:__SetBattleStateUI(marchData)
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.WARCELL then
            self:__SetBattleStateUI(marchData)
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_BREAK then
            self:__SetBattleStateUI(marchData)
        elseif openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.SIEGE_KILL then
            if behaviorState == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
                self:__SetBattleStateUI(marchData)
            else
                self.teamListStatus:SetText(self.teamDetailST_SIEGE_KILL)
                self:__SetSpecialStateUI(marchData)
            end
        else
            --error
            self.teamListStatus:SetText(self.teamDetailST_ERROR_NULL)
        end
    else
        -- 别人的状态
        self:__SetStretchViewST(self.VIEW_ST.CENTER)
        local nationArmyPathState = marchData.nationArmyPath.state
        if nationArmyPathState == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO then
            self.teamListStatus:SetText(self.teamDetailST_TRANSFER)
        elseif nationArmyPathState == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
            self.teamListStatus:SetText(self.teamDetailST_BACK)
        end
        self:__SetMoveToUI(marchData)
    end

    self:DisposeTimer()
    self:CheckTimerStart(marchData)
end

local function __SetStretchViewST(self, viewST)
    if viewST == self.VIEW_ST.CENTER then
        self:__SetStretchBackgroundTranY(self.stretchBackgroundData[viewST])
        self.group_1Tran:SetActive(true)
        self.group_2Tran:SetActive(false)
    elseif viewST == self.VIEW_ST.BIG then
        self:__SetStretchBackgroundTranY(self.stretchBackgroundData[viewST])
        self.group_1Tran:SetActive(true)
        self.group_2Tran:SetActive(true)
    else
        self:__SetStretchBackgroundTranY(self.stretchBackgroundData[self.VIEW_ST.DIAMOND])
        self.group_1Tran:SetActive(true)
        self.group_2Tran:SetActive(true)
    end
end

local function __SetStretchBackgroundTranY(self, y)
    self.stretchBackgroundTran.sizeDelta = Vector2.New(self.stretchBackgroundTran.sizeDelta.x, y)
end

--其他玩家队伍移动时，右侧的UI显示
local function __SetMoveToUI(self, marchData)
    local nationArmyPath = marchData.nationArmyPath

    self.start_pos_Btn.gameObject:SetActive(true)
    self.end_pos_Btn.gameObject:SetActive(true)
    self.arrows_Btn.gameObject:SetActive(true)
    self.retreatBtn.gameObject:SetActive(false)
    self.returnNowBtn.gameObject:SetActive(false)
    self.once_pos_Btn.gameObject:SetActive(false)
    self.setBtnImage:SetActive(false)
    self.getBtnImage:SetActive(false)
    local prevTownStr = NationUtil.GetBuildingFormatNamePositionStr(nationArmyPath.startPos)
    local targetTownStr = NationUtil.GetBuildingFormatNamePositionStr(nationArmyPath.targetPos)
    self.teamStartPosition:SetText(prevTownStr)
    self.teamEndPosition:SetText(targetTownStr)
end

--自己队伍的不同状态，右侧的UI显示
local function __SetBattleStateUI(self, marchData)
    local nationArmyPath = marchData.nationArmyPath
    local behaviorState = nationArmyPath.currentBehavior.state

    self.start_pos_Btn.gameObject:SetActive(true)
    self.end_pos_Btn.gameObject:SetActive(true)
    self.arrows_Btn.gameObject:SetActive(true)
    self.once_pos_Btn.gameObject:SetActive(false)
    self.retreatBtn.gameObject:SetActive(false)
    self.setBtnImage:SetActive(false)
    self.getBtnImage:SetActive(false)
    local prevTownStr = NationUtil.GetBuildingFormatNamePositionStr(nationArmyPath.startPos)
    local targetTownStr = NationUtil.GetBuildingFormatNamePositionStr(nationArmyPath.targetPos)
    self.teamStartPosition:SetText(prevTownStr)
    self.teamEndPosition:SetText(targetTownStr)

    if behaviorState == NationDefine.NATION_TEAM_BEHAVIOR_STATE.MOVETO or behaviorState == NationDefine.NATION_TEAM_BEHAVIOR_STATE.WAITING then
        self.teamListStatus:SetText(self.teamDetailST_TRANSFER)
        self:__SetStretchViewST(self.VIEW_ST.CENTER)
        self.returnNowBtn.gameObject:SetActive(false)
    elseif behaviorState == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BATTLE then
        self.teamListStatus:SetText(self.teamDetailST_BATTLE)
        self:__SetStretchViewST(self.VIEW_ST.CENTER)
        self.returnNowBtn.gameObject:SetActive(false)
    elseif behaviorState == NationDefine.NATION_TEAM_BEHAVIOR_STATE.BACK then
        self.teamListStatus:SetText(self.teamDetailST_BACK)
        self:__SetStretchViewST(self.VIEW_ST.DIAMOND)
        self.returnNowBtn.gameObject:SetActive(true)
    elseif behaviorState == NationDefine.NATION_TEAM_BEHAVIOR_STATE.COLLECT then
        self.teamListStatus:SetText(self.teamDetailST_COLLECT)
        self:__SetStretchViewST(self.VIEW_ST.CENTER)
        self.returnNowBtn.gameObject:SetActive(false)
    end
end

--设置玩家自己的队伍状态，可以撤退的非行动状态（驻守，攻城战中等）
local function __SetSpecialStateUI(self, marchData)
    local nationArmyPath = marchData.nationArmyPath
    self.start_pos_Btn.gameObject:SetActive(true)
    self.end_pos_Btn.gameObject:SetActive(true)
    self.arrows_Btn.gameObject:SetActive(true)
    self.once_pos_Btn.gameObject:SetActive(false)
    self.retreatBtn.gameObject:SetActive(true)
    self.returnNowBtn.gameObject:SetActive(false)
    self.setBtnImage:SetActive(false)
    self.getBtnImage:SetActive(false)
    local prevTownStr = NationUtil.GetBuildingFormatNamePositionStr(nationArmyPath.startPos)
    local targetTownStr = NationUtil.GetBuildingFormatNamePositionStr(nationArmyPath.targetPos)
    self.teamStartPosition:SetText(prevTownStr)
    self.teamEndPosition:SetText(targetTownStr)
    self:__SetStretchViewST(self.VIEW_ST.BIG)
end

local function CheckTimerStart(self, marchData)
    local endTime = -1
    local startTime = -1
    local nationArmyPath = marchData.nationArmyPath
    if marchData.isSelf then
        local behavior = nationArmyPath.currentBehavior
        local openCode = behavior.type
        local maxEndArmyTime = marchData.maxEndArmyTime
        local maxLastEndInJuryTime = marchData.maxLastEndInJuryTime
        if openCode == NationDefine.NATION_TEAM_BEHAVIOR_TYPE.STAY then
            if maxEndArmyTime <= -1 then
                -- 不在征募
                if maxLastEndInJuryTime <= -1 then
                    -- 不在负伤
                    -- 待命
                    endTime = -1
                else
                    -- 负伤
                    endTime = maxLastEndInJuryTime
                end
            else
                -- 征兵
                endTime = maxEndArmyTime
            end
        else
            if tonumber(behavior.endTime) <= 0 then
                endTime = -1
            else
                endTime = tonumber(behavior.endTime)
            end
        end
        startTime = behavior.startTime
    else
        startTime = nationArmyPath.startTime
        endTime = nationArmyPath.endTime
    end

    if endTime <= -1 then
        self.teamListStatusTime:SetText("")
    else
        local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
        if endTime - currentTime > 0 then
            self.timer = SyncTimer.New(SyncTimer.MODE_STEP, startTime,
                    500, false, self.OnTeamTimerCallback, { endTime = endTime, superSelf = self })
            self.timer:Start()
            local showTime = (endTime - currentTime) / 1000
            if showTime <= 0 then
                showTime = 0
            end
            local formatTime = os.date("%M:%S", math.modf(showTime))
            self.teamListStatusTime:SetText(formatTime)
        else
            self.teamListStatusTime:SetText("")
        end
    end
end

local function OnTeamTimerCallback(selfTimer, obj)
    local superSelf = obj.superSelf
    local endTime = obj.endTime
    local currentTime = TimeSyncManager:GetInstance():GetSimulationJavaMS()
    local showTime = (endTime - currentTime) / 1000
    local formatTime
    if currentTime > endTime then
        showTime = 0
        superSelf:DisposeTimer()
        formatTime = os.date("%M:%S", math.modf(showTime))
        superSelf.teamListStatusTime:SetText(formatTime)
    else
        formatTime = os.date("%M:%S", math.modf(showTime))
        superSelf.teamListStatusTime:SetText(formatTime)
    end
end

local function DisposeTimer(self)
    if self.timer ~= nil then
        self.timer:Stop()
        self.timer = nil
    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE, self.OnRefresh)
    self:AddUIListener(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE, self.OnCloseWindow)

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_UPDATE, self.OnRefresh)
    self:RemoveUIListener(UIMessageNames.ON_NATION_UNION_TEAM_SIDE_INFO_CLOSE, self.OnCloseWindow)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

local function OnCloseWindow(self)
    self.ctrl:CloseSelf()
end

local function __OpenDetailBtnPressed(self)
    local marchData = self.model.marchData
    if not marchData.isSelf then
        return
    end
    UIManager:GetInstance():OpenWindow(UIWindowNames.UINationTeamListInfo, marchData.nationArmyPath.teamId)
end

local function OnEnable(self)
    base.OnEnable(self)
    PlayUIOpenTween(self)
    self:OnRefresh()
end

local function OnDisable(self)
    base.OnDisable(self)
    if self.tweener_flag ~= nil then
        LuaTweener.StopTweener(self.tweener_flag)
        self.tweener_flag = nil
    end
    self:DisposeTimer()
end

local function SetBorderImgByCampIndex(self, img, campIndex)
    if campIndex == NationDefine.NATION_MARCH_CAMP_FLAG.SELF then
        img:SetSpriteName("ui_t_c2_521")
    elseif campIndex == NationDefine.NATION_MARCH_CAMP_FLAG.UNION then
        img:SetSpriteName("ui_t_c2_519")
    else
        img:SetSpriteName("ui_t_c2_520")
    end
end

UINationTeamSideInfoView.OnCreate = OnCreate
UINationTeamSideInfoView.OnEnable = OnEnable
UINationTeamSideInfoView.OnDisable = OnDisable

UINationTeamSideInfoView.OnRefresh = OnRefresh
UINationTeamSideInfoView.OnAddListener = OnAddListener
UINationTeamSideInfoView.OnRemoveListener = OnRemoveListener
UINationTeamSideInfoView.OnDestroy = OnDestroy
UINationTeamSideInfoView.OnCloseWindow = OnCloseWindow

UINationTeamSideInfoView.CheckTimerStart = CheckTimerStart
UINationTeamSideInfoView.OnTeamTimerCallback = OnTeamTimerCallback
UINationTeamSideInfoView.DisposeTimer = DisposeTimer
UINationTeamSideInfoView.__SetBattleStateUI = __SetBattleStateUI
UINationTeamSideInfoView.__SetSpecialStateUI = __SetSpecialStateUI
UINationTeamSideInfoView.__SetMoveToUI = __SetMoveToUI
UINationTeamSideInfoView.SetBorderImgByCampIndex = SetBorderImgByCampIndex
UINationTeamSideInfoView.__OpenDetailBtnPressed = __OpenDetailBtnPressed
UINationTeamSideInfoView.__SetStretchBackgroundTranY = __SetStretchBackgroundTranY
UINationTeamSideInfoView.__SetStretchViewST = __SetStretchViewST

UINationTeamSideInfoView.VIEW_ST = VIEW_ST

return UINationTeamSideInfoView
