using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using UnityEngine.Rendering.PostProcessing;
using UnityEngine.Experimental;

namespace LJ_TimelineExtension
{

    public class ColorGradingBehaviour : PlayableBehaviour
    {
        private ColorGrading colorGrading;
        // 颜色过渡计算
        private float curTime = 0f;
        private float totalTime = 0f;
        public Texture lutTexture;

        // 最佳的滤镜效果值
        public float contribution;
        // 过渡时间在总时间中的时间
        private int durateCount = 8;
        public override void OnGraphStart( Playable playable )
        {

            PostProcessLayer postLayer = null;

            if (Camera.main != null)
            {
                postLayer = Camera.main.gameObject.GetComponentInChildren<PostProcessLayer>();
            }

            if (postLayer == null)
            {
                var allCam = Camera.allCameras;
                foreach (var cam in allCam)
                {
                    var pl = cam.gameObject.GetComponentInChildren<PostProcessLayer>();
                    if (pl != null)
                    {
                        postLayer = pl;
                        break;
                    }
                }
            }

            if (postLayer == null) return;

            // 
            totalTime = (float)playable.GetDuration();

            // ColorGrading Initial 
            // 得到ColorGrading

            PostProcessVolume volume =  PostProcessManager.instance.GetHighestPriorityVolume(postLayer);
            PostProcessProfile profile = volume.sharedProfile;
            colorGrading = profile.GetSetting<ColorGrading>();
            if(colorGrading == null)
            {
                colorGrading = profile.AddSettings<ColorGrading>();
            }
            // 初始化
            colorGrading.active = true;
            colorGrading.ldrLutContribution.value = 0f;
        }

        public override void OnBehaviourPlay( Playable playable, FrameData info )
        {
            colorGrading.gradingMode.value = GradingMode.LowDefinitionRange;
            colorGrading.ldrLut.value = lutTexture;
        }

        public override void OnBehaviourPause( Playable playable, FrameData info )
        {
            // colorGrading.gradingMode.value = GradingMode.HighDefinitionRange;
            colorGrading.ldrLutContribution.value = 0f;
        }


        public override void PrepareFrame( Playable playable, FrameData info )
        {
            colorGrading.ldrLutContribution.value = GetContributionValue((float)playable.GetTime(), totalTime);

        }

        // 颜色过渡函数
        private float GetContributionValue( float curTime, float totalTime )
        {
            float value = 0f;
            if (curTime < totalTime / durateCount)
            {
                value = curTime * contribution * durateCount / totalTime;
            } else if (curTime > (totalTime - totalTime / durateCount))
            {
                value = (totalTime - curTime) * contribution * durateCount / totalTime;
            } else
                value = contribution;

            return value;
        }
    }


}