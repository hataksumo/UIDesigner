
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;


namespace Fungus
{

    [CommandInfo("MediaPlayer",
                "MediaComeToStop",
                "停止视频循环回退指令")]
    [AddComponentMenu("")]
    public class MediaComeToStop : Command
    {
        public static bool stopBlock = false;
        public override void OnEnter()
        {
            var videoMan = VideoManager.GetInstance();
        
            stopBlock = true;
            MediaComeTo.StartBlock = false;
            MediaComeTo.update = false;
            videoMan.VideoComp.Skip();
            Continue();
        }
      
       
        public override Color GetButtonColor()
        {
            return new Color32(100, 230, 170, 255);
        }

      

    }


}
