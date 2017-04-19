using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class Admin_Comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }


        /* protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
         {
             int id;
             using (DBInteractiobDataContext Ccontext = new DBInteractiobDataContext())
             {
                // Comment c = new Comment();
                 id = Convert.ToInt32 (GridView1.SelectedRow.Cells[1].Text);
                 Comment c = Ccontext.Comments.Single(u => u.commentsid == id);
                 //nUser = user;             
                  Ccontext.SubmitChanges();


                 Response.Write("<script>alert('updated successfully!!');</script>");
             }
         }*/
    }
}