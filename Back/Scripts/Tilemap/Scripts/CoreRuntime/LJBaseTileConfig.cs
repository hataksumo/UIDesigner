using UnityEngine;
using UnityEngine.Tilemaps;
using System.Collections.Generic;

namespace LJTilemaps
{
     
    /// <summary>
    /// 地图数据对象
    /// </summary>
    [CreateAssetMenu(fileName = LJBaseTileConfig.BaseTileAssetFileName, menuName = "Tilemap Editor/LJTilemaps/创建瓦片管理")]
    public class LJBaseTileConfig : ScriptableObject,
        ISerializationCallbackReceiver
    {
        //public const string BaseTileAssetFileName = "AllBaseTile";
        //第二版地图
        public const string BaseTileAssetFileName = "AllBaseTileV2";
        [SerializeField]
        public List<TileBase> tileBases;
    
        public LJBaseTileConfig() {
            baseTileDict = new LJBaseTileDict();
            baseTile2IdDict = new Dictionary<TileBase, int>();
            tileBases = new List<TileBase>();
        }

        /////// <summary>
        /////// 瓦片表
        /////// </summary>
        [System.NonSerialized]
        private LJBaseTileDict baseTileDict;
        public LJBaseTileDict BaseTileDict
        {
            get { return baseTileDict; }
        }

        private Dictionary<TileBase,int> baseTile2IdDict;

        private bool SetTileBaseById(int id, TileBase tileBase)
        {
            //Grid grid = GetComponentInParent<Grid>();
            //if (grid != null && positionProperty != null)
            //{
            if (tileBase != null)
            {
                baseTileDict[id] = tileBase;
                return true;
            }
            return false;
        }

        public bool TryGetTileBaseById(int id, out TileBase tileBase)
        {
            return baseTileDict.TryGetValue(id, out tileBase);
        }

        public TileBase GetTileBaseById(int id)
        {

            TileBase tileBase;
            if (baseTileDict.TryGetValue(id, out tileBase))
            {

            }
            return tileBase;
        }


        public int GetIdByTileBase(TileBase tileBase)
        {

            int id;
            if (baseTile2IdDict.TryGetValue(tileBase, out id))
            {

            }
            else {
                id = -1;
            }
            return id;
        }


        public bool ContainsId(int id)
        {
            return baseTileDict.ContainsKey(id);
        }


        private bool RemoveById(int id)
        {
            return baseTileDict.Remove(id);
        }

        private void Reset()
        {
            baseTileDict.Clear();
            baseTile2IdDict.Clear();
        }

        public void OnBeforeSerialize()
        {
            Reset();
            for (int i = 0; i < tileBases.Count; i++)
            {
                SetTileBaseById(i, tileBases[i]);
                if (tileBases[i] != null)
                {
                    baseTile2IdDict[tileBases[i]] = i;
                }
                
            }
        }

        public void OnAfterDeserialize()
        {
            Reset();
            for (int i = 0; i < tileBases.Count; i++)
            {
                SetTileBaseById(i, tileBases[i]);
                if (tileBases[i] != null)
                {
                    baseTile2IdDict[tileBases[i]] = i;
                }

            }
        }
    }
}