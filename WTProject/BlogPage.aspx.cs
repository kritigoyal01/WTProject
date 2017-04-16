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

     var value = Request.QueryString["title"].ToString();
                

       
       

         
            DBInteractiobDataContext dc = new DBInteractiobDataContext();
            var posts = from a in dc.Posts
                        where a.posttitle==value
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



     

   

        }




       protected void SubmitOnClick(object sender, EventArgs e)
        {


     var value = Request.QueryString["title"].ToString();
                


            

            DBInteractiobDataContext dc = new DBInteractiobDataContext();
            Comment comm = new Comment();

            var p = from pi in dc.Posts
                      where pi.posttitle==value
                      select pi;
           
            Post post = p.First();

            comm.comments=message.Text;
            comm.postsid=post.postsid;
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