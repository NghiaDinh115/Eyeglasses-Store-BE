﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebBanHang.src.img
{
    public partial class SignOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Main.aspx");
        }
    }
}