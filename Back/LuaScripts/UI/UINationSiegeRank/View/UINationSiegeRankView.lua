--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UINationSiegeRankView = BaseClass("UINationSiegeRankView", UIBaseView)
local base = UIBaseView

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.mask_btn=self:AddComponent(UIButton,"mask")
    self.closeUIButton = self:AddComponent(UIButton, "top/close_UIButton")

    self.closeUIButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

     self.mask_btn:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)
    self.titleTextUIText = self:AddComponent(UIText, "top/titleText_UIText")
    self.armyNameUIText = self:AddComponent(UIText, "RankPanel/armyName_UIText")
    self.armyCaptainNameUIText = self:AddComponent(UIText, "RankPanel/armyCaptainName_UIText")

    self.rewardPanel = UIUtil.FindTrans(self.transform, "RewardPanel").gameObject
    self.rankPanel = UIUtil.FindTrans(self.transform, "RankPanel").gameObject

    --rewardPanel（首战奖励)
    self.all_menmber_title=self:AddComponent(UIText,"RewardPanel/AllMemberText")
    self.rank_title=self:AddComponent(UIText,"RewardPanel/RankText")
    self.first_kill_title=self:AddComponent(UIText,"RewardPanel/FirstKill")
    self.first_break_title=self:AddComponent(UIText,"RewardPanel/FirstBreak")--没破城
    --RankPanel
    self.army_title=self:AddComponent(UIText,"RankPanel/armyText")
    self.army_captain_title=self:AddComponent(UIText,"RankPanel/armyCaptainText")
    self.kill_title=self:AddComponent(UIText,"RankPanel/kill")
    self.break_title=self:AddComponent(UIText,"RankPanel/break")


    self.rewardItem = {}
    self.rewardKill = {}
    self.rewardBreak = {}
    for i = 1, 4 do
        self.rewardItem[i] = {}
        self.rewardItem[i].icon = self:AddComponent(UIImage, "RewardPanel/RewardGroup/rewardItem" .. i .. "/icon_UIImage" .. i, AtlasConfig.DynamicTex)
        self.rewardItem[i].text = self:AddComponent(UIText, "RewardPanel/RewardGroup/rewardItem" .. i .. "/name_UIText" .. i)
        self.rewardItem[i].obj = UIUtil.FindTrans(self.transform, "RewardPanel/RewardGroup/rewardItem" .. i).gameObject
        self.rewardItem[i].obj:SetActive(false)

        self.rewardKill[i] = {}
        self.rewardKill[i].countText = self:AddComponent(UIText, "RewardPanel/killRank/killItem" .. i .. "/killcount_UIText" .. i)
        self.rewardKill[i].icon = self:AddComponent(UIImage, "RewardPanel/killRank/killItem" .. i .. "/killicon" .. i, AtlasConfig.DynamicTex)
        self.rewardKill[i].text = self:AddComponent(UIText, "RewardPanel/killRank/killItem" .. i .. "/killText" .. i)

        self.rewardBreak[i] = {}
        self.rewardBreak[i].countText = self:AddComponent(UIText, "RewardPanel/breakRank/breakItem" .. i .. "/breakcount_UIText" .. i)
        self.rewardBreak[i].icon = self:AddComponent(UIImage, "RewardPanel/breakRank/breakItem" .. i .. "/breakicon" .. i, AtlasConfig.DynamicTex)
        self.rewardBreak[i].text = self:AddComponent(UIText, "RewardPanel/breakRank/breakItem" .. i .. "/breakText" .. i)
    end

    self.rankKill = {}
    self.breakKill = {}
    for i = 1, 3 do
        self.rankKill[i] = {}
        self.rankKill[i].name = self:AddComponent(UIText, "RankPanel/killRank/killPItem" .. i .. "/killName_UIText" .. i)
      --  self.rankKill[i].icon = self:AddComponent(UIImage, "RankPanel/killRank/killPItem" .. i .. "/killIcon" .. i)
        self.rankKill[i].score = self:AddComponent(UIText, "RankPanel/killRank/killPItem" .. i .. "/killScore_UIText" .. i)
        self.breakKill[i] = {}
        self.breakKill[i].name = self:AddComponent(UIText, "RankPanel/breakRank/breakPItem" .. i .. "/breakName_UIText" .. i)
      --  self.breakKill[i].icon = self:AddComponent(UIImage, "RankPanel/breakRank/breakPItem" .. i .. "/breakIcon" .. i)
        self.breakKill[i].score = self:AddComponent(UIText, "RankPanel/breakRank/breakPItem" .. i .. "/breakScore_UIText" .. i)
    end
end

local function OnEnable(self)
    base.OnEnable(self)

    if self.model.state == 1 then
        self.titleTextUIText:SetText(DataUtil.GetClientText(200153))

        self.rewardPanel:SetActive(true)
        self.rankPanel:SetActive(false)
        for k, v in ipairs(self.model.rewardItemList) do
            self.rewardItem[k].icon:SetSpriteName(v.icon)
            self.rewardItem[k].text:SetText(v.name .. v.count)
            self.rewardItem[k].obj:SetActive(true)
        end

        for k, v in ipairs(self.model.rewardKillRankList) do
            self.rewardKill[k].countText:SetText(v.count)
            self.rewardKill[k].icon:SetSpriteName(v.icon)
            self.rewardKill[k].text:SetText(v.name)
        end

        for k, v in ipairs(self.model.rewardBreakRankList) do
            self.rewardBreak[k].countText:SetText(v.count)
            self.rewardBreak[k].icon:SetSpriteName(v.icon)
            self.rewardBreak[k].text:SetText(v.name)
        end
    else
        self.titleTextUIText:SetText(DataUtil.GetClientText(200158))

        self.rankPanel:SetActive(true)
        self.rewardPanel:SetActive(false)
        self.armyNameUIText:SetText(self.model.rankList.armyName)
        self.armyCaptainNameUIText:SetText(self.model.rankList.playerName)
        for k, v in ipairs(self.model.rankList.killTab) do
            self.rankKill[k].name:SetText(v.name)
         --   self.rankKill[k].icon:SetSpriteName(v.icon)
            self.rankKill[k].score:SetText(v.score)
        end
        for k, v in ipairs(self.model.rankList.breakTab) do
            self.breakKill[k].name:SetText(v.name)
         --   self.breakKill[k].icon:SetSpriteName(v.icon)
            self.breakKill[k].score:SetText(v.score)
        end
    end
    self.all_menmber_title:SetText(DataUtil.GetClientText(200154))
    self.rank_title:SetText(DataUtil.GetClientText(200155))
    self.first_kill_title:SetText(DataUtil.GetClientText(200014))
    self.first_break_title:SetText(DataUtil.GetClientText(200156))
    self.army_title:SetText(DataUtil.GetClientText(200157))
    self.army_captain_title:SetText(DataUtil.GetClientText(200103))
    self.kill_title:SetText(DataUtil.GetClientText(200014))
    self.break_title:SetText(DataUtil.GetClientText(200156))

    self:OnRefresh()
end

local function OnRefresh(self)
    -- 各组件刷新

end

local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册

end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销

end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
end

UINationSiegeRankView.OnCreate = OnCreate
UINationSiegeRankView.OnEnable = OnEnable
UINationSiegeRankView.OnRefresh = OnRefresh
UINationSiegeRankView.OnAddListener = OnAddListener
UINationSiegeRankView.OnRemoveListener = OnRemoveListener
UINationSiegeRankView.OnDestroy = OnDestroy

return UINationSiegeRankView
