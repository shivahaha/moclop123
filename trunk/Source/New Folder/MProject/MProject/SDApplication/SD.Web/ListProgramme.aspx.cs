using System;
using System.Data;
using MProject.SDApplication.SD.DataAccess;
namespace MProject.SDApplication.SD.Web
{
    public partial class ListProgram : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProgramme.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var dao = new ProgrammeDAO();
            var data = dao.GetAllRecord(TextBox1.Text);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AmendProgramme.aspx");

        }
    }
}
