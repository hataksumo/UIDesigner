--[[
-- added by diyigeng @ 2019-4-25
-- UI跟随某个坐标点脚本
--]]

local UIFollowTilePivot = BaseClass("UIFollowTilePivot")

-- 构造函数，别重写，初始化放OnInit
local function __init(self, scene_config)
	self.mapManager = nil
	self.rectTransform = nil
	self.main3dCamera = nil
	self.xInt = nil
	self.yInt = nil
	self.zInt = nil
	self.size_delta = nil
	self.offsetX = nil
	self.offsetY = nil
	--计时器
	self.lateTimer = nil
end

--[[
	初始化设置需要的变量 mapManager 地图管理器
	rectTransform 需要移动的rectTransform
	main3dCamera 3d相机
	xInt,yInt,zInt 地块地图坐标
	size_delta ui层的大小
	offsetX,offsetY rectTransform 的偏移量
]]
local function InitData(self,mapManager,rectTransform,main3dCamera,xInt,yInt,zInt,size_delta,offsetX,offsetY)
	self.mapManager = mapManager
	self.rectTransform = rectTransform
	self.main3dCamera = main3dCamera
	self.xInt = xInt
	self.yInt = yInt
	self.zInt = zInt
	self.size_delta = size_delta

	if offsetX == nil then
		self.offsetX = 0
	else
		self.offsetX = offsetX
	end

	if offsetY == nil then
		self.offsetY = 0
	else
		self.offsetY = offsetY
	end
end

--[[
	设置是否运行
]]
local function EnableRun(self, isEnable)
	if isEnable then
		self:__StopTimer()
		--local function GetLateTimer(self, delay, func, obj, one_shot, use_frame, unscaled)
		self.lateTimer = TimerManager:GetInstance():GetLateTimer(1, self.__myLateUpdate, self, false, true, true)
		self.lateTimer:Start()
	else
		self:__StopTimer()
	end
end

-- 析构函数TimerTimer
local function __StopTimer(self)
	if self.lateTimer ~= nil then
		self.lateTimer:Stop()
		self.lateTimer = nil
	end
end

local function __myLateUpdate(self)
	local mapPos = self.mapManager:GetGridCellToWorldVec3PosByIntXYZ(self.xInt,self.yInt,self.zInt)
	local pos = self:__GetUIPos(self.main3dCamera,mapPos.x,mapPos.y,mapPos.z,	self.size_delta,self.offsetX,self.offsetY)
	--pos=Vector3.New(pos.x,pos.y,0)
	self.rectTransform.anchoredPosition3D = pos
end


--根据3d世界位置获取UI位置
local function __GetUIPos(self,main3dCamera,x,y,z,size_delta,offsetX,offsetY)
	if IsNull(main3dCamera) then
		main3dCamera = CS.UnityEngine.Camera.main
	end
	local lpos = nil
	if not IsNull(main3dCamera) then
		lpos = main3dCamera:WorldToViewportPoint(Vector3.New(x,y,z))
		lpos = Vector3.New((lpos.x-0.5) *size_delta[0] + offsetX, (lpos.y-0.5) *size_delta[1] + offsetY, 0)
	else
		lpos = Vector3.New(0,0,0)
	end
	return lpos
end

-- 析构函数
local function __delete(self)
	self:Dispose()
end


-- 析构函数
local function Dispose(self)
	self.mapManager = nil
	self.rectTransform = nil
	self.main3dCamera = nil
	self.xInt = nil
	self.yInt = nil
	self.zInt = nil
	self.size_delta = nil
	self.offsetX = nil
	self.offsetY = nil
	--计时器
	self:__StopTimer()
end

UIFollowTilePivot.__init = __init
UIFollowTilePivot.__delete = __delete
UIFollowTilePivot.__GetUIPos = __GetUIPos
UIFollowTilePivot.__myLateUpdate = __myLateUpdate
UIFollowTilePivot.__StopTimer = __StopTimer

UIFollowTilePivot.EnableRun = EnableRun
UIFollowTilePivot.InitData = InitData
UIFollowTilePivot.Dispose = Dispose

return UIFollowTilePivot