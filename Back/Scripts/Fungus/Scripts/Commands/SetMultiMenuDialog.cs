
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

namespace Fungus
{

    [CommandInfo("Narrative",
                 "Set Multi MenuDialog",
                 "multiButton")]
    [AddComponentMenu("")]
    public class SetMultiMenuDialog : Command 
    {
       
        protected string menuDialogName= "MenuDialog_MultiBtns(Clone)";
       // protected string menuDialogName= "MenuDialog_MultiBtns";
        protected MenuDialogExtendTwo menuDialog;

        public int AllBtnCount;
        public override void OnEnter()
        {
            var thisCanvas = StorySystem.StoryDataUtilities.StoryMainCanvas.transform;
            menuDialog = thisCanvas.Find(menuDialogName).GetComponent<MenuDialogExtendTwo>();

            if (menuDialog != null)
            {
                MenuDialogExtendTwo.ActiveMenuDialog = menuDialog;
                menuDialog.AllBtnCount = AllBtnCount;
            }

            Continue();
        }

        public override string GetSummary()
        {
            return menuDialogName;
        }

  
    }
}