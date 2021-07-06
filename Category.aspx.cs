using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce_Smartdeal
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string id = Request.QueryString["category_id"];
  
                if(id != null)
                {
                   
                    dlCategory.DataSource = DataAccess.SelectQuery("select * from product_details where category_id =" + id);
                    dlCategory.DataBind();
                }
            }
        }

       
    }
}