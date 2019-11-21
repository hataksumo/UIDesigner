using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;
using System.Linq;

namespace UnityEditor
{
    /// <summary>
    /// 九宫格笔刷 用于画地形
    /// </summary>
    [CustomGridBrush(true, false, true, "Sudoku Brush")]
    [CreateAssetMenu(fileName = "New Sudoku Brush", menuName = "Tilemap Editor/Brushes/Sudoku Brush")]
    public class SudokuBrush : GridBrush
    {
        public enum PaintModel
        {
            SUDOKU = 0, // 九宫格画
            FOUR = 1, // 画4个
            SINGLE = 2, // 单个画
        };
        /// <summary>
        /// 绘制模式
        /// </summary>
        [Tooltip("绘制方式 SUDOKU 九宫格画 FOUR 画4个 SINGLE 单个画")]
        public PaintModel paintModel = PaintModel.SUDOKU;

        /// <summary>
        /// 绘制z坐标
        /// </summary>
        public int z = 0;

     
  
        public override void Paint(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
        {
            var zPosition = new Vector3Int(position.x, position.y, z);
            switch (paintModel) {
                case PaintModel.SUDOKU:
                    BoundsInt boundsInt;

                    if (gridLayout.cellLayout == GridLayout.CellLayout.Isometric || gridLayout.cellLayout == GridLayout.CellLayout.IsometricZAsY)
                    {
                        boundsInt = new BoundsInt(new Vector3Int(position.x - 1, position.y - 1, z), new Vector3Int(3, 3, 1));
                    }
                    else
                    {
                        boundsInt = new BoundsInt(new Vector3Int(position.x - 1, position.y - 1, z), new Vector3Int(3, 3, 1));
                    }

                    foreach (var point in boundsInt.allPositionsWithin)
                    {

                        base.Paint(gridLayout, brushTarget, point);
                    }
                    break;
                case PaintModel.FOUR:
                    Vector3Int[] cellPostions = null;
                    if (gridLayout.cellLayout == GridLayout.CellLayout.Isometric || gridLayout.cellLayout == GridLayout.CellLayout.IsometricZAsY)
                    {
                        cellPostions = new Vector3Int[]{
                         new Vector3Int(position.x, position.y, z),
                          new Vector3Int(position.x, position.y-1, z),
                           new Vector3Int(position.x-1, position.y, z),
                            new Vector3Int(position.x-1, position.y-1, z),
                    };
                    }
                    else
                    {
                        cellPostions = new Vector3Int[]{
                         new Vector3Int(position.x, position.y, z),
                          new Vector3Int(position.x + 1, position.y, z),
                           new Vector3Int(position.x, position.y-1, z),
                            new Vector3Int(position.x + 1, position.y-1, z),
                    };
                    }

                    for (int i = 0; i < cellPostions.Length; i++)
                    {
                        Vector3Int vector3Int = cellPostions[i];
                        base.Paint(gridLayout, brushTarget, vector3Int);
                    }
                    break;
                default:
                    base.Paint(gridLayout, brushTarget, zPosition);
                    break;
            }
        }
        public override void FloodFill(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
        {
            var zPosition = new Vector3Int(position.x, position.y, z);
            base.FloodFill(gridLayout, brushTarget, zPosition);
        }
        public override void Erase(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
        {
            var zPosition = new Vector3Int(position.x, position.y, z);
            base.Erase(gridLayout, brushTarget, zPosition);
        }

        public override void BoxFill(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
        {
            var zPosition = new Vector3Int(position.x, position.y, z);
            position.position = zPosition;
            base.BoxFill(gridLayout, brushTarget, position);
        }


       
        [CustomEditor(typeof(SudokuBrush))]
        public class SudokuBrushEditor : GridBrushEditor
        {
            private SudokuBrush sudokuBrush { get { return target as SudokuBrush; } }
            private Tilemap lastTilemap;

            public override void BoxFillPreview(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
            {
                Tilemap tilemap = brushTarget.GetComponent<Tilemap>();
                if (tilemap != null)
                    lastTilemap = tilemap;
                base.BoxFillPreview(gridLayout, brushTarget, position);
            }

            public override void FloodFillPreview(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
            {
                Tilemap tilemap = brushTarget.GetComponent<Tilemap>();
                if (tilemap != null)
                    lastTilemap = tilemap;
                base.FloodFillPreview(gridLayout, brushTarget, position);
            }

            public override void PaintPreview(GridLayout gridLayout, GameObject brushTarget, Vector3Int position)
            {
                Tilemap tilemap = brushTarget.GetComponent<Tilemap>();
                if (tilemap != null)
                    lastTilemap = tilemap;

                switch (sudokuBrush.paintModel)
                {
                    case PaintModel.SUDOKU:
                        BoundsInt boundsInt;

                        if (gridLayout.cellLayout == GridLayout.CellLayout.Isometric || gridLayout.cellLayout == GridLayout.CellLayout.IsometricZAsY)
                        {
                            boundsInt = new BoundsInt(new Vector3Int(position.x - 1, position.y - 1, sudokuBrush.z), new Vector3Int(3, 3, 1));
                        }
                        else
                        {
                            boundsInt = new BoundsInt(new Vector3Int(position.x - 1, position.y - 1, sudokuBrush.z), new Vector3Int(3, 3, 1));
                        }

                        foreach (var point in boundsInt.allPositionsWithin)
                        {

                            base.PaintPreview(gridLayout, brushTarget, point);
                        }
                        break;
                    case PaintModel.FOUR:
                        Vector3Int[] cellPostions = null;

                        if (gridLayout.cellLayout == GridLayout.CellLayout.Isometric || gridLayout.cellLayout == GridLayout.CellLayout.IsometricZAsY)
                        {
                            cellPostions = new Vector3Int[]{
                         new Vector3Int(position.x, position.y, sudokuBrush.z),
                          new Vector3Int(position.x, position.y-1, sudokuBrush.z),
                           new Vector3Int(position.x-1, position.y, sudokuBrush.z),
                            new Vector3Int(position.x-1, position.y-1, sudokuBrush.z),
                    };
                        }
                        else
                        {
                            cellPostions = new Vector3Int[]{
                         new Vector3Int(position.x, position.y, sudokuBrush.z),
                          new Vector3Int(position.x + 1, position.y, sudokuBrush.z),
                           new Vector3Int(position.x, position.y-1, sudokuBrush.z),
                            new Vector3Int(position.x + 1, position.y-1, sudokuBrush.z),
                    };
                        }

                        for (int i = 0; i < cellPostions.Length; i++)
                        {
                            Vector3Int vector3Int = cellPostions[i];
                            base.PaintPreview(gridLayout, brushTarget, vector3Int);
                        }
                        break;
                    default:
                        var zPosition = new Vector3Int(position.x, position.y, sudokuBrush.z);
                        base.PaintPreview(gridLayout, brushTarget, zPosition);
                        break;

                }

            }



            public override void OnPaintSceneGUI(GridLayout gridLayout, GameObject brushTarget, BoundsInt position, GridBrushBase.Tool tool, bool executing)
            {
                Tilemap tilemap = brushTarget.GetComponent<Tilemap>();
                if (tilemap != null)
                    lastTilemap = tilemap;

                base.OnPaintSceneGUI(gridLayout, brushTarget, position, tool, executing);

                switch (sudokuBrush.paintModel)
                {
                    case PaintModel.SUDOKU:
                      
                        break;
                    case PaintModel.FOUR:
                        var fourZPosition = new Vector3Int(position.min.x, position.min.y, sudokuBrush.z);
                        Vector3[] cellPostions = null;
                        BoundsInt newPosition = new BoundsInt(fourZPosition, position.size);

                        if (gridLayout.cellLayout == GridLayout.CellLayout.Isometric || gridLayout.cellLayout == GridLayout.CellLayout.Isometric)
                        {
                            cellPostions = new Vector3[]
                            {
                            gridLayout.CellToLocal(new Vector3Int(newPosition.max.x - 2 , newPosition.max.y - 1, newPosition.max.z)),
                            gridLayout.CellToLocal(new Vector3Int(newPosition.max.x + 0, newPosition.max.y - 1, newPosition.max.z)),
                            gridLayout.CellToLocal(new Vector3Int(newPosition.max.x - 1, newPosition.max.y - 0, newPosition.max.z)),
                            gridLayout.CellToLocal(new Vector3Int(newPosition.max.x  -1, newPosition.max.y - 2, newPosition.max.z))
                            };
                        }
                        else
                        {
                            cellPostions = new Vector3[]
                            {
                            gridLayout.CellToLocal(new Vector3Int(newPosition.max.x - 1 , newPosition.max.y - 1, newPosition.max.z)),
                            gridLayout.CellToLocal(new Vector3Int(newPosition.max.x + 1, newPosition.max.y - 1, newPosition.max.z)),
                            gridLayout.CellToLocal(new Vector3Int(newPosition.max.x , newPosition.max.y - 0, newPosition.max.z)),
                            gridLayout.CellToLocal(new Vector3Int(newPosition.max.x , newPosition.max.y - 2, newPosition.max.z))
                            };

                        }

                        Handles.color = Color.cyan;
                        Handles.DrawLine(cellPostions[0], cellPostions[1]);
                        Handles.color = Color.cyan;
                        Handles.DrawLine(cellPostions[2], cellPostions[3]);
                        break;
                    default:
                        
                        break;

                }

                var labelText = "Pos: " + new Vector3Int(position.x, position.y, sudokuBrush.z);
                if (position.size.x > 1 || position.size.y > 1)
                {
                    labelText += " Size: " + new Vector2Int(position.size.x, position.size.y);
                }

                Handles.Label(gridLayout.CellToWorld(new Vector3Int(position.x, position.y, sudokuBrush.z)), labelText);

            }

            public override void ClearPreview()
            {
                base.ClearPreview();
                if (lastTilemap != null)
                {
                    lastTilemap.ClearAllEditorPreviewTiles();
                    lastTilemap = null;
                }
            }
        }
    }
}
