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
using LookUpGUI.SD.DataAccess;
namespace LookUpGUI.SD.Web
{
    public partial class BussinessLookUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //clear search textbox
        protected void BtnClear_Click1(object sender, EventArgs e)
        {
            txtBussiness.Text = string.Empty;
            txtSic.Text = string.Empty;
        }

        protected void GVBussiness_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GVBussiness_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void GVBussiness_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GVBussiness_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            string a1 = txtBussiness.Text;
            string a2 = txtSic.Text;
            LookUpDAO dao = new LookUpDAO();
            DataTable dt = dao.GetRecord(a1, a2);
            GVBussiness.DataSource = dt;
            GVBussiness.DataBind();
        }
    }
}
