using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            SimpleQuery();
		}

        public void SimpleQuery()
        {
             DBInteractiobDataContext dc = new DBInteractiobDataContext();
             
              var q =   from a in dc.GetTable<Post>()
                        
                        select a;
          

            dataGridView1.DataSource = q;
dataGridView1.DataBind();

 Lbl.Text = q.ToString();
Lbl.DataBind();

        }
	}
}