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

namespace SD.Web.UerControls.TrustDistrict
{
    public partial class ViewAlls : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string startWiths = this.Request.QueryString["startwith"];
            bool isActive = string.IsNullOrEmpty(this.Request.QueryString["isActive"]) ? true : (this.Request.QueryString["isActive"] == "1");
            TrustDistrictBiz biz = new TrustDistrictBiz();
            List<TrustDistrictsEntity> trustDistrict;
            if (!string.IsNullOrEmpty(startWiths))
            {
                trustDistrict = biz.GetByStartWiths(startWiths, Constants.TrustDistricts.SqlColumn.TrustDistrictName, isActive);
            }
            else
            {
                if (isActive)
                {
                    trustDistrict = biz.GetActived();
                    GridView1.DataSource = trustDistrict;
                    GridView1.DataBind();
                }
                else
                {
                    trustDistrict = biz.GetAll();
                    GridView1.DataSource = trustDistrict;
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