---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by guoyu.
--- DateTime: 2019/6/19 10:55
---


local UINationAllianceMyMessagePanel = BaseClass("UINationAllianceMyMessagePanel", UIBaseContainer)
local base = UIBaseContainer

local utf8 = require("Common.Tools.utf8")

--信息界面
local aliance_name_path = "AlianceName"
local aliance_lv_num = "AlianceLvNum";--*
local leader_name_path = "mengzhuName"
local leader_name_line_path = "mengzhuName/mengzhuNameLine"
local member_value_path = "memberNum"
local area_value_path = "haveManorNum"
local belong_path = "arenaName"
local shili_path = "shiliValue"
local notice_text_path = "contentGrid/noticeItem/AlianceNoticeField"
local occupy_res_path = "contentGrid/occupyItem/ResBuff/"
local modification_btn_path = "contentGrid/noticeItem/modificationBtn"
local lv_path = "AlianceLv"
local lv_value_path = "LvBg/Exp"
local lv_img_path = "LvBg"
local donate_btn_path = "DonateBtn"

local function OnCreate(self, view)
    base.OnCreate(self)
    self.view = view
    self.model = view.model
    self.ctrl = view.ctrl

    --信息界面
    self.alianceNameText = self:AddComponent(UIText, aliance_name_path)
    self.leaderNameText = self:AddComponent(UIText, leader_name_path)
    self.leaderNameLineText = self:AddComponent(UIText, leader_name_line_path)
    self.leaderNameBtn = self:AddComponent(UIButton, leader_name_path)
    self.leaderNameBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.ctrl:OnLeaderNameBtnPressed()
    end);
    self.memberValueText = self:AddComponent(UIText, member_value_path)
    self.areaValueText = self:AddComponent(UIText, area_value_path)
    self.belongText = self:AddComponent(UIText, belong_path)
    self.shiliText = self:AddComponent(UIText, shili_path)
    self.aliance_lv = self:AddComponent(UIText, aliance_lv_num);--*
    self.noticeTitleText = self:AddComponent(UIText, "contentGrid/noticeItem/noticeText")
    self.noticeTitleText:SetText(DataUtil.GetClientText(200263))
    self.noticeInputPlaceholder = self:AddComponent(UIText, "contentGrid/noticeItem/AlianceNoticeField/Placeholder")
    self.noticeInputPlaceholder:SetText(DataUtil.GetClientText(200264))
    self.noticeText = self:AddComponent(UIInput, notice_text_path)
    self.noticeText:SetEndEdit(function(text)
        self.ctrl:OnSubmitNoticeContent(text)
    end)

    self.additionalText = self:AddComponent(UIText, "contentGrid/additionalItem/additionalText")
    self.additionalText:SetText(DataUtil.GetClientText(200265))
    self.allResAddValueText = {}
    table.insert(self.allResAddValueText,
            self:AddComponent(UIText, "contentGrid/additionalItem/allRes/silverWoodResourcesImage_UIImage/silverWoodResourcesAddValue_UIText"))
    table.insert(self.allResAddValueText,
            self:AddComponent(UIText, "contentGrid/additionalItem/allRes/hematiteResourcesImage_UIImage/hematiteResourcesResourcesAddValue_UIText"))
    table.insert(self.allResAddValueText,
            self:AddComponent(UIText, "contentGrid/additionalItem/allRes/refinedStoneResourcesImage_UIImage/refinedStoneResourcesAddValue_UIText"))
    table.insert(self.allResAddValueText,
            self:AddComponent(UIText, "contentGrid/additionalItem/allRes/lingguResourcesImage_UIImage/lingguResourcesAddValue_UIText"))
    self.allResAddValueImage = {}
    table.insert(self.allResAddValueImage,
            self:AddComponent(UIImage, "contentGrid/additionalItem/allRes/silverWoodResourcesImage_UIImage", AtlasConfig.DynamicTex))
    table.insert(self.allResAddValueImage,
            self:AddComponent(UIImage, "contentGrid/additionalItem/allRes/hematiteResourcesImage_UIImage", AtlasConfig.DynamicTex))
    table.insert(self.allResAddValueImage,
            self:AddComponent(UIImage, "contentGrid/additionalItem/allRes/refinedStoneResourcesImage_UIImage", AtlasConfig.DynamicTex))
    table.insert(self.allResAddValueImage,
            self:AddComponent(UIImage, "contentGrid/additionalItem/allRes/lingguResourcesImage_UIImage", AtlasConfig.DynamicTex))

    --占领加成
    self.occupyText = self:AddComponent(UIText, "contentGrid/occupyItem/occupyText")
    self.occupyText:SetText(DataUtil.GetClientText(200266))
    self.occupyEmptyObj = UIUtil.FindTrans(self.transform, "contentGrid/occupyItem/occupyEmpty").gameObject
    self.occupyEmptyText = self:AddComponent(UIText, "contentGrid/occupyItem/occupyEmpty/occupyEmptyText")
    self.occupyEmptyText:SetText(DataUtil.GetClientText(200267))
    self.occupyBuffList = {}
    for i = 1, 4 do
        self.occupyBuffList[i] = {}
        self.occupyBuffList[i].icon = self:AddComponent(UIImage, occupy_res_path .. "Item" .. i .. "/ResIcon" .. i, AtlasConfig.DynamicTex)
        self.occupyBuffList[i].value = self:AddComponent(UIText, occupy_res_path .. "Item" .. i .. "/ResValue" .. i)
        self.occupyBuffList[i].obj = UIUtil.FindTrans(self.transform, occupy_res_path .. "Item" .. i).gameObject
    end

    self.lvText = self:AddComponent(UIText, lv_path)
    self.lvText:SetText(DataUtil.GetClientText(200268))
    self.memberText = self:AddComponent(UIText, "MemberText")
    self.memberText:SetText(DataUtil.GetClientText(200104))
    self.haveManorText = self:AddComponent(UIText, "haveManor")
    self.haveManorText:SetText(DataUtil.GetClientText(200105))
    self.arenaText = self:AddComponent(UIText, "Arena")
    self.arenaText:SetText(DataUtil.GetClientText(200106))
    self.shiliTitleText = self:AddComponent(UIText, "Shili")
    self.shiliTitleText:SetText(DataUtil.GetClientText(200107))
    self.mengzhuText = self:AddComponent(UIText, "mengzhuText")
    self.mengzhuText:SetText(DataUtil.GetClientText(200103))

    self.lvValueText = self:AddComponent(UIText, lv_value_path)
    self.lv_Slider = self:AddComponent(UISlider, lv_img_path)

    --捐献按钮，暂时屏蔽
    --[[
        self.donateBtnText = self:AddComponent(UIText, "DonateBtn/DonateBtnText")--暂时屏蔽
        self.donateBtnText:SetText("捐献")
        self.donateBtn = self:AddComponent(UIButton, donate_btn_path)--暂时屏蔽
        self.donateBtn:SetOnClick(function()
            LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")

        end)
        --暂时屏蔽
        self.donateBtn.gameObject:SetActive(false)
    --]]
    self.modificationBtn = self:AddComponent(UIButton, modification_btn_path)
    self.modificationObj = self.modificationBtn.gameObject
    self.modificationBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.noticeText:ActivateInputField()
        self.noticeText:MoveTextEnd(false)
    end)
end


--设置信息界面信息
local function __FlushMyNationMessageLayout(self)
    if self.model.unionId == 0 then
        return
    end

    local myNationUnion = self.model.myNationUnion
    local myUnionMember = self.model.myUnionMember

    if myUnionMember.positionData.ChangeNotice == nil then
        self.modificationObj:SetActive(false)
        self.noticeText:SetInteractable(false)

    else
        self.modificationObj:SetActive(true)
        self.noticeText:SetInteractable(true)
    end

    self.alianceNameText:SetText(myNationUnion.name)
    self.leaderNameText:SetText(myNationUnion.leaderName)
    --显示名字下面的横线
    local nameLen = utf8.charactersLength(myNationUnion.leaderName)
    local lineStr = ""
    for i = 1, nameLen do
        lineStr = lineStr .. "_"
    end
    self.leaderNameLineText:SetText(lineStr)

    local currentNationalUnionLevelData = myNationUnion.currentNationalUnionLevelData
    self.memberValueText:SetText(string.format("%s/%s", myNationUnion.members, currentNationalUnionLevelData.Member))
    self.areaValueText:SetText(myNationUnion.citys)
    self.belongText:SetText(myNationUnion.regionData.Name)
    self.shiliText:SetText(myNationUnion.force)
    self.aliance_lv:SetText(string.format("<color=#294d5d>%s</color>", myNationUnion.level));--*
    local usedNationalUnionLevelData = nil
    if myNationUnion.nextNationalUnionLevelData == nil then
        usedNationalUnionLevelData = currentNationalUnionLevelData
    else
        usedNationalUnionLevelData = myNationUnion.nextNationalUnionLevelData
    end

    self.lvValueText:SetText(string.format("%d/%d", myNationUnion.exp, usedNationalUnionLevelData.Exp))
    self.lv_Slider:SetValue(myNationUnion.exp / usedNationalUnionLevelData.Exp)
    self.noticeText:SetText(myNationUnion.notice)
    --联盟加成
    for k, v in ipairs(self.model.myNationAddition) do
        self.allResAddValueText[k]:SetText(v.content)
        self.allResAddValueImage[k]:SetSpriteName(v.resIcon)
    end

    --占领加成
    self.occupyEmptyObj:SetActive(#self.model.occupyBuff <= 0)
    for k, v in pairs(self.occupyBuffList) do
        local data = self.model.occupyBuff[k]
        if data ~= nil then
            v.icon:SetSpriteName(data.resImage)
            v.value:SetText(string.format(DataUtil.GetClientText(200269), data.name, data.value))
            v.obj:SetActive(true)
        else
            v.obj:SetActive(false)
        end
    end
end

local function OnEnable(self)
    base.OnEnable(self)
    self.noticeText:SetCharacterLimit(self.model.NoticeLimit)
    self:__FlushMyNationMessageLayout()
end

local function OnDisable(self)
    base.OnDisable(self)

end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)

end

UINationAllianceMyMessagePanel.OnCreate = OnCreate
UINationAllianceMyMessagePanel.OnEnable = OnEnable
UINationAllianceMyMessagePanel.OnDisable = OnDisable
UINationAllianceMyMessagePanel.OnDestroy = OnDestroy
UINationAllianceMyMessagePanel.__FlushMyNationMessageLayout = __FlushMyNationMessageLayout

return UINationAllianceMyMessagePanel