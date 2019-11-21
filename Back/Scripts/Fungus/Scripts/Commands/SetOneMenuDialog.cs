
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

namespace Fungus
{

    [CommandInfo("Narrative",
                 "Set One MenuDialog",
                 "one Button")]
    [AddComponentMenu("")]
    public class SetOneMenuDialog : Command 
    {
       protected string menuDialogName ="MenuDialog_OneBtn(Clone)";
      //  protected string menuDialogName ="MenuDialog_OneBtn";
        protected MenuDialogExtend menuDialog;

        public int clickCount;

        public override void OnEnter()
        {
            var thisCanvas = StorySystem.StoryDataUtilities.StoryMainCanvas.transform;
            menuDialog = thisCanvas.Find(menuDialogName).GetComponent<MenuDialogExtend>();

            if (menuDialog != null)
            {
                MenuDialogExtend.ActiveMenuDialog = menuDialog;
                menuDialog.ClickCount = clickCount;
            }

            Continue();
        }


        public override string GetSummary()
        {
            return menuDialogName;
        }

    }
}