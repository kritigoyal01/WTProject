using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class Users
    {
        UserType ut;
        private int userid;
        private string name;
        private string date;
        private int phone_no;
        private string email;
        private string pass;
        private string username;
        private string subscribed;
        private string img;
     
        private string gender;

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }

        public string Pass
        {
            get
            {
                return pass;
            }

            set
            {
                pass = value;
            }
        }

        public string Username
        {
            get
            {
                return username;
            }

            set
            {
                username = value;
            }
        }

        public string Subscribed
        {
            get
            {
                return subscribed;
            }

            set
            {
                subscribed = value;
            }
        }

        public string Img
        {
            get
            {
                return img;
            }

            set
            {
                img = value;
            }
        }

        public string Gender
        {
            get
            {
                return gender;
            }

            set
            {
                gender = value;
            }
        }

        public int Userid
        {
            get
            {
                return userid;
            }

            set
            {
                userid = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Date
        {
            get
            {
                return date;
            }

            set
            {
                date = value;
            }
        }

        public int Phone_no
        {
            get
            {
                return phone_no;
            }

            set
            {
                phone_no = value;
            }
        }
    }