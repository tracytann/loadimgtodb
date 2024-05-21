using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;

namespace APSLR1
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var exePath = AppDomain.CurrentDomain.BaseDirectory;
            FileInfo fi = new FileInfo(exePath + @"z1.txt");
            TextBox1.Text = File.ReadAllText(exePath + @"z1.txt");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}