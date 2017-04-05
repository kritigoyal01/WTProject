using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class RatingForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender,EventArgs e)
        {
            using (DBInteractiobDataContext Ratingcontext = new DBInteractiobDataContext())
            {
                RatingValue rv = new RatingValue();
                rv.ratingvalue1 = TextBox1.Text;
                Ratingcontext.RatingValues.InsertOnSubmit(rv);
                Ratingcontext.SubmitChanges();
                Response.Write("<script>alert('inserted successfully!!');</script>");
            }
        }


    }
}