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


         
             DBInteractiobDataContext dc = new DBInteractiobDataContext();
            var posts = from a in dc.Posts
                        select a;

            List<Post> li = new List<Post>();
            

            foreach(var post in posts)
            {
                Post x= new Post();
                 x.posttitle=post.posttitle;
                 x.writtencontent=post.writtencontent;
                 x.headerimage=post.headerimage;
                 x.postsid=post.postsid;
                 
                 li.Add(x);
            
            }



            for(int val=0; val<li.Count;val++)
            
            {
                    lb1.Text = li[0].posttitle;
                    lb2.Text = li[0].writtencontent;
                    lb3.ImageUrl=li[0].headerimage;
                   
            }

        }




       protected void SubmitOnClick(object sender, EventArgs e)
        {

            

            DBInteractiobDataContext dc = new DBInteractiobDataContext();
            Comment comm = new Comment();
           
            comm.comments=message.Text;
            //comm.postsid=var;
              
          
             dc.Comments.InsertOnSubmit(comm);
           
            dc.SubmitChanges();
               
                
           

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