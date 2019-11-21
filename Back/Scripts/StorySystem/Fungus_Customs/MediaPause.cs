using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Fungus
{

    [CommandInfo("MediaPlayer",
                "MediaPause",
                "暂停视频")]
    [AddComponentMenu("")]
    public class MediaPause : Command
    {
        public override void OnEnter()
        {
            var videoMan = VideoManager.GetInstance();
            videoMan.Pause();
            Continue();
        }
    }



}