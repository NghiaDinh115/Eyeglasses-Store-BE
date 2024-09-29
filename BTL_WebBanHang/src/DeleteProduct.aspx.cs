using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebBanHang.src
{
    public partial class DeleteProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int count = Convert.ToInt32(Application["cartnumber"]);

            string deletedProductID = Request.QueryString["id"];
            string deletedProductIDInCookies = deletedProductID + ",";
            string cartCookies = Request.Cookies["cart"].Value;
            int deletedProductIDPositionInCookies = cartCookies.IndexOf(deletedProductID);
            string newCookiesAfterDeletedProduct = cartCookies.Remove(deletedProductIDPositionInCookies, deletedProductIDInCookies.Length);

            Response.Cookies["cart"].Value = newCookiesAfterDeletedProduct;
            Response.Cookies["cart"].Expires = DateTime.Now.AddDays(12);
            Response.Redirect("Cart.aspx");
            count--;
        }
    }
}