using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class CuisineForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButton_Click1(object sender, EventArgs e)
        {
            using (DBInteractiobDataContext context1 = new DBInteractiobDataContext())
            {
                Cuisine cu = new Cuisine();
                Response.Write("In");
                cu.cuisinename = CuisineNameTextBox.Text;
                context1.Cuisines.InsertOnSubmit(cu);
                context1.SubmitChanges();
                Response.Write("<script>alert('inserted successfully!!');</script>");
            }
        }
    }
}