using UnityEngine;
namespace LJ_TimelineExtension
{
    [ExecuteAlways]
    public class TimelineFollowTranHelper : MonoBehaviour
    {
        public Vector3 initWorldPos;
        public Quaternion initWorldRotate;
        public Transform m_ParentTrans;
        public Vector3 m_PosOffsetInWorld;
        public FxFollowType m_followType;

        private void LateUpdate()
        {
            if (m_ParentTrans == null || m_followType == FxFollowType.none)
            {

                transform.position = initWorldPos;
                transform.rotation = initWorldRotate;
                return;
            }
            if ((m_followType & FxFollowType.followPos) > 0)
            {
                transform.position = ParticleCtrlUtilities.CalcNodeTransPos(transform.parent, m_ParentTrans, m_PosOffsetInWorld);
            }
            if ((m_followType & FxFollowType.followRotate) > 0)
            {
                transform.rotation = m_ParentTrans.rotation;
            }
        }
    }

}