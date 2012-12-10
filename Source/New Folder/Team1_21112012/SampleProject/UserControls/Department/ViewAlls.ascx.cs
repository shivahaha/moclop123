using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using SampleProject.Biz;
using SampleProject.Commons;
using SampleProject.Entity;
using System.Collections.Generic;

namespace SD.Web.UerControls.Department
{
    public partial class ViewAlls : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string startWiths = this.Request.QueryString["startwith"];
            bool isActive = string.IsNullOrEmpty(this.Request.QueryString["isActive"]) ? true : (this.Request.QueryString["isActive"] == "1");
            DepartmentBiz biz = new DepartmentBiz();
            List<DepartmentsEntity> department;
            if (!string.IsNullOrEmpty(startWiths))
            {
                department = biz.GetByStartWiths(startWiths, Constants.Departments.SqlColumn.DepartmentName, isActive);
            }
            else
            {
                if (isActive)
                {
                    department = biz.GetActived();
                    GridView1.DataSource = department;
                    GridView1.DataBind();
                }
                else
                {
                    department = biz.GetAll();
                    GridView1.DataSource = department;
                    GridView1.DataBind();
                }
            }
        }      
    }
}