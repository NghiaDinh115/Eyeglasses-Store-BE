using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebBanHang.src.img
{
    public partial class Product_Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>" + Session["username"].ToString() + "</p>";
            }

            string id = Request.QueryString["id"];

            if (id != null)
            {
                List<Product> productList = (List<Product>)Application["ProductList"];
                List<Product> products1 = new List<Product>();

                foreach (Product product in productList)
                {
                    if (id == product.id)
                    {
                        products1.Add(product);
                    }
                }

                string dssp = "";

                foreach (Product product in products1)
                {
                    dssp += "<div class='container-body'>";

                    dssp += "<div class='body-contents'>";

                    dssp += "<div class='body-contents__img'>";
                    dssp += "<img class='body-contents__img--img' src='" + product.img + "' alt='Ảnh kính mắt'>";
                    dssp += "</div>";

                    dssp += "<div class='body-contents__details'>";

                    dssp += "<div class='body-contents__details - txt'>";
                    dssp += "<h1 class='body-contents__details-txt--inside'>" + product.name + "</h1>";
                    dssp += "<p  class='body-contents__details-txt--inside body-contents__details-txt--inside-size'><b>" + product.price + "</b></p>";
                    dssp += "<p class='body-contents__details-txt--inside body-contents__details-txt--inside-size'>Gọng kính cốt kim loại cao cấp là sự kết hợp hoàn hảo giữa kiểu dáng hiện đại và chất liệu đẳng cấp. Với chất liệu kim loại bền bỉ và nhẹ nhàng, sản phẩm sẽ giúp bạn tự tin diện trong mọi hoàn cảnh.</p>";
                    dssp += "<div class='body-contents__details-btn'>";
                    dssp += "<button type = 'submit' runat='server' class='body-contents__details-btn--add' onserverclick='AddToCartBtn_Click'>Thêm vào giỏ hàng</button>";
                    dssp += "</div>";
                    dssp += "</div>";

                   
                    dssp += "</div>";

                    dssp += "</div>";

                    dssp += "</div>";
                }

                infoProduct.InnerHtml = dssp;
            }
            else
            {
                Response.Redirect("Sign.aspx");
            }
            if (IsPostBack)
            {
                AddToCartBtn_Click(sender, e);
            }
        }

        protected void AddToCartBtn_Click(object sender, EventArgs e) 
        {

            if (Session["username"] != null)
            {
                string id = Request.QueryString["id"];
                //store cart to cookies
                if (id != null)
                {
                    HttpCookie cartCookie = Request.Cookies["cart"];
                    if (cartCookie == null)
                    {
                        cartCookie = new HttpCookie("cart");
                        cartCookie.Value = id + ",";
                        cartCookie.Expires = DateTime.Now.AddDays(14);
                        Response.Cookies.Add(cartCookie);
                    }
                    else
                    {
                        cartCookie.Value += id + ",";
                        cartCookie.Expires = DateTime.Now.AddDays(14);
                        Response.Cookies.Set(cartCookie);
                    }
                    Response.Redirect("Cart.aspx");
                }
            }
            else
            {
                Response.Redirect("Sign.aspx");
            }
        }

    }
}