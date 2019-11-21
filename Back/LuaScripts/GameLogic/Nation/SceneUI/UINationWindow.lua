--[[
-- added by qqf @ 2019-7-22
-- UIWindow数据，用以表示一个窗口
-- 注意：
-- 1、窗口名字必须和预设名字一致
--]]

local UINationWindow = {
	-- 窗口名字
	Name = "Background",
	--组件实例
	Component = UIBaseNationComponent,
	-- 是否激活
	Active = false,
	-- 预设路径
	PrefabPath = "",
	-- 是否正在加载
	IsLoading = false,
}
	
return DataClass("UINationWindow", UINationWindow)