using CMS.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS.User.Teacher
{
    public partial class teacherList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        private void LoadData()
        {
            CMS_Dao obj = new CMS_Dao();
            string sql = "EXEC Proc_Teacher @flag='Selectteacher'";
            DataSet ds = obj.ExecuteDataSet(sql);
            DataTable dt = ds.Tables[0];

            StringBuilder sb = new StringBuilder();
            sb.Append("<table>");
            sb.Append("<tr>");
            sb.Append("<td>Name</td>");
            sb.Append("<td>Address</td>");
            sb.Append("<td>Contact</td>");
            sb.Append("<td>Department</td>");
            sb.Append("<td>Salary</td>");
            sb.Append("<td>Joined Year</td>");
            sb.Append("<td>isActive</td>");
            sb.Append("<td>Action</td>");
            sb.Append("</tr>");
            foreach (DataRow dr in dt.Rows)
            {
                sb.Append("<tr>");
                sb.Append("<td>" + dr["Name"].ToString() + "</td>");
                sb.Append("<td>" + dr["Address"].ToString() + "</td>");
                sb.Append("<td>" + dr["Contact"].ToString() + "</td>");
                sb.Append("<td>" + dr["Department"].ToString() + "</td>");
                sb.Append("<td>" + dr["Salary"].ToString() + "</td>");
                sb.Append("<td>" + dr["joinedDate"].ToString() + "</td>");
                sb.Append("<td>" + dr["isActive"].ToString() + "</td>");
                sb.Append("<td>");
                sb.Append("<a href='/User/UpdateList/UpdateTeacher.aspx?rowID=" + dr["rowID"].ToString() + "'><input type='button' value='EDIT' class='btn btn-primary'/></a>");
                sb.Append("<input type='submit' value='DELETE' OnClick='DoDelete(" + dr["rowID"] + ")' class='btn btn-primary'/>");
                sb.Append("</td>");

                sb.Append("</tr>");
            }
            sb.Append("</table>");
            tbl.InnerHtml = sb.ToString();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            var id = hddRowID.Value;
            CMS_Dao obj = new CMS_Dao();
            var sql = "EXEC PROC_Teacher";
            sql = sql + " @flag='DeleteTeacher_By_RowId'";
            sql = sql + ",@rowID='" + id + "'";
            DataSet ds = obj.ExecuteDataSet(sql);
            var code = ds.Tables[0].Rows[0][0].ToString();
            var msg = ds.Tables[0].Rows[0][1].ToString();
            if (code == "0")
            {
                ShowAlert("data deleted");
                Response.Redirect("/User/Teacher/TeacherList.aspx");
            }
            else
            {
                ShowAlert(msg);
            }
        }
        public void ShowAlert(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('" + msg + "') </script>");
        }
    }
}