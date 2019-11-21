using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Fungus
{
    [CommandInfo("MediaPlayer",
              "MediaSkip",
              "停止视频")]
    [AddComponentMenu("")]
    public class MediaSkip : Command
    {
        public override void OnEnter()
        {
            var videoMan = VideoManager.GetInstance();
            videoMan.Skip();
            Continue();
        }

        public override string GetSummary()
        {
            return "MediaSkip";
        }

    }
}