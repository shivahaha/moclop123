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
    public partial class GovernmentOfficeRegionList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                GovOfficeRegionDao dao = new GovOfficeRegionDao();
                DataTable data = dao.GetAllRecord();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var firstCell = e.Row.Cells[0];
                firstCell.Controls.Clear();
                firstCell.Controls.Add(new HyperLink { NavigateUrl = "GovernmentOfficeRegionView.aspx?Name=" + firstCell.Text, Text = firstCell.Text });
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;            
            GovOfficeRegionDao dao = new GovOfficeRegionDao();
            DataTable data = dao.GetAllRecord();
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
    }
}
