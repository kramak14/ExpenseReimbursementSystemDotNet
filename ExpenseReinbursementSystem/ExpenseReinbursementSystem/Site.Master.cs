using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseReinbursementSystem
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(HttpContext.Current.Session["Manager"] == null)
            {
                HttpContext.Current.Session["Manager"] = false;
            }
            

        }

        protected void logout(object sender, EventArgs e)
        {
            HttpContext.Current.Session["Manager"] = false;
            HttpContext.Current.Session["id"] = null;
            HttpContext.Current.Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}