--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local EnumWindowType = {
    Property = 2, --属性
    Skill = 3, --技能
    UpStart = 4, --升星
    Talent = 5, --天赋
    Weapon = 6, --武器
    Nation = 7, --国战
    Nation = 8, --"角色","定位"
    SkillExplain = 9, --"技能","详解"
    UniqueSkillExplain = 10, --"绝技","详解"
    TJZhenRongJLR = 11, --"推荐","阵容" (寄灵人)
    TJWuLingSkill = 12, --"推荐","武灵技"
    TJZhenRongSHL = 13, --"推荐","阵容" （守护灵）
}

local UICardListModel = BaseClass("UICardListModel", UIBaseModel)
local base = UIBaseModel

local nationalGlobal = DataUtil.GetData("national_global")
local properList = DataUtil.GetData("property")
local cardList = DataUtil.GetData("card")
local skillList = DataUtil.GetData("skill")
local itemList = DataUtil.GetData("item")
local xiLianList = DataUtil.GetData("xilian")
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
end

-- 打开
local function OnEnable(self, out_enter, hero_type, slect_type, cardID)
    base.OnEnable(self)
    --选择的界面   1   是  列表
    if not out_enter then
        --UIManager 回调打开  不穿任何东西
    else
        self.nowselect_type = 1
        if slect_type then
            self.nowselect_type = slect_type
        end
        self.titleName = ""
        --之前选择的界面
        self.oldselect_type = nil
        --英雄类型
        self.hero_type = hero_type
        self.card_type = 1  --筛选类型  品质 水晶 星星  战斗力
        self.card_type_slect = 0 --筛选选项 0 123
        self.showCardId = 1
        self.select_card_index = 1 --选择的卡牌下表
        self.select_havecard_index = 1
        self.IsFirst = true
        if cardID then
            Logger.Log("选择的ID" .. cardID)
            self.select_card_id = cardID
        else
            self.select_card_id = nil
        end
        self.clickskilldata = 1
    end
    ------------ Begin  卡牌列表 数据  ----------------------
    --选择的卡牌id
    self.lockDataGroup = {}
    table.insert(self.lockDataGroup, { state = true, des = "" })
    local begin = 0
    local over = 0
    if self.hero_type then
        begin = 20102
        over = 20105
        self.titleName = "寄灵人"
    else
        begin = 20202
        over = 20205
        self.titleName = "守护灵"
    end
    for i = begin, over do
        local statedata, type, des = UnlockData:GetInstance():GetLockDataState(i)
        table.insert(self.lockDataGroup, { state = statedata, des = des })
    end
    self.refreshdata = false
    self:ParseCardList()
    self:GetCardIndexAndCardID(self.select_card_id)
    ------------ Over   卡牌列表 数据   ---------------------
    ------------ Begin  卡牌技能 数据  ---------------------


    local GlobalData = DataUtil.GetData("global")
    for i, v in pairs(GlobalData) do
        if v.Key == "JLRSkill1UlockLv" then
            self.jlr_1locklv = v.valueN
        elseif v.Key == "JLRSkill2UlockLv" then
            self.jlr_2locklv = v.valueN
        elseif v.Key == "SHLSkillUnlockLv" then
            self.shl_1locklv = v.valueN
        elseif v.Key == "SHLSkillSlot1UnlockLv" then
            self.shl_1slotlv = v.valueN
        elseif v.Key == "SHLSkillSlot2UnlockLv" then
            self.shl_2slotlv = v.valueN
        end
    end
    ------------ Over   卡牌技能 数据   ---------------------
    self.curSelectCardNationData = {}
    self:OnRefresh()
end

------------切换界面-----
local function ChangeUIWindow(self, type)
    if self.nowselect_type == type then
        return
    end
    if type > 1 then
        --LJAudioManger:GetInstance():PlayOtherVoice("UI_Panel_01")
        LJAudioManger:GetInstance():PlayVoice("UI_Panel_01")
        -- 234 通用  123     ,  第 4  个  type： 5 6  , 第5个（国战） type: 7
        if type <= 4 then
            if not self.lockDataGroup[type - 1].state then
                UISpecial:GetInstance():UITipText(self.lockDataGroup[type - 1].des)
                return
            end
        elseif type <= 6 then
            if not self.lockDataGroup[4].state then
                UISpecial:GetInstance():UITipText(self.lockDataGroup[4].des)
                return
            end
        elseif type == 7 then
            --国战
            if not self.lockDataGroup[5].state then
                UISpecial:GetInstance():UITipText(self.lockDataGroup[5].des)
                return
            end
        end
    end
    self.oldselect_type = self.nowselect_type
    self.nowselect_type = type
    if type == 1 then
        self.refreshdata = true
    end
    self:UIBroadcast(UIMessageNames.UI_NEWCARD_CHANGE_TYPE)
end
------------切换界面Over-----
---------------卡牌天赋

local function UpdateTalentData(self)
    self:CreatTalentData()
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NEWCARD_BREAK_SUCCESS, 2)
end
--天赋数据
local CardTalentData = {
    talentScore = 0, --天赋评分
    talentEffectList = {}, --天赋效果
    talentSkillList = {}, --天赋技能
    costList = {}, --消耗
    isShowResultPanel = false, --是否显示结算界面
    talentCacheScore = 0, --缓存天赋评分
    cacheTalentEffectList = {}, --缓存天赋效果列表
    cacheTalentSkillList = {}, --缓存天赋技能列表
}
local CardTalentDataModel = BaseClass("CardTalentDataModel", CardTalentData);
local function SetIteNumColor(_id, _num)
    local coinData = BackpackData:GetInstance():GetItemDataById(_id)
    local haveCoinNum = 0
    if coinData ~= nil then
        haveCoinNum = math.floor(coinData.haveNum)
    end
    if haveCoinNum < _num then
        return "<color=#EC6B60FF>" .. haveCoinNum .. "</color>" .. "/" .. math.floor(_num)
    else
        return "<color=#FFFFFFFF>" .. haveCoinNum .. "</color>" .. "/" .. math.floor(_num)
    end
end

local function CreatTalentData(self)
    local showCardData = CardData:GetInstance().cards[self.select_card_id];
    local staticCardData = cardList[self.select_card_id];
    if showCardData ~= nil then
        local talentData = CardTalentDataModel.New();
        talentData.talentEffectList = {}
        local maxatk = xiLianList[showCardData.forgeGroup].AtkRabackMax
        local maxdef = xiLianList[showCardData.forgeGroup].DefRabackMax
        local maxhp = xiLianList[showCardData.forgeGroup].HpRabackMax
        if showCardData.forgeproperty ~= nil then
            table.insert(talentData.talentEffectList, { name = "攻击天赋", max = maxatk * 100, prc = showCardData.forgeproperty.atk, state = SpriteDefine:GetTakentQuaFrame(tonumber(xiLianList[showCardData.forgeGroup].RdPhase[1].QualityShow[1])) })
            table.insert(talentData.talentEffectList, { name = "防御天赋", max = maxdef * 100, prc = showCardData.forgeproperty.def, state = SpriteDefine:GetTakentQuaFrame(tonumber(xiLianList[showCardData.forgeGroup].RdPhase[1].QualityShow[2])) })
            table.insert(talentData.talentEffectList, { name = "血量天赋", max = maxhp * 100, prc = showCardData.forgeproperty.hp, state = SpriteDefine:GetTakentQuaFrame(tonumber(xiLianList[showCardData.forgeGroup].RdPhase[1].QualityShow[3])) })
        end
        talentData.talentSkillList = {};
        local SkillScore = 0
        if showCardData.forgeSkill then
            for _, v in ipairs(showCardData.forgeSkill) do
                local skill = {}
                skill.id = tonumber(v.skillID)
                skill.isExc = v.isExc
                if v.isExc then
                    --如果是天赋技能  位置在1  就读自身1技能
                    local num = #talentData.talentSkillList + 1
                    SkillScore = SkillScore + cardList[self.select_card_id].ZSBs[num]
                    --下面这个 发下来的是效果ID
                    skill.icon = skillList[cardList[self.select_card_id].Skill[num]].Icon
                    skill.name = skillList[cardList[self.select_card_id].Skill[num]].Name
                    skill.frame = SpriteDefine:GetItemQualityFrameByType(skillList[cardList[self.select_card_id].Skill[num]].Quality)
                    --skill.icon =skillList[cardList[self.select_card_id].Skill[v.skillID]].Icon
                else
                    SkillScore = SkillScore + skillList[v.skillID].Bs
                    skill.icon = skillList[v.skillID].Icon
                    skill.name = skillList[v.skillID].Name
                    skill.frame = SpriteDefine:GetItemQualityFrameByType(skillList[v.skillID].Quality)
                end
                table.insert(talentData.talentSkillList, skill)
            end
        end
        talentData.talentScore = math.floor(SkillScore + xiLianList[showCardData.forgeGroup].AtkBsFac / 100 * showCardData.forgeproperty.atk + xiLianList[showCardData.forgeGroup].DefBsFac / 100 * showCardData.forgeproperty.def + xiLianList[showCardData.forgeGroup].HpBsFac / 100 * showCardData.forgeproperty.hp)
        talentData.costList = {}
        if staticCardData.XLGroup ~= nil then
            local costList = xiLianList[staticCardData.XLGroup].Cost
            if costList ~= nil and #costList > 0 then
                for i, v in ipairs(costList) do
                    table.insert(talentData.costList, { id = v.Id, count = v.Num, icon = itemList[v.Id].Icon,
                                                        frame = SpriteDefine:GetItemQualityFrameByType(itemList[v.Id].Quality),
                                                        num = SetIteNumColor(v.Id, v.Num), isChip = itemList[v.Id].ItemType == 17 })
                end
            end
        end

        if showCardData.tempforgepproperty or showCardData.tempforgepSkill then

            talentData.cacheTalentEffectList = {};
            local maxtempatk = xiLianList[showCardData.tempforgeGroup].AtkRabackMax
            local maxtempdef = xiLianList[showCardData.tempforgeGroup].DefRabackMax
            local maxtemphp = xiLianList[showCardData.tempforgeGroup].HpRabackMax
            if showCardData.tempforgepproperty then
                table.insert(talentData.cacheTalentEffectList, { name = "攻击天赋", max = maxtempatk * 100, prc = showCardData.tempforgepproperty.atk, state = SpriteDefine:GetTakentQuaFrame(tonumber(xiLianList[showCardData.tempforgeGroup].RdPhase[1].QualityShow[1])) })
                table.insert(talentData.cacheTalentEffectList, { name = "防御天赋", max = maxtempdef * 100, prc = showCardData.tempforgepproperty.def, state = SpriteDefine:GetTakentQuaFrame(tonumber(xiLianList[showCardData.tempforgeGroup].RdPhase[1].QualityShow[2])) })
                table.insert(talentData.cacheTalentEffectList, { name = "血量天赋", max = maxtemphp * 100, prc = showCardData.tempforgepproperty.hp, state = SpriteDefine:GetTakentQuaFrame(tonumber(xiLianList[showCardData.tempforgeGroup].RdPhase[1].QualityShow[3])) })
            end
            talentData.cacheTalentSkillList = {};
            local SkillTempScore = 0
            if showCardData.tempforgepSkill then
                for _, v in ipairs(showCardData.tempforgepSkill) do
                    local skill = {}
                    skill.id = tonumber(v.skillID)
                    --
                    skill.isExc = v.isExc
                    if v.isExc then
                        --如果是天赋技能  位置在1  就读自身1技能
                        local num = #talentData.cacheTalentSkillList + 1
                        SkillTempScore = SkillTempScore + cardList[self.select_card_id].ZSBs[num]
                        skill.icon = skillList[cardList[self.select_card_id].Skill[num]].Icon
                        skill.name = skillList[cardList[self.select_card_id].Skill[num]].Name
                        skill.frame = SpriteDefine:GetItemQualityFrameByType(skillList[cardList[self.select_card_id].Skill[num]].Quality)
                    else
                        if skillList[v.skillID] ~= nil then
                            SkillTempScore = SkillTempScore + skillList[v.skillID].Bs
                            skill.icon = skillList[v.skillID].Icon
                            skill.name = skillList[v.skillID].Name
                            skill.frame = SpriteDefine:GetItemQualityFrameByType(skillList[v.skillID].Quality)
                        else
                            Logger.LogError("技能表里没有这个ID" .. v.skillID)
                        end
                    end
                    table.insert(talentData.cacheTalentSkillList, skill)
                end
            end
            talentData.talentCacheScore = math.floor(SkillTempScore + xiLianList[showCardData.tempforgeGroup].AtkBsFac / 100 * showCardData.tempforgepproperty.atk + xiLianList[showCardData.tempforgeGroup].DefBsFac / 100 * showCardData.tempforgepproperty.def + xiLianList[showCardData.tempforgeGroup].HpBsFac / 100 * showCardData.tempforgepproperty.hp)
            talentData.isShowResultPanel = true
        else
            talentData.isShowResultPanel = false
        end

        self.talentData = talentData
    end
end


----------------卡牌天赋
------------卡牌升星


local UpStarLayoutData = {
    curBasePropAll = 0,
    nextBasePropAll = 0,
    curStar = 1, --当前星级
    maxStar = 5, --最大星星
    nextStar = 1, --下一星级
    cardType = 1, --卡牌类型
    isMaxStar = false, --是否满级
    effectList = {}, --升星效果
    shareAttList = {}, --共享屬性
    coinId = 0, --货币id
    coinIcon = "", --货币icon
    coinNeedNum = 0, --货币数量
    costItems = {}, --消耗的物品
    isFullItem = false, --是否满材料
    curstar_data = {}, --星星数据
    nextstar_data = {}, --星星数据
    curstar_value = {}, --星星Value
    nextstar_value = {}, --星星Value
}
local UpStarLayoutDataModel = BaseClass("UpStarLayoutDataModel", UpStarLayoutData);
--获取共享的属性值
local function GetShareAttrValue(_attList, _id)
    local attVal = 0;
    for i, v in ipairs(_attList) do
        if v.Id == _id then
            attVal = v.Val;
            return attVal;
        end
    end
    return attVal;
end

--创建升星数据
local function CreatStarUpData(self)
    local showCardData = CardData:GetInstance().cards[self.select_card_id];
    local staticCardData = cardList[self.select_card_id];
    if showCardData ~= nil then
        local upStarData = UpStarLayoutDataModel.New();
        upStarData.curstar_data = staticCardData.stars[showCardData.starlv]
        upStarData.nextstar_data = showCardData.starlv < showCardData.maxstarlv and staticCardData.stars[showCardData.starlv + 1] or "满级"
        upStarData.curstar_value = staticCardData.hells[showCardData.hellLevel]
        upStarData.nextstar_value = showCardData.starlv < showCardData.maxstarlv and staticCardData.hells[showCardData.hellLevel] or nil
        upStarData.maxStar = showCardData.maxstarlv
        upStarData.curStar = showCardData.starlv
        upStarData.nextStar = showCardData.starlv + 1 > #staticCardData.stars and showCardData.starlv or showCardData.starlv + 1;
        upStarData.isMaxStar = upStarData.curStar == #staticCardData.stars;
        upStarData.cardType = staticCardData.Type;
        upStarData.curBasePropAll = (staticCardData.stars[showCardData.starlv].BasePropAll * 100) .. "%"
        upStarData.nextBasePropAll = showCardData.starlv < showCardData.maxstarlv and (staticCardData.stars[showCardData.starlv + 1].BasePropAll * 100) .. "%" or "满级"
        --升星加成
        upStarData.effectList = { [1] = "生命加成", [2] = "攻击加成", [3] = "防御加成", [4] = "整体加成" };
        upStarData.shareAttList = {};
        --只要寄灵人有灵力共享
        if staticCardData.Type == 1 then
            for i, v in ipairs(staticCardData.stars[upStarData.maxStar].AttrTrans) do
                local properItem = properList[v.Id];
                if properItem ~= nil then
                    local propId = v.Id;
                    local attName = properItem.CnName;
                    local curValue = "0%";
                    local nextValue = "0%";
                    if staticCardData.stars[upStarData.curStar].AttrTrans ~= nil then
                        curValue = math.floor(GetShareAttrValue(staticCardData.stars[upStarData.curStar].AttrTrans, propId) * 100) .. "%";
                    end
                    nextValue = upStarData.curStar == #staticCardData.stars and "满级" or
                            math.floor(GetShareAttrValue(staticCardData.stars[upStarData.nextStar].AttrTrans, propId) * 100) .. "%";
                    table.insert(upStarData.shareAttList, { name = attName, curVal = curValue, nextVal = nextValue });
                end
            end
        end

        --货币
        upStarData.coinId = staticCardData.stars[upStarData.nextStar].Cost[1].Id;
        upStarData.coinIcon = itemList[upStarData.coinId].Icon;
        upStarData.coinNeedNum = staticCardData.stars[upStarData.nextStar].Cost[1].Val;
        --消耗
        upStarData.costItems = {};
        upStarData.isFullItem = true;
        for i = 2, #staticCardData.stars[upStarData.nextStar].Cost do
            local singlCost = staticCardData.stars[upStarData.nextStar].Cost[i];
            local id = singlCost.Id;
            local itemInBag = BackpackData:GetInstance():GetItemDataById(id)
            local haveNum = 0
            if itemInBag ~= nil then
                haveNum = math.floor(itemInBag.haveNum);
            end
            if haveNum < singlCost.Val then
                upStarData.isFullItem = false;
            end
            table.insert(upStarData.costItems, { itemId = id, haveValue = haveNum, costNum = singlCost.Val,
                                                 frame = SpriteDefine:GetItemQualityFrameByType(itemList[id].Quality), icon = itemList[id].Icon, isChip = itemList[id].ItemType == 17 });
        end
        self.upStarFinalData = upStarData;
    end
end
--升星刷新
local function StarRefresh(self)
    self:CreatStarUpData();
    UIManager:GetInstance():Broadcast(UIMessageNames.UI_NEWCARD_BREAK_SUCCESS, 2)
end
------------卡牌升星Over
------------ Begin  卡牌技能   ----------------------

local function UpdateSkill(self, _id)
    self:UpdateCardSkill()
    --刷界面
    --更新升星数据
    self:CreatStarUpData()
    if self.hero_type then
        self:CreatTalentData();
    end
    self:UIBroadcast(UIMessageNames.UI_NEWCARD_SKILL_UPDATE, _id)
end
--获得点击技能
local function GetClickSkillID(self, index, unsend)
    if self.clickskilldata ~= index then
        self.clickskilldata = index
    end
    if not unsend then
        if self.nowselect_type ~= 3 then
            self:ChangeUIWindow(3)
        else
            --不是切换节能不用刷这个   以后 如果有两个天覅技能打开
            --self:UIBroadcast(UIMessageNames.UI_NEWCARD_SKILL_UPDATE)
        end

    end

end
local function UpdateCardSkill(self)

    self.skillList = {}
    local cardData = CardData:GetInstance().cards[self.select_card_id]
    local cardStaticData = cardList[self.select_card_id]
    --todo 拿到 天赋技能  武器技能
    if cardData ~= nil and cardStaticData ~= nil then
        for i = 1, #cardStaticData.Skill do
            if cardData.selfSkills[cardStaticData.Skill[i]] ~= nil then
                table.insert(self.skillList, { havedata = true, id = cardStaticData.Skill[i], unlock = true, skillType = 1, blankPosition = -1, cardType = cardData.type })
            else
                ---未解锁，获得解锁等级
                ---
                local _unlockLevel = 0
                if cardStaticData.Type == 1 then
                    --寄灵人
                    if i == 1 then
                        _unlockLevel = self.jlr_1locklv
                    else
                        _unlockLevel = self.jlr_2locklv
                    end
                else
                    --守护灵
                    if i == 1 then
                        _unlockLevel = self.shl_1locklv
                    end
                end
                table.insert(self.skillList, { havedata = true, id = cardStaticData.Skill[i], unlock = false, skillType = 1, unlockLevel = _unlockLevel, blankPosition = -1, cardType = cardStaticData.Type })
            end
        end
        for i = 1, cardStaticData.SkillBlankAmount do
            if cardData.skillBlankAmount < i then
                ---未解锁，获得解锁等级
                local _unlockLevel = 0
                if i == 1 then
                    _unlockLevel = self.shl_1slotlv
                else
                    _unlockLevel = self.shl_2slotlv
                end
                table.insert(self.skillList, { havedata = true, id = 0, unlock = false, skillType = 2, unlockLevel = _unlockLevel, blankPosition = i, cardType = cardData.type })
            else
                --解锁没装东西
                if cardData.wearSkills[i] ~= nil and cardData.wearSkills[i] ~= 0 then
                    table.insert(self.skillList, { havedata = true, id = cardData.wearSkills[i], unlock = true, skillType = 2, blankPosition = i, cardType = cardData.type })
                else
                    table.insert(self.skillList, { havedata = true, id = 0, unlock = true, skillType = 2, blankPosition = i, cardType = cardData.type })
                end
            end
        end
    else
        for i = 1, #cardStaticData.Skill do
            local _unlockLevel = 0
            if cardStaticData.Type == 1 then
                --寄灵人
                if i == 1 then
                    _unlockLevel = self.jlr_1locklv
                else
                    _unlockLevel = self.jlr_2locklv
                end
            else
                --守护灵
                if i == 1 then
                    _unlockLevel = self.shl_1locklv
                end
            end
            table.insert(self.skillList, { havedata = false, id = cardStaticData.Skill[i], unlock = false, skillType = 1, unlockLevel = _unlockLevel, blankPosition = -1, cardType = cardStaticData.Type })
        end
    end
end

------------卡牌技能Over-----
--------------- Begin  卡牌列表 数据  ----------------------
--更新
local function UpdateShowCardList(self, card_type, card_type_slect)
    --刷界面  默认第一个
    self.card_type = card_type
    self.card_type_slect = card_type_slect
    if self.IsFirst then
        self.IsFirst = false
        self:ParseCardList()
        self:GetCardIndexAndCardID(self.select_card_id)
    else
        self:ParseCardList()
        self:GetCardIndexAndCardID()
    end

end


--获得新卡牌方法
local function GetNewCardUpdate(self, cardID)
    self:ParseCardList()
    self:GetCardIndexAndCardID(cardID)
end

--检查当下选择的卡牌
local function GetCardIndexAndCardID(self, cardid)
    local Num = #self.showCardList
    if cardid then
        for i = 1, Num do
            if self.showCardList[i].id == cardid then
                self:SaveShowIndex(self.showCardList[i].id, i - 1)
                break
            end
        end
    else
        if #self.haveList > 0 then
            for i = 1, Num do
                if self.showCardList[i].id == self.haveList[1].id then
                    self:SaveShowIndex(self.showCardList[i].id, i - 1)
                    break
                end
            end
        else
            if #self.showCardList > 0 then
                self:SaveShowIndex(self.showCardList[1].id, 0)
            else
                self:SaveShowIndex()
            end

        end
    end
end

--检查 是否通过筛选
local function CheckIsIn(self, id)
    local singleData = CardData:GetInstance().cards[id]
    local staticData = cardList[id]
    if self.card_type == 1 then
        return true
    elseif self.card_type == 2 then
        --品质
        if staticData.Quality == self.card_type_slect then
            return true
        else
            return false
        end
    elseif self.card_type == 3 then
        --颜色
        if staticData.CrystalType == self.card_type_slect then
            return true
        else
            return false
        end
    elseif self.card_type == 4 or self.card_type == 5 then
        --等级
        if singleData ~= nil then
            return true
        else
            return false
        end
    elseif self.card_type == 6 then
        if singleData ~= nil then
            if singleData.starlv == self.card_type_slect then
                return true
            else
                return false
            end
        else
            return false
        end
    end
end
local function SetGuidePos(self)
    if GuideGroup:GetInstance().Runing  and GuideGroup:GetInstance().CurGuideItem.TargetId then
        print("设置守护林")
        for m, n in ipairs(self.showCardList) do
            if n.id == GuideGroup:GetInstance().CurGuideItem.TargetId then
                table.remove(self.showCardList,m)
                table.insert(self.showCardList,1,n)
            end
        end
    end
end

local function ParseCardList(self)
    self.refreshdata = true
    --[[
    local cardhave =true
    if self.card_type==1 or self.card_type==2 then
        cardhave=true
    else
        --球星星  战斗力 等等   必须拥有的特质
        cardhave=false
    end
    --]]
    --最后展示列表
    self.showCardList = {}
    --拥有列表
    self.haveList = {}
    --可召唤列表
    self.canCallList = {}
    --不能召唤列表
    self.cannotCallList = {}
    --不进入版本的数量
    self.noEnterCard = 0

    for value, _ in pairs(cardList) do
        if cardList[value] ~= nil and cardList[value].IfEntreVersion == 1 then
            if (cardList[value].Type == 1) == self.hero_type then
                --根据选择的品质确定
                if self:CheckIsIn(value) then
                    local singleData = CardData:GetInstance().cards[value]
                    if singleData ~= nil then
                        --已拥有卡牌
                        --2
                        table.insert(self.haveList, { id = value, type = 2, name = singleData.name, hellSmallLevel = singleData.hellSmallLevel, hellNameColor = singleData.hellNameColor, hellNameBg = singleData.hellNameBg, quality = singleData.quality, crystalType = singleData.crystalType })
                    else
                        --求碎片是否OK
                        --if   cardhave then
                        local debrisData = BackpackData:GetInstance().items[cardList[value].DebrisID]
                        if debrisData ~= nil then
                            if debrisData.haveNum >= cardList[value].ComposeNum then
                                --未拥有卡牌，但碎片足够
                                table.insert(self.canCallList, { id = value, type = 1, haveNum = debrisData.haveNum, name = cardList[value].Name, hellSmallLevel = 0, quality = cardList[value].Quality, crystalType = cardList[value].CrystalType })
                            else
                                --未拥有卡牌，且有碎片但不足
                                table.insert(self.cannotCallList, { id = value, type = 3, haveNum = debrisData.haveNum, name = cardList[value].Name, hellSmallLevel = 0, quality = cardList[value].Quality, crystalType = cardList[value].CrystalType })
                            end
                        else
                            --未拥有卡牌，且无碎片
                            table.insert(self.cannotCallList, { id = value, type = 3, haveNum = 0, name = cardList[value].Name, hellSmallLevel = 0, quality = cardList[value].Quality, crystalType = cardList[value].CrystalType })
                        end
                        --end
                    end
                end
            end
        elseif cardList[value].IfEntreVersion == 0 then
            if (cardList[value].Type == 1) == self.hero_type then
                self.noEnterCard = self.noEnterCard + 1
            end
        end
    end
    --if  cardhave then
    table.sort(self.canCallList, function(a, b)
        if a.haveNum == b.haveNum then
            if a.quality == b.quality then
                if a.crystalType == b.crystalType then
                    return a.id > b.id
                else
                    return a.crystalType > b.crystalType
                end
            else
                return a.quality > b.quality
            end
        else
            return a.haveNum > b.haveNum
        end
    end)
    --end

    --if  cardhave then
    table.sort(self.cannotCallList, function(a, b)
        if a.haveNum == b.haveNum then
            if a.quality == b.quality then
                if a.crystalType == b.crystalType then
                    return a.id > b.id
                else
                    return a.crystalType > b.crystalType
                end
            else
                return a.quality > b.quality
            end
        else
            return a.haveNum > b.haveNum
        end
    end)
    --end

    table.sort(self.haveList, function(a, b)
        local leftData = CardData:GetInstance().cards[a.id]
        local rightData = CardData:GetInstance().cards[b.id]
        local a_status = CardData:GetInstance():CheckIsInBattle(a.id)
        local b_status = CardData:GetInstance():CheckIsInBattle(b.id)
        if (a_status and b_status) or (not a_status and not b_status) then
            if leftData.level == rightData.level then
                if leftData.quality == rightData.quality then
                    if leftData.crystalType == rightData.crystalType then
                        return leftData.callCost > rightData.callCost
                    else
                        return leftData.crystalType > rightData.crystalType
                    end
                else
                    return leftData.quality > rightData.quality
                end
            else
                return leftData.level > rightData.level
            end
        else
            return a_status
        end
    end)
    if self.card_type == 5 then
        --战斗力
        table.sort(self.haveList, function(a, b)
            local leftData = CardData:GetInstance().cards[a.id]
            local rightData = CardData:GetInstance().cards[b.id]
            if leftData.power == rightData.power then
                if leftData.level == rightData.level then
                    if leftData.quality == rightData.quality then
                        if leftData.crystalType == rightData.crystalType then
                            return leftData.callCost > rightData.callCost
                        else
                            return leftData.crystalType > rightData.crystalType
                        end
                    else
                        return leftData.quality > rightData.quality
                    end
                else
                    return leftData.level > rightData.level
                end
            else
                return leftData.power > rightData.power
            end
        end)
    end
    if self.card_type == 6 then
        --星级
        table.sort(self.haveList, function(a, b)
            local leftData = CardData:GetInstance().cards[a.id]
            local rightData = CardData:GetInstance().cards[b.id]
            if leftData.starlv == rightData.starlv then
                if leftData.level == rightData.level then
                    if leftData.quality == rightData.quality then
                        if leftData.crystalType == rightData.crystalType then
                            return leftData.callCost > rightData.callCost
                        else
                            return leftData.crystalType > rightData.crystalType
                        end
                    else
                        return leftData.quality > rightData.quality
                    end
                else
                    return leftData.level > rightData.level
                end
            else
                return leftData.starlv > rightData.starlv
            end
        end)
    end
    --[[
    --TODO 后期策划对顺序有疑问Debug
   for i = 1, #self.haveList do
        local leftData = CardData:GetInstance().cards[self.haveList[i].id]
    end
    --]]

    --if  cardhave then
    --只要已有
    for i = 1, #self.canCallList do
        table.insert(self.showCardList, self.canCallList[i])
    end
    --end
    for i = 1, #self.haveList do
        table.insert(self.showCardList, self.haveList[i])
    end
    --if  cardhave then
    for i = 1, #self.cannotCallList do
        if self.cannotCallList[i].haveNum>0 then
            table.insert(self.showCardList, self.cannotCallList[i])
        end
    end
    --endself
    SetGuidePos(self)
end

local function SaveShowIndex(self, _id, _index, _type)
    --点击选择
    self.select_card_index = _index
    self.select_card_id = _id
    if CardData:GetInstance().cards[_id] ~= nil then
        self.select_card_weapon = CardData:GetInstance().cards[_id].weaponId
    else
        self.select_card_weapon = nil
    end
    if WeaponData:GetInstance().weapons[self.select_card_id] == nil and self.nowselect_type == 5 then
        self:ChangeUIWindow(2)
    end
    if self.select_card_id then
        --记录卡牌技能
        self:UpdateCardSkill()
        --更新升星数据
        self:CreatStarUpData()
        if self.hero_type then
            self:CreatTalentData();
        end
    end

    --记录拥有列表的下表
    self:GetHaveCardIndexByCardID()
    self:UIBroadcast(UIMessageNames.UI_CARD_POOL_ON_SELECT_CARD, _type, self.select_card_id)
end
local function ClickCardItemFun(self, _index, _id, _type)
    self.refreshdata = false
    self:SaveShowIndex(_id, _index, _type)
end
--左右移动
local function ClickLeftRightFun(self, _id)
    self:SaveShowIndex(_id)
end
local function GetHaveCardIndexByCardID(self)
    self.select_havecard_index = -1
    if self.select_card_id then
        for i = 1, #self.haveList do
            if self.haveList[i].id == self.select_card_id then
                self.select_havecard_index = i
                break
            end
        end
        for i = 1, #self.showCardList do
            if self.showCardList[i].id == self.select_card_id then
                self.select_card_index = i - 1
                break
            end
        end
    end
end
------------ Over   卡牌列表 数据   ---------------------

--卡牌国战属性更新
local function UpdateCardNationData(self, MsgObj)
    local nationCardData = nil
    local armyValueMax = nil
    local energyMax = nil
    local nationAttack = nil
    if MsgObj == nil then
        nationCardData = NationCardData:GetInstance():GetNationCardDataById(self.select_card_id)
        armyValueMax = NationCardData:GetInstance():GetCardNationArmyMax(self.select_card_id)
        energyMax = NationCardData:GetInstance():GetNationCardApMax(self.select_card_id)
        nationAttack = 0 --NationCardData:GetInstance():GetCardNationAtk(self.select_card_id)
    else
        nationCardData = MsgObj
        armyValueMax = MsgObj.armyValueMax
        energyMax = MsgObj.energyMax
        nationAttack = 0 --MsgObj.nationAttack  todo,科技加成
    end

    --军力，体力，等级
    self.curSelectCardNationData.property = {}
    local rate = nationCardData.dominanceExp / nationCardData.dominanceMaxExp
    local valueStr = math.modf(nationCardData.dominanceExp) .. "/" .. nationCardData.dominanceMaxExp
    self.curSelectCardNationData.property[1] = { name = DataUtil.GetClientText(200152) .. "Lv" .. nationCardData.dominanceLevel, value = valueStr, sliderValue = rate }
    valueStr = nationCardData.army .. "/" .. armyValueMax
    rate = nationCardData.army / armyValueMax
    self.curSelectCardNationData.property[2] = { name = DataUtil.GetClientText(200109), value = valueStr, sliderValue = rate }
    valueStr = math.modf(nationCardData.ap) .. "/" .. energyMax
    rate = nationCardData.ap / energyMax
    self.curSelectCardNationData.property[3] = { name = DataUtil.GetClientText(200293), value = valueStr, sliderValue = rate }
    self.role_cost = nationCardData.cardCost
    --基础属性
    self.curSelectCardNationData.basic = {}
    local attackStr = nil
    --todo,科技加成影响
    if nationAttack > 0 then
        attackStr = math.ceil(CardData:GetInstance():GetCardNationAttackPropertyByCardIDAndArmyValue(self.select_card_id, armyValueMax)) .. "<color=#3E793F>+" .. nationAttack .. "</color>"
    else
        attackStr = math.ceil(CardData:GetInstance():GetCardNationAttackPropertyByCardIDAndArmyValue(self.select_card_id, armyValueMax))
    end

    self.curSelectCardNationData.basic[1] = { property1 = { name = DataUtil.GetClientText(200418), value = armyValueMax }, property2 = { name = DataUtil.GetClientText(100181), value = attackStr } }
    self.curSelectCardNationData.basic[2] = { property1 = { name = DataUtil.GetClientText(100182), value = nationCardData.siegeValue }, property2 = { } }

    --天赋
    self.curSelectCardNationData.talent = {}
    local talentInfo = nil
    local nationTanlentInfo = DataUtil.GetData("national_tanlent")
    for k, v in pairs(nationCardData.selfTalents) do
        talentInfo = nationTanlentInfo[v.talentId]
        local temp = {}
        temp.name = talentInfo.Tanlent_Name
        temp.level = DataUtil.GetClientText(200268) .. v.talentLevel .. "/5"
        temp.icon = talentInfo.Icon
        temp.isLock = v.talentLevel == 0
        if temp.isLock == false then
            temp.curLevelDes = string.format(talentInfo.Description, talentInfo.Tanlent_Value[v.talentLevel])
            temp.nextLevelDes = string.format(talentInfo.Description, talentInfo.Tanlent_Value[v.talentLevel + 1])
        end
        temp.unLockStr = string.format(DataUtil.GetClientText(200294), talentInfo.Tanlent_Unlock[v.talentLevel + 1])
        self.curSelectCardNationData.talent[v.index] = temp
    end

    UIManager:GetInstance():Broadcast(UIMessageNames.UI_CARD_NATION_DATA_REFRESH)
end

--从服务器获得数据，卡牌国战属性更新
local function OnDataMsgUpdateCurSelectCardNation(self, msgObj)
    if msgObj == nil then
        self:UpdateCardNationData()
        return
    end

    local nationCardInfo = DataUtil.GetData("national_card")[self.select_card_id]
    local dominanceExpInfo = DataUtil.GetData("national_player")

    local data = {}
    if msgObj.id ~= 0 then
        data.dominanceExp = msgObj.dominanceExp
        data.dominanceMaxExp = dominanceExpInfo.DominanceLv[msgObj.dominanceLevel + 1].Exp
        data.dominanceLevel = math.modf(msgObj.dominanceLevel)
        data.army = math.modf(msgObj.army)
        data.armyValueMax = math.modf(msgObj.armyLimit)
        data.ap = msgObj.ap
        data.energyMax = math.modf(msgObj.apLimit)
        data.nationAttack = math.modf(msgObj.atk)
        data.siegeValue = nationCardInfo.Siege
        data.cardCost = nationCardInfo.Card_Cost
        --天赋
        data.selfTalents = {}
        for _, v in ipairs(msgObj.talents) do
            if v.talentId == nationCardInfo.Tanlent_Ids[1] then
                data.selfTalents[1] = {}
                data.selfTalents[1].talentId = v.talentId
                data.selfTalents[1].talentLevel = math.modf(v.level)
                data.selfTalents[1].index = 1
            elseif v.talentId == nationCardInfo.Tanlent_Ids[2] then
                data.selfTalents[2] = {}
                data.selfTalents[2].talentId = v.talentId
                data.selfTalents[2].talentLevel = math.modf(v.level)
                data.selfTalents[2].index = 2
            elseif v.talentId == nationCardInfo.Tanlent_Ids[3] then
                data.selfTalents[3] = {}
                data.selfTalents[3].talentId = v.talentId
                data.selfTalents[3].talentLevel = math.modf(v.level)
                data.selfTalents[3].index = 3
            end
        end
    else
        --玩家从未进入过国战，属性为默认属性
        data.dominanceExp = 0
        data.dominanceMaxExp = 0
        data.dominanceLevel = 1
        data.army = 0
        data.armyValueMax = 100 + nationalGlobal.InitalArmyLimit
        data.ap = 100
        data.energyMax = 100
        data.nationAttack = 0
        data.siegeValue = nationCardInfo.Siege
        data.cardCost = nationCardInfo.Card_Cost
        --天赋
        data.selfTalents = {}
        data.selfTalents[1] = {}
        data.selfTalents[1].talentId = nationCardInfo.Tanlent_Ids[1]
        data.selfTalents[1].talentLevel = 0
        data.selfTalents[1].index = 1
        data.selfTalents[2] = {}
        data.selfTalents[2].talentId = nationCardInfo.Tanlent_Ids[2]
        data.selfTalents[2].talentLevel = 0
        data.selfTalents[2].index = 2
        data.selfTalents[3] = {}
        data.selfTalents[3].talentId = nationCardInfo.Tanlent_Ids[3]
        data.selfTalents[3].talentLevel = 0
        data.selfTalents[3].index = 3
    end

    self:UpdateCardNationData(data)
end


-- 刷新全部数据
local function OnRefresh(self)


end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    --卡牌列表begin
    self:AddDataListener(DataMessageNames.ON_UI_CARD_DETAILS_SAVE_INDEX, ClickCardItemFun)
    self:AddDataListener(DataMessageNames.ON_NEWUICARD_CARDLIST, UpdateShowCardList)
    self:AddDataListener(DataMessageNames.ON_NEWUICARD_GET_NEW_CARD, GetNewCardUpdate)
    self:AddDataListener(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, ChangeUIWindow)
    self:AddDataListener(DataMessageNames.ON_NEWUICARD_LEFTRIGHT_FUN, ClickLeftRightFun)

    --卡牌列表over
    --卡牌技能
    self:AddDataListener(DataMessageNames.ON_NEWUICARD_UPDATE_SKILL, UpdateSkill)
    self:AddDataListener(DataMessageNames.ON_NEWUICARD_CLICKVIEW_SKILL, GetClickSkillID)
    self:AddDataListener(DataMessageNames.ON_SKILL_DATA_CHANGE, UpdateSkill)
    --卡牌技能
    --卡牌升星
    self:AddDataListener(DataMessageNames.UI_CARD_STAR_REFRESH, StarRefresh);
    --卡牌升星
    --卡牌天赋
    self:AddDataListener(DataMessageNames.ON_CARD_XILIAN_UPDATE, UpdateTalentData)
    --卡牌国战属性
    self:AddDataListener(DataMessageNames.ON_CARD_NATION_DATA_UPDATE, OnDataMsgUpdateCurSelectCardNation)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    --卡牌列表begin
    self:RemoveDataListener(DataMessageNames.ON_UI_CARD_DETAILS_SAVE_INDEX, ClickCardItemFun)
    self:RemoveDataListener(DataMessageNames.ON_NEWUICARD_CARDLIST, UpdateShowCardList)
    self:RemoveDataListener(DataMessageNames.ON_NEWUICARD_GET_NEW_CARD, GetNewCardUpdate)
    self:RemoveDataListener(DataMessageNames.ON_NEWUICARD_CHNAGE_UITYPE, ChangeUIWindow)
    self:RemoveDataListener(DataMessageNames.ON_NEWUICARD_LEFTRIGHT_FUN, ClickLeftRightFun)
    --卡牌列表begin
    --卡牌技能
    self:RemoveDataListener(DataMessageNames.ON_NEWUICARD_UPDATE_SKILL, UpdateSkill)
    self:RemoveDataListener(DataMessageNames.ON_NEWUICARD_CLICKVIEW_SKILL, GetClickSkillID)
    self:RemoveDataListener(DataMessageNames.ON_SKILL_DATA_CHANGE, UpdateSkill)
    --卡牌技能
    --卡牌升星
    self:RemoveDataListener(DataMessageNames.UI_CARD_STAR_REFRESH, StarRefresh)
    --卡牌升星
    --卡牌天赋
    self:RemoveDataListener(DataMessageNames.ON_CARD_XILIAN_UPDATE, UpdateTalentData)
    --卡牌国战属性
    self:RemoveDataListener(DataMessageNames.ON_CARD_NATION_DATA_UPDATE, OnDataMsgUpdateCurSelectCardNation)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

    self.curSelectCardNationData = {}
end

-- 销毁
local function OnDistroy(self)
    base.OnDistroy(self)
    -- 清理成员变量

end

UICardListModel.OnCreate = OnCreate
UICardListModel.OnEnable = OnEnable
UICardListModel.OnRefresh = OnRefresh
UICardListModel.OnAddListener = OnAddListener
UICardListModel.OnRemoveListener = OnRemoveListener
UICardListModel.OnDisable = OnDisable
UICardListModel.OnDistroy = OnDistroy
UICardListModel.ChangeUIWindow = ChangeUIWindow
--卡牌列表begin
UICardListModel.ParseCardList = ParseCardList
UICardListModel.CheckIsIn = CheckIsIn
UICardListModel.GetCardIndexAndCardID = GetCardIndexAndCardID
UICardListModel.SaveShowIndex = SaveShowIndex
UICardListModel.GetNewCardUpdate = GetNewCardUpdate
UICardListModel.GetHaveCardIndexByCardID = GetHaveCardIndexByCardID
UICardListModel.ClickLeftRightFun = ClickLeftRightFun
--卡牌列表over
--卡牌节能
UICardListModel.UpdateCardSkill = UpdateCardSkill
UICardListModel.UpdateSkill = UpdateSkill
UICardListModel.GetClickSkillID = GetClickSkillID
--卡牌技能Over
--卡牌升星
UICardListModel.StarRefresh = StarRefresh
UICardListModel.CreatStarUpData = CreatStarUpData
--卡牌升星
--卡牌天赋
UICardListModel.CreatTalentData = CreatTalentData
--卡牌国战属性
UICardListModel.UpdateCardNationData = UpdateCardNationData
return UICardListModel