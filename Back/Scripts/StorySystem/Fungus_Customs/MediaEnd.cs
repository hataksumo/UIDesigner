using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;


namespace Fungus
{

    [CommandInfo("MediaPlayer",
                "MediaEnd",
                "视频播完后清除视频  在视频剧情最后添加这个")]
    [AddComponentMenu("")]
    public class MediaEnd : Command
    {
        public override void OnEnter()
        {

            StartCoroutine(DoWait());

          
        }


        IEnumerator DoWait()
        {
            while (Fungus.MediaPlay.IsFinishPlaying==false)
            {
                yield return null;
            }


            CamMaskUtilities.SetMaskColor(1, 100);
            var storyData = gameObject.GetComponentInParent<StorySystem.StoryData>();
            if (storyData != null)
            {
                storyData.OnFlowEnd("剧情结束");
            }
            var videoMan = VideoManager.GetInstance();

            videoMan.VideoComp.Clean();

            Fungus.MediaPlay.IsFinishPlaying = false;
            var flow = GetFlowchart();
            flow.StopAllBlocks();
            LJAudio.AudioManager.StopAllSound();
        }
        public override Color GetButtonColor()
        {
            return new Color32(100, 230, 170, 255);
        }



    }


}
