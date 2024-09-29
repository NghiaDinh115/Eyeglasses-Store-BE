using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebBanHang.src
{
    public partial class Sign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                List<User> users = (List<User>)Application["Users"];
                if(users == null)
                {
                    errorMessage.InnerHtml = "Không thể lấy danh sách người dùng";
                    return;
                }
                string username = Request.Form["username"];
                string password = Request.Form["password"];

                if(username != "" && password != "")
                {
                    foreach(User user in users)
                    {
                        if(username == user.username)
                        {
                            if(password == user.password)
                            {
                                Session["username"] = username;
                                Response.Redirect("Main.aspx");
                                break;
                            }
                            else
                            {
                                if(Session["dem"] == null)
                                {
                                    Session["dem"] = 1;
                                }
                                else
                                {
                                    Session["dem"] = (int)Session["dem"] + 1;
                                    if((int)Session["dem"] > 5)
                                    {
                                        /*Response.Redirect("../ThongBaoLoi.html");*/
                                        errorMessage.InnerHtml = "Hệ thống bảo trì";
                                    }
                                }
                                errorMessage.InnerHtml = "Bạn đã nhập sai mật khẩu lần thứ " + Session["dem"];
                            }
                        }
                        else
                        {
                            errorMessage.InnerHtml = "Tài khoản không tồn tại";
                        }
                    }
                }
                else
                {
                    errorMessage.InnerHtml = "Vui lòng không để trống thông tin đăng nhập";
                }

                /*foreach(User user in users)
                {
                    if(username != user.username && password != user.password)
                    {
                        errorMessage.InnerHtml = "Tên tài khoản hoặc mật khẩu sai";
                    }
                    else if(username == "" || password == "")
                    {
                        errorMessage.InnerHtml = "Vui lòng không để trống";
                    }
                    else
                    {
                        if(username == user.username && password == user.password)
                        {
                            Response.Redirect("Main.aspx");
                            break;
                        }
                        else
                        {
                            if(Session["dem"] == null)
                            {
                                Session["dem"] = 1;
                            }
                            else
                            {
                                Session["dem"] = (int)Session["dem"] + 1;
                                if((int)Session["dem"] > 5)
                                {
                                    Response.Redirect("ThongBaoLoi.aspx");
                                }
                                errorMessage.InnerHtml = "Bạn đã nhập sai lần thứ " + Session["dem"];
                            }
                        }
                    }
                }*/
            }
        }
    }
}