using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
namespace LJ_TimelineExtension
{
    [CustomEditor(typeof(CameraShakeAsset))]
    public class CameraShakeInspector : Editor
    {

#if !ART_PJT
        int a =1;
#endif
        int presetIndex = 0;
        string[] presetNames = null;
        ShakeData curPresetData;
        CameraShakeDataPreset preset;
        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();
            EditorGUILayout.Space();
            if (presetNames == null || presetNames.Length < 1)
            {
                EditorGUILayout.HelpBox("Cannot Find Preset Data!",MessageType.Warning);
            } else
            {
                EditorGUILayout.BeginHorizontal();
                EditorGUI.BeginChangeCheck();
                EditorGUILayout.LabelField("Pressets:",GUILayout.Width(90));
                EditorGUILayout.ObjectField(preset, typeof(CameraShakeDataPreset), false, GUILayout.Width(100));
                presetIndex = EditorGUILayout.Popup(presetIndex, presetNames);
                if (EditorGUI.EndChangeCheck())
                {
                    curPresetData = CameraShakeDataPreset.GetData(presetIndex);
                }
                if(GUILayout.Button("Use",GUILayout.Width(50)))
                {
                    (target as CameraShakeAsset).data = curPresetData;
                }
                EditorGUILayout.EndHorizontal();
                EditorGUILayout.Space();
                EditorGUILayout.LabelField(string.Format("name: {0}", curPresetData.name));
                EditorGUILayout.LabelField(string.Format("shake numbers: {0}", curPresetData.number_of_shakes));
                EditorGUILayout.LabelField(string.Format("shake amount: ({0:F4},{1:F4},{2:F4})", curPresetData.shake_amount.x, curPresetData.shake_amount.y, curPresetData.shake_amount.z));
                EditorGUILayout.LabelField(string.Format("rotation amount: ({0:F4},{1:F4},{2:F4})", curPresetData.rotation_amount.x, curPresetData.rotation_amount.y, curPresetData.rotation_amount.z));
                EditorGUILayout.LabelField(string.Format("distance: {0}", curPresetData.distance));
                EditorGUILayout.LabelField(string.Format("speed: {0}", curPresetData.speed));
                EditorGUILayout.LabelField(string.Format("decay: {0}", curPresetData.decay));
                EditorGUILayout.LabelField(string.Format("time scale: {0}", curPresetData.by_time_scale));
            }
        }

        private void OnEnable()
        {
            preset = CameraShakeDataPreset.Instance;
            presetNames = CameraShakeDataPreset.PresetNames();
            curPresetData = CameraShakeDataPreset.GetData(presetIndex);
        }
    }

}