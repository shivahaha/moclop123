using System;
using System.Data;
using System.Data.SqlClient;
using SD.DataAccess;
using log4net;
namespace  SD.Web
{
    public partial class MarkIn_activeProgramme : System.Web.UI.Page
    {
        protected ILog Logger = LogManager.GetLogger(typeof(_Default));     
        protected void Page_Load(object sender, EventArgs e)
        {
            Logger.Info("page MarkIn active Program loaded");
            if (!IsPostBack)
            {
            }
            
            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            bool active;
            if (CheckBox1.Checked)
            {
                active = true;
                ProgrammeDAO dao = new ProgrammeDAO();
                DataTable data = dao.GetAllRecord(active);
                GridView1.DataSource = data;
                GridView1.DataBind();
            }else {                
                ProgrammeDAO dao1 = new ProgrammeDAO();
                DataTable data1 = dao1.GetAllRecord();
                GridView1.DataSource = data1;
                GridView1.DataBind();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {

            GridView1.PageIndex = e.NewPageIndex;
            bool active;
            if (CheckBox1.Checked)
            {
                active = true;
                ProgrammeDAO dao = new ProgrammeDAO();
                DataTable data = dao.GetAllRecord(active);
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
            else
            {
                ProgrammeDAO dao1 = new ProgrammeDAO();
                DataTable data1 = dao1.GetAllRecord();
                GridView1.DataSource = data1;
                GridView1.DataBind();
            }
        }

    }
}
