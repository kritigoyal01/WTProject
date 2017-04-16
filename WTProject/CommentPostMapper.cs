using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class CommentPostMapper
    {
        Comment c;
        Post p;
        
        public CommentPostMapper(Post p, Comment c)
        {
            this.c = c;
            this.p = p;  
        }

        public void commentinsertion()
        {
    
            DBInteractiobDataContext dc = new DBInteractiobDataContext();

             dc.Comments.InsertOnSubmit(c);
           
            dc.SubmitChanges();




                   
           }
    }
}