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
using SD.Business;
using log4net;
namespace SD.Web.Views.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected ILog Logger = LogManager.GetLogger(typeof(_Default));
        protected void Page_Load(object sender, EventArgs e)
        {
            Logger.Info("page List Program loaded");

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            var userBus = new SDManager();
            if (userBus.IsValidLogin(Login1.UserName, Login1.Password))
            {
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
            }
        }
    }
}
