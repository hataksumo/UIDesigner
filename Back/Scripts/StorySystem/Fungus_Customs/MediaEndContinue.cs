using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;


namespace Fungus
{

    [CommandInfo("MediaPlayer",
                "MediaEndContinue",
                "进入直到等到视频播放完，清除视频 后面接对话 剧情结束时加FlowEnd结束")]
    [AddComponentMenu("")]
    public class MediaEndContinue : Command
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

            var videoMan = VideoManager.GetInstance();
            videoMan.VideoComp.Clean();
            Fungus.MediaPlay.IsFinishPlaying = false;
            Continue();
         
        }
        public override Color GetButtonColor()
        {
            return new Color32(100, 230, 170, 255);
        }



    }


}
