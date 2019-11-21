using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using UnityEngine;

//
//using UnityEditor;
//
//[CustomEditor(typeof(BoneSync))]
//public class BoneSyncInspecter:Editor
//{
//    public override void OnInspectorGUI()
//    {
//        base.OnInspectorGUI();
//        if(GUILayout.Button("SettingBones"))
//        {
//            (target as BoneSync).SetBones();
//        }
//    }
//}
[System.Serializable]
public class ExtraBinding
{
    public Transform DriveBone;
    public Transform SyncBone;
    public Matrix4x4 trans;
}

[ExecuteInEditMode]
public class BoneSync : MonoBehaviour {

    public Transform DriveBoneRoot;
    public Transform SyncBoneRoot;

    public float scale = 1;


    [SerializeField]
    private List<Transform> _driveBones;
    [SerializeField]
    private List<Transform> _syncBones;

    public ExtraBinding[] ExtraBoneBingdings;

    public bool syncState = false;

    //private void OnEnable()
    //{
    //    if (ExtraBoneBingdings != null && ExtraBoneBingdings.Length > 0)
    //    {
    //        foreach (var bingding in ExtraBoneBingdings)
    //        {
    //            if (bingding.DriveBone != null && bingding.SyncBone != null)
    //            {
    //                bingding.trans = bingding.DriveBone.worldToLocalMatrix * bingding.SyncBone.localToWorldMatrix;
    //            }
    //        }
    //    }
    //    SetBones();
    //}

    // Update is called once per frame
	void LateUpdate () {

        if (!syncState) return;

	    Matrix4x4 c2p = Matrix4x4.TRS(SyncBoneRoot.localPosition,SyncBoneRoot.localRotation, Vector3.one* SyncBoneRoot.localScale.x);
	    Matrix4x4 l2wRole = DriveBoneRoot.localToWorldMatrix * c2p.inverse;
	    transform.rotation = l2wRole.rotation * Quaternion.identity;
	    transform.position = l2wRole.MultiplyPoint(Vector3.zero);


	    Matrix4x4 driveW2L = DriveBoneRoot.worldToLocalMatrix;       
        Matrix4x4 syncW2L = Matrix4x4.TRS(SyncBoneRoot.position, SyncBoneRoot.rotation, SyncBoneRoot.lossyScale * scale);
        Matrix4x4 transMatrix = syncW2L * driveW2L;


        for (int i = 0 ; i < _driveBones.Count ; i++)
        {
            var driveB = _driveBones[i];
            var syncB = _syncBones[i];

            if( driveB == DriveBoneRoot)
            {
                syncB.position = driveB.position;
                syncB.rotation = driveB.rotation;
            } else
            {
                SyncBone(driveB, syncB, transMatrix);
            }
        }
	    
	    if (ExtraBoneBingdings != null && ExtraBoneBingdings.Length > 0)
	    {
	        foreach (var bingding in ExtraBoneBingdings)
	        {
	            if (bingding.DriveBone != null && bingding.SyncBone != null)
	            {
	                Matrix4x4 mat = bingding.DriveBone.localToWorldMatrix * bingding.trans;
	                bingding.SyncBone.position = mat.MultiplyPoint(Vector3.zero);
	                bingding.SyncBone.rotation = mat.rotation;
	            }
	        }
	    }
	    
	}

    
    void SyncBone(Transform drive, Transform sync, Matrix4x4 transMatrix )
    {
        sync.position = transMatrix.MultiplyPoint(drive.position);
        sync.rotation = transMatrix.rotation * drive.rotation;
        //sync.localScale = transMatrix.lossyScale * drive.lossyScale;
    }



    public void SetBones()
    {
        if (DriveBoneRoot == null || SyncBoneRoot == null) return;
        string driveName = DriveBoneRoot.name;
        string syncName = SyncBoneRoot.name;



        //Transform[] driveTrans = DriveBoneRoot.GetComponentsInChildren<Transform>(true);
        //Transform[] syncTrans = SyncBoneRoot.GetComponentsInChildren<Transform>(true);

        //Dictionary<string, Transform> dictTrans = new Dictionary<string, Transform>();

        //foreach (var trans in syncTrans)
        //{
        //    string name = trans.name;
        //    if(name.StartsWith(syncName))
        //    {
        //        name = name.Substring(syncName.Length).Trim();
        //    }
        //    if (!dictTrans.ContainsKey(name))
        //        dictTrans.Add(name, trans);
        //    else
        //        Debug.LogError("Same bone name:" + name);
        //}

        _driveBones = new List<Transform>();
        _syncBones = new List<Transform>();

        _driveBones.Add(DriveBoneRoot);
        _syncBones.Add(SyncBoneRoot);
        //foreach (var t in driveTrans)
        //{
        //    string name = t.name;
        //    if (name.StartsWith(driveName))
        //    {
        //        name = name.Substring(driveName.Length).Trim();
        //    }

        //    if(dictTrans.ContainsKey(name))
        //    {
        //        _driveBones.Add(t);
        //        _syncBones.Add(dictTrans[name]);
        //    } else
        //    {
        //        Debug.Log("no bone in sync:" + t.name);
        //    }
        //}
        syncState = true;

    }

    public void StopSync()
    {
        syncState = false;
    }
}
