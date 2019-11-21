using System.Collections;
using System.Collections.Generic;
using UnityEngine;
//#if UNITY_EDITOR

//using UnityEditor;
//[CustomEditor(typeof(Fungus.PortraitPresetData))]
//public class PortraitPressetDataEditor : Editor
//{
//    int presetIndex = 0;
//    public override void OnInspectorGUI()
//    {
//        base.OnInspectorGUI();
//    }

//    void TestInitSetting()
//    {

//    }

//    void TestPresetSetting()
//    {

//    }

//}


//#endif
namespace Fungus
{
    [System.Serializable]
    public struct AnimPresetToken
    {
        public string name;
        public PortraitAnimClip[] clips;
    }

    [System.Serializable]
    public struct PortraitPresetToken {
        public string name;
        public int[] spIndexes;
    }
        
    public class PortraitPresetData : MonoBehaviour
    {
        public PortraitPresetToken[] portraitPresets;
        public AnimPresetToken[] animPresets;
    }

}