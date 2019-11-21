--[[
    新手引导常量定义
]]
local GuideDefine = {

    -- 国战新手引导参数
    NATION_GUIDE_PARAM ={
        --国战新手引导组
        GUIDE_GROUPS = {20000},
    },
    --新手引导checker检测的事件
    CHECKER_GUIDE_EVENT = {
        BASE_UI_WINDOW_OPEN = 1, -- UI打开
        BASE_UI_WINDOW_CLOSE = 5, -- UI关闭
        SCENE_WINDOW_OPEN = 2, -- 场景打开
        EVENT_TRIGGER = 3, -- 事件打开
        GUIDE_OVER_TRIGGER = 4, --引导步骤结束打开
    },

   GUIDE_SHEET_NeedUIType = {
       UI_OPEN_EVENT = 1, --当UI打开时候回调
       UI_CLOSE_EVENT = 2, --当UI关闭时候回调
       UI_OPEN_WITH_TOP_EVENT = 3, -- 当UI打开并且是顶层时候回调
   },


    GUIDE_JUDGE_ST = {
        DEFAULT = 0, -- 默认条件
        NEED_TRIGGER = 1, -- 等待触发
        TRIGGER_OK = 2, -- 已触发状态
    },

    GUIDE_RUNNING_ST = {
        DEFAULT = 0, -- 默认条件
        RUNNING = 1, -- 运行中
        FREE = 2, -- 空闲中
    },

    GUIDE_LOG_REPORT = {
        EVENT = {
            BEGIN = 1, -- 开始
            COMPLETE = 2, -- 完成
        },
        TYPE = {
            STRONG = 1, -- 强制引导
            WEAK = 2, -- 弱引导
        },
        ACTION = {
            DEFAULT = 0, -- 默认
            BE_SKIP = 1, -- 跳过
            NORMAL = 2, -- 正常
        }
    },

    -- 类型
    GUIDE_SHEET_HandleType = {
        EMPTY_UI = -1, -- 点击任意继续
        ASSIGN_UI_BORDER = 1, -- 点击指定UI区域
        FORMATION = 2, -- 上阵寄灵人
        UNKNOWN_3 = 3, -- 背景黑固定时间点背景
        GET_CARD_SPC_10 = 10, -- 特殊处理抽卡
        GET_CARD_SPC_11 = 11, -- 特殊处理抽卡
        GET_CARD_SPC_12 = 12, -- 特殊处理不让点击
        CAN_NOT_OPERATE = 30, -- 不能操作的类型
        NATION_MAP_CLICK = 31, -- 国战点击地图
        NATION_UI_CLICK = 32, -- 国战点击场景UI
    },

    -- 获取目标类型
    GUIDE_SHEET_TargetType = {
        SCROLL_VIEW_ITEM = 1, -- 只有1类型 GetGuidePosBy
        NONE_TARGET = -1, -- 不需要目标
        NATION_VIEW_COMP = 10, -- 只有1类型 GetGuidePosBy
    },

    GUIDE_SHEET_ClickTag = {
        ON_CLICK_EMPTY = -1, -- 点击任意位置（背景）跳过
        ON_CLICK_UI = 1, -- 点击UI
        ON_CLICK_3D_OBJ = 2, -- 点击3d物体
        ON_CLICK_SPEC_REWARD = 3, -- 点击奖励特殊处理
        ON_CLICK_SCROLL_VIEW = 12, -- 点击滑动条数据类型
    },

    GUIDE_SHEET_ClickTagParamType = { -- 点击参数类型
        ON_CLICK_SELF_TOWN = 1, -- 点击我的城镇
        ON_CLICK_NEARBY_TOWN = 2, -- 点击我附近的城镇
    },


}
return ConstClass("GuideDefine", GuideDefine)
