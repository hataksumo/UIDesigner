namespace ExcelToLua
{
    partial class frmElo
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtRankScore = new System.Windows.Forms.TextBox();
            this.lblRank = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtTarRank = new System.Windows.Forms.TextBox();
            this.txtBattleTimes = new System.Windows.Forms.TextBox();
            this.btnCal = new System.Windows.Forms.Button();
            this.btnCalAI = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtRankScore
            // 
            this.txtRankScore.Location = new System.Drawing.Point(108, 12);
            this.txtRankScore.Name = "txtRankScore";
            this.txtRankScore.Size = new System.Drawing.Size(84, 21);
            this.txtRankScore.TabIndex = 0;
            this.txtRankScore.TextChanged += new System.EventHandler(this.txtRankScore_TextChanged);
            // 
            // lblRank
            // 
            this.lblRank.AutoSize = true;
            this.lblRank.Location = new System.Drawing.Point(12, 15);
            this.lblRank.Name = "lblRank";
            this.lblRank.Size = new System.Drawing.Size(65, 12);
            this.lblRank.TabIndex = 1;
            this.lblRank.Text = "实际rank分";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 133);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.label1.TabIndex = 2;
            this.label1.Text = "战斗次数";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 54);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 12);
            this.label2.TabIndex = 3;
            this.label2.Text = "目标rank分";
            // 
            // txtTarRank
            // 
            this.txtTarRank.Location = new System.Drawing.Point(108, 51);
            this.txtTarRank.Name = "txtTarRank";
            this.txtTarRank.Size = new System.Drawing.Size(84, 21);
            this.txtTarRank.TabIndex = 4;
            // 
            // txtBattleTimes
            // 
            this.txtBattleTimes.Location = new System.Drawing.Point(107, 130);
            this.txtBattleTimes.Name = "txtBattleTimes";
            this.txtBattleTimes.ReadOnly = true;
            this.txtBattleTimes.Size = new System.Drawing.Size(84, 21);
            this.txtBattleTimes.TabIndex = 5;
            // 
            // btnCal
            // 
            this.btnCal.Location = new System.Drawing.Point(14, 88);
            this.btnCal.Name = "btnCal";
            this.btnCal.Size = new System.Drawing.Size(75, 23);
            this.btnCal.TabIndex = 6;
            this.btnCal.Text = "计算";
            this.btnCal.UseVisualStyleBackColor = true;
            this.btnCal.Click += new System.EventHandler(this.btnCal_Click);
            // 
            // btnCalAI
            // 
            this.btnCalAI.Location = new System.Drawing.Point(107, 88);
            this.btnCalAI.Name = "btnCalAI";
            this.btnCalAI.Size = new System.Drawing.Size(75, 23);
            this.btnCalAI.TabIndex = 7;
            this.btnCalAI.Text = "计算AI";
            this.btnCalAI.UseVisualStyleBackColor = true;
            this.btnCalAI.Click += new System.EventHandler(this.btnCalAI_Click);
            // 
            // frmElo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(242, 167);
            this.Controls.Add(this.btnCalAI);
            this.Controls.Add(this.btnCal);
            this.Controls.Add(this.txtBattleTimes);
            this.Controls.Add(this.txtTarRank);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblRank);
            this.Controls.Add(this.txtRankScore);
            this.Name = "frmElo";
            this.Text = "frmElo";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtRankScore;
        private System.Windows.Forms.Label lblRank;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtTarRank;
        private System.Windows.Forms.TextBox txtBattleTimes;
        private System.Windows.Forms.Button btnCal;
        private System.Windows.Forms.Button btnCalAI;
    }
}