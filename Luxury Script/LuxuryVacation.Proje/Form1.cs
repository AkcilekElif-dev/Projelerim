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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection con = new SqlConnection("Server=.;Database=LuxuryVacation;integrated security=true;");


        private void Form1_Load(object sender, EventArgs e)
        {
            groupBox1.Visible = false;

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked==true) 
            {
                groupBox1.Visible = true;

            }
            else
            {
                groupBox1.Visible=false;    
            }
        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("OKaydet", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("TC", Texttc.Text);
            cmd.Parameters.AddWithValue("AdSoyad", TextAdSoyad.Text);
            cmd.Parameters.AddWithValue("Kullanici", TextKullanici.Text);
            
            if(TextSifre.Text==TextSifre1.Text)
            {
                cmd.Parameters.AddWithValue("Sifre", TextSifre.Text);
                cmd.Parameters.AddWithValue("SifreTekrar", TextSifre1.Text);
            }
            else
            {
                MessageBox.Show("Şifre eşleşmedi.");

            }
            cmd.ExecuteNonQuery();
            con.Close();

            
        }

        

        

        private void BtnGiris_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Uyelik where Kullanici=@Username and Sifre=@Password",con);
            cmd.Parameters.AddWithValue("@Username", TXT1.Text);
            cmd.Parameters.AddWithValue("@Password", TXT2.Text);
            SqlDataReader reader = cmd.ExecuteReader();  //okumayı command üzerinden grçekleştir demek
            if (reader.Read())
            {
                Anasayfa anasayfa = new Anasayfa();
                anasayfa.Show();
                this.Hide();


            }
            else
            {
                MessageBox.Show("Giriş Yapılamadı");
            }

            con.Close();
        }
    }
}
