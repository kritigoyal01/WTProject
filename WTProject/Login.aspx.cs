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

       /* protected void LoginButton_Click(object sendet,EventArgs e)
        {
            if(u.userid ==1 )
            {
                Response.Redirect("Admin_Main_Page.aspx");
            }
            else
            {
                Response.Redirect("Default.aspx");
             }
        }*/
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
      
            e.Authenticated = Authenticated;
           
        }
    }
}