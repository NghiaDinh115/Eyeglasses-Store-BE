using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebBanHang.src
{
    public partial class CartManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                addButton(sender,e);
                updateButton(sender, e);
            }
        }
        protected void addButton(object sender, EventArgs e)
        {
            string id_sp = Request.Form["id_sp"];
            string type_sp = Request.Form["type_sp"];
            string name_sp = Request.Form["username"];
            string img_sp = Request.Form["img_sp"];
            string dongia_sp = Request.Form["dongia_sanpham"];
            string tt_sp = Request.Form["tt_sanpham"];

            List<Product> products = (List<Product>)Application["ProductList"];
            bool check = true;
            if (id_sp != "" && type_sp != "" && name_sp != "" && img_sp != "" && dongia_sp != "")
            {
                foreach (Product product in products)
                {
                    if (id_sp == product.id)
                    {
                        btn_error.InnerHtml = "Sản phẩm đã tồn tại";
                        check = false;
                    }
                }
                if (check)
                {
                    btn_error.InnerHtml = "Thêm sản phẩm thành công";
                    products.Add(new Product() { id = id_sp, type = type_sp, name = name_sp, img = img_sp, price = dongia_sp, discount = 0.3f, TT = tt_sp });
                    Application["ProductList"] = products;



                    string dstk = "";
                    dstk += "<table class=\"bang\" border='1'>";
                    dstk += "<tr class=\"item_title\">";
                    dstk += "<th> STT </th>";
                    dstk += "<th> Mã SP </th>";
                    dstk += "<th> Kiểu SP</th>";
                    dstk += "<th> Ảnh sản Phảm </th>";
                    dstk += "<th>Tên sản phẩm</th>";
                    dstk += "<th>Giá</th>";
                    dstk += "<th>Trạng thái</th>";
                    dstk += "</tr>";
                    int i = 0;
                    foreach (Product product in products)
                    {
                        i++;
                        dstk += "<tr>";
                        dstk += "<td>" + i + "</td>";
                        dstk += "<td>" + product.id + "</td>";
                        dstk += "<td>" + product.type + "</td>";
                        dstk += "<td>" + product.img + "</td>";
                        dstk += "<td><p>" + product.name + "</p></td>";
                        dstk += "<td><p>" + product.price + "</p></td>";
                        dstk += "<td><p>" + product.TT + "</p></td>";
                        dstk += "</tr>";
                    }
                    dstk += "</table>";
                    box.InnerHtml = dstk;
                }
            }
        }

        protected void updateButton(object sender, EventArgs e)
        {
            string id_sp = Request.Form["id_sp"];
            string type_sp = Request.Form["type_sp"];
            string name_sp = Request.Form["username"];
            string img_sp = Request.Form["img_sp"];
            string dongia_sp = Request.Form["dongia_sanpham"];

            List<Product> products = (List<Product>)Application["ProductList"];
            bool check = true;
            if (id_sp != "" && type_sp != "" && name_sp != "" && img_sp != "" && dongia_sp != "")
            {
                foreach (Product product in products)
                {
                    if (id_sp != product.id)
                    {
                        btn_error.InnerHtml = "Sản phẩm đã tồn tại";
                        check = false;
                    }
                    else
                    {
                        product.type = type_sp;
                        product.name = name_sp;
                        product.img = img_sp;
                        product.price = dongia_sp;
                        btn_error.InnerHtml = "Sản phẩm đã được update thành công";
                    }
                }
            }
        }
    }
}