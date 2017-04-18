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
                List<Post> postlist = null; 
                DBInteractiobDataContext dc = new DBInteractiobDataContext();
                var posts = from a in dc.Posts
                            select a;
                //Deciding how to populate shiza
                if (Request.QueryString["cuisine"] != null)
                {
                    postlist = posts.Where(x => x.cuisineid == Convert.ToInt32(Request.QueryString["cuisine"])).ToList();
                }
                else if(Request.QueryString["cuisine"] == null)
                {
                    postlist = posts.ToList();
                }

                foreach (var post in postlist)
                {
                    var u = from n in dc.Users
                            where n.userid == post.userid
                            select n;
                    User user = (User)u.First();
                    PostArea.InnerHtml = PostArea.InnerHtml + $"<div class='col-md-8'><div class='post-item wow' style='padding:10px;' data-animation='fadeInUp' data-animation-delay='300'> <br><h2 style='padding-top:20px;' class='wow fadeInUp'><a href = 'BlogPage.aspx?id={post.postsid}'>{post.posttitle}</a></h2> <div class='post wow fadeInUp'> <a href = 'BlogPage.aspx?id={post.postsid}'><img height='350px' width='745px' src='images/blog/{post.headerimage}' alt='blog /></a> <div class='post-content'><p>..{post.writtencontent.Substring(post.writtencontent.Length - 360)}</p> <div class='posted-date'>{post.date_added}   /   <span>by</span> <a href = '#' >{user.name}</a> </div></div></div></div>";
                }
                //Populating Popular Posts with Random Posts
                Random rnd = new Random();
                List<Post> tempList = posts.OrderBy(user => rnd.Next()).Take(3).ToList();

                foreach(var post in tempList)
                {
                    PopularList.InnerHtml = PopularList.InnerHtml + $"<li><a href = 'BlogPage.aspx?id={post.postsid}'><img src = 'images/blog/{post.headerimage}' height = '84px' width = '82px' alt = '' /><div class='content'><h3>{post.posttitle}</h3><div class='posted-date'>{post.date_added}</div></div></a></li>";
                }

                //Populating Most Recent Posts with Latest Posts
                tempList = posts.OrderByDescending(x => x.postsid).Take(3).ToList();
                foreach (var post in tempList)
                {
                    RecentList.InnerHtml = RecentList.InnerHtml + $"<li><a href = 'BlogPage.aspx?id={post.postsid}'><img src = 'images/blog/{post.headerimage}' height = '84px' width = '82px' alt = '' /><div class='content'><h3>{post.posttitle}</h3><div class='posted-date'>{post.date_added}</div></div></a></li>";
                }

                //Loading Cuisines List
                LoadCuisineList();
            }
        }
        protected void LoadCuisineList()
        {
            using (DBInteractiobDataContext dc = new DBInteractiobDataContext())
            {
                var list = from n in dc.Cuisines
                           select n;

                List<Cuisine> cuisines = list.ToList();

                foreach(Cuisine cuisine in cuisines)
                {
                    CuisineList.InnerHtml = CuisineList.InnerHtml + $"<li><h3><a href='BlogLoader.aspx?cuisine={cuisine.cuisineid}'>{cuisine.cuisinename}</h3></li>";
                }
            }
        }
    }
}