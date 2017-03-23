using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class Comments
    {
        private int commentid;
        private string comments;
      

        public int Commentid
        {
            get
            {
                return commentid;
            }

            set
            {
                commentid = value;
            }
        }

        public string Comments
        {
            get
            {
                return comments;
            }

            set
            {
                comments = value;
            }
        }
    }
}