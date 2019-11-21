using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace LJTilemaps
{
    /// <summary>
    /// 地图数据对象
    /// </summary>
    [CreateAssetMenu(fileName = "LJ Map Obj Layer Data", menuName = "Tilemap Editor/LJTilemaps/创建地图数据")]
    public class LJMapObjLayerData : ScriptableObject
        //, ISerializationCallbackReceiver
    {
        [Tooltip("地图id")]
        public int mapId;//地图id
        [Tooltip("地图类型")]
        public int mapType;//地图类型
        [Tooltip("实际地图最小坐标")]
        public Vector3Int relativeGridMinPos;
        [Tooltip("图块数量长宽数量外加高度")]
        public Vector3Int mapCount;
        //[Tooltip("图块长宽(m)")]
        //public Vector2 mapGridSize = new Vector2(1, 0.5f); // 这个当地图定下来后可以确定每个图块的米数
        //[Tooltip("地图0,0点偏移量")]
        //public Vector3 mapOffset;
        [Tooltip("像素大小")]
        public Vector2Int mapPixels = new Vector2Int(100,50); // 地图像素大小
        //[Tooltip("图块z轴位置")]
        //public int cellZ;
        [Tooltip("地图名称")]
        public string mapName;//地图名称
        [Tooltip("地图信息")]
        public string info;//地图信息

        /// <summary>
        /// 实际地图最大坐标
        /// </summary>
        public Vector3Int RelativeGridMaxPos {
            get { return new Vector3Int(relativeGridMinPos.x + mapCount.x, relativeGridMinPos.y + mapCount.y, relativeGridMinPos.z + mapCount.z); }
        }

        public LJMapObjLayerData() {
            m_PositionProperties = new LJMapObjDict();
            //testDict = new LJTestDict();
        }
        //[Tooltip("格子数据")]
        //public LJGridStorage gridStorage;

        /////// <summary>
        /////// 格子数据
        /////// </summary>
        [SerializeField]
        private LJMapObjDict m_PositionProperties;
        public LJMapObjDict PositionProperties
        {
            get { return m_PositionProperties; }
        }
        //[SerializeField]
        //private LJTestDict testDict;
        //public LJTestDict TestDict
        //{
        //    get { return testDict; }
        //}
        

        //public Dictionary<Vector3Int, LJGridObject> PositionProperties
        //{
        //    get { return serializationDictionary.ToDictionary(); }
        //}

        ////[SerializeField]
        //public List<Vector3Int> _keys = new List<Vector3Int> { };
        ////[SerializeField]
        //public List<LJGridObject> _values = new List<LJGridObject> { };

        //public void OnBeforeSerialize()
        //{
        //    _keys.Clear();
        //    _values.Clear();

        //    foreach (var kvp in m_PositionProperties)
        //    {
        //        _keys.Add(kvp.Key);
        //        _values.Add(kvp.Value);
        //    }
        //}

        //public void OnAfterDeserialize()
        //{
        //    m_PositionProperties.Clear();
        //    for (int i = 0; i != Math.Min(_keys.Count, _values.Count); i++)
        //    {
        //        m_PositionProperties[_keys[i]] = _values[i];
        //    }
        //}


        public bool SetPositionProperty(SerVector2Int position, LJMapObject positionProperty)
        {
            //Grid grid = GetComponentInParent<Grid>();
            //if (grid != null && positionProperty != null)
            //{
            if (positionProperty != null)
            {
                m_PositionProperties[position] = positionProperty;
                return true;
            }
            return false;
        }

        public bool TryGetPositionProperty(SerVector2Int position, out LJMapObject positionValue)
        {
            return m_PositionProperties.TryGetValue(position, out positionValue);
        }

        public LJMapObject GetPositionProperty(SerVector2Int position)
        {

            LJMapObject positionValue;
            if (m_PositionProperties.TryGetValue(position, out positionValue))
            {

            }
            return positionValue;
        }


        public bool ContainsPositionProperty(SerVector2Int position)
        {
            return m_PositionProperties.ContainsKey(position);
        }


        public bool RemovePositionProperty(SerVector2Int position)
        {
            return m_PositionProperties.Remove(position);
        }

        public virtual void Reset()
        {
            m_PositionProperties.Clear();
        }

        //public void OnAfterDeserialize()
        //{
        //    if (gridStorage != null)
        //    {
        //        gridStorage.OnAfterDeserialize();
        //    }
        //}

        //public void OnBeforeSerialize()
        //{
        //    if (gridStorage != null)
        //    {
        //        gridStorage.OnBeforeSerialize();
        //    }
        //}
    }
}