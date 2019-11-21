local UIToggle = BaseClass("UIToggle", UIBaseContainer)
local base = UIBaseContainer
-- 创建
local function OnCreate(self)
    base.OnCreate(self)
    -- Unity侧原生组件
    self.unity_uiToggle = UIUtil.FindToggle(self.transform)
end

local function SetEnabled(self,enable)
    if IsNull(self.unity_uiToggle) then
        return
    end
    self.unity_uiToggle.enabled = enable
end

--注，若绑定valuechanged回调，设置这个会默认调用一次回调
local function SetIsOn(self, active)
    if self.unity_uiToggle ~= nil then
        self.unity_uiToggle.isOn = active
    end
end

--注，unity,会在回调（callback）里默认传一个参数，该参数代表的是这个toggle的isOn状态
--暂时不支持传自定义参数，若需要，请先Bind，后设置回调
local function SetValueChanged(self, callback)
    if self.unity_uiToggle ~= nil then
        self.unity_uiToggle.onValueChanged:AddListener(callback)
    end
end

local function RemoveValueChanged(self, callback)
    if self.unity_uiToggle ~= nil then
        self.unity_uiToggle.onValueChanged:RemoveListener(callback)
    end
end

local function RemoveAllValueChanged(self)
    if self.unity_uiToggle ~= nil then
        self.unity_uiToggle.onValueChanged:RemoveAllListeners()
    end
end

-- 资源释放
local function OnDestroy(self)
    RemoveAllValueChanged(self)
    self.unity_uiToggle = nil
    base.OnDestroy(self)
end

UIToggle.OnCreate = OnCreate
UIToggle.SetEnabled = SetEnabled
UIToggle.SetIsOn = SetIsOn
UIToggle.SetValueChanged = SetValueChanged
UIToggle.RemoveValueChanged = RemoveValueChanged
UIToggle.RemoveAllValueChanged = RemoveAllValueChanged
UIToggle.OnDestroy = OnDestroy

return UIToggle