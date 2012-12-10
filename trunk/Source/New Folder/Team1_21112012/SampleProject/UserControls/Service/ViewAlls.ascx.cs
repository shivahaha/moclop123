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

namespace SD.Web.UerControls.Service
{
    public partial class ViewAlls : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string startWiths = this.Request.QueryString["startwith"];
            bool isActive = string.IsNullOrEmpty(this.Request.QueryString["isActive"]) ? true : (this.Request.QueryString["isActive"] == "1");
            ServiceBiz biz = new ServiceBiz();
            List<ServiceEntity> service;
            if (!string.IsNullOrEmpty(startWiths))
            {
                service = biz.GetByStartWiths(startWiths, Constants.Services.SqlColumn.ServiceName, isActive);
            }
            else
            {
                if (isActive)
                {
                    service = biz.GetActived();
                    GridView1.DataSource = service;
                    GridView1.DataBind();
                }
                else
                {
                    service = biz.GetAll();
                    GridView1.DataSource = service;
                    GridView1.DataBind();
                }
            }        
        }        
    }
}