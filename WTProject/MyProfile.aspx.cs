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
            if (Session["user"] == null)
            {
                //Comment to stop redirection while in dev
                Response.Redirect("~/Login.aspx");
            }

            if (this.Request.QueryString["RequestUrl"] == "~/ChangePassword.aspx")
            {
                Response.Write("Password changed successfully.");
            }
            //Locally storing User Object to render data and
            //perform changes if necessarry.
            User u = (User)Session["user"];

            //Whenever user updates their profile picture
            if (IsPostBack)
            {
                if (FileUpload1.HasFile)
                {
                    UpdateImage(u);
                }
            }

            //Render the data into fields and stuff
            ParseData(u);
        }

        protected void UpdateImage(User u)
        {
            try
            {
                DBInteractiobDataContext dc = new DBInteractiobDataContext();
                string filename = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/images/") + filename);
                u.img = filename;
                dc.SubmitChanges();
            }
            catch (Exception exc)
            {
                Response.Write("<script>alert('Some error occurred. Please Try later.');</script>");
            }
        }

        protected void ParseData(User u)
        {
            TextBox1.Text = u.name;
            TextBox2.Text = u.phone.ToString();
            TextBox3.Text = u.email;
            TextBox4.Text = u.username;
            Image1.ImageUrl = "~/images/" + u.img;
            DropDownList1.SelectedValue = u.gender;
        }
    }
}