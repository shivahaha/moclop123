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


namespace LookUpGUI.SD.Web
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Attributes.Add("onClick", "return popWin();");
            Button2.Attributes.Add("onClick", "return popTOB()");
            //Address.Text = Request.QueryString("res");
        }

        protected void Address_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
