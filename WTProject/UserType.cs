using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class UserType
    {
        private int usertypeid;
        private string uservalues;

        public int Usertypeid
        {
            get
            {
                return usertypeid;
            }

            set
            {
                usertypeid = value;
            }
        }

        public string Uservalues
        {
            get
            {
                return uservalues;
            }

            set
            {
                uservalues = value;
            }
        }
    }
}