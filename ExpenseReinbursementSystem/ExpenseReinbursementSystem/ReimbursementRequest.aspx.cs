using ExpenseReinbursementSystem.BusinessLogic;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseReinbursementSystem
{
    public partial class ReimbursementRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["ERSConnection"].ConnectionString;
            var cmd = "INSERT INTO reimbursement_request(user_id, reimbursement_req, description, status, reimbursement_id) "
                + "VALUES(@user_id, @reimbursement_req, @description, @status, @reimbursement_id)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(cmd, connection))
                {
                    command.Parameters.AddWithValue("@user_id", HttpContext.Current.Session["id"]);
                    command.Parameters.AddWithValue("@reimbursement_req", Int32.Parse(TextBox1.Text));
                    command.Parameters.AddWithValue("@description", TextBox2.Text);
                    command.Parameters.AddWithValue("@status", "Pending");
                    command.Parameters.AddWithValue("@reimbursement_id", Guid.NewGuid());
                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
            }
        }
    }
}