using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Fungus
{


    [CommandInfo("MediaPlayer",
               "MediaChange",
               "切换视频")]
    [AddComponentMenu("")]
    public class MediaChange : Command
    {
        public string filename = "";
        public override void OnEnter()
        {
            var videoMan = VideoManager.GetInstance();
            videoMan.Skip();
            videoMan.PlayVideo(filename, false, null);
            Continue();

        }

    }
  
}