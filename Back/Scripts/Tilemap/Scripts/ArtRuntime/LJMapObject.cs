using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace LJTilemaps
{
    
[Serializable]
public class LJMapObject : IComparable<LJMapObject>
{
        [SerializeField]
        private Vector2Int position; // 至少有一个自己的坐标(主键)
                                     /// <summary>
                                     /// 基本块信息
                                     /// </summary>
        //[SerializeField]
        //private LJGridBasic ljGridBasic;


        public override bool Equals(object obj)
        {
            if (obj == null) {
                return false;
            }
            LJMapObject other = obj as LJMapObject;
            if (other == null) {
                return false;
            }
            
            return position.Equals(other.position);
        }

        public override int GetHashCode()
        {
            return position.GetHashCode();
        }

        public int CompareTo(LJMapObject other)
        {
            return (int)(position.x + position.y - other.position.x - other.position.y + 0L);
        }

        /// <summary>
        /// 图块一级类型
        /// </summary>
        [SerializeField]
        private int mainType;
        /// <summary>
        /// 图块二级类型
        /// </summary>
        [SerializeField]
        private int subType;
        /// <summary>
        /// 0 不是主要地块 1是主要地块
        /// </summary>
        [SerializeField]
        private int mainBlock;

        ///// <summary>
        ///// 扩展主id
        ///// </summary>
        //[SerializeField]
        //private int mainId;

        ///// <summary>
        ///// 扩展二级id
        ///// </summary>
        //[SerializeField]
        //private int subId;




        ///// <summary>
        ///// 扩展信息
        ///// </summary>
        //private string extendMsg;

        ///// <summary>
        ///// 建筑名称
        ///// </summary>
        //private string name;

        ///// <summary>
        ///// 建筑信息
        ///// </summary>
        //private string info;

        public int MainType
        {
            get
            {
                return mainType;
            }

            set
            {
                mainType = value;
            }
        }

        public int SubType
        {
            get
            {
                return subType;
            }

            set
            {
                subType = value;
            }
        }

      

        ///// <summary>
        ///// 扩展块信息
        ///// </summary>
        //[SerializeField]
        //private LJGridBuilding ljGridBuilding;

        public LJMapObject(Vector2Int position)
        {
            this.position = position;
        }

        public Vector2Int Position
        {
            get
            {
                return position;
            }

            set
            {
                position = value;
            }
        }

        public int MainBlock
        {
            get
            {
                return mainBlock;
            }

            set
            {
                mainBlock = value;
            }
        }

        public int GetGridObjectId()
        {
            return MapUtil.GenerateCellIdByXY(position.x, position.y);
        }

        //public int MainId
        //{
        //    get
        //    {
        //        return MapUtil.GenerateGridDataId(position.x, position.y);
        //    }
        //}

     

        //public int SubId
        //{
        //    get
        //    {
        //        return MapUtil.GenerateGridDataId(position.x, position.y);
        //    }
        //}



        //public LJGridBasic LjGridBasic
        //{
        //    get
        //    {
        //        return ljGridBasic;
        //    }

        //    set
        //    {
        //        ljGridBasic = value;
        //    }
        //}

        //public LJGridBuilding LjGridBuilding
        //{
        //    get
        //    {
        //        return ljGridBuilding;
        //    }

        //    set
        //    {
        //        ljGridBuilding = value;
        //    }
        //}
    }
}