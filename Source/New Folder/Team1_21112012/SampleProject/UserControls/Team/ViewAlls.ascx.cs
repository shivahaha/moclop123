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

namespace SD.Web.UerControls.Team
{
    public partial class ViewAlls : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string startWiths = this.Request.QueryString["startwith"];
            bool isActive = string.IsNullOrEmpty(this.Request.QueryString["isActive"]) ? true : (this.Request.QueryString["isActive"] == "1");
            TeamBiz biz = new TeamBiz();
            List<TeamEntity> team;
            if (!string.IsNullOrEmpty(startWiths))
            {
                team = biz.GetByStartWiths(startWiths, Constants.Teams.SqlColumn.TeamName, isActive);
            }
            else
            {
                if (isActive)
                {
                    team = biz.GetActived();
                    GridView1.DataSource = team;
                    GridView1.DataBind();
                }
                else
                {
                    team = biz.GetAll();
                    GridView1.DataSource = team;
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