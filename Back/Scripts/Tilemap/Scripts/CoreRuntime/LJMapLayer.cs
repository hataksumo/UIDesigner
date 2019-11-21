using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;

namespace LJTilemaps
{
    /// <summary>
    /// 地图数据对象
    /// </summary>
    [Serializable]
    public class LJMapLayer
    //, ISerializationCallbackReceiver
    {
        public LJMapLayer() {
         
        }
        /// <summary>
        /// 世界坐标
        /// </summary>
        public Vector3 worldPosition;
        /// <summary>
        /// 地图名字
        /// </summary>
        public string layerName;
        /// <summary>
        /// 图层原点坐标
        /// </summary>
        public Vector3Int origin;
        /// <summary>
        /// 图层大小 z 代表z高度
        /// </summary>
        public Vector3Int size;

        ///// <summary>
        ///// 顺序层级
        ///// </summary>
        //public int animationFrameRate;
        //public Color tiniColor;
        /// <summary>
        /// 方向
        /// </summary>
        public Tilemap.Orientation orientation;
        /// <summary>
        /// 自定义方向矩阵
        /// </summary>
        public Matrix4x4 orientationMatrix;
        /// <summary>
        /// 顺序层级
        /// </summary>
        public int orderInLayer;

        /// <summary>
        /// 排序层级
        /// </summary>
        public int sortingLayer;

        public List<LJTileData> tileDatas;
       
    }
}