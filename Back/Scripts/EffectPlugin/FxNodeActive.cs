using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FxNodeActive : MonoBehaviour {

    public GameObject[] nodes;

    private void OnEnable () {
        if (nodes == null || nodes.Length < 1) {
            return;
        }
        for (int i = 0; i < nodes.Length; i++) {
            if( nodes[i] != null && !nodes[i].activeInHierarchy) {
                nodes[i].SetActive(true);
            }
        }
    }
}
