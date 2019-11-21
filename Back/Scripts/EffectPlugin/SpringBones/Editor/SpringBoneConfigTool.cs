using UnityEngine;
using System.Collections.Generic;
using UnityEditor;

namespace SpringBoneSystem
{

    public class SpringBoneConfigTool : EditorWindow
    {

        [MenuItem("Assets/Tools/窗口工具/柔体骨骼配置")]
        static void OpenWindow()
        {
            EditorWindow.GetWindow<SpringBoneConfigTool>().Show();
        }

        GameObject sManagerGo = null;
        SpringManager sManager = null;
        List<SpringBone> addBones = new List<SpringBone>();
        List<GameObject> springRoots = new List<GameObject>();
        Vector2 scrollPos = Vector2.zero;
        void OnGUI()
        {
            //GUILayout.BeginHorizontal();
            if (GUILayout.Button("自动配置选中结点"))
            {
                DoConfig();
            }

            if (GUILayout.Button("更新角色配置"))
            {
                DoUpdate();
            }

            if (GUILayout.Button("为选中结点添加SpringCollider"))
            {
                Object[] _selecedOBs = Selection.objects;


                foreach (var token in _selecedOBs)
                {
                    var _tmpGo = token as GameObject;
                    if (_tmpGo != null)
                        AddSpringColider(_tmpGo.transform);
                }
            }

            //if (GUILayout.Button("+", GUILayout.Width(50)))
            //{
            //    Object[] _selecedOBs = Selection.objects;
            //    if (_selecedOBs != null && _selecedOBs.Length > 0)
            //    {
            //        foreach (var token in _selecedOBs)
            //        {
            //            if (token is GameObject && !springRoots.Contains(token as GameObject))
            //            {
            //                springRoots.Add(token as GameObject);
            //            }
            //        }
            //    }
            //}

            //GUILayout.EndHorizontal();

            scrollPos = GUILayout.BeginScrollView(scrollPos);
            EditorGUI.BeginChangeCheck();
            sManagerGo = EditorGUILayout.ObjectField("SpringManager", sManagerGo, typeof(GameObject), true) as GameObject;
            if (EditorGUI.EndChangeCheck())
            {
                if (sManagerGo != null)
                {
                    sManager = sManagerGo.GetComponent<SpringManager>();
                    if (sManager == null)
                    {
                        sManager = sManagerGo.AddComponent<SpringManager>();
                    }
                } else
                {
                    sManager = null;
                }
            }
            GUILayout.Label("Spring Roots");
            if (sManager != null && sManager.springBones != null && sManager.springBones.Length > 0)
            {
                for (int i = 0, imax = sManager.springBones.Length ; i < imax ; ++i)
                {
                    EditorGUILayout.ObjectField(i.ToString(), sManager.springBones[i], typeof(GameObject), true);
                }
            } else
            {
                GUILayout.Label("   没有配置节点");
            }
            GUILayout.EndScrollView();
        }

        private void OnFocus()
        {
            if (sManager == null)
            {
                sManager = GameObject.FindObjectOfType<SpringManager>();
                if (sManager != null)
                {
                    sManagerGo = sManager.gameObject;
                }

            }
        }

        void DoConfig()
        {
            if (sManager == null)
            {
                EditorUtility.DisplayDialog("Waring!", "请先配置SpringManager!!!", "OK");
                return;
            }

            addBones.Clear();

            Object[] _selecedOBs = Selection.objects;


            foreach (var token in _selecedOBs)
            {
                var _tmpGo = token as GameObject;
                if (_tmpGo != null)
                    AddSpringBone(_tmpGo.transform);
            }

            if (addBones.Count > 0)
            {

                List<SpringBone> _tmpSMBones = new List<SpringBone>();
                if (sManager.springBones != null && sManager.springBones.Length > 0)
                {
                    _tmpSMBones.AddRange(sManager.springBones);
                }

                foreach (var token in addBones)
                {
                    if (!_tmpSMBones.Contains(token))
                    {
                        _tmpSMBones.Add(token);
                    }
                }

                sManager.springBones = _tmpSMBones.ToArray();
            }


            ConfigCollider();
        }

        void AddSpringBone( Transform _trans )
        {
            if (_trans == null || _trans.childCount < 1)
            {
                return;
            }

            SpringBone _sb = _trans.GetComponent<SpringBone>();
            if (_sb == null)
            {
                _sb = _trans.gameObject.AddComponent<SpringBone>();
            }

            Transform _childTrans = _trans.GetChild(0);
            _sb.child = _childTrans;
            _sb.isUseEachBoneForceSettings = false;
            if (!addBones.Contains(_sb))
            {
                addBones.Add(_sb);
            }

            AddSpringBone(_childTrans);
        }


        void AddSpringColider( Transform trans )
        {
            if (trans == null) return;

            SpringBone _sb = trans.GetComponent<SpringBone>();
            if (_sb != null)
            {
                return;
            }

            var col = trans.GetComponent<SpringCollider>();
            if (col == null)
            {
                col = trans.gameObject.AddComponent<SpringCollider>();
            }
        }

        void DoUpdate()
        {
            SpringBone[] sbs = sManager.gameObject.GetComponentsInChildren<SpringBone>();

            List<SpringBone> _tmpSMBones = new List<SpringBone>();

            foreach (var token in sbs)
            {
                if (!_tmpSMBones.Contains(token))
                {
                    _tmpSMBones.Add(token);
                }               
            }

            sManager.springBones = _tmpSMBones.ToArray();

            ConfigCollider();
        }


        void ConfigCollider()
        {
            SpringCollider[] _colliders = sManager.gameObject.GetComponentsInChildren<SpringCollider>();

            if (
                _colliders == null
                || _colliders.Length < 1
                || sManager.springBones == null
                || sManager.springBones.Length < 1
                )

            {
                return;
            }

            foreach (var bone in sManager.springBones)
            {
                List<SpringCollider> _pickedCols = new List<SpringCollider>();
                foreach (var col in _colliders)
                {
                    float _dis = Vector3.Distance(bone.transform.position, col.transform.position);
                    if (_dis < ((bone.radius + col.radius) + 0.05f))
                    {
                        _pickedCols.Add(col);
                    }
                }

                bone.colliders = _pickedCols.ToArray();

            }

        }
    }

}