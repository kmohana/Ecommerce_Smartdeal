using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ecommerce_Smartdeal
{
    public class Commerce_cart
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public string Image { get; set; }
        public string Description { get; set; }
        public double Price { get; set; }

        public int Quantity { get; set; }

        public Commerce_cart()
        {

        }

        public Commerce_cart(int Id,string Name , string Image, string Description, double Price, int Quantity)
        {
            this.ID = ID;
            this.Name = Name;
            this.Image = Image;
            this.Description = Description;
            this.Price = Price;
            this.Quantity = Quantity;

        }


    }
}