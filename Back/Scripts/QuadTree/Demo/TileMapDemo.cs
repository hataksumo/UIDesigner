using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using MapSys;
using UnityEngine.UI;
public class TileMapDemo : MonoBehaviour
{
    public float CellSizeThreshold = 10f;

    // swap-in distance of cells
    public float CellSwapInDist = 16f;
    // swap-out distance of cells 
    //  (would be larger than swap-in to prevent poping)
    public float CellSwapOutDist = 32f;

    // time interval to update the focus point,
    // so that a new swap would potentially triggered (in seconds)
    public float SwapTriggerInterval = 0.8f;
    // time interval to update the in/out swapping queues (in seconds)
    public float SwapProcessInterval = 0.5f;

    public int cellCount;
    public float cellSize = 10f;
    public Transform camRoot;
    private QuadTree quadtree;

    public LineCtrlTest[] lines;

    public Text startInit;
    public Text endInit;

    private IEnumerator Start()
    {
        yield return new WaitForSeconds(4f);
        startInit.text = Time.realtimeSinceStartup.ToString();
        Rect mapRect = new Rect(
                (-cellCount / 2f) * cellSize,
                (-cellCount / 2f) * cellSize,
                cellCount * cellSize, cellCount * cellSize
            );


        QtConfig.CellSizeThreshold = CellSizeThreshold;
        QtConfig.CellSwapInDist = CellSwapInDist;
        QtConfig.CellSwapOutDist = CellSwapOutDist;
        QtConfig.SwapProcessInterval = SwapProcessInterval;
        QtConfig.SwapTriggerInterval = SwapTriggerInterval;

        quadtree = new QuadTree(mapRect);

        int id = 0;
        for (int i = 0 ; i < lines.Length ; i++)
        {
            //LineCtrlTest l = lines[i];
            //LineObject obj = new LineObject();
            //obj.id = id++;
            //obj.keyPoints = l.ctrlPoint;
            //obj.segmentNum = l.segment;
            ////obj.lineGo = l.gameObject;
            //l.gameObject.SetActive(false);
            //quadtree.Receive(obj);
            //if (i % 50 == 0)
            //    yield return null;
        }

        if (camRoot == null)
            camRoot = Camera.main.transform.parent;
        endInit.text = Time.realtimeSinceStartup.ToString();
    }

    private void Update()
    {
        if (quadtree == null) return;
       
        quadtree.Update(camRoot.position,false);
        // quadtree.DrawDebugLines();
    }

}
