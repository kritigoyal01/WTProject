using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTProject
{
    public class Post
    {
        private int postid;
        private string title;
        private string writtencontent;
        private string headerimage;
        Cuisine c;
        Users u;

        public int Postid
        {
            get
            {
                return postid;
            }

            set
            {
                postid = value;
            }
        }

        public string Title
        {
            get
            {
                return title;
            }

            set
            {
                title = value;
            }
        }

        public string Writtencontent
        {
            get
            {
                return writtencontent;
            }

            set
            {
                writtencontent = value;
            }
        }

        public string Headerimage
        {
            get
            {
                return headerimage;
            }

            set
            {
                headerimage = value;
            }
        }
    }
}