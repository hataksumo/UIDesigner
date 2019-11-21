//#define DEBUG_QUADTREE
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MapSys
{   
    public delegate void QtCellSwapDone();

    public static class QtConfig
    {
        // this value determines the smallest cell size
        // the space-partition process would stop dividing if cell size is smaller than this value
        public static float CellSizeThreshold = 10f;

        // swap-in distance of cells
        public static float CellSwapInDist = 16f;
        // swap-out distance of cells 
        //  (would be larger than swap-in to prevent poping)
        public static float CellSwapOutDist = 32f;

        // time interval to update the focus point,
        // so that a new swap would potentially triggered (in seconds)
        public static float SwapTriggerInterval = 0.8f;
        // time interval to update the in/out swapping queues (in seconds)
        public static float SwapProcessInterval = 0.5f;
    }

    // user data stored in quadtree leaves
    public interface IQtUserData
    {
        void Destroy();
        //Vector2 GetCenter();
        //Vector2 GetExtends();

        long GetID();

        void SwapIn();
        void SwapOut();

        bool IsSwapInCompleted();
        bool IsSwapOutCompleted();

        bool Intersects( Rect bound );

    }

    
    public class QtNode
    {
        public Rect Bound { get { return _bound; } }
        [SerializeField]
        private Rect _bound;
        public QtNode[] SubNodes { get { return _subNodes; } }
        public const int SubCount = 4;
        [SerializeField]
        private QtNode[] _subNodes = null;

        public QtNode( Rect bound )
        {
            _bound = bound;
        }

        public virtual void SetSubNodes( QtNode[] subNodes )
        {
            _subNodes = subNodes;
        }

        public virtual void Receive( IQtUserData userData )
        {
            if (!QtAlgo.Intersects(Bound, userData)) return;
            for (int i = 0 ; i < SubNodes.Length ; ++i)
            {
                SubNodes[i].Receive(userData);
            }
        }
    }

    
    public class QtLeaf : QtNode
    {
        public QtLeaf( Rect bound )
            : base(bound)
        {
        }

        public void Destroy()
        {           
            for (int i = 0 ; i < _affectedObjects.Count ; i++)
            {
                IQtUserData data = _affectedObjects[i];
                data.Destroy();
            }
            _affectedObjects.Clear();
        }
        public override void SetSubNodes( QtNode[] subNodes )
        {
            Debug.LogError("should never reaches here");
        }

        public override void Receive( IQtUserData userData )
        {
            if (!QtAlgo.Intersects(Bound, userData)) return;

            //if (Bound.Contains(userData.GetCenter()))
            //{
            //    _ownedObjects.Add(userData);
            //} else
            //{
            //    _affectedObjects.Add(userData);
            //}
            _affectedObjects.Add(userData);
        }

        public bool Contains( IQtUserData userData )
        {            
            if (_affectedObjects.Contains(userData))
                return true;
            return false;
        }

        public void SwapIn()
        {
                  
            for (int i = 0 ; i < _affectedObjects.Count ; ++i)
            {
                _affectedObjects[i].SwapIn();
            }
        }

        public void SwapOut()
        {
            for (int i = 0 ; i < _affectedObjects.Count ; ++i)
            {
                _affectedObjects[i].SwapOut();
            }
        }

        public bool IsSwapInCompleted()
        {         
            for (int i = 0 ; i < _affectedObjects.Count ; ++i)
            {
                if (!_affectedObjects[i].IsSwapInCompleted())
                    return false;
            }
            return true;
        }

        public bool IsSwapOutCompleted()
        {
            for (int i = 0 ; i < _affectedObjects.Count ; ++i)
            {
                if (!_affectedObjects[i].IsSwapOutCompleted())
                    return false;
            }
            return true;
        }

        public List<IQtUserData> AffectedObjects { get { return _affectedObjects; } }       
        private List<IQtUserData> _affectedObjects = new List<IQtUserData>();
    }

   
    public class QuadTree
    {
        public event QtCellSwapDone CellSwapDone = null;

        public Rect SceneBound { get { return _root.Bound; } }
        public Vector2 FocusPoint { get { return _focusPoint; } }       
        [SerializeField]
        private QtNode _root;
        private Vector2 _focusPoint;
        private QtLeaf _focusLeaf;

        private List<QtLeaf> _holdingLeaves = new List<QtLeaf>();
        private List<QtLeaf> _swapInQueue = new List<QtLeaf>();
        private List<QtLeaf> _swapOutQueue = new List<QtLeaf>();

        private float _lastSwapTriggeredTime = 0.0f;
        private bool _hasSwapTriggered = true;
        private float _lastSwapProcessedTime = 0.0f;

       
        private bool UpdateFocus( Vector2 focusPoint )
        {
            _focusPoint = focusPoint;

            QtLeaf newLeaf = QtAlgo.FindLeafRecursively(_root, _focusPoint);
            if (newLeaf == _focusLeaf || newLeaf == null)
                return false;
            _focusLeaf = newLeaf;

            return true;
        }

        private void PerformSwapInOut( QtLeaf activeLeaf )
        {
            // 1. the initial in/out leaves generation
            List<QtLeaf> inLeaves;
            List<QtLeaf> outLeaves;
            QtAlgo.GenerateSwappingLeaves(_root, activeLeaf, _holdingLeaves, out inLeaves, out outLeaves);

            // 2. filter out leaves which are already in the ideal states
            if (inLeaves != null) inLeaves.RemoveAll(( leaf ) => { return _swapInQueue.Contains(leaf); });

            // 3. append these new items to in/out queue
            if (outLeaves != null && outLeaves.Count > 0) SwapOut(outLeaves);
            if (inLeaves != null & inLeaves.Count > 0) SwapIn(inLeaves);
        }

        private void SwapIn( List<QtLeaf> inLeaves )
        {
            for (int i = 0 ; i < inLeaves.Count ; ++i)
            {
                QtLeaf leaf = inLeaves[i];
                leaf.SwapIn();
                _swapInQueue.Add(leaf);
            }
        }

        private void SwapOut( List<QtLeaf> outLeaves )
        {
            for (int i = 0 ; i < outLeaves.Count ; ++i)
            {
                QtLeaf leaf = outLeaves[i];
                leaf.SwapOut();
                _holdingLeaves.Remove(leaf);

                List<IQtUserData> affected = leaf.AffectedObjects;
                for (int j = 0 ; j < affected.Count ; j++)
                {
                    IQtUserData item = affected[j];
                    if (!IsHoldingUserData(item))
                        item.SwapOut();
                }
                _swapOutQueue.Add(leaf);
                //if (CellSwapOut != null)
                //    CellSwapOut(leaf);
            }
        }

        private bool IsHoldingUserData( IQtUserData userData )
        {
            for (int i = 0 ; i < _holdingLeaves.Count ; ++i)
            {
                if (_holdingLeaves[i].Contains(userData))
                {
                    return true;
                }
            }
            return false;
        }

        private void ProcessSwapQueues()
        {
            if (_swapInQueue.Count > 0)
            {
                for (int i = 0 ; i < _swapInQueue.Count ; ++i)
                {
                    QtLeaf leaf = _swapInQueue[i];
                    if (leaf.IsSwapInCompleted())
                    {
                        _holdingLeaves.Add(leaf);
                    }
                }

                _swapInQueue.RemoveAll(( leaf1 ) => _holdingLeaves.Contains(leaf1));
            }
            if (_swapOutQueue.Count > 0)
                _swapOutQueue.RemoveAll(( leaf1 ) => leaf1.IsSwapOutCompleted());
        }
        /// <summary>
        /// Utilities
        /// </summary>
#if DEBUG_QUADTREE
        public void DrawDebugLines()
        {
            QtAlgo.TraverseAllLeaves(_root, ( leaf ) =>
            {
                Color c = Color.black;
                if (leaf == _focusLeaf) c = Color.blue;
                else if (_swapInQueue.Contains(leaf)) c = Color.green;
                else if (_swapOutQueue.Contains(leaf)) c = Color.red;
                else if (_holdingLeaves.Contains(leaf)) c = Color.white;

                if (_holdingLeaves.Contains(leaf)) c = Color.yellow;
                if (leaf.AffectedObjects != null && leaf.AffectedObjects.Count > 0)
                {
                    c = Color.magenta;
                }
                QTreeUtil.DrawRect(leaf.Bound, 0f, c, 0.2f);
            });
        }
#endif

        #region Public Interface

        public QuadTree( Rect bound )
        {
            _root = new QtNode(bound);
            QtAlgo.BuildRecursively(_root);
        }

        public void Destroy()
        {
            CellSwapDone = null;
            for (int i = 0 ; i < _holdingLeaves.Count ; i++)
            {
                QtLeaf leaf = _holdingLeaves[i];
                leaf.Destroy();
            }
            _holdingLeaves.Clear();
            for (int i = 0 ; i < _swapInQueue.Count ; i++)
            {
                QtLeaf leaf = _swapInQueue[i];
                leaf.Destroy();
            }
            _swapInQueue.Clear();
            for (int i = 0 ; i < _swapOutQueue.Count ; i++)
            {
                QtLeaf leaf = _swapOutQueue[i];
                leaf.Destroy();
            }
            _swapOutQueue.Clear();
        }

        public void Update( Vector2 focusPoint,bool force )
        {
            if (Time.time - _lastSwapTriggeredTime > QtConfig.SwapTriggerInterval || force)
            {
                if (UpdateFocus(focusPoint) || force)
                    PerformSwapInOut(_focusLeaf);
                _lastSwapTriggeredTime = Time.time;
                _hasSwapTriggered = false;
            } else if (!_hasSwapTriggered && Time.time - _lastSwapTriggeredTime > 0.15f)
            {
                if (CellSwapDone != null) CellSwapDone();
                _hasSwapTriggered = true;
            }

            if (Time.time - _lastSwapProcessedTime > QtConfig.SwapProcessInterval)
            {
                ProcessSwapQueues();
                _lastSwapProcessedTime = Time.time;
            }
        }

        public void Receive( IQtUserData qud )
        {
            _root.Receive(qud);
        }
     
        #endregion


    }

}
