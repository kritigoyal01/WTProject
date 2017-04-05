using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTProject
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            using (DBInteractiobDataContext Feedbackcontext = new DBInteractiobDataContext())
            {
                Feedback f = new Feedback();
                f.feedbackname = NameTextBox.Value;
                f.feedbackemail = EmailTextBox.Value;
                f.feedbackmessage =MessageTextArea.Value;
                f.feedbacksubject = SubjectTextBox.Value;
                Feedbackcontext.Feedbacks.InsertOnSubmit(f);
                Feedbackcontext.SubmitChanges();
                Response.Write("<script>alert('inserted successfully!!');</script>");
            }
        }
    }
}