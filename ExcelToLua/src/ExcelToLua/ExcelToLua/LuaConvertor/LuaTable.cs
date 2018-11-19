using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExcelToLua
{

    abstract class LuaValue
    {
        public const uint TIGHT = 0x0001u;
        public const uint NONEKEY = 0x0002u;
        public const uint ISNEWLINE = 0x0004u;
        public const uint PRINTINDEX = 0x0008u;
        public string m_note;
        public string Note
        {
            get { return m_note; }
            set { m_note = value; }
        }


        //protected uint m_style;
        protected void output_t(StringBuilder sb, int v_level)
        {
            for (int i = 0; i < v_level; i++)
                sb.Append('\t');
        }

        protected virtual bool _IfPrintKey(string v_key, uint v_style)
        {
            if (string.IsNullOrEmpty(v_key) || (v_style & NONEKEY) != 0)
                return false;
            return true;
        }

        protected virtual void _OutputKey(StringBuilder sb, string v_key, int v_level, uint v_style)
        {
            if ((v_style & ISNEWLINE) != 0)
                output_t(sb, v_level);
            if (!_IfPrintKey(v_key, v_style))
                return;

            if (v_key[0] >= '0' && v_key[0] <= '9' || v_key[0] == '-' || v_key[0] == '.')
                v_key = string.Format("[\"{0}\"]", v_key);
            //if ((v_style & TIGHT) != 0)
            //    sb.Append(v_key + "=");
            //else
            sb.Append(v_key + " = ");
        }

        public virtual void outputSrc(StringBuilder sb, int v_level, string v_key, uint v_style = 0)
        {
            _OutputKey(sb, v_key, v_level, v_style);
            outputValue(sb, v_level, v_style);
        }
        public abstract void outputValue(StringBuilder sb, int v_level,uint v_style = 0);
    }

    class LuaNil : LuaValue
    {
        protected bool m_print;
        public void init(bool v_print)
        {
            m_print = v_print;
        }

        public override void outputValue(StringBuilder sb, int v_level, uint v_style = 0)
        {
            sb.Append("nil");
        }

        public bool IsPrint
        {
            get { return m_print; }
        }
    }

    class LuaBoolean : LuaValue
    {
        protected bool m_data;
        public LuaBoolean() { }
        public LuaBoolean(bool v_b)
        {
            init(v_b);
        }
        public void init(bool v_b)
        {
            m_data = v_b;
        }
        public override void outputValue(StringBuilder sb, int v_level, uint v_style = 0)
        {
            if (m_data)
                sb.Append("true");
            else
                sb.Append("false");
        }

    }

    class LuaInteger : LuaValue
    {
        protected int m_data;

        public LuaInteger() { }
        public LuaInteger(int v_int)
        {
            init(v_int);
        }
        public void init(int v_data)
        {
            m_data = v_data;
        }
        public override void outputValue(StringBuilder sb, int v_level, uint v_style = 0)
        {
            sb.Append(m_data);
        }
    }

    class LuaProb10k : LuaInteger
    {
        public LuaProb10k() { }
        public LuaProb10k(int v_data):base(v_data)
        {
 
        }
        protected override void _OutputKey(StringBuilder sb, string v_key, int v_level, uint v_style)
        {
            sb.AppendFormat("CluaProb10k:new({0})",m_data);
        }
    }

    class LuaFloat : LuaValue
    {
        protected float m_data;
        protected bool m_is_precision;
        protected int m_precision;

        public LuaFloat() { }
        public LuaFloat(float v_number)
        {
            init(v_number);
        }

        public void init(float v_data, bool v_is_precision = false, int v_precision = 2)
        {
            m_data = v_data;
            m_precision = v_precision;
            m_is_precision = v_is_precision;
        }
        public override void outputValue(StringBuilder sb, int v_level, uint v_style = 0)
        {
            if (m_is_precision)
                sb.Append(Math.Round(m_data, m_precision).ToString("#.##"));
            else
                sb.Append(m_data);
        }
    }

    class LuaDouble : LuaValue
    {
        protected double m_data;
        protected bool m_is_precision;
        protected int m_precision;

        public LuaDouble() { }
        public LuaDouble(double v_number)
        {
            init(v_number);
        }

        public void init(double v_data, bool v_is_precision = false, int v_precision = 2)
        {
            m_data = v_data;
            m_precision = v_precision;
            m_is_precision = v_is_precision;
        }
        public override void outputValue(StringBuilder sb, int v_level, uint v_style = 0)
        {
            if (m_is_precision)
                sb.Append(Math.Round(m_data, m_precision));
            else
                sb.Append(((Decimal)m_data).ToString());
        }
    }

    class LuaPercent : LuaDouble
    {
        public LuaPercent() { }
        public LuaPercent(float v_data)
            : base(v_data)
        {

        }

        public override void outputValue(StringBuilder sb, int v_level, uint v_style = 0)
        {
            sb.AppendFormat("CluaPercent:new({0})", m_data);
        }
    }

    class LuaString : LuaValue
    {
        protected string m_data;

        public LuaString() { }
        public LuaString(string v_str)
        {
            init(v_str);
        }

        public void init(string v_data)
        {
            m_data = v_data;
        }

        public override void outputValue(StringBuilder sb, int v_level, uint v_style = 0)
        {
            sb.Append("\"" + m_data + "\"");
        }
    }

    class LuaCString : LuaString
    {
        public override void outputSrc(StringBuilder sb, int v_level, string v_key, uint v_style = 0)
        {
            _OutputKey(sb, v_key, v_level, v_style);
            sb.Append("(_T\"" + m_data + "\")");
        }
    }

    class LuaRawTable : LuaString
    {
        public override void outputValue(StringBuilder sb, int v_level, uint v_style = 0)
        {
            sb.Append("{" + m_data + "}");
        }
    }


    abstract class LuaTable : LuaValue
    {
        protected bool m_isStretch;
        protected int m_maxElementOneLine;
        protected bool m_printIndex;
        //protected List<string> m_notes = new List<string>();

        protected abstract void _OnOutputInit();
        protected abstract string _GetKey(int v_idx);
        protected abstract LuaValue _GetValue(int v_index);
        protected abstract int _GetDataCount();
        public abstract bool IsEmpty();
        // public bool is_opt_empty = true;
        public abstract bool addData(Key v_key, LuaValue v_val, string v_note = null);


       
        private void _OutputElementSrcForTight(StringBuilder sb, int v_level, uint v_style)
        {
            sb.Append('{');
            int eleOneLine = 0;
            bool isNewLine = false;
            int dataCnt = _GetDataCount();
            for (int i = 0; i < dataCnt; i++)
            {
                LuaValue data = _GetValue(i);
                if (data == null)
                {
                    Console.WriteLine(string.Format("getvalue{0} is {1}", i, _GetValue(i)));
                }


                if (isNewLine)
                {
                    data.outputSrc(sb, v_level + 1, _GetKey(i), ISNEWLINE | TIGHT);
                    isNewLine = false;
                }
                else
                {
                    data.outputSrc(sb, v_level + 1, _GetKey(i), TIGHT);
                }
                if (i < dataCnt - 1)
                    sb.Append(",");
                eleOneLine++;
                if (m_maxElementOneLine!=-1&&eleOneLine >= m_maxElementOneLine)
                {
                    if (i < dataCnt - 1)
                    {
                        sb.Append("\r\n");
                        isNewLine = true;
                    }
                    eleOneLine = 0;                
                }
            }
            if (isNewLine)
                output_t(sb, v_level);
            sb.Append("}");
        }
        private void _OutputElementSrcForStretch(StringBuilder sb, int v_level, uint v_style)
        {
            sb.Append('{');
            if (m_note != null)
            {
                sb.AppendFormat("--{0}", m_note);
            }
            sb.Append("\r\n");
            int dataCnt = _GetDataCount();
            for (int i = 0; i < dataCnt; i++)
            {
                LuaValue data = _GetValue(i);
                data.outputSrc(sb, v_level + 1, _GetKey(i), ISNEWLINE);
                if (i < dataCnt - 1)
                    sb.Append(",");
                if (data.Note != null)
                {
                    sb.AppendFormat("--{0}", data.Note);
                }
                sb.Append("\r\n");
            }
            output_t(sb, v_level);
            sb.Append("}");
        }

        public override void outputValue(StringBuilder sb, int v_level, uint v_style = 0)
        {
            _OnOutputInit();
            if (m_isStretch)
                _OutputElementSrcForStretch(sb, v_level, v_style);
            else
                _OutputElementSrcForTight(sb, v_level, v_style);
        }

    }



    class LuaArray : LuaTable
    {
        protected List<LuaValue> m_data;

        public void init(bool v_isStretch = false, bool v_printIndex = false,
            int v_maxElementOneLine = 5)
        {
            m_isStretch = v_isStretch;
            m_printIndex = v_printIndex;
            m_maxElementOneLine = v_maxElementOneLine;
            m_data = new List<LuaValue>();
        }

        public void addData(LuaValue v_val)
        {
            LuaNil nilVal = v_val as LuaNil;
            if (nilVal == null || nilVal.IsPrint == true)
            {
                m_data.Add(v_val);
            }   
        }


        private int[] m_keys;
        protected override void _OnOutputInit()
        {
            m_keys = new int[m_data.Count];
            for (int i = 0; i < m_data.Count; i++)
                m_keys[i] = i;
        }

        protected override string _GetKey(int v_idx)
        {
            if (m_printIndex)
                return string.Format("[{0}]", v_idx + 1);
            else
                return null;
        }

        protected override void _OutputKey(StringBuilder sb, string v_key, int v_level, uint v_style)
        {
            base._OutputKey(sb, v_key, v_level, v_style);
        }

        protected override LuaValue _GetValue(int v_index)
        {
            return m_data[v_index];
        }
        protected override int _GetDataCount()
        {
            return m_data.Count;
        }

        public override bool IsEmpty()
        {
            return m_data.Count==0;
        }

        public override bool addData(Key v_key, LuaValue v_val, string v_note)
        {
            Debug.Assert(v_key.keytype == KeyType.Integer && v_key.ikey <= m_data.Count+1, "只能加入整型键的数据，并且下标不可越界");
            addData(v_val);
            return true;
        }
    }

    class LuaMap : LuaTable
    {
        protected Dictionary<string, LuaValue> m_sdata;
        protected Dictionary<int, LuaValue> m_idata;
        protected bool m_single_value_hide_key = false;

        public void init(bool v_isStretch = false,
            int v_maxElementOneLine = 5)
        {
            m_isStretch = v_isStretch;
            m_maxElementOneLine = v_maxElementOneLine;
            m_sdata = new Dictionary<string, LuaValue>();
            m_idata = new Dictionary<int, LuaValue>();
        }


        public override bool addData(Key v_key, LuaValue v_val, string v_note = null)
        {
            switch (v_key.keytype)
            {
                case KeyType.Integer:
                    return addData(v_key.ikey, v_val, v_note);
                case KeyType.String:
                    return addData(v_key.skey, v_val, v_note);
            }
            return false;
        }

        //当添加相同键时，return false
        public bool addData(string v_key, LuaValue v_val,string v_note=null)
        {
            LuaNil nilVal = v_val as LuaNil;
            if (nilVal == null || nilVal.IsPrint == true)
            {
                if (!m_sdata.ContainsKey(v_key))
                {
                    m_sdata.Add(v_key, v_val);
                    return true;
                }
                else
                {
                    m_sdata[v_key] = v_val;
                    return false;
                }
            }
            return true;
        }

        //当添加相同键时，return false
        public bool addData(int v_ikey, LuaValue v_val, string v_note = null)
        {
            LuaNil nilVal = v_val as LuaNil;
            if (nilVal == null || nilVal.IsPrint == true)
            {
                if (!m_idata.ContainsKey(v_ikey))
                {
                    m_idata.Add(v_ikey, v_val);
                    return true;
                }
                else
                {
                    m_idata[v_ikey] = v_val;
                    return false;
                }
            }
            return true;
        }

        private List<string> m_skeys;
        private List<int> m_ikeys;
        protected override void _OnOutputInit()
        {
            m_skeys = new List<string>(m_sdata.Keys);
            m_ikeys = new List<int>(m_idata.Keys);
            //m_skeys.Sort();
            m_ikeys.Sort();
        }

        public override void outputSrc(StringBuilder sb, int v_level, string v_key, uint v_style = 0)
        {
            if (m_single_value_hide_key)
            {
                _OnOutputInit();
                if (m_single_value_hide_key && m_skeys.Count + m_idata.Count == 1)
                {
                    LuaValue single_value = _GetValue(0);
                    single_value.outputSrc(sb, v_level, v_key, v_style);
          
                }
                else//这个分支几乎不会出现
                {
                    base.outputSrc(sb, v_level, v_key, v_style);
                }
            }
            else
            {
                base.outputSrc(sb, v_level, v_key, v_style);
            }
        }



        protected override string _GetKey(int v_idx)
        {
            if (v_idx < m_skeys.Count)
            {
                return m_skeys[v_idx];
            }
            return string.Format("[{0}]", m_ikeys[v_idx - m_skeys.Count]);
        }


        protected override LuaValue _GetValue(int v_index)
        {
            if (v_index < m_skeys.Count)
            {
                return m_sdata[m_skeys[v_index]];
            }
            return m_idata[m_ikeys[v_index - m_skeys.Count]];

        }
        protected override int _GetDataCount()
        {
            return m_idata.Count + m_sdata.Count;
        }

        public bool cointainKey(string v_key)
        {
            return m_sdata.ContainsKey(v_key);
        }

        public bool cointainKey(int v_key)
        {
            return m_idata.ContainsKey(v_key);
        }

        public bool cointainKey(Key v_key)
        {
            if (v_key.keytype == KeyType.Integer)
                return cointainKey(v_key.ikey);
            if (v_key.keytype == KeyType.String)
                return cointainKey(v_key.skey);
            return false;
        }



        public LuaValue this[string v_key]
        {
            get { return m_sdata[v_key]; }
        }

        public LuaValue this[int v_key]
        {
            get { return m_idata[v_key]; }
        }

        protected override void _OutputKey(StringBuilder sb, string v_key, int v_level, uint v_style)
        {
            base._OutputKey(sb, v_key, v_level, v_style);
            return;
        }

        public override bool IsEmpty()
        {
            return m_sdata.Count==0&&m_idata.Count==0;
        }

        public bool Single_value_hide_key
        {
            get { return m_single_value_hide_key; }
            set { m_single_value_hide_key = value; }
        }
    }

}
