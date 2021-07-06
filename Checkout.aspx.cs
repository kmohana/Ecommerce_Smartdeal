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
       String mycon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string selectData, Output = "";
            Double cartTotal= 0.00;
            Double discountPercentage = 0.00;
            bool Exists = false;
            SqlConnection con1 = new SqlConnection(mycon);
            SqlCommand cmd = null;
            SqlDataReader dataReader = null;

            try

            {
                        selectData = "Select sum(quantity * price) from shopping_cart where session_id = '" + Session["id"] + "'";
                        
                        con1.Open();
                        cmd= new SqlCommand(selectData,con1);
                        dataReader = cmd.ExecuteReader();
                        cmd.CommandText = selectData;
                        

                        while(dataReader.Read())
                        {
                            Output = Output + dataReader.GetValue(0) + "\n"; 
                        }
                            
                        Exists = String.IsNullOrEmpty(Output);

                        cartTotal = int.Parse(Output);
               

                        if(RdoOffers.SelectedIndex == 0)
                        {
                            discountPercentage = 0.10;
                        }
                        else if(RdoOffers.SelectedIndex == 1)
                        {
                            discountPercentage = 0.03;
                        }
                        else if(RdoOffers.SelectedIndex == 2 && cartTotal >= 1000)
                        {
                            discountPercentage = 0.05;
                        }

                        total.Text = cartTotal.ToString();
                        LblOff.Text = (cartTotal - (cartTotal * discountPercentage)).ToString();
                        
  
                       
            }
            catch (Exception ex)
            {
                       Response.Write(ex.ToString());

            }

            finally
            {
                        dataReader.Close();
                        cmd.Dispose();
                        con1.Close();
            }


            if (Session["id"] != null)
            {
                if (!Exists)
                {
                    btn_placeorder.Visible = true;
                    total.Visible = true;
                    LblOff.Visible = true;
                }
                else
                {
                    btn_placeorder.Visible = false;
                    total.Visible = false;
                    LblOff.Visible = false;
                }
            }

        }

        protected void Btn_placeorder_Click(object sender, EventArgs e)
        {
            
            SqlConnection con1 = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();

            try
            {

                string deleteData = "delete from shopping_cart  where  session_id = '" + Session["id"] + "'";
                string insertData = "Insert into order_details(user_name,product_id,product_name,description,quantity,price) SELECT session_id,product_id,product_name,description,quantity,price FROM shopping_cart where  session_id = '" + Session["id"] + "'";


                con1.Open();
                
                //delete the shopping cart
                cmd.CommandText = insertData;
                cmd.Connection = con1;
                cmd.ExecuteNonQuery();

                //Inserted to Order tables
                cmd.CommandText = deleteData;
                cmd.Connection = con1;
                cmd.ExecuteNonQuery();

                Response.Redirect("OrderSuccess.aspx");

            }

            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }

            finally
            {
                cmd.Dispose();
                con1.Close();

            }

        }

      
    }
}