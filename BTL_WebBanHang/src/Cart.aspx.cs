using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebBanHang.src
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>" + Session["username"].ToString() + "" + "</p>";

                int logCount = Convert.ToInt32(Application["cartnumber"]); 

                if (Request.Cookies["cart"] != null)
                {
                    List<Product> cartList = new List<Product>();
                    List<Product> productList = (List<Product>)Application["ProductList"];
                    string[] productsID = Request.Cookies["cart"].Value.Split(',');
                    foreach (string productID in productsID)
                    {
                        foreach (Product product in productList)
                        {
                            if(product.id == productID)
                            {
                                logCount++;
                                cartList.Add(product);
                            }
                        }
                    }
                    string dssp = "";
                    dssp += "<div class='body-contents__cart-tittle'>";
                    dssp += "<table class='cart-table'>";
                    dssp += "<tr>";
                    dssp += "<th>Ảnh</th>";
                    dssp += "<th>Tên sản phẩm</th>";
                    dssp += "<th>Giá</th>";
                    dssp += "<th>Số lượng</th>";
                    dssp += "<th>Tổng cộng</th>";
                    dssp += "<th>Tác Vụ</th>";
                    dssp += "</tr>";

                    int i = 0;

                    foreach(Product product in cartList)
                    {
                        i++;
                        dssp += "<tr class='cart-table-info'>";
                        dssp += "<td><img class='cart--img' src='" + product.img + "'></td>";
                        dssp += "<td>" + product.name + "</td>";
                        dssp += "<td>" + product.price + "</td>";
                        dssp += "<td> " + i + " </td>";
                        dssp += "<td>" + product.price + "</td>";
                        dssp += "<td>";
                        dssp += "<div><a href= 'DeleteProduct.aspx?id=" + product.id + "'><button class='Delete_Product'>Xóa</button></a></div>";
                        dssp += "</td>";
                        dssp += "</tr>";
                        
                    }
                    dssp += "</table>";
                    dssp += "</div>";

                    cartProduct.InnerHtml = dssp;

                    //Display list products price
                    int productsPrice = 0;
                    foreach (Product product in cartList)
                    {
                        productsPrice += Convert.ToInt32(product.price);
                        
                    }
                    product_Price.InnerHtml = productsPrice.ToString() + "<span class='cart_price_unit'>đ</span>";

                    int orderTotal = productsPrice;
                    order_total_price.InnerHtml = orderTotal.ToString() + "<span class='cart_price_unit'>đ</span>";
                }
                else
                {
                    Response.Redirect("Product_Detail.aspx");
                }
            }
            else
            {
                Response.Redirect("Sign.aspx");
            }
        }
    }
}   