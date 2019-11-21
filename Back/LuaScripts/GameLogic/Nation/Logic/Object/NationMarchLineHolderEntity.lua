---
--- 队伍对象持有者
--- DateTime: 2019/7/18 16:08
---
local NationMarchLineHolderEntity=BaseClass("NationMarchLineHolderEntity", UIBaseNationComponent)
--local NationUtil = require "GameLogic.Nation.NationUtil"
local base = UIBaseNationComponent

local function OnCreate(self)
    base.OnCreate(self)
    self.lineCtrl = self.transform:GetComponent(typeof(CS.LJTilemaps.DiLineCtrl)) --持有一个路线对象
end

local function OnEnable(self)
    base.OnEnable(self)

end


local function SetSharedMaterial(self,mat)
    self.lineCtrl:SetSharedMaterial(mat)

end

local function SetSegmentNum(self,num)
    self.lineCtrl:SetSegmentNum(num)
end


local function ForceUpdateMe(self,mat)
    self.lineCtrl:ForceUpdateMe()
end

local function SetName(self,name)
   self.gameObject.name = name
end

local function SetPoints(self,parent,p0,p1,p2,p3)
    if not IsNull( parent ) then
        self.transform:SetParent(parent)
    end
    self.transform.position = p0
    self.lineCtrl.localP1 = p1
    self.lineCtrl.localP2 = p2
    self.lineCtrl.localEndPos = p3
end

local function OnDestroy(self)
    -- 销毁
    base.OnDestroy(self)
    self.lineCtrl = nil
end

-- 关闭
local function OnDisable(self)
    base.OnDisable(self)
    -- 清理成员变量

end


local function OnAddListener(self)
    base.OnAddListener(self)
    -- UI消息注册
end

local function OnRemoveListener(self)
    base.OnRemoveListener(self)
    -- UI消息注销
end



--释放资源
local function Dispose(self)
    if not IsNull(self.gameObject) then
        GameObjectPool:GetInstance():RecycleGameObject(NationDefine.MAP_MARCH_LINE_TEMPLATE,self.gameObject)
    end
    self.lineCtrl = nil
end

local function CleanRunData(self)
    if not IsNull(self.gameObject) then
        GameObjectPool:GetInstance():RecycleGameObject(NationDefine.MAP_MARCH_LINE_TEMPLATE,self.gameObject)
    end
end

NationMarchLineHolderEntity.OnCreate = OnCreate
NationMarchLineHolderEntity.OnEnable = OnEnable
NationMarchLineHolderEntity.OnDestroy = OnDestroy
NationMarchLineHolderEntity.OnDisable = OnDisable
NationMarchLineHolderEntity.OnAddListener = OnAddListener
NationMarchLineHolderEntity.OnRemoveListener = OnRemoveListener

NationMarchLineHolderEntity.Dispose=Dispose
NationMarchLineHolderEntity.CleanRunData=CleanRunData
NationMarchLineHolderEntity.SetSharedMaterial=SetSharedMaterial
NationMarchLineHolderEntity.ForceUpdateMe=ForceUpdateMe
NationMarchLineHolderEntity.SetName=SetName
NationMarchLineHolderEntity.SetPoints=SetPoints
NationMarchLineHolderEntity.SetSegmentNum=SetSegmentNum

return NationMarchLineHolderEntity