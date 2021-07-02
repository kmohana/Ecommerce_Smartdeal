using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Ecommerce_Smartdeal
{
    public partial class Checkout : System.Web.UI.Page
    {
        private String mycon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string selectData, Output = "";
            bool Exists = false;

            try

            {
                        
                        SqlCommand cmd;
                        SqlDataReader dataReader;

                        selectData = "Select sum(quantity * price) from shopping_cart where session_id = '" + Session["id"] + "'";
                        SqlConnection con1 = new SqlConnection(mycon);
                        con1.Open();
                        cmd= new SqlCommand(selectData,con1);
                        dataReader = cmd.ExecuteReader();
                        cmd.CommandText = selectData;
                        

                        while(dataReader.Read())
                        {
                            Output = Output + dataReader.GetValue(0) + "\n"; 
                        }
                        total.Text = Output;
                        Exists = String.IsNullOrEmpty(Output);

                        dataReader.Close();
                        cmd.Dispose();
                        con1.Close();
                       

            }
            catch (Exception ex)
            {
                       Response.Write(ex.ToString());

            }

            if (Session["id"] != null)
            {
                if (!Exists)
                {
                    btn_placeorder.Visible = true;
                    lbl_total.Visible = true;
                }
                else
                {
                    btn_placeorder.Visible = false;
                    lbl_total.Visible = false;
                }
            }

        }

        protected void btn_placeorder_Click(object sender, EventArgs e)
        {
            String mycon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

            string deleteData = "delete from shopping_cart  where  session_id = '" + Session["id"] + "'";
            string insertData = "Insert into order_details(user_name,product_id,product_name,description,quantity,price) SELECT session_id,product_id,product_name,description,quantity,price FROM shopping_cart where  session_id = '" + Session["id"] + "'";
 
            SqlConnection con1 = new SqlConnection(mycon);
            con1.Open();
            SqlCommand cmd = new SqlCommand();
            //delete the shopping cart
            cmd.CommandText = insertData;
            cmd.Connection = con1;
            cmd.ExecuteNonQuery();

            //Inserted to Order tables
            cmd.CommandText = deleteData;
            cmd.Connection = con1;
            cmd.ExecuteNonQuery();

            con1.Close();

            Response.Redirect("OrderSuccess.aspx");

            




        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}