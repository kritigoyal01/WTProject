using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class LoginUser
    {
        public static User login(string name, string pass)
        {
            DBInteractiobDataContext dc = new DBInteractiobDataContext();
            var u = from n in dc.Users
                     where n.username == name &&
                     n.pass == pass
                     select n;

            return u as User;
        }
    }
}