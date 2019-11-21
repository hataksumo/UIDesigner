using UnityEngine;
using System.Collections.Generic;
using UnityEditor;

namespace SpringBoneSystem
{

    public class SpringBoneCopyTool : EditorWindow
    {

        //[MenuItem("SpringBone/BoneCopyTool")]
        static void OpenWindow()
        {
            EditorWindow.GetWindow<SpringBoneCopyTool>().Show();
        }

        Transform from;
        Transform to;

        void OnGUI()
        {
            //GUILayout.BeginHorizontal();
            if (GUILayout.Button("Config", GUILayout.Width(120)))
            {
                DoCopy();
            }
            //GUILayout.EndHorizontal();

            from = EditorGUILayout.ObjectField("From", from, typeof(Transform), true) as Transform;
            to = EditorGUILayout.ObjectField("To", to, typeof(Transform), true) as Transform;
        }


        void DoCopy()
        {
            if (from == null || to == null)
            {
                return;
            }
            //from - to
            Dictionary<SpringCollider, SpringCollider> _scDict = new Dictionary<SpringCollider, SpringCollider>();

            //spring collider
            SpringCollider[] _sces = from.GetComponentsInChildren<SpringCollider>();
            foreach (var token in _sces)
            {
                string _path = GetPath_FromTrans(token.transform);
                Transform _toTarget = to.Find(_path);
                if (_toTarget == null)
                {
                    _toTarget = AddByPath_ToTrans(_path,token.transform);
   
                }
                if (_toTarget != null)
                {
                    SpringCollider _addSC = _toTarget.gameObject.GetComponent<SpringCollider>();
                    if (_addSC == null)
                    {
                        _addSC = _toTarget.gameObject.AddComponent<SpringCollider>();
                    }
                    _addSC.radius = token.radius;
                    _scDict.Add(token, _addSC);
                }
            }

            //spring bones
            SpringBone[] _sbs = from.GetComponentsInChildren<SpringBone>();
            List<SpringBone> _addedSB = new List<SpringBone>();
            foreach (var token in _sbs)
            {
                string _path = GetPath_FromTrans(token.transform);
                Transform _toTarget = to.Find(_path);
                if (_toTarget == null)
                {
                    _toTarget = AddByPath_ToTrans(_path, token.transform);
                }

                if (_toTarget != null)
                {
                    SpringBone _addSB = _toTarget.gameObject.GetComponent<SpringBone>();
                    if (_addSB == null)
                    {
                        _addSB = _toTarget.gameObject.AddComponent<SpringBone>();
                    }
                    _addSB.boneAxis = token.boneAxis;
                    _addSB.radius = token.radius;
                    _addSB.isUseEachBoneForceSettings = token.isUseEachBoneForceSettings;
                    _addSB.stiffnessForce = token.stiffnessForce;
                    _addSB.dragForce = token.dragForce;
                    _addSB.springForce = token.springForce;
                    _addSB.threshold = token.threshold;
                    _addSB.debug = token.debug;
                    //set colliders
                    if (token.colliders != null && token.colliders.Length > 0)
                    {
                        _addSB.colliders = new SpringCollider[token.colliders.Length];
                        for (int i = 0, imax = token.colliders.Length; i < imax; ++i)
                        {
                            if (_scDict.ContainsKey(token.colliders[i]))
                            {
                                _addSB.colliders[i] = _scDict[token.colliders[i]];
                            }
                            else
                            {
                                Debug.Log("Error Get Collider");
                            }
                        }
                    }

                    //set child
                    _path = GetPath_FromTrans(token.child);
                    Transform _tmpChild = to.Find(_path);
                    if (_tmpChild == null)
                    {
                        _tmpChild = AddByPath_ToTrans(_path,token.child);
                    }
                    if (_tmpChild != null)
                    {
                        _addSB.child = _tmpChild;
                    }

                    _addedSB.Add(_addSB);

                }
            }

            SpringManager _fromSM = from.GetComponentInChildren<SpringManager>();
            string _smPath = GetPath_FromTrans(_fromSM.transform);
            Transform _toSMTrans = AddByPath_ToTrans(_smPath, _fromSM.transform);
            if (_toSMTrans == null)
            {
                _toSMTrans = to;
            }
            SpringManager _toSM = _toSMTrans.gameObject.AddComponent<SpringManager>();
            _toSM.dynamicRatio = _fromSM.dynamicRatio;
            _toSM.stiffnessForce = _fromSM.stiffnessForce;
            _toSM.stiffnessCurve = new AnimationCurve(_fromSM.stiffnessCurve.keys);
            _toSM.dragForce = _fromSM.dragForce;
            _toSM.dragCurve = new AnimationCurve(_fromSM.dragCurve.keys);
            _toSM.debug = _fromSM.debug;
            _toSM.springBones = _addedSB.ToArray();
        }


        string GetPath_FromTrans(Transform _trans)
        {
            string _ret = _trans.name;
            Transform _tmp = _trans.parent;
            while (_tmp != null && _tmp != from)
            {
                _ret = _tmp.name + "/" + _ret;
                _tmp = _tmp.parent;
            }

            return _ret;
        }


        Transform AddByPath_ToTrans(string _path, Transform _copyNode)
        {
            if (string.IsNullOrEmpty(_path) || _copyNode == null)
            {
                return null;
            }
            Transform _tmp = to.Find(_path);
            if (_tmp != null)
            {
                return _tmp;
            }
            else
            {
                int _index = _path.LastIndexOf('/');
                if (_index < 0)
                {
                    return null;
                }
                string _parentPath = _path.Substring(0, _index);
                string _name = _path.Substring(_index + 1);

                _tmp = AddByPath_ToTrans(_parentPath, _copyNode.parent);
                if (_tmp == null)
                {
                    return null;
                }
                GameObject _newNode = new GameObject(_name);
                _newNode.transform.SetParent(_tmp);
                _tmp = _newNode.transform;
                _tmp.localPosition = _copyNode.localPosition;
                _tmp.localRotation = _copyNode.localRotation;
                _tmp.localScale = _copyNode.localScale; 

            }
            return _tmp;
        }


    }


}