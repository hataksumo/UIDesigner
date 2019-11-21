//#define TEST_NOTCH_MODE 
using System.Collections.Generic;
using UnityEngine;
using System.Text.RegularExpressions;
public class CommonUtils
{
    //过滤  表情  特殊符号
    public static string PassEmojStr(string str)
    {

        string result = Regex.Replace(str, @"\p{Cs}", "");

        //if (Regex.IsMatch(result, "[A-Za-z0-9\u4e00-\u9fa5-]+"))
        //{
        //    return Regex.Match(result, "[A-Za-z0-9\u4e00-\u9fa5-]+").Value;
        //}else{
        //    return "";
        //}
         if (result.Contains("<") || result.Contains(">"))
        {
            result = result.Contains("<") ? result.Replace("<", "") : result.Replace(">", "");
        }
     
        return result;
    }

    public static void PlayPortraitAnim(GameObject game)
    {
        Fungus.DialogPortrait dialogPortrait = game.GetComponent<Fungus.DialogPortrait>();
      
        Fungus.PortraitPresetData portraitPresetData = dialogPortrait.GetPresetData();
        if (portraitPresetData.animPresets.Length > 0)
        {
            Fungus.PortraitAnimClip[] clips = portraitPresetData.animPresets[1].clips;
            dialogPortrait.PlayAnim(clips);
            dialogPortrait.CurAlpha = 1;
        }

        UnityEngine.UI.GraphicRaycaster ray = game.GetComponent<UnityEngine.UI.GraphicRaycaster>();
        if(ray != null)
        {
            ray.enabled = false;
        }

    }

   
    public static bool Raycast(Ray ray, out RaycastHit hit, int length)
    {
        return Physics.Raycast(ray, out hit, 1000);
    }

    //检测是否编辑器模式下
    public static bool CheckIsUseEditor()
    {
#if UNITY_EDITOR
        return true;
#endif
        return false;
    }

}
