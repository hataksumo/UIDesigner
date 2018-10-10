using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Excel = Aspose.Cells;

namespace ExcelToLua
{
    public partial class frmElo : Form
    {
        public frmElo()
        {
            InitializeComponent();
        } 
        private void btnCal_Click(object sender, EventArgs e)
        {
            eloConfigs ecfgs = new eloConfigs();
            ecfgs.init();
            int realRank;
            if (!int.TryParse(txtRankScore.Text, out realRank))
            {
                Debug.Error("实际rank分格式不对   {0}", txtRankScore.Text);
                return;
            }
            int tarRank;
            if (!int.TryParse(txtTarRank.Text, out tarRank))
            {
                Debug.Error("目标rank分格式不对   {0}", txtRankScore.Text);
                return;
            }
            txtBattleTimes.Text = Math.Round(ecfgs.cal(realRank, tarRank, 0)).ToString();

        }

        private void txtRankScore_TextChanged(object sender, EventArgs e)
        {
            txtTarRank.Text = (int.Parse(txtRankScore.Text) - 10).ToString();
        }

        private void btnCalAI_Click(object sender, EventArgs e)
        {

        }
    }


    struct eloConfigData
    {
        public int winScore;
        public int loseScore;
        public eloConfigData(int v_winScore,int v_loseScore)
        {
            winScore = v_winScore;
            loseScore = v_loseScore;
        }
    }

    class eloConfigs
    {
        protected Dictionary<int, eloConfigData> m_datas;
        public void init()
        {
            m_datas = new Dictionary<int, eloConfigData>();
            Excel.Workbook book = new Aspose.Cells.Workbook(Config.elo_data_path.path);
            Excel.Worksheet sheet = book.Worksheets[Config.elo_data_path.sheets[0]];
            Excel.Cells data = sheet.Cells;
            for (int row = 3; row <= 1000; row++)
            {
                if (data[row, 0].Value == null || string.IsNullOrWhiteSpace(data[row, 0].Value.ToString()))
                    break;
                m_datas[data[row, 0].IntValue] = new eloConfigData( data[row, 1].IntValue, data[row, 2].IntValue);
            }
        }

        private double _getE(int v_score, int v_realScore)
        {
            return 1.0 / (1 + Math.Pow(10, -Math.Max(10, v_realScore - v_score) / 400.0));
        }

        public double cal(int v_rank, int v_tarRank, int v_iniRank)
        {
            double sum = 0;
            for (int i = v_iniRank; i <= v_tarRank; i++)
            {
                double E = _getE(i,v_rank);
                //int dif = Math.Min(750,v_rank - i);
                sum += 1 / (m_datas[0].winScore * E + m_datas[0].loseScore * (1 - E));
            }
            return sum;
        }
    }

    //struct aiInstenceData
    //{
    //    public int ai_score;
    //    public int arena_level;
    //    public int net;
    //}




}
