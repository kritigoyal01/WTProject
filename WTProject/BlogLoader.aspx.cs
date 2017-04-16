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
                    PostArea.InnerHtml = $"<div class='col-md-8'> <div class='post-item wow' style='padding:10px;' data-animation='fadeInUp' data-animation-delay='300'> <br><h2 class='wow fadeInUp'><a href = 'BlogPage.aspx?id={post.postsid}' >{post.posttitle}</a></h2> <div class='post wow fadeInUp'> <a href = 'BlogPage.aspx?id={post.postsid}'><img class='img-responsive width='400px' src='images/blog/{post.headerimage}' alt='blog /></a> <div class='post-content'> <p>...{post.writtencontent.Substring(post.writtencontent.Length - 360)}</p> <div class='posted-date'>July 19, 2014   /   <span>by</span> <a href = '#' >{post.userid}</a> </div></div></div></div></div>";
                }
            }
        }
    }
}