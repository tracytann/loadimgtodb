using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Drawing;
using System.Drawing.Imaging;

namespace APSLR1
{
    public partial class _1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] poet = new string[7];

            poet[0] = "Пушкин";
            poet[1] = "Некрасов";
            poet[2] = "Лермонтов";
            poet[3] = "Симонов";
            poet[4] = "Маяковский";
            poet[5] = "Евтушенко";
            poet[6] = "Есенин";

            if (ListBox1.SelectedIndex<0)
            {
                for (int i=0; i<poet.Length; i++)
                {
                    ListBox1.Items.Add(poet[i]);
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id_poet = ListBox1.SelectedIndex;

            var exePath = AppDomain.CurrentDomain.BaseDirectory;

            FileInfo fi = new FileInfo(exePath+ @"poet\" + Convert.ToString(id_poet) + ".txt");

            TextBox1.Text = File.ReadAllText(exePath+@"poet\" + Convert.ToString(id_poet)+ ".txt");

            if (id_poet >=0)
            {
                Image1.ImageUrl = @"poet\" + Convert.ToString(id_poet) + ".jpg";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("lr1.aspx");
        }
    }
}