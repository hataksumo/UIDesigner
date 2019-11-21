--[[
-- added by wsh @ 2017-01-09
-- 游戏逻辑Updater，游戏逻辑模块可能需要严格的驱动顺序
--]]

local LogicUpdater = BaseClass("LogicUpdater", UpdatableSingleton)
local traceback = debug.traceback
local Input = CS.UnityEngine.Input

local gmArea=300;

local function Update(self)
	local netManager = NetManager:GetInstance()
	local status,err = pcall(netManager.Update, netManager)
	if not status then
		Logger.LogError("NetManager update err : "..err.."\n"..traceback())
	end
	local timeSyncMgr = TimeSyncManager:GetInstance()
	local status,err = pcall(timeSyncMgr.Update, timeSyncMgr)
	if not status then
		Logger.LogError("TimeSyncManager update err : "..err.."\n"..traceback())
	end
	--检测是否打开GM  右上角长按3s
	if Config.IsGmOpen then
		if Input.GetMouseButtonDown(0) then
			self.startCalTime = Time.timeSinceLevelLoad;
			self.isHandle = false
		elseif Input.GetMouseButton(0) and not self.isHandle and self.startCalTime then

			if Time.timeSinceLevelLoad - self.startCalTime > 3 then
				if Input.mousePosition.x > CS.UnityEngine.Screen.width - gmArea and Input.mousePosition.y > CS.UnityEngine.Screen.height - gmArea then
					if UIManager:GetInstance():GetWindow(UIWindowNames.UIGMCommand,true,true) == nil then
						UIManager:GetInstance():OpenWindow(UIWindowNames.UIGMCommand)
					end
				end
				self.isHandle = true
			end
		end

		if Input.GetKeyDown(CS.UnityEngine.KeyCode.Space) then
			if UIManager:GetInstance():GetWindow(UIWindowNames.UIGMCommand,true,true) == nil then
				UIManager:GetInstance():OpenWindow(UIWindowNames.UIGMCommand)
			end
		end
	end



end
local function Dispose(self)

end
LogicUpdater.Dispose = Dispose
LogicUpdater.Update = Update

return LogicUpdater