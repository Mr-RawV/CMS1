using CMS.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS.User.Faculty
{
    public partial class Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        private void LoadData()
        {
            CMS_Dao obj = new CMS_Dao();
            string sql = "EXEC Proc_Login @flag='SelectData'";
            DataSet ds = obj.ExecuteDataSet(sql);
            DataTable dt = ds.Tables[0];

            StringBuilder sb = new StringBuilder();
            sb.Append("<table>");
            sb.Append("<tr>");
            sb.Append("<th>Faculty</th>");
            sb.Append("<th>Introduced Date</th>");
            sb.Append("<th>IsActive</th>");
            sb.Append("</tr>");
            foreach (DataRow dr in dt.Rows)
            {
                sb.Append("<tr>");
                sb.Append("<td>" + dr["Name"].ToString() + "</td>");
                sb.Append("<td>" + dr["IntroducedDate"].ToString() + "</td>");
                sb.Append("<td>" + dr["isActive"].ToString() + "</td>");
                sb.Append("</tr>");
            }
            sb.Append("</table>");
            tbl.InnerHtml = sb.ToString();
        }
    }
}