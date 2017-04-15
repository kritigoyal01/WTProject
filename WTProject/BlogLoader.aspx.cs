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


if(!Page.IsPostBack){
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
                        
                   l1b1.Text = li[0].posttitle;
                    
                    l1b2.Text = li[0].writtencontent;
                    l1b3.ImageUrl=li[0].headerimage;
                   
                    
                  
                   
     }       }


        }



       

    }
}