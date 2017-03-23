using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class Tags
    {
        private int tagid;
        private string tagname;

        public int Tagid
        {
            get
            {
                return tagid;
            }

            set
            {
                tagid = value;
            }
        }

        public string Tagname
        {
            get
            {
                return tagname;
            }

            set
            {
                tagname = value;
            }
        }
    }

}