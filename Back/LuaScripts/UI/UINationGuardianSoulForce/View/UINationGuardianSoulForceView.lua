--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationGuardianSoulForceView = BaseClass("UINationGuardianSoulForceView", UIBaseView)
local base = UIBaseView
local UINationGuardianSoulForceItem = require "UI.UINationGuardianSoulForce.Component.UINationGuardianSoulForceItem"

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.mask_btn = self:AddComponent(UIButton, "mask")
    self.mask_btn:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)
    self.exitUIButton = self:AddComponent(UIButton, "Root/bgGroup/bglayer/exit_UIButton")
    -- 关闭页面按钮
    self.exitUIButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)
    self.armyGroupMainTitleLeftText = self:AddComponent(UIText, "Root/bgGroup/bglayer/bgTitleGroup/titleText")
    self.armyGroupMainTitleLeftText:SetText(DataUtil.GetClientText(200334)) --"军团"
    self.armyGroupMainTitleRightText = self:AddComponent(UIText, "Root/bgGroup/bglayer/bgTitleGroup/titleText/titleText (1)")
    self.armyGroupMainTitleRightText:SetText(DataUtil.GetClientText(200335)) -- "列表"
    self.unLockSoulForceUIText = self:AddComponent(UIText, "Root/bgGroup/unLockSoulForceText")
    self.unLockSoulForceUIText:SetText(DataUtil.GetClientText(200336)) -- "可解锁军团数量:"
    self.unLockSoulForceNumTextUIText = self:AddComponent(UIText, "Root/bgGroup/unLockSoulForceText/unLockSoulForceNumText_UIText")
    self.guardian_soulForce_view_content = self:AddComponent(UIWrapGroup3D, "Root/contentCenter/scrollRect/gridContent", UINationGuardianSoulForceItem)

    ---- 解锁军团组件

    self.holdBack_UIImage = self:AddComponent(UIButton, "Root/holdBack_UIImage")
    self.holdBack_UIImage:SetOnClick(function()
        --打开
        self.holdBackGroupGameObject:SetActive(true)
        self:__FlushHoldBack()
    end)

    self.holdBackGroupGameObject = UIUtil.FindTrans(self.transform, "Root/holdBackGroup").gameObject
    self.holdBgCloseUIButton = self:AddComponent(UIButton, "Root/holdBackGroup/holdBgClose")
    self.holdBgCloseUIButton:SetOnClick(function()
        --关闭
        self.holdBackGroupGameObject:SetActive(false)

    end)

    self.holdBackCloseButton = self:AddComponent(UIButton, "Root/holdBackGroup/Top/bgxiedi/bgTitle/holdBackCloseButton")
    self.holdBackCloseButton:SetOnClick(function()
        --关闭
        self.holdBackGroupGameObject:SetActive(false)
    end)

    self.kezhiTitle_UIText = self:AddComponent(UIText, "Root/holdBackGroup/Top/bgxiedi/bgTitle/kezhiTitle_UIText")
    self.kezhiTitle_UIText:SetText(DataUtil.GetClientText(200419))

    self.kezhiDesc_UIText = self:AddComponent(UIText, "Root/holdBackGroup/Top/kezhiDesc_UIText")
    --self.kezhiDesc_UIText:SetText("<color=#172435>对被克制军团造成伤害</color> <color=#3C8A3E>200%</color>")

    self.beikeDesc_UIText = self:AddComponent(UIText, "Root/holdBackGroup/Top/beikeDesc_UIText")
    --self.beikeDesc_UIText:SetText("<color=#172435>对被克制军团减伤</color> <color=#3C8A3E>20%</color>")

    self.centerBtnText = self:AddComponent(UIText, "Root/holdBackGroup/Top/centerBtn/centerBtnText")
    self.centerBtnText:SetText(self.model.CommonBoxConfirm)

    self.centerBtn = self:AddComponent(UIButton, "Root/holdBackGroup/Top/centerBtn")
    self.centerBtn:SetOnClick(function()
        --关闭
        self.holdBackGroupGameObject:SetActive(false)
    end)
    self.holdBackGroupGameObject:SetActive(false)
end

local function __OnCropsUpdate(self)
    self:FlushContentData(false)
end
---刷新军团列表
local function FlushContentData(self, needReset)
    self.unLockSoulForceNumTextUIText:SetText(self.model.unlock_army_group_number .. "/" .. self.model.unlock_army_group_maxnumber)
    self.unLockSoulForceUIText.gameObject:SetActive(self.model.open_type == NationDefine.NATION_GUARDIAN_OPEN_TYPE.MAIN_OPEN_TYPE)

    if self.model.armyGroupModelDatas ~= nil and table.count(self.model.armyGroupModelDatas) > 0 then
        self.guardian_soulForce_view_content:SetLength(table.count(self.model.armyGroupModelDatas))
        if needReset then
            self.guardian_soulForce_view_content:ResetToBeginning()
        else
            self.guardian_soulForce_view_content:WrapContent(true) -- 刷新选中
        end
    else
        self.guardian_soulForce_view_content:SetLength(0)
    end

end
local function __FlushHoldBack(self)
    if self.model.open_type == NationDefine.NATION_GUARDIAN_OPEN_TYPE.TEAM_OPEN_TYPE then
        -- 队伍打开
        self.kezhiDesc_UIText:SetText(string.format(self.model.kezhiDesc, self.model.counterAtk))
        self.beikeDesc_UIText:SetText(string.format(self.model.beiKeDesc, self.model.counterDef))
    else
        -- 主界面打开
        self.kezhiDesc_UIText:SetText(string.format(self.model.kezhiDesc, self.model.counterAtk))
        self.beikeDesc_UIText:SetText(string.format(self.model.beiKeDesc, self.model.counterDef))
    end
end

local function OnEnable(self)
    base.OnEnable(self)
    self:FlushContentData(true)

end

local function OnOneItemGuardianSoulBtnClick(self, _data)
    if _data == nil then
        return
    end
    --Logger.LogVars("OnOneItemGuardianSoulBtnClick _data : ",_data)

    --local selectCurrentCorpsId = _data.corpsId
    if self.model.open_type == NationDefine.NATION_GUARDIAN_OPEN_TYPE.TEAM_OPEN_TYPE then
        -- 点击了队伍 只能转换

        if _data.unlock_st == self.model.CROPS_LOCK_ST.NEVER_LOCK then
            -- 未解锁
            Logger.LogError(" 点击了队伍 只能转换 _data : ", _data)
            return
        end

        if NationTeamData:GetInstance():IsTeamHasCardById(self.model.teamId) then
            if not NationTeamData:GetInstance():IsTeamInStandBy(self.model.teamId) then
                UISpecial:GetInstance():UITipText(self.model.TeamNotInStandByContent)
                return
            end

            if NationTeamData:GetInstance():IsTeamCardConscriptionInTime(self.model.teamId) then
                UISpecial:GetInstance():UITipText(self.model.TeamInRecruitContent)
                return
            end
        else
        end

        -- 转化军团的逻辑 -- 先弹出提示框
        local openUIParams = { myCallback = Bind(self, function(self, teamId, corpsId, armyGroupId)
            if NationTeamData:GetInstance():IsTeamHasCardById(teamId) then
                if not NationTeamData:GetInstance():IsTeamInStandBy(teamId) then
                    UISpecial:GetInstance():UITipText(self.model.TeamNotInStandByContent)
                    return
                end

                if NationTeamData:GetInstance():IsTeamCardConscriptionInTime(teamId) then
                    UISpecial:GetInstance():UITipText(self.model.TeamInRecruitContent)
                    return
                end
            else
            end
            NationNetManager:GetInstance():SendConvertGuardRequest(teamId, corpsId, armyGroupId)
        end),
                               teamId = self.model.teamId, corpsId = _data.corpsId, armyGroupId = self.model.myTeamData.armyGroupId,
                               sourceArmyGroupIcon = self.model.myTeamData.staticCropData.Icon,
                               sourceArmyGroupName = self.model.myTeamData.staticCropData.Name,
                               targetArmyGroupIcon = _data.icon,
                               targetArmyGroupName = _data.name,
                               turnConsume = _data.turnConsume,
                               content_text = self.model.ArmyGroupConvertResContent,
                               content_title = self.model.ArmyGroupConvertResTitle,
        }
        UIManager:GetInstance():OpenWindow(UIWindowNames.UINationWithResTip,
                NationDefine.NATION_RESOURCE_TIP_WINDOW_TYPE.ARMY_GROUP_SWITCH,
                openUIParams
        )

        -- 点击解锁的按钮处理
    else
        -- 主界面点开的类型



        if _data.unlock_st == self.model.CROPS_LOCK_ST.NEVER_LOCK then
            -- 未解锁 解锁
            if self.model.unlock_army_group_number >= self.model.unlock_army_group_maxnumber then
                UISpecial:GetInstance():UITipText(self.model.TeamArmyGroupUnlockMaxCountContent)
                return
            else
                UIManager:GetInstance():OpenTwoButtonTip(self.model.CommonBoxTitle, self.model.TeamConfirmArmyGroupUnlockContent,
                        self.model.CommonBoxCancel, self.model.CommonBoxConfirm,
                        function()
                            UIManager:GetInstance():CloseTip()
                        end, Bind(self, function(self)
                            self:__OnConfirmBtnPressed(_data)
                        end))
            end
        else
            -- 重置消耗晶石数量
            if BackpackData:GetInstance():GetItemNumById(_data.reConsume[1].id) >= _data.reConsume[1].num then
                UIManager:GetInstance():OpenTwoButtonTip(self.model.CommonBoxTitle, self.model.TeamConfirmArmyGroupResetContent,
                        self.model.CommonBoxCancel, self.model.CommonBoxConfirm,
                        function()
                            UIManager:GetInstance():CloseTip()
                        end, Bind(self, function(self)
                            self:__OnConfirmBtnPressed(_data)
                        end))
            else
                UISpecial:GetInstance():UITipText(self.model.TeamConfirmArmyGroupResetNotEnoughResContent)
            end
        end
    end
end

local function __OnConfirmBtnPressed(self, _data)
    if self.model.open_type == NationDefine.NATION_GUARDIAN_OPEN_TYPE.MAIN_OPEN_TYPE then
        if _data.unlock_st == self.model.CROPS_LOCK_ST.NEVER_LOCK then
            -- 未解锁 解锁
            --Logger.LogError("__OnConfirmBtnPressed  _data.unlock_st  :",_data.unlock_st,"  vvv : 111111111111111111111")
            NationNetManager:GetInstance():SendGuardUnlockRequest(_data.corpsId)
        else
            --Logger.LogError("__OnConfirmBtnPressed  _data.unlock_st  :",_data.unlock_st,"  vvv : 222222222222222")
            local arrUserdTeamIds = NationTeamData:GetInstance():GetTeamIdsByArmyGroupId(_data.corpsId)
            if arrUserdTeamIds ~= nil then


                for i, v in ipairs(arrUserdTeamIds) do
                    if not NationTeamData:GetInstance():IsTeamInStandBy(v) then
                        UISpecial:GetInstance():UITipText(self.model.TeamNotInStandByArmyGroupResetContent)
                        return
                    end

                    if NationTeamData:GetInstance():IsTeamCardConscriptionInTime(v) then
                        UISpecial:GetInstance():UITipText(self.model.TeamNotInStandByArmyGroupResetContent)
                        return
                    end
                end
            end
            --_data.reConsume[1].id) >= _data.reConsume[1].num
            NationNetManager:GetInstance():SendGuardResetRequest(_data.corpsId, _data.reConsume)
        end
    else

    end
end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
    self:AddUIListener(UIMessageNames.UI_NATION_GUARDIAN_UPDATE, self.__OnCropsUpdate)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
    self:RemoveUIListener(UIMessageNames.UI_NATION_GUARDIAN_UPDATE, self.__OnCropsUpdate)
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationGuardianSoulForceView.OnCreate = OnCreate
UINationGuardianSoulForceView.OnEnable = OnEnable
UINationGuardianSoulForceView.OnAddListener = OnAddListener
UINationGuardianSoulForceView.OnRemoveListener = OnRemoveListener
UINationGuardianSoulForceView.OnDestroy = OnDestroy
UINationGuardianSoulForceView.FlushContentData = FlushContentData
UINationGuardianSoulForceView.OnOneItemGuardianSoulBtnClick = OnOneItemGuardianSoulBtnClick
UINationGuardianSoulForceView.__OnCropsUpdate = __OnCropsUpdate
UINationGuardianSoulForceView.__OnConfirmBtnPressed = __OnConfirmBtnPressed
UINationGuardianSoulForceView.__FlushHoldBack = __FlushHoldBack

return UINationGuardianSoulForceView
