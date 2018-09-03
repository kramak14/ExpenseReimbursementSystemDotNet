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
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(local);Initial Catalog=ERS;" + "Integrated Security=true";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM employees WHERE username='" + employeeUsername.Text + "' AND password='" + employeePassword.Text + "'", conn);

            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("~/EmployeeHomePage.aspx");
            }
            else
            {
                Response.Write("Invalid username or password");
            }
            /* Use above code later 
            string connectionString = "Data Source=(local);Initial Catalog=ERS;" + "Integrated Security=true";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("SELECT COUNT(*) FROM employees WHERE username='" + employeeUsername.Text + "' AND password='" + employeePassword.Text + "'", conn);

            conn.Open();
            SqlDataReader reader = command.ExecuteReader();
           

           if(reader.Read())
            {
                string id = reader["id"].ToString(); 
                //Store it in another function. 
                
                //Log the user. Store it in a temporary variable. 
                Response.Redirect("~/EmployeeHomePage.aspx");
            }
            else
            {
                Response.Write("Invalid username or password");
            }

           /* Use above code later */


            //DataTable dt = new DataTable();
            //sda.Fill(dt);

            //if (dt.Rows[0][0].ToString() == "1")
            //{
            //    Response.Redirect("~/EmployeeHomePage.aspx");
            //}
            //else
            //{
            //    Response.Write("Invalid username or password");
            //}
        }
    }
}