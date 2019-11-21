--[[
-- added by wsh @ 2017-12-01
-- UILogin模型层
-- 注意：
-- 1、成员变量预先在OnCreate、OnEnable函数声明，提高代码可读性
-- 2、OnCreate内放窗口生命周期内保持的成员变量，窗口销毁时才会清理
-- 3、OnEnable内放窗口打开时才需要的成员变量，窗口关闭后及时清理
-- 4、OnEnable函数每次在窗口打开时调用，可传递参数用来初始化Model
--]]

local UIBackpackModel = BaseClass("UIBackpackModel", UIBaseModel)
local base = UIBaseModel

local function SaveShowIndex(self, _index, _id)
    self.dataIndex = _index
    self.dataId = _id
    self:UIBroadcast(UIMessageNames.UIBACKPACK_ON_SELECT_CARD, self.dataIndex)
end


local function sort_(a, b)
    local r
    local al = tonumber(a.quality)
    local bl = tonumber(b.quality)
    local aid = tonumber(a.id)
    local bid = tonumber(b.id)
    local am = tonumber(a.haveNum)
    local bm = tonumber(b.haveNum)
    if  al == bl then
        if aid == bid then
            return am < bm
        else
            r = aid < bid
        end
    else
        r = al > bl
    end
    return r
end

local function ItemDataSort(self)
    table.sort( self.itemDataAll,sort_)
--[[    table.sort( self.itemMaterialsData,sort_)
    table.sort( self.itemDebrisForPeoData,sort_)
    table.sort( self.itemDebrisForMonData,sort_)
    table.sort( self.itemConsumeData,sort_)
    table.sort( self.itemBoxData,sort_)]]
end

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 窗口生命周期内保持的成员变量放这
    self.dataIndex = 0
    self.dataId = 0
end


---技能数据赋值
local function SetSkillBackPackData(self)
    local itemDataAll  = BackpackData:GetInstance().items
    if itemDataAll == nil then
        return
    end
    self.itemDataAll = {}
    for _, v in pairs(itemDataAll) do
        if v.showBag then
            local num = v.haveNum
            local add_Num = math.ceil(num / v.canOverlap)
            for i = 1, add_Num do
                local item = {}
                item.id = v.id
                if num <= v.canOverlap then
                    item.haveNum = num
                else
                    item.haveNum = v.canOverlap
                    num = num - v.canOverlap
                end
                item.name = v.name
                item.icon = v.icon
                item.type = v.type
                item.backPackType = v.backPackType
                item.quality = v.quality
                item.frame = v.frame
                item.shortDes = v.shortDes
                item.des = v.des
                item.canOverlap = v.canOverlap
                item.itemSource = v.itemSource
                item.canSell = v.canSell
                item.canUse = v.canUse
                item.boxDrop = v.boxDrop
                item.sellGetCoin = v.sellGetCoin
                item.showBag = v.showBag
                table.insert( self.itemDataAll,item)
            end
        end
    end
end
---按类型区分数据
local function SetSkillDataByType(self)
    if self.itemDataAll==nil then
        return
    end
    for _, v in pairs(self.itemDataAll) do
        if v.backPackType==1 then
            table.insert(self.itemMaterialsData,v)
        end
        if v.backPackType==2 then
            table.insert(self.itemDebrisForPeoData,v)
        end
        if v.backPackType==3 then
            table.insert(self.itemDebrisForMonData,v)
        end
        if v.backPackType==4 then
            table.insert(self.itemConsumeData,v)
        end
        if v.backPackType==5 then
            table.insert(self.itemBoxData,v)
        end
    end
end

local function OnShowData(self)
    ---背包的全部数据
    self.itemDataAll = {}
    ---背包的材料数据
    self.itemMaterialsData = {}
    ---背包的碎片（人）数据
    self.itemDebrisForPeoData = {}
    ---背包的碎片（灵）数据
    self.itemDebrisForMonData = {}
    ---背包的消耗数据
    self.itemConsumeData = {}
    ---背包的宝箱数据
    self.itemBoxData = {}
    SetSkillBackPackData(self)
    SetSkillDataByType(self)
    ItemDataSort(self)
end

local function UpdateItemData(self)
    OnShowData(self)
    self:UIBroadcast(UIMessageNames.UPDATE_ITEM_COUNT)
end


-- 打开
local function OnEnable(self)
    base.OnEnable(self)
    -- 窗口关闭时可以清理的成员变量放这
    OnShowData(self)
    self:OnRefresh()
end

-- 刷新全部数据
local function OnRefresh(self)

end

-- 监听
local function OnAddListener(self)
    self:AddDataListener(DataMessageNames.ON_UI_BACKPACK_SAVE_INDEX, SaveShowIndex)
    self:AddDataListener(DataMessageNames.ON_ITEM_CHANGE, UpdateItemData)
end

local function OnRemoveListener(self)
    self:RemoveDataListener(DataMessageNames.ON_UI_BACKPACK_SAVE_INDEX, SaveShowIndex)
    self:RemoveDataListener(DataMessageNames.ON_ITEM_CHANGE, UpdateItemData)
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
end

-- 销毁
local function OnDestroy(self)
    base.OnDestroy(self)
    -- 清理成员变量
end

UIBackpackModel.OnCreate = OnCreate
UIBackpackModel.OnEnable = OnEnable
UIBackpackModel.OnRefresh = OnRefresh
UIBackpackModel.OnAddListener = OnAddListener
UIBackpackModel.OnRemoveListener = OnRemoveListener
UIBackpackModel.OnDisable = OnDisable
UIBackpackModel.OnDestroy = OnDestroy
UIBackpackModel.SaveShowIndex = SaveShowIndex

return UIBackpackModel