--[[
    国战常量定义
]]
local NationDefine = {
    --所有图块的文件路径
    --ALL_BASE_TILE_FILE = "Art/Tilemap/BaseTileAsset/AllBaseTile.asset",
    --新版地图资源文件
    ALL_BASE_TILE_FILE = "Art/Tilemap/BaseTileAsset/AllBaseTileV2.asset",
    --地图信息路径
    MAP_INFO_DATA_PATH = "Art/Tilemap/MapInfoData",
    --地图对象层路径
    MAP_OBJ_LAYER_DATA_PATH = "Art/Tilemap/MapObjLayerData",
    -- 测试用默认地图名称
    --MAP_DEFAULT_DATA_FILE_NAME = "ExprotedMapData",
    --MAP_DEFAULT_DATA_FILE_NAME = "ExprotedMapDataHui",
    MAP_DEFAULT_DATA_FILE_NAME = "ExprotedNewMapData",
    ---- 测试小人的加载路径
    --MAP_DEFAULT_ROLE_FILE_NAME = "Art/Tilemap/NationPerson/newMyPerson.prefab",
    -- 选中Tilemap一个格子的UI路径
    MAP_DEFAULT_SELECT_TILEMAP = "Art/Tilemap/NationPerson/NationCellSelect.prefab",

    -- 建筑路线预制模板
    MAP_BUILDING_LINE_TEMPLATE = "Art/Tilemap/NationPerson/BuildingLineTemplate.prefab",
    -- 地图格子默认材质球
    MAP_DEFAULT_TILEMAP_MAT = "Art/Tilemap/NationPerson/Default-MapUnit.mat",

    -- 地图路线默认材质球
    MAP_DEFAULT_LINE_MAT = "Art/Tilemap/NationPerson/lineMat_default.mat",

    -- 行军路线预制模板
    MAP_MARCH_LINE_TEMPLATE = "Art/Tilemap/NationPerson/MarchLineTemplate.prefab",

    -- 地图路线敌人材质球
    MAP_LINE_MAT_ENEMY = "Art/Tilemap/NationPerson/lineMat_enemy.mat",

    -- 地图路线自己材质球
    MAP_LINE_MAT_SELF = "Art/Tilemap/NationPerson/lineMat_self.mat",

    -- 地图路线自己材质球
    MAP_LINE_MAT_UNION = "Art/Tilemap/NationPerson/lineMat_union.mat",
    -- 地图行军路线小人
    MAP_MARCH_ROLE_FILE_NAME = "UI/Prefabs/Common/newNationTeamTime.prefab",

    -- 地图行军路线人物3D模型
    MAP_MARCH_3D_MODEL_FILE_NAME = "Art/Roles/rol_1101001/Pefabs/model_cfcyb_1101001_p.prefab",

    -- 地图预加载小人数量
    MAP_MARCH_ROLE_PRE_LOAD_COUNT = 10,
    -- 地图预加载行军线数量
    MAP_MARCH_LINE_PRE_LOAD_COUNT = 10,

    --相机跟随小人的跟随模式刷新频率(MS)
    MAP_MARCH_FOLLOW_FLUSH_RATE_MS = 200,

    -- 行军线不同建筑偏移量
    MAP_MARCH_LINE_MAP_POS_OFFSET = {
        WAR_CELL = 0.5, --接战区向上0.5
        OTHER_BUILDING = 1, -- 其他向上1米
    },

    --地图行军线材质球索引
    --NATION_MARCH_CAMP_FLAG
    NATION_MARCH_CAMP_FLAG = {
        SELF = 1,
        UNION = 2,
        ENEMY = 3,
    },

    -- 接战区地块层名称
    MAP_DEFAULT_CODER_BLOCK_LAYER_NAME = "Coder_Block_1",
    -- 默认地图层名称
    --MAP_DEFAULT_LAYER_NAME = "Ground_1",
    -- 这边有修改地图名称
    MAP_DEFAULT_LAYER_NAME = "building",
    -- TODO 动态地图索引  暂时先写死
    MAP_DYNAMIC_CELL = {
        --BATTLE_ZONE_1 = 64, -- 中立状态
        --BATTLE_ZONE_2 = 65, -- 自己占领状态
        --BATTLE_ZONE_3 = 66, -- 敌方占领状态
        --BATTLE_ZONE_4 = 67, -- 盟友占领状态
        BATTLE_ZONE_1 = 0, -- 中立状态
        BATTLE_ZONE_2 = 1, -- 自己占领状态
        BATTLE_ZONE_3 = 2, -- 敌方占领状态
        BATTLE_ZONE_4 = 3, -- 盟友占领状态
    },


    ITEM_DECREE_ID = 6000005, -- 国战军令id
    ITEM_WOOD_ID = 6000001, -- 国战银木id
    ITEM_IRON_ID = 6000002, -- 国战赤铁id
    ITEM_STONE_ID = 6000003, -- 国战精石id
    ITEM_FOOD_ID = 6000004, -- 国战灵谷id

    --国站数据状态
    LOGIN_NATION_ST = {
        UN_ENTER = 1, --从未进入过国战
        NOT_GET_DATA = 2, --还未获取数据
        DATA_OK = 3, --已获得数据
    },

    NATION_PLAYER_ST_UN_ENTER = 0, --1 未进入过国战
    NATION_PLAYER_ST_GO_ENTER = 1, --2 已经在国战中

    --讨伐区野怪守军最大个数（每个分区）
    NATION_PUNITIVE_EVERY_MAXCOUNT = 12,
    --资源区资源点最大个数（每个分区）
    NATION_RESOURCES_EVERY_MAXCOUNT = 9,

    --[[
    国战队伍OPCODE
        -1. 错误
        0.待命中
        1.移动中
        2.出征中
        3.驻守
        4.撤退
        5.剿匪
    ]]
    TEAM_OP_CODE = {
        ERROR = -1,
        STAND_BY = 0,
        REDEPLOY = 1,
        EXPEDITION = 2,
        DEFEND = 3,
        RETREAT = 4,
        BANDIT = 5,
    },
    --[[
    国战队伍状态
       -1.无状态
       1.移动中
       2.剿匪战斗中
       3.撤退中
   ]]
    TEAM_ST = {
        EMPTY = -1, --队伍状态
        MOVE = 1,
        BANDIT_FIGHT = 2,
        RETREAT = 3,
    },

    --[[
   国战队伍战斗结束显示
      0.失败
      1.胜利
      2.平局
      3.不显示
  ]]
    TEAM_BATTLE_RESULT = {
        DEFEAT = 0,
        VICTORY = 1,
        DEUCE = 2,
        EMPTY = 3,
    },

    --攻城战，杀敌，队伍状态
    SIEGE_KILL_TEAM_STATE = {
        WAITBATTLE = 1, --参战等待
        PREPARE = 2, --备战等待
        INBATTLE = 3, --战斗中
    },
    --[[
国战队伍移动类型
   1.步行
   2.飞行
]]
    TEAM_MOVE_MODE = {
        WALK = 1,
        FLY = 2,
    },

    --[[
国战城镇状态
   0.未激活
   1.已激活
]]
    NATION_TOWN_STATUS = {
        INACTIVE = 0,
        ACTIVE = 1,
    },
    ---国战军团操作类型状态
    NATION_GUARDIAN_STATUS = {
        UN_LOCK = 1, --未解锁
        RESET = 2, -- 重置
        CHALLENGE = 3 -- 转换
    },
    ---军团打开类型
    NATION_GUARDIAN_OPEN_TYPE = {
        MAIN_OPEN_TYPE = 1, -- 主界面打开
        TEAM_OPEN_TYPE = 2, -- 队伍打开
    },

    --国战查找路径模式
    NATION_FOUND_ROUND_LINK = {
        FORWARD = 1, --正向查找
        BACKWARD = 2, --反向查找
        NONE = 3 -- 未找到
    },
    --国战守军类型
    NATION_WAR_GUARD_TYPE = {
        RESOURCE = 1, --1.资源点守军
        PUNITIVE = 2, --2.讨伐区野怪守军
        BANDIT = 3, --3.剿匪怪点守军
        YU_DU = 4, --4.域都卫都关隘守军
        BLOCK = 5, --5.接战区地块守军
    },

    END_TIME_LOGIC_OFFSET_MS = 1000, -- 逻辑结束时间的偏移量(毫秒)
    END_TIME_UI_OFFSET_MS = 2000, -- UI结束时间的偏移量(毫秒)

    --NATION_DEFAULT_AP_MAX = 100, -- 国战默认行动力最大值

    NATION_DEFAULT_ARMY_CONSTANT = 100, -- 军力值上限系数


    NATION_UNION_APPLY_DEFINE = {
        CLOSE = 0, -- 关闭申请
        NO_CONDITION_APPLY = 1, --任何人申请即加入
        NEED_APPROVE = 2, --申请审批 需要审批
    },

    --guoyu add
    NATION_TEAM_BEHAVIOR_TYPE = {
        ERROR = -1,
        STAY = 0, --待命
        TRANSFER = 1, --调动
        DEFEND_WARCELL = 2, --驻守接战区
        DEFEND_RES = 3, --驻守资源区
        BACK = 4, --撤退
        BATTLE = 5, --剿匪
        PUNITIVE = 6, --讨伐区
        RESOURCE = 7, --资源区
        WARCELL = 8, --接战区
        SIEGE_BREAK = 9, --攻城战，破城
        SIEGE_KILL = 10, --攻城战，杀敌
        RESOURCE_COLLECT = 12, --资源点采集
    },


    NATION_TEAM_BEHAVIOR_STATE = {
        EMPTY = -1, --空状态
        MOVETO = 1, --前往
        BATTLE = 2, --战斗
        BACK = 3, --返回
        COLLECT = 4, --采集
        WAITING = 5, --等待
        BACK_WAITING = 6, --战斗返回等待
    },


    NATION_TEAM_OPRE_STATE = {
        CANOPRE = 0, --可以操作
        NOT_IN_STAY = 1, --非待命状态，无法选择
        SOMEONE_RECRUIT = 2, --有卡牌处于征兵状态，无法选择
        SOMEONE_HURT = 3, --有卡牌处于受伤状态 ，无法选择
        SOMEONE_POWER_NOT_ENOUGH = 4, --有卡牌行动力不足，无法选择
        STAY_IN_SAME_BUILDING = 5, --处于同一城整不可以操作
        EMPTY = 100, --空队伍，不可操作
    },

    --带资源（木铁石粮等）的提示框界面，类型
    NATION_RESOURCE_TIP_WINDOW_TYPE = {
        RECRUIT_RETURN = 1, --征募停止返还
        ARMY_GROUP_SWITCH = 2, --军团转换
        DOWN_FORMATION = 3, -- 下阵损耗
    },

    NATION_SCIENCE_ITEM_STATE = {
        PRE_CONDITION_LOCK = 0, --不可升级,前置条件不满足
        PRE_OK_RES_FAIL_LEVEL_NONE = 1, --达到升级条件但升级所需资源不足，科技等级=0
        PRE_OK_RES_FAIL_LEVEL_HAVE = 2, --达到升级条件但升级所需资源不足，科技等级>0
        PRE_OK_RES_OK = 3, --达到升级条件，并达到升级所需资源
        TECH_MAX_LEVEL = 4, --科技等级达到满级
        NOW_UPGRADEING = 5, --正在升级
    },

    NATION_RESOURCE_POINT_STATE = {
        Empty = 0, --没有占领
        Mine = 1, --自己占领
        Ally = 2, --盟友占领
        Enemy = 3, --他人占领
        Abandon = 4, --放弃占领
    },

    --获取不同类型的队伍数据
    NATION_TEAM_TYPE = {
        Punitive = 1, --讨伐区
        Resources = 2, --资源区
        Warcell = 3, --接战区
    },

    --国站联盟审批数据状态
    NATION_UNION_APPLY_SETTING = {
        CLOSE_APPLY = 0, --关闭申请
        ANY_PERSON = 1, --任何人申请即加入
        NEED_APPLY = 2, --申请审批
    },
    --联盟职位
    NATION_UNION_POSITION = {
        LEADER = 1, --盟主
        DEPUTYLEADER = 2, --副盟主
        COMMANDER = 3, --指挥官
        ELITE = 4, --精英
        MEMBER = 5, --普通
    },
    NATION_TECH_VALUE_TYPE = {
        RATE = 1, -- 百分比
        NUMBER = 2, -- 数值
    },

    --科技的唯一ID，有需求，再添加写死
    NATION_TECH_ID = {
        FORMATION_UNLOCK = 6102014, --队伍第三阵位解锁科技
    },

    NATION_TECH_TYPE = {
        MONEY_WOOD = 1, -- 伐木精通 百分比
        MONEY_IRON = 2, -- 冶炼精通 百分比
        MONEY_STONE = 3, -- 采石精通 百分比
        MONEY_FOOD = 4, -- 耕犁精通 百分比
        MONEY_ALL = 5, -- 高效利用 -- 全部资源上涨 百分比
        MONEY_MAX = 6, -- 仓库储量 数值
        RESOURCE_COLLECT_WOOD = 7, -- 采集银木 百分比
        RESOURCE_COLLECT_IRON = 8, -- 采集赤铁 百分比
        RESOURCE_COLLECT_FOOD = 9, -- 采集灵谷 百分比
        RESOURCE_COLLECT_STONE = 10, -- 采集精石 百分比
        RESOURCE_COLLECT_SPEED = 11, -- 采集加速 百分比
        RESOURCE_COLLECT_ALL = 12, -- 采集加成 百分比
        GRID_SPEED = 13, -- 行军加速 百分比
        TECH_SPEED = 14, -- 科技加速 百分比
        CARD_AP = 15, -- 行动力上限 数值
        AP_RECOVER = 16, -- 行动力恢复 百分比
        SPEED_ARMY = 17, -- 征募加速 百分比
        MAX_ARMY = 18, -- 军力上限 数值
        MAX_FORCE = 19, -- 储备军力上限 数值
        RESERVE_RECOVER = 20, -- 储备军力恢复 百分比
        TEAM_MAX = 21, -- 队列上限  数值
        TEAM_DEFEND = 24, -- 驻守解锁 数值 1.开启功能 0.不开启
        COLLECT_UNLOCK = 25, --采集解锁 数值 1.开启功能 0.不开启
        WOOD_MONEY_2 = 26, -- 伐木精通2 数值提升
        IRON_MONEY_2 = 27, -- 冶炼精通2 数值提升
        STONE_MONEY_2 = 28, -- 采石精通2 数值提升
        FOOD_MONEY_2 = 29, -- 耕犁精通2 数值提升
        ALL_MONEY_2 = 30, -- 高效利用2 数值提升
        CONSUMPTION_BY = 31, -- 征募消耗降低 百分比
        BANDITS_SPEED = 32, -- 城镇剿匪行军速度提高 百分比
        RES_SPEED = 33, -- 前往资源区行军速度提高 百分比
        MARCH_SPEED = 34, -- 行军加速 所在队伍 百分比
        SPEED_ARMY_SELF = 35, -- 征募加速卡牌自身 百分比
        DAMAGE_BOOST = 36, -- 伤害提升 百分比
        DAMAGE_REDUCTION = 37, -- 伤害减免 百分比
        HBWQ_SPEED_ARMY = 38, -- 虎豹王骑-征募速度 百分比
        DEF_DAMAGE_REDUCTION = 39, -- 驻守时受到伤害降低 百分比
        READ_ARMY_SPEED = 40, -- 队伍所在城镇储备军力恢复速度 百分比
        CRUSADE_EXP_BOOST = 41, -- 队伍讨伐野怪获得的经验提高 百分比
        GUARD_DAMAGE_BOOST = 42, -- 守护灵造成伤害提高 百分比
        HOST_DAMAGE_REDUCTION = 43, -- 寄灵人受到伤害降低 百分比
        TERRITORY_MAX = 44, -- 领地数量上限 数值
        HU_BAO_WANG_QI_UP = 45, -- 虎豹王骑-强化 百分比
        CHE_XIA_LING_WEI_UP = 46, -- 车下灵卫-强化 百分比
        WU_DANG_XUAN_JUN_UP = 47, -- 无当玄军-强化 百分比
        MO_DAO_JUN_TUAN_UP = 48, -- 魔导军团-强化 百分比
        TIAN_ZHEN_WU_LING_UP = 49, -- 天罡武灵-强化 百分比
        YIN_LING_JIA_SHI_UP = 50, -- 隐灵甲士-强化 百分比
        CORPS_MAX_NUM = 51, -- 解锁军团最大数量 数值
        COST_MAX_NUM = 52, -- 增加队伍cost上限 数值
        FORMATION_UNLOCK = 53, -- 阵位解锁 解锁队伍第三个位置  数值
    },

    TEAM_SYNC_PATH_TYPE = {
        ENTER_NATION = 1, -- 进入国战
        LEAVE_NATION = 2, -- 离开国战
    },

    --队伍排号
    NATION_TEAM_LINE = {
        CENTER = 0,
        LEFT = 1,
        RIGHT = 2,
    },

    -- 守护灵寄灵人类型枚举
    ENUM_CARD_MAIN_TYPE = {
        HOST = 1, --寄灵人
        GUARDIAN = 2, -- 守護靈
    },


    --队伍索引
    NATION_TEAM_CARD_INDEX = {
        HOST1 = 1, -- 寄灵人一号位
        HOST2 = 2,
        HOST3 = 3,
        GUARD1 = 4, -- 守护灵一号位
        GUARD2 = 5,
        GUARD3 = 6,
    },

    NATION_TECH_UPGRADE_QUEUE_TYPE = {
        FREE = 1, -- 免费队列
        PAY = 2, --  付费队列
    },

    NATION_RETREAT_ST = {
        RESOURCE = 1, -- 资源区
        WAR_CELL = 2, --  接战区
        SIEGE_KILL = 3, --  攻城战杀敌
        NONE = 4, --  错误
    },

    --天赋的作用范围
    NATION_CARD_TALENT_TYPE = {
        IN_TECH = 1, --科技类型
        GO_BATTLE = 2, --战斗生效
    },

    --国战服登录状态
    NATION_LOGIN_STATUS = {
        UN_SYNC = 1, --未进入
        DATA_OK = 2, --已获取全部数据
    },

    -- 国战地图四叉树管理参数
    NATION_LINE_QUAD_TREE_PARAMS = {
        SWAP_PROCESS_INTERVAL = 0.1, -- 处理间隔
        SWAP_TRIGGER_INTERVAL = 0.1, -- 触发间隔
        CELL_SWAP_IN_DIST_CELL_NUM = 2, -- 最小显示格子增加量
        CELL_SWAP_OUT_DIST_CELL_NUM = 5, -- 最大显示格子增加量
    },

    --抓取一屏幕格子扩大的范围
    NATION_CATCH_SCREEN_CELL_OFFSET = 2,
    --国战测试模式
    NATION_TEST_MODE = false,
    -- 国战地图缩放参数 最远米 最近米 默认米
    NATION_PINCH_MAPS = {
        MIN = -15.7,
        MAX = -8,
        DEFAULT = -9,
    },

    --场景根节点名称
    NATION_DYNAMIC_SCENE_ROOT = "Map_empty_nation",
    -- 国战每隔多少毫秒同步一次国战资源
    NATION_SYNC_RESOURCE_TIME_MS = 45000,


    -- 国战地图2d人物参数
    NATION_2D_CHAR_PARAMS = {
        ALLOW_MEMORY = 16, -- 人物可占用内存(m)
        --ALLOW_MEMORY = 1, -- 人物可占用内存(m)
        MAX_SIZE = 512, -- 最大渲染尺寸
        --MAX_SIZE = 128, -- 最大渲染尺寸
        MIN_SIZE = 64, -- 最小渲染尺寸
        LAYER_NONE = 28, -- 非渲染层
        LAYER_CHARACTER = 8, -- 角色层
        CIRCLE_IN_BOUND = 2, -- 进入范围m
        CIRCLE_OUT_BOUND = 4, -- 出去范围m
        --LAYER_NONE = 10000000000, -- 非渲染层
        --LAYER_CHARACTER = 128, -- 角色层
    },


    -- 国战战斗日志查看日志状态
    NATION_BATTLE_LOG_LOOK_ST = {
        SELF = 1, -- 只看自己
        UNION = 2, -- 只看联盟
    },


    NATION_SCENE_CANVAS_PARAM ={
        SIZE_X = 1.5, --长宽缩放比
        SIZE_Y = 1.5, --长宽缩放比
    },

    -- 国战相机结束事件状态
    NATION_CM_PARAM ={
        TRIGGER_END = {
                        DEFAULT = 0,
                       WAIT = 1,
                       OK = 2
        },
    },

    NATION_GUIDE_PARAM ={
        BRON_TOWN_2_NEARBY = { --出生城镇附近的目标城池
            [460092] = 580095,
            [670094] = 770089,
            [1170076] = 1090075,
            [920079] = 830083,
        },
    },


}
return ConstClass("NationDefine", NationDefine)
