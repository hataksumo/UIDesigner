---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by LJ095.
--- DateTime: 2019/10/23 11:40
---

local LyztChatWrapGroup = BaseClass("LyztChatWrapGroup", UIBaseContainer)
local base = UIBaseContainer

-- 创建
local function OnCreate(self, wrap_class,cell_size, ...)
    assert(type(wrap_class) == "table" and wrap_class.__ctype == ClassType.class, "wrap_class err : " .. tostring(wrap_class))
    base.OnCreate(self)

    -- Unity侧原生组件
    self.unity_scrollrect = self.transform:GetComponentInParent(typeof(CS.UnityEngine.UI.ScrollRect))
    self.unity_sizefitter = self.transform:GetComponent(typeof(CS.UnityEngine.UI.ContentSizeFitter))
    assert(not IsNull(self.unity_scrollrect), "No found UnityEngine.UI.ScrollRect!")
    if not IsNull(self.unity_sizefitter) then
        self.unity_sizefitter.enabled = fasle
    end
    self.cell_size = cell_size--
    -- 行/列数限制
    self.constraint_count = 1
    -- 是否为水平拖动
    self.horizontal = self.unity_scrollrect.horizontal
    -- 通过四角坐标（左下、左上、右上、右下）计算scroll_rect中心点在局部坐标系中的坐标
    self.rectTransform.anchoredPosition = Vector2.zero
    local maskSize = self.unity_scrollrect.transform:GetComponent(typeof(CS.UnityEngine.RectTransform)).sizeDelta
    self.scrollrect_y = maskSize.y
    self.center = Vector2.zero
    self.center_original = Vector2.zero
    self.center_original.x = maskSize.x / 2
    self.center_original.y = -maskSize.y / 2

    -- 其它成员数据
    -- 最小索引
    self.min_index = 1
    -- 最大索引
    self.max_index = 0
    -- 缓存用
    self.tmp_vec3 = Vector3.zero
    -- 当前选中虚拟索引
    self.__cur_check_index = nil
    -- 自动添加当前挂载节点下的所有孩子
    local child_count = self.transform.childCount
    self.all_componet = {}
    for i = 0, child_count - 1 do
        self.all_componet[i+1] = self:AddComponent(wrap_class, i, ...)
    end
    -- 计算孩子布局宽度/高度
    local count = math.floor(((self:GetComponentsCount() - 1) / self.constraint_count) + 1)
    if self.horizontal then
        self.extents = self.cell_size.x * count
    else
        self.extents = self.cell_size.y * count
    end
    self.half_extents = self.extents / 2

    -- 回调
    -- 注册scroll拖动回调
    self.__onmove = function(vec2)
        self:WrapContent(false)
    end
    self.unity_scrollrect.onValueChanged:AddListener(self.__onmove)
    -- 点击回调：void __onclick(wrap_component, toggle_btn, virtual_index, check)
    self.__onclick = nil
end

-- 设置长度：多余的孩子会被隐藏
local function SetLength(self, length,chat_list,move_last)
    assert(length >= 0)
    self.chat_list = chat_list
    self.min_index = 1
    self.max_index = length
    local activeCount = 0
    local needActive = true
    for i, component in ipairs(self.all_componet) do
        needActive = i <= self.max_index
        component:SetActive(needActive)
        if needActive then
            activeCount = activeCount + 1
        end
    end
    if activeCount > 0 then
        self.child_active_count = activeCount
        self.upIndex = length-activeCount+1
        self.downIndex = length
        -- 设置滑动范围
        local scroll_size = Vector2.New(self.rectTransform.sizeDelta.x, 0)
        scroll_size.y = self.chat_list[length].pos+self.chat_list[length].y
        self.rectTransform.sizeDelta = scroll_size
        local pos = self.rectTransform.anchoredPosition
        pos.y = scroll_size.y - self.scrollrect_y
        self.rectTransform.anchoredPosition = pos
    end


end

-- 添加UIWrapComponent：必须保证一个名字只对应一个组件
local function AddComponent(self, component_target, var_arg, ...)
    local cmp = base.AddComponent(self, component_target, var_arg, ...)
    -- 调试模式下强行检测，避免手误
    if Config.Debug then
        local lookup_table = {}
        for i, componet in ipairs(self.all_componet) do
            local cmp_name = componet:GetName()
            assert(lookup_table[cmp_name] == nil, "Aready exists component named : " .. cmp_name)
            lookup_table[cmp_name] = true
        end
    end
    -- 设置Item宽、高
    cmp.rectTransform.sizeDelta = self.cell_size
    return cmp
end

-- 复位
local function ResetToBeginning(self)
    --self.rectTransform.anchoredPosition = Vector2.zero
    -- 这里强制刷新时，如果初始按钮为列表按钮，会执行一次虚拟点击
    --更新位置
    self:WrapContent(true)
end
--复位，到最上面
local function ResetToTop(self)
    self.rectTransform.anchoredPosition = Vector2.zero
    self.downIndex = self.downIndex - (self.upIndex - 1)
    self.upIndex = 1
    self:WrapContent(true)
end

-- 检测，必要时刷新Item
local function CheckAndUpdateItemIfNeeded(self, component, real_index)
    if self.min_index <= real_index and real_index <= self.max_index then
        -- 调试用
        if Config.Debug then
            component.gameObject.name = tostring(real_index)
        end
        -- 重置位置
        component.transform.anchoredPosition = Vector2.New(0,-self.chat_list[real_index].pos)
        local check = real_index == self.__cur_check_index
        -- 刷新回调
        component:OnRefresh(real_index, check)
        if real_index == self.max_index and self.__movelast ~= nil then
            self.__movelast()
        end
    end
end

local function OnInit(self,index)
    for i, v in ipairs(self.all_componet) do
        v:OnInit(index)
    end
end


-- 检测复用
local function WrapContent(self, force_reset)
    if self:GetComponentsCount() >= self.max_index and not force_reset then
        return
    end

    -- 更新scroll_rect中心点在局部坐标系中的坐标
    local anchored_position = self.rectTransform.anchoredPosition
    local isUp = true
    if self.last_anchored_position ~= nil and anchored_position.y < self.last_anchored_position then
        isUp = false
    end
    self.center.x = self.center_original.x - anchored_position.x
    self.center.y = self.center_original.y - anchored_position.y
    self.last_anchored_position = anchored_position.y
    local len = #self.all_componet
    local is_change = true
    while(is_change) do
        is_change = false
        local cur_index = self.upIndex
        for i = 1, len do
            local component = self.all_componet[i]
            local unity_position = component.transform.anchoredPosition
            self.tmp_vec3:Set(unity_position.x, unity_position.y, 0)
            local distance = self.horizontal and (self.tmp_vec3.x - self.center.x) or (self.tmp_vec3.y - self.center.y)

            if force_reset then
                -- update all
                CheckAndUpdateItemIfNeeded(self, component,cur_index)
            elseif math.abs(distance) > self.half_extents then
                if distance>0 then
                    if cur_index == self.upIndex and self.downIndex < self.max_index and isUp then
                        self.upIndex = self.upIndex+1
                        self.downIndex = self.downIndex+1
                        table.remove(self.all_componet,1)
                        CheckAndUpdateItemIfNeeded(self, component,self.downIndex)
                        table.insert(self.all_componet,component)
                        is_change = true
                        break
                    end
                else
                    if cur_index == self.downIndex and self.upIndex > 1 and not isUp then
                        self.upIndex = self.upIndex-1
                        self.downIndex = self.downIndex-1
                        table.remove(self.all_componet,len)
                        table.insert(self.all_componet,1,component)
                        CheckAndUpdateItemIfNeeded(self, component,self.upIndex)
                        is_change = true
                        break
                    end

                end
            end
            cur_index = cur_index+1
        end
    end

end

local function CheckIsLast(self)
    if self.last_anchored_position ~= nil and self.last_anchored_position + self.scrollrect_y >= self.rectTransform.sizeDelta.y - 20 then
        return true
    elseif self.scrollrect_y >= self.rectTransform.sizeDelta.y - 20 then
        return true
    else
        return false
    end
end

local function UpdateLength(self,length,chat_list,force)
    self.chat_list = chat_list
    self.min_index = 1
    self.max_index = length
    local activeCount = 0
    local needActive = true
    for i, component in ipairs(self.all_componet) do
        needActive = i <= self.max_index
        component:SetActive(needActive)
        if needActive then
            activeCount = activeCount + 1
        end
    end
    if self.upIndex == nil then
        self.upIndex = 1
        self.downIndex = activeCount
    end
    self.child_active_count = activeCount
    local is_last = CheckIsLast(self)
    local scroll_size = Vector2.New(self.rectTransform.sizeDelta.x, 0)
    scroll_size.y = self.chat_list[length].pos+self.chat_list[length].y
    self.rectTransform.sizeDelta = scroll_size
    if is_last or force then
        self.upIndex = length-activeCount+1
        self.downIndex = length
        local pos = self.rectTransform.anchoredPosition
        pos.y = scroll_size.y - self.scrollrect_y
        self.rectTransform.anchoredPosition = pos
        self:WrapContent(true)
    end
    return is_last
end

-- 根据索引定位Item
local function GetComponentByIndex(self, real_index)
    local cmp = nil
    for _, components in pairs(self.components) do
        for cmp_class, component in pairs(components) do
            if component.gameObject.name == tostring(real_index) then
                cmp = component
                return cmp
            end
        end
    end
end

local function OnDestroy(self)
    if self.__onmove ~= nil then
        self.unity_scrollrect.onValueChanged:RemoveListener(self.__onmove)
    end
    self.unity_scrollrect = nil
    self.unity_sizefitter = nil
    self.__onmove = nil
    self.__onclick = nil
    base.OnDestroy(self)
end

LyztChatWrapGroup.OnCreate=OnCreate;
LyztChatWrapGroup.SetLength = SetLength;
LyztChatWrapGroup.AddComponent=AddComponent;
LyztChatWrapGroup.ResetToBeginning=ResetToBeginning;
LyztChatWrapGroup.ResetToTop=ResetToTop;
LyztChatWrapGroup.OnInit=OnInit;
LyztChatWrapGroup.WrapContent=WrapContent;
LyztChatWrapGroup.UpdateLength=UpdateLength;
LyztChatWrapGroup.GetComponentByIndex=GetComponentByIndex;
LyztChatWrapGroup.OnDestroy = OnDestroy
return LyztChatWrapGroup