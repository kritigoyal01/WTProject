using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class BlogPage : System.Web.UI.Page
    {
        Post p = null;
        User u = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                var value = Convert.ToInt32(Request.QueryString["id"]);
                DBInteractiobDataContext dc = new DBInteractiobDataContext();

                //Fetching the post
                var post = from a in dc.Posts
                           where a.postsid == value
                           select a;

                if (post == null)
                {
                    Response.Redirect("~/BlogLoader.aspx");
                }
                p = (Post)post.First();

                //Fetching the author
                var userRaw = from n in dc.Users
                              where n.userid == p.userid
                              select n;
                if (userRaw == null)
                {
                    u = null;
                }
                else
                {
                    u = (User)userRaw.First();
                }

                LoadBlogComponents();
                LoadCommentsForPost();
                LoadSideBar();
            }
            else
            {
                Response.Write("<script>alert('Invalid page requested.');</script>");
                Response.Redirect("~/BlogLoader.aspx");
            }
        }

        protected void LoadSideBar()
        {
            using (DBInteractiobDataContext dc = new DBInteractiobDataContext())
            {
                //Fetching post data and displaying it
                if (p != null && u != null)
                {
                    var posts = from n in dc.Posts
                                where n.cuisineid == p.cuisineid
                                select n;
                    Random rnd = new Random();
                    List<Post> templist = posts.OrderBy(user => rnd.Next()).Take(3).ToList();

                    foreach(Post post in templist)
                    {
                        RelatedPosts.InnerHtml = RelatedPosts.InnerHtml + $"<li><a href = 'BlogPage.aspx?id={post.postsid}'><img src = 'images/blog/{post.headerimage}' height='84px' width = '82px' alt = '' /></a><div class='content'><h3>{post.posttitle}</h3><div class='posted-date'>{post.date_added}</div></div></li>";
                    }

                    templist = posts.OrderByDescending(x => x.postsid).Take(3).ToList();
                    foreach (var post in templist)
                    {
                        RecentList.InnerHtml = RecentList.InnerHtml + $"<li><a href = 'BlogPage.aspx?id={post.postsid}'><img src = 'images/blog/{post.headerimage}' height = '84px' width = '82px' alt = '' /><div class='content'><h3>{post.posttitle}</h3><div class='posted-date'>{post.date_added}</div></div></a></li>";
                    }

                    var list = from n in dc.Cuisines
                               select n;

                    List<Cuisine> cuisines = list.ToList();

                    foreach (Cuisine cuisine in cuisines)
                    {
                        CuisineList.InnerHtml = CuisineList.InnerHtml + $"<li><h3><a href='BlogLoader.aspx?cuisine={cuisine.cuisineid}'>{cuisine.cuisinename}</h3></li>";
                    }
                }
            }
        }

        protected void LoadBlogComponents()
        {
            using (DBInteractiobDataContext dc = new DBInteractiobDataContext())
            {
                //Fetching post data and displaying it
                if (p != null && u != null)
                {
                    lb1.Text = p.posttitle;
                    lb2.Text = p.writtencontent;
                    headimage.Src = "~/images/blog/" + p.headerimage;

                    var cui = from a in dc.Cuisines
                              where a.cuisineid == p.cuisineid
                              select a;

                    Cuisine c = (Cuisine) cui.First();

                    authorData.InnerHtml = $"<img class='img-responsive' height='100px' width='300px' src = '{u.img}' alt='{u.name}'><div class='author-comment'><h3 style='padding-left:20px'>{u.name}</h3><h5 style='padding-left:20px'>{u.email}</h5></div><div class='clear'></div>";
                    detailSection.InnerHtml = $"{p.date_added} / <span>by<span> {u.name} / {c.cuisinename}";
                }
            }
        }

        protected void LoadCommentsForPost()
        {
            if(p != null)
            {
                DBInteractiobDataContext dc = new DBInteractiobDataContext();
                var commentList = from n in dc.Comments
                                  where n.postsid == p.postsid
                                  select n;
                total.Text = commentList.Count() + " Comments";
                List<Comment> comments = commentList.ToList();
                foreach(Comment comment in comments)
                {
                    var u = from c in dc.Users
                             where c.userid == comment.user_id
                             select c;

                    
                    if (u.Count() == 0)
                    {
                        CommentList.InnerHtml = CommentList.InnerHtml + $"<li class='wow fadeInUp'><img src = 'images/default-avatar.png' alt = '' /><div class='comment-details'><div class='comments'><div class='comment-meta'><div class='user-name'>Anonymous</div><div class='posted-date'>{comment.date_added}</div></div><p>{comment.comments}</p></div></div></li>";
                    }
                    else
                    {
                        User user = (User)u.First();
                        CommentList.InnerHtml = CommentList.InnerHtml + $"<li class='wow fadeInUp'><img src = 'images/{user.img}' alt = '' /><div class='comment-details'><div class='comments'><div class='comment-meta'><div class='user-name'>{user.name}</div><div class='posted-date'>{comment.date_added}</div></div><p>{comment.comments}</p></div></div></li>";
                    }
                }
            }
            else
            {
                Response.Redirect("~/BlogLoader.aspx");
            }
        }

       protected void SubmitOnClick(object sender, EventArgs e)
       {
            var value = Convert.ToInt32(Request.QueryString["id"]);
            DBInteractiobDataContext dc = new DBInteractiobDataContext();
            Comment comm = new Comment();

            var post = from pi in dc.Posts
                      where pi.postsid==value
                      select pi;
           
            p = post.First();

            comm.comments = message.Text;
            comm.postsid = p.postsid;
            comm.date_added = DateTime.Now;

            u = (User)Session["user"];
            if(u != null)
            {
                int id = u.userid;
                comm.user_id = id;
            }
            else
            {
                comm.user_id = null;
            }
            
            
             
           
            CommentPostMapper cpm = new CommentPostMapper(p, comm);
            //CALL INSERTION FUNCTION HERE
           cpm.commentinsertion();

        // alert
            string mess = "Thank you for the comment.";
            string script = "window.onload = function(){ alert('";
            script += mess;
            script += "');";
            script += "window.location = '";
            script += Request.Url.AbsoluteUri;
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

       }
    }
}