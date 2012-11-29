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
using SD.DataAccess;
namespace LookUpGUI.SD.Web
{
    public partial class BussinessLookUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch1_Click(object sender, EventArgs e)
        {
            string a1 = txtBussiness.Text;
            string a2 = txtSIC.Text;
            LookUpDAO dao = new LookUpDAO();
            DataTable dt = dao.GetRecord(a1, a2);
            gvBussiness.DataSource = dt;
            gvBussiness.DataBind();

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtBussiness.Text = " ";
            txtSIC.Text = " ";
        }
    }
}
