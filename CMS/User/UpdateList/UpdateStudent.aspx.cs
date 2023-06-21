using CMS.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS.User.UpdateList
{
    public partial class UpdateList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var rowId = HttpContext.Current.Request.QueryString["regNo"];
                if (rowId != null && rowId != "")
                {
                    LoadData_ById_For_Edit(rowId);
                }
            }
        }
        private void LoadData_ById_For_Edit(string rowId)
        {
            CMS_Dao obj = new CMS_Dao();

            var sql = "EXEC Proc_Student @flag = 'LoadStudentById'";
            sql = sql + ",@regNo='" + rowId + "'";
            DataSet ds = obj.ExecuteDataSet(sql);

            if (ds == null || ds.Tables.Count <= 0)
            {
                return;
            }
            roll.Text = ds.Tables[0].Rows[0]["RollNo"].ToString();
            Name.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            address.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            contact.Text = ds.Tables[0].Rows[0]["Contact"].ToString();
            sem.Text = ds.Tables[0].Rows[0]["Semester"].ToString();
            gender.SelectedValue = ds.Tables[0].Rows[0]["Gender"].ToString();
            batch.Text = ds.Tables[0].Rows[0]["Batch"].ToString();
            ddlfaculty.SelectedValue= ds.Tables[0].Rows[0]["Faculty"].ToString();
        }
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            var regNo = HttpContext.Current.Request.QueryString["RegNo"];
            var flag = "";
            if (regNo != null && regNo != "")
            {
                flag = "UpdateStudent";
            }
            else
            {
                flag = "InsertData";
            }
            var name = Name.Text;
            var rollNo = roll.Text ;
            var Address = address.Text;
            var Contact = contact.Text;
            var Batch = batch.Text;
            var Sem = sem.Text;
            var faculty = ddlfaculty.SelectedValue;
            var Gender = gender.SelectedValue;

            CMS_Dao obj = new CMS_Dao();

            var sql = "Exec Proc_Student";
            sql = sql + " @flag='" + flag + "'";
            sql = sql + ",@regNo='" + regNo + "'";
            sql = sql + ",@RollNo='" + rollNo + "'";
            sql = sql + ",@Name='" + name + "'";
            sql = sql + ",@address='" + Address + "'";
            sql = sql + ",@Contact='" + Contact + "'";
            sql = sql + ",@Faculty='" + faculty + "'";
            sql = sql + ",@Semester='" + Sem + "'";
            sql = sql + ",@Batch='" + Batch + "'";
            sql = sql + ",@gender='" + Gender + "'";


                DataSet ds = obj.ExecuteDataSet(sql);
                DataTable dt = ds.Tables[0];
                var code = dt.Rows[0]["code"].ToString();
                var message = dt.Rows[0][1].ToString();
                if (code == "0")
                {
                    ShowAlert("Record Updated");
                }
                else
                {
                    ShowAlert(message);
                }
            }

        private void ShowAlert(string msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('" + msg + "') </script>");
        }
    }
}