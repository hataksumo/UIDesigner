using System;
using System.Collections;
using System.Collections.Generic;
using TilemapTweens;
using UnityEngine;
using UnityEngine.Tilemaps;
using DG.Tweening;

public class WorldBossMapManager : MonoBehaviour
{
    struct MiscData
    {
        public GameObject go;
        public int maxCount;
        public int count;
        public MiscData(GameObject obj, int max, int cur) {
            go = obj;
            maxCount = max;
            count = cur;
        }
    }

    /// <summary>
    /// 记录每格子中Misc物件
    /// </summary>
 //   Dictionary<Vector3Int, List<GameObject>> miscCache;
    Dictionary<Vector3Int, List<GameObject>> miscBodyCache;
    Dictionary<GameObject, MiscData> miscDataDic;

    //显示更新地图的点
    Dictionary<int, Vector3Int> allCurPos = new Dictionary<int, Vector3Int>();

    public Tilemap groundTilemap;
    public int nearSize;
    public int farSize;
    //public Vector3Int curPos = Vector3Int.zero;
    public HashSet<Vector3Int> activeCell;

    public event System.Action onTileStopTween;

    private Dictionary<int, IntField> visiableZoneList = new Dictionary<int, IntField>();
    private Dictionary<int, IntField> nearZoneList = new Dictionary<int, IntField>();
    /*
    /// <summary>
    /// 判断是否移动了
    /// </summary>
    /// <param name="centerPos"></param>
    /// <returns></returns>
    public bool IsMoved( Vector3Int centerPos )
    {
        return centerPos != this.curPos;
    }
    */

    /// <summary>
    /// 判断地格是否已经激活
    /// </summary>
    /// <param name="centerPos"></param>
    /// <returns></returns>
    public bool IsActiveByCellPos(Vector3Int centerPos)
    {
        return activeCell.Contains(centerPos);
    }

    /// <summary>
    /// 更新当前位置
    /// </summary>
    /// <param name="centerPos"></param>
    public void SetCurPos( Vector3Int centerPos, int index)
    {
        /*
        curPos = centerPos;      
        visiableZone.SetField(curPos, farSize, farSize);
        nearZone.SetField(curPos, nearSize, nearSize);
        */
        allCurPos[index] = centerPos;

        IntField visZone = new IntField();
        visZone.SetField(centerPos, farSize, farSize);
        visiableZoneList[index] = visZone;

        IntField nearZone = new IntField();
        nearZone.SetField(centerPos, nearSize, nearSize);
        nearZoneList[index] = nearZone;
    }
    /// <summary>
    /// 用世界坐标更新当前位置
    /// </summary>
    /// <param name="worldPos"></param>
    public void SetCurPos(Vector3 worldPos, int index)
    {
        if (groundTilemap == null) return;
        var pos = groundTilemap.LocalToCell(groundTilemap.transform.InverseTransformPoint(worldPos));
        SetCurPos(pos, index);
    }

    /// <summary>
    /// 初始化地图
    /// </summary>
    /// <param name="miscList">小件列表</param>
    public void Init( GameObject[] miscList )
    {
        if (groundTilemap == null || miscList == null || miscList.Length < 1) return;
  //      miscCache = new Dictionary<Vector3Int, List<GameObject>>();
        activeCell = new HashSet<Vector3Int>();
/*
        foreach (var go in miscList)
        {
            var localPos = groundTilemap.transform.InverseTransformPoint(go.transform.position);
            var pos = groundTilemap.LocalToCell(localPos);
            if (!miscCache.ContainsKey(pos))
            {
                miscCache.Add(pos, new List<GameObject>());
            }
            miscCache[pos].Add(go);
        }
        */
        miscBodyCache = new Dictionary<Vector3Int, List<GameObject>>();
        miscDataDic = new Dictionary<GameObject, MiscData>();
        foreach (var go in miscList)
        {
            var localPos = groundTilemap.transform.InverseTransformPoint(go.transform.position);
            var pos = groundTilemap.LocalToCell(localPos);
            /*
            if (!miscBodyCache.ContainsKey(pos))
            {
                miscBodyCache.Add(pos, new List<GameObject>());
            }
            miscBodyCache[pos].Add(go);
            */
            var spsBounds = go.GetComponent<SpriteRenderer>().bounds;
            var spsBoundsWidth = Mathf.CeilToInt(spsBounds.size.x);
            var spsBoundsHeight = Mathf.CeilToInt(spsBounds.size.y);
            var centerCellPos = groundTilemap.WorldToCell(spsBounds.center);
            /*
            if (centerCellPos != pos)
            {
                if (!miscBodyCache.ContainsKey(centerCellPos))
                {
                    miscBodyCache.Add(centerCellPos, new List<GameObject>());
                }
                miscBodyCache[centerCellPos].Add(go);
            }
            */
            IntField miscBody = new IntField();
            miscBody.SetField(centerCellPos, spsBoundsWidth + 1, spsBoundsHeight * 2 + 1);
            int maxCount = 0;
            foreach (var p in miscBody.allPositionsWithin)
            {
                if (!groundTilemap.HasTile(p))
                {
                    continue;
                }
                if (spsBounds.Contains(groundTilemap.CellToWorld(p)))
                {
                    if (!miscBodyCache.ContainsKey(p))
                    {
                        miscBodyCache.Add(p, new List<GameObject>());
                    }
                    miscBodyCache[p].Add(go);
                    maxCount = maxCount + 1;
                }
            }
            miscDataDic.Add(go, new MiscData(go, maxCount, 0));
        }

    }


    /// <summary>
    /// 隐藏所有地块与小件
    /// </summary>
    /// <param name="mapSize">地图尺寸</param>
    public void HideAll( int mapSize )
    {
        if (groundTilemap == null || miscBodyCache == null) return;        
        activeCell.Clear();
        for (int y = -mapSize ; y < mapSize ; y++)
        {
            for (int x = -mapSize ; x < mapSize ; x++)
            {
                Vector3Int pos = new Vector3Int(x, y, 0);
                TilemapUtilties.SetTileColor(groundTilemap, pos, Color.clear);
            }
        }

        foreach (var item in miscBodyCache)
        {
            if (item.Value != null && item.Value.Count > 0)
            {
                foreach (var m in item.Value)
                {
                    m.SetActive(false);
                }
            }
        }
    }

    /// <summary>
    /// 动画结束回调
    /// 用于控制各种动画播放的节奏
    /// </summary>
    /// <param name="id"></param>
    void OnTweenFin( int id )
    {
        if (TileTweener.Instance.IsIdle)
        {
            if (onTileStopTween != null)
            {
                onTileStopTween();
            }
        }
    }

    /// <summary>
    /// 更新迷雾,激活隐藏的地块,
    /// </summary>  
    public void UpdateTilemap()
    {
        if (groundTilemap == null) return;
        /*
        foreach (var p in visiableZone.allPositionsWithin)
        {
            if (!groundTilemap.HasTile(p))
            {
                continue;
            }
            if (!activeCell.Contains(p))
            {
                activeCell.Add(p);
            }
        }
        */
        foreach (var visZone in visiableZoneList)
        {
            foreach (var p in visZone.Value.allPositionsWithin)
            {
                if (!groundTilemap.HasTile(p))
                {
                    continue;
                }
                if (!activeCell.Contains(p))
                {
                    activeCell.Add(p);
                }
            }
        }

        foreach (var p in activeCell)
        {
            var color = groundTilemap.GetColor(p);
            if (color.a < 0.1f)
            {
                //激活动画
                TilemapUtilties.SetTileOffset(groundTilemap, p, Vector3.up * -0.3f);
                TileTweener.Instance.MoveTo(groundTilemap, p, Vector3.zero, 0.2f, OnTweenFin);
            }
            /*
            var tileCol = nearZone.Contains(p) ? Color.white : Color.gray;
            var count = nearZone.Contains(p) ? 1 :  - 1;
            */
            Color tileCol = Color.gray;
            int count = -1;
            foreach (var a in nearZoneList)
            {
                if (a.Value.Contains(p))
                {
                    tileCol = Color.white;
                }
                if (a.Value.Contains(p))
                {
                    count = 1;
                }
            }

            //更新地块颜色
            TileTweener.Instance.Color(groundTilemap, p, tileCol, 0.2f, OnTweenFin);
            //更新小件
            if (miscBodyCache == null || miscBodyCache.Count < 1) continue;
            List<GameObject> miscList = null;
            if (!miscBodyCache.TryGetValue(p, out miscList))
            {
                continue;
            }
            if (miscList != null && miscList.Count < 1) continue;
            foreach (var item in miscList)
            {
                if (!item.activeSelf)
                {
                    //active anim
                    item.SetActive(true);
                    var endScale = item.transform.localScale;
                    item.transform.localScale = Vector3.zero;
                    item.transform.DOScale(endScale, 0.2f).SetEase(Ease.OutBounce).SetDelay(0.2f);
                    
             /*       var sps = item.GetComponentsInChildren<SpriteRenderer>();
                    if (sps != null && sps.Length > 0)
                    {
                        foreach (var sp in sps)
                        {
                            sp.color = tileCol;
                        }
                    }*/
                } else
                {                  
                /*    var sps = item.GetComponentsInChildren<SpriteRenderer>();
                    if (sps != null && sps.Length > 0)
                    {
                        foreach (var sp in sps)
                        {
                            sp.DOColor(tileCol, 0.2f);
                        }
                    }*/
                }
                //小件颜色引用计数
                MiscData tempData;
                if (!miscDataDic.TryGetValue(item, out tempData))
                {
                    continue;
                }
                tempData.count = count == 1 ? tempData.maxCount : tempData.count + count;               
                miscDataDic[item] = tempData;
            }
        }

        //更新小件颜色    
        Dictionary<GameObject, MiscData>.Enumerator enumerator = miscDataDic.GetEnumerator();
        for (int i = 0; i < miscDataDic.Count; i++)
        {
            enumerator.MoveNext();
            var key = enumerator.Current.Key;
            var color = enumerator.Current.Value.count > 0 ? Color.white : Color.gray;
            var sps = enumerator.Current.Value.go.GetComponentsInChildren<SpriteRenderer>();
            if (sps != null && sps.Length > 0)
            {
                foreach (var sp in sps)
                {
                    sp.DOColor(color, 0.2f);
                }
            }
        }

        //小件虚化，减小alpha
        List<GameObject> miscBodyList = null;
        foreach (var pos in allCurPos)
        {
            if (miscBodyCache.TryGetValue(pos.Value, out miscBodyList))
            {
                var tileCol = new Color(1, 1, 1, 0.7f);
                foreach (var item in miscBodyList)
                {
                    var sps = item.GetComponentsInChildren<SpriteRenderer>();
                    if (sps != null && sps.Length > 0)
                    {
                        foreach (var sp in sps)
                        {
                            sp.DOColor(tileCol, 0.2f);
                        }
                    }
                }
            }
        }
    }


    /// <summary>
    /// 地块踩下的动画
    /// </summary>
    /// <param name="pos"></param>
    public void BumpTile( Vector3Int pos )
    {
        TileTweener.Instance.Bump(groundTilemap, pos, Vector3.up * -0.1f, 0.3f, OnTweenFin);
    }

    public void BumpTile( Vector3 worldPos )
    {
        if (groundTilemap == null) return;
        var pos = groundTilemap.LocalToCell(groundTilemap.transform.InverseTransformPoint(worldPos));
        BumpTile(pos);
    }
}

