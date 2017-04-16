using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class RegisterUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Response.Redirect("~/MyProfile.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            long phone = long.Parse(TextBox2.Text);
            string email = TextBox3.Text;
            string username = TextBox4.Text;
            string gender = DropDownList1.SelectedValue;
            string filename;

            if (FileUpload1.HasFile)
            {
                filename = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/images/") + filename);
            }
            else
            {
                filename = "default-avatar.png";
            }

            
            User u = new User();
            u.name = name;
            u.phone = phone;
            u.email = email;
            u.username = username;
            u.pass = ConfirmPassword.Text;
            u.img = filename;
            u.gender = DropDownList1.SelectedValue;
            u.subscribed = 1;
            u.usertypeid = 2;

            UserManagement ru = new UserManagement(u);
            bool check = ru.addUser();
            if (check == true)
            {
                Response.Write("<script>alert('Registration successfull.');</script>");
            }
            else
            {
                Response.Write("<script>alert('Registration unsuccessfull. Try again later.');</script>");
            }
            Response.Redirect("~/Login.aspx");
        }
    }
}