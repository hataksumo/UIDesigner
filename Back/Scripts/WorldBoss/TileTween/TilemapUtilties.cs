using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;

public class TilemapUtilties
{
    /// <summary>
    /// 计算格子的ID
    /// 63~32位 为map的InstanceID
    /// 31~29位 为坐标的符号 正数为0,负数为1,三位分别对应xyz
    /// 28~17位 为坐标x的绝对值
    /// 16~5位 为坐标y的绝对值
    /// 4~0位 为坐标z的绝对值
    /// 所以id计算只支持{(x,y,z)|x:(-4095,4095),y:(-4095,4095) z:(-63,63)}范围内的坐标
    /// </summary>
    /// <param name="map"></param>
    /// <param name="pos"></param>
    /// <returns></returns>
    public static ulong CalcId( Tilemap map, Vector3Int pos )
    {
        //var instId = string.Format("{0}{1}", map.GetInstanceID(),pos);
        //return instId.GetHashCode();           

        ulong mapId = ((ulong)map.GetInstanceID()) << 32;

        uint xValue = (uint)pos.x;
        uint yValue = (uint)pos.y;
        uint zValue = (uint)pos.z;

        ulong flag = (xValue >> 31 << 2) + (yValue >> 31 << 1) + (zValue >> 31) << 29;
        ulong sumValue = ((ulong)(Math.Abs(pos.x) & 0xFFF) << 17)
            + ((ulong)(Mathf.Abs(pos.y) & 0xFFF) << 5)
            + ((ulong)(Mathf.Abs(pos.z) & 0x1F))
            ;
        return mapId + flag + sumValue;
    }

    public static ulong CalcId( Vector3Int pos )
    {       
        uint xValue = (uint)pos.x;
        uint yValue = (uint)pos.y;
        uint zValue = (uint)pos.z;

        ulong flag = (xValue >> 31 << 2) + (yValue >> 31 << 1) + (zValue >> 31) << 29;
        ulong sumValue = ((ulong)(Math.Abs(pos.x) & 0xFFF) << 17)
            + ((ulong)(Mathf.Abs(pos.y) & 0xFFF) << 5)
            + ((ulong)(Mathf.Abs(pos.z) & 0x1F))
            ;
        return flag + sumValue;
    }


    public static Vector3Int[] FindCellsInRange( Tilemap map, Vector3Int center, float range )
    {
        
        return null;
    }

    public static Vector3Int[] FindCellsInRect( Tilemap map, Vector3Int center, Vector3Int size )
    {
        
        return null;
    }

    public static void SetTileColor( Tilemap map, Vector3Int pos, Color col )
    {
        if (map == null || !map.HasTile(pos)) return;
        UnlockFlag(map, pos, TileFlags.LockColor);
        map.SetColor(pos, col);
    }

    public static void SetTileOffset( Tilemap map, Vector3Int pos, Vector3 offset )
    {
        if (map == null || !map.HasTile(pos)) return;
        UnlockFlag(map, pos, TileFlags.LockTransform);
        var trans = map.GetTransformMatrix(pos);
        trans[0, 3] = offset.x;
        trans[1, 3] = offset.y;
        trans[2, 3] = offset.z;
        map.SetTransformMatrix(pos, trans);
    }


    public static void UnlockFlag( Tilemap map, Vector3Int pos, TileFlags flag )
    {
        //var f = (int)map.GetTileFlags(pos);
        //if ((f & (int)flag) != 0)
        //{
        //    f = f & (~(int)flag);
        //    map.SetTileFlags(pos, (TileFlags)f);
        //}
        map.RemoveTileFlags(pos, flag);
    }
       
}


public struct IntField
{
    // Token: 0x060010C0 RID: 4288 RVA: 0x000186E2 File Offset: 0x000168E2
    public IntField( int xMin, int yMin, int width, int height )
    {
        this.m_XMin = xMin;
        this.m_YMin = yMin;
        this.m_Width = width;
        this.m_Height = height;
    }

    // Token: 0x060010C1 RID: 4289 RVA: 0x00018702 File Offset: 0x00016902
    public IntField( Vector3Int position, Vector3Int size )
    {
        this.m_XMin = position.x;
        this.m_YMin = position.y;
        this.m_Width = size.x;
        this.m_Height = size.y;
    }

    public IntField( Vector3Int center, int width,int height )
    {
        this.m_Width = width;
        this.m_Height = height;
        this.m_XMin = center.x - this.m_Width / 2;
        this.m_YMin = center.y - this.m_Height / 2;
    }

    public void SetField( Vector3Int center, int width, int height )
    {
        this.m_Width = width;
        this.m_Height = height;
        this.m_XMin = center.x - this.m_Width / 2;
        this.m_YMin = center.y - this.m_Height / 2;
    }

    /// <summary>
    ///   <para>Left coordinate of the rectangle.</para>
    /// </summary>
    // Token: 0x17000384 RID: 900
    // (get) Token: 0x060010C2 RID: 4290 RVA: 0x0001873C File Offset: 0x0001693C
    // (set) Token: 0x060010C3 RID: 4291 RVA: 0x00018757 File Offset: 0x00016957
    public int x
    {
        get
        {
            return this.m_XMin;
        }
        set
        {
            this.m_XMin = value;
        }
    }

    /// <summary>
    ///   <para>Top coordinate of the rectangle.</para>
    /// </summary>
    // Token: 0x17000385 RID: 901
    // (get) Token: 0x060010C4 RID: 4292 RVA: 0x00018764 File Offset: 0x00016964
    // (set) Token: 0x060010C5 RID: 4293 RVA: 0x0001877F File Offset: 0x0001697F
    public int y
    {
        get
        {
            return this.m_YMin;
        }
        set
        {
            this.m_YMin = value;
        }
    }

    /// <summary>
    ///   <para>Center coordinate of the rectangle.</para>
    /// </summary>
    // Token: 0x17000386 RID: 902
    // (get) Token: 0x060010C6 RID: 4294 RVA: 0x0001878C File Offset: 0x0001698C
    public Vector2 center
    {
        get
        {
            return new Vector2((float)this.x + (float)this.m_Width / 2f, (float)this.y + (float)this.m_Height / 2f);
        }
    }

    /// <summary>
    ///   <para>Lower left corner of the rectangle.</para>
    /// </summary>
    // Token: 0x17000387 RID: 903
    // (get) Token: 0x060010C7 RID: 4295 RVA: 0x000187D0 File Offset: 0x000169D0
    // (set) Token: 0x060010C8 RID: 4296 RVA: 0x000187F6 File Offset: 0x000169F6
    public Vector3Int min
    {
        get
        {
            return new Vector3Int(this.xMin, this.yMin,0);
        }
        set
        {
            this.xMin = value.x;
            this.yMin = value.y;
        }
    }

    /// <summary>
    ///   <para>Upper right corner of the rectangle.</para>
    /// </summary>
    // Token: 0x17000388 RID: 904
    // (get) Token: 0x060010C9 RID: 4297 RVA: 0x00018814 File Offset: 0x00016A14
    // (set) Token: 0x060010CA RID: 4298 RVA: 0x0001883A File Offset: 0x00016A3A
    public Vector3Int max
    {
        get
        {
            return new Vector3Int(this.xMax, this.yMax,0);
        }
        set
        {
            this.xMax = value.x;
            this.yMax = value.y;
        }
    }

    /// <summary>
    ///   <para>Width of the rectangle.</para>
    /// </summary>
    // Token: 0x17000389 RID: 905
    // (get) Token: 0x060010CB RID: 4299 RVA: 0x00018858 File Offset: 0x00016A58
    // (set) Token: 0x060010CC RID: 4300 RVA: 0x00018873 File Offset: 0x00016A73
    public int width
    {
        get
        {
            return this.m_Width;
        }
        set
        {
            this.m_Width = value;
        }
    }

    /// <summary>
    ///   <para>Height of the rectangle.</para>
    /// </summary>
    // Token: 0x1700038A RID: 906
    // (get) Token: 0x060010CD RID: 4301 RVA: 0x00018880 File Offset: 0x00016A80
    // (set) Token: 0x060010CE RID: 4302 RVA: 0x0001889B File Offset: 0x00016A9B
    public int height
    {
        get
        {
            return this.m_Height;
        }
        set
        {
            this.m_Height = value;
        }
    }

    /// <summary>
    ///   <para>Returns the minimum X value of the RectInt.</para>
    /// </summary>
    // Token: 0x1700038B RID: 907
    // (get) Token: 0x060010CF RID: 4303 RVA: 0x000188A8 File Offset: 0x00016AA8
    // (set) Token: 0x060010D0 RID: 4304 RVA: 0x000188D8 File Offset: 0x00016AD8
    public int xMin
    {
        get
        {
            return Math.Min(this.m_XMin, this.m_XMin + this.m_Width);
        }
        set
        {
            int xMax = this.xMax;
            this.m_XMin = value;
            this.m_Width = xMax - this.m_XMin;
        }
    }

    /// <summary>
    ///   <para>Returns the minimum Y value of the RectInt.</para>
    /// </summary>
    // Token: 0x1700038C RID: 908
    // (get) Token: 0x060010D1 RID: 4305 RVA: 0x00018904 File Offset: 0x00016B04
    // (set) Token: 0x060010D2 RID: 4306 RVA: 0x00018934 File Offset: 0x00016B34
    public int yMin
    {
        get
        {
            return Math.Min(this.m_YMin, this.m_YMin + this.m_Height);
        }
        set
        {
            int yMax = this.yMax;
            this.m_YMin = value;
            this.m_Height = yMax - this.m_YMin;
        }
    }

    /// <summary>
    ///   <para>Returns the maximum X value of the RectInt.</para>
    /// </summary>
    // Token: 0x1700038D RID: 909
    // (get) Token: 0x060010D3 RID: 4307 RVA: 0x00018960 File Offset: 0x00016B60
    // (set) Token: 0x060010D4 RID: 4308 RVA: 0x0001898D File Offset: 0x00016B8D
    public int xMax
    {
        get
        {
            return Math.Max(this.m_XMin, this.m_XMin + this.m_Width);
        }
        set
        {
            this.m_Width = value - this.m_XMin;
        }
    }

    /// <summary>
    ///   <para>Returns the maximum Y value of the RectInt.</para>
    /// </summary>
    // Token: 0x1700038E RID: 910
    // (get) Token: 0x060010D5 RID: 4309 RVA: 0x000189A0 File Offset: 0x00016BA0
    // (set) Token: 0x060010D6 RID: 4310 RVA: 0x000189CD File Offset: 0x00016BCD
    public int yMax
    {
        get
        {
            return Math.Max(this.m_YMin, this.m_YMin + this.m_Height);
        }
        set
        {
            this.m_Height = value - this.m_YMin;
        }
    }

    /// <summary>
    ///   <para>Returns the position (x, y) of the RectInt.</para>
    /// </summary>
    // Token: 0x1700038F RID: 911
    // (get) Token: 0x060010D7 RID: 4311 RVA: 0x000189E0 File Offset: 0x00016BE0
    // (set) Token: 0x060010D8 RID: 4312 RVA: 0x00018A06 File Offset: 0x00016C06
    public Vector3Int position
    {
        get
        {
            return new Vector3Int(this.m_XMin, this.m_YMin,0);
        }
        set
        {
            this.m_XMin = value.x;
            this.m_YMin = value.y;
        }
    }

    /// <summary>
    ///   <para>Returns the width and height of the RectInt.</para>
    /// </summary>
    // Token: 0x17000390 RID: 912
    // (get) Token: 0x060010D9 RID: 4313 RVA: 0x00018A24 File Offset: 0x00016C24
    // (set) Token: 0x060010DA RID: 4314 RVA: 0x00018A4A File Offset: 0x00016C4A
    public Vector3Int size
    {
        get
        {
            return new Vector3Int(this.m_Width, this.m_Height,0);
        }
        set
        {
            this.m_Width = value.x;
            this.m_Height = value.y;
        }
    }

    /// <summary>
    ///   <para>Sets the bounds to the min and max value of the rect.</para>
    /// </summary>
    /// <param name="minPosition"></param>
    /// <param name="maxPosition"></param>
    // Token: 0x060010DB RID: 4315 RVA: 0x00018A67 File Offset: 0x00016C67
    public void SetMinMax( Vector3Int minPosition, Vector3Int maxPosition )
    {
        this.min = minPosition;
        this.max = maxPosition;
    }

    /// <summary>
    ///   <para>Clamps the position and size of the RectInt to the given bounds.</para>
    /// </summary>
    /// <param name="bounds">Bounds to clamp the RectInt.</param>
    // Token: 0x060010DC RID: 4316 RVA: 0x00018A78 File Offset: 0x00016C78
    public void ClampToBounds( RectInt bounds )
    {
        this.position = new Vector3Int(
            Math.Max(Math.Min(bounds.xMax, this.position.x), bounds.xMin)
            , Math.Max(Math.Min(bounds.yMax, this.position.y), bounds.yMin)
            ,0
            );
        this.size = new Vector3Int(
            Math.Min(bounds.xMax - this.position.x, this.size.x)
            , Math.Min(bounds.yMax - this.position.y, this.size.y)
            ,0            
            );
    }

    /// <summary>
    ///   <para>Returns true if the given position is within the RectInt.</para>
    /// </summary>
    /// <param name="position">Position to check.</param>
    /// <param name="inclusive">Whether the max limits are included in the check.</param>
    /// <returns>
    ///   <para>Whether the position is within the RectInt.</para>
    /// </returns>
    // Token: 0x060010DD RID: 4317 RVA: 0x00018B3C File Offset: 0x00016D3C
    public bool Contains( Vector3Int position )
    {
        return position.x >= this.xMin && position.y >= this.yMin && position.x < this.xMax && position.y < this.yMax;
    }

    /// <summary>
    ///   <para>Returns the x, y, width and height of the RectInt.</para>
    /// </summary>
    // Token: 0x060010DE RID: 4318 RVA: 0x00018B9C File Offset: 0x00016D9C
    public override string ToString()
    {
        return String.Format("(x:{0}, y:{1}, width:{2}, height:{3})", new object[]
        {
                this.x,
                this.y,
                this.width,
                this.height
        });
    }

    /// <summary>
    ///   <para>Returns true if the given RectInt is equal to this RectInt.</para>
    /// </summary>
    /// <param name="other"></param>
    // Token: 0x060010DF RID: 4319 RVA: 0x00018BFC File Offset: 0x00016DFC
    public bool Equals( IntField other )
    {
        return this.m_XMin == other.m_XMin && this.m_YMin == other.m_YMin && this.m_Width == other.m_Width && this.m_Height == other.m_Height;
    }

    /// <summary>
    ///   <para>A RectInt.PositionCollection that contains all positions within the RectInt.</para>
    /// </summary>
    // Token: 0x17000391 RID: 913
    // (get) Token: 0x060010E0 RID: 4320 RVA: 0x00018C5C File Offset: 0x00016E5C
    public IntField.PositionEnumerator allPositionsWithin
    {
        get
        {
            return new IntField.PositionEnumerator(this.min, this.max);
        }
    }

    // Token: 0x04000764 RID: 1892
    private int m_XMin;

    // Token: 0x04000765 RID: 1893
    private int m_YMin;

    // Token: 0x04000766 RID: 1894
    private int m_Width;

    // Token: 0x04000767 RID: 1895
    private int m_Height;

    /// <summary>
    ///   <para>An iterator that allows you to iterate over all positions within the RectInt.</para>
    /// </summary>
    // Token: 0x0200020E RID: 526
    public struct PositionEnumerator : IEnumerator<Vector3Int>, IEnumerator, IDisposable
    {
        // Token: 0x060010E1 RID: 4321 RVA: 0x00018C84 File Offset: 0x00016E84
        public PositionEnumerator( Vector3Int min, Vector3Int max )
        {
            this._current = min;
            this._min = min;
            this._max = max;
            this.Reset();
        }

        /// <summary>
        ///   <para>Returns this as an iterator that allows you to iterate over all positions within the RectInt.</para>
        /// </summary>
        /// <returns>
        ///   <para>This RectInt.PositionEnumerator.</para>
        /// </returns>
        // Token: 0x060010E2 RID: 4322 RVA: 0x00018CB0 File Offset: 0x00016EB0
        public IntField.PositionEnumerator GetEnumerator()
        {
            return this;
        }

        /// <summary>
        ///   <para>Moves the enumerator to the next position.</para>
        /// </summary>
        /// <returns>
        ///   <para>Whether the enumerator has successfully moved to the next position.</para>
        /// </returns>
        // Token: 0x060010E3 RID: 4323 RVA: 0x00018CCC File Offset: 0x00016ECC
        public bool MoveNext()
        {
            bool result;
            if (this._current.y >= this._max.y)
            {
                result = false;
            } else
            {
                this._current.x = this._current.x + 1;
                if (this._current.x >= this._max.x)
                {
                    this._current.x = this._min.x;
                    this._current.y = this._current.y + 1;
                    if (this._current.y >= this._max.y)
                    {
                        return false;
                    }
                }
                result = true;
            }
            return result;
        }

        /// <summary>
        ///   <para>Resets this enumerator to its starting state.</para>
        /// </summary>
        // Token: 0x060010E4 RID: 4324 RVA: 0x00018D8D File Offset: 0x00016F8D
        public void Reset()
        {
            this._current = this._min;
            this._current.x = this._current.x - 1;
        }

        /// <summary>
        ///   <para>Current position of the enumerator.</para>
        /// </summary>
        // Token: 0x17000393 RID: 915
        // (get) Token: 0x060010E5 RID: 4325 RVA: 0x00018DB0 File Offset: 0x00016FB0
        public Vector3Int Current
        {
            get
            {
                return this._current;
            }
        }

        // Token: 0x17000392 RID: 914
        // (get) Token: 0x060010E6 RID: 4326 RVA: 0x00018DCC File Offset: 0x00016FCC
        object IEnumerator.Current
        {
            get
            {
                return this.Current;
            }
        }

        // Token: 0x060010E7 RID: 4327 RVA: 0x000020EA File Offset: 0x000002EA
        void IDisposable.Dispose()
        {
        }

        // Token: 0x04000768 RID: 1896
        private readonly Vector3Int _min;

        // Token: 0x04000769 RID: 1897
        private readonly Vector3Int _max;

        // Token: 0x0400076A RID: 1898
        private Vector3Int _current;
    }
}


