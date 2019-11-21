--[[
-- added by wsh @ 2017-01-08
-- 图集管理：为逻辑层透明化图集路径和图集资源加载等底层操作
-- 注意：
-- 1、只提供异步操作，为的是不需要逻辑层取操心图集AB是否已经加载的问题
-- 2、图集管理器不做资源缓存
-- 3、图片名称带后缀
--]]

local AtlasManager = BaseClass("AtlasManager", Singleton)
local sprite_type = typeof(CS.UnityEngine.Sprite)
--local sprite_type = typeof(CS.UnityEngine.U2D.SpriteAtlas)
-- 从图集异步加载图片：回调方式
local function LoadImageAsync(self, atlas_config, image_name, callback, ...)
	--local atlas_path = atlas_config.AtlasPath
	--local image_path = atlas_config.AtlasPath..".spriteatlas"--atlas_path.."/"..image_name
	if image_name == nil or #image_name == 0 then
		return
	end
	local image_path = atlas_config.AtlasPath.."/"..image_name..".png"
	ResourcesManager:GetInstance():LoadAsync(image_path, sprite_type, function(sprite_atlas, ...)
		if callback then
			--[[
			if not IsNull(sprite_atlas) then
				local sprite = sprite_atlas:GetSprite(image_name)
				callback(not IsNull(sprite) and sprite or nil, ...)
			else
				callback(nil)
			end
			]]
			if not IsNull(sprite_atlas) then
				callback(not IsNull(sprite_atlas) and sprite_atlas or nil, ...)
			end

		end
	end, ...)
end

-- 从图集异步加载图片：协程方式
local function CoLoadImageAsync(self, atlas_config, image_name, progress_callback)
	local path = atlas_config.AtlasPath.."/"..image_name..".png"
	local sprite_atlas = ResourcesManager:GetInstance():CoLoadAsync(path, sprite_type, progress_callback)
	--[[
	if not IsNull(sprite_atlas) then
		local sprite = sprite_atlas:GetSprite(image_name)
		return not IsNull(sprite) and sprite or nil
	else
		return nil
	end
	]]
	return not IsNull(sprite_atlas) and sprite_atlas or nil
end
AtlasManager.LoadImageAsync = LoadImageAsync
AtlasManager.CoLoadImageAsync = CoLoadImageAsync

return AtlasManager
