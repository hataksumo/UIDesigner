---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zjy.
--- DateTime: 2019-1-3 09:55:39
---
local UIScrollRect = BaseClass("UIScrollRect", UIBaseContainer)
local base = UIBaseContainer

local function OnCreate(self, relative_path)
    base.OnCreate(self)
    -- Unity侧原生组件
    self.unity_scroll_rect = UIUtil.FindComponent(self.transform, typeof(CS.UnityEngine.UI.ScrollRect), relative_path)
    if not IsNull(self.unity_scroll_rect) and IsNull(self.gameObject) then
        self.gameObject = self.unity_scroll_rect.gameObject
        self.transform = self.unity_scroll_rect.transform
    end
end

local function SetVerticalScrolling(self,_bool)
    if IsNull(self.unity_scroll_rect) or (type(_bool) ~= "boolean") then
        return
    end
    self.unity_scroll_rect.vertical = _bool
end

local function SetHorizontalScrolling(self,_bool)
    if IsNull(self.unity_scroll_rect) or (type(_bool) ~= "boolean") then
        return
    end
    self.unity_scroll_rect.horizontal = _bool
end

UIScrollRect.OnCreate = OnCreate
UIScrollRect.SetVerticalScrolling = SetVerticalScrolling
UIScrollRect.SetHorizontalScrolling = SetHorizontalScrolling

return UIScrollRect
