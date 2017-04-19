using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class NewsLetterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DBInteractiobDataContext Newslettercontext = new DBInteractiobDataContext())
            {
                Newsletter n = new Newsletter();
                n.newstitle = TextBox1.Text;
                n.newssubject = TextBox2.Text;
                n.newscontent = TextBox3.Text;
                n.header = TextBox4.Text;
                n.footer = TextBox5.Text;
                Newslettercontext.Newsletters.InsertOnSubmit(n);
                Newslettercontext.SubmitChanges();
                Response.Write("<script>alert('inserted successfully!!');</script>");
            }
        }
    }
}