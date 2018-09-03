using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseReinbursementSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var userStore = new UserStore<IdentityUser>(new IdentityDbContext("ERSConnection"));
            var manager = new UserManager<IdentityUser>(userStore);

            if(manager.Find(username.Text, password.Text) == null)
            {
                Response.Write("Log in failed");
            }
            else
            {
                var user = manager.FindByName(username.Text);
                HttpContext.Current.Session["id"] = user.Id;

                if(manager.IsInRole(user.Id, "Manager"))
                {
                    HttpContext.Current.Session["Manager"] = true;
                }
                else
                {
                    HttpContext.Current.Session["Manager"] = false;
                }

                Response.Redirect("~/Home.aspx");

            }
       
       }
    }
}