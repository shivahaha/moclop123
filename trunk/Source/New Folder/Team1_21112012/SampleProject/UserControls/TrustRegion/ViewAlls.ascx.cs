using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SampleProject.Biz;
using SampleProject.Commons;
using SampleProject.Entity;

namespace SampleProject.UserControls.TrustRegion
{
    public partial class ViewAlls : System.Web.UI.UserControl
    {
         protected void Page_Load(object sender, EventArgs e)
        {
            string startWiths = this.Request.QueryString["startwith"];
            bool isActive = string.IsNullOrEmpty(this.Request.QueryString["isActive"]) ? true : (this.Request.QueryString["isActive"] == "1");
            TrustRegionBiz biz = new TrustRegionBiz();
            List<TrustRegionsEntity> trustRegion;
            if (!string.IsNullOrEmpty(startWiths))
            {
                trustRegion = biz.GetByStartWiths(startWiths, Constants.TrustRegions.SqlColumn.TrustRegionName, isActive);
            }
            else
            {
                if (isActive)
                {
                    trustRegion = biz.GetActived();
                    GridView1.DataSource = trustRegion;
                    GridView1.DataBind();
                }
                else
                {
                    trustRegion = biz.GetAll();
                    GridView1.DataSource = trustRegion;
                    GridView1.DataBind();
                }
            }

            //lbl.Text = users.Count.ToString();
            //foreach (var ee in users)
            //{
            //    lbl.Text += ee.UserName;
            //}
        }       
    }
}