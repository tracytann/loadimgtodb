using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace APSLR1
{
    public partial class _4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = "";
            TextBox1.Focus();
            TextBox2.TextMode = TextBoxMode.Password;
            TextBox3.TextMode = TextBoxMode.Password;

            RequiredFieldValidator1.ControlToValidate = "TextBox1";
            RequiredFieldValidator1.EnableClientScript = false;
            RequiredFieldValidator1.ErrorMessage = "*Следует заполнить текстовое поле";
            RequiredFieldValidator2.ControlToValidate = "TextBox2";
            RequiredFieldValidator2.EnableClientScript = false;
            RequiredFieldValidator2.ErrorMessage = "*Следует заполнить текстовое поле";

            CompareValidator1.EnableClientScript = false;
            CompareValidator1.ControlToValidate = "TextBox2";
            CompareValidator1.ControlToCompare = "TextBox3";
            CompareValidator1.ErrorMessage = "*Вы ввели разные паспорта";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack == false || IsValid == false) return;

            SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-LIN53LU\DB; Initial Catalog = web; Integrated Security=SSPI;");
            
            try
            {
                connection.Open();
                Label6.Text = "Соединение установлено!";
            }
            catch (Exception)
            {
                Label6.Text = "Соединение не установлено!";
            }

            var query = "INSERT INTO users(login, pw, name, photo) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            SqlCommand command = new SqlCommand(query, connection);
            command.CommandText = query;
            command.ExecuteNonQuery();
        }
    }
}