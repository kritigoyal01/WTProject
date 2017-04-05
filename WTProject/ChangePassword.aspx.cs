using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<h1>Under Construction</h1>");
            if(Session["user"] != null)
            {

            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
        {
            User u = (User) Session["user"];
            LoginUser lu = new LoginUser(u);
            lu.ChangePassword();
        }
    }
}