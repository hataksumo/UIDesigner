--[[
    公共常量定义
]]
local CommDefine = {


    DRBossEventType = {
        Barrier = 1, --障碍物
        Building = 2, --建筑
        TreasureBox = 3, --宝箱
        Item = 4, --获得固定道具
        Trap = 5, --陷阱，机关
        RandomItem = 7, --获得随机道具
        EliteMonster = 8, --怪物
        Boss = 9, --领主
    },
}
return ConstClass("CommDefine", CommDefine)
