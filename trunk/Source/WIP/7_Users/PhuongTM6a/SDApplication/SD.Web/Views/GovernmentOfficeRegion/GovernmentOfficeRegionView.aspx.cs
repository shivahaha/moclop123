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
namespace SD.Web.Views.GovernmentOfficeRegion
{
    public partial class GovernmentOfficeRegionView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Name = "";
                if (!IsPostBack)
                {
                    Name = Request.QueryString["Name"].ToString();
                    var dao = new GovOfficeRegionDao();
                    DataTable data = dao.GetAllRecord(Name);
                    TextBox1.Text = data.Rows[0]["GovOfficeRegionName"].ToString();                   
                    TextBox2.Text = data.Rows[0]["Description"].ToString();
                    TextBox3.Text = data.Rows[0]["CountryId"].ToString();
                }
            }
        }
    }
}
