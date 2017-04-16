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


       
        protected void Page_Load(object sender, EventArgs e)
        {

 
            


     var value = Convert.ToInt32(Request.QueryString["id"]);
                

       
       

         
            DBInteractiobDataContext dc = new DBInteractiobDataContext();
            var posts = from a in dc.Posts
                        where a.postsid==value
                        select a;

      foreach(var v in posts)
{
                    lb1.Text = v.posttitle;
                    lb2.Text = v.writtencontent;
                    lb3.ImageUrl=v.headerimage;
var postsid=v.postsid;
var userid=v.userid;

 }                  
       
//comment count

Comment comm= new Comment();
var nmbr= from c in dc.Comments
           select c;

var counts= nmbr.Count();

total.Text=counts+"Comments";

//comment display
/*
var comment= from c in dc.Comments
             select c;

foreach(var com in comment)
{


                           <ul class="comment-list"><li class="wow fadeInUp"><img src="images/blog/comments/1.jpg" alt="" /><div class="comment-details"><div class="comments"><div class="comment-meta">{com.message}<div class="user-name">Jenna
                                                </div>
                                                <div class="posted-date">
                                                    July 19, 2014  <span> 5:50 AM</span>
                                                </div>
                                            </div>
                                            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure.	</p>
                                        </div>
                                        <a href="#" class="btn reply">reply</a>
                                    </div>
                                </li>


     

  */ 

        }




       protected void SubmitOnClick(object sender, EventArgs e)
        {


     var value = Convert.ToInt32(Request.QueryString["id"]);
                


            

            DBInteractiobDataContext dc = new DBInteractiobDataContext();
            Comment comm = new Comment();

            var p = from pi in dc.Posts
                      where pi.postsid==value
                      select pi;
           
            Post post = p.First();

            comm.comments=message.Text;
            comm.postsid=post.postsid;
            comm.date_added=DateTime.Now;

            
         
              User u=(User)Session["user"];


             
            if(u!=null)
            {
                
             
            int id=u.userid;
                comm.user_id=id;
            }
            else
            {
                    
                
                comm.user_id=null;
            }
            
            
             
           
            CommentPostMapper cpm = new CommentPostMapper(post, comm);
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