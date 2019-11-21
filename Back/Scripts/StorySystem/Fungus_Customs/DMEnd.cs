using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Fungus
{

    [CommandInfo("DM Ctrl",
                "DMEnd",
                "停止播放弹幕")]
    [AddComponentMenu("")]
    public class DMEnd : Command
    {
        public int DMNumber;

        //CallLua  end
         public override void OnEnter()
         {
            StorySystem.StoryDataUtilities.DMEvent(false, -1);
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
