using MapSys;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace MapSys
{
    public class LineObject : IQtUserData
    {
        public long id;      
        public object customData;
        public int segmentNum;
        public Vector2[] keyPoints;

        public int displayCount = 0;

        public System.Action<LineObject, bool> lineEvent;

        public LineObject( LineInfo info, System.Action<LineObject, bool> @event )
        {
            this.id = info.id;
            this.customData = info.customData;
            this.segmentNum = info.segment;
            keyPoints = new Vector2[]
            {
                info.p0,info.p1,info.p2,info.p3
            };
            this.lineEvent = @event;
        }

        public void Destroy()
        {
            keyPoints = null;
        }

        //public Vector2 GetCenter()
        //{
        //    return keyPoints[0];
        //}

        //public Vector2 GetExtends()
        //{
        //    return Vector2.one * 0.01f;
        //}

        public bool Intersects( Rect bound )
        {
            return LineUtil.BezierLineCrossRect(
                bound,
                keyPoints[0],
                keyPoints[1],
                keyPoints[2],
                keyPoints[3],
                segmentNum
                );
        }

        public long GetID()
        {
            return id;
        }

        public bool IsSwapInCompleted()
        {
            return true;
        }

        public bool IsSwapOutCompleted()
        {
            return true;
        }

        public void SwapIn()
        {
            displayCount++;
            if (lineEvent != null && displayCount == 1)
            {
                //send msg:Show line(id)
                lineEvent(this, true);
            }
        }

        public void SwapOut()
        {
            if (displayCount <= 0) return;
            displayCount--;
            if (displayCount <= 0 && lineEvent != null)
            {
                //sned msg:hide line(id)
                lineEvent(this, false);
                displayCount = 0;
            }
        }

        public void ToInfo(ref LineInfo ret)
        {            
            ret.id = this.id;            
            ret.customData = this.customData;
            ret.segment = this.segmentNum;
            if (this.keyPoints != null && this.keyPoints.Length > 3)
            {
                ret.p0 = this.keyPoints[0];
                ret.p1 = this.keyPoints[1];
                ret.p2 = this.keyPoints[2];
                ret.p3 = this.keyPoints[3];
            }           
        }

        public bool IsDisplay()
        {
            return displayCount > 0;
        }
    }
}