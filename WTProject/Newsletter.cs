using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class Newsletter
    {
        private int newsid;
        private string newstitle;
        private string newssubject;
        private string newscontent;
        private string header;
        private string footer;

        public int Newsid
        {
            get
            {
                return newsid;
            }

            set
            {
                newsid = value;
            }
        }

        public string Newstitle
        {
            get
            {
                return newstitle;
            }

            set
            {
                newstitle = value;
            }
        }

        public string Newssubject
        {
            get
            {
                return newssubject;
            }

            set
            {
                newssubject = value;
            }
        }

        public string Newscontent
        {
            get
            {
                return newscontent;
            }

            set
            {
                newscontent = value;
            }
        }

        public string Header
        {
            get
            {
                return header;
            }

            set
            {
                header = value;
            }
        }

        public string Footer
        {
            get
            {
                return footer;
            }

            set
            {
                footer = value;
            }
        }
    }

}