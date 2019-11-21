using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace LJTilemaps
{ 
    [System.Serializable]
    public class LJMapBackGroundData
    {
        /// <summary>
        /// 地表的缩放大小
        /// </summary>
        public Vector3 tranScale;
        /// <summary>
        /// 坐标偏移量
        /// </summary>
        public Vector3 worldPosition;
        /// <summary>
        /// 使用的材质球
        /// </summary>
        public Material useMaterial;
        /// <summary>
        /// 地面名称
        /// </summary>
        public string backName;
    }
}