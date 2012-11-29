using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using log4net;
using log4net.Config;
namespace SD.Web
{
    public partial class _Default : System.Web.UI.Page
    {	protected ILog Logger = LogManager.GetLogger(typeof(_Default));
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Logger.Info("page loaded");
            if ( !HttpContext.Current.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();

            }
            else
            {
                this.lblUserName.Text ="Welcome !" +  User.Identity.Name;

            }
            
        }
    }
}
