using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Drawing;
using System.Configuration;

namespace APSLR1
{
    public partial class _7 : System.Web.UI.Page
    {
        public int number;
        public void Fun()
        {
            byte[] byteArray = new byte[0];
            SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-LIN53LU\DB; Initial Catalog = load_pic; Integrated Security=SSPI;");

            using (connection)
            {
                connection.Open();
                string sql = "SELECT ImageByte FROM MyTable WHERE ID = " + number + ";";
                SqlCommand cmd = new SqlCommand(sql, connection);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    byteArray = new byte[((byte[])reader["ImageByte"]).Length];
                    byteArray = (byte[])reader["ImageByte"];

                    string base64String;
                    base64String = System.Convert.ToBase64String(byteArray, 0, byteArray.Length);
                    Response.Write("<img src=\"data:image/png;base64," + base64String + "\" width-\"auto\" height=\"300\"/>");
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            number = Convert.ToInt32(TextBox1.Text);
        }
        public System.Drawing.Image img { get; set; }
    }
}