using ExpenseReinbursementSystem.BusinessLogic;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
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
    public partial class ViewReimbursementRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Approve button request
        protected void ApproveButton_Click(object sender, EventArgs e)
        {          
            var button = (Button)sender;
            GridViewRow row = (GridViewRow)button.NamingContainer;
            string reimbursement_id = row.Cells[6].Text;
            
            DatabaseConnection.UpdateStatus(reimbursement_id, "Approved", (string) HttpContext.Current.Session["id"]);

            GridView1.DataBind();

        }

        //Deny button request
        protected void DenyButton_Click(object sender, EventArgs e)
        {
            var button = (Button)sender;
            GridViewRow row = (GridViewRow)button.NamingContainer;
            string reimbursement_id = row.Cells[6].Text;

            DatabaseConnection.UpdateStatus(reimbursement_id, "Denied", (string) HttpContext.Current.Session["id"]);

            GridView1.DataBind();

        }
    }
}