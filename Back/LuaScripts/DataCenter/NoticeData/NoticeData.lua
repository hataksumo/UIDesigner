---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by ljl.
--- DateTime: 2019/3/1 15:26
---
local NoticeData = BaseClass("ServerData", Singleton)

local function __init(self)
    -- 公告列表
    self.notice_list = {}
end
--[[单个公告结构
{
    id = 0,
    type = 0,
    name = "",
    isNew = 1,
    content = ""
}
]]
---解析网络数据获取全部服务器数据
local function UpdateNoticeData(self, data)
    self.notice_list = data
end


NoticeData.__init = __init
NoticeData.UpdateNoticeData = UpdateNoticeData

return NoticeData