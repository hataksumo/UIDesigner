using System.Collections;
using System.Collections.Generic;
using UnityEngine;



[CreateAssetMenu(fileName ="model_rolename_roleId_partname",menuName ="角色换装配置")]
public class RolePartConfig : ScriptableObject
{
    [System.Serializable]
    public class EffectConfig
    {
        public string boneName;
        public GameObject prefab;
        public Vector3 localPos = Vector3.zero;
        public Vector3 localAngle = Vector3.zero;
        public Vector3 localScale =Vector3.one;
    }

    public string replaceNodePath;
    public Mesh mesh;
    public Material[] mats;
    public EffectConfig[] effects;
}

public class RolePartUtil
{
    public class WeaponEffectData:MonoBehaviour
    {
        public List<GameObject> effects;
        public void Clear()
        {
            if(effects != null)
            {
                for (int i = effects.Count -1; i >= 0; i--)
                {
                    GameObject.Destroy(effects[i]);
                }
            }
            effects = null;
        }
    }
    public static void Replace( GameObject go, RolePartConfig config)
    {
        if (go == null || config == null) return;
        var smrTrans = go.transform.Find(config.replaceNodePath);
        if (smrTrans == null) return;
        var smr = smrTrans.GetComponent<SkinnedMeshRenderer>();
        if (smr == null) return;
        smr.sharedMesh = config.mesh;
        smr.sharedMaterials = config.mats;
        var wed = go.GetComponent<WeaponEffectData>();
        if(wed != null)
        {
            wed.Clear();
        }
        if (config.effects != null && config.effects.Length > 0)
        {
            var bones = smr.bones;
            List<GameObject> instEffects = new List<GameObject>();
            foreach (var e in config.effects)
            {
                if (string.IsNullOrEmpty(e.boneName) || e.prefab == null) continue;
                foreach (var b in bones)
                {
                    if (b.name.Equals(e.boneName))
                    {
                        var fxInst = GameObject.Instantiate(e.prefab).transform;
                        fxInst.SetParent(b);
                        fxInst.localPosition = e.localPos;
                        fxInst.localEulerAngles = e.localAngle;
                        fxInst.localScale = e.localScale;
                        instEffects.Add(fxInst.gameObject);
                        break;
                    }
                }
            }
            if(wed == null)
            {
                wed = go.AddComponent<WeaponEffectData>();
            }
            wed.effects = instEffects;
        }
    }

}
