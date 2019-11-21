using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Fungus
{

    [CommandInfo("MediaPlayer",
                "MeidaRateCtrl",
                "调整视频速度，慢放[0,1]，快放[1,4]   " +
        "注意：如果这条命令后紧跟MediaContinu命令，可以将后面的MediaContinu删掉")]
    [AddComponentMenu("")]
    public class MeidaRateCtrl : Command
    {
        public float speed;
        public override void OnEnter()
        {
            var videoMan = VideoManager.GetInstance();
            videoMan.SetPlaybackRate(speed);
            videoMan.Contiue();
            Continue();
        }
        public override string GetSummary()
        {

            return "speed :" + " (" + speed + ")";
        }

        public override Color GetButtonColor()
        {
            return new Color32(54, 134, 193, 255);
        }
    }



}
