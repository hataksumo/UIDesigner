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
        xml
    }

    enum ECellDataStructure
    {
        single,//一个值
        array,//数组
    }

}
