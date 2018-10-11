using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExcelToLua
{
    enum ELua_index_val_type
    {
        integer,
        @string,
        number,
        map,
        arr,
        empty
    }

    enum ELanguage
    {
        none,
        lua,
        xml,
        json
    }

    enum ECellDataStructure
    {
        single,//一个值
        array,//数组
    }

    enum EExcelMapDataType
    {
        indexMap,//处于索引位置的数据
        rowData,//对应excel表一行的数据
        cellTable,//对应excel表一行中，不是叶子节点的数据
        cellData//对应一个单元格的数据
    }


}
