using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class PostsForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string filename = System.IO.Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/images/") + filename);
                    StatusLabel.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    StatusLabel.Text= "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            using (DBInteractiobDataContext context = new DBInteractiobDataContext())
            {
                Post p = new Post();
                p.posttitle = TextBox1.Text;
                p.writtencontent = TextBox2.Text;
                p.userid =  Convert.ToInt32(DropDownList1.Text);
                p.cuisineid = Convert.ToInt32(DropDownList2.Text);
                p.headerimage = StatusLabel.Text;
                context.Posts.InsertOnSubmit(p);
                context.SubmitChanges();
                Response.Write("<script>alert('inserted successfully!!');</script>");
            }
        }
    }
}