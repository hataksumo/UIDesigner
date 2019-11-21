using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LJTilemaps;
using UnityEngine.Tilemaps;
using Cinemachine;
using HedgehogTeam.EasyTouch;
using System.Text;
using System;
using Nation;

public class LJTilemapTestDynamicLoadmap : MonoBehaviour
{
    //测试动态加载地图数据资源
    public LJMapInfoData mapData;
    public LJMapObjLayerData mapObjLayerData;
    public LJBaseTileConfig baseTileConfig;
    private Grid grid;
    private CinemachineComponentBase cinemachineComponentBase;
    private CinemachineTransposer cinemachineTransposer;
    private CinemachineNationCameraMoveEnd cinemachineEventAdd;
    private Transform moveTran;

    private Plane mapPlaneA;
    public float zzz = 1f;
    public Transform targetDirTran;


    private void TestCodeFunc()
    {
        GameObject cmVcam1Obj = GameObject.Find("CM vcam1");

        CinemachineVirtualCamera cinemachineVirtualCamera = cmVcam1Obj.GetComponent<CinemachineVirtualCamera>();
        cinemachineComponentBase = cinemachineVirtualCamera.GetCinemachineComponent(CinemachineCore.Stage.Body);
        cinemachineTransposer = cinemachineComponentBase as CinemachineTransposer;

        moveTran = GameObject.Find("cmCameraLookAt").transform;
        //CinemachineEventAdd cinemachineEventAdd = null;
        cinemachineEventAdd = cmVcam1Obj.AddComponent<CinemachineNationCameraMoveEnd>();
        cinemachineVirtualCamera.AddExtension(cinemachineEventAdd);
        cinemachineEventAdd.onVirtualCameraEnter += OnVirtualCameraEnter;


        //cinemachineComponentBase.FollowTargetPosition.Set(1, 1, 1);
        //cinemachineComponentBase.FollowTargetPosition;
        //CinemachineHardLockToTarget cinemachineHardLockToTarget = cinemachineComponentBase as CinemachineHardLockToTarget;

        EasyTouch.On_Drag += EasyTouchOn_Drag;
        EasyTouch.On_PinchIn += EasyTouchOn_PinchIn;
        EasyTouch.On_PinchOut += EasyTouchOn_PinchOut;
        EasyTouch.On_SimpleTap += EasyTouchOn_SimpleTap;


        mapPlaneA = new Plane(moveTran.forward * -1, Vector3.Distance(moveTran.position,Vector3.zero));
        



        // 方向
        // 位置
    }

    private void OnVirtualCameraEnter()
    {
        Debug.LogError(" LJTilemapTestDynamicLoadmap  OnVirtualCameraEnter");
    }

        private void EasyTouchOn_SimpleTap(Gesture gesture)
    {
        //float zoom = gesture.position * Time.deltaTime;
        Vector3 screenPos = new Vector3(gesture.position.x, gesture.position.y, zzz);
        Ray ray = Camera.main.ScreenPointToRay(screenPos);
        float rayLength = 0f;
        if (!mapPlaneA.Raycast(ray, out rayLength)) {
            Debug.LogError("not hit : ");
            return;
        }
        Vector3 hitPoint = ray.GetPoint(rayLength);
        GameObject gameObject = GameObject.CreatePrimitive(PrimitiveType.Cube);
        gameObject.transform.position = hitPoint;
        gameObject.transform.forward = moveTran.forward;
        //Debug.LogError("hitPoint : "+ hitPoint);

        SetAnimDirWithPos(gameObject.transform.position, targetDirTran);
    }

    /// <summary>
    /// 通过正切值获取精灵的朝向代号
    /// Unity3d和WPF的坐标系不同，所以需要改一下 返回的方向值
    /// </summary>
    /// <param name="targetX">目标点的X值</param>
    /// <param name="targetY">目标点的Y值</param>
    /// <param name="currentX">当前点的X值</param>
    /// <param name="currentY">当前点的Y值</param>
    /// <returns>精灵朝向代号(以北为0顺时针依次1,2,3,4,5,6,7)</returns>
    public static int GetDirectionByTan(double targetX, double targetY, double currentX, double currentY)
    {
        double tan = (targetY - currentY) / (targetX - currentX);
        if (Math.Abs(tan) >= Math.Tan(Math.PI * 3 / 8) && targetY > currentY)
        {
            return 0;
        }
        else if (Math.Abs(tan) > Math.Tan(Math.PI / 8) && Math.Abs(tan) < Math.Tan(Math.PI * 3 / 8) && targetX > currentX && targetY >= currentY)
        {
            return 1;
        }
        else if (Math.Abs(tan) <= Math.Tan(Math.PI / 8) && targetX >= currentX)
        {
            return 2;
        }
        else if (Math.Abs(tan) > Math.Tan(Math.PI / 8) && Math.Abs(tan) < Math.Tan(Math.PI * 3 / 8) && targetX > currentX && targetY <= currentY)
        {
            return 3;
        }
        else if (Math.Abs(tan) >= Math.Tan(Math.PI * 3 / 8) && targetY < currentY)
        {
            return 4;
        }
        else if (Math.Abs(tan) > Math.Tan(Math.PI / 8) && Math.Abs(tan) < Math.Tan(Math.PI * 3 / 8) && targetX < currentX && targetY <= currentY)
        {
            return 5;
        }
        else if (Math.Abs(tan) <= Math.Tan(Math.PI / 8) && targetX <= currentX)
        {
            return 6;
        }
        else if (Math.Abs(tan) > Math.Tan(Math.PI / 8) && Math.Abs(tan) < Math.Tan(Math.PI * 3 / 8) && targetX < currentX && targetY >= currentY)
        {
            return 7;
        }
        else
        {
            return 4;
        }
    }

    private void SetAnimDirWithPos(Vector3 nextPos,Transform trans)
    {
        //2.在自身的左右:   Vector3.Dot(transform.right, target.position - transform.position)     
        //返回值为正时,目标在自己的右方,反之在左方
        //3.在自身上下:   Vector3.Dot(transform.up, target.position - transform.position)    
        //返回值为正时,目标在自己的上方,反之在下方

        //int myDir = GetDirectionByTan(nextPos.x, nextPos.y, trans.position.x, trans.position.y);
        //Debug.Log("我的方向 : "+ myDir);


        Quaternion quaternion = Quaternion.Euler(0,0,45f);
        

        Vector3 dir1 = quaternion * trans.right;
        Vector3 dir2 = quaternion * (nextPos - trans.position);

        float leftOrRight = Vector3.Dot(dir1, dir2);
        dir1 = quaternion * trans.up;
        float upOrDown = Vector3.Dot(dir1, dir2);
       
        if (leftOrRight > 0f) //zuo
        {
            if (upOrDown > 0f) // 上
            {
                //4
                //Debug.Log("44444444444444");
                //右上边方向
            }
            else
            {
                //7
                //Debug.Log("77777777777777777777");
                //右下边方向
            }
        }
        else
        {
            if (upOrDown > 0f) // 上
            {
                //6
                //Debug.Log("66666666666666");
                //左上边方向
            }
            else
            {
                //5
                //Debug.Log("5555555555555555555");
                //左下边方向
            }
        }
    }



    private void EasyTouchOn_Drag(Gesture gesture)
    {
        //Ray ray = new Ray();
        
        //ray.direction;
        //ray.origin;
        //Camera.main.ScreenPointToRay(Vector3.zero);
        //gesture.position
        //gesture.swipe == EasyTouch.SwipeDirection.
        Vector2 scalePos = gesture.deltaPosition * Time.deltaTime;
        Vector3 objPos = moveTran.position;
        
        moveTran.position =new Vector3(objPos.x - scalePos.x, objPos.y - scalePos.y, objPos.z);
    }

    private void EasyTouchOn_PinchIn(Gesture gesture)
    {
        float zoom = gesture.deltaPinch * Time.deltaTime;

        Vector3 followVec3 = cinemachineTransposer.EffectiveOffset;
        cinemachineTransposer.m_FollowOffset = new Vector3(followVec3.x, followVec3.y, followVec3.z - zoom);
    }

    private void EasyTouchOn_PinchOut(Gesture gesture)
    {
        float zoom = gesture.deltaPinch * Time.deltaTime;
        Vector3 followVec3 = cinemachineTransposer.EffectiveOffset;
        cinemachineTransposer.m_FollowOffset = new Vector3(followVec3.x, followVec3.y, followVec3.z + zoom);
    }
    private void Awake()
    {
        
        TestCodeFunc();

    }
    public Grid LoadMap(LJMapInfoData mapData)
    {
        GameObject myGridObject = new GameObject("myGrid");
        Grid myGrid = myGridObject.AddComponent<Grid>();
        myGrid.cellLayout = GridLayout.CellLayout.Isometric;
        myGrid.cellSwizzle = GridLayout.CellSwizzle.XYZ;
        myGrid.cellSize = mapData.gridCellSize;
        myGrid.cellGap = mapData.gridCellGap;

        Transform parent = myGridObject.transform;
        parent.position = mapData.mapOffset;
        List<LJMapLayer> lJMapLayers = mapData.allLayers;

        for (int i = 0, imax = lJMapLayers.Count; i < imax; i++)
        {
            GameObject ground_1 = CreateTilemapWithNameAndOrderIndex(parent, lJMapLayers[i]);
        }
        return myGrid;
    }


    private GameObject CreateTilemapWithNameAndOrderIndex(Transform parent, LJMapLayer lJMapLayer)
    {
        GameObject gameObject = new GameObject(lJMapLayer.layerName);
        Tilemap tilemap = gameObject.AddComponent<Tilemap>();
        gameObject.transform.parent = parent;
        TilemapRenderer tilemapRenderer = gameObject.AddComponent<TilemapRenderer>();
        tilemapRenderer.mode = TilemapRenderer.Mode.Individual;
        tilemapRenderer.sortingOrder = lJMapLayer.orderInLayer;
        tilemapRenderer.sortingLayerID = lJMapLayer.sortingLayer;
        List<LJTileData> tileDatas = lJMapLayer.tileDatas;

        for (int i = 0, imax = tileDatas.Count; i < imax; i++)
        {
            LJTileData lJTileData = tileDatas[i];
            if (lJTileData.tileId < 0)
            {
                continue;
            }
            TileBase tileBase = baseTileConfig.GetTileBaseById(lJTileData.tileId);
            if (tileBase == null)
            {
                continue;
            }
            tilemap.SetTile(lJTileData.position, tileBase);
        }
        return gameObject;
    }




    private void Start()
    {

    }

    private void TestDebugAllBoundsInt(string beginStr, BoundsInt boundsInt)
    {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.AppendFormat("==============BeginLog {0} =================== \r\n", beginStr);
        //boundsInt.allPositionsWithin.Current
        BoundsInt.PositionEnumerator positionEnumerator = boundsInt.allPositionsWithin;
        bool flag = true;
        do
        {
            Vector3 now = positionEnumerator.Current;

            if (positionEnumerator.MoveNext())
            {
                stringBuilder.AppendFormat("[{0},{1},{2}],", now.x, now.y, now.z);

            }
            else {
                stringBuilder.AppendFormat("[{0},{1},{2}]\r\n", now.x, now.y, now.z);
                flag = false;
            }
            
        }
        while (flag);
        stringBuilder.Append("=================End========================= \r\n");
        Debug.LogFormat("{0}", stringBuilder.ToString());
    }

        private void TestBoundsInt()
    {
        BoundsInt boundsInt = new BoundsInt();
        TestDebugAllBoundsInt("1111", boundsInt);
        Debug.LogFormat("boundsInt {0} 1111", boundsInt);
        boundsInt.ClampToBounds(new BoundsInt(new Vector3Int(50, 0, 0), Vector3Int.one));
        TestDebugAllBoundsInt("222", boundsInt);
        Debug.LogFormat("boundsInt {0} 2222", boundsInt);

        boundsInt.ClampToBounds(new BoundsInt(new Vector3Int(-50, 0, 0), Vector3Int.one));
        TestDebugAllBoundsInt("3333", boundsInt);
        Debug.LogFormat("boundsInt {0} 3333", boundsInt);

        boundsInt.ClampToBounds(new BoundsInt(new Vector3Int(300, 0, 0), Vector3Int.one));
        TestDebugAllBoundsInt("444444", boundsInt);
        Debug.LogFormat("boundsInt {0} 444444", boundsInt);
    }


    private void OnGUI()
    {
        if (GUILayout.Button("动态加载地图!"))
        {
            

             Vector3 moveRandom = new Vector3(UnityEngine.Random.Range(0,10f), UnityEngine.Random.Range(0, 10f), moveTran.position.z);
            moveTran.position = moveRandom;
            cinemachineEventAdd.SetTriggerStatus(CinemachineNationCameraMoveEnd.TRIGGER_ST_WAIT);

            //if (grid != null) {
            //    Destroy(grid.gameObject);
            //}
            //grid = LoadMap(mapData);
        }

        if (GUILayout.Button("测试按钮!"))
        {
            TestBoundsInt();
        }
    }

}
