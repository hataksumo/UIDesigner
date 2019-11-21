using UnityEngine;
using System.Collections;

public static class UnityExtra {

    static public T AddMissingComponent<T>(this GameObject go) where T : Component
    {
        T comp = go.GetComponent<T> ();
        if (comp == null) {
#if UNITY_EDITOR
            if (!Application.isPlaying) {
                UnityEditor.Undo.RecordObject (go, "Add " + typeof (T));
            }
#endif
            comp = go.AddComponent<T> ();
        }
        return comp;
    }
}
