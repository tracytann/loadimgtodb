using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace APSLR1
{
    public partial class _8 : System.Web.UI.Page
    {
        List<int> x;
        List<int> y;

        public void Cvs(int r1, int r2, string crnm)
        {
           

            chart1.Visible = true;
            chart1.Series[0].Name = crnm;

            try
            {
                //Инициализация массивов
                x = new List<int>();
                y = new List<int>();

                //Чтение файла и запись значений в List x и y
                var exePath = AppDomain.CurrentDomain.BaseDirectory;
                StreamReader sr = new StreamReader(exePath + @"csv\tab.csv");
                string line;
                string[] line2;
                while ((line = sr.ReadLine()) != null)
                {
                    line2 = line.Split(';'); //разбиваем строку на подстроки
                    x.Add(Convert.ToInt32(line2[r1]));
                    y.Add(Convert.ToInt32(line2[r2]));
                }
                sr.Close();

                //Заполняем график считанными значениями
                //chart1.Series["Series1"].LegendText = "График XY";
                this.chart1.Titles.Add(crnm);

                for (int i = 0; i < x.Count; i++)
                {
                    chart1.Series[0].Points.AddXY(x[i], y[i]);
                }

            }
            catch (Exception ex)
            {

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
                 
        }

        protected void Chart1_Load(object sender, EventArgs e)
        {
            Cvs(0, 1, "Курс доллара");
        }


    }
}