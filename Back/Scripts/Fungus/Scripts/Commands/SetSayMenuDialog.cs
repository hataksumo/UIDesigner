using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

namespace Fungus
{

    [CommandInfo("Narrative",
                 "Set Say MenuDialog",
                 "Say Menu dialog")]
    [AddComponentMenu("")]
    public class SetSayMenuDialog : Command
    {
        public string menuDialogName;
     
        protected MenuDialog menuDialog;

        public override void OnEnter()
        {
            if(!menuDialogName.Contains("(Clone)"))
                menuDialogName = menuDialogName + "(Clone)";


            var thisCanvas = StorySystem.StoryDataUtilities.StoryMainCanvas.transform;
            menuDialog = thisCanvas.Find(menuDialogName).GetComponent<MenuDialog>();
            if (menuDialog != null)
            {
                MenuDialog.ActiveMenuDialog = menuDialog;
              
            }

            Continue();
        }


        public override string GetSummary()
        {
            return menuDialogName;
        }

    }
}

