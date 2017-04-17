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
            if (!Page.IsPostBack)
            {
                DBInteractiobDataContext dc = new DBInteractiobDataContext();
                var posts = from a in dc.Posts
                            select a;

                List<Post> li = new List<Post>();


                foreach (var post in posts)
                {
                    var u = from n in dc.Users
                            where n.userid == post.userid
                            select n;
                    User user = (User)u.First();
                    PostArea.InnerHtml = PostArea.InnerHtml + $"<div class='col-md-8'><div class='post-item wow' style='padding:10px;' data-animation='fadeInUp' data-animation-delay='300'> <br><h2 style='padding-top:20px;' class='wow fadeInUp'><a href = 'BlogPage.aspx?id={post.postsid}'>{post.posttitle}</a></h2> <div class='post wow fadeInUp'> <a href = 'BlogPage.aspx?id={post.postsid}'><img height='350px' width='745px' src='images/blog/{post.headerimage}' alt='blog /></a> <div class='post-content'><p>..{post.writtencontent.Substring(post.writtencontent.Length - 360)}</p> <div class='posted-date'>{post.date_added}   /   <span>by</span> <a href = '#' >{user.name}</a> </div></div></div></div>";
                }
            }
        }
    }
}