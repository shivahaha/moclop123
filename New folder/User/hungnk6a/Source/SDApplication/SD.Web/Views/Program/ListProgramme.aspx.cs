using System;
using System.Web.UI.WebControls;
using SD.DataAccess;

namespace SD.Web.Views.Program
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
            var data = dao.GetAllRecord(TextBox2.Text);
            GridView2.DataSource = data;
            GridView2.DataBind();
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
    }
}
