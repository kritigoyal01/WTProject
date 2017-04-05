using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class RatingForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RatingButton_Click(object sender, EventArgs e)
        {
            using (DBInteractiobDataContext Ratingcontext1 = new DBInteractiobDataContext())
            {
                Rating r = new Rating();
                r.postsid = Convert.ToInt32(DropDownListPost.Text);
                r.ratingvalueid = Convert.ToInt32(DropDownListRValue.Text);
                Ratingcontext1.Ratings.InsertOnSubmit(r);
                Ratingcontext1.SubmitChanges();
                Response.Write("<script>alert('inserted successfully!!');</script>");
            }
        }
    }
}