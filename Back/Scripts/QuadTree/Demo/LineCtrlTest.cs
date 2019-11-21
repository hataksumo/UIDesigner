using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//[ExecuteAlways]
public class LineCtrlTest : MonoBehaviour
{
    public Vector2[] ctrlPoint;
    public int segment = 4;
#if UNITY_EDITOR
    LineRenderer lr;
    // Start is called before the first frame update
    void Start()
    {
        lr = GetComponent<LineRenderer>();
        if (lr == null) enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (lr != null)
            UpdateBezierLine();
        
    }

    void UpdateBezierLine()
    {
        if (ctrlPoint == null || ctrlPoint.Length < 3 || segment < 1) return;

        if (lr.positionCount != segment)
        {
            lr.positionCount = segment;
        }
        lr.SetPosition(0, ctrlPoint[0]);
        float segmentLength = 1f / (segment - 1);
        for (int i = 1 ; i < segment ; i++)
        {
            float t = i * segmentLength;
            Vector3 point = CalculateTargetBezierPoint(
                t
                , ctrlPoint[0]
                , ctrlPoint[1]
                , ctrlPoint[2]
                , ctrlPoint[3]
                );

            lr.SetPosition(i, point);
        }

        // lr.SetPosition(segment-1 , ctrlPoint[3].position);


    }

    Vector3 CalculateTargetBezierPoint( float t, Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3 )
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

    private void OnDrawGizmosSelected()
    {
        if (ctrlPoint == null || ctrlPoint.Length < 3) return;
        for (int i = 0 ; i < 4 ; i++)
        {
            Gizmos.DrawSphere(ctrlPoint[i], 1f);
        }
    }
#endif
}
