--[[
-- added by wsh @ 2017-12-01
-- UILogin模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UICommGetRewardsModel = BaseClass("UICommGetRewardsModel", UIBaseModel)
local base = UIBaseModel
local showItemData = require "DataCenter/ShowItemData/ShowItemData"
local allCardData
local allItemData
local allSkillData
local global_data

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    allCardData = DataUtil.GetData("card")
    allItemData = DataUtil.GetData("item")
    allSkillData = DataUtil.GetData("skill")
    global_data = DataUtil.GetData("global")
    -- 窗口生命周期内保持的成员变量放这
end

-- 打开
---  _rewards ----> msg_obj.Packages.dropItem 任务为1 特殊处理 type=2 代表冒险目标奖励
local function OnEnable(self, _rewards,_callback,forbid_level)
    base.OnEnable(self)

    if _rewards == nil then
        return
    end
    self.callback = _callback
    self.dropItem = _rewards
    self.rewards = {}
    self.type = 0
    self.forbid_level = forbid_level
    -- 窗口关闭时可以清理的成员变量放这
    if _rewards.exp ~= 0 then
        local expId = global_data[147].valueN
        local expValue = _rewards.exp - UserData:GetInstance().oldExp
        self.type = 14
        if expValue >0 and allItemData[expId] ~= nil then
            local item = showItemData.New()
            item.id = expId
            item.name = allItemData[expId].Name
            item.quality = allItemData[expId].Quality
            item.type =allItemData[expId].ItemType
            item.icon = allItemData[expId].Icon
            item.num = expValue
            --BackpackData:GetInstance():UpdateItemData(item.id, item.num)
            table.insert(self.rewards, item)
            --if self.type ~= nil and self.type == 14 then
            --DataManager:GetInstance():Broadcast(DataMessageNames.ON_PLAYER_LEVEL_UPDATE)
            -- end
        end
    end
    if not _rewards.cards._is_null then
        for _, v in ipairs(_rewards.cards) do
            self.type= 11
            local cardData = allCardData[v.id]
            if cardData ~= nil then
                local item = showItemData.New()
                item.id = v.id
                item.name = cardData.Name
                item.quality = cardData.Quality
                item.type = 11
                item.icon = cardData.Icon
                item.num = 1
                --BackpackData:GetInstance():UpdateItemData(item.id, item.num)
                table.insert(self.rewards, item)
            end
        end
    end
    if not _rewards.items._is_null then
        for _, v in ipairs(_rewards.items) do
            local itemData = allItemData[v.itemId]
            local judge_data= self:CheckRewardHaveThisID(v.itemId)
            if itemData ~= nil then
                if judge_data then
                    judge_data.num=judge_data.num+v.count
                else
                    local item = showItemData.New()
                    item.id = v.itemId
                    item.name = itemData.Name
                    item.quality = itemData.Quality
                    item.type = 16
                    item.icon = itemData.Icon
                    item.num = v.count
                    table.insert(self.rewards, item)
                end

                --BackpackData:GetInstance():UpdateItemData(item.id, item.num)

            end
        end
    end
    if not _rewards.skills._is_null then
        for _, v in ipairs(_rewards.skills) do
            local itemData = allSkillData[v.templateId]
            if itemData ~= nil then
                local item = showItemData.New()
                item.id = v.id
                item.name = itemData.Name
                item.quality = itemData.Quality
                item.type = 13
                item.icon = itemData.Icon
                item.num = 1
                --BackpackData:GetInstance():UpdateItemData(item.id, item.num)
                table.insert(self.rewards, item)
            end
        end
    end
    if not _rewards.equips._is_null then

        for _, v in ipairs(_rewards.equips) do
            local itemData =EquipData:GetInstance():GetEquipDataById(v.id);
            if itemData ~= nil then
                local xlsxData=DataUtil.GetDataByIdAndType(v.templateId);
                local item = showItemData.New()
                item.id = v.id
                item.name = xlsxData.name;
                item.quality = xlsxData.quality;
                item.type = xlsxData.type
                item.icon = xlsxData.icon
                item.num = 1
                --BackpackData:GetInstance():UpdateItemData(item.id, item.num)
                table.insert(self.rewards, item)
            end
        end
    end

end

local function CheckRewardHaveThisID(self,id)
    for i, v in ipairs(self.rewards) do
        if v.id==id then
            return v
        end
    end
    return nil
end
-- 监听
local function OnAddListener(self)
end

local function OnRemoveListener(self)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    self.rewards = {}
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
end

UICommGetRewardsModel.OnCreate = OnCreate
UICommGetRewardsModel.OnEnable = OnEnable
UICommGetRewardsModel.OnAddListener = OnAddListener
UICommGetRewardsModel.OnRemoveListener = OnRemoveListener
UICommGetRewardsModel.OnDisable = OnDisable
UICommGetRewardsModel.OnDestroy = OnDestroy
UICommGetRewardsModel.CheckRewardHaveThisID= CheckRewardHaveThisID
return UICommGetRewardsModel