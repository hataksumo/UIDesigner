using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Fungus
{
    [CommandInfo("Narrative",
                "Set EveryBtn CutDown Time",
                "设置每个按钮的倒计时长")]
    [AddComponentMenu("")]
    public class SetBtnsCutDownTime : Command
    {
         protected string menuDialogName= "MenuDialog_MultiBtns(Clone)";
        // protected string menuDialogName = "MenuDialog_MultiBtns";

        public float[] btnsTimer=new float[6];
        
        public override void OnEnter()
        {
            var thisCanvas = StorySystem.StoryDataUtilities.StoryMainCanvas.transform;
            Transform menuDialog =thisCanvas.Find(menuDialogName);
            Button[] btns = menuDialog.GetComponentsInChildren<Button>(true);
            if (menuDialog != null)
            {
                for (int i = 0; i < btns.Length; i++)
                {
                    if(btnsTimer[i]>0)
                    {
                        btns[i].transform.GetComponent<EveryBtnClick>()._duration = btnsTimer[i];
                    }

                }
            }

            Continue();
        }

        public override string GetSummary()
        {
            return menuDialogName;
        }
    }
}
