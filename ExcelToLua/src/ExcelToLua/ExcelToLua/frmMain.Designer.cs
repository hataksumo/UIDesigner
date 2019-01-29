namespace ExcelToLua
{
    partial class frmMain
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.btnSele = new System.Windows.Forms.Button();
            this.btnCalELO = new System.Windows.Forms.Button();
            this.btnOptDesign = new System.Windows.Forms.Button();
            this.btnComoileLua = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnSele
            // 
            this.btnSele.Location = new System.Drawing.Point(1, 1);
            this.btnSele.Name = "btnSele";
            this.btnSele.Size = new System.Drawing.Size(92, 42);
            this.btnSele.TabIndex = 1;
            this.btnSele.Text = "选择文件";
            this.btnSele.UseVisualStyleBackColor = true;
            this.btnSele.Click += new System.EventHandler(this.btnSele_Click);
            this.btnSele.KeyUp += new System.Windows.Forms.KeyEventHandler(this.btnSele_KeyUp);
            // 
            // btnCalELO
            // 
            this.btnCalELO.Location = new System.Drawing.Point(214, 1);
            this.btnCalELO.Name = "btnCalELO";
            this.btnCalELO.Size = new System.Drawing.Size(96, 42);
            this.btnCalELO.TabIndex = 7;
            this.btnCalELO.Text = "计算ELO";
            this.btnCalELO.UseVisualStyleBackColor = true;
            this.btnCalELO.Click += new System.EventHandler(this.btnCalELO_Click);
            // 
            // btnOptDesign
            // 
            this.btnOptDesign.Location = new System.Drawing.Point(214, 60);
            this.btnOptDesign.Name = "btnOptDesign";
            this.btnOptDesign.Size = new System.Drawing.Size(96, 35);
            this.btnOptDesign.TabIndex = 9;
            this.btnOptDesign.Text = "导出设计表";
            this.btnOptDesign.UseVisualStyleBackColor = true;
            this.btnOptDesign.Click += new System.EventHandler(this.btnOptDesign_Click);
            // 
            // btnComoileLua
            // 
            this.btnComoileLua.Location = new System.Drawing.Point(1, 60);
            this.btnComoileLua.Name = "btnComoileLua";
            this.btnComoileLua.Size = new System.Drawing.Size(104, 39);
            this.btnComoileLua.TabIndex = 10;
            this.btnComoileLua.Text = "编译LUA";
            this.btnComoileLua.UseVisualStyleBackColor = true;
            this.btnComoileLua.Click += new System.EventHandler(this.btnComoileLua_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(332, 107);
            this.Controls.Add(this.btnComoileLua);
            this.Controls.Add(this.btnOptDesign);
            this.Controls.Add(this.btnCalELO);
            this.Controls.Add(this.btnSele);
            this.Name = "frmMain";
            this.Text = "数值策划工具";
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnSele;
        private System.Windows.Forms.Button btnCalELO;
        private System.Windows.Forms.Button btnOptDesign;
        private System.Windows.Forms.Button btnComoileLua;
    }
}

