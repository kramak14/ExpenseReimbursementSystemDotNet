using ExpenseReinbursementSystem.BusinessLogic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseReinbursementSystem
{
    public partial class CurrentEmployees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DatabaseConnection dbConn = new DatabaseConnection();
            DataSet ds = dbConn.DisplayEmployees(); 

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}