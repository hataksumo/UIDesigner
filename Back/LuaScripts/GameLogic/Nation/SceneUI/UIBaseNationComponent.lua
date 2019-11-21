--[[
-- added by qqf @ 2019-7-22
-- UI组件基类：国战场景UI基类
-- 说明：
-- 1、仿照UIBaseComponent进行修改，添加。
--]]

local UIBaseNationComponent = BaseClass("UIBaseNationComponent", Updatable)
local base = Updatable

-- 构造函数：除非特殊情况，所有子类不要再写这个函数，初始化工作放OnCreate
local function __init(self, holder, name)
    -- 持有者
    self.holder = holder
    -- 脚本绑定的transform
    self.transform = nil
    -- transform对应的gameObject
    self.gameObject = nil
    -- trasnform对应的RectTransform
    self.rectTransform = nil
    -- 名字：Unity中获取Transform的名字是有GC的，而Lua侧组件大量使用了名字，所以这里缓存下
    self.__name = name

    self.view = self

    self.__ui_callback = {}
    self.__data_callback = {}
end

-- 析构函数：所有组件的子类不要再写这个函数，释放工作全部放到OnDestroy
local function __delete(self)
    self:OnDestroy()
    for k, v in pairs(self.__ui_callback) do
        self:RemoveUIListener(k, v)
    end
    for k, v in pairs(self.__data_callback) do
        self:RemoveDataListener(k, v)
    end
    self.__ui_callback = nil
    self.__data_callback = nil
end

--local function __Create(self)
--    self.transform = UIUtil.FindTrans(self.holder, self.__name)
--    self.gameObject = self.transform.gameObject
--    self.rectTransform = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform))
--    self:OnCreate()
--end

-- 创建
local function OnCreate(self)
    self.transform = UIUtil.FindTrans(self.holder, self.__name)
    self.gameObject = self.transform.gameObject
    self.rectTransform = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.RectTransform))
    self.components = {}
end

-- 遍历：注意，这里是无序的
local function __Walk(self, callback, component_class)
    if self.components ~= nil then
        for _, components in pairs(self.components) do
            for cmp_class, component in pairs(components) do
                if component_class == nil then
                    callback(component)
                elseif cmp_class == component_class then
                    callback(component)
                end
            end
        end
    end
end

-- 如果必要，创建新的记录，对应Unity下一个Transform下所有挂载脚本的记录表
local function AddNewRecordIfNeeded(self, name)
    --Logger.Log("class Name======="..name)
    if self.components[name] == nil then
        self.components[name] = {}
    end
end

-- 记录Component
local function RecordComponent(self, name, component_class, component)
    -- 同一个Transform不能挂两个同类型的组件
    assert(self.components[name][component_class] == nil, "Already exist component_class : ", component_class.__cname)
    self.components[name][component_class] = component
end

local function AddComponent(self, component_target, var_arg, ...)
    assert(component_target.__ctype == ClassType.class)
    local component_inst = nil
    local component_class = nil
    if type(var_arg) == "table" and var_arg.__ctype == ClassType.instance then
        component_inst = var_arg
        component_class = var_arg._class_type
    else
        component_inst = component_target.New(self, var_arg)
        component_class = component_target
        component_inst:OnCreate(...)
    end

    local name = component_inst:GetName()
    AddNewRecordIfNeeded(self, name)
    RecordComponent(self, name, component_class, component_inst)
    return component_inst
end

-- 打开
local function OnEnable(self)
    self.transform.rotation = Vector3.New(0, 0, 0)
end

-- 关闭
-- 注意：必须清理OnEnable中声明的变量
local function OnDisable(self)
    self:__Walk(function(component)
        component:OnDisable()
    end)
end

-- 销毁
local function OnDestroy(self)
    self:__Walk(function(component)
        -- 说明：现在一个组件可以被多个容器持有，但是holder只有一个，所以由holder去释放
        if component.holder == self then
            component:Delete()
        end
    end)
    if self.holder.OnComponentDestroy ~= nil then
        self.holder:OnComponentDestroy(self)
    end
    self.components = nil
    self.holder = nil
    self.transform = nil
    self.gameObject = nil
    self.rectTransform = nil
    self.__name = nil
    self.__bind_data = nil
end

-- 注册消息
local function OnAddListener(self)
end

-- 注销消息
local function OnRemoveListener(self)
end

-- 激活：给NationSceneUIManager用，别重写
local function __Activate(self, ...)
    self:OnAddListener()
    self:OnEnable(...)
end

-- 反激活:给NationSceneUIManager用，别重写
local function __Deactivate(self)
    self:OnRemoveListener()
    self:OnDisable()
end

local function AddCallback(keeper, msg_name, callback)
    assert(callback ~= nil)
    keeper[msg_name] = callback
end

local function GetCallback(keeper, msg_name)
    return keeper[msg_name]
end

local function RemoveCallback(keeper, msg_name, callback)
    assert(callback ~= nil)
    keeper[msg_name] = nil
end

-- 注册UI数据监听事件，别重写
local function AddUIListener(self, msg_name, callback)
    local bindFunc = Bind(self, callback)
    AddCallback(self.__ui_callback, msg_name, bindFunc)
    UIManager:GetInstance():AddListener(msg_name, bindFunc)
end

-- 注销UI数据监听事件，别重写
local function RemoveUIListener(self, msg_name, callback)
    local bindFunc = GetCallback(self.__ui_callback, msg_name)
    RemoveCallback(self.__ui_callback, msg_name, bindFunc)
    UIManager:GetInstance():RemoveListener(msg_name, bindFunc)
end

-- 注册游戏数据监听事件，别重写
local function AddDataListener(self, msg_name, callback)
    local bindFunc = Bind(self, callback)
    AddCallback(self.__data_callback, msg_name, bindFunc)
    DataManager:GetInstance():AddListener(msg_name, bindFunc)
end

-- 注销游戏数据监听事件，别重写
local function RemoveDataListener(self, msg_name, callback)
    local bindFunc = GetCallback(self.__data_callback, msg_name)
    RemoveCallback(self.__data_callback, msg_name, bindFunc)
    DataManager:GetInstance():RemoveListener(msg_name, bindFunc)
end

-- 等待资源准备完毕：用于协程
local function WaitForCreated(self)
    coroutine.waituntil(function()
        return not IsNull(self.gameObject)
    end)
end

UIBaseNationComponent.__init = __init
UIBaseNationComponent.__delete = __delete
--UIBaseNationComponent.__Create = __Create
UIBaseNationComponent.__Walk = __Walk
UIBaseNationComponent.__Activate = __Activate
UIBaseNationComponent.__Deactivate = __Deactivate

UIBaseNationComponent.OnCreate = OnCreate
UIBaseNationComponent.OnEnable = OnEnable
UIBaseNationComponent.OnDisable = OnDisable
UIBaseNationComponent.OnAddListener = OnAddListener
UIBaseNationComponent.OnRemoveListener = OnRemoveListener
UIBaseNationComponent.OnDestroy = OnDestroy

UIBaseNationComponent.AddComponent = AddComponent
UIBaseNationComponent.WaitForCreated = WaitForCreated
UIBaseNationComponent.AddUIListener = AddUIListener
UIBaseNationComponent.RemoveUIListener = RemoveUIListener
UIBaseNationComponent.AddDataListener = AddDataListener
UIBaseNationComponent.RemoveDataListener = RemoveDataListener

return UIBaseNationComponent