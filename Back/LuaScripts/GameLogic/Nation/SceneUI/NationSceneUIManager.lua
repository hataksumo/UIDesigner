--[[
-- added by wsh @ 2017-11-30
-- 国战场景UI管理系统：
-- 注意：
-- 1、Window包括：Component和Active状态等构成的一个整体概念
--]]

local NationSceneUIManager = BaseClass("NationSceneUIManager", Singleton)

-- 构造函数
local function __init(self)
    -- 成员变量
    -- 所有存活的窗体
    self.windows = {}
    --self:OpenWindow(UIWindowNames.UINationTurnToMark)
end

local function EnterNation(self, uiRootObj)
    -- 初始化组件
    self.gameObject = uiRootObj
    self.transform = self.gameObject.transform
    assert(not IsNull(self.transform))
end

local function LeaveNation(self)
    self:DestroyAllWindow()
    self.gameObject = nil
    self.transform = nil
end

-- 析构函数
local function __delete(self)
    self.windows = nil
    self:CloseAllWindows()
end

-- 获取窗口
local function GetWindow(self, ui_name, active)
    if IsNull(self.transform ) then
        return nil
    end

    local target = self.windows[ui_name]
    if target == nil then
        return nil
    end
    if active ~= nil and target.Active ~= active then
        return nil
    end
    return target
end

-- 初始化窗口
local function InitWindow(self, ui_name, window)
    local config = UIConfig[ui_name]
    assert(config, "No window named : " .. ui_name .. ".You should add it to UIConfig first!")

    if config.Component then
        window.Component = config.Component.New(self.transform, ui_name)
    end

    window.Name = ui_name
    window.Active = false
    window.PrefabPath = config.PrefabPath

    return window
end

-- 激活窗口
local function ActivateWindow(self, target, ...)
    assert(target)
    assert(target.IsLoading == false, "You can only activate window after prefab locaded!")
    target.Component:__Activate(...)
    target.Component.gameObject:SetActive(true)
    UIManager:GetInstance():Broadcast(UIMessageNames.UIFRAME_ON_WINDOW_OPEN, target)
end

-- 反激活窗口
local function Deactivate(self, target)
    assert(target)
    target.Component:__Deactivate()
    target.Component.gameObject:SetActive(false)
    UIManager:GetInstance():Broadcast(UIMessageNames.UIFRAME_ON_WINDOW_CLOSE, target)
end

-- 打开窗口：私有，必要时准备资源
local function InnerOpenWindow(self, target, ...)
    assert(target)
    assert(target.Component)
    assert(target.Active == false, "You should close window before open again!")

    target.Active = true
    local has_prefab_res = target.PrefabPath and #target.PrefabPath > 0

    local has_loaded = not IsNull(target.Component.gameObject)
    local need_load = has_prefab_res and not has_loaded
    if not need_load then
        ActivateWindow(self, target, ...)
    elseif not target.IsLoading then
        target.IsLoading = true
        local params = SafePack(...)
        GameObjectPool:GetInstance():GetGameObjectAsync(target.PrefabPath, function(go)
            if IsNull(go) then
                return
            end

            local trans = go.transform
            trans:SetParent(self.transform)
            trans.name = target.Name
            trans.localScale = Vector3.one

            target.IsLoading = false
            target.Component:OnCreate()
            if target.Active then
                ActivateWindow(self, target, SafeUnpack(params))
            end
        end)
    end
end

-- 关闭窗口：私有
local function InnerCloseWindow(self, target)
    assert(target)
    assert(target.Component)
    if target.Active then
        Deactivate(self, target)
        target.Active = false
    end
end

-- 打开窗口：公有
local function OpenWindow(self, ui_name, ...)
    if IsNull(self.transform ) then
        return
    end

    local target = self:GetWindow(ui_name)
    if not target then
        local window = UINationWindow.New()
        self.windows[ui_name] = window
        target = InitWindow(self, ui_name, window)
    end

    ---?
    if target.Active then
        ActivateWindow(self, target, ...)
        return
    end
    ---

    InnerOpenWindow(self, target, ...)
end

-- 关闭窗口：公有
local function CloseWindow(self, ui_name)
    if IsNull(self.transform ) then
        return
    end

    local target = self:GetWindow(ui_name, true)
    if not target then
        return
    end
    InnerCloseWindow(self, target)
end

-- 关闭所有窗口
local function CloseAllWindows(self)
    if IsNull(self.transform ) then
        return
    end
    for _, v in pairs(self.windows) do
        InnerCloseWindow(self, v)
    end
end

local function InnerDelete(plugin)
    if plugin.__ctype == ClassType.instance then
        plugin:Delete()
    end
end

local function InnerDestroyWindow(self, ui_name, target)
    -- 说明：一律缓存，如果要真的清理，那是清理缓存时需要管理的功能
    GameObjectPool:GetInstance():RecycleGameObject(self.windows[ui_name].PrefabPath, target.Component.gameObject)
    InnerDelete(target.Component)
    self.windows[ui_name] = nil
end

-- 销毁窗口
local function DestroyWindow(self, ui_name)
    if IsNull(self.transform ) then
        return
    end
    local target = self:GetWindow(ui_name)
    if not target then
        return
    end

    InnerCloseWindow(self, target)
    InnerDestroyWindow(self, ui_name, target)
end

-- 销毁所有窗口
local function DestroyAllWindow(self)
    if IsNull(self.transform ) then
        return
    end
    for k, v in pairs(self.windows) do
        InnerCloseWindow(self, v)
        InnerDestroyWindow(self, k, v)
    end
end

local function GetUIWindowComponent(self, ui_name, active)
    if IsNull(self.transform ) then
        return nil
    end
    local window = self:GetWindow(ui_name, active)
    if window == nil then
        return nil
    end
    return window.Component
end

local function CheckWindowTop(self, name)
    if IsNull(self.transform ) then
        return false
    end
    if self:GetWindow(name, true, true) ~= nil then
        return self.windows[#self.windows] == name
    else
        return false
    end
end

NationSceneUIManager.__init = __init
NationSceneUIManager.GetWindow = GetWindow
NationSceneUIManager.OpenWindow = OpenWindow
NationSceneUIManager.CloseWindow = CloseWindow
NationSceneUIManager.CloseAllWindows = CloseAllWindows
NationSceneUIManager.DestroyWindow = DestroyWindow
NationSceneUIManager.DestroyAllWindow = DestroyAllWindow
NationSceneUIManager.__delete = __delete
NationSceneUIManager.EnterNation = EnterNation
NationSceneUIManager.LeaveNation = LeaveNation
NationSceneUIManager.GetUIWindowComponent = GetUIWindowComponent
NationSceneUIManager.CheckWindowTop = CheckWindowTop

return NationSceneUIManager