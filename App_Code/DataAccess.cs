using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Ecommerce_Smartdeal
{
    public static class DataAccess
    {
        private static string MyConnection;
        static DataAccess()
        {
            MyConnection = WebConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

        }

        public static DataTable SelectQuery(string query)
        {
            SqlConnection cnn = null;
            DataTable dt = null;
            try
            {
                cnn = new SqlConnection(MyConnection);
                dt = new DataTable();
                cnn.Open();
                SqlCommand cmd = new SqlCommand(query, cnn);
                dt.Load(cmd.ExecuteReader());
                cnn.Close();
                return dt;
            }
            catch(Exception e)
            {
                if (cnn != null)
                    Console.WriteLine("{0}", e);
                    return dt;
            }

        }
    }

}