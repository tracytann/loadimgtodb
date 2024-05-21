using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;

namespace APSLR1
{
    public partial class _6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String filename = FileUpload1.FileName;
            Label2.Text = filename;
            Image1.ImageUrl = "pic/" + filename;
            string sym = char.ConvertFromUtf32(92);
            String path = "D:" + sym + sym + "pic" + sym + filename;
            String url = Image1.ImageUrl;
            Label4.Text = path;

            SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-LIN53LU\DB; Initial Catalog = load_pic; Integrated Security=SSPI;");
            SqlCommand cmd = new SqlCommand("INSERT INTO Mytable (ImageByte, AltText)"+"VALUES (@ImageByte, @AltText)",connection);

            FileStream fStream = new FileStream(path, FileMode.Open, FileAccess.Read);
            Byte[] imageBytes = new byte[fStream.Length];

            fStream.Read(imageBytes, 0, imageBytes.Length);
            string name = Path.GetFileName(path);
            string type = Path.GetExtension(path);

            byte[] fileByteArray = File.ReadAllBytes(path);
            double kbSize = Math.Round(Convert.ToDouble(fileByteArray.Length)/1024,2);

            par = new SqlParameter("@ImageByte", SqlDbType.Image);
            par.Value = imageBytes;
            cmd.Parameters.Add(par);

            par = new SqlParameter("@AltText", SqlDbType.NVarChar);
            par.Value = TextBox1.Text;
            cmd.Parameters.Add(par);
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Dispose();
        }
        public SqlParameter par { get; set; }
        public object imageBytes { get; set; }
    }
}