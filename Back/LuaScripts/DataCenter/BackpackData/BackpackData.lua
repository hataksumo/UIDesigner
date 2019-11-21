local ItemData = {
    --暂定
    --物品id
    id = 0,
    --物品名称
    name = "",
    --物品等级
    level = 0,
    --物品评级
    quality = 0,
    --物品类型
    type = 0,
    --在背包中那一页显示1-材料2-寄灵人碎片3-守护灵碎片4-消耗5-宝箱
    backPackType = 0,
    --物品icon
    icon = "",
    --品质框
    frame = "",
    --物品立绘
    painting = "",
    --拥有数量
    haveNum = 0,
    --是否可出售0不 1可
    canSell = 0,
    --是否可使用0不 1可
    canUse = 0,
    --出售获得的物品id
    sellGetCoin = 0,
    --物品获得方式
    itemSource = "",
    --是否可叠加
    canOverlap = 0,
    --物品详情描述
    des = "",
    --物品简单描述
    shortDes = "",
    --是否在背包中显示 0不显示 1显示
    showBag = 0,
    --掉了组id
    boxDrop = 0
}

local BackpackData = BaseClass("BackpackData", Singleton)
local BackpackItem = DataClass("BackpackItem", ItemData)
local allItemData


local function GetSerBagData(self)
    -- 背包数据请求
    local backpackMsg_id = MsgIDDefine.PBUSER_GET_ALL_BAG_REQUEST
    local backpackMsg = (MsgIDMap[backpackMsg_id])()
    backpackMsg.itemIndex = 0
    --接受背包消息
    local function OnRecvBackpackData(self,msg_obj)
        if msg_obj.OpCode ~= 0 then
            Logger.Log("OnRecvBackpackData失败； ".." OpCode :"..msg_obj.OpCode.." msg : "..table.dump(msg_obj.Packages,nil,10))
            --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBUSER_GET_ALL_BAG_RESPONSE,OnRecvBackpackData)
            return
        end
        if msg_obj.Packages.itemIsFinish then
            --NetManager:GetInstance():RemoveListener(MsgIDDefine.PBUSER_GET_ALL_BAG_RESPONSE,OnRecvBackpackData)
            --启动体力
            UserData:GetInstance():BeginStaminTier()

        else
            local backpackMsg_id = MsgIDDefine.PBUSER_GET_ALL_BAG_REQUEST
            local backpackMsg = MsgIDMap[backpackMsg_id]()
            backpackMsg.itemIndex = msg_obj.Packages.itemNextIndex
            NetManager:GetInstance():SendMessage(backpackMsg_id, backpackMsg,Bind(self,OnRecvBackpackData))
        end
        self:ParseItemListFromServer(msg_obj.Packages.items,msg_obj.Packages.itemIsFinish)
    end
    NetManager:GetInstance():InsetQueneMessage(backpackMsg_id, backpackMsg,Bind(self,OnRecvBackpackData))
end
local function __init(self)
    -- 背包物品列表
    self.items = {}
    allItemData = DataUtil.GetData("item")
    self.physicalNum=0
    self.stamina=0
    self.caseList = {
        [CoinDefine.Diamond] = function()
            UIManager:GetInstance():Broadcast(UIMessageNames.ON_DIAMOND_NUM_CHANGE)
        end,
        [CoinDefine.Gold] = function()
            UIManager:GetInstance():Broadcast(UIMessageNames.ON_GOLD_NUM_CHANGE)
        end,
        [CoinDefine.GuardExp] = function()
            UIManager:GetInstance():Broadcast(UIMessageNames.ON_GUARD_EXP_NUM_CHANGE)
        end,
        [CoinDefine.HostExp] = function()
            UIManager:GetInstance():Broadcast(UIMessageNames.ON_HOST_EXP_NUM_CHANGE)
        end,
        [CoinDefine.SkillExp] = function()
            UIManager:GetInstance():Broadcast(UIMessageNames.ON_SKILL_EXP_NUM_CHANGE)
        end,
        [CoinDefine.Stamina] = function()
            UIManager:GetInstance():Broadcast(UIMessageNames.ON_STAMINA_NUM_CHANGE)
        end,
        [CoinDefine.Honor] = function()
            UIManager:GetInstance():Broadcast(UIMessageNames.ON_HONOR_NUM_CHANGE)
        end,
    }
    self.getNewCardData = {}
end

local function NotifyChange(self, itemId)
    --卡牌红点更新
    CardData:GetInstance():CheckALLRedByCard()
    SkillData:GetInstance():UpdateSkillRed()
    ArtifactsData:GetInstance():SetArtifactIsHaveRedPoint()

    DataManager:GetInstance():Broadcast(DataMessageNames.ON_ITEM_CHANGE)
end

-- 解析背包数据
local function ParseItemListFromServer(self, items,finish)
    for _, v in ipairs(items) do
        self:UpdateItemData(v.itemId, v.count,true)
    end
    if finish == nil or finish then
        NotifyChange(self)
    end
end

local function UpdateItemData(self, itemId, itemChangeCount,noFinish)
    local itemData = self.items[itemId]
    if itemData ~= nil then
        itemData.haveNum = itemData.haveNum + itemChangeCount
        if itemData.haveNum < 1 then
            self.items[itemId] = nil
        end
    elseif itemChangeCount > 0 then
        assert(allItemData)
        local item = BackpackItem.New()
        item.id = itemId
        item.haveNum = itemChangeCount
        local itemStaticData = allItemData[item.id]
        if itemStaticData ~= nil then
            item.name = itemStaticData.Name
            item.icon = itemStaticData.Icon
            item.painting = itemStaticData.Icon
            item.type = itemStaticData.ItemType
            item.backPackType = itemStaticData.ShowBagTab
            item.quality = itemStaticData.Quality
            item.frame = SpriteDefine:GetItemQualityFrameByType(item.quality)
            item.shortDes = itemStaticData.ShortDes
            item.des = itemStaticData.Des
            item.canOverlap = itemStaticData.CanOverlap
            item.itemSource = itemStaticData.ItemSource
            item.canSell = itemStaticData.CanSell
            item.canUse = itemStaticData.UseType
            item.boxDrop = itemStaticData.BoxDrop
            item.sellGetCoin = itemStaticData.SellGetCoin
            item.showBag = itemStaticData.ShowBag
            self.items[item.id] = item
        else
            Logger.LogError("Item No ID"..itemId)
            self.items[item.id] = nil
        end
    end
    if self.caseList[itemId] then
        self.caseList[itemId]()
        UIManager:GetInstance():Broadcast(UIMessageNames.ON_SOME_COIN_NUM_CHANGE)
    end
    if not noFinish then
        --物品更新通知
        NotifyChange(self,itemId)
    end

end
--根据物品id获取信息
local function GetItemDataById(self, id)
    return self.items[id]
end
--根据物品id获取数量
local function GetItemNumById(self, id)
    if self.items[id] == nil or self.items[id].haveNum==nil then
        return 0
    end
    return Mathf.Floor(self.items[id].haveNum)
end
--根据物品id获取数量
local function GetItemTypeById(self, id)
    if self.items[id] == nil then
        return allItemData[id].ItemType
    end
    return math.floor(self.items[id].type)
end
local function __delete(self)
    self.items = nil
    self.physicalNum=0
    self.stamina=0
    self.caseList = nil
end
BackpackData.ParseItemListFromServer = ParseItemListFromServer
BackpackData.GetItemDataById = GetItemDataById
BackpackData.GetItemNumById = GetItemNumById
BackpackData.UpdateItemData = UpdateItemData
BackpackData.GetItemTypeById = GetItemTypeById
BackpackData.__init = __init
BackpackData.__delete=__delete
BackpackData.GetSerBagData = GetSerBagData
return BackpackData