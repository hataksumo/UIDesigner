using UnityEngine;
using System.Collections.Generic;

/// Usage:
/// 
/// [System.Serializable]
/// class MyDictionary : SerializableDictionary<int, GameObject> {}
/// public MyDictionary dic;
///

    namespace LJTilemaps
{ 

[System.Serializable]
public class SerializableDictionary<TKey, TValue> : Dictionary<TKey, TValue>, ISerializationCallbackReceiver

{

    [SerializeField]
    private List<TKey> _keys = new List<TKey>();

    [SerializeField]
    private List<TValue> _values = new List<TValue>();



    public void OnBeforeSerialize()

    {

        _keys.Clear();
        _values.Clear();
        _keys.Capacity = this.Count;
        _values.Capacity = this.Count;

        foreach (var kvp in this)
        {
            _keys.Add(kvp.Key);
            _values.Add(kvp.Value);
        }

    }



    public void OnAfterDeserialize()
    {

        this.Clear();
        int count = Mathf.Min(_keys.Count, _values.Count);
        for (int i = 0; i < count; ++i)
        {
            this.Add(_keys[i], _values[i]);
        }
    }

}
}