using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Ecommerce_Smartdeal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {

            
        }

        

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e) 
        {

        }

        protected void Login_button_Click(object sender, EventArgs e)
        {
            string username = Convert.ToString(Login_user.Text);
            string pwd = Convert.ToString(Login_Password.Text);


            if(string.IsNullOrEmpty(username) || string.IsNullOrEmpty(pwd))
            {
                Response.Write("<script>alert('Username/Password cannot be null')</script>");
            }
            else
            {
                try
                {
                    string strcon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from user_details where username=@username and password=@word", con);
                    cmd.Parameters.AddWithValue("@username", Login_user.Text);
                    cmd.Parameters.AddWithValue("@word", Login_Password.Text);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    if (dt.Rows.Count > 0)
                    {
                        Session["id"] = username;
                        string QueryString = "";
                        QueryString = "?ID=" + username;
                        Session["pw"] = pwd;
                        Response.Redirect("index.aspx" + QueryString);
                        Session.RemoveAll();
                    }
                    else
                    {
                        Label1.Text = "You're username and word is incorrect";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    }

                }
                catch(Exception ex)
                {
                    Response.Write(ex.ToString());
                }
                    
            }
            


        }

        protected void Login_Password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
