using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;

[LuaCallCSharp]
public class ParticleScaleUtility
{
    static void ScaleShurikenSystems( GameObject go, float scaleFactor )
    {
        //get all shuriken systems we need to do scaling on
        ParticleSystem[] systems = go.GetComponentsInChildren<ParticleSystem>(true);

        foreach (ParticleSystem system in systems)
        {
            var main = system.main;
            main.startSpeedMultiplier *= scaleFactor;
            main.startSizeMultiplier *= scaleFactor;
            main.gravityModifierMultiplier *= scaleFactor;
            var shape = system.shape;
            if (shape.enabled)
            {
                shape.scale *= scaleFactor;
            }
        }
    }

    static void ScaleTrailRenderers( GameObject go, float scaleFactor )
    {
        //get all animators we need to do scaling on
        TrailRenderer[] trails = go.GetComponentsInChildren<TrailRenderer>(true);

        //apply scaling to animators
        foreach (TrailRenderer trail in trails)
        {
            trail.startWidth *= scaleFactor;
            trail.endWidth *= scaleFactor;
        }
    }

    public static void ScaleEffectNode( GameObject go, float scaleFactor )
    {
        if (go == null || scaleFactor < 0.0001f) return;
        var oldScale = go.transform.localScale.x;
        var realFactor = scaleFactor / oldScale;
        go.transform.localScale *= realFactor;
        ScaleShurikenSystems(go, realFactor);
        ScaleTrailRenderers(go, realFactor);
    }

    public static void ScaleEffectNode_KeepRootLocalScale( GameObject go, float scaleFactor )
    {
        if (go == null || scaleFactor < 0.0001f) return;
        var oldScale = go.transform.localScale.x;
        var realFactor = scaleFactor / oldScale;
        var matrix = Matrix4x4.TRS(Vector3.one, Quaternion.identity, Vector3.one * realFactor);

        for (int i = 0 ; i < go.transform.childCount ; i++)
        {
            var trans = go.transform.GetChild(i);           
            trans.localPosition = matrix.MultiplyPoint(trans.localPosition);
            trans.localRotation = matrix.rotation * trans.localRotation;
            trans.localScale = matrix.MultiplyVector(trans.localScale);
        }

        ScaleShurikenSystems(go, realFactor);
        ScaleTrailRenderers(go, realFactor);
    }

}
