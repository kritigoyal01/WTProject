using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class UserManagement
    {
        User u;
        public UserManagement(User u)
        {
            this.u = u;
        }

        public Boolean addUser()
        {
            DBInteractiobDataContext dc = new DBInteractiobDataContext();
            dc.Users.InsertOnSubmit(u);

            try
            {
                dc.SubmitChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
    }
}