using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace LJ_TimelineExtension
{

    public class ParticleLifeControl : MonoBehaviour
    {
        public float life;
        public bool destory = true;
        private float start;

        FxFollowType followType;
        Transform followTrans;
        Vector3 posOffset;
        Quaternion rotateOffset;


        private float flyDuration;
        private Transform TargetTrans;
        private Vector3 startPos;
        private float lifePct;
        private float flyPct;

        public void InitData(float life, FxFollowType followType, Transform followTrans, Vector3 offset )
        {
            this.life = life;
            this.followType = followType;
            this.followTrans = followTrans;
            if( followType != FxFollowType.none)
            {
                posOffset = offset;
            } else
            {
                posOffset = transform.position;
                rotateOffset = transform.rotation;
            }
        } 

        public void InitFlyTarget( float life, Transform target, float flyDuration )
        {
            this.life = life;
            TargetTrans = target;
            this.flyDuration = flyDuration;
        }


        private void OnEnable()
        {
            start = Time.time;
            startPos = transform.position;
        }

        // Update is called once per frame
        void LateUpdate()
        {  
            CalcPct();
            if (lifePct > 1f)
            {
                if (destory)
                    GameObject.Destroy(gameObject);
                else
                    gameObject.SetActive(false);
            } else if (TargetTrans != null)
            {
                transform.position = Vector3.Lerp(startPos, TargetTrans.position, flyPct);
            }else 
            {
                if (followTrans == null || followType == FxFollowType.none)
                {

                    transform.position = posOffset;
                    transform.rotation = rotateOffset;
                    return;
                }
                if ((followType & FxFollowType.followPos) > 0)
                {
                    transform.position = ParticleCtrlUtilities.CalcNodeTransPos(transform.parent, followTrans, posOffset);
                }
                if ((followType & FxFollowType.followRotate) > 0)
                {
                    transform.rotation = followTrans.rotation;
                }
            }
        }

        void CalcPct()
        {
            float delta = Time.time - start;
            if (TargetTrans == null)
            {
                lifePct = delta / life;
            } else
            {
                lifePct = delta / Mathf.Max(life, flyDuration);
                flyPct = delta / flyDuration;
            }
            
        }

    }

}