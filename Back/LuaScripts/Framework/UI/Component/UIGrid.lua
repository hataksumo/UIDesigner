--[[
-- added by wsh @ 2017-12-08
-- Lua侧Grid
-- 使用方式：
-- self.xxx_input = self:AddComponent(UIInput, var_arg)--添加孩子，各种重载方式查看UIBaseContainer
--]]

local UIGrid = BaseClass("UIGrid", UIBaseComponent)
local base = UIBaseComponent

-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- Unity侧原生组件
    self.unity_uigrid = UIUtil.FindGrid(self.transform)

    if not IsNull(self.unity_uigrid) and IsNull(self.gameObject) then
        self.gameObject = self.unity_uigrid.gameObject
        self.transform = self.unity_uigrid.transform
    end
end

-- 设置enable
local function SetEnable(self,state)
    if not IsNull(self.unity_uigrid) then
        self.unity_uigrid.enabled=state
    end
end

-- 销毁
local function OnDestroy(self)
    self.unity_uigrid = nil
    base.OnDestroy(self)
end

UIGrid.OnCreate = OnCreate
UIGrid.SetEnable = SetEnable
UIGrid.OnDestroy = OnDestroy


return UIGrid