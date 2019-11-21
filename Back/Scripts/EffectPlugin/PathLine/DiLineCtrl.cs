using System.Collections;
using System.Collections.Generic;
using UnityEngine;


#if UNITY_EDITOR
using UnityEditor;
namespace LJTilemaps{
    [CanEditMultipleObjects]
    [CustomEditor(typeof( DiLineCtrl))]
public class DiLineCtrlInspector : Editor
{
        
    //private float startAngle;
    //private float endAngle;

    private void OnEnable()
    {
        //var lr = (target as DiLineCtrl).gameObject.GetComponent<LineRenderer>();
        //var pend = lr.GetPosition(lr.positionCount - 1);
        //if (lr.positionCount >= 2)
        //{
        //    var p0 = lr.GetPosition(0);
        //    var p1 = lr.GetPosition(1);
        //    var p2 = lr.GetPosition(lr.positionCount - 2);

        //    Vector3 endDir = p0 - pend;
        //    Vector3 p0Dir = p0 - p1;
        //    Vector3 p2Dir = pend - p2;

        //    //startAngle = Vector3.Angle(endDir, p0Dir) * Mathf.Sign(Vector3.Cross(endDir, p0Dir).z);
        //    //endAngle = Vector3.Angle(-endDir, p2Dir) * Mathf.Sign(Vector3.Cross(endDir, p2Dir).z);

        //}
        //endPos = lr.transform.TransformPoint(pend);
    }

    public override void OnInspectorGUI()
    {
        EditorGUI.BeginChangeCheck();
        base.OnInspectorGUI();
        EditorGUILayout.Space();
        EditorGUILayout.BeginVertical("box");
        EditorGUILayout.LabelField("预览工具");
        //endPos = EditorGUILayout.Vector3Field("终点位置", endPos);
        //startAngle = EditorGUILayout.FloatField("起点角度", startAngle);
        //endAngle = EditorGUILayout.FloatField("终点角度", endAngle);
        EditorGUILayout.EndVertical();
        if (EditorGUI.EndChangeCheck())
        {
            DiLineCtrl line = target as DiLineCtrl;
            Vector3 p1 = line.localP1;
            Vector3 p2 = line.localP2;
            Vector3 p3 = line.localEndPos;
            (target as DiLineCtrl).SetMyLocalTarget(p1, p2, p3);
        }
    }

    private void OnSceneGUI()
    {
        DiLineCtrl line = target as DiLineCtrl;
        LineRenderer lr = (target as DiLineCtrl).gameObject.GetComponent<LineRenderer>();
        Transform handleTransform = line.transform; //p0
        Quaternion handleRotation = handleTransform.rotation; // p0

        Vector3 controlPoint1 = handleTransform.TransformPoint(line.localP1);
        Vector3 controlPoint2 = handleTransform.TransformPoint(line.localP2);
        Vector3 endPoint3 = handleTransform.TransformPoint(line.localEndPos);

        Handles.color = Color.cyan;
        Handles.DrawLine(handleTransform.position, endPoint3);
        Handles.color = Color.black;
        Handles.DrawLine(handleTransform.position, controlPoint1);
        Handles.DrawLine(endPoint3, controlPoint2);

        bool isChanged = false;
        //bool isStartChanged = false;
        Handles.color = Color.red;
        Handles.SphereHandleCap(0,handleTransform.position, handleRotation,1f, EventType.Repaint);

        EditorGUI.BeginChangeCheck();
        //Vector3 lastPosition = handleTransform.position;
        handleTransform.position = Handles.DoPositionHandle(handleTransform.position, handleRotation);
        if (EditorGUI.EndChangeCheck())
        {
            Undo.RecordObject(line, "Move Point");
            EditorUtility.SetDirty(line);
            isChanged = true;
            //isStartChanged = true;
        }

        Handles.SphereHandleCap(0, endPoint3, handleRotation, 1f, EventType.Repaint);
        EditorGUI.BeginChangeCheck();
        Vector3 newWorldEndPos = Handles.DoPositionHandle(endPoint3, handleRotation);
        if (EditorGUI.EndChangeCheck())
        {
            Undo.RecordObject(line, "Move Point");
            EditorUtility.SetDirty(line);
            line.localEndPos = handleTransform.InverseTransformPoint(newWorldEndPos);
            isChanged = true;
        }


        Handles.color = Color.blue;
        Handles.SphereHandleCap(0, controlPoint1, handleRotation, 1f, EventType.Repaint);
        EditorGUI.BeginChangeCheck();
        Vector3 newLocalP1 = Handles.DoPositionHandle(controlPoint1, handleRotation);
        if (EditorGUI.EndChangeCheck())
        {
            Undo.RecordObject(line, "Move Point");
            EditorUtility.SetDirty(line);
            line.localP1 = handleTransform.InverseTransformPoint(newLocalP1);
            isChanged = true;
        }


        Handles.SphereHandleCap(0, controlPoint2, handleRotation, 1f, EventType.Repaint);
        EditorGUI.BeginChangeCheck();
        Vector3 newLocalP2 = Handles.DoPositionHandle(controlPoint2, handleRotation);
        if (EditorGUI.EndChangeCheck())
        {
            Undo.RecordObject(line, "Move Point");
            EditorUtility.SetDirty(line);
            line.localP2 = handleTransform.InverseTransformPoint(newLocalP2);
            isChanged = true;
        }

        if (isChanged) {
            //if (isStartChanged) {
            //    Vector3 offset = handleTransform.position - lastPosition;
            //    line.localP1 += offset;
            //    line.localP2 += offset;
            //    line.localEndPos += offset;
            //}
            Vector3 p1 = line.localP1;
            Vector3 p2 = line.localP2;
            Vector3 p3 = line.localEndPos;
            line.SetMyLocalTarget(p1, p2, p3);
        }
    }
    }
}
#endif

namespace LJTilemaps
{
    [ExecuteAlways]
    public class DiLineCtrl : MonoBehaviour
    {

        [Range(2, 40)]
        [SerializeField] protected int segmentNum = 2;
        //[SerializeField] protected float handleLength = 10f;
        [Range(0.1f, 4f)]
        [SerializeField] protected float texWidth = 1f;

        [SerializeField] protected float speed;
        [SerializeField]
        public Vector3 localP1 = new Vector3(1, 1, 0f);
        [SerializeField]
        public Vector3 localP2 = new Vector3(2, 2, 0f);
        [SerializeField]
        public Vector3 localEndPos = new Vector3(3, 3, 0f);

        //[Tooltip("是否自动生成线段")]
        //[SerializeField]
        //[HideInInspector]
        //public bool onceRandom = true;

        LineRenderer lr;
        MaterialPropertyBlock mpb;
        Vector4 mainTexSTParam = new Vector4(1f, 1f, 0f, 0f);
        float tempLength;


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
            ForceUpdateMe();
            //RandomLineLogic();
        }

        //public void RandomLineLogic() {
        //    //if (onceRandom)
        //    //{
        //    //    DoRandomLineP1P2();
        //    //}
        //    //else {
              
        //    //}
        //    ForceUpdateMe();
        //}

        [ContextMenu("随机生成样式")]
        public void DoRandomLineP1P2()
        {
            segmentNum = 20;
            texWidth = 0.9f;
            speed = 4f;
            localP1 = new Vector3(Random.Range(-10f, 10f), Random.Range(-10f, 10f), 0f);
            localP2 = new Vector3(Random.Range(-10f, 10f), Random.Range(-10f, 10f), 0f);
            //onceRandom = false;
            ForceUpdateMe();
        }

        public void ForceUpdateMe() {
            SetMyLocalTarget(localP1, localP2, localEndPos);
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

        public void SetWidth(float width)
        {
            if (lr == null)
            {
                return;
            }
            lr.startWidth = width;
        }

        public void SetSharedMaterial(Material mat)
        {
            lr.sharedMaterial = mat;
        }

        //public void SetHandleLength(float length)
        //{
        //    handleLength = Mathf.Max(0f, length);
        //}

        public void SetSegmentNum(int num)
        {
            segmentNum = Mathf.Clamp(num, 2, 40);
        }

        public void SetMyLocalTarget(Vector3 p1, Vector3 p2, Vector3 p3)
        {

            UpdateBezierLine(p1, p3, p2);

            //  Vector3 p1dir = p1.normalized; // p1 方向
            //Vector3 p2dir = (p2 - p3).normalized;// p2 方向
            //var h1 = Mathf.Min(this.handleLength, p3.magnitude);
            //Vector3 sh = p1dir * h1;
            //Vector3 eh = p2dir * h1;
            //UpdateBezierLine(sh, p3, p3 + eh);
            //UpdateMaterialPropertyBlock();
        }


        //public void SetMyLocalTarget(Vector3 sh,Vector3 eh,Vector3 endPos)
        //{

        //    UpdateBezierLine(sh, endPos, endPos + eh);
        //}

        //public void SetWorldTarget(Vector3 endPos, float startAngle, float endAngle)
        //{
        //    Vector3 endLocalPos = transform.InverseTransformPoint(endPos);
        //    SetLocalTarget(endLocalPos, startAngle, endAngle);
        //}

        //public void SetLocalTarget(Vector3 endPos, float startAngle, float endAngle)
        //{
        //    if (lr == null)
        //    {
        //        return;
        //    }
        //    var hl = Mathf.Min(this.handleLength, endPos.magnitude);
        //    if (Mathf.Abs(startAngle) + Mathf.Abs(endAngle) > 1f
        //        && hl > 0f
        //        )
        //    {
        //        Vector3 dir = endPos.normalized;
        //        Quaternion startHandleRotate = Quaternion.Euler(0f, 0f, startAngle);
        //        Vector3 sh = startHandleRotate * dir * hl;

        //        Quaternion endHandleRotate = Quaternion.Euler(0f, 0f, 180f - endAngle);
        //        Vector3 eh = endHandleRotate * dir * hl;

        //        UpdateBezierLine(sh, endPos, endPos + eh);
        //    }
        //    else
        //    {
        //        UpdateStraightLine(endPos);
        //    }

        //}

        void UpdateMaterialPropertyBlock()
        {
            if (mpb == null)
            {
                mpb = new MaterialPropertyBlock();
            }
            lr.GetPropertyBlock(mpb);
            mainTexSTParam.x = tempLength * texWidth / (lr.startWidth);
            mpb.SetVector("_MainTex_ST", mainTexSTParam);
            mpb.SetFloat("_Speed", -speed);
            lr.SetPropertyBlock(mpb);
        }

        //void UpdateStraightLine(Vector3 end)
        //{
        //    if (lr.positionCount != 2)
        //    {
        //        lr.positionCount = 2;
        //    }

        //    lr.SetPosition(0, Vector3.zero);
        //    lr.SetPosition(1, end);
        //    tempLength = end.magnitude;
        //    UpdateMaterialPropertyBlock();
        //}

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

            tempLength = 0;

            Vector3 lastPos = Vector3.zero;
            lr.SetPosition(0, lastPos);
            float segmentLength = 1f / (segmentNum - 1);
            for (int i = 1; i < segmentNum - 1; i++)
            {
                float t = i * segmentLength;
                Vector3 point = CalculateTargetBezierPoint(t, Vector3.zero, startH, endH, end);
                tempLength += Vector3.Distance(lastPos, point);
                lastPos = point;
                lr.SetPosition(i, point);
            }

            lr.SetPosition(segmentNum - 1, end);
            tempLength += Vector3.Distance(lastPos, end);
            UpdateMaterialPropertyBlock();
        }


        static Vector3 CalculateTargetBezierPoint(float t, Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3)
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


    }
}