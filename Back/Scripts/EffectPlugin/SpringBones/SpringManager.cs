
using UnityEngine;
using System.Collections;

namespace SpringBoneSystem
{

    public class SpringManager : MonoBehaviour
    {
        //Kobayashi
        // DynamicRatio is paramater for activated level of dynamic animation 
        public float dynamicRatio = 1.0f;

        //Ebata
        public float stiffnessForce = 0.01f;
        public AnimationCurve stiffnessCurve = new AnimationCurve(new Keyframe(0f,1f),new Keyframe(1f,1f));
        public float dragForce = 0.4f;
        public AnimationCurve dragCurve = new AnimationCurve(new Keyframe(0f, 1f), new Keyframe(1f, 1f));
        public SpringBone[] springBones;
        public bool debug = true;
        void Start()
        {
            UpdateParameters();
        }

#if UNITY_EDITOR
        void Update()
        {
            if (!debug)
            {
                return;
            }
            //Kobayashi
            if (dynamicRatio >= 1.0f)
                dynamicRatio = 1.0f;
            else if (dynamicRatio <= 0.0f)
                dynamicRatio = 0.0f;
            //Ebata
            UpdateParameters();
        }

#endif

        private void UpdateParameters()
        {

            float start = 0f;
            float end = 0f;
            for (int i = 0; i < springBones.Length; i++)
            {
                //stiffnessForce
                start = stiffnessCurve.keys[0].time;
                end = stiffnessCurve.keys[stiffnessCurve.length - 1].time;
                if (!springBones[i].isUseEachBoneForceSettings)
                {
                    var scale = stiffnessCurve.Evaluate(start + (end - start) * i / (springBones.Length - 1));
                    springBones[i].stiffnessForce = stiffnessForce * scale;
                }

                //dragForce
                start = dragCurve.keys[0].time;
                end = dragCurve.keys[stiffnessCurve.length - 1].time;
                if (!springBones[i].isUseEachBoneForceSettings)
                {
                    var scale = dragCurve.Evaluate(start + (end - start) * i / (springBones.Length - 1));
                    springBones[i].dragForce = dragForce * scale;
                }
            }

        }



        private void LateUpdate()
        {
            //Kobayashi
            if (dynamicRatio != 0.0f)
            {
                for (int i = 0; i < springBones.Length; i++)
                {
                    if (dynamicRatio > springBones[i].threshold)
                    {
                        springBones[i].UpdateSpring();
                    }
                }
            }
        }

    }


}