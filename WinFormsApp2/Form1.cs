using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinFormsApp2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
        NpgsqlConnection baglanti = new NpgsqlConnection("Server=localhost; port=5432; Database=proje; User Id=postgres; Password=123456");
        private void button1_Click(object sender, EventArgs e)
        {
            string sorgu = "select * from hasta";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(sorgu, baglanti);
           DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
        }

        private void hastaekletext_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut1 = new NpgsqlCommand("insert into hasta(hastaid,isim,soyisim)values(@p1,@p2,@p3)",baglanti);
            komut1.Parameters.AddWithValue("@p1", int.Parse(hastaekleidtext.Text));
            komut1.Parameters.AddWithValue("@p2", hastadıtext.Text);
            komut1.Parameters.AddWithValue("@p3", hastasoyadtext.Text);
            komut1.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Hasta ekleme işlemi başarılı.");
        }

        private void Form1_Load(object sender, EventArgs e)
        {
     
        }

        private void taburcubutton_Click(object sender, EventArgs e)
        {

            baglanti.Open();
            NpgsqlCommand komut2= new NpgsqlCommand("Delete From hasta where hastaid=@p1",baglanti);
            komut2.Parameters.AddWithValue("@p1", int.Parse(taburcuidtext.Text));
            komut2.ExecuteNonQuery();
            baglanti.Close();

            MessageBox.Show("Hasta taburcu edildi.");
        }

        private void hastaneguncelleme_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut3 = new NpgsqlCommand("update hasta set  Hastane_id=@p2  where hastaid=@p1", baglanti);
            komut3.Parameters.AddWithValue("@p1", int.Parse(güncellemehastaid.Text));
            komut3.Parameters.AddWithValue("@p2",int.Parse(yenihastaneidtext.Text));
            
            komut3.ExecuteNonQuery();

            MessageBox.Show("Hastanın hastanesi güncellendi.");

            baglanti.Close();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            string sorgu = "select * from doktor";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(sorgu, baglanti);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
        }

        private void hastanegüncelle_Click(object sender, EventArgs e)
        {

        }

        private void hastaara_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            string sorgu = "select * from public.\"hasta\" where \"isim\" LIKE '%" + hastaaratext.Text + "%'";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(sorgu, baglanti);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
            baglanti.Close();


        }

        private void doktorara_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            string sorgu = "select * from public.\"doktor\" where \"ad\" LIKE '%" + doktoraratext.Text + "%'";
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(sorgu, baglanti);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dataGridView1.DataSource = ds.Tables[0];
            baglanti.Close();
        }
    }
}  