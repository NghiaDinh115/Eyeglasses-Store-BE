using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_WebBanHang
{
    public class Product
    {
        public string id;
        public string type;
        public string img;
        public string name;
        public string price;
        public float discount;
        public string TT;

        public Product()
        {
        }

        public Product(string id, string type, string img, string name, string price, float discount, string TT)
        {
            this.id = id;
            this.type = type;
            this.img = img;
            this.name = name;
            this.price = price;
            this.discount = discount;
            this.TT = TT;
        }
    }
}