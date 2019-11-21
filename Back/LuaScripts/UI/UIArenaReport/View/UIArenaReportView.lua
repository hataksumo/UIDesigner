--[[
-- 视图层
-- 注意：
-- 1、成员变量最好预先在OnCreate函数声明，提高代码可读性
-- 2、OnEnable函数每次在窗口打开时调用，直接刷新
-- 3、组件命名参考代码规范
--]]

local UIArenaReportView = BaseClass("UIArenaReportView", UIBaseView)
local base = UIBaseView
local GameObject = CS.UnityEngine.GameObject
local panelPath = "InfoPanel/ScrollRect/Grid/"

local function LoadRawImg(path, rawImage)
    local imagePath = "Art/UI_3D/Textures/" .. path .. ".png"
    ResourcesManager:GetInstance():LoadAsync(imagePath, typeof(CS.UnityEngine.Texture), function(texture)
        rawImage.texture = texture
    end)
end

local function OnCreate(self)
    base.OnCreate(self)
    -- 初始化各个组件
    self.closeMask = self:AddComponent(UIButton,"BgRoot/MaskBtn")
    self.closeMask:SetOnClick(function ()
        self.ctrl:CloseSelf()
    end)
    self.closeUIButton = self:AddComponent(UIButton, "BgRoot/close_UIButton")
    self.closeUIButton:SetOnClick(function()
        self.ctrl:CloseSelf()
    end)

    --玩家信息面板
    self.LPHead_UIImage = self:AddComponent(UIImage, panelPath .. "PlayerInfoPanel/leftPlayer/bg/headIconL", AtlasConfig.DynamicTex)
    self.LPHeadBG_UIImage = self:AddComponent(UIImage, panelPath .. "PlayerInfoPanel/leftPlayer/bg/headBGL", AtlasConfig.DynamicTex)
    self.LPName_UIText = self:AddComponent(UIText, panelPath .. "PlayerInfoPanel/leftPlayer/NameL")
    self.LPGroup_UIText = self:AddComponent(UIText, panelPath .. "PlayerInfoPanel/leftPlayer/NameL/warGroupL")
    self.LPAttack_UIText = self:AddComponent(UIText, panelPath .. "PlayerInfoPanel/leftPlayer/attackValueL")

    self.RPHead_UIImage = self:AddComponent(UIImage, panelPath .. "PlayerInfoPanel/rightPlayer/bg/headIconR", AtlasConfig.DynamicTex)
    self.RPHeadBG_UIImage = self:AddComponent(UIImage, panelPath .. "PlayerInfoPanel/rightPlayer/bg/headBGR", AtlasConfig.DynamicTex)
    self.RPName_UIText = self:AddComponent(UIText, panelPath .. "PlayerInfoPanel/rightPlayer/NameR")
    self.RPGroup_UIText = self:AddComponent(UIText, panelPath .. "PlayerInfoPanel/rightPlayer/NameR/warGroupR")
    self.RPAttack_UIText = self:AddComponent(UIText, panelPath .. "PlayerInfoPanel/rightPlayer/attackValueR")

    --玩家队伍信息面板
    local tempPath = panelPath .. "TeamInfoPanel/leftTeamPanel/"
    self.leftTeamTab = {}
    for i = 1, 6 do
        self.leftTeamTab[i] = {}
        self.leftTeamTab[i].emptyObj = UIUtil.FindTrans(self.transform, tempPath .. "leftItem" .. i .. "/EmptyL" .. i).gameObject
        self.leftTeamTab[i].humanObj = UIUtil.FindTrans(self.transform, tempPath .. "leftItem" .. i .. "/humanL" .. i).gameObject
        self.leftTeamTab[i].icon = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.UI.RawImage), tempPath .. "leftItem" .. i .. "/humanL" .. i .. "/iconL" .. i)
        self.leftTeamTab[i].iconBG = self:AddComponent(UIImage, tempPath .. "leftItem" .. i .. "/humanL" .. i .. "/iconbgL" .. i, AtlasConfig.DynamicTex)
        self.leftTeamTab[i].quality = self:AddComponent(UIImage, tempPath .. "leftItem" .. i .. "/humanL" .. i .. "/qualityL" .. i, AtlasConfig.DynamicTex)
        self.leftTeamTab[i].level = self:AddComponent(UIText, tempPath .. "leftItem" .. i .. "/humanL" .. i .. "/levelL" .. i)

        self.leftTeamTab[i].star = {}
        for j = 1, 5 do
            self.leftTeamTab[i].star[j] = self:AddComponent(UIImage, tempPath .. "leftItem" .. i .. "/humanL" .. i .. "/starObj/Star_L" .. i .. j, AtlasConfig.DynamicTex)
        end
    end

    tempPath = panelPath .. "TeamInfoPanel/rightTeamPanel/"
    self.rightTeamTab = {}
    for i = 1, 6 do
        self.rightTeamTab[i] = {}
        self.rightTeamTab[i].emptyObj = UIUtil.FindTrans(self.transform, tempPath .. "rightItem" .. i .. "/EmptyR" .. i).gameObject
        self.rightTeamTab[i].humanObj = UIUtil.FindTrans(self.transform, tempPath .. "rightItem" .. i .. "/humanR" .. i).gameObject
        self.rightTeamTab[i].icon = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.UI.RawImage), tempPath .. "rightItem" .. i .. "/humanR" .. i .. "/iconR" .. i)
        self.rightTeamTab[i].iconBG = self:AddComponent(UIImage, tempPath .. "rightItem" .. i .. "/humanR" .. i .. "/iconbgR" .. i, AtlasConfig.DynamicTex)
        self.rightTeamTab[i].quality = self:AddComponent(UIImage, tempPath .. "rightItem" .. i .. "/humanR" .. i .. "/qualityR" .. i, AtlasConfig.DynamicTex)
        self.rightTeamTab[i].level = self:AddComponent(UIText, tempPath .. "rightItem" .. i .. "/humanR" .. i .. "/levelR" .. i)

        self.rightTeamTab[i].star = {}
        for j = 1, 5 do
            self.rightTeamTab[i].star[j] = self:AddComponent(UIImage, tempPath .. "rightItem" .. i .. "/humanR" .. i .. "/starObj/Star_R" .. i .. j, AtlasConfig.DynamicTex)
        end
    end

    --战斗记录面板
    --self.text_parent = UIUtil.FindTrans(self.transform, panelPath .. "TextInfoPanel/Image/Grid")
    --self.text_child = UIUtil.FindTrans(self.transform, panelPath .. "TextInfoPanel/info_UIText")
    self.text_child = self:AddComponent(UIText, panelPath .. "TextInfoPanel")
    self.unity_text = UIUtil.FindText(self.transform, panelPath .. "TextInfoPanel")
    self.textRectTrans = UIUtil.FindComponent(UIUtil.FindTrans(self.transform, panelPath .. "TextInfoPanel"), typeof(CS.UnityEngine.RectTransform))
    self.textSizeDelta = self.textRectTrans.sizeDelta
end

local function OnEnable(self)
    base.OnEnable(self)

    --if self.model.report_info_A ~= nil and #self.model.report_info_A > 0 then
    --    self.text_parent.gameObject:SetActive(true)
    --    UIUtil.FindComponent(self.text_parent, typeof(CS.UnityEngine.RectTransform)).anchoredPosition3D = Vector3.New(0, 0, 0)
    --    local child_count = self.text_parent.childCount
    --    local add = #self.model.report_info_A - child_count
    --    for i = 1, add do
    --        local new_pre = GameObject.Instantiate(self.text_child).transform
    --        new_pre:SetParent(self.text_parent)
    --        new_pre.localScale = Vector3.New(1, 1, 1)
    --        UIUtil.FindComponent(new_pre, typeof(CS.UnityEngine.RectTransform)).anchoredPosition3D = Vector3.New(0, 0, 0)
    --        child_count = child_count + 1
    --    end
    --    for i = 0, child_count - 1 do
    --        local child_trans = self.text_parent:GetChild(i)
    --        if i < #self.model.report_info_A then
    --            child_trans.gameObject:SetActive(true)
    --            UIUtil.FindText(child_trans).text = self.model.report_info_A[i + 1]
    --        else
    --            child_trans.gameObject:SetActive(false)
    --        end
    --    end
    --end

    --玩家信息
    local leftPlayerData = self.model.leftPlayerData
    self.LPHead_UIImage:SetSpriteName(leftPlayerData.head)
    self.LPHeadBG_UIImage:SetSpriteName(leftPlayerData.headBG)
    self.LPName_UIText:SetText(leftPlayerData.name)
    self.LPGroup_UIText:SetText(leftPlayerData.group)
    self.LPAttack_UIText:SetText(leftPlayerData.attackVal)

    local rightPlayerData = self.model.rightPlayerData
    self.RPHead_UIImage:SetSpriteName(rightPlayerData.head)
    self.RPHeadBG_UIImage:SetSpriteName(rightPlayerData.headBG)
    self.RPName_UIText:SetText(rightPlayerData.name)
    self.RPGroup_UIText:SetText(rightPlayerData.group)
    self.RPAttack_UIText:SetText(rightPlayerData.attackVal)

    --玩家队伍信息
    for i = 1, 6 do
        local itemData = self.model.leftTeamDataList[i]
        if itemData == nil then
            self.leftTeamTab[i].humanObj:SetActive(false)
            self.leftTeamTab[i].emptyObj:SetActive(true)
        else
            self.leftTeamTab[i].humanObj:SetActive(true)
            self.leftTeamTab[i].emptyObj:SetActive(false)

            LoadRawImg(itemData.icon, self.leftTeamTab[i].icon)
            --self.leftTeamTab[i].icon:SetSpriteName(itemData.icon)

            self.leftTeamTab[i].iconBG:SetSpriteName(itemData.iconBg)
            self.leftTeamTab[i].quality:SetSpriteName(itemData.quality)
            self.leftTeamTab[i].level:SetText(itemData.level)

            for j = 1, 5 do
                if j <= itemData.starLevel then
                    self.leftTeamTab[i].star[j]:SetSpriteName(SpriteDefine.Card_star_light)
                else
                    self.leftTeamTab[i].star[j]:SetSpriteName(SpriteDefine.Card_star_gray)
                end
            end
        end

        local itemData = self.model.rightTeamDataList[i]
        if itemData == nil then
            self.rightTeamTab[i].humanObj:SetActive(false)
            self.rightTeamTab[i].emptyObj:SetActive(true)
        else
            self.rightTeamTab[i].humanObj:SetActive(true)
            self.rightTeamTab[i].emptyObj:SetActive(false)

            LoadRawImg(itemData.icon, self.rightTeamTab[i].icon)
            --self.rightTeamTab[i].icon:SetSpriteName(itemData.icon)

            self.rightTeamTab[i].iconBG:SetSpriteName(itemData.iconBg)
            self.rightTeamTab[i].quality:SetSpriteName(itemData.quality)
            self.rightTeamTab[i].level:SetText(itemData.level)

            for j = 1, 5 do
                if j <= itemData.starLevel then
                    self.rightTeamTab[i].star[j]:SetSpriteName(SpriteDefine.Card_star_light)
                else
                    self.rightTeamTab[i].star[j]:SetSpriteName(SpriteDefine.Card_star_gray)
                end
            end
        end
    end

    --战斗记录
    self.text_child:SetText(self.model.report_info_data)
    --计算文本的大小
    local height = UIUtil.GetTextHeight(self.unity_text, self.model.report_info_data)
    self.textRectTrans.sizeDelta = Vector2.New(self.textSizeDelta.x, self.textSizeDelta.y + height)
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

    self.textSizeDelta = nil
end

UIArenaReportView.OnCreate = OnCreate
UIArenaReportView.OnEnable = OnEnable
UIArenaReportView.OnAddListener = OnAddListener
UIArenaReportView.OnRemoveListener = OnRemoveListener
UIArenaReportView.OnDestroy = OnDestroy

return UIArenaReportView
