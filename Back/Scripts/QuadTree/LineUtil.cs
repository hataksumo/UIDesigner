using UnityEngine;
namespace MapSys
{
    public class LineUtil
    {
        static Vector2 CalculateTargetBezierPoint( float t, Vector2 p0, Vector2 p1, Vector2 p2, Vector2 p3 )
        {
            float u = 1 - t;
            float tt = t * t;
            float uu = u * u;
            p0 *= u * uu;
            p0 += 3 * uu * t * p1;
            p0 += 3 * tt * u * p2;
            p0 += tt * t * p3;
            return p0;
        }

        static Vector2 GetBezierLinePoint(
                 int segmentNum,
                 int index,
                 Vector2 p0, Vector2 p1, Vector2 p2, Vector2 p3
                )
        {
            if (index < 1) return p0;
            else if (index >= segmentNum) return p3;

            float segmentLength = 1f / (segmentNum - 1);

            float t = index * segmentLength;
            return CalculateTargetBezierPoint(t, p0, p1, p2, p3);
        }


        static bool LineHasCrossPoint_X( Vector2 p0, Vector3 p1, float x )
        {
            if (
                (p0.x < x && p1.x < x)
                || (p0.x > x && p1.x > x)
                )
                return false;
            var deltaX = Mathf.Abs(p0.x - p1.x);
            return deltaX > 0f;
        }

        static bool LineHasCrossPoint_Y( Vector2 p0, Vector3 p1, float y )
        {
            if (
                (p0.y < y && p1.y < y)
                || (p0.y > y && p1.y > y)
                )
                return false;
            var deltaY = Mathf.Abs(p0.y - p1.y);
            return deltaY > 0f;
        }

        static Vector2 LinePoint_X( Vector2 p0, Vector3 p1, float x )
        {
            Vector2 ret;
            ret.x = x;
            ret.y = (x - p0.x) * (p1.y - p0.y) / (p1.x - p0.x) + p0.y;
            return ret;
        }

        static Vector2 LinePoint_Y( Vector2 p0, Vector3 p1, float y )
        {
            Vector2 ret;
            ret.x = (y - p0.y) * (p1.x - p0.x) / (p1.y - p0.y) + p0.x;
            ret.y = y;
            return ret;
        }

        public static bool LineSegmentCrossRect( Rect r, Vector2 p0, Vector2 p1 )
        {
            bool isp0In = r.Contains(p0);
            bool isp1In = r.Contains(p1);

            if (!((!isp0In) && (!isp1In))) return true;

            float xMin = r.xMin;
            float xMax = r.xMax;
            float yMin = r.yMin;
            float yMax = r.yMax;

            if (LineHasCrossPoint_X(p0, p1, xMin))
            {
                var cPoint = LinePoint_X(p0, p1, xMin);
                if (cPoint.y >= yMin && cPoint.y <= yMax)
                {
                    return true;
                }
            }
            if (LineHasCrossPoint_X(p0, p1, xMax))
            {
                var cPoint = LinePoint_X(p0, p1, xMax);
                if (cPoint.y >= yMin && cPoint.y <= yMax)
                {
                    return true;
                }
            }
            if (LineHasCrossPoint_Y(p0, p1, yMin))
            {
                var cPoint = LinePoint_Y(p0, p1, yMin);
                if (cPoint.x >= xMin && cPoint.x <= xMax)
                {
                    return true;
                }
            }
            if (LineHasCrossPoint_Y(p0, p1, yMax))
            {
                var cPoint = LinePoint_Y(p0, p1, yMax);
                if (cPoint.x >= xMin && cPoint.x <= xMax)
                {
                    return true;
                }
            }
            return false;
        }

        public static bool BezierLineCrossRect( Rect r, Vector2 p0, Vector2 p1, Vector2 p2, Vector2 p3, int segment )
        {
            if (segment < 2) return false;
            Vector2 lastPoint = p0;
            if (r.Contains(lastPoint)) return true;
            for (int i = 1 ; i < segment ; i++)
            {
                var point = GetBezierLinePoint(segment, i, p0, p1, p2, p3);
                if (LineSegmentCrossRect(r, lastPoint, point))
                {
                    return true;
                } else
                {
                    lastPoint = point;
                }
            }
            return false;
        }


    }

}