using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL_WebBanHang
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Users"] = new List<User>();
            List<User> users = (List<User>)Application["Users"];
            users.Add(new User("nghiadinh", "nghiadinh115", "123", "123"));


            //Khởi tạo danh sách sản phẩm sau đó chuyển vào trạng thái Application
            Application["ProductList"] = new List<Product>();
            List<Product> products = (List<Product>)Application["ProductList"];

            //Kính mắt
            products.Add(new Product() { id = "1", type = "kinh", img = "../src/img_KinhCan/kinhcan001.jpeg", name = "Kính cận 01", price = "3000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "2", type = "kinh", img = "../src/img_KinhCan//kinhcan002.jpeg", name = "Kính cận 02", price = "7000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "3", type = "kinh", img = "../src/img_KinhCan//kinhcan003.jpeg", name = "Kính cận 03", price = "5000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "4", type = "kinh", img = "../src/img_KinhCan//kinhcan004.jpeg", name = "Kính cận 04", price = "2000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "5", type = "kinh", img = "../src/img_KinhCan//kinhcan005.jpeg", name = "Kính cận 05", price = "3000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "6", type = "kinh", img = "../src/img_KinhCan/kinhcan006.jpeg", name = "Kính cận 06", price = "8000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "7", type = "kinh", img = "../src/img_KinhCan//kinhcan007.jpeg", name = "Kính cận 07", price = "4000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "8", type = "kinh", img = "../src/img_KinhCan//kinhcan008.jpeg", name = "Kính cận 08", price = "5000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "9", type = "kinh", img = "../src/img_KinhCan//kinhcan009.jpeg", name = "Kính cận 09", price = "4000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "10", type = "kinh", img = "../src/img_KinhCan//kinhcan010.jpeg", name = "Kính cận 10", price = "6000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "11", type = "kinh", img = "../src/img_KinhCan//kinhcan011.jpeg", name = "Kính cận 11", price = "3000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "12", type = "kinh", img = "../src/img_KinhCan//kinhcan012.jpeg", name = "Kính cận 12", price = "7000000", discount = 0.3f, TT = "New" });

            //Kính râm
            products.Add(new Product() { id = "13", type = "kinh2", img = "../src/img_KinhRam/kinhram001.jpeg", name = "Kính râm 001", price = "3000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "14", type = "kinh2", img = "../src/img_KinhRam/kinhram002.jpeg", name = "Kính râm 002", price = "2000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "15", type = "kinh2", img = "../src/img_KinhRam/kinhram003.jpeg", name = "Kính râm 003", price = "6000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "16", type = "kinh2", img = "../src/img_KinhRam/kinhram004.jpeg", name = "Kính râm 004", price = "1000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "17", type = "kinh2", img = "../src/img_KinhRam/kinhram005.jpeg", name = "Kính râm 005", price = "7000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "18", type = "kinh2", img = "../src/img_KinhRam/kinhram006.jpeg", name = "Kính râm 006", price = "2000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "19", type = "kinh2", img = "../src/img_KinhRam/kinhram007.jpeg", name = "Kính râm 007", price = "4000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "20", type = "kinh2", img = "../src/img_KinhRam/kinhram008.jpeg", name = "Kính râm 008", price = "7000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "21", type = "kinh2", img = "../src/img_KinhRam/kinhram009.jpeg", name = "Kính râm 009", price = "2000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "22", type = "kinh2", img = "../src/img_KinhRam/kinhram010.jpeg", name = "Kính râm 010", price = "9000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "23", type = "kinh2", img = "../src/img_KinhRam/kinhram011.jpeg", name = "Kính râm 011", price = "8000000", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "24", type = "kinh2", img = "../src/img_KinhRam/kinhram012.jpeg", name = "Kính râm 012", price = "4000000", discount = 0.3f, TT = "New" });

            Application["ProducList"] = products;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}