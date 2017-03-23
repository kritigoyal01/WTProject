using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class RatingValue
    {
        private int ratingvalueid;
        private string ratingvalue;

        public int Ratingvalueid
        {
            get
            {
                return ratingvalueid;
            }

            set
            {
                ratingvalueid = value;
            }
        }

        public string Ratingvalue
        {
            get
            {
                return ratingvalue;
            }

            set
            {
                ratingvalue = value;
            }
        }
    }
}