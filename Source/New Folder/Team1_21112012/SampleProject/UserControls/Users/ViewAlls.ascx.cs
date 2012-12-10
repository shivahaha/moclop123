using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SampleProject.Biz;
using SampleProject.Commons;
using SampleProject.Entity;

namespace SampleProject.UserControls.Users
{
    public partial class ViewAlls : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string startWiths = this.Request.QueryString["startwith"];
            bool isActive = string.IsNullOrEmpty(this.Request.QueryString["isActive"]) ? true : (this.Request.QueryString["isActive"] == "1");
            UserBiz biz = new UserBiz();
            List<UserEntity> users;
            if (!string.IsNullOrEmpty(startWiths))
            {
                users = biz.GetByStartWiths(startWiths, Constants.User.SqlColumn.UserName, isActive);
                GridView1.DataSource = users;
                GridView1.DataBind();
            }
            else
            {
                if (isActive)
                {
                    users = biz.GetActived();
                    GridView1.DataSource = users;
                    GridView1.DataBind();
                }
                else
                {
                    users = biz.GetAll();
                    GridView1.DataSource = users;
                    GridView1.DataBind();
                }
            }      
        }
    }
}