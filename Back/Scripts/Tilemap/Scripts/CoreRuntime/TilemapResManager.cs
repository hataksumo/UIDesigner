using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;

namespace LJTilemaps
{

    public delegate void TileLoadCompleteCallback(TileBase tileBase);
     
         
    /// <summary>
    /// 蓝鲸图块加载管理器
    /// </summary>
    public class TilemapResManager : MonoBehaviour
    {

        /// <summary>
        /// id对图块的映射
        /// </summary>
        private Dictionary<int, TileBase> id2TileBaseDict;
        private Dictionary<TileBase,int> tileBase2IdDict;

        public Dictionary<int, TileBase> Id2TileBaseDict
        {
            get
            {
                return id2TileBaseDict;
            }

            set
            {
                id2TileBaseDict = value;
            }
        }

        public Dictionary<TileBase, int> TileBase2IdDict
        {
            get
            {
                return tileBase2IdDict;
            }

            set
            {
                tileBase2IdDict = value;
            }
        }

        /// <summary>
        /// 蓝鲸图块资源管理
        /// </summary>
        private void Awake()
        {
            id2TileBaseDict = new Dictionary<int, TileBase>();
            tileBase2IdDict = new Dictionary<TileBase, int>();
        }

        /// <summary>
        /// 同步加载动态图块
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public TileBase SyncLoadTileBaseById(int id) {
            TileBase tileBase = null;
            id2TileBaseDict.TryGetValue(id, out tileBase);
        

            return tileBase;
        }

        /// <summary>
        /// 异步加载某图块
        /// </summary>
        /// <param name="id"></param>
        /// <param name="tileLoadCompleteCallback"></param>
        /// <returns></returns>
        public IEnumerable AsynchronousLoadTileBaseById(int id, TileLoadCompleteCallback tileLoadCompleteCallback)
        {
            TileBase tileBase = null;
            id2TileBaseDict.TryGetValue(id, out tileBase);
            yield return null;
            if (tileLoadCompleteCallback != null) {
                tileLoadCompleteCallback(tileBase);
            }
        }

    }
}