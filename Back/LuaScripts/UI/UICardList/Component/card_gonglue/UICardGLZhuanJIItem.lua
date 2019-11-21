---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/5/7 15:59
---
local UICardGLZhuanJIItem=BaseClass("UICardGLZhuanJIItem",UIBaseContainer)
local base = UIBaseContainer

local function OnCreate(self)
    base.OnCreate(self)
    --组建初始化
    self.TitleText = self:AddComponent(UIText, "title/baseTip")
    self.des = self:AddComponent(UIText,"now_text")
end

-- 组件被复用时回调该函数，执行组件的刷新
local function OnRefresh(self,_data)
    self.TitleText:SetText(_data.EpisodeTitle)
    self.des:SetText(_data.Episode)
end

UICardGLZhuanJIItem.OnCreate = OnCreate
UICardGLZhuanJIItem.OnRefresh=OnRefresh

return UICardGLZhuanJIItem