using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace LJTilemaps
{
    [ExecuteInEditMode]
    [RequireComponent(typeof(Grid))]
    [AddComponentMenu("Tilemap/LJ Map Obj Layer Holder")]
    public class LJMapObjLayerHolder : MonoBehaviour
    {
        /// <summary>
        /// 地图数据
        /// </summary>
        public LJMapObjLayerData mapObjLayerData;
        [Tooltip("是否显示边框")]
        public bool showObjLayerBorder = true;
        [Tooltip("是否显示文字")]
        public bool showObjLayerInfo = true;
        [Tooltip("移动数据层地图偏移量")]
        [HideInInspector]
        public Vector2Int dataMapOffset = Vector2Int.zero;

        [Tooltip("地图边界范围X最小X最大")]
        [HideInInspector]
        public Vector2 dataMapBoundExpandX = new Vector2(10, 10);
        [Tooltip("地图边界范围Y最小Y最大")]
        [HideInInspector]
        public Vector2 dataMapBoundExpandY = new Vector2(50, 10);
        
        private void Awake()
        {
            //gridMapData.TestDict[0] = 999;
            //gridMapData.TestDict[1] = 998;
            //gridMapData.TestDict[2] = 997;
        }



    }
}