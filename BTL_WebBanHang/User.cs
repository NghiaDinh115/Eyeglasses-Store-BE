using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_WebBanHang
{
    public class User
    {
        public string username;
        public string email;
        public string password;
        public string repassword;

        public User(string username, string email, string password, string repassword)
        {
            this.username = username;
            this.email = email;
            this.password = password;
            this.repassword = repassword;
        }
    }
}