
namespace WinFormsApp2
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.Hastalarıgör = new System.Windows.Forms.Label();
            this.listelebotun = new System.Windows.Forms.Button();
            this.hastaeklelebel = new System.Windows.Forms.Label();
            this.hastaekleidtext = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.hastanegüncelle = new System.Windows.Forms.Label();
            this.hastadıtext = new System.Windows.Forms.TextBox();
            this.hastasoyadtext = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.hastaekletext = new System.Windows.Forms.Button();
            this.hastaneguncelleme = new System.Windows.Forms.Button();
            this.taburcubutton = new System.Windows.Forms.Button();
            this.taburculabel = new System.Windows.Forms.Label();
            this.tabutculabel = new System.Windows.Forms.Label();
            this.taburcuidtext = new System.Windows.Forms.TextBox();
            this.hastaid2 = new System.Windows.Forms.Label();
            this.hastayenihastane = new System.Windows.Forms.Label();
            this.yenihastaneidtext = new System.Windows.Forms.TextBox();
            this.güncellemehastaid = new System.Windows.Forms.TextBox();
            this.doktorgrntlebutton = new System.Windows.Forms.Button();
            this.doktorlarıgörüntülelabel = new System.Windows.Forms.Label();
            this.hastaaratext = new System.Windows.Forms.TextBox();
            this.doktoraratext = new System.Windows.Forms.TextBox();
            this.hastaara = new System.Windows.Forms.Button();
            this.doktorara = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.InactiveCaption;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(127, 23);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 33;
            this.dataGridView1.Size = new System.Drawing.Size(1219, 308);
            this.dataGridView1.TabIndex = 0;
            // 
            // Hastalarıgör
            // 
            this.Hastalarıgör.AutoSize = true;
            this.Hastalarıgör.Location = new System.Drawing.Point(24, 396);
            this.Hastalarıgör.Name = "Hastalarıgör";
            this.Hastalarıgör.Size = new System.Drawing.Size(167, 25);
            this.Hastalarıgör.TabIndex = 1;
            this.Hastalarıgör.Text = "Hastaları Görüntüle:";
            this.Hastalarıgör.Click += new System.EventHandler(this.label1_Click);
            // 
            // listelebotun
            // 
            this.listelebotun.Location = new System.Drawing.Point(492, 391);
            this.listelebotun.Name = "listelebotun";
            this.listelebotun.Size = new System.Drawing.Size(112, 34);
            this.listelebotun.TabIndex = 2;
            this.listelebotun.Text = "Listele";
            this.listelebotun.UseVisualStyleBackColor = true;
            this.listelebotun.Click += new System.EventHandler(this.button1_Click);
            // 
            // hastaeklelebel
            // 
            this.hastaeklelebel.AutoSize = true;
            this.hastaeklelebel.Location = new System.Drawing.Point(665, 381);
            this.hastaeklelebel.Name = "hastaeklelebel";
            this.hastaeklelebel.Size = new System.Drawing.Size(97, 25);
            this.hastaeklelebel.TabIndex = 7;
            this.hastaeklelebel.Text = "Hasta Ekle:";
            // 
            // hastaekleidtext
            // 
            this.hastaekleidtext.Location = new System.Drawing.Point(760, 378);
            this.hastaekleidtext.Name = "hastaekleidtext";
            this.hastaekleidtext.Size = new System.Drawing.Size(150, 31);
            this.hastaekleidtext.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(795, 353);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(77, 25);
            this.label5.TabIndex = 10;
            this.label5.Text = "Hasta id";
            // 
            // hastanegüncelle
            // 
            this.hastanegüncelle.AutoSize = true;
            this.hastanegüncelle.Location = new System.Drawing.Point(665, 515);
            this.hastanegüncelle.Name = "hastanegüncelle";
            this.hastanegüncelle.Size = new System.Drawing.Size(276, 25);
            this.hastanegüncelle.TabIndex = 11;
            this.hastanegüncelle.Text = "Hastanın Hastenesini Güncelleme:";
            this.hastanegüncelle.Click += new System.EventHandler(this.hastanegüncelle_Click);
            // 
            // hastadıtext
            // 
            this.hastadıtext.Location = new System.Drawing.Point(935, 380);
            this.hastadıtext.Name = "hastadıtext";
            this.hastadıtext.Size = new System.Drawing.Size(150, 31);
            this.hastadıtext.TabIndex = 12;
            // 
            // hastasoyadtext
            // 
            this.hastasoyadtext.Location = new System.Drawing.Point(1108, 381);
            this.hastasoyadtext.Name = "hastasoyadtext";
            this.hastasoyadtext.Size = new System.Drawing.Size(150, 31);
            this.hastasoyadtext.TabIndex = 13;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(970, 353);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(89, 25);
            this.label7.TabIndex = 14;
            this.label7.Text = "Hasta Adı";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(1126, 353);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(116, 25);
            this.label8.TabIndex = 15;
            this.label8.Text = "Hasta Soyadı";
            // 
            // hastaekletext
            // 
            this.hastaekletext.Location = new System.Drawing.Point(1264, 378);
            this.hastaekletext.Name = "hastaekletext";
            this.hastaekletext.Size = new System.Drawing.Size(112, 34);
            this.hastaekletext.TabIndex = 16;
            this.hastaekletext.Text = "Ekle";
            this.hastaekletext.UseVisualStyleBackColor = true;
            this.hastaekletext.Click += new System.EventHandler(this.hastaekletext_Click);
            // 
            // hastaneguncelleme
            // 
            this.hastaneguncelleme.Location = new System.Drawing.Point(1258, 511);
            this.hastaneguncelleme.Name = "hastaneguncelleme";
            this.hastaneguncelleme.Size = new System.Drawing.Size(112, 38);
            this.hastaneguncelleme.TabIndex = 17;
            this.hastaneguncelleme.Text = "Güncelle";
            this.hastaneguncelleme.UseVisualStyleBackColor = true;
            this.hastaneguncelleme.Click += new System.EventHandler(this.hastaneguncelleme_Click);
            // 
            // taburcubutton
            // 
            this.taburcubutton.Location = new System.Drawing.Point(982, 442);
            this.taburcubutton.Name = "taburcubutton";
            this.taburcubutton.Size = new System.Drawing.Size(112, 34);
            this.taburcubutton.TabIndex = 30;
            this.taburcubutton.Text = "Taburcu";
            this.taburcubutton.UseVisualStyleBackColor = true;
            this.taburcubutton.Click += new System.EventHandler(this.taburcubutton_Click);
            // 
            // taburculabel
            // 
            this.taburculabel.AutoSize = true;
            this.taburculabel.Location = new System.Drawing.Point(665, 447);
            this.taburculabel.Name = "taburculabel";
            this.taburculabel.Size = new System.Drawing.Size(147, 25);
            this.taburculabel.TabIndex = 29;
            this.taburculabel.Text = "Hasta Taburcu et:";
            // 
            // tabutculabel
            // 
            this.tabutculabel.AutoSize = true;
            this.tabutculabel.Location = new System.Drawing.Point(845, 416);
            this.tabutculabel.Name = "tabutculabel";
            this.tabutculabel.Size = new System.Drawing.Size(77, 25);
            this.tabutculabel.TabIndex = 28;
            this.tabutculabel.Text = "Hasta id";
            // 
            // taburcuidtext
            // 
            this.taburcuidtext.Location = new System.Drawing.Point(818, 444);
            this.taburcuidtext.Name = "taburcuidtext";
            this.taburcuidtext.Size = new System.Drawing.Size(150, 31);
            this.taburcuidtext.TabIndex = 27;
            // 
            // hastaid2
            // 
            this.hastaid2.AutoSize = true;
            this.hastaid2.Location = new System.Drawing.Point(982, 487);
            this.hastaid2.Name = "hastaid2";
            this.hastaid2.Size = new System.Drawing.Size(77, 25);
            this.hastaid2.TabIndex = 32;
            this.hastaid2.Text = "Hasta id";
            // 
            // hastayenihastane
            // 
            this.hastayenihastane.AutoSize = true;
            this.hastayenihastane.Location = new System.Drawing.Point(1108, 487);
            this.hastayenihastane.Name = "hastayenihastane";
            this.hastayenihastane.Size = new System.Drawing.Size(132, 25);
            this.hastayenihastane.TabIndex = 34;
            this.hastayenihastane.Text = "Yeni Hastane id";
            // 
            // yenihastaneidtext
            // 
            this.yenihastaneidtext.Location = new System.Drawing.Point(1102, 515);
            this.yenihastaneidtext.Name = "yenihastaneidtext";
            this.yenihastaneidtext.Size = new System.Drawing.Size(150, 31);
            this.yenihastaneidtext.TabIndex = 33;
            // 
            // güncellemehastaid
            // 
            this.güncellemehastaid.Location = new System.Drawing.Point(944, 515);
            this.güncellemehastaid.Name = "güncellemehastaid";
            this.güncellemehastaid.Size = new System.Drawing.Size(150, 31);
            this.güncellemehastaid.TabIndex = 35;
            // 
            // doktorgrntlebutton
            // 
            this.doktorgrntlebutton.Location = new System.Drawing.Point(492, 445);
            this.doktorgrntlebutton.Name = "doktorgrntlebutton";
            this.doktorgrntlebutton.Size = new System.Drawing.Size(112, 34);
            this.doktorgrntlebutton.TabIndex = 37;
            this.doktorgrntlebutton.Text = "Listele";
            this.doktorgrntlebutton.UseVisualStyleBackColor = true;
            this.doktorgrntlebutton.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // doktorlarıgörüntülelabel
            // 
            this.doktorlarıgörüntülelabel.AutoSize = true;
            this.doktorlarıgörüntülelabel.Location = new System.Drawing.Point(24, 451);
            this.doktorlarıgörüntülelabel.Name = "doktorlarıgörüntülelabel";
            this.doktorlarıgörüntülelabel.Size = new System.Drawing.Size(178, 25);
            this.doktorlarıgörüntülelabel.TabIndex = 36;
            this.doktorlarıgörüntülelabel.Text = "Doktorları Görüntüle:";
            // 
            // hastaaratext
            // 
            this.hastaaratext.Location = new System.Drawing.Point(197, 393);
            this.hastaaratext.Name = "hastaaratext";
            this.hastaaratext.Size = new System.Drawing.Size(185, 31);
            this.hastaaratext.TabIndex = 38;
            // 
            // doktoraratext
            // 
            this.doktoraratext.Location = new System.Drawing.Point(197, 448);
            this.doktoraratext.Name = "doktoraratext";
            this.doktoraratext.Size = new System.Drawing.Size(185, 31);
            this.doktoraratext.TabIndex = 39;
            // 
            // hastaara
            // 
            this.hastaara.Location = new System.Drawing.Point(415, 391);
            this.hastaara.Name = "hastaara";
            this.hastaara.Size = new System.Drawing.Size(71, 34);
            this.hastaara.TabIndex = 40;
            this.hastaara.Text = "Ara";
            this.hastaara.UseVisualStyleBackColor = true;
            this.hastaara.Click += new System.EventHandler(this.hastaara_Click);
            // 
            // doktorara
            // 
            this.doktorara.Location = new System.Drawing.Point(415, 445);
            this.doktorara.Name = "doktorara";
            this.doktorara.Size = new System.Drawing.Size(69, 34);
            this.doktorara.TabIndex = 41;
            this.doktorara.Text = "Ara";
            this.doktorara.UseVisualStyleBackColor = true;
            this.doktorara.Click += new System.EventHandler(this.doktorara_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(1510, 572);
            this.Controls.Add(this.doktorara);
            this.Controls.Add(this.hastaara);
            this.Controls.Add(this.doktoraratext);
            this.Controls.Add(this.hastaaratext);
            this.Controls.Add(this.doktorgrntlebutton);
            this.Controls.Add(this.doktorlarıgörüntülelabel);
            this.Controls.Add(this.güncellemehastaid);
            this.Controls.Add(this.hastayenihastane);
            this.Controls.Add(this.yenihastaneidtext);
            this.Controls.Add(this.hastaid2);
            this.Controls.Add(this.taburcubutton);
            this.Controls.Add(this.taburculabel);
            this.Controls.Add(this.tabutculabel);
            this.Controls.Add(this.taburcuidtext);
            this.Controls.Add(this.hastaneguncelleme);
            this.Controls.Add(this.hastaekletext);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.hastasoyadtext);
            this.Controls.Add(this.hastadıtext);
            this.Controls.Add(this.hastanegüncelle);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.hastaekleidtext);
            this.Controls.Add(this.hastaeklelebel);
            this.Controls.Add(this.listelebotun);
            this.Controls.Add(this.Hastalarıgör);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label Hastalarıgör;
        private System.Windows.Forms.Button listelebotun;
        private System.Windows.Forms.Label hastaeklelebel;
        private System.Windows.Forms.TextBox hastaekleidtext;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label hastanegüncelle;
        private System.Windows.Forms.TextBox hastadıtext;
        private System.Windows.Forms.TextBox hastasoyadtext;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button hastaekletext;
        private System.Windows.Forms.Button hastaneguncelleme;
        private System.Windows.Forms.Button taburcubutton;
        private System.Windows.Forms.Label taburculabel;
        private System.Windows.Forms.Label tabutculabel;
        private System.Windows.Forms.TextBox taburcuidtext;
        private System.Windows.Forms.Label hastaid2;
        private System.Windows.Forms.Label hastayenihastane;
        private System.Windows.Forms.TextBox yenihastaneidtext;
        private System.Windows.Forms.TextBox güncellemehastaid;
        private System.Windows.Forms.Button doktorgrntlebutton;
        private System.Windows.Forms.Label doktorlarıgörüntülelabel;
        private System.Windows.Forms.TextBox hastaaratext;
        private System.Windows.Forms.TextBox doktoraratext;
        private System.Windows.Forms.Button hastaara;
        private System.Windows.Forms.Button doktorara;
    }
}

