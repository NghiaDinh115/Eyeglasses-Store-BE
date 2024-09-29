using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebBanHang.src
{
    public partial class DarkGlasses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>" + Session["username"].ToString() + "" + "</p>";
            }
            List<Product> productList = (List<Product>)Application["ProductList"];
            List<Product> products1 = new List<Product>();

            if (productList == null)
            {
                return;
            }

            /*Product newProduct = new Product();*/

            foreach (Product product in productList)
            {
                string id = product.id;
                if (id == "13" || id == "14" || id == "15" || id == "16" || id == "17" || id == "18" || id == "19" || id == "20" || id == "21" || id == "22" || id == "23" || id == "24")
                {
                    products1.Add(product);
                }
            }



            string dssp = "";
            int i = 0;
            foreach (Product product in products1)
            {
                i++;
                dssp += "<div class= 'product'>";
                dssp += "<a href='Product_Detail.aspx?id=" + product.id + "'>";
                dssp += "<img src = " + product.img + ">";
                dssp += "<p>" + product.price + "</p>";
                dssp += "</a>";
                dssp += "</div>";
            }
            tableProduct.InnerHtml = dssp;
        }
    }
}