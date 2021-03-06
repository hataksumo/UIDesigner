---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/5/6 10:34
---

local UICardStarUpComponent = BaseClass("UICardStarUpComponent", UIBaseContainer);
local base = UIBaseContainer;
local UIMatButton = require "UI.UIComm.Component.UIMatButton"
local star_effect_layout_path = "StarEffectLayout/StarEffect";
local star_attr_layout_path = "StarAttrLayout/StarAttr";
local item_group_path = "CostLayout/ItemGroup";
local up_star_btn_path = "CostLayout/starUpBtn";
local cur_star_group_path = "StarEffectLayout/StarEffect/StarObj/curStarObj";
local next_star_group_path = "StarEffectLayout/StarEffect/StarObj/nextStarObj";

local max_obj_path = "MaxObj";
local tip_open_btn_path = "StarAttrLayout/helpBtn";

local function OnCreate(self, _holderSelf)
    base.OnCreate(self);
    self.parent = _holderSelf
    self:AddComponent(UIText, "deblockBtn (1)/start_name"):SetText("升 星")
    self.maxObj = UIUtil.FindTrans(self.transform, max_obj_path);
    self:AddComponent(UIText, "MaxObj/contnet"):SetText("已达最大星级")
    self:AddComponent(UIText,"CostLayout/title3/title3_name"):SetText("升级消耗")
    self.starEffectLayout = self:AddComponent(UIBaseContainer, star_effect_layout_path);
    self.starAttrLayout = self:AddComponent(UIBaseContainer, star_attr_layout_path);
    self.itemGroup = self:AddComponent(UIBaseContainer, item_group_path);
    self.tipOpenBtn = self:AddComponent(UIButton, tip_open_btn_path);
    self.tipOpenBtn:SetOnClick(function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
        UIManager:GetInstance():OpenWindow(UIWindowNames.UICardUpStarTip, self.parent.model.select_card_id);
    end)
    self.upStarBtn = UIMatButton.New(self, up_star_btn_path)
    self.upStarBtn:OnCreate()

    self.starGroup = self:AddComponent(UIBaseContainer, cur_star_group_path);
    self.starList = {};
    for i = 1, 5 do
        table.insert(self.starList, self:AddComponent(UIImage, cur_star_group_path .. "/Image" .. i, AtlasConfig.DynamicTex));
    end
    self.fullObj = UIUtil.FindTrans(self.transform, "StarEffectLayout/StarEffect/StarObj/fullObj")
    self.nextStarGroup = self:AddComponent(UIBaseContainer, next_star_group_path);
    self.nextStarList = {};
    for i = 6, 10 do
        table.insert(self.nextStarList, self:AddComponent(UIImage, next_star_group_path .. "/Image" .. i, AtlasConfig.DynamicTex));
    end
    self.StarUpObj = UIUtil.FindTrans(self.transform, "StarEffectLayout/StarEffect/StarObj/green arrow")
    self.StarAni = self.StarUpObj:GetComponent(typeof(CS.UnityEngine.Animator))
    self.addAttList = {};
    for i = 1, 4 do
        local singleItem = self.starEffectLayout:AddComponent(UIBaseContainer, i);
        local nameText = singleItem:AddComponent(UIText, "addName");
        local curValueText = singleItem:AddComponent(UIText, "addValue");
        local nextValueText = singleItem:AddComponent(UIText, "nextAddValue");
        local UpObj = singleItem:AddComponent(UIBaseContainer, "green arrow");
        local UpAni = UpObj.transform:GetComponent(typeof(CS.UnityEngine.Animator))
        table.insert(self.addAttList, { nameTxt = nameText, curValTxt = curValueText, nextValTxt = nextValueText, anim = UpAni });
    end
    self.shareAttList = {};
    for i = 0, 2 do
        local tempItem = self.starAttrLayout:AddComponent(UIBaseContainer, i);
        local nameText = tempItem:AddComponent(UIText, "attName");
        local curValueText = tempItem:AddComponent(UIText, "attValue");
        local nextValueText = tempItem:AddComponent(UIText, "nextAttValue");
        local UpObj = tempItem:AddComponent(UIBaseContainer, "green arrow");
        local UpAni = UpObj.transform:GetComponent(typeof(CS.UnityEngine.Animator))
        table.insert(self.shareAttList, { nameTxt = nameText, curValTxt = curValueText, nextValTxt = nextValueText, anim = UpAni });
    end
    self.costItemList = {};
    local count = self.itemGroup.transform.childCount;
    for i = 0, count - 1 do
        local tempItem = self.itemGroup:AddComponent(UIBaseContainer, i);
        local btn = tempItem:AddComponent(UIButton, "Icon")
        local tempIcon = tempItem:AddComponent(UIImage, "Icon", AtlasConfig.DynamicTex);
        local tempFrame = tempItem:AddComponent(UIImage, "", AtlasConfig.DynamicTex);
        local chipImg = tempItem:AddComponent(UIImage, "chipImg", AtlasConfig.DynamicTex);
        local tempTxt = tempItem:AddComponent(UIText, "chipNum");
        table.insert(self.costItemList, { goObj = tempFrame.gameObject, btn = btn, icon = tempIcon, frame = tempFrame, chip = chipImg, numTxt = tempTxt });
    end
    self.canbtn = true
    self:OnRefresh()

end



--刷新
local function OnRefresh(self)
    self.showCardId = self.parent.model.select_card_id
    if self.parent.model.upStarFinalData ~= nil then
        local curData = self.parent.model.upStarFinalData;
        self.curData = curData;
        UIUtil.SetHeroStar(curData.curStar, self.starList);
        if curData.curStar < curData.maxStar then
            if not self.nextStarGroup.gameObject.activeInHierarchy then
                self.nextStarGroup.gameObject:SetActive(true)
            end
            UIUtil.SetHeroStar(curData.nextStar, self.nextStarList);
            self.fullObj.gameObject:SetActive(false)
        else
            if self.nextStarGroup.gameObject.activeInHierarchy then
                self.nextStarGroup.gameObject:SetActive(false)
            end
            self.fullObj.gameObject:SetActive(true)
        end

        --升星加成
        if self.canbtn then
            for i, v in ipairs(self.addAttList) do
                v.nameTxt:SetText(curData.effectList[i]);
                if i == 1 then
                    v.curValTxt:SetText(curData.curstar_value.UpHP[curData.curStar] .. "(" .. curData.curstar_data.HPEv.Desc .. ")");
                    v.nextValTxt:SetText(curData.nextstar_data == "满级" and curData.nextstar_data or (curData.nextstar_value.UpHP[curData.nextStar] .. "(" .. curData.nextstar_data.HPEv.Desc .. ")"));
                elseif i == 2 then
                    v.curValTxt:SetText(curData.curstar_value.UpAtk[curData.curStar] .. "(" .. curData.curstar_data.AtkEv.Desc .. ")");
                    v.nextValTxt:SetText(curData.nextstar_data == "满级" and curData.nextstar_data or (curData.nextstar_value.UpAtk[curData.nextStar] .. "(" .. curData.nextstar_data.AtkEv.Desc .. ")"));
                elseif i == 3 then
                    v.curValTxt:SetText(curData.curstar_value.UpDef[curData.curStar] .. "(" .. curData.curstar_data.DefEv.Desc .. ")");
                    v.nextValTxt:SetText(curData.nextstar_data == "满级" and curData.nextstar_data or (curData.nextstar_value.UpDef[curData.nextStar] .. "(" .. curData.nextstar_data.DefEv.Desc .. ")"));
                else
                    v.curValTxt:SetText(curData.curBasePropAll);
                    v.nextValTxt:SetText(curData.nextBasePropAll);
                end
            end
            for i, v in ipairs(self.shareAttList) do
                if curData.shareAttList[i] ~= nil then
                    v.nameTxt:SetText(curData.shareAttList[i].name);
                    v.curValTxt:SetText(curData.shareAttList[i].curVal);
                    v.nextValTxt:SetText(curData.shareAttList[i].nextVal);
                end
            end
            if self.TitleEffect ~= nil then
                self.TitleEffect.effect.gameObject:SetActive(false)
            end
            if self.ShareEffect ~= nil then
                self.ShareEffect.effect.gameObject:SetActive(false)
            end
            if self.CostEffect ~= nil then
                self.CostEffect.effect.gameObject:SetActive(false)
            end
        else
            self.StarAni:Play("FX_ui_c_green arrow")
            for i, v in ipairs(self.addAttList) do
                v.nameTxt:SetText(curData.effectList[i]);
                if i == 1 then
                    v.curValTxt:SetText(curData.curstar_value.UpHP[curData.curStar] .. "(" .. curData.curstar_data.HPEv.Desc .. ")");
                    v.nextValTxt:SetText(curData.nextstar_data == "满级" and curData.nextstar_data or (curData.nextstar_value.UpHP[curData.nextStar] .. "(" .. curData.nextstar_data.HPEv.Desc .. ")"));
                elseif i == 2 then
                    v.curValTxt:SetText(curData.curstar_value.UpAtk[curData.curStar] .. "(" .. curData.curstar_data.AtkEv.Desc .. ")");
                    v.nextValTxt:SetText(curData.nextstar_data == "满级" and curData.nextstar_data or (curData.nextstar_value.UpAtk[curData.nextStar] .. "(" .. curData.nextstar_data.AtkEv.Desc .. ")"));
                elseif i == 3 then
                    v.curValTxt:SetText(curData.curstar_value.UpDef[curData.curStar] .. "(" .. curData.curstar_data.DefEv.Desc .. ")");
                    v.nextValTxt:SetText(curData.nextstar_data == "满级" and curData.nextstar_data or (curData.nextstar_value.UpDef[curData.nextStar] .. "(" .. curData.nextstar_data.DefEv.Desc .. ")"));
                else
                    v.curValTxt:SetText(curData.curBasePropAll);
                    v.nextValTxt:SetText(curData.nextBasePropAll);
                end
                v.anim:Play("FX_ui_c_green arrow")
            end
            if curData.cardType == 1 then
                for i, v in ipairs(self.shareAttList) do
                    if curData.shareAttList[i] ~= nil then
                        v.nameTxt:SetText(curData.shareAttList[i].name);
                        v.curValTxt:SetText(curData.shareAttList[i].curVal);
                        v.nextValTxt:SetText(curData.shareAttList[i].nextVal);
                        v.anim:Play("FX_ui_c_green arrow")
                    end
                end
            end
            self.canbtn = true
        end

        --升星共享属性加成
        self.starAttrLayout.transform.parent.gameObject:SetActive(curData.cardType == 1);


        --花费物品
        for i, v in ipairs(self.costItemList) do
            v.goObj:SetActive(curData.costItems[i] ~= nil);
            if curData.costItems[i] ~= nil then
                v.icon:SetSpriteName(curData.costItems[i].icon);
                v.btn:SetOnClick(function()
                    UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemJumpTip, curData.costItems[i].itemId)
                end)
                v.frame:SetSpriteName(curData.costItems[i].frame);
                v.chip.transform.gameObject:SetActive(curData.costItems[i].isChip);
                local haveValStr = curData.costItems[i].haveValue < curData.costItems[i].costNum and string.format("<color=red>%s</color>",
                        curData.costItems[i].haveValue) or tostring(curData.costItems[i].haveValue)
                v.numTxt:SetText(string.format("%s/%s", haveValStr, curData.costItems[i].costNum));
            end
        end
        if not curData.isMaxStar then
            local haveCoinNum = BackpackData:GetInstance():GetItemNumById(self.curData.coinId);
            if haveCoinNum < self.curData.coinNeedNum then
                self.upStarBtn:OnInitBtn("升星", function()
                    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
                end, self.curData.coinId, self.curData.coinNeedNum)
                self.upStarBtn:UpdateCurrency()
                self.upStarBtn:UpdateButtonState(0)
            elseif self.curData.isFullItem == false then
                self.upStarBtn:OnInitBtn("升星", function()
                    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
                end, self.curData.coinId, self.curData.coinNeedNum)
                self.upStarBtn:UpdateCurrency()
                self.upStarBtn:UpdateButtonState(0, "材料不足")
            else
                self.upStarBtn:OnInitBtn("升星", function()
                    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick");
                    if self.canbtn then
                        self.canbtn = false
                        self.parent.ctrl:UpStarFunc();
                    else
                        UISpecial:GetInstance():UITipText(DataUtil.GetClientText(100050))
                    end
                end, self.curData.coinId, self.curData.coinNeedNum)
                self.upStarBtn:UpdateCurrency()
                self.upStarBtn:UpdateButtonState(1)
            end
        end



        --升星满级
        self.itemGroup.transform.parent.gameObject:SetActive(curData.isMaxStar == false);
        self.maxObj.gameObject:SetActive(curData.isMaxStar);


    end
end

local function OnDestroy(self)
    base.OnDestroy(self)
end
local function OnDisable(self)

end
local function OnDestroy(self)
    --主界面DesTory 触发

end
UICardStarUpComponent.OnDestroy = OnDestroy
UICardStarUpComponent.OnDisable = OnDisable
UICardStarUpComponent.OnCreate = OnCreate;
UICardStarUpComponent.OnRefresh = OnRefresh;
UICardStarUpComponent.OnDestroy = OnDestroy;
return UICardStarUpComponent;