using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Fungus
{

    [CommandInfo("DM Ctrl",
                "DMStart",
                "开始播放弹幕")]
    [AddComponentMenu("")]
    public class DMStart : Command
    {
        public int DMNumber;

        //CallLua  start

        public override void OnEnter()
        {
            StorySystem.StoryDataUtilities.DMEvent(true, DMNumber);
            Continue();
        }

        public override string GetSummary()
        {
            return DMNumber.ToString();
        }
        public override Color GetButtonColor()
        {
            return new Color32(50, 92, 68, 255);
        }
    }
}
