local UIMonsterItem = BaseClass("UIMonsterItem", UIWrapComponent)
local base = UIWrapComponent
local battle_role_config = DataUtil.GetData("battle_role_config")

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- 组件初始化

    self.name_text = self:AddComponent(UIText, "Name")
    self.level_text = self:AddComponent(UIText, "Level")
    self.ModelRootTrans = UIUtil.FindTrans(self.transform, "3DModel")

    self.item_btn = self:AddComponent(UIButton, "Icon")
    self.item_btn:SetOnClick(self, function()
        LJAudioManger:GetInstance():PlayVoice("UI_CommonClick")
        self.view:OnClickOutlawItem(self.posID)
    end)
end

local function OnRefresh(self, itemData)
    if itemData ~= nil then
        self.id = itemData.CrusadeID
        self.posID = itemData.PosID
        self.name_text:SetText(itemData.Name)
        self.level_text:SetText(itemData.Level)

        if self.characterObj == nil then
            self.characterObj_prefab_Name = battle_role_config[itemData.ModelID].prefab_Name
            GameObjectPool:GetInstance():GetGameObjectAsync(self.characterObj_prefab_Name, function(go)
                self.characterObj = go
                self.characterObj.transform:SetParent(self.ModelRootTrans)
                self.characterObj.layer = 5
                local transList = self.characterObj:GetComponentsInChildren(typeof(CS.UnityEngine.Transform))
                for i = 0, transList.Length - 1 do
                    transList[i].gameObject.layer = 5
                end
                --self.characterObj.transform.localPosition = Vector3.New(-89, -66, -215)
                self.characterObj.transform.localPosition = Vector3.zero
                self.characterObj.transform.localScale = Vector3.New(90, 90, 90)
                self.characterObj.transform.localRotation = Quaternion.Euler(0, 0, 0)
                self.characterObj.gameObject:SetActive(true)
            end)
        end

        self.transform.gameObject:SetActive(true)
    else
        self.transform.gameObject:SetActive(false)
    end
end

local function OnDisable(self)
    base.OnDisable(self)

end

local function OnDestroy(self)
    base.OnDestroy(self)
    if self.characterObj ~= nil and self.characterObj_prefab_Name ~= nil then
        GameObjectPool:GetInstance():RecycleGameObject(self.characterObj_prefab_Name, self.characterObj)
    end
end

UIMonsterItem.OnCreate = OnCreate
UIMonsterItem.OnDisable = OnDisable
UIMonsterItem.OnRefresh = OnRefresh
UIMonsterItem.OnDestroy = OnDestroy

return UIMonsterItem