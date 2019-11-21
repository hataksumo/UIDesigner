local UIModeTypeItem = BaseClass("UIModeTypeItem", UIWrapComponent)
local base = UIWrapComponent

-- 组件添加了按钮组，则按钮被点击时回调该函数
local function OnItemClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")

    self.select:SetActive(true)
    --刷新右侧的item
    DataManager:GetInstance():Broadcast(DataMessageNames.ON_TRAININGCAMP_SELECT_ITEM, self.index, self.id)
end
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.name_text = self:AddComponent(UIText, "Title")
    self.image = self:AddComponent(UIImage, "Image", AtlasConfig.DynamicTex)
    self.select = UIUtil.FindTrans(self.transform, "Select").gameObject
    self.item_btn = self:AddComponent(UIButton, "BG")
    self.item_btn:SetOnClick(self, OnItemClick)
end
-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self, real_index, check)
    --获得策划表数据
    local itemData = self.view.model.passTagList[real_index + 1]
    if itemData == nil then
        return
    end
    self.index = real_index
    self.id = itemData.ID
    self.image:SetSpriteName(itemData.ImageRes)
    self.name_text:SetText(itemData.Name)

    if self.view.model.curIndex == real_index then
        self.select:SetActive(true)
    else
        self.select:SetActive(false)
    end
end

UIModeTypeItem.OnCreate = OnCreate
UIModeTypeItem.OnRefresh = OnRefresh
return UIModeTypeItem