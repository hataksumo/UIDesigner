using System;
using System.Collections.Generic;
using System.Text;
using UnityEditor;
using UnityEngine;

namespace LJTilemaps
{

    [CreateAssetMenu(fileName = "New LJ Map Object Brush", menuName = "Tilemap Editor/Brushes/LJ Map Object Brush")]
    [CustomGridBrush(true, false, false, "LJ Map Object Brush")]
    public class LJMapObjectBrush : GridBrush
    {
        private LJMapObjLayerHolder mapObjLayerHolder;
        public LJMapObjLayerHolder LJMapObjLayerHolder
        {
            get { return mapObjLayerHolder; }
        }

        [SerializeField]
        [Tooltip("是否显示边框")]
        public bool showObjLayerBorder = true;
        [SerializeField]
        [Tooltip("是否显示文字")]
        public bool showObjLayerInfo = true;


        private void Awake()
        {
            
        }

        public override void Paint(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
        {
            //Debug.Log("Paint(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)");
            InitGridInfomation(gridLayout);
            //base.Paint(gridLayout, brushTarget, position);
            if (LJMapObjLayerHolder == null) {
                return;
            }
            //AddTileMapData(gridLayout, brushTarget, position);
        }

        private void InitGridInfomation(GridLayout gridLayout)
        {
            if (mapObjLayerHolder == null)
            {
                mapObjLayerHolder = gridLayout.GetComponent<LJMapObjLayerHolder>();
            }
        }

        public override void BoxErase(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
        {
            //Debug.Log("BoxErase(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)");
            InitGridInfomation(gridLayout);
            //base.BoxErase(gridLayout, brushTarget, position);
        }
        public override void BoxFill(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
        {
            //Debug.Log("BoxFill(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)");
            InitGridInfomation(gridLayout);
            //base.BoxFill(gridLayout, brushTarget, position);
        }

        public override void ChangeZPosition(int change)
        {
            //Debug.Log("ChangeZPosition(int change)");
            base.ChangeZPosition(change);
        }
        public override void Flip(FlipAxis flip, GridLayout.CellLayout layout)
        {
            //Debug.Log("Flip(FlipAxis flip, GridLayout.CellLayout layout)");
            base.Flip(flip, layout);
        }
        public override void FloodFill(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
        {
            //Debug.Log("FloodFill(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)");
            InitGridInfomation(gridLayout);
            //base.FloodFill(gridLayout, brushTarget, position);
        }
        public override void Move(GridLayout gridLayout, GameObject brushTarget, BoundsInt from, BoundsInt to)
        {
            //Debug.Log("Move(GridLayout gridLayout, GameObject brushTarget, BoundsInt from, BoundsInt to)");
            InitGridInfomation(gridLayout);
            base.Move(gridLayout, brushTarget, from, to);
        }

        public override void MoveEnd(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
        {
            //Debug.Log("MoveEnd(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)");
            InitGridInfomation(gridLayout);
            base.MoveEnd(gridLayout, brushTarget, position);
        }

        public override void MoveStart(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
        {
            //Debug.Log("MoveStart(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)");
            InitGridInfomation(gridLayout);
            base.MoveStart(gridLayout, brushTarget, position);
        }
        public override void Pick(GridLayout gridLayout, GameObject brushTarget, BoundsInt position, Vector3Int pickStart)
        {
            //Debug.Log("LJGridObjectBrush  Pick(GridLayout gridLayout, GameObject brushTarget, BoundsInt position, Vector3Int pickStart)");
            InitGridInfomation(gridLayout);
            //vector3Int = position.position;
            //base.Pick(gridLayout, brushTarget, position, pickStart);
        }
        public override void ResetZPosition()
        {
            //Debug.Log("LJGridObjectBrush ResetZPosition()");
            base.ResetZPosition();
        }
        public override void Rotate(RotationDirection direction, GridLayout.CellLayout layout)
        {
            //Debug.Log("LJGridObjectBrush Rotate(RotationDirection direction, GridLayout.CellLayout layout)");
        }
        public override void Select(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
        {
            //Debug.Log("LJGridObjectBrush Select(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)");
            InitGridInfomation(gridLayout);
            //vector3Int = position.position;
            base.Select(gridLayout, brushTarget, position);
            
        }

        public override void Erase(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
        {
            //Debug.Log("LJGridObjectBrush Erase(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)");
            InitGridInfomation(gridLayout);
            //base.Erase(gridLayout, brushTarget, position);
            //ClearTileMapData(gridLayout, brushTarget, position);
        }

        ///// <summary>
        ///// 添加地图数据
        ///// </summary>
        ///// <param name="grid"></param>
        ///// <param name="position"></param>
        //private void AddTileMapData(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
        //{
        //    TileInfo data = new TileInfo
        //    {
        //        //tile的中心点为四个顶点的其中一个点，默认左下角，我们偏移一下保证和其他游戏对象的中心点一致,这里是还原创建Grid时的偏移，保证对象刚好在tile的中心点
        //        pos = gridLayout.CellToWorld(position) + XMMapData.tileOffset3,
        //        ipos = position
        //    };
        //    for (int i = 0; i < cells.Length; i++)
        //    {
        //        XMTile xmtile = (XMTile)cells[i].tile;
        //        data.tile = xmtile;
        //    }
        //    XMMapData.AddData(brushTarget, data.pos, data);
        //}

        ///// <summary>
        ///// 清除地图数据
        ///// </summary>
        ///// <param name="position"></param>
        //private void ClearTileMapData(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
        //{
        //    Vector3 pos = gridLayout.CellToWorld(position) + XMMapData.tileOffset3;
        //    XMMapData.ClearData(brushTarget, pos);
        //}
    }

    [CustomEditor(typeof(LJMapObjectBrush))]
    public class LJGridObjectBrushEditor : GridBrushEditor
    {


        public static readonly string[] MAIN_NAMES = { "未定义", "域都", "卫都", "关隘", "城镇", "资源区", "讨伐区" };
        public static readonly int[] MAIN_INDEXS = { LJMapConst.MAP_OBJ_MAIN_TYPE.UNDEFINE, LJMapConst.MAP_OBJ_MAIN_TYPE.WONDER,
            LJMapConst.MAP_OBJ_MAIN_TYPE.CITY,LJMapConst.MAP_OBJ_MAIN_TYPE.GATE,
            LJMapConst.MAP_OBJ_MAIN_TYPE.TOWN, LJMapConst.MAP_OBJ_MAIN_TYPE.RESOURCE,
            LJMapConst.MAP_OBJ_MAIN_TYPE.TREASURE,
        };

        public static readonly string[] SUB_NAMES = { "未定义", "外层", "内层", "核心","阻塞"};
        public static readonly int[] SUB_INDEXS = { LJMapConst.MAP_OBJ_SUB_TYPE.UNDEFINE, LJMapConst.MAP_OBJ_SUB_TYPE.WONDER_PART_OUTSIDE,
            LJMapConst.MAP_OBJ_SUB_TYPE.WONDER_PART_INNER,LJMapConst.MAP_OBJ_SUB_TYPE.WONDER_PART_KERNEL,LJMapConst.MAP_OBJ_SUB_TYPE.WONDER_PART_UNUSERD,
        };

     
        private LJMapObjectBrush prefabBrush { get { return target as LJMapObjectBrush; } }
        private BoundsInt lastBoundsInt;

        public override void PaintPreview(GridLayout grid, GameObject brushTarget, Vector3Int position)
        {
            //base.PaintPreview(grid, brushTarget, position);
            //lastCellPosition = position;
        }

        public override void BoxFillPreview(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
        {
            //base.BoxFillPreview(gridLayout, brushTarget, position);
            lastBoundsInt = position;
        }
        public override void ClearPreview()
        {
            base.ClearPreview();
        }
        public override void DrawPreview(Rect previewArea)
        {
            base.DrawPreview(previewArea);
        }
        public override void FloodFillPreview(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
        {
            //base.FloodFillPreview(gridLayout, brushTarget, position);
            //lastCellPosition = position;
        }

        public override void OnPaintInspectorGUI()
        {
            base.OnPaintInspectorGUI();
            bool isChanged = false;

            EditorGUILayout.LabelField("蓝鲸图块编辑");
            List<Vector3Int> allLocations = new List<Vector3Int>();
            Vector3Int lastCellposition = lastBoundsInt.position;
            allLocations.Add(lastCellposition);
            foreach (Vector3Int location in lastBoundsInt.allPositionsWithin)
            {
                if (lastCellposition.Equals(location))
                {
                    continue;
                }
                allLocations.Add(location);
            }
            DrawInspectorAllLocation(allLocations);

            LJMapObjLayerHolder mapObjLayerHolder = prefabBrush.LJMapObjLayerHolder;
            if (mapObjLayerHolder == null)
            {
                EditorGUILayout.LabelField("未绑定 LJ Map Obj Layer Holder!");
                return;
            }

            LJMapObjLayerData mapObjLayerData = mapObjLayerHolder.mapObjLayerData;
            if (mapObjLayerData == null)
            {
                EditorGUILayout.LabelField("未加载地图!");
                return;
            }
            SerVector2Int lastCellVectPosition = new SerVector2Int(allLocations[0].x, allLocations[0].y);
            //SerVector3Int lastCellVectPosition = MapUtil.ConvertVec3Int2SerVec3Int(allLocations[0]);
            LJMapObject currentGirdObject = mapObjLayerData.GetPositionProperty(lastCellVectPosition);
            int drawSt = DrawInspectorEnableGirdObject(mapObjLayerData, currentGirdObject, allLocations);
            switch (drawSt)
            {
                case 1://有修改 已关闭
                    SaveLJMapObjLayerData(mapObjLayerData);
                    return;
                case 2://有修改 已开启
                    currentGirdObject = mapObjLayerData.GetPositionProperty(lastCellVectPosition);
                    isChanged = true;
                    break;
                case 3: // 无修改 关闭
                    return;
                case 4: // 无修改 开启
                    break;
              
            }

            DrawAllGirdObjectType(mapObjLayerData, currentGirdObject, allLocations,ref isChanged);
            //switch (currentGirdObject.MainType)
            //{
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.UNDEFINE:
            //        break;
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.WONDER:
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.CITY:
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.GATE:
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.TOWN:
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.RESOURCE:
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.TREASURE:
            //        //DrawAllGirdObjectMainId(gridMapData, currentGirdObject, allLocations,ref isChanged);
            //        break;
            //}


            //switch (currentGirdObject.MainType)
            //{
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.UNDEFINE:
            //        break;
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.WONDER:
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.CITY:
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.GATE:
            //        DrawAllGirdObjectSubId(gridMapData, currentGirdObject, allLocations,ref isChanged);
            //        break;
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.TOWN:
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.RESOURCE:
            //    case LJMapConst.MAP_OBJ_MAIN_TYPE.TREASURE:

            //        break;
            //}




            //EditorGUILayout.BeginHorizontal();
            //EditorGUILayout.PrefixLabel("扩展信息 : ");
            //ljGridObject.ExtendMsg = EditorGUILayout.DelayedTextField(ljGridObject.ExtendMsg);
            //EditorGUILayout.EndHorizontal();

            //EditorGUILayout.BeginHorizontal();
            //EditorGUILayout.PrefixLabel("名字 : ");
            //ljGridObject.Name = EditorGUILayout.DelayedTextField(ljGridObject.Name);
            //EditorGUILayout.EndHorizontal();

            //EditorGUILayout.BeginHorizontal();
            //EditorGUILayout.PrefixLabel("备注 : ");
            //ljGridObject.Info = EditorGUILayout.DelayedTextField(ljGridObject.Info);
            //EditorGUILayout.EndHorizontal();
            if (isChanged) {
                SaveLJMapObjLayerData(mapObjLayerData);
            }
        }

        private static void SaveLJMapObjLayerData( LJMapObjLayerData mapObjLayerData)
        {
            EditorUtility.SetDirty(mapObjLayerData);
            AssetDatabase.SaveAssets();
            AssetDatabase.Refresh();
        }

        private void DrawInspectorAllLocation(List<Vector3Int> allLocations) {
            StringBuilder sbInfo = new StringBuilder();
            sbInfo.AppendFormat("坐标 ");
            for (int i = 0, imax = allLocations.Count; i < imax; i++)
            {
                Vector3Int location = allLocations[i];
                sbInfo.Append("{");
                sbInfo.AppendFormat("{0}, {1}", location.x, location.y);
                sbInfo.Append("},");
            }
            EditorGUILayout.LabelField(sbInfo.ToString());
        }

        private int DrawInspectorEnableGirdObject(LJMapObjLayerData mapObjLayerData, LJMapObject currentGirdObject, List<Vector3Int> allLocations)
        {
         
            bool enableGridObject = currentGirdObject != null;
            bool guiEnableGridObject = enableGridObject;
            if (!enableGridObject)
            {
                EditorGUILayout.BeginHorizontal();
                EditorGUILayout.PrefixLabel("开启图块属性");
                guiEnableGridObject = EditorGUILayout.Toggle(enableGridObject);
                EditorGUILayout.EndHorizontal();
            }
            else
            {
                EditorGUILayout.BeginHorizontal();
                EditorGUILayout.PrefixLabel("关闭图块属性");
                guiEnableGridObject = EditorGUILayout.Toggle(enableGridObject);
                EditorGUILayout.EndHorizontal();
            }


            if (guiEnableGridObject != enableGridObject)
            {
                if (!guiEnableGridObject)
                {// clear data
                    ClearAllGirdObject(mapObjLayerData, allLocations);
                    return 1;
                }
                else
                {
                    EnsureCreateAllGirdObject(mapObjLayerData, allLocations);
                    return 2;
                }
            
            }
            else
            {
                if (!guiEnableGridObject)
                {
                    return 3;
                }
            }
            return 4;
        }
        private void EnsureCreateAllGirdObject(LJMapObjLayerData mapObjLayerData, List<Vector3Int> allLocations)
        {
            for (int i = 0, imax = allLocations.Count; i < imax; i++)
            {
                Vector3Int location = allLocations[i];
                SerVector2Int serVector3Int = new SerVector2Int(location.x, location.y);
                //SerVector3Int serVector3Int = MapUtil.ConvertVec3Int2SerVec3Int(allLocations[i]);
                if (mapObjLayerData.ContainsPositionProperty(serVector3Int)) {
                    continue;
                }
                mapObjLayerData.SetPositionProperty(serVector3Int, new LJMapObject(new Vector2Int(location.x, location.y)));
            }
        }

        private void ClearAllGirdObject(LJMapObjLayerData mapObjLayerData, List<Vector3Int> allLocations) {
            for (int i = 0, imax = allLocations.Count; i < imax; i++)
            {
                Vector3Int location = allLocations[i];
                SerVector2Int serVector2Int = new SerVector2Int(location.x, location.y);
                mapObjLayerData.RemovePositionProperty(serVector2Int);
            }
        }

        private void DrawAllGirdObjectType(LJMapObjLayerData mapObjLayerData, LJMapObject currentGirdObject, List<Vector3Int> allLocations,ref bool isChanged)
        {

            int mainType = EditorGUILayout.IntPopup("组类型 : ", currentGirdObject.MainType, MAIN_NAMES, MAIN_INDEXS);
            if( currentGirdObject.MainType != mainType){//改变主类型
                isChanged = true;
                EnsureCreateAllGirdObject(mapObjLayerData, allLocations);
                for (int i = 0, imax = allLocations.Count; i < imax; i++)
                {
                    Vector3Int location = allLocations[i];
                    SerVector2Int serVector2Int = new SerVector2Int(location.x, location.y);
                    LJMapObject gridObject = mapObjLayerData.GetPositionProperty(serVector2Int);
                    gridObject.MainType = mainType;
                    switch (mainType)
                    {
                        case LJMapConst.MAP_OBJ_MAIN_TYPE.UNDEFINE:
                            gridObject.SubType = LJMapConst.MAP_OBJ_SUB_TYPE.UNDEFINE;
                            break;
                        case LJMapConst.MAP_OBJ_MAIN_TYPE.WONDER:
                        case LJMapConst.MAP_OBJ_MAIN_TYPE.CITY:
                        case LJMapConst.MAP_OBJ_MAIN_TYPE.GATE:
                            if (gridObject.SubType == LJMapConst.MAP_OBJ_SUB_TYPE.UNDEFINE)
                            {
                                gridObject.SubType = LJMapConst.MAP_OBJ_SUB_TYPE.WONDER_PART_OUTSIDE;
                            }else if (gridObject.SubType == LJMapConst.MAP_OBJ_SUB_TYPE.PART)
                            {
                                gridObject.SubType = LJMapConst.MAP_OBJ_SUB_TYPE.WONDER_PART_OUTSIDE;
                            }
                            break;
                        case LJMapConst.MAP_OBJ_MAIN_TYPE.TOWN:
                        case LJMapConst.MAP_OBJ_MAIN_TYPE.RESOURCE:
                        case LJMapConst.MAP_OBJ_MAIN_TYPE.TREASURE:
                            gridObject.SubType = LJMapConst.MAP_OBJ_SUB_TYPE.PART;
                            break;
                    }
                }
            }

            switch (mainType)
            {
                case LJMapConst.MAP_OBJ_MAIN_TYPE.UNDEFINE:
                    EditorGUILayout.LabelField("请先定义地块类型!");
                    break;
                case LJMapConst.MAP_OBJ_MAIN_TYPE.WONDER:
                case LJMapConst.MAP_OBJ_MAIN_TYPE.CITY:
                case LJMapConst.MAP_OBJ_MAIN_TYPE.GATE:
                    int subType = EditorGUILayout.IntPopup("二级类型 : ", currentGirdObject.SubType, SUB_NAMES, SUB_INDEXS);
                    if (currentGirdObject.SubType != subType)
                    {//改变主类型
                        EnsureCreateAllGirdObject(mapObjLayerData, allLocations);
                        for (int i = 0, imax = allLocations.Count; i < imax; i++)
                        {
                            Vector3Int location = allLocations[i];
                            SerVector2Int serVector2Int = new SerVector2Int(location.x, location.y);
                            LJMapObject gridObject = mapObjLayerData.GetPositionProperty(serVector2Int);
                            gridObject.SubType = subType;
                            gridObject.MainType = mainType;
                        }
                    }
                    break;
                case LJMapConst.MAP_OBJ_MAIN_TYPE.TOWN:
                case LJMapConst.MAP_OBJ_MAIN_TYPE.RESOURCE:
                case LJMapConst.MAP_OBJ_MAIN_TYPE.TREASURE:
                    
                    break;
            }
        }

            private void DrawAllGirdObjectMainId(LJMapObjLayerData mapObjLayerData,LJMapObject currentGirdObject, List<Vector3Int> allLocations, ref bool isChanged)
        {
            //EditorGUILayout.BeginHorizontal();
            //EditorGUILayout.PrefixLabel("组id : ");
            //int mainId = EditorGUILayout.DelayedIntField(currentGirdObject.MainId);
            //EditorGUILayout.EndHorizontal();

            //if (mainId != currentGirdObject.MainId) {
            //    EnsureCreateAllGirdObject(gridMapData, allLocations);
            //    for (int i = 0, imax = allLocations.Count; i < imax; i++)
            //    {
            //        Vector3Int location = allLocations[i];
            //        LJGridObject gridObject = gridMapData.GetPositionProperty(MapUtil.ConvertVec3Int2SerVec3Int(allLocations[i]));
            //        gridObject.MainId = mainId;
            //    }
            //}
        }

        private void DrawAllGirdObjectSubId(LJMapObjLayerData mapObjLayerData, LJMapObject currentGirdObject, List<Vector3Int> allLocations, ref bool isChanged)
        {
            //EditorGUILayout.BeginHorizontal();
            //EditorGUILayout.PrefixLabel("扩展id : ");
            //int subId = EditorGUILayout.DelayedIntField(currentGirdObject.SubId);
            //EditorGUILayout.EndHorizontal();

            //if (subId != currentGirdObject.MainId)
            //{
            //    isChanged = true;
            //    EnsureCreateAllGirdObject(gridMapData, allLocations);
            //    for (int i = 0, imax = allLocations.Count; i < imax; i++)
            //    {
            //        Vector3Int location = allLocations[i];
            //        LJGridObject gridObject = gridMapData.GetPositionProperty(MapUtil.ConvertVec3Int2SerVec3Int(allLocations[i]));
            //        gridObject.SubId = subId;
            //    }
            //}
        }


        public override void OnSelectionInspectorGUI()
        {
            base.OnSelectionInspectorGUI();
          
        }



        public override void OnPaintSceneGUI(GridLayout gridLayout, GameObject brushTarget, BoundsInt position, GridBrushBase.Tool tool, bool executing)
        {
            lastBoundsInt = position;
            //base.OnPaintSceneGUI(gridLayout, brushTarget, position, tool, executing);
            //Handles.Label(gridLayout.CellToWorld(position.position), position.position.ToString());
            var zPosition = new Vector3Int(position.min.x, position.min.y, position.min.z);
            BoundsInt newPosition = new BoundsInt(zPosition, position.size);
            Vector3 offset = new Vector3(0f,0f,-0.1f);
            Vector3[] cellLocals = new Vector3[]
            {
                gridLayout.CellToLocal(new Vector3Int(newPosition.min.x, newPosition.min.y, newPosition.min.z)) + offset,
                gridLayout.CellToLocal(new Vector3Int(newPosition.max.x, newPosition.min.y, newPosition.min.z)) + offset,
                gridLayout.CellToLocal(new Vector3Int(newPosition.max.x, newPosition.max.y, newPosition.min.z)) + offset,
                gridLayout.CellToLocal(new Vector3Int(newPosition.min.x, newPosition.max.y, newPosition.min.z)) + offset
            };
            Handles.color = Color.blue;
            int index = 0;
                for (int j = cellLocals.Length - 1; index < cellLocals.Length; j = index++)
            {
                Handles.DrawLine(cellLocals[j], cellLocals[index]);
            }

            var labelText = "Pos: " + new Vector3Int(position.x, position.y, position.z);
            if (position.size.x > 1 || position.size.y > 1)
            {
                labelText += " Size: " + new Vector2Int(position.size.x, position.size.y);
            }

            Handles.Label(gridLayout.CellToWorld(new Vector3Int(position.x, position.y, position.z)) + offset, labelText);
        }

        void OnDrawSceneGUI(SceneView sceneView)
        {

            LJMapObjLayerHolder mapObjLayerHolder = prefabBrush.LJMapObjLayerHolder;
            if (mapObjLayerHolder == null)
            {
                return;
            }
            Grid grid = mapObjLayerHolder.GetComponent<Grid>();
            if (grid == null)
            {
                return;
            }

            LJMapObjLayerData mapObjLayerData = mapObjLayerHolder.mapObjLayerData;

            if (mapObjLayerData == null)
            {
                return;
            }

            if (!prefabBrush.showObjLayerBorder && !prefabBrush.showObjLayerInfo)
            {
                return;
            }

            Vector3 cellSize = grid.cellSize;
            //Debug.Log("we got cellSize : "+ cellSize);
            LJMapObjDict dict = mapObjLayerData.PositionProperties;
            StringBuilder stringBuilder = new StringBuilder();
            foreach (KeyValuePair<SerVector2Int, LJMapObject> kvp in dict)
            {
                SerVector2Int serCellPosInt = kvp.Key;
                Vector2Int cellPosInt = MapUtil.ConvertSerVec2Int2Vec2Int(serCellPosInt);
                LJMapObject ljGridObject = kvp.Value;
                Vector3[] cellCorners = MapUtil.GetMapWorldCorners(new Vector3Int(cellPosInt.x, cellPosInt.y, 0), grid);
                Handles.color = Color.cyan;
                if (prefabBrush.showObjLayerBorder)
                {
                    Handles.DrawLines(new Vector3[] { cellCorners[0], cellCorners[2], cellCorners[2], cellCorners[1], cellCorners[1], cellCorners[3], cellCorners[3], cellCorners[0], });
                }
                //switch (ljGridObject.d)
                if (ljGridObject == null)
                {
                    continue;
                }

                if (!prefabBrush.showObjLayerInfo)
                {
                    continue;
                }

                stringBuilder.Remove(0, stringBuilder.Length);

                switch (ljGridObject.MainType)
                {
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.UNDEFINE:
                        stringBuilder.Append("未定义");
                        break;
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.WONDER:
                        stringBuilder.Append("域都");
                        break;
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.CITY:
                        stringBuilder.Append("卫都");

                        break;
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.GATE:
                        stringBuilder.Append("关隘");

                        break;
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.TOWN:
                        stringBuilder.Append("城镇");
                        break;
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.RESOURCE:
                        stringBuilder.Append("资源区");
                        break;
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.TREASURE:
                        stringBuilder.Append("讨伐区");
                        break;
                }

                switch (ljGridObject.MainType)
                {
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.UNDEFINE:
                        break;
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.WONDER:
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.CITY:
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.GATE:
                        switch (ljGridObject.SubType)
                        {
                            case LJMapConst.MAP_OBJ_SUB_TYPE.UNDEFINE:
                                stringBuilder.Append(" 未定义 ");

                                break;
                            case LJMapConst.MAP_OBJ_SUB_TYPE.WONDER_PART_OUTSIDE:
                                stringBuilder.Append(" 外层 ");
                                break;
                            case LJMapConst.MAP_OBJ_SUB_TYPE.WONDER_PART_INNER:
                                stringBuilder.Append(" 内层 ");
                                break;
                            case LJMapConst.MAP_OBJ_SUB_TYPE.WONDER_PART_KERNEL:
                                stringBuilder.Append(" 核心 ");
                                break;
                            case LJMapConst.MAP_OBJ_SUB_TYPE.WONDER_PART_UNUSERD:
                                stringBuilder.Append(" 阻塞 ");
                                break;
                            case LJMapConst.MAP_OBJ_SUB_TYPE.PART:

                                break;
                        }

                        break;
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.TOWN:
                        //stringBuilder.AppendFormat("id : {0}", ljGridObject.GetGridObjectId());
                        break;
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.RESOURCE:
                        //stringBuilder.AppendFormat("id : {0}", ljGridObject.MainId);
                        break;
                    case LJTilemaps.LJMapConst.MAP_OBJ_MAIN_TYPE.TREASURE:
                        //stringBuilder.AppendFormat("id : {0}", ljGridObject.MainId);
                        break;

                }
                stringBuilder.AppendFormat("id : {0}", ljGridObject.GetGridObjectId());
                Handles.color = Color.green;
                Handles.Label(cellCorners[4], stringBuilder.ToString(), GUI.skin.customStyles[4]);
            }
        }

        protected override void OnEnable()
        {
            base.OnEnable();
            SceneView.onSceneGUIDelegate += OnDrawSceneGUI;
        }

        protected override void OnDisable()
        {
            base.OnDisable();
            SceneView.onSceneGUIDelegate -= OnDrawSceneGUI;
        }
    }
}
