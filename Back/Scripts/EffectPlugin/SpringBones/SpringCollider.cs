
using UnityEngine;
using System.Collections;
#if UNITY_EDITOR
using UnityEditor;
#endif
namespace SpringBoneSystem
{
    public class SpringCollider : MonoBehaviour
    {
        public float radius = 0.5f;
#if UNITY_EDITOR

        private void OnDrawGizmosSelected()
        {
            Gizmos.color = Color.green;
            Gizmos.DrawWireSphere(transform.position, radius);
        }
#endif
    }

#if UNITY_EDITOR

    [CanEditMultipleObjects, CustomEditor(typeof(SpringCollider))]
    public class SpringColliderInspector : Editor
    {
        private static Vector3 pointSnap = Vector3.one * 0.1f;

        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();
        }


        void OnSceneGUI()
        {
            SpringCollider _sc = target as SpringCollider;
            Undo.RecordObject(_sc, "Move Spring Collider Radius");
            Vector3 _oldPoint = _sc.transform.TransformPoint(Vector3.up * _sc.radius);
            Vector3 _newPoint = Handles.FreeMoveHandle(_oldPoint, Quaternion.identity, 0.01f, pointSnap, Handles.DotCap);
            if ((_oldPoint - _newPoint).sqrMagnitude > 0f)
            {
                _sc.radius = _sc.transform.InverseTransformPoint(_newPoint).magnitude;
            }
        }

    }

#endif
}