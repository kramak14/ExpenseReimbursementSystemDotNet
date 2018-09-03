using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseReinbursementSystem
{
    public partial class Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(local);Initial Catalog=ERS;" + "Integrated Security=true";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM manager WHERE username='" + managerUsername.Text + "' AND password='" + managerPassword.Text + "'", conn);

            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("~/ManagerHomePage.aspx");
            }
            else
            {
                Response.Write("Invalid username or password");
            }
        }
    }
 }
