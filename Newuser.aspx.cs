using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Ecommerce_Smartdeal
{
    public partial class Newuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {  
                string connect = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
                SqlConnection con1 = new SqlConnection(connect);
                con1.Open();
                string query = "Insert into user_details(first_name,last_name,username,password,mobile,address,zipcode,creation_date,last_modified) values('" + firstname.Text + "','" + lastname.Text + "','" + username.Text + "','" + password.Text + "','" + mobilenum.Text + "','" + addr.Text + "','" + zip.Text + "','" + DateTime.Now + "','" + DateTime.Now + "')";
                SqlDataAdapter sda = new SqlDataAdapter(query, con1);
                sda.SelectCommand.ExecuteNonQuery();
                con1.Close();
                Response.Redirect("Success.aspx");
                MessageBox.Show("Registered Successfully");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            firstname.Text = String.Empty;
            lastname.Text = String.Empty;
            username.Text = String.Empty;
            email.Text = String.Empty;
            password.Text = String.Empty;
            conf_password.Text = String.Empty;
            mobilenum.Text = String.Empty;
            addr.Text = String.Empty;
            zip.Text = String.Empty;
        }
    }
}
