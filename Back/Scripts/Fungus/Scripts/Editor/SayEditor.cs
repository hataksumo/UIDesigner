// This code is part of the Fungus library (http://fungusgames.com) maintained by Chris Gregan (http://twitter.com/gofungus).
// It is released for free under the MIT open source license (https://github.com/snozbot/fungus/blob/master/LICENSE)

using UnityEditor;
using UnityEngine;
using System.Collections.Generic;

namespace Fungus.EditorUtils
{
    [CustomEditor(typeof(Say))]
    public class SayEditor : CommandEditor
    {
        public static bool showTagHelp;
        public Texture2D blackTex;

        public static void DrawTagHelpLabel()
        {
            string tagsText = TextTagParser.GetTagHelp();

            if (CustomTag.activeCustomTags.Count > 0)
            {
                tagsText += "\n\n\t-------- CUSTOM TAGS --------";
                List<Transform> activeCustomTagGroup = new List<Transform>();
                foreach (CustomTag ct in CustomTag.activeCustomTags)
                {
                    if (ct.transform.parent != null)
                    {
                        if (!activeCustomTagGroup.Contains(ct.transform.parent.transform))
                        {
                            activeCustomTagGroup.Add(ct.transform.parent.transform);
                        }
                    }
                    else
                    {
                        activeCustomTagGroup.Add(ct.transform);
                    }
                }
                foreach (Transform parent in activeCustomTagGroup)
                {
                    string tagName = parent.name;
                    string tagStartSymbol = "";
                    string tagEndSymbol = "";
                    CustomTag parentTag = parent.GetComponent<CustomTag>();
                    if (parentTag != null)
                    {
                        tagName = parentTag.name;
                        tagStartSymbol = parentTag.TagStartSymbol;
                        tagEndSymbol = parentTag.TagEndSymbol;
                    }
                    tagsText += "\n\n\t" + tagStartSymbol + " " + tagName + " " + tagEndSymbol;
                    foreach (Transform child in parent)
                    {
                        tagName = child.name;
                        tagStartSymbol = "";
                        tagEndSymbol = "";
                        CustomTag childTag = child.GetComponent<CustomTag>();
                        if (childTag != null)
                        {
                            tagName = childTag.name;
                            tagStartSymbol = childTag.TagStartSymbol;
                            tagEndSymbol = childTag.TagEndSymbol;
                        }
                        tagsText += "\n\t      " + tagStartSymbol + " " + tagName + " " + tagEndSymbol;
                    }
                }
            }
            tagsText += "\n";
            float pixelHeight = EditorStyles.miniLabel.CalcHeight(new GUIContent(tagsText), EditorGUIUtility.currentViewWidth);
            EditorGUILayout.SelectableLabel(tagsText, GUI.skin.GetStyle("HelpBox"), GUILayout.MinHeight(pixelHeight));
        }

        protected SerializedProperty characterProp;
        protected SerializedProperty portraitProp;
        protected SerializedProperty storyTextProp;
        protected SerializedProperty descriptionProp;
        protected SerializedProperty voiceOverClipProp;
        protected SerializedProperty voiceClipNameProp;
        protected SerializedProperty PreVoiceClipNameProp;
  
        protected SerializedProperty showAlwaysProp;
        protected SerializedProperty showNeedNameProp;
        protected SerializedProperty showAfterHowManyNumber;
        protected SerializedProperty showCountProp;
        protected SerializedProperty extendPreviousProp;
        protected SerializedProperty fadeWhenDoneProp;
        protected SerializedProperty waitForClickProp;
        protected SerializedProperty stopVoiceoverProp;
        protected SerializedProperty setSayDialogProp;
        protected SerializedProperty playTypeProp;
        protected SerializedProperty sayDialogAnimProp;
        protected SerializedProperty waitForVOProp;
        //protrait parts
        protected SerializedProperty portraitPresetIndexProp;
        protected SerializedProperty portraitLayerSettingProp;
        protected SerializedProperty animPressetIndexProp;
        protected SerializedProperty animClipsProp;

        public override void OnEnable()
        {
            base.OnEnable();

            characterProp = serializedObject.FindProperty("character");
            portraitProp = serializedObject.FindProperty("portrait");
            storyTextProp = serializedObject.FindProperty("storyText");
            descriptionProp = serializedObject.FindProperty("description");
            voiceOverClipProp = serializedObject.FindProperty("voiceOverClip");
            voiceClipNameProp = serializedObject.FindProperty("voiceClipName");
            PreVoiceClipNameProp = serializedObject.FindProperty("PreVoiceClipName");
            showAlwaysProp = serializedObject.FindProperty("showAlways");
            showNeedNameProp = serializedObject.FindProperty("needName");
            showAfterHowManyNumber = serializedObject.FindProperty("AfterHowManyNumber");
            showCountProp = serializedObject.FindProperty("showCount");
            extendPreviousProp = serializedObject.FindProperty("extendPrevious");
            fadeWhenDoneProp = serializedObject.FindProperty("fadeWhenDone");
            waitForClickProp = serializedObject.FindProperty("waitForClick");
            stopVoiceoverProp = serializedObject.FindProperty("stopVoiceover");
            setSayDialogProp = serializedObject.FindProperty("setSayDialog");
            playTypeProp = serializedObject.FindProperty("playType");
            sayDialogAnimProp = serializedObject.FindProperty("sayDialogAnim");
            waitForVOProp = serializedObject.FindProperty("waitForVO");
            //protrait parts
            portraitPresetIndexProp = serializedObject.FindProperty("portraitPresetIndex");
            portraitLayerSettingProp = serializedObject.FindProperty("portraitLayerSetting");
            animPressetIndexProp = serializedObject.FindProperty("animPressetIndex");
            animClipsProp = serializedObject.FindProperty("animClips");


            if (blackTex == null)
            {
                blackTex = CustomGUI.CreateBlackTexture();
            }
        }

        protected virtual void OnDisable()
        {
            DestroyImmediate(blackTex);
        }

        private void DrawGUI_Portraits(DialogPortrait port)
        {
            Say say = target as Say;

            var preset = port.GetPresetData();
            if (preset == null) return;
            var portPreset = say.portraitPresetIndex;

            string[] portPresetNames = null;
            if (preset.portraitPresets != null && preset.portraitPresets.Length > 0)
            {
                portPresetNames = new string[preset.portraitPresets.Length + 1];
                for (int i = 0; i < preset.portraitPresets.Length; i++)
                {
                    portPresetNames[0] = "Custom";
                    PortraitPresetToken item = preset.portraitPresets[i];
                    if (string.IsNullOrEmpty(item.name))
                    {
                        portPresetNames[i + 1] = "Unkonw-" + i;
                    }
                    else
                    {
                        portPresetNames[i + 1] = item.name;
                    }
                }
            }
            if (portPresetNames != null && portPresetNames.Length > 0)
            {
                portPreset = EditorGUILayout.Popup("PortPreset:", portPreset + 1, portPresetNames) - 1;
            }
            else
            {
                portPreset = -1;
            }
            //say.portraitPresetIndex = portPreset;
            portraitPresetIndexProp.intValue = portPreset;

            if (portPreset >= 0)
            {
                GUILayout.Label("Portrait:" + portPresetNames[portPreset]);
            }
            else
            if (portPreset < 0 && port != null &&
               port.charLayers.Length > 0)
            {
                GUILayout.Label("Custom Portrait:");
                var setting = say.portraitLayerSetting;

                if (setting == null
                || setting.Length != port.charLayers.Length
                )
                {
                    setting = new int[port.charLayers.Length];
                    for (int i = 0; i < setting.Length; i++)
                    {
                        setting[i] = -1;
                    }
                }
                for (int i = 0; i < port.charLayers.Length; i++)
                {
                    string[] popStr = null;
                    if (port.charLayers[i].sps != null && port.charLayers[i].sps.Count > 0)
                    {
                        popStr = new string[port.charLayers[i].sps.Count + 1];
                        popStr[0] = "Default";
                        for (int j = 0; j < port.charLayers[i].sps.Count; j++)
                        {
                            Sprite sp = port.charLayers[i].sps[j];
                            popStr[j + 1] = ((sp == null) ? "Null" : sp.name);
                        }

                        setting[i] = EditorGUILayout.Popup(
                            new GUIContent(string.Format("    Layer{0} :", i), "")
                            , setting[i] + 1
                            , popStr) - 1;
                    }
                }

                portraitLayerSettingProp.ClearArray();
                for (int i = setting.Length - 1; i >= 0; i--)
                {
                    portraitLayerSettingProp.InsertArrayElementAtIndex(0);
                    var prop = portraitLayerSettingProp.GetArrayElementAtIndex(0);
                    prop.intValue = setting[i];
                }

            }

        }

        private void DrawGUI_Anim(DialogPortrait port)
        {
            Say say = target as Say;

            var preset = port.GetPresetData();
            if (preset == null) return;
            var animPreset = say.animPressetIndex;

            string[] animPresetNames = null;
            if (preset.animPresets != null && preset.animPresets.Length > 0)
            {
                animPresetNames = new string[preset.animPresets.Length + 1];
                for (int i = 0; i < preset.animPresets.Length; i++)
                {
                    animPresetNames[0] = "Custom";
                    var item = preset.animPresets[i];
                    if (string.IsNullOrEmpty(item.name))
                    {
                        animPresetNames[i + 1] = "Unkonw-" + i;
                    }
                    else
                    {
                        animPresetNames[i + 1] = item.name;
                    }
                }
            }
            if (animPresetNames != null && animPresetNames.Length > 0)
            {
                animPreset = EditorGUILayout.Popup("AnimPreset:", animPreset + 1, animPresetNames) - 1;
            }
            else
            {
                animPreset = -1;
            }
            //say.portraitPresetIndex = portPreset;
            animPressetIndexProp.intValue = animPreset;

            if (animPreset >= 0)
            {
                GUILayout.Label("Anim:" + animPresetNames[animPreset]);
            }
            else
            if (animPreset < 0 && port != null &&
               port.charLayers.Length > 0)
            {
                //GUILayout.Label("Custom Anim:");
                //var setting = say.animClips;

                //if (setting == null
                //|| setting.Length != port.charLayers.Length
                //)
                //{
                //    setting = new int[port.charLayers.Length];
                //    for (int i = 0 ; i < setting.Length ; i++)
                //    {
                //        setting[i] = -1;
                //    }
                //}
                //for (int i = 0 ; i < port.charLayers.Length ; i++)
                //{
                //    string[] popStr = null;
                //    if (port.charLayers[i].sps != null && port.charLayers[i].sps.Count > 0)
                //    {
                //        popStr = new string[port.charLayers[i].sps.Count + 1];
                //        popStr[0] = "Default";
                //        for (int j = 0 ; j < port.charLayers[i].sps.Count ; j++)
                //        {
                //            Sprite sp = port.charLayers[i].sps[j];
                //            popStr[j + 1] = ((sp == null) ? "Null" : sp.name);
                //        }

                //        setting[i] = EditorGUILayout.Popup(
                //            new GUIContent(string.Format("    Layer{0} :", i), "")
                //            , setting[i] + 1
                //            , popStr) - 1;
                //    }
                //}

                //portraitLayerSettingProp.ClearArray();
                //for (int i = setting.Length - 1 ; i >= 0 ; i--)
                //{
                //    portraitLayerSettingProp.InsertArrayElementAtIndex(0);
                //    var prop = portraitLayerSettingProp.GetArrayElementAtIndex(0);
                //    prop.intValue = setting[i];
                //}

                EditorGUILayout.PropertyField(animClipsProp, new GUIContent("Custom Anim"), true);

            }
        }

        private void DrawGUI_PortraitData()
        {
            Say say = target as Say;
            if (say == null) return;

            var port = say._Character.displayPortrait;
            if (port == null) return;

            DrawGUI_Portraits(port);
            EditorGUILayout.Space();
            DrawGUI_Anim(port);
        }

        bool DisplayPortraitInfo = true;

        public override void DrawCommandGUI()
        {
            serializedObject.Update();

            bool showPortraits = false;
            CommandEditor.ObjectField<Character>(characterProp,
                                                new GUIContent("Character", "Character that is speaking"),
                                                new GUIContent("<None>"),
                                                Character.ActiveCharacters);

            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.PrefixLabel(" ");
            characterProp.objectReferenceValue = (Character)EditorGUILayout.ObjectField(characterProp.objectReferenceValue, typeof(Character), true);
            EditorGUILayout.EndHorizontal();

            Say t = target as Say;

            // Only show portrait selection if...
            if (t._Character != null &&              // Character is selected
                t._Character.Portraits != null &&    // Character has a portraits field
                t._Character.Portraits.Count > 0)   // Selected Character has at least 1 portrait
            {
                showPortraits = true;
            }

            if (showPortraits)
            {
                CommandEditor.ObjectField<Sprite>(portraitProp,
                                                  new GUIContent("Portrait", "Portrait representing speaking character"),
                                                  new GUIContent("<None>"),
                                                  t._Character.Portraits);
            }
            else
            {
                if (!t.ExtendPrevious)
                {
                    t.Portrait = null;
                }
            }
            EditorGUILayout.PropertyField(showNeedNameProp);
            EditorGUILayout.PropertyField(showAfterHowManyNumber);
            EditorGUILayout.PropertyField(storyTextProp);

            EditorGUILayout.PropertyField(descriptionProp);

            EditorGUILayout.BeginHorizontal();

            EditorGUILayout.PropertyField(extendPreviousProp);

            GUILayout.FlexibleSpace();

            if (GUILayout.Button(new GUIContent("Tag Help", "View available tags"), new GUIStyle(EditorStyles.miniButton)))
            {
                showTagHelp = !showTagHelp;
            }
            EditorGUILayout.EndHorizontal();

            if (showTagHelp)
            {
                DrawTagHelpLabel();
            }

            EditorGUILayout.Separator();

            EditorGUILayout.PropertyField(voiceOverClipProp,
                                          new GUIContent("Voice Over Clip", "Voice over audio to play when the text is displayed"));

            EditorGUILayout.PropertyField(voiceClipNameProp);
            EditorGUILayout.PropertyField(PreVoiceClipNameProp);
            EditorGUILayout.PropertyField(showAlwaysProp);


            if (showAlwaysProp.boolValue == false)
            {
                EditorGUILayout.PropertyField(showCountProp);
            }

            GUIStyle centeredLabel = new GUIStyle(EditorStyles.label);
            centeredLabel.alignment = TextAnchor.MiddleCenter;
            GUIStyle leftButton = new GUIStyle(EditorStyles.miniButtonLeft);
            leftButton.fontSize = 10;
            leftButton.font = EditorStyles.toolbarButton.font;
            GUIStyle rightButton = new GUIStyle(EditorStyles.miniButtonRight);
            rightButton.fontSize = 10;
            rightButton.font = EditorStyles.toolbarButton.font;

            EditorGUILayout.PropertyField(fadeWhenDoneProp);
            EditorGUILayout.PropertyField(waitForClickProp);
            EditorGUILayout.PropertyField(stopVoiceoverProp);
            EditorGUILayout.PropertyField(setSayDialogProp);

            //char protrait popup menu
            if (t._Character != null)
            {
                EditorGUILayout.BeginVertical("box");
                EditorGUILayout.ObjectField(t._Character.displayPortrait, typeof(DialogPortrait), true);
                if (DisplayPortraitInfo)
                {
                    if (GUILayout.Button("Close Detail Info"))
                    {
                        DisplayPortraitInfo = false;
                    }
                    DrawGUI_PortraitData();
                }
                else
                {
                    if (GUILayout.Button("Show Detail Info"))
                    {
                        DisplayPortraitInfo = true;
                    }
                }
                EditorGUILayout.EndVertical();
            }
            EditorGUILayout.PropertyField(playTypeProp);
            EditorGUILayout.PropertyField(sayDialogAnimProp);
            EditorGUILayout.PropertyField(waitForVOProp);

            if (showPortraits && t.Portrait != null)
            {
                Texture2D characterTexture = t.Portrait.texture;
                float aspect = (float)characterTexture.width / (float)characterTexture.height;
                Rect previewRect = GUILayoutUtility.GetAspectRect(aspect, GUILayout.Width(100), GUILayout.ExpandWidth(true));
                if (characterTexture != null)
                {
                    GUI.DrawTexture(previewRect, characterTexture, ScaleMode.ScaleToFit, true, aspect);
                }
            }

            serializedObject.ApplyModifiedProperties();
        }
    }
}