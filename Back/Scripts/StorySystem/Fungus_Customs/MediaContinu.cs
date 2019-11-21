using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Fungus
{


    [CommandInfo("MediaPlayer",
                      "MediaContinu",
                      "继续播放视频")]
    [AddComponentMenu("")]
    public class MediaContinu : Command
    {
        public override void OnEnter()
        {
            var videoMan = VideoManager.GetInstance();
            videoMan.Contiue();
            Continue();
        }

    }

    
}