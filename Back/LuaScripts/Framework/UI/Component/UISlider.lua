--[[
-- added by wsh @ 2017-12-18
-- Lua侧UISlider
-- 使用方式：
-- self.xxx_text = self:AddComponent(UISlider, var_arg)--添加孩子，各种重载方式查看UIBaseContainer
--]]

local UISlider = BaseClass("UISlider", UIBaseComponent)
local base = UIBaseComponent

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- Unity侧原生组件
	self.unity_uislider = UIUtil.FindSlider(self.transform)
	-- 记录滑动值更改
	self.__onvaluechange = nil
	if not IsNull(self.unity_uislider) and IsNull(self.gameObject) then
		self.gameObject = self.unity_uislider.gameObject
		self.transform = self.unity_uislider.transform
	end
end

local function SetMaxAndMinValue(self, maxValue, minValue)
	if not IsNull(self.unity_uislider) then
		self.unity_uislider.maxValue = maxValue
		self.unity_uislider.minValue = minValue
	end
end

-- 获取进度 (0-1)之间
local function GetValue(self)
	if not IsNull(self.unity_uislider) then
		return self.unity_uislider.normalizedValue
	end
end

-- 获取进度，正常值
local function GetCurrentValue(self)
	if not IsNull(self.unity_uislider) then
		return self.unity_uislider.value
	end
end



-- 设置进度 按照正常值設置
local function SetRealValue(self, value)
	if not IsNull(self.unity_uislider) then
		self.unity_uislider.value = value
	end
end


-- 设置进度
local function SetValue(self, value,isroll)
	if not IsNull(self.unity_uislider) then
		if isroll then
			--字体变大 然后 恢复正常
			local beginNum=self.unity_uislider.normalizedValue
			local endNum=value
			local stepNum=(endNum-beginNum)/30
			coroutine.start(function()
				local until_func = function()
					if stepNum>0 then
						if beginNum<endNum then
							self.unity_uislider.normalizedValue =beginNum
							beginNum=beginNum+stepNum
							return false
						else
							return true
						end
					else
						if beginNum>endNum then
							self.unity_uislider.normalizedValue =beginNum
							beginNum=beginNum+stepNum
							return false
						else
							return true
						end
					end
				end
				coroutine.waituntil(until_func)
				self.unity_uislider.normalizedValue = value
			end)
		else
			self.unity_uislider.normalizedValue = value
		end
	end
end

-- 设置回调
local function SetOnValueChange(self, ...)
	self.__onvaluechange = BindCallback(...)
	self.unity_uislider.onValueChanged:AddListener(self.__onvaluechange)
end

-- 移除回调
local function RemoveAllOnValueChange(self)
	self.__onvaluechange = nil
	self.unity_uislider.onValueChanged:RemoveAllListeners()
end

-- 销毁
local function OnDestroy(self)
	self.unity_uislider = nil
	base.OnDestroy(self)
end

local function SetInteractable(self,_interactable)
	self.unity_uislider.interactable = _interactable
end

UISlider.OnCreate = OnCreate
UISlider.GetValue = GetValue
UISlider.SetValue = SetValue
UISlider.OnDestroy = OnDestroy
UISlider.SetOnValueChange = SetOnValueChange
UISlider.SetMaxAndMinValue = SetMaxAndMinValue
UISlider.RemoveAllOnValueChange = RemoveAllOnValueChange
UISlider.GetCurrentValue = GetCurrentValue
UISlider.SetInteractable = SetInteractable
UISlider.SetRealValue = SetRealValue

return UISlider