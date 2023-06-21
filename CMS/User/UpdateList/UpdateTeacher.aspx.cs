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
    public partial class UpdateTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var rowId = HttpContext.Current.Request.QueryString["rowId"];
                if (rowId != null && rowId != "")
                {
                    LoadData_ById_For_Edit(rowId);
                }
            }
        }

        private void LoadData_ById_For_Edit(string rowId)
        {
            CMS_Dao obj = new CMS_Dao();

            var sql = "EXEC Proc_Teacher @flag = 'LoadTeacherById'";
            sql = sql + ",@rowID='" + rowId + "'";
            DataSet ds = obj.ExecuteDataSet(sql);

            if (ds == null || ds.Tables.Count <= 0)
            {
                return;
            }
            Name.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            address.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            contact.Text = ds.Tables[0].Rows[0]["Contact"].ToString();
            dept.Text = ds.Tables[0].Rows[0]["Department"].ToString();
            gender.SelectedValue = ds.Tables[0].Rows[0]["Gender"].ToString();
            salary.Text = ds.Tables[0].Rows[0]["Salary"].ToString();
        }
    

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            var rowId = HttpContext.Current.Request.QueryString["rowId"];
            var flag = "";
            if(rowId !=null && rowId != "")
            {
                flag = "UpdateTeacher";
            }
            else
            {
                flag = "InsertTeacher";
            }
            var name = Name.Text;
            var Address = address.Text;
            var Contact = contact.Text;
            var Dept = dept.Text;
            var Salary = salary.Text;
            var Gender = gender.SelectedValue;

            CMS_Dao obj = new CMS_Dao();

            var sql = "Exec Proc_Teacher";
            sql = sql + " @flag='" + flag + "'";
            sql = sql + ",@Name='" + name + "'";
            sql = sql + ",@address='" + Address + "'";
            sql = sql + ",@rowId='" + rowId + "'";
            sql = sql + ",@Contact='" + Contact + "'";
            sql = sql + ",@Department='" + Dept + "'";
            sql = sql + ",@Salary='" + Salary + "'";
            sql = sql + ",@gender='" + Gender + "'";


            DataSet ds = obj.ExecuteDataSet(sql);
            var code = ds.Tables[0].Rows[0]["code"].ToString();
            var message = ds.Tables[0].Rows[0][1].ToString();
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