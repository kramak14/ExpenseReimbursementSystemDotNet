using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseReinbursementSystem
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["ERSConnection"].ConnectionString;
            var cmnd = "INSERT INTO updateUserInfo(id, first_name, last_name, email) " 
                + "VALUES(@id, @first_name, @last_name, @email)";
    

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(cmnd, conn))
                {
                    command.Parameters.AddWithValue("@id", HttpContext.Current.Session["id"]);
                    command.Parameters.AddWithValue("@first_name", firstName.Text);
                    command.Parameters.AddWithValue("@last_name", lastName.Text);
                    command.Parameters.AddWithValue("@email", email.Text);
                    conn.Open();
                    command.ExecuteNonQuery();
                    conn.Close();

                }
            }
        }
    }
}