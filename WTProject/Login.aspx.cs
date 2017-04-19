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
        //User u;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            
        }

        private bool SiteSpecificAuthenticationMethod(string UserName, string Password)
        {
            try
            {
                var u = LoginUser.login(Login1.UserName, Login1.Password);
                if (u.Count() == 1)
                {
                    User i = u.First();
                    Session.Add("user", i);
                    return true;
                }
                else
                    return false;
            }
            catch(Exception e)
            {
                return false;
            }
        }


        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            bool Authenticated = false;
            Authenticated = SiteSpecificAuthenticationMethod(Login1.UserName, Login1.Password);

            User u = (User)Session["user"];
            if(Authenticated == true)
            {
                if (u.usertypeid == 1)
                {
                    e.Authenticated = Authenticated;
                    Response.Redirect("~/Admin_Main_Page.aspx");
                }
                else if (u.usertypeid == 2)
                {
                    e.Authenticated = Authenticated;
                    Response.Redirect("~/Default.aspx");
                }
            }
            e.Authenticated = Authenticated;
        }
    }
}