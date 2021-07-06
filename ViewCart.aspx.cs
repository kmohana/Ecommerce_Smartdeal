using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Ecommerce_Smartdeal
{
    public partial class ViewCart : System.Web.UI.Page
    {
        String mycon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }

            if (Session["id"] != null)
            {
                if (GridView1.Rows.Count != 0)
                {

                    Btn_checkout.Visible = true;
                    Label6.Visible = true;
                }
                else
                {
                    Btn_checkout.Visible = false;
                    Label6.Visible = false;
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label6.Text = " ";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label6.Text = " ";
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label product_id = GridView1.Rows[e.RowIndex].FindControl("Label5") as Label;
            TextBox description = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox price = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox quantity = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            SqlConnection con1 = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();

            try
            {
                string updatedata = "update shopping_cart set product_id ='" + product_id.Text + "',quantity='" + quantity.Text + "' where session_id ='" + Session["id"] + "' and product_id = '" + product_id.Text + "'";
                con1.Open();
                
                cmd.CommandText = updatedata;
                cmd.Connection = con1;
                cmd.ExecuteNonQuery();
                Label6.Text = "Cart has been updated  ";
                GridView1.EditIndex = -1;
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            Label product_id = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            SqlConnection con1 = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();

            try
            {

                string updatedata = "delete from shopping_cart  where product_id ='" + product_id.Text + "' and session_id = '" + Session["id"] + "'";

                con1.Open();
                
                cmd.CommandText = updatedata;
                cmd.Connection = con1;
                cmd.ExecuteNonQuery();
                Label6.Text = "Item has been deleted Successfully";
                GridView1.EditIndex = -1;
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();

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




        protected void Btn_checkout_Click(object sender, EventArgs e)
        {
            string s = Convert.ToString(Session["id"]);
            Response.Redirect("Checkout.aspx?CartID=" + s);
        }
    }
}