--[[
-- added by wsh @ 2017-12-08
-- Lua侧UIImage
-- 使用方式：
-- self.xxx_img = self:AddComponent(UIImage, var_arg)--添加孩子，各种重载方式查看UIBaseContainer
--]]

local UIImage = BaseClass("UIImage", UIBaseComponent)
local base = UIBaseComponent

-- 创建
local function OnCreate(self, atlas_config, original_sprite_name)
	base.OnCreate(self)
	-- Unity侧原生组件
	self.unity_uiimage = UIUtil.FindImage(self.transform)
	self.atlas_config = atlas_config
	self.sprite_name = original_sprite_name

	if not IsNull(self.unity_uiimage) and IsNull(self.gameObject) then
		self.gameObject = self.unity_uiimage.gameObject
		self.transform = self.unity_uiimage.transform
	end
end

-- 获取Sprite名称
local function GetSpriteName(self)
	return self.sprite_name
end
local function SetEnabled(self,enable)
	if IsNull(self.unity_uiimage) then
		return
	end
	self.unity_uiimage.enabled = enable
end
-- 设置Sprite名称
local function SetSpriteName(self, sprite_name,SetNative,UIAtlas,_callback)
	if self.sprite_name == sprite_name then
		return
	end
	self.sprite_name = sprite_name
	if IsNull(self.unity_uiimage) then
		return
	end
	if UIAtlas then
		AtlasManager:GetInstance():LoadImageAsync(UIAtlas, sprite_name, function(sprite, sprite_name)
			-- 预设已经被销毁
			if IsNull(self.unity_uiimage) then
				return
			end
			-- 被加载的Sprite不是当前想要的Sprite：可能预设被复用，之前的加载操作就要作废
			if sprite_name ~= self.sprite_name then
				return
			end
			if not IsNull(sprite) then
				self.unity_uiimage.sprite = sprite
				if SetNative then
					self.unity_uiimage:SetNativeSize()
				end
				if _callback~=nil then
					_callback();
				end
			end

		end, self.sprite_name)
	else
		AtlasManager:GetInstance():LoadImageAsync(self.atlas_config, sprite_name, function(sprite, sprite_name)
			-- 预设已经被销毁
			if IsNull(self.unity_uiimage) then
				return
			end
			-- 被加载的Sprite不是当前想要的Sprite：可能预设被复用，之前的加载操作就要作废
			if sprite_name ~= self.sprite_name then
				return
			end
			if not IsNull(sprite) then
				self.unity_uiimage.sprite = sprite
				if SetNative then
					self.unity_uiimage:SetNativeSize()
				end
				if _callback~=nil then
					_callback();
				end
			end
		end, self.sprite_name)
	end

end



local function SetAlphaVal(self,val)
	if IsNull(self.unity_uiimage) then
		return
	end
	local color = self.unity_uiimage.color
	color.a = val
	self.unity_uiimage.color = color
end
local function SetColor32(self,_r,_g,_b,_a)
	if IsNull(self.unity_uiimage) then
		return
	end
	local r = (_r or 0)/255
	local g = (_g or 0)/255
	local b = (_b or 0)/255
	local a = (_a or 255)/255
	self.unity_uiimage.color = Color.New(r,g,b,a)
end
--设置Sprite
local function SetSprite(self, sprite)
	if IsNull(self.unity_uiimage) then
		return
	end
	if not IsNull(sprite) then
		self.unity_uiimage.sprite = sprite
	end
end

local function GetSprite(self)
	if IsNull(self.unity_uiimage) then
		return nil
	end
	return self.unity_uiimage.sprite
end
local function GetMat(self)
	if IsNull(self.unity_uiimage) then
		return nil
	end
	return self.unity_uiimage.material
end
local function SetMat(self,mat)
	if IsNull(self.unity_uiimage) then
		return
	end
	self.unity_uiimage.material = mat

end

local function SetAtlasConfig(self,atlas_config)
	self.atlas_config = atlas_config
end


local function SetFillVal(self,val,isroll)
	if IsNull(self.unity_uiimage) then
		return
	end
	if isroll then
		--字体变大 然后 恢复正常
		local beginNum=self.unity_uiimage.fillAmount
		local endNum=val
		local stepNum=(endNum-beginNum)/30
		coroutine.start(function()
			local until_func = function()
				if stepNum>0 then
					if beginNum<endNum then
						self.unity_uiimage.fillAmount =beginNum
						beginNum=beginNum+stepNum
						return false
					else
						return true
					end
				else
					if beginNum>endNum then
						self.unity_uiimage.fillAmount =beginNum
						beginNum=beginNum+stepNum
						return false
					else
						return true
					end
				end

			end
			coroutine.waituntil(until_func)
			self.unity_uiimage.fillAmount = val
		end)
	else
		self.unity_uiimage.fillAmount = val
	end

end
-- 销毁
local function OnDestroy(self)
	self.unity_uiimage = nil
	base.OnDestroy(self)
end

local function SetNativeSize (self)
	if IsNull(self.unity_uiimage) then
		return
	end
	self.unity_uiimage:SetNativeSize()
end

local function SetRaycastTarget (self, mBool)
	if IsNull(self.unity_uiimage) then
		return
	end
	self.unity_uiimage.raycastTarget = mBool
end

UIImage.SetEnabled = SetEnabled
UIImage.OnCreate = OnCreate
UIImage.GetSpriteName = GetSpriteName
UIImage.SetSpriteName = SetSpriteName
UIImage.SetSprite = SetSprite
--UIImage.GetSprite = GetSprite
UIImage.SetAlphaVal = SetAlphaVal
UIImage.SetColor32 = SetColor32
UIImage.GetMat = GetMat
UIImage.SetMat = SetMat
UIImage.OnDestroy = OnDestroy
UIImage.SetFillVal = SetFillVal
UIImage.SetNativeSize = SetNativeSize
UIImage.SetAtlasConfig = SetAtlasConfig
UIImage.SetRaycastTarget = SetRaycastTarget
return UIImage