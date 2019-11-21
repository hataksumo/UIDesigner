--[[
-- 模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UILearnSkillModel = BaseClass("UILearnSkillModel", UIBaseModel)
local base = UIBaseModel
local withoutSortList

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
    self.alreadySortList = { {}, {}, {}, {} }
    self.dataIndex = 0
    self.dataId = 0
end

-- 打开
local function OnEnable(self, _cardId, _blankPosition)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    self.showType = _blankPosition
    self.cardId = _cardId
    self.blankPosition = _blankPosition--从1开始
    self.skillID=nil
    self:GetBlankPosSkillID()
    self:OnRefresh()
end
local function GetBlankPosSkillID(self)
    local MyCard= CardData:GetInstance().cards[self.cardId]
    if MyCard~=nil then
        for i = 1, #MyCard.wearSkills do
            if i==self.blankPosition and (MyCard.wearSkills[i]~=nil and  MyCard.wearSkills[i]>0) then
                self.skillID=MyCard.wearSkills[i]
            end
        end
    end
end
local function OnSelectShowType(self, _showFireType)
    self.showType = _showFireType
end

local function OnSelectSkill(self, _index, _id)
    self.dataIndex = _index
    self.dataId = _id
    self:UIBroadcast(UIMessageNames.UI_LEARN_SKILL_ON_SELECT_SKILL, self.dataIndex)
end

local function FilterSkillList(self, _crystalType)
    local tempData
    self.withoutSortList = {}
    for _, v in pairs(SkillData:GetInstance().skills) do
        if v.skillType == 2 then--插槽技能
            for i = 1, #v.wearRange do
                if v.wearRange[i] == _crystalType then
                    table.insert(self.withoutSortList, v)
                    break
                end
            end
        end
    end
    table.sort(self.withoutSortList,function (a,b)
        if a.id==self.skillID or b.id==self.skillID then
            return a.id==self.skillID
        else
            if  a.cardId>0 and  b.cardId>0 then
                --if a.level==b.level then
                if a.quality==b.quality then
                    return a.templateId>b.templateId
                else
                    return a.quality>b.quality
                end
                --else
                --  return a.level>b.level
                --end
                return a.CardId >b.CardId
            else
                if a.cardId>0 then
                    return false
                elseif b.cardId >0 then
                    return true
                else
                    --都没有穿在身上
                    if a.quality==b.quality then
                        return a.templateId>b.templateId
                    else
                        return a.quality>b.quality
                    end
                end

            end
        end
    end)

    self.alreadySortList = { {}, {}, {}, {} }
    for i = 1, #self.withoutSortList do
        if SkillData:GetInstance():CheckSkillIsShow(self.withoutSortList[i].id) then
            table.insert(self.alreadySortList[self.withoutSortList[i].skillEffectType], self.withoutSortList[i])
        end
    end
end

-- 刷新全部数据
local function OnRefresh(self)
    self.cardData = CardData:GetInstance().cards[self.cardId]
    if self.cardData ~= nil then
        self:FilterSkillList(self.cardData.crystalType)
    end
end

-- 监听
local function OnAddListener(self)
    base.OnAddListener(self)
    --添加监听
    self:AddDataListener(DataMessageNames.ON_SELECT_CAN_LEARN_SKILL_ITEM, OnSelectSkill)
    self:AddDataListener(DataMessageNames.ON_SELECT_CAN_LEARN_SKILL_SHOW_TYPE, OnSelectShowType)
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- 移除监听
    self:RemoveDataListener(DataMessageNames.ON_SELECT_CAN_LEARN_SKILL_ITEM, OnSelectSkill)
    self:RemoveDataListener(DataMessageNames.ON_SELECT_CAN_LEARN_SKILL_SHOW_TYPE, OnSelectShowType)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

end

-- 销毁
local function OnDistroy(self)
    base.OnDistroy(self)
    -- 清理成员变量

end

UILearnSkillModel.OnCreate = OnCreate
UILearnSkillModel.OnEnable = OnEnable
UILearnSkillModel.OnRefresh = OnRefresh
UILearnSkillModel.OnAddListener = OnAddListener
UILearnSkillModel.OnRemoveListener = OnRemoveListener
UILearnSkillModel.OnDisable = OnDisable
UILearnSkillModel.OnDistroy = OnDistroy
UILearnSkillModel.FilterSkillList = FilterSkillList
UILearnSkillModel.GetBlankPosSkillID = GetBlankPosSkillID
return UILearnSkillModel