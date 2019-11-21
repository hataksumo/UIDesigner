using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace LJTilemaps
{
    /// <summary>
    /// 地图数据对象
    /// </summary>
    public class LJMapInfoData : ScriptableObject
    //, ISerializationCallbackReceiver
    {

        [Tooltip("地图id")]
        public int mapId;//地图id
        [Tooltip("地图类型")]
        public int mapType;//地图类型
        [Tooltip("地图0,0点偏移量")]
        public Vector3 mapOffset;

        [Tooltip("地图名称")]
        public string mapName;//地图名称
        [Tooltip("地图信息")]
        public string info;//地图信息

        /// <summary>
        /// 图层原点坐标
        /// </summary>
        public Vector3Int origin;
        /// <summary>
        /// 图层大小 z 代表z高度
        /// </summary>
        public Vector3Int size;


        /// <summary>
        /// 边界xMIN,xMAX的扩大范围(米)
        /// </summary>
        public Vector2 boundExpandX;
        /// <summary>
        /// 边界yMIN,yMAX的扩大范围(米)
        /// </summary>
        public Vector2 boundExpandY;
        /// <summary>
        /// 地图边界中心(米)
        /// </summary>
        public Vector2 boundCenter;

        /// <summary>
        /// 地图边界大小(米)
        /// </summary>
        public Vector2 boundSize;

        /// <summary>
        /// grid格子大小
        /// </summary>
        public Vector3 gridCellSize;

        /// <summary>
        /// grid格子间距吧？
        /// </summary>
        public Vector3 gridCellGap;
        /// <summary>
        /// 所有地图数据
        /// </summary>
        public List<LJMapLayer> allLayers;

        /// <summary>
        /// 地图路径数据
        /// </summary>
        public LJRoadLinkDict roadLinkDict;

        ///// <summary>
        ///// 地图地面数据
        ///// </summary>
        //public LJMapBackGroundData lJMapBackGroundData;
        /// <summary>
        /// 地图地面数据
        /// </summary>
        public List<LJMapBackGroundData> lJMapBackGroundDatas;


        //public Material backgroundMat;

        public LJMapInfoData() {
            roadLinkDict = new LJRoadLinkDict();
            lJMapBackGroundDatas = new List<LJMapBackGroundData>();
        }
        
        /// <summary>
        /// 地图路径数据
        /// </summary>
        public LJRoadLinkDict RoadLinkDict
        {
            get { return roadLinkDict; }
        }

        public bool SetRoadLinkDict(long id, string roads)
        {
            if (roads != null)
            {
                roadLinkDict[id] = roads;
                return true;
            }
            return false;
        }

        public bool TryGetRoadLinkById(long id, out string roads)
        {
            return roadLinkDict.TryGetValue(id, out roads);
        }

        public string GetRoadLinkById(long id)
        {

            string roads;
            if (roadLinkDict.TryGetValue(id, out roads))
            {

            }
            return roads;
        }


        public bool ContainsRoadLinkById(long id)
        {
            return roadLinkDict.ContainsKey(id);
        }

        public bool RemoveRoadLinkById(long id)
        {
            return roadLinkDict.Remove(id);
        }

        public virtual void Reset()
        {
            roadLinkDict.Clear();
        }

    }
}