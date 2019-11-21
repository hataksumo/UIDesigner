using System.Collections;
using System.Collections.Generic;
using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
[CustomEditor(typeof(LineCtrl))]
public class LineCtrlInspector : Editor
{
    private Vector3 endPos;
    private float startAngle;
    private float endAngle;

    private void OnEnable()
    {
        var lr = (target as LineCtrl).gameObject.GetComponent<LineRenderer>();
        var pend = lr.GetPosition(lr.positionCount - 1);
        if (lr.positionCount >= 2)
        {
            var p0 = lr.GetPosition(0);
            var p1 = lr.GetPosition(1);
            var p2 = lr.GetPosition(lr.positionCount - 2);

            Vector3 endDir = p0 - pend;
            Vector3 p0Dir = p0 - p1;
            Vector3 p2Dir = pend - p2;

            startAngle = Vector3.Angle(endDir, p0Dir) * Mathf.Sign(Vector3.Cross(endDir, p0Dir).z);
            endAngle = Vector3.Angle(-endDir, p2Dir) * Mathf.Sign(Vector3.Cross(endDir, p2Dir).z);

        }
        endPos = lr.transform.TransformPoint(pend);
    }

    public override void OnInspectorGUI()
    {
        EditorGUI.BeginChangeCheck();
        base.OnInspectorGUI();
        EditorGUILayout.Space();
        EditorGUILayout.BeginVertical("box");
        EditorGUILayout.LabelField("预览工具");
        endPos = EditorGUILayout.Vector3Field("终点位置", endPos);
        startAngle = EditorGUILayout.FloatField("起点角度", startAngle);
        endAngle = EditorGUILayout.FloatField("终点角度", endAngle);
        EditorGUILayout.EndVertical();
        if (EditorGUI.EndChangeCheck())
        {
            (target as LineCtrl).SetWorldTarget(endPos, startAngle, endAngle);
        }
    }

}
#endif



[ExecuteAlways]
public class LineCtrl : MonoBehaviour
{
    [Range(2, 40)]
    [SerializeField] protected int segmentNum = 2;
    [SerializeField] protected float handleLength = 10f;
    [Range(0.1f, 4f)]
    [SerializeField] protected float texWidth = 1f;

    [SerializeField] protected float speed;

    LineRenderer lr;
    MaterialPropertyBlock mpb;
    Vector4 mainTexSTParam = new Vector4(1f, 1f, 0f, 0f);
    float length;


    private void OnEnable()
    {
        if (lr == null)
        {
            lr = GetComponent<LineRenderer>();
            if (lr == null)
            {
                lr = gameObject.AddComponent<LineRenderer>();
            }
            lr.useWorldSpace = false;
        }
    }

    public float Speed
    {
        get
        {
            return speed;
        }
        set
        {
            speed = value;
            UpdateMaterialPropertyBlock();
        }
    }

    public void SetWidth( float width )
    {
        if (lr == null)
        {
            return;
        }
        lr.startWidth = width;
    }

    public void SetHandleLength( float length )
    {
        handleLength = Mathf.Max(0f, length);
    }

    public void SetSegmentNum( int num )
    {
        segmentNum = Mathf.Clamp(num, 2, 40);
    }

    public void SetWorldTarget( Vector3 endPos, float startAngle, float endAngle )
    {
        Vector3 endLocalPos = transform.InverseTransformPoint(endPos);
        SetLocalTarget(endLocalPos, startAngle, endAngle);
    }

    public void SetLocalTarget( Vector3 endPos, float startAngle, float endAngle )
    {
        if (lr == null)
        {
            return;
        }
        var hl = Mathf.Min(this.handleLength, endPos.magnitude);
        if (Mathf.Abs(startAngle) + Mathf.Abs(endAngle) > 1f
            && hl > 0f
            )
        {
            Vector3 dir = endPos.normalized;
            Quaternion startHandleRotate = Quaternion.Euler(0f, 0f, startAngle);
            Vector3 sh = startHandleRotate * dir * hl;

            Quaternion endHandleRotate = Quaternion.Euler(0f, 0f, 180f - endAngle);
            Vector3 eh = endHandleRotate * dir * hl;

            UpdateBezierLine(sh, endPos, endPos + eh);
        } else
        {
            UpdateStraightLine(endPos);
        }

    }

    static readonly int MainTexSTProp = Shader.PropertyToID("_MainTex_ST");
    static readonly int SpeedProp = Shader.PropertyToID("_Speed");

    void UpdateMaterialPropertyBlock()
    {
        if (mpb == null)
        {
            mpb = new MaterialPropertyBlock();
        }
        lr.GetPropertyBlock(mpb);
        mainTexSTParam.x = length * texWidth / (lr.startWidth);
        mpb.SetVector(MainTexSTProp, mainTexSTParam);
        mpb.SetFloat(SpeedProp, -speed);
        lr.SetPropertyBlock(mpb);
    }

    void UpdateStraightLine( Vector3 end )
    {
        if (lr.positionCount != 2)
        {
            lr.positionCount = 2;
        }

        lr.SetPosition(0, Vector3.zero);
        lr.SetPosition(1, end);
        length = end.magnitude;
        UpdateMaterialPropertyBlock();
    }

    void UpdateBezierLine(
         Vector3 startH,
         Vector3 end,
         Vector3 endH
        )
    {

        if (lr.positionCount != segmentNum)
        {
            lr.positionCount = segmentNum;
        }

        length = 0;

        Vector3 lastPos = Vector3.zero;
        lr.SetPosition(0, lastPos);
        float segmentLength = 1f / (segmentNum - 1);
        for (int i = 1 ; i < segmentNum - 1 ; i++)
        {
            float t = i * segmentLength;
            Vector3 point = CalculateTargetBezierPoint(t, startH, endH, end);
            length += Vector3.Distance(lastPos, point);
            lastPos = point;
            lr.SetPosition(i, point);
        }

        lr.SetPosition(segmentNum - 1, end);
        length += Vector3.Distance(lastPos, end);
        UpdateMaterialPropertyBlock();
    }

    static Vector3 CalculateTargetBezierPoint( float t, Vector3 p1, Vector3 p2, Vector3 p3 )
    {
        float u = 1 - t;
        float tt = t * t;
        float uu = u * u;

        Vector3 p = Vector3.zero;
        p += 3 * uu * t * p1;
        p += 3 * tt * u * p2;
        p += tt * t * p3;

        return p;
    }


}
