using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class Feedback
    {
        private int feedbackid;
        private string feedbackname;
        private string feedbackemail;
        private string feedbackmessage;

        public int Feedbackid
        {
            get
            {
                return feedbackid;
            }

            set
            {
                feedbackid = value;
            }
        }

        public string Feedbackname
        {
            get
            {
                return feedbackname;
            }

            set
            {
                feedbackname = value;
            }
        }

        public string Feedbackemail
        {
            get
            {
                return feedbackemail;
            }

            set
            {
                feedbackemail = value;
            }
        }

        public string Feedbackmessage
        {
            get
            {
                return feedbackmessage;
            }

            set
            {
                feedbackmessage = value;
            }
        }
    }
}