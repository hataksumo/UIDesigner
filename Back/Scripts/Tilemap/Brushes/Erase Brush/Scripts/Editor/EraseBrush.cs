using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UnityEditor
{
    [CustomGridBrush(true, false, false, "Erase Brush")]
    [CreateAssetMenu(fileName = "New Erase Brush", menuName = "Tilemap Editor/Brushes/Erase Brush")]
    public class EraseBrush : GridBrush {
        public int z = 0;

        public override void Paint(GridLayout grid, GameObject brushTarget, Vector3Int position)
        {
            var zPosition = new Vector3Int(position.x, position.y, z);
            base.Paint(grid, brushTarget, zPosition);
            //base.Erase(grid, brushTarget, zPosition);
        }
        
        public override void Erase(GridLayout grid, GameObject brushTarget, Vector3Int position)
        {
            var zPosition = new Vector3Int(position.x, position.y, z);
            base.Erase(grid, brushTarget, zPosition);
        }
        
        public override void FloodFill(GridLayout grid, GameObject brushTarget, Vector3Int position)
        {
            var zPosition = new Vector3Int(position.x, position.y, z);
            base.FloodFill(grid, brushTarget, zPosition);
            //base.Erase(grid, brushTarget, zPosition);
        }
        public override void Select(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
        {
            //base.Select(gridLayout, brushTarget, position);
            base.BoxErase(gridLayout, brushTarget, position);
        }

        public override void BoxFill(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
        {
            //foreach (Vector3Int location in position.allPositionsWithin)
            //{
            //    var zPosition = new Vector3Int(position.x, position.y, z);
            //    base.Erase(gridLayout, brushTarget, zPosition);
            //}
            base.BoxErase(gridLayout, brushTarget, position);
        }

        public override void BoxErase(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
        {
            base.BoxErase(gridLayout, brushTarget, position);
        }
    }

    [CustomEditor(typeof(EraseBrush))]
    public class EraseEditor : GridBrushEditor
    {
        private EraseBrush EraseBrush { get { return target as EraseBrush; } }

        public override void PaintPreview(GridLayout grid, GameObject brushTarget, Vector3Int position)
        {
            var zPosition = new Vector3Int(position.x, position.y, EraseBrush.z);
            base.PaintPreview(grid, brushTarget, zPosition);
        }
        public override void BoxFillPreview(GridLayout gridLayout, GameObject brushTarget, BoundsInt position)
        {
            //base.BoxFillPreview(gridLayout, brushTarget, position);
        }

        public override void OnPaintSceneGUI(GridLayout grid, GameObject brushTarget, BoundsInt position, GridBrushBase.Tool tool, bool executing)
        {
            base.OnPaintSceneGUI(grid, brushTarget, position, tool, executing);
            if (EraseBrush.z != 0)
            {
                var zPosition = new Vector3Int(position.min.x, position.min.y, EraseBrush.z);
                BoundsInt newPosition = new BoundsInt(zPosition, position.size);
                Vector3[] cellLocals = new Vector3[]
                {
                    grid.CellToLocal(new Vector3Int(newPosition.min.x, newPosition.min.y, newPosition.min.z)),
                    grid.CellToLocal(new Vector3Int(newPosition.max.x, newPosition.min.y, newPosition.min.z)),
                    grid.CellToLocal(new Vector3Int(newPosition.max.x, newPosition.max.y, newPosition.min.z)),
                    grid.CellToLocal(new Vector3Int(newPosition.min.x, newPosition.max.y, newPosition.min.z))
                };

                Handles.color = Color.blue;
                int i = 0;
                for (int j = cellLocals.Length - 1; i < cellLocals.Length; j = i++)
                {
                    Handles.DrawLine(cellLocals[j], cellLocals[i]);
                }
            }

            var labelText = "Pos: " + new Vector3Int(position.x, position.y, EraseBrush.z);
            if (position.size.x > 1 || position.size.y > 1) {
                labelText += " Size: " + new Vector2Int(position.size.x, position.size.y);
            }

            Handles.Label(grid.CellToWorld(new Vector3Int(position.x, position.y, EraseBrush.z)), labelText);
        }
    }
}
