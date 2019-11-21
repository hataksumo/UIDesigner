using LJTilemaps;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;

/// <summary>
/// 地图工具类
/// </summary>
public class MapUtil
{
  
    /// <summary>
    /// 地图数据坐标偏移索引表
    /// </summary>
    public readonly static Vector2Int[] GRID_POSITION_OFFSETS;

    static MapUtil(){
        GRID_POSITION_OFFSETS = new Vector2Int[8];
        int i = 0;
        for (int x = -1; x <= 1; x++)
        {
            for (int y = -1; y <= 1; y++)
            {
                if (x == 0 && y == 0)
                {
                    continue;
                }
                GRID_POSITION_OFFSETS[i++] = new Vector2Int(x, y);
            }
        }
    }

    /// <summary>
    /// 获取地图边界
    /// </summary>
    /// <param name="tilemap"></param>
    /// <returns></returns>
    public static BoundsInt GetITilemapBoundsInt(ITilemap tilemap)
    {
        BoundsInt boundsInt = new BoundsInt(tilemap.origin, tilemap.size);
        return boundsInt;
    }

    public static Vector3 CalculateTargetBezierPoint(float t, Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3)
    {
        float u = 1 - t;
        float tt = t * t;
        float uu = u * u;

        //Vector3 p0 = Vector3.zero;
        p0 += 3 * uu * t * p1;
        p0 += 3 * tt * u * p2;
        p0 += tt * t * p3;

        return p0;
    }

    public static Vector3[] GetMapWorldCorners(Vector3Int cellPos, GridLayout gridLayout)
    {
        Vector3 mapSize = gridLayout.cellSize;
        Vector3 bottom = gridLayout.CellToWorld(cellPos);
        Vector3[] bounds = new Vector3[5];
        bounds[0] = new Vector3(bottom.x, bottom.y + mapSize.y, bottom.z);
        bounds[1] = bottom;
        bounds[2] = new Vector3(bottom.x - mapSize.x * 0.5f, bottom.y + mapSize.y * 0.5f, bottom.z);
        bounds[3] = new Vector3(bottom.x + mapSize.x * 0.5f, bottom.y + mapSize.y * 0.5f, bottom.z);
        bounds[4] = new Vector3(bottom.x, bottom.y + mapSize.y * 0.5f, bottom.z);
        return bounds;
    }


    public static Vector3 GetMapWorldCenter(Vector2 mapSize, Vector3Int cellPos,GridLayout gridLayout) {
        Vector3 vector3 = gridLayout.CellToWorld(cellPos);
        vector3.y = vector3.y + mapSize.y * 0.5f;
        return vector3;
    }

    public static Vector3 GetMapWorldLeft(Vector2 mapSize, Vector3Int cellPos, GridLayout gridLayout)
    {
        Vector3 vector3 = gridLayout.CellToWorld(cellPos);
        vector3.y = vector3.y + mapSize.y * 0.5f;
        vector3.x = vector3.x - mapSize.x * 0.5f;
        return vector3;
    }

    public static Vector3 GetMapWorldRight(Vector2 mapSize, Vector3Int cellPos, GridLayout gridLayout)
    {
        Vector3 vector3 = gridLayout.CellToWorld(cellPos);
        vector3.y = vector3.y + mapSize.y * 0.5f;
        vector3.x = vector3.x + mapSize.x * 0.5f;
        return vector3;
    }

    public static Vector3 GetMapWorldTop(Vector2 mapSize, Vector3Int cellPos, GridLayout gridLayout)
    {
        Vector3 vector3 = gridLayout.CellToWorld(cellPos);
        vector3.y = vector3.y + mapSize.y;
        return vector3;
    }

    public static SerVector3Int ConvertVec3Int2SerVec3Int(Vector3Int vector3Int)
    {
        SerVector3Int serVector3Int = new SerVector3Int(vector3Int.x, vector3Int.y, vector3Int.z);
        return serVector3Int;
    }

    public static Vector3Int ConvertSerVec3Int2Vec3Int(SerVector3Int serVector3Int)
    {
        Vector3Int vector3Int = new Vector3Int(serVector3Int.X, serVector3Int.Y, serVector3Int.Z);
        return vector3Int;
    }

    public static SerVector2Int ConvertVec2Int2SerVec2Int(Vector2Int vector2Int)
    {
        SerVector2Int serVector2Int = new SerVector2Int(vector2Int.x, vector2Int.y);
        return serVector2Int;
    }

    public static Vector2Int ConvertSerVec2Int2Vec2Int(SerVector2Int serVector2Int)
    {
        Vector2Int vector2Int = new Vector2Int(serVector2Int.X, serVector2Int.Y);
        return vector2Int;
    }
    /// <summary>
    /// 生成路径id的规则
    /// </summary>
    /// <returns></returns>
    public static long GenerateRoadIdByAB(int a, int b)
    {
        return a * LJMapConst.ROAD_ID_RULE_BIT + b;
    }

    /// <summary>
    /// 生成id的规则
    /// </summary>
    /// <param name="x"></param>
    /// <param name="y"></param>
    /// <returns></returns>
    public static int GenerateCellIdByXY(int x, int y)
    {
        return x * LJMapConst.MAP_POS_OFFSET + y;
        //return x << 16 | y;
    }

    public static int GetXByCellId(int buildingId)
    {
        return buildingId / LJMapConst.MAP_POS_OFFSET;
    }

    public static int GetYByCellId(int buildingId)
    {
        return buildingId % LJMapConst.MAP_POS_OFFSET;
    }

    /// <summary>
    /// 检测是否还有未搜索的格子
    /// </summary>
    /// <param name="searchCellDict"></param>
    /// <returns></returns>
    public static bool CheckSearchCellDictHaveNoneSearch(Dictionary<SerVector2Int, int> searchCellDict)
    {
        if (searchCellDict == null)
        {
            return false;
        }

        Dictionary<SerVector2Int, int>.ValueCollection vs = searchCellDict.Values;
        foreach (int searchState in vs)
        {
            switch (searchState)
            {
                case LJMapConst.MAP_SEARCH_STATE.NONE:
                    return true;
                default:
                    break;
            }
        }
        return false;
    }

    /// <summary>
    /// 给定一个坐标和格子数据表，搜索相邻格子
    /// </summary>
    /// <param name="ljGridDict"></param>
    /// <param name="serVector3Int"></param>
    /// <returns></returns>
    public static Dictionary<SerVector2Int, int> GetRangePositionsByInSidePosition(LJMapObjDict mapObjDict, SerVector2Int serVector2Int)
    {
        if (mapObjDict == null)
        {
            return null;
        }
        LJMapObject tempGridObject = null;
        mapObjDict.TryGetValue(serVector2Int, out tempGridObject);
        if (tempGridObject == null)
        {
            return null;
        }

        Dictionary<SerVector2Int, int> searchGroup = new Dictionary<SerVector2Int, int>();//搜索出来的结果
        searchGroup.Add(serVector2Int, LJMapConst.MAP_SEARCH_STATE.NONE);
        SearchRangePositions(mapObjDict, searchGroup);
        return searchGroup;
    }


    /// <summary>
    /// 8方向检索所有相邻格子数据
    /// </summary>
    /// <param name="ljGridDict"></param>
    /// <param name="searchCellDict"></param>
    private static void SearchRangePositions(LJMapObjDict ljGridDict, Dictionary<SerVector2Int, int> searchCellDict)
    {
        while (MapUtil.CheckSearchCellDictHaveNoneSearch(searchCellDict))
        {
            List<KeyValuePair<SerVector2Int, int>> tempList = new
                List<KeyValuePair<SerVector2Int, int>>();//仅用于搜索一遍没搜索过的格子的列表
            foreach (KeyValuePair<SerVector2Int, int> kvp in searchCellDict)// 将所有未搜索过的格子加入待搜索列表
            {
                if (kvp.Value == LJMapConst.MAP_SEARCH_STATE.OK)
                {
                    continue;
                }
                tempList.Add(kvp);
            }

            for (int i = 0, imax = tempList.Count; i < imax; i++)
            {
                SerVector2Int serVector2Int = tempList[i].Key;
                for (int j = 0, jmax = MapUtil.GRID_POSITION_OFFSETS.Length; j < jmax; j++)
                {
                    SerVector2Int offsetSerVector2Int = new SerVector2Int(serVector2Int.X + MapUtil.GRID_POSITION_OFFSETS[j].x,
                        serVector2Int.Y + MapUtil.GRID_POSITION_OFFSETS[j].y
                        );


                    if (!ljGridDict.ContainsKey(offsetSerVector2Int))
                    { // 没有这个格子 不做处理
                        continue;
                    }

                    //有格子数据 不做处理
                    if (searchCellDict.ContainsKey(offsetSerVector2Int))
                    {
                        continue;
                    }
                    searchCellDict.Add(offsetSerVector2Int, LJMapConst.MAP_SEARCH_STATE.NONE);
                }

                searchCellDict[serVector2Int] = LJMapConst.MAP_SEARCH_STATE.OK;
            }
        }
        //搜索完毕
    }

    /// <summary>
    /// 计算BoundsInt 包含 另一个 BoundsInt
    /// </summary>
    /// <param name="a"></param>
    /// <param name="b"></param>
    public static void CalcBoundingBoxWithBoundsInt(ref BoundsInt a, BoundsInt b)
    {
        Vector3Int aMin = a.min;
        Vector3Int bMin = b.min;
        Vector3Int minResult = aMin;

        if (aMin.x > bMin.x) {
            minResult.x = bMin.x;
        }
        if (aMin.y > bMin.y)
        {
            minResult.y = bMin.y;
        }
        if (aMin.z > bMin.z)
        {
            minResult.z = bMin.z;
        }

        Vector3Int aMax = a.max;
        Vector3Int bMax = b.max;
        Vector3Int maxResult = aMax;

        if (aMax.x < bMax.x)
        {
            maxResult.x = bMax.x;
        }

        if (aMax.y < bMax.y)
        {
            maxResult.y = bMax.y;
        }


        if (aMax.z < bMax.z)
        {
            maxResult.z = bMax.z;
        }

        a.SetMinMax(minResult,maxResult);
    }


    public static Bounds GetBounds(Transform target)
    {
        MeshRenderer[] mrs = target.GetComponentsInChildren<MeshRenderer>();
        Vector3 center = target.position;
        Bounds bounds = new Bounds(center, Vector3.zero);
        if (mrs.Length == 0)
        {
            return bounds;
        }

        foreach (MeshRenderer mr in mrs)
        {
            Bounds tempBounds = new Bounds(mr.transform.position,mr.transform.lossyScale);
            bounds.Encapsulate(tempBounds);
        }
        return bounds;
    }
}
