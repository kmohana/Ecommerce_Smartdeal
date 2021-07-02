using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;


namespace Ecommerce_Smartdeal
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        string mycon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string id = Request.QueryString["product_id"];

                if (id != null)
                {
                    dlProduct.DataSource = DataAccess.SelectQuery("SELECT * FROM PRODUCT_DETAILS WHERE PRODUCT_ID =" + id);
                    dlProduct.DataBind();
                }

               
            }
        }


        protected void dlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btncart_Click(object sender, EventArgs e)
        {

            string s = Convert.ToString(Session["id"]);
            Int64 product_id = Convert.ToInt64(Request.QueryString["product_id"]);
            string product_name = null, product_desc = null, product_sku, product_image, product_price = null, product_stock = null;

           
            string selectData = "select * from product_details where  product_id = '" + product_id + "'";
            SqlConnection con1 = new SqlConnection(mycon);
            SqlCommand cmd;
            con1.Open();

            cmd = new SqlCommand(selectData, con1);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                product_name = dr["product_name"].ToString();
                product_desc = dr["desc"].ToString();
                product_sku = dr["SKU"].ToString();
                product_image = dr["img"].ToString();
                product_price = dr["price"].ToString();
                product_stock = dr["stock_qty"].ToString();
            }


            if (Session["id"] != null)
            {

                if (txtqty.Text == " ")
                {
                    lblerror.Text = "Please enter valid quantity";
                }

                else if (Convert.ToInt64(txtqty.Text) > Convert.ToInt64(product_stock))
                {
                    lblerror.Text = "Sorry! Available stock is less.Please lower the quantity";
                }
                else if (Convert.ToInt64(txtqty.Text) <= 0)
                {
                    lblerror.Text = "Quantity cannot be 0 or less";
                }
                else
                {
                        lblerror.Text = " ";
                        string selectQty = "Select quantity from shopping_cart where session_id = '" + Session["id"] + "' and product_id = '" + product_id + "'";
                        SqlDataReader dataReader;
                        cmd = new SqlCommand(selectQty, con1);
                        object nullableValue = cmd.ExecuteScalar();
                        int itemExists;
                        if (nullableValue == null || nullableValue == DBNull.Value)
                        {
                            itemExists = 0;
                        }
                        else
                        {
                            int.TryParse(nullableValue.ToString(), out itemExists); 
                        }

                        

                        if (itemExists > 0)
                        {

                            dataReader = cmd.ExecuteReader();
                            dataReader.Read();
                          
                            int total_qty = int.Parse(dataReader["quantity"].ToString()) + Convert.ToInt32(txtqty.Text);
                            dataReader.Close();
                            string updateQty = "update shopping_cart set quantity = '" + total_qty + "'  where product_id = '" + product_id + "' and  session_id = '" + Session["id"] + "'";
                            cmd = new SqlCommand(updateQty, con1);
                            cmd.ExecuteNonQuery();
                            Response.Redirect("ViewCart.aspx?CartID=" + s);
                        }

                        else
                        {
                            lblerror.Text = " ";
                            try
                            {
                                string query = "insert into shopping_cart(session_id,product_id,product_name,description,quantity,price,created_At,last_modified) values('" + Session["id"].ToString() + "','" + product_id + "','" + product_name + "','" + product_desc + "','" + txtqty.Text + "','" + product_price + "','" + DateTime.Now + "','" + DateTime.Now + "')";
                                SqlDataAdapter sda1 = new SqlDataAdapter(query, con1);
                                sda1.SelectCommand.ExecuteNonQuery();
                                Response.Redirect("ViewCart.aspx?CartID=" + s);
                            }
                            catch (Exception ex)
                            {
                                Response.Write(ex.ToString());
                            }
                            finally
                            {
                                con1.Close();
                            }
                        }

                    

                        cmd.Dispose();
                        con1.Close();

                    
                }
            }
            else
            {
                //Redirect to Login Page if Session is null & Expires     
                Response.Redirect("Login.aspx");
            }
        }
    }


}
       





         



