local UINationDefRecoverItem = BaseClass("UINationDefRecoverItem", UIBaseContainer)
local base = UIBaseContainer
local UINationDefTimeItem = require "UI.UINationBuildInfo.Component.UINationDefTimeItem"
local NATION_DEF_RECOVER_TIME_PATH = "UI/Prefabs/Other/NationDefRecoverTimeItem.prefab"

local function OnCreate(self)
    base.OnCreate(self)
    self.hideTran= UIUtil.FindTrans(self.transform, "hideTran")
    self.recoverTip_UIText = self:AddComponent(UIText, "hideTran/recoverTipBack_UIImage/recoverTip_UIText")
    self.girdTran= UIUtil.FindTrans(self.transform, "hideTran/grid")
    self.recoverTip_UIText:SetText("守军恢复中")
    self.timeComps = nil
end

local function OnEnable(self)

end

local function OnDisable(self)
    self:__DisposeSelf()
end


local function OnDestroy(self)

end


local function __GetModelTownDefRecoverDataByTownIdAndPos(self,townId,pos)
    if self.rootView == nil then
        return nil
    end
    local modelData =  self.rootView:GetModelTownDefRecoverDataByTownIdAndPos(townId,pos)
    return modelData
end

local function __DisposeOneTime(self,uiView,go,id)
    if uiView ~= nil then
        uiView:OnDisposeItem()
    end
    if not IsNull(go) then
        GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_TIME_PATH, go)
    end
    if self.timeComps ~= nil then
        if id ~= nil then
            self.timeComps[id] = nil
        end
    end
end

local function __CreateTimeItem(self,townId,pos,endTime,id)
    if self.rootView == nil then
        return
    end
    local uiNationDefTimeItem = nil
    if self.timeComps ~= nil then
        uiNationDefTimeItem = self.timeComps[id]
    end
    local modelData =  self:__GetModelTownDefRecoverDataByTownIdAndPos(townId,pos)
    if modelData == nil then
        if uiNationDefTimeItem ~= nil then
            self:__DisposeOneTime(uiNationDefTimeItem,uiNationDefTimeItem.gameObject,id)
        end
        return
    end
    if uiNationDefTimeItem ~= nil then
        uiNationDefTimeItem:OnRefresh(self.rootView,self,townId,pos,endTime,id)
    else
        GameObjectPool:GetInstance():GetGameObjectAsync(NATION_DEF_RECOVER_TIME_PATH, function(go)
            if not IsNull(go) then
                local tran = go.transform
                if self == nil then
                    GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_TIME_PATH, go)
                elseif self.rootView == nil then
                    if self.timeComps == nil then
                        GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_TIME_PATH, go)
                    else
                        local uiNationDefTimeItem = self.timeComps[id]
                        if uiNationDefTimeItem ~= nil then
                            self:__DisposeOneTime(uiNationDefTimeItem,uiNationDefTimeItem.gameObject,id)
                            GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_TIME_PATH, go)
                        else
                            self:__DisposeOneTime(nil,nil,id)
                        end
                    end
                else
                    tran:SetParent(self.girdTran)
                    tran.rotation = Vector3.zero
                    tran.localPosition = Vector3.zero
                    tran.localScale = Vector3.one
                    if self.timeComps == nil then
                        self.timeComps = {}
                    end

                    local modelData =  self:__GetModelTownDefRecoverDataByTownIdAndPos(townId,pos)
                    local uiNationDefTimeItem = nil
                    if self.timeComps ~= nil then
                        uiNationDefTimeItem = self.timeComps[id]
                    end

                    if modelData == nil  then -- 不需要这个东西了
                        self:__DisposeOneTime(uiNationDefTimeItem,uiNationDefTimeItem == nil and  nil or uiNationDefTimeItem.gameObject,id)
                        GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_TIME_PATH, go)
                        return
                    else
                        local isCreate = false
                        if uiNationDefTimeItem ~= nil then
                            GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_TIME_PATH, go)
                        else
                            uiNationDefTimeItem = UINationDefTimeItem.New(self,go)
                            uiNationDefTimeItem:OnCreate()
                            isCreate = true
                        end
                        --self.timeComps[id] = uiNationDefTimeItem
                        if isCreate then
                            self.timeComps[id] = uiNationDefTimeItem
                        end
                        uiNationDefTimeItem:OnRefresh(self.rootView,self,townId,pos,endTime,id)
                    end
                end
            else
                local modelData =  self:__GetModelTownDefRecoverDataByTownIdAndPos(townId,pos)
                if modelData == nil then
                    if uiNationDefTimeItem ~= nil then
                        uiNationDefTimeItem:OnDisposeItem()
                        GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_TIME_PATH, uiNationDefTimeItem.gameObject)
                        self.timeComps[id] = nil
                    end
                end
            end
        end)
    end
end


-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,rootView,townId)
    self.rootView = rootView
    self.townId = townId
    self.gameObject.name = tostring(townId)

    if self.rootView == nil then
        self:__DisposeSelf()
    else
        local modelData = self.rootView:GetModelTownDefRecoverDataByTownId(self.townId)
        local uiData = self.rootView:GetUITownDefRecoverDataByTownId(self.townId)
        if uiData == nil then -- 没有数据
            self:__DisposeSelf()
        else
            self:OnDisposeItem()
            if uiData.isActive then
                self:SetHideTranActive(true)
            else
                self:SetHideTranActive(false)
            end
            local timeDatas = modelData.datas
            for i, v in ipairs(timeDatas) do
                __CreateTimeItem(self,modelData.townId,v.pos,v.endTime,v.defRecoverId)
            end
        end
    end
end

local function __DisposeSelf(self)
    self:OnDisposeItem()
    self.rootView = nil
end

local function SetHideTranActive(self, isActive)
    self.hideTran.gameObject:SetActive(isActive)
end


local function OnDisposeItem(self)
    if self.timeComps ~= nil then
        for i, v in pairs(self.timeComps) do
            v:OnDisposeItem()
            GameObjectPool:GetInstance():RecycleGameObject(NATION_DEF_RECOVER_TIME_PATH, v.gameObject)
        end
        self.timeComps = nil
    end
end

UINationDefRecoverItem.OnCreate = OnCreate
UINationDefRecoverItem.OnDestroy = OnDestroy
UINationDefRecoverItem.OnDisposeItem = OnDisposeItem
UINationDefRecoverItem.OnRefresh = OnRefresh
UINationDefRecoverItem.OnEnable=OnEnable
UINationDefRecoverItem.OnDisable=OnDisable
UINationDefRecoverItem.SetHideTranActive=SetHideTranActive
UINationDefRecoverItem.__DisposeSelf=__DisposeSelf
UINationDefRecoverItem.__GetModelTownDefRecoverDataByTownIdAndPos = __GetModelTownDefRecoverDataByTownIdAndPos
UINationDefRecoverItem.__DisposeOneTime=__DisposeOneTime


return UINationDefRecoverItem