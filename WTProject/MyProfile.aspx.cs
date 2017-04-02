using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class MyProfiel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] == null)
            {
                //Commented to stop redirection while in dev
                //Response.Redirect("~/Login.aspx");
            }
            //Commented cos upar waala is commented.
            //User u = (User) Session["user"];
            DBInteractiobDataContext dc = new DBInteractiobDataContext();
            User u = dc.Users.First();

            TextBox1.Text = u.name;
            TextBox2.Text = u.phone.ToString();
            TextBox3.Text = u.email;
            TextBox4.Text = u.username;
            Image1.ImageUrl = u.img;
            DropDownList1.SelectedValue = u.gender;
        }
    }
}