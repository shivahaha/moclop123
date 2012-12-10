using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleProject
{
    public partial class Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string obj = this.Request.QueryString["obj"];
            string act = this.Request.QueryString["act"];

            if (string.IsNullOrEmpty(obj) || string.IsNullOrEmpty(act))
            {
                this.Response.Redirect("/Default.aspx");
                return;
            }

            if (obj.ToLower().Equals("user"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Users/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Users/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }
        }
    }
}