using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce_Smartdeal
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                lbl_user.Text = "<b><h4>Welcome" + " " + Convert.ToString(Session["id"]) +"</h4></b>";
                Btn_Logout.Visible = true;
            }
            else
            {
                Btn_Logout.Visible = false;
            }
               
            
        }

        protected void Btn_Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session["id"] = null;
            Response.Redirect("index.aspx");
        }
    }
}