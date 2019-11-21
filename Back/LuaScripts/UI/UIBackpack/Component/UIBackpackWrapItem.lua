--[[
-- added by wsh @ 2017-12-11
-- UIBackpack模块中卡牌列表的可复用Item
--]]

local UIBackpackWrapItem = BaseClass("UIBackpackWrapItem", UIWrapComponent)
local base = UIWrapComponent

---点击单个物品
local function OnItemClick(self)
    LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
    if self.item_single_data==nil then
        return
    end
    self.view.SetLeftPanelData(self.view, self.index,self.item_single_data)
end

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.item_icon_img=self:AddComponent(UIImage,"Image/icon",AtlasConfig.DynamicTex)
    self.quality_img=self:AddComponent(UIImage,"Image",AtlasConfig.DynamicTex)
    self.item_btn = self:AddComponent(UIButton,"")
    self.have_num_text = self:AddComponent(UIText,"Image/num")
    self.chip_obj = UIUtil.FindTrans(self.transform,"Image/chip")
    self.item_btn:SetOnClick(self,OnItemClick)
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,real_index)
    self.index = real_index
    self.slect=UIUtil.FindTrans(self.transform,"Image (1)/ItemSlect");
    if self.index==self.view.slect_Index then
        if self.slect~=nil and  not self.slect.gameObject.activeInHierarchy then
            self.slect.gameObject:SetActive(true)
        end
    else
        if self.slect~=nil and self.slect.gameObject.activeInHierarchy then
            self.slect.gameObject:SetActive(false)
        end
    end
    self.item_single_data=self.view.itemList[real_index+1]
    if self.item_single_data == nil then
        return
    end
    local cheseItemImg=UIUtil.FindTrans(self.transform,"cheseImg")
    if self.view.itemData~=nil and cheseItemImg~=nil then
        self.view.chese_item_img.gameObject:SetActive(self.view.itemData.id==self.item_single_data.id)
    end
    if self.chip_obj ~= nil then
        self.chip_obj.gameObject:SetActive(self.item_single_data.type == 17 )
    else
        Logger.LogError("chip_obj  查不到")
    end
    self.have_num_text:SetText(math.floor(self.item_single_data.haveNum))
    self.item_icon_img:SetSpriteName(self.item_single_data.icon)
    if self.item_single_data.quality == 1 then
        self.quality_img:SetSpriteName(SpriteDefine._Frame_N)
    elseif self.item_single_data.quality == 2 then
        self.quality_img:SetSpriteName(SpriteDefine._Frame_R)
    elseif self.item_single_data.quality == 3 then
        self.quality_img:SetSpriteName(SpriteDefine._Frame_SR)
    elseif self.item_single_data.quality == 4 then
        self.quality_img:SetSpriteName(SpriteDefine._Frame_SSR)
    end
end

UIBackpackWrapItem.OnCreate = OnCreate
UIBackpackWrapItem.OnRefresh = OnRefresh
UIBackpackWrapItem.OnItemClick = OnItemClick

return UIBackpackWrapItem