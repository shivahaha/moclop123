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
using System.Web.Mail;
using SD.Business;
using log4net;

namespace SD.Web.Views.Login
{
    public partial class GetPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {              
            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            var userBus = new SDManager();
            if (userBus.IsValidRecoveryPass(UserName.Text, EmailAddressTB.Text) != null)
            {
                Label1.Text = "Your Password is: " + userBus.IsValidRecoveryPass(UserName.Text, EmailAddressTB.Text);                
            }
            else
            {               
                Label1.Text = "Your username and email do not match";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
