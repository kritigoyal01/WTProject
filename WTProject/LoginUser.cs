using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class LoginUser
    {
        User u;
        public LoginUser(User u)
        {
            this.u = u;
        }
        public static IEnumerable<User> login(string name, string pass)
        {
            DBInteractiobDataContext dc = new DBInteractiobDataContext();
            var u = from n in dc.Users
                     where n.username == name &&
                     n.pass == pass
                     select n;

            return u;
        }
        public Boolean ChangePassword()
        {
            //Add Some logic for password change
            return false;
        }
    }
}