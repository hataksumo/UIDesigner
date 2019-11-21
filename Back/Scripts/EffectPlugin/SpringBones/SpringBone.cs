
using UnityEngine;
using System.Collections;
#if UNITY_EDITOR
using UnityEditor;
#endif
namespace SpringBoneSystem
{
    public class SpringBone : MonoBehaviour
    {
        //次のボーン
        public Transform child;

        //ボーンの向き
        public Vector3 boneAxis = new Vector3(-1.0f, 0.0f, 0.0f);
        public float radius = 0.05f;

        //各SpringBoneに設定されているstiffnessForceとdragForceを使用するか？
        public bool isUseEachBoneForceSettings = false;

        //バネが戻る力
        public float stiffnessForce = 0.01f;

        //力の減衰力
        public float dragForce = 0.4f;
        public Vector3 springForce = new Vector3(0.0f, -0.0001f, 0.0f);
        public SpringCollider[] colliders;
#if UNITY_EDITOR
        public bool debug = true;
#endif
        //Kobayashi:Thredshold Starting to activate activeRatio
        public float threshold = 0.01f;
        private float springLength;
        private Quaternion localRotation;
        private Transform trs;
        private Vector3 currTipPos;
        private Vector3 prevTipPos;
        //Kobayashi
        private Transform org;
        //Kobayashi:Reference for "SpringManager" component with unitychan 
        private SpringManager managerRef;

        private void Awake()
        {
            trs = transform;
            localRotation = transform.localRotation;
            //Kobayashi:Reference for "SpringManager" component with unitychan
            // GameObject.Find("unitychan_dynamic").GetComponent<SpringManager>();
            // managerRef = GetParentSpringManager(transform);
            managerRef = GetComponentInParent<SpringManager>();
        }

        //private SpringManager GetParentSpringManager(Transform t)
        //{
        //    var springManager = t.GetComponent<SpringManager>();

        //    if (springManager != null)
        //        return springManager;

        //    if (t.parent != null)
        //    {
        //        return GetParentSpringManager(t.parent);
        //    }

        //    return null;
        //}

        private void Start()
        {
            springLength = Vector3.Distance(trs.position, child.position);
            currTipPos = child.position;
            prevTipPos = child.position;
        }

        public void UpdateSpring()
        {
            org = trs;            
            trs.localRotation = Quaternion.identity * localRotation;
            
            float sqrDt = Time.deltaTime * Time.deltaTime;

            //stiffness
            Vector3 force = trs.rotation * (boneAxis * stiffnessForce) / sqrDt;

            //drag
            force += (prevTipPos - currTipPos) * dragForce / sqrDt;

            force += springForce / sqrDt;

            //前フレームと値が同じにならないように
            Vector3 temp = currTipPos;

            //verlet
            currTipPos = (currTipPos - prevTipPos) + currTipPos + (force * sqrDt);

            //長さを元に戻す
            currTipPos = ((currTipPos - trs.position).normalized * springLength) + trs.position;

            //衝突判定
            for (int i = 0; i < colliders.Length; i++)
            {
                if (Vector3.Distance(currTipPos, colliders[i].transform.position) <= (radius + colliders[i].radius))
                {
                    Vector3 normal =
                        (currTipPos - colliders[i].transform.position).normalized;
                    currTipPos =
                        colliders[i].transform.position
                        + (normal * (radius + colliders[i].radius));
                    currTipPos =
                        ((currTipPos - trs.position).normalized * springLength)
                        + trs.position;
                }
            }

            prevTipPos = temp;

            //回転を適用；
            Vector3 aimVector = trs.TransformDirection(boneAxis);
            Quaternion aimRotation = Quaternion.FromToRotation(aimVector, currTipPos - trs.position);
            //original
            //trs.rotation = aimRotation * trs.rotation;
            //Kobayahsi:Lerp with mixWeight
            Quaternion secondaryRotation = aimRotation * trs.rotation;
            trs.rotation = Quaternion.Lerp(org.rotation, secondaryRotation, managerRef.dynamicRatio);
        }
#if UNITY_EDITOR
        private void OnDrawGizmos()
        {

            if (debug && child != null)
            {
                if (Application.isPlaying)
                {

                    Gizmos.color = Color.yellow;
                    Gizmos.DrawWireSphere(currTipPos, radius);
                }
                else
                {
                    Gizmos.color = Color.yellow;
                    Gizmos.DrawWireSphere(child.position, radius);
                }
            }
        }
#endif
    }


#if UNITY_EDITOR

    [CanEditMultipleObjects, CustomEditor(typeof(SpringBone))]
    public class SpringBoneInspector : Editor
    {
        private static Vector3 pointSnap = Vector3.one * 0.1f;

        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();
        }


        void OnSceneGUI()
        {
            SpringBone _sb = target as SpringBone;
            Undo.RecordObject(_sb, "Move Spring Bone Radius");

            Transform _childTrans = _sb.child;

            if (_childTrans == null)
            {
                return;
            }
            Vector3 _oldPoint = _childTrans.TransformPoint(Vector3.up * _sb.radius);
            Vector3 _newPoint = Handles.FreeMoveHandle(_oldPoint, Quaternion.identity, 0.01f, pointSnap, Handles.DotCap);
            if ((_oldPoint - _newPoint).sqrMagnitude > 0f)
            {
                _sb.radius = _childTrans.InverseTransformPoint(_newPoint).magnitude;
            }
        }

    }

#endif

}
