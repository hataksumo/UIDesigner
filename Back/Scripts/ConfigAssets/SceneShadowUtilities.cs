using DynamicShadowProjector;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FastShadowReceiver;

public class SceneShadowUtilities
{
    public static void SetupSceneShadowProjector( Transform target, GameObject shadowProjector, GameObject shadowReceiver, Transform dirTrans )
    {
        if (shadowProjector == null || shadowReceiver == null || dirTrans == null
            )
        {
            return;
        }

        var receiver = shadowReceiver.GetComponent<InfinitePlaneShadowReceiver>();
        if (receiver == null)
        {
            Debug.LogError("Loaded an Error InfinitePlaneShadowReceiver!!");
            return;
        }



        //config projector position and size
        shadowProjector.transform.forward = dirTrans.forward;

        Vector3 posDir = -shadowProjector.transform.forward.normalized;
        var targetPos = ((target == null) ? Vector3.zero : target.position);
        shadowProjector.transform.position = posDir.normalized * 15f + targetPos;


        receiver.unityProjector = shadowProjector.GetComponent<Projector>();
        receiver.transform.position = targetPos;
        receiver.transform.rotation = Quaternion.identity;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="target"></param>
    /// <param name="dirTrans"></param>
    /// <returns>ShadowPorjector GameObject</returns>
    public static void CreateShadowNode( Transform target, Transform dirTrans, out GameObject shadowP, out GameObject shadowR , float size)
    {
        shadowP = null;
        shadowR = null;
        if (target == null || dirTrans == null
          )
        {
            return;
        }

        //check light dir
        if (Vector3.Dot(dirTrans.forward, Vector3.down) < 0.2f)
        {           
            return;
        }

        GameObject tmpPrefab = Resources.Load<GameObject>("SceneShadowPrefabs/SoftShadowProjector");
        if (tmpPrefab == null) return;
        shadowP = GameObject.Instantiate(tmpPrefab);

        tmpPrefab = Resources.Load<GameObject>("SceneShadowPrefabs/PlaneShadowReceiver");
        if (tmpPrefab == null) return;
        shadowR = GameObject.Instantiate(tmpPrefab);

        //config projector position and size
        SetupShadow(shadowP, shadowR, target, dirTrans,size);        
    }

    public static void SetupShadow( GameObject shadowP, GameObject shadowR, Transform target, Transform dirTrans ,float size)
    {
        if (shadowP == null || target == null || dirTrans == null) return;
        shadowP.transform.forward = dirTrans.forward;

        Vector3 posDir = -shadowP.transform.forward.normalized;
        shadowP.transform.position = posDir * (5.5f / (posDir.x * posDir.x + posDir.z * posDir.z)) + target.position;

        var receiver = shadowR.GetComponent<InfinitePlaneShadowReceiver>();
        receiver.unityProjector = shadowP.GetComponent<Projector>();
        receiver.transform.position = target.position;
        receiver.transform.rotation = Quaternion.identity;

        var p = shadowP.GetComponent<Projector>();
        if(p != null)
        {
            p.orthographicSize = size;
        }
    }


}
