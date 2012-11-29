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

namespace SD.Web.Views.Contact
{
    public partial class ListContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)            {
               
            }
        }


        protected void btSearch_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string surName = txtSurname.Text;
            ContactDAO dao = new ContactDAO();
            DataTable data = dao.GetAllRecordByName(firstName,surName);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        protected void btNone_Click(object sender, EventArgs e)
        {

        }

        protected void btClear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";
            txtSurname.Text = "";
        }

        protected void btCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddContact.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var firstCell = e.Row.Cells[0];
                firstCell.Controls.Clear();
                firstCell.Controls.Add(new HyperLink { NavigateUrl = "EditContact.aspx?id=" + firstCell.Text, Text = firstCell.Text });
            }

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            string firstName = txtFirstName.Text;
            string surName = txtSurname.Text;
            ContactDAO dao = new ContactDAO();
            DataTable data = dao.GetAllRecordByName(firstName, surName);
            GridView1.DataSource = data;
            GridView1.DataBind();

        }
    }
}
