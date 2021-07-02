using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce_Smartdeal
{
    public partial class MenuControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                dlMenu.DataSource = DataAccess.SelectQuery("SELECT * FROM Category");
                dlMenu.DataBind();
            }
        }

        protected void dlMenu_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}