--[[
-- added by wsh @ 2017-12-08
-- Lua侧UIText
-- 使用方式：
-- self.xxx_text = self:AddComponent(UIInput, var_arg)--添加孩子，各种重载方式查看UIBaseContainer
-- TODO：本地化支持
--]]

local UIText = BaseClass("UIText", UIBaseComponent)
local base = UIBaseComponent
-- 创建

local function OnCreate(self)
	base.OnCreate(self)
	-- Unity侧原生组件
	self.unity_uitext = UIUtil.FindText(self.transform)
	if not IsNull(self.unity_uitext) and IsNull(self.gameObject) then
		self.gameObject = self.unity_uitext.gameObject
		self.transform = self.unity_uitext.transform
	end
	self.unity_uitext_outline = UIUtil.FindOutlineEx(self.transform)
	self.__onclick = nil
end

-- 获取文本
local function GetText(self)
	if not IsNull(self.unity_uitext) then
		return self.unity_uitext.text
	end
end
local function GetTextFontSize(self)
	return self.unity_uitext.fontSize
end

--设置字体大小
local function SetTextFontSize(self, size)
	if not IsNull(self.unity_uitext) then
		self.unity_uitext.fontSize = size
	end
end

local function SetLinkClick(self,...)
	if self.unity_uitext.onHrefClick ~= nil then
		self.__onclick = BindCallback(...)
		self.unity_uitext.onHrefClick:AddListener(self.__onclick)
	end
end


-- 设置文本
local function SetText(self, text,isroll,size)
	if not IsNull(self.unity_uitext) then
		if isroll then
			--字体变大 然后 恢复正常
			local beginNum=tonumber(self.unity_uitext.text)
			local endNum=tonumber(text)
			local stepNum=(endNum-beginNum)/30
			if stepNum>0 and stepNum<1 then
				stepNum=1
			elseif stepNum<0 and stepNum>-1then
				stepNum=-1
			end
			if size==nil then
				size=40
			end
			local endSize=size
			local beginSize=endSize+math.floor(endSize/2)
			coroutine.start(function()
				local until_func = function()
					if stepNum>0 then
						if beginNum<endNum then
							self.unity_uitext.text=beginNum
							if beginSize>=endSize then
								self.unity_uitext.fontSize =beginSize
								beginSize=beginSize-2
							else
								self.unity_uitext.fontSize = endSize
							end
							beginNum=math.floor(beginNum+stepNum)
							return false
						else
							return true
						end
					else
						if beginNum>endNum then
							self.unity_uitext.text=beginNum
							if beginSize>=endSize then
								self.unity_uitext.fontSize =beginSize
								beginSize=beginSize-2
							else
								self.unity_uitext.fontSize = endSize
							end
							beginNum=math.floor(beginNum+stepNum)
							return false
						else
							return true
						end
					end

				end
				coroutine.waituntil(until_func)
				self.unity_uitext.fontSize = endSize
				self.unity_uitext.text = text
			end)
		else
			self.unity_uitext.text = text
		end
	end
end
local function GetMat(self)
	if IsNull(self.unity_uitext) then
		return nil
	end
	return self.unity_uitext.material
end
local function SetMat(self,mat)
	if IsNull(self.unity_uitext) then
		return
	end
	self.unity_uitext.material = mat

end
-- 销毁
local function OnDestroy(self)
	if self.__onclick ~= nil then
		self.unity_uitext.onHrefClick:RemoveListener(self.__onclick)
	end
	self.unity_uitext = nil
	base.OnDestroy(self)
end
-- 获取最佳高度
local function GetPreferredHeight(self)
    return self.unity_uitext.preferredHeight
end
-- 获取最佳宽度
local function GetPreferredWidth(self)
    return self.unity_uitext.preferredWidth
end

local function SetColor(self,_r,_g,_b,_a)
    local r = _r or 0
    local g = _g or 0
    local b = _b or 0
    local a = _a or 1
    self.unity_uitext.color = Color.New(r,g,b,a)
end

local function SetColor32(self,_r,_g,_b,_a)
    local r = (_r or 0)/255
    local g = (_g or 0)/255
    local b = (_b or 0)/255
    local a = (_a or 255)/255
    self.unity_uitext.color = Color.New(r,g,b,a)
end

local function SetAlphaVal(self,val)
	if IsNull(self.unity_uitext) then
		return
	end
	local color = self.unity_uitext.color
	color.a = val
	self.unity_uitext.color = color
	--设置描边
	if not IsNull(self.unity_uitext_outline) then
		color = self.unity_uitext_outline.OutlineColor
		color.a = val
		self.unity_uitext_outline.OutlineColor = color
	end
end

local function SetStandardColor(self,color)

	self.unity_uitext.color =color
end
UIText.OnCreate = OnCreate
UIText.GetText = GetText
UIText.SetText = SetText
UIText.OnDestroy = OnDestroy
UIText.GetPreferredHeight = GetPreferredHeight
UIText.GetPreferredWidth = GetPreferredWidth
UIText.SetColor = SetColor
UIText.SetColor32 = SetColor32
UIText.SetStandardColor=SetStandardColor
UIText.GetMat = GetMat
UIText.SetMat = SetMat
UIText.SetAlphaVal = SetAlphaVal
UIText.SetLinkClick = SetLinkClick
UIText.SetTextFontSize = SetTextFontSize
return UIText