using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MapSys
{
    public delegate QtNode QtCreateNode(Rect bnd);
    public delegate void QtForeachLeaf(QtLeaf leaf);

    public static class QTreeUtil
    {
#if UNITY_EDITOR
        public static void DrawRect( Rect r, float thick, Color c, float padding = 0.0f )
        {
            //Debug.DrawLine(
            //    new Vector3(r.xMin + padding, r.yMin + padding, thick)
            //    , new Vector3(r.xMin + padding, r.yMax - padding, thick), c);
            //Debug.DrawLine(
            //    new Vector3(r.xMin + padding, r.yMin + padding, thick)
            //    , new Vector3(r.xMax - padding, r.yMin + padding, thick), c);
            //Debug.DrawLine(
            //    new Vector3(r.xMax - padding, r.yMax - padding, thick)
            //    , new Vector3(r.xMin + padding, r.yMax - padding, thick), c);
            //Debug.DrawLine(
            //    new Vector3(r.xMax - padding, r.yMax - padding, thick)
            //    , new Vector3(r.xMax - padding, r.yMin + padding, thick), c);
            Gizmos.color = c;
            Gizmos.DrawWireCube(r.center, r.size);
        } 
#endif
    }

    public static class QtAlgo
    {
        public static bool Intersects(Rect nodeBound, IQtUserData userData)
        {
            //var center = userData.GetCenter();
            //var extend = userData.GetExtends();
            //Rect r = new Rect(
            //    center.x - extend.x,
            //    center.y - extend.y,
            //    extend.y * 2.0f,
            //    extend.y * 2.0f);
            //return nodeBound.Overlaps(r);
            return userData.Intersects(nodeBound);
        }

        private static bool Intersects(Rect nodeBound, Vector2 targetCenter, float targetRadius)
        {
            bool xOutside = targetCenter.x + targetRadius < nodeBound.xMin || targetCenter.x - targetRadius > nodeBound.xMax;
            bool yOutside = targetCenter.y + targetRadius < nodeBound.yMin || targetCenter.y - targetRadius > nodeBound.yMax;
            bool outside = xOutside || yOutside;
            return !outside;
        }

        public static void BuildRecursively(QtNode node)
        {
            // parameters
            float subWidth = node.Bound.width * 0.5f;
            float subHeight = node.Bound.height * 0.5f;
            bool isPartible = subWidth >= QtConfig.CellSizeThreshold && subHeight >= QtConfig.CellSizeThreshold;

            // create subnodes
            QtCreateNode _nodeCreator = (bnd) => new QtNode(bnd);
            QtCreateNode _leafCreator = (bnd) => new QtLeaf(bnd);
            QtCreateNode creator = isPartible ? _nodeCreator : _leafCreator;
            node.SetSubNodes(new QtNode[] {
            creator(new Rect(node.Bound.xMin,             node.Bound.yMin,                subWidth, subHeight)),
            creator(new Rect(node.Bound.xMin + subWidth,  node.Bound.yMin,                subWidth, subHeight)),
            creator(new Rect(node.Bound.xMin,             node.Bound.yMin + subHeight,    subWidth, subHeight)),
            creator(new Rect(node.Bound.xMin + subWidth,  node.Bound.yMin + subHeight,    subWidth, subHeight)),
            });

            // do it recursively
            if (isPartible)
            {
                for (int i = 0; i < node.SubNodes.Length; i++)
                {
                    BuildRecursively(node.SubNodes[i]);
                }
            }
        }

        public static void TraverseAllLeaves(QtNode node, QtForeachLeaf func)
        {
            if (node is QtLeaf || node.SubNodes== null||node.SubNodes.Length < 1)
                func(node as QtLeaf);
            else
            {
                for (int i = 0; i < node.SubNodes.Length; ++i)
                {
                    TraverseAllLeaves(node.SubNodes[i], func);
                }
            }
        }

        public static QtLeaf FindLeafRecursively(QtNode node, Vector2 point)
        {
            if (!node.Bound.Contains(point))
                return null;

            var ret = node as QtLeaf;
            if( ret != null)
            {
                return ret;
            }          

            for (int i = 0; i < node.SubNodes.Length; ++i)
            {
                QtLeaf leaf = FindLeafRecursively(node.SubNodes[i], point);
                if (leaf != null)
                    return leaf;
            }
            throw new System.Exception("FindLeafRecursively : should never reaches here");
        }

        public static void GenerateSwappingLeaves(
            QtNode node, QtLeaf active, List<QtLeaf> holdingLeaves
            , out List<QtLeaf> inLeaves, out List<QtLeaf> outLeaves
            )
        {
            List<QtLeaf> inList = null;
            GenerateLeavesByDist(node, active, QtConfig.CellSwapInDist, ref inList);
            if (inList != null) inList.RemoveAll((item) => holdingLeaves.Contains(item));
            inLeaves = inList;

            List<QtLeaf> outList = null;
            GenerateLeavesByDist(node, active, QtConfig.CellSwapOutDist, ref outList);
            if (outList != null)
            {
                List<QtLeaf> outFilteredList = new List<QtLeaf>();
                for (int i = 0; i < holdingLeaves.Count; ++i)
                {
                    QtLeaf leaf = holdingLeaves[i];
                    if (!outList.Contains(leaf))
                    {
                        outFilteredList.Add(leaf);
                    }
                }
                outLeaves = outFilteredList;
            }
            else
            {
                outLeaves = holdingLeaves;
            }
        }

        private static void GenerateLeavesByDist(QtNode node, QtLeaf active, float dist, ref List<QtLeaf> leaves)
        {
            if (!Intersects(node.Bound, active.Bound.center, dist))
                return;
           
            var leaf = node as QtLeaf;
            if( leaf != null)
            {
                if (leaves == null) leaves = new List<QtLeaf>();
                leaves.Add(node as QtLeaf);
            } else
            {
                for (int i = 0 ; i < node.SubNodes.Length ; ++i)
                {
                    GenerateLeavesByDist(node.SubNodes[i], active, dist, ref leaves);
                }
            }

        }
    }

}
