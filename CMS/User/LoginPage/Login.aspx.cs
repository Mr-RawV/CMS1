using CMS.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS.User.LoginPage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            CMS_Dao obj = new CMS_Dao();
            var user = UserName.Text;
            var password = Pwd.Text;
            string sql = "Exec Proc_Login @flag='DoLogin'";
            sql = sql + ",@user='" + user + "'";
            sql = sql + ",@pwd='" + password + "'";
            DataSet ds = obj.ExecuteDataSet(sql);
            DataTable dt = ds.Tables[0];
            var code = dt.Rows[0]["code"].ToString();
            var message = dt.Rows[0][1].ToString();
            if (code == "0")
            {
                Response.Redirect("/User/DashboardPage/Dashboard.aspx");
            }
            else
            {
                ShowAlert(message);
            }
        }
        public void ShowAlert(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('" + msg + "') </script>");
        }

    }
}