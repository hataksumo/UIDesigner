--[[
-- added by wsh @ 2018-03-02
--]]

local function Run()
	local stack = UIManager:GetInstance().__window_stack
	Logger.Log(table.dump(stack))
end

return {
	Run = Run
}