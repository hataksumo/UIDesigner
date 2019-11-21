//#define DEBUG_QUADTREE
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;
namespace MapSys
{
    /// <summary>
    /// 线的数据
    /// </summary>
    [LuaCallCSharp]
    public struct LineInfo
    {
        public long id;      
        public object customData;
        //line data
        public int segment;
        public Vector2 p0;
        public Vector2 p1;
        public Vector2 p2;
        public Vector2 p3;
    }
    [LuaCallCSharp]
    public class LineQuadTreeManager : MonoBehaviour
    {
#if DEBUG_QUADTREE
        public bool DebugMode = true;
#endif

        // swap-in distance of cells
        public float CellSwapInDist = 16f;
        // swap-out distance of cells 
        //  (would be larger than swap-in to prevent poping)
        public float CellSwapOutDist = 32f;

        // time interval to update the focus point,
        // so that a new swap would potentially triggered (in seconds)
        public float SwapTriggerInterval = 0.02f;
        // time interval to update the in/out swapping queues (in seconds)
        public float SwapProcessInterval = 0.02f;

        private Transform focusTrans;
        private QuadTree quadtree;
        private System.Action<LineInfo, bool> lineEvent;
        private Dictionary<long, LineObject> objDict;
        private bool running = false;

        //private int xcellCount;
        //private float xcellSize;
        //private int ycellCount;
        //private float ycellSize;
        //private float maxCellSize;


        private void OnLineVisiableEvent(LineObject obj, bool state)
        {
            if (lineEvent != null)
            {
                LineInfo info = new LineInfo();
                obj.ToInfo(ref info);
                lineEvent(info, state);
            }
        }

        public void SetCellSwapInOutDist(float CellSwapInDist,float CellSwapOutDist)
        {
            this.CellSwapInDist = CellSwapInDist;
            this.CellSwapOutDist = CellSwapOutDist;
            QtConfig.CellSwapInDist = CellSwapInDist;
            QtConfig.CellSwapOutDist = CellSwapOutDist;
            ForceUpdate();
        }

        /// <summary>
        /// 初始化方法
        /// </summary>
        ///   int xcellCount, float xcellSize,
        //int ycellCount, float ycellSize,
        /// <param name="cellCount">格子一排的数量</param>
        /// <param name="cellSize">格子大小</param>
        /// <param name="focusTrans">检查点</param>
        /// <param name="infos">线的数据</param>
        /// <param name="lineEvent">消息委托</param>
        public void Init(
            //int xcellCount, float xcellSize,
            // int ycellCount, float ycellSize,
            int cellCount, float cellSize,
            Transform focusTrans,
            LineInfo[] infos, float CellSwapInDist, float CellSwapOutDist,
            float SwapProcessInterval, float SwapTriggerInterval
            , System.Action<LineInfo, bool> lineEvent )
        {
            this.focusTrans = focusTrans;
            running = false;

            //this.xcellCount = xcellCount;
            //this.xcellSize = xcellSize;
            //this.ycellCount = ycellCount;
            //this.ycellSize = ycellSize;
            //this.maxCellSize = Mathf.Max(xcellSize, ycellSize);


            //Rect mapRect = new Rect(
            //       (-xcellCount / 2f) * xcellSize,
            //       (-ycellCount / 2f) * ycellSize,
            //       xcellCount * xcellSize, ycellCount * ycellSize
            //   );



            Rect mapRect = new Rect(
                    (-cellCount / 2f) * cellSize,
                    (-cellCount / 2f) * cellSize,
                    cellCount * cellSize, cellCount * cellSize
                );

            this.lineEvent = lineEvent;
            this.CellSwapInDist = CellSwapInDist;
            this.CellSwapOutDist = CellSwapOutDist;
            this.SwapProcessInterval = SwapProcessInterval;
            this.SwapTriggerInterval = SwapTriggerInterval;

            //QtConfig.CellSizeThreshold = cellSize *4;
            QtConfig.CellSizeThreshold = cellSize+0.01f;
            QtConfig.CellSwapInDist = CellSwapInDist;
            QtConfig.CellSwapOutDist = CellSwapOutDist;
            QtConfig.SwapProcessInterval = SwapProcessInterval;
            QtConfig.SwapTriggerInterval = SwapTriggerInterval;

            quadtree = new QuadTree(mapRect);
            if( objDict == null)
            {
                objDict = new Dictionary<long, LineObject>();
            } else
            {
                objDict.Clear();
            }
            for (int i = 0 ; i < infos.Length ; i++)
            {
                var l = infos[i];
                LineObject obj = new LineObject(l,this.OnLineVisiableEvent);                              
                if(!objDict.ContainsKey(l.id))
                {
                    objDict.Add(l.id, obj);
                } else
                {
                    Debug.LogError("Line Obj's ID is REPEATED!!! this Shoud Not Happend!! -- id:" + l.id);
                    continue;
                }
                quadtree.Receive(obj);
            }
        }

        public void ForceUpdate()
        {
            if (quadtree == null || focusTrans == null) return;
            if (!running) {
                return;
;           }
            quadtree.Update(focusTrans.position, true);
        }

        private void Update()
        {
            if (quadtree == null || focusTrans == null) {
                return;
            }
            if (!running)
            {
                return;
            }
            quadtree.Update(focusTrans.position,false);
#if DEBUG_QUADTREE
            if (DebugMode)
            {
                //QtConfig.CellSizeThreshold = cellSize + 0.01f;
                QtConfig.CellSwapInDist = CellSwapInDist;
                QtConfig.CellSwapOutDist = CellSwapOutDist;
                QtConfig.SwapProcessInterval = SwapProcessInterval;
                QtConfig.SwapTriggerInterval = SwapTriggerInterval;
            }
#endif
        }
#if DEBUG_QUADTREE

        private void OnDrawGizmos()
        {
            if (quadtree == null || focusTrans == null) return;
            if (DebugMode)
            {
                quadtree.DrawDebugLines();
            }
        } 
#endif


        private void OnDestroy()
        {
            if (quadtree != null)
            {
                quadtree.Destroy();
            }
            this.lineEvent = null;
            focusTrans = null;
        }
        public void SetRunning(bool running)
        {
            this.running = running;
        }
        public void SetLineData(int id, object data )
        {
            if (objDict == null) return;
            LineObject obj = null;
            if( !objDict.TryGetValue(id,out obj))
            {
                return;
            }
            obj.customData = data;
            if(obj.IsDisplay() && lineEvent != null)
            {
                var info = new LineInfo();
                obj.ToInfo(ref info);
                lineEvent(info, true);
            }
        }

        

    }

}