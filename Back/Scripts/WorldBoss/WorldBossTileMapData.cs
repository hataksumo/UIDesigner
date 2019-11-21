using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace WorldBoss
{
    [System.Serializable]
    public class ColliderTileData
    {
        public Vector3Int pos;
    }

   // [CreateAssetMenu(fileName = "WorldBoss Map Obj Layer Data", menuName = "Tilemap Editor/LJTilemaps/创建多人Boss地图数据")]
    public class WorldBossTileMapData : ScriptableObject
    {
        [SerializeField]
        /////// <summary>
        /////// 格子数据
        /////// </summary>
        ///
        public List<ColliderTileData> TileGridList;

        public WorldBossTileMapData()
        {
            TileGridList = new List<ColliderTileData>();
        }

        public bool ContainsPositionProperty(ColliderTileData data)
        {
            return TileGridList.Contains(data);
        }

        public bool RemovePositionProperty(ColliderTileData data)
        {
            return TileGridList.Remove(data);
        }

        public virtual void TileGridDicClear()
        {
            TileGridList.Clear();
        }
    }
}
