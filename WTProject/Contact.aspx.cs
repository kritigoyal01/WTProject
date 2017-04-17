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
      
        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (DBInteractiobDataContext Feedbackcontext = new DBInteractiobDataContext())
            {
                Feedback f = new Feedback();
                f.feedbackname = NameTextBox.Value;
                f.feedbackemail = EmailTextBox.Value;
                f.feedbackmessage = MessageTextArea.Value;
                f.feedbacksubject = SubjectTextBox.Value;
                Feedbackcontext.Feedbacks.InsertOnSubmit(f);
                try
                {
                    Feedbackcontext.SubmitChanges();
                    Response.Write("<script>alert('Thank you for your feedback. We\'ll revert to you shortly.');</script>");
                    this.Page.Form.Dispose();
                }
                catch (Exception err)
                {
                    Response.Write("<script>alert('An error occurred. We\'re sorry. Please try later.');</script>");
                }
            }
        }
    }
}