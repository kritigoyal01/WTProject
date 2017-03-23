using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class Cuisine
    {
        private int cuisineid;
        private string cuisinename;

        public int Cuisineid
        {
            get
            {
                return cuisineid;
            }

            set
            {
                cuisineid = value;
            }
        }

        public string Cuisinename
        {
            get
            {
                return cuisinename;
            }

            set
            {
                cuisinename = value;
            }
        }
    }
}