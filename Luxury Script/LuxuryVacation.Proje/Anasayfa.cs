using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LuxuryVacation.Proje
{
    public partial class Anasayfa : Form
    {
        public Anasayfa()
        {
            InitializeComponent();
        }
       
       SqlConnection con = new SqlConnection("Server=.;Database=LuxuryVacation;integrated security=true;");
        public void Listele(string prosedur)
        {
            SqlDataAdapter dr = new SqlDataAdapter("OListele", con);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            dataGridView1.DataSource = dt;



        }
        private void Anasayfa_Load(object sender, EventArgs e)
        {
            Listele("OListele");
        }

        private void Tool1_Click(object sender, EventArgs e)
        {

        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("OKaydetButton", con);
            cmd.CommandType = CommandType.StoredProcedure;
            
            cmd.Parameters.AddWithValue("MisafirAd", TxtAd.Text);
            cmd.Parameters.AddWithValue("MisafirSoyad", TxtSoyad.Text);
            cmd.Parameters.AddWithValue("MisafirTC", TxtTC.Text);
            cmd.Parameters.AddWithValue("MisafirAdres", TxtAdres.Text);
            cmd.Parameters.AddWithValue("Otel", TxtOtel.Text);
            cmd.Parameters.AddWithValue("Fiyat", TxtFiyat.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Listele("OListele");
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow satir = dataGridView1.CurrentRow;//CURRENTROW GEÇERLİ SATIR
            TxtAd.Tag = satir.Cells["MisafirID"].Value.ToString();
            TxtAd.Text = satir.Cells["MisafirAd"].Value.ToString();
            TxtSoyad.Text = satir.Cells["MisafirSoyad"].Value.ToString();
            TxtTC.Text = satir.Cells["MisafirTC"].Value.ToString();
            TxtAdres.Text = satir.Cells["MisafirAdres"].Value.ToString();
            TxtOtel.Text = satir.Cells["Otel"].Value.ToString();
            TxtFiyat.Text = satir.Cells["Fiyat"].Value.ToString();

        }

        private void TxtAd_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (ComboAra.SelectedItem == "Misafir Ad")
            {
                SqlCommand cmd = new SqlCommand("MisafirAd", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("MisafirAd", Masked.Text);
                SqlDataAdapter dr = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                dr.Fill(dt);
                dataGridView1.DataSource = dt;
                Masked.Clear();

            }
            if (ComboAra.SelectedItem == "Misafir Soyad")
            {


                SqlCommand cmd = new SqlCommand("MisafirSoyad", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("MisafirSoyad", Masked.Text);
                SqlDataAdapter dr = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                dr.Fill(dt);
                dataGridView1.DataSource = dt;
                Masked.Clear();
            }
            if (ComboAra.SelectedItem == "Misafir TC")
            {
                SqlCommand cmd = new SqlCommand("MisafirTC", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("MisafirTC", Masked.Text);
                SqlDataAdapter dr = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                dr.Fill(dt);
                dataGridView1.DataSource = dt;
                Masked.Clear();
            }



        }

    }

    }


