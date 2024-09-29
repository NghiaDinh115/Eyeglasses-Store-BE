using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebBanHang.src.img
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                string username = Request.Form["username"];
                string email = Request.Form["email"];
                string password = Request.Form["password"];
                string repassword = Request.Form["repassword"];

                List<User> users = (List<User>)Application["Users"];
                Boolean check = true;
                
                if(username != "" && email != "" && password != "" && repassword != "")
                {
                    if(password != repassword)
                    {
                        errorMessage.InnerHtml = "Mật khẩu bạn nhập không khớp nhau";
                        check = false;
                    }
                    foreach(User user in users)
                    {
                        if (username == user.username)
                        {
                            errorMessage.InnerHtml = "Tài khoản này đã được đăng ký";
                            check = false;
                        }
                    }
                    if (check)
                    {
                        errorMessage.InnerHtml = "Đăng ký thành công !";
                        User newUser = new User(username, email, password, repassword);
                        users.Add(newUser);
                        Application["Users"] = users;
                        return;
                    }
                }
            }
        }
    }
}