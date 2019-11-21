using UnityEngine;

namespace LJ_TimelineExtension
{
    class ParticleCtrlUtilities
    {
        public static Animator FindAnimInParent( Transform node )
        {
            Animator ret = null;
            Transform tmpNode = node;
            while (tmpNode != null && ret == null)
            {
                var anim = tmpNode.GetComponent<Animator>();
                if (anim != null)
                {
                    ret = anim;
                } else
                {
                    tmpNode = tmpNode.parent;
                }
            }
            return ret;
        }


        public static Vector3 CalcNodeTransPos( Transform rootTrans, Transform followTrans, Vector3 offset )
        {
            if (followTrans == null) return Vector3.zero;
            if (rootTrans == null)
            {
                return followTrans.position + offset;
            } else
            {
                var localPos = rootTrans.InverseTransformPoint(followTrans.position);
                return rootTrans.TransformPoint(localPos + offset);
            }
        }

    }
}
