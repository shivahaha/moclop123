using System;
using System.Web.UI.WebControls;
using SD.DataAccess;
using System.Data.SqlClient;
using System.Data;
using log4net;

namespace SD.Web.Views.Program
{
    public partial class ListProgram : System.Web.UI.Page
    {
        protected ILog Logger = LogManager.GetLogger(typeof(_Default));
        protected void Page_Load(object sender, EventArgs e)
        {
            Logger.Info("page List Program loaded");
            if (!IsPostBack) 
            {
                ProgrammeDAO dao = new ProgrammeDAO();
                DataTable data = dao.GetAllRecord();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProgramme.aspx");
        }

        protected void GridView1_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var firstCell = e.Row.Cells[0];
                firstCell.Controls.Clear();
                firstCell.Controls.Add(new HyperLink { NavigateUrl = "AmendProgramme.aspx?id=" + firstCell.Text, Text = firstCell.Text });
            }


        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ProgrammeDAO dao = new ProgrammeDAO();
            DataTable data = dao.GetAllRecord();
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
    }
}
