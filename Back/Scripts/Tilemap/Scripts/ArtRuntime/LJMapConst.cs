using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace LJTilemaps
{
    public class LJMapConst
    {

        /// <summary>
        /// 地图XY坐标间隔偏移量
        /// </summary>
        public const int MAP_POS_OFFSET = 10000;
        /// <summary>
        /// 路的id规则位数
        /// </summary>
        public const long ROAD_ID_RULE_BIT = 100000000L;

        //public class MAP_CELL_STATE
        //{
        //    public const int UNOCCUPIED_CELL = 0;   //不可占领格子，excel示例的灰色区域
        //    public const int TERRITORY_CELL = 1;   //领土，excel示例的黄色区域
        //    public const int DAQIGUAN_CELL = 2;   //大奇观主城，excel示例的绿色区域和红色区域
        //    public const int ROAD_CELL = 10;   //路
        //}

        /// <summary>
        /// 地图搜索状态 0 未搜索 1已搜索
        /// </summary>
        public class MAP_SEARCH_STATE
        {
            public const int NONE = 0;
            public const int OK = 1;
        }

            /// <summary>
            /// 建筑类型定义
            /// </summary>
            public class MAP_OBJ_MAIN_TYPE
        {
            public const int UNDEFINE = 0;//未定义
            public const int WONDER = 1;//域都
            public const int CITY = 2;//卫都
            public const int GATE = 3;//关隘
            public const int TOWN = 4;//城镇
            public const int RESOURCE = 5;//资源区
            public const int TREASURE = 6;//讨伐区
        }

        /// <summary>
        /// 地图层级定义
        /// </summary>
        public class MAP_LAYER_NAME
        {
            public const string GROUND = "Ground";//地表层
            public const string DECORATE = "Decorate";//装饰物
            public const string ROAD = "Road";//地图层
            public const string BUILDING = "Building";//建筑层
            public const string EFFECT = "Effect";//效果层
        }


        /// <summary>
        /// 格子二级类型定义
        /// </summary>
        public class MAP_OBJ_SUB_TYPE
        {
            public const int UNDEFINE = 0;//未定义 没有则无定义
            public const int WONDER_PART_OUTSIDE = 1;// 关隘外层 (同域都卫都)
            public const int WONDER_PART_INNER = 2;// 关隘内层
            public const int WONDER_PART_KERNEL = 3;// 关隘中心区
            public const int WONDER_PART_UNUSERD = 4;// 关隘不可通过
            public const int PART = 5;// 是建筑的一部分   城镇 资源区  讨伐区 
        }

        //public const Vector2Int MAP_

    }
}
