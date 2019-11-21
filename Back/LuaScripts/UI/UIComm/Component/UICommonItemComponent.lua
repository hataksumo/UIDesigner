---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/3/1 10:17
---

local ItemComponent = BaseClass("ItemComponent", UIBaseContainer);
local base = UIBaseContainer;
local item_prb_path="UI/Prefabs/View/CommonItemPrefab.prefab"


local function OnCreate(self)
    base.OnCreate(self);
    self.transform.rotation =Vector3.New(0,0,0)
    self.itemIcon=self:AddComponent(UIImage,"icon",AtlasConfig.DynamicTex);
    self.itemFrame=self:AddComponent(UIImage,"FrameImage",AtlasConfig.DynamicTex);
    self.itemType=UIUtil.FindTrans(self.transform,"typeimage") --self:AddComponent(UIImage,"typeimage",AtlasConfig.DynamicTex);
    self.itemTypeName=self:AddComponent(UIText,"typeimage/Text");
    self.bg = self:AddComponent(UIImage,"Image")
    self.itemName=self:AddComponent(UIText,"name_UIText");
    self.itemNum=self:AddComponent(UIText,"num");
    self.info_iconPress=self:AddComponent(UIEventTrigger,"icon")
    self.info_iconPress:SetOnLongPress(function()
        if self.type==1 or self.type==2 then
            local str=self.type==1 and "解锁神器:" or "解锁功能:";
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIHellItemTips,{title=self.data.TypeName,info=string.format("%s%s",str,self.data.Des)})
        else
            UIManager:GetInstance():OpenWindow(UIWindowNames.UIItemTips,self.itemDataId)
        end

    end,(function()
        if self.type==1 or self.type==2 then
            UIManager:GetInstance():CloseWindow(UIWindowNames.UIHellItemTips)
        else
            UIManager:GetInstance():CloseWindow(UIWindowNames.UIItemTips)
        end

    end),true)
    self.itemType.gameObject:SetActive(false)
end

--刷新
--item_list{{Id=0,Num=10},{Id=0,Num==10},{Id=0,Num==10}};
local function Refresh(self,itemData,isShowName)
    self.data=itemData;
    local itemXlsxData= DataUtil.GetDataByIdAndType(itemData.Id);
    self.type=itemData.Type;
    self.itemDataId = itemData.Id
    self.itemIcon:SetSpriteName(itemXlsxData.icon);
    self.itemFrame:SetSpriteName(SpriteDefine:GetItemQualityFrameByType(itemXlsxData.quality));
    self.itemNum:SetText(itemData.Num);
    self.itemName.gameObject:SetActive(isShowName)
    self.bg.gameObject:SetActive(isShowName)
    self.itemNum.gameObject:SetActive(itemData.Num>0);
end
--item_list{{Id=0,Num=10,Frame="",Icon="",TypeName="",Des="",Quality=},{。。。}};
local function RefreshFunctionItem(self,itemData)
    self.data=itemData;
    self.type=itemData.Type;
    self.itemDataId = itemData.Id
    self.itemIcon:SetSpriteName(itemData.Icon)
    --self.itemIcon:SetNativeSize()
    self.itemFrame:SetSpriteName(itemData.Frame)
   -- self.itemFrame:SetNativeSize()
    self.itemNum:SetText(itemData.Num)
    self.itemNum.gameObject:SetActive(itemData.Num>0)
    self.itemType.gameObject:SetActive(true)
    self.itemTypeName:SetText(itemData.TypeName)
    self.itemName:SetText(itemData.Des)

end

local function RecyleItem(self)
    GameObjectPool:GetInstance():RecycleGameObject(item_prb_path,self.transform.gameObject);
    self:OnDestroy();
end

ItemComponent.OnCreate=OnCreate;
ItemComponent.RefreshFunctionItem=RefreshFunctionItem;
ItemComponent.Refresh=Refresh;
ItemComponent.RecyleItem=RecyleItem;
return ItemComponent;