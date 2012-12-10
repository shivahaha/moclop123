using System;
using MProject.SDApplication.SD.DataAccess;
using System.Data.SqlClient;
using System.Data;
namespace MProject.SDApplication.SD.Web
{
    public partial class AmendProgramme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProgrammeDAO dao = new ProgrammeDAO();
                DataTable data = dao.GetAllRecord();
                DropDownList1.DataSource = data;
                DropDownList1.DataValueField = "ProgrammeID";
                DropDownList1.DataTextField = "ProgrammeID";
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a1 = System.Convert.ToInt32(DropDownList1.Text);
            string a2 = TextBox1.Text;
            int a3 = System.Convert.ToInt32(TextBox2.Text);
            string a4 = TextBox3.Text;           
            ProgrammeDAO dao = new ProgrammeDAO();
            dao.Update(a1,a2,a3,a4);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListProgramme.aspx");
        }
    }
}
