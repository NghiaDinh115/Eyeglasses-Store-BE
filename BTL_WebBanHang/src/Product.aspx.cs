using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebBanHang
{
    public partial class Product1 : System.Web.UI.Page
    {

        protected void getProductsListBySearchAndFilter(string search, int begin, int end, List<Product> productsListBySearchAndFilter, List<Product> productsLists)
        {
            foreach (Product product in productsLists)
            {
                if (product.name.ToLower().IndexOf(search) != -1 && Convert.ToInt32(product.price) >= begin && Convert.ToInt32(product.price) <= end)
                {
                    productsListBySearchAndFilter.Add(product);
                }
                if (product.name.ToLower().IndexOf(search) != 1)
                {
                    tableProduct.InnerHtml = "";
                }
            }
            string dssp = "";

            int i = 0;
            foreach (Product product in productsListBySearchAndFilter)
            {
                i++;
                dssp += "<div class= 'product'>";
                dssp += "<a href='Product_Detail.aspx?id=" + product.id + "'>";
                dssp += "<img src = " + product.img + ">";
                dssp += "<p>" + product.price + "</p>";
                dssp += "</a>";
                dssp += "</div>";
            }
            tableProduct1.InnerHtml = dssp;
            tableProduct.InnerHtml = "";
        }

        protected void getProductsFilter(int begin, int end, List<Product> productsListBySearchAndFilter, List<Product> productsList)
        {
            foreach (Product product in productsList)
            {
                if(Convert.ToInt32(product.price) >= begin && Convert.ToInt32(product.price) <= end)
                {
                    productsListBySearchAndFilter.Add(product);
                }
            }
            string dssp = "";
            int i = 0;
            foreach (Product product in productsListBySearchAndFilter)
            {
                i++;
                dssp += "<div class= 'product'>";
                dssp += "<a href='Product_Detail.aspx?id=" + product.id + "'>";
                dssp += "<img src = " + product.img + ">";
                dssp += "<p>" + product.price + "</p>";
                dssp += "</a>";
                dssp += "</div>";
            }
            tableProduct1.InnerHtml = dssp;
            tableProduct.InnerHtml = "";
        }

        protected string totalProducts(List<Product> productsListByTypeAndFilter)
        {
            int total = 0;
            foreach (Product product in productsListByTypeAndFilter)
            {
                total++;
            }
            return total.ToString();
        }

        protected string filterPrice(List<Product> productsList)
        {
            int type = 0;
            foreach (Product product in productsList)
            {
                int price = Convert.ToInt32(product.price);
                if (price >= 0 && price <= 1000000)
                {
                    type = 1;
                }
                else if (price >= 1000000 && price <= 3000000)
                {
                    type = 2;
                }
                else if (price >= 3000000 & price <= 99999999)
                {
                    type = 3;
                }
            }
            return type.ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>" + Session["username"].ToString() + "" + "</p>";
            }
            List<Product> productList = (List<Product>)Application["ProductList"];
            List<Product> products1 = new List<Product>();

            if(productList == null)
            {
                return;
            }

            /*Product newProduct = new Product();*/

            foreach (Product product in productList)
            {
                string id = product.id;
                if(id == "1" || id == "2" || id == "3" || id == "4" || id == "5" || id == "6" || id == "7" || id == "8" || id == "9" || id == "10" || id == "11" || id == "12")
                {
                    products1.Add(product);
                }
            }



            string dssp = "";
            int i = 0;
            foreach (Product product in productList)
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



            //Filter part
            List<Product> productsList = (List<Product>)Application["ProductList"];
            List<Product> productsListBySearchAndFilter = new List<Product>();
            Page.Title = "Tìm kiếm";

            string search = Request.QueryString["search"];
            string filter = Request.QueryString["filter"];

            if (search != null)
            {
                //Display page contents and products
                search = search.ToLower();

                //Change page title
                Page.Title = "Tìm kiếm";

                //Create Products List
                if (filter != null)
                {
                    Page.Title = "Lọc 11";

                    if(filter == "01")
                    {
                        Page.Title = "Lọc 1";
                        getProductsListBySearchAndFilter(search, 0, 1000000, productsListBySearchAndFilter, productsList);
                        all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' Dưới 1 triệu ({totalProducts(productsListBySearchAndFilter)})";
                    }
                    else if (filter == "02")
                    {
                        getProductsListBySearchAndFilter(search, 1000000, 3000000, productsListBySearchAndFilter, productsList);
                        all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' từ 1 - 3 triệu ({totalProducts(productsListBySearchAndFilter)})";
                    }
                    else if (filter == "03")
                    {
                        getProductsListBySearchAndFilter(search, 3000000, 9999999, productsListBySearchAndFilter, productsList);
                        all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' Dưới 1 triệu ({totalProducts(productsListBySearchAndFilter)})";
                    }
                }
                else
                {
                    getProductsListBySearchAndFilter(search, 0, 9999999, productsListBySearchAndFilter, productsList);
                    all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' ({totalProducts(productsListBySearchAndFilter)})";
                }
            }
            else
            {
                if (filter == "01")
                {
                    Page.Title = "Lọc 1";
                    getProductsFilter(0, 1000000, productsListBySearchAndFilter, productsList);
                    all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' Dưới 1 triệu ({totalProducts(productsListBySearchAndFilter)})";
                }
                else if (filter == "02")
                {
                    getProductsFilter(1000000, 3000000, productsListBySearchAndFilter, productsList);
                    all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' từ 1 - 3 triệu ({totalProducts(productsListBySearchAndFilter)})";
                }
                else if (filter == "03")
                {
                    getProductsFilter(3000000, 9999999, productsListBySearchAndFilter, productsList);
                    all_products_brand_name.InnerText = $"Kết quả tìm kiếm cho '{search}' Dưới 1 triệu ({totalProducts(productsListBySearchAndFilter)})";
                }
            }
        }

        //Search Func tion
        protected void searchButton_Click(object sender, EventArgs e)
        {
            string searchText = "";
            if(search_text.Value != "")
            {
                searchText = search_text.Value.ToLower();
            }
            Response.Redirect($"Product.aspx?search={searchText}");
        }
    }
}