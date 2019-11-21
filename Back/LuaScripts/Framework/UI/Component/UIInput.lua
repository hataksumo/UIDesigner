--[[
-- added by wsh @ 2017-12-08
-- Lua侧UIInput
-- 使用方式：
-- self.xxx_input = self:AddComponent(UIInput, var_arg)--添加孩子，各种重载方式查看UIBaseContainer
--]]

local UIInput = BaseClass("UIInput", UIBaseComponent)
local base = UIBaseComponent

-- 创建
local function OnCreate(self)
	base.OnCreate(self)
	-- Unity侧原生组件
	self.unity_uiinput = UIUtil.FindInput(self.transform)
	
	if not IsNull(self.unity_uiinput) and IsNull(self.gameObject) then
		self.gameObject = self.unity_uiinput.gameObject
		self.transform = self.unity_uiinput.transform
	end
end

-- 获取文本
local function GetText(self)
	if not IsNull(self.unity_uiinput) then
		return self.unity_uiinput.text
	end
end

-- 设置文本
local function SetText(self, text)
	if not IsNull(self.unity_uiinput) then
		self.unity_uiinput.text = text
	end
end

-- 设置文本光标到末尾
local function MoveTextEnd(self, shift)
	if not IsNull(self.unity_uiinput) then
		self.unity_uiinput:MoveTextEnd(shift)
	end
end

--激活输入框 弹出
local function ActivateInputField(self)
	if not IsNull(self.unity_uiinput) then
		self.unity_uiinput:ActivateInputField()
	end
end

-- 设置是否可编辑
local function SetInteractable(self, interactable)
	if not IsNull(self.unity_uiinput) then
		self.unity_uiinput.interactable = interactable
	end
end


-- 设置文本长度
local function SetCharacterLimit(self, characterLimit)
	if not IsNull(self.unity_uiinput) then
		self.unity_uiinput.characterLimit = characterLimit
	end
end
--过滤特殊
local function PassSpecialChar(self,fun)
	local text= CS.CommonUtils.PassEmojStr(self.unity_uiinput.text)
	self.unity_uiinput.text=text
	fun()
end;
-- 设置回调
local function SetOnValueChanged(self, ...)

	--self.__onclick = BindCallback(...)
	local fun = BindCallback(...)
	self.__onclick = Bind(self,PassSpecialChar,fun)
	self.unity_uiinput.onValueChanged:AddListener(self.__onclick);
end

-- 设置结束编辑回调
local function SetEndEdit(self, ...)
	self.__onEndEdit = BindCallback(...)
	self.unity_uiinput.onEndEdit:AddListener(self.__onEndEdit);
end


-- 销毁
local function OnDestroy(self)
	self.unity_uiinput = nil
	base.OnDestroy(self)
end

UIInput.OnCreate = OnCreate
UIInput.GetText = GetText
UIInput.SetText = SetText
UIInput.OnDestroy = OnDestroy
UIInput.SetOnValueChanged=SetOnValueChanged;
UIInput.SetCharacterLimit = SetCharacterLimit
UIInput.MoveTextEnd = MoveTextEnd
UIInput.ActivateInputField = ActivateInputField
UIInput.SetInteractable = SetInteractable
UIInput.SetEndEdit = SetEndEdit

return UIInput