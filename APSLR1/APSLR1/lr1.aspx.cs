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
    public partial class lr1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] city = new string[15];

            city[0] = "Париж";
            city[1] = "Лион";
            city[2] = "Прага";
            city[3] = "Брно";
            city[4] = "Варшава";
            city[5] = "Краков";
            city[6] = "Гданьск";
            city[7] = "Вроцлав";
            city[8] = "Вильнюс";
            city[9] = "Рига";
            city[10] = "Таллин";
            city[11] = "Салоники";
            city[12] = "Афины";
            city[13] = "Спарта";
            city[14] = "Александруполис";
          

            if (ListBoxlr1.SelectedIndex < 0)
            {
                for (int i = 0; i < city.Length; i++)
                {
                    ListBoxlr1.Items.Add(city[i]);
                }
            }
        }

        protected void TextBoxlr1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ListBoxlr1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBoxlr1.Text = " ";

            int id_city = ListBoxlr1.SelectedIndex;

            var exePath = AppDomain.CurrentDomain.BaseDirectory;

            FileInfo fi = new FileInfo(exePath + @"city\" + Convert.ToString(id_city) + ".txt");

            TextBoxlr1.Text = File.ReadAllText(exePath + @"city\" + Convert.ToString(id_city) + ".txt");

            if (id_city >= 0)
            {
                Imagelr1.ImageUrl = @"city\" + Convert.ToString(id_city) + ".jpg";
            }
        }
    }
}