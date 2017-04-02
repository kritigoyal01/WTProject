using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class BlogLoader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBInteractiobDataContext dc = new DBInteractiobDataContext();
            var posts = from a in dc.Posts
                        select a;

            foreach(var post in posts)
            {
                Response.Write(post.writtencontent);
            }
        }

    }
}