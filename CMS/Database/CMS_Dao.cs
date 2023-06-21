using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CMS.Database
{
    public class CMS_Dao
    {

        SqlConnection _conn;
        public CMS_Dao()
        {
            _conn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnection"].ToString());
        }

        public DataSet ExecuteDataSet(string sql)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(sql, _conn);
            da.Fill(ds);
            da.Dispose();
            return ds;
        }
    }
}