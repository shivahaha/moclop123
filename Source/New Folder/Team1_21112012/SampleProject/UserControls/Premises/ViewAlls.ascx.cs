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

namespace SD.Web.UerControls.Premises
{
    public partial class ViewAlls : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string startWiths = this.Request.QueryString["startwith"];
            bool isActive = string.IsNullOrEmpty(this.Request.QueryString["isActive"]) ? true : (this.Request.QueryString["isActive"] == "1");
            PremisesBiz biz = new PremisesBiz();
            List<PremisesEntity> premises;
            if (!string.IsNullOrEmpty(startWiths))
            {
                premises = biz.GetByStartWiths(startWiths, Constants.Premises.SqlColumn.PremiseName, isActive);
            }
            else
            {
                if (isActive)
                {
                    premises = biz.GetActived();
                    GridView1.DataSource = premises;
                    GridView1.DataBind();
                }
                else
                {
                    premises = biz.GetAll();
                    GridView1.DataSource = premises;
                    GridView1.DataBind();
                }
            }
        }        
    }
}