using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class MyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Response.Write("Click success");
            User u = LoginUser.login(Login1.UserName, Login1.Password);
            if(u != null)
            {
                Response.Write(u.name + " has logged in.");
            }
        }
    }
}