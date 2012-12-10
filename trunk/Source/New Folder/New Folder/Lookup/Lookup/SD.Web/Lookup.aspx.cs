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
    public partial class Lookup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnSelect.Attributes.Add("onClick", "return rtAddress();");
            btnNone.Attributes.Add("onClick", "return none();");
            btnClose.Attributes.Add("onClick", "return pclose();");
            
            HiddenField2.Value = string.Empty;
            

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string p1 = txtPostCode.Text;
            string p2 = txtStreet.Text;
            string p3 = txtTown.Text;


            LookUpDAO dao = new LookUpDAO();
            DataTable data = dao.GetAllRecord(p1,p2,p3);
            gvPost.DataSource = data;
            gvPost.DataBind();

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtPostCode.Text = " ";
            txtTown.Text = " ";
            txtStreet.Text = " ";
        }


        protected void gvPost_SelectedIndexChanged(object sender, EventArgs e)
        {
            HiddenField1.Value = gvPost.SelectedRow.Cells[1].Text;

        }

        protected void gvPost_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }

        protected void gvPost_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvPost_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPost.PageIndex = e.NewPageIndex;
            string p1 = txtPostCode.Text;
            string p2 = txtStreet.Text;
            string p3 = txtTown.Text;

            LookUpDAO dao = new LookUpDAO();
            DataTable data = dao.GetAllRecord(p1, p2, p3);
            gvPost.DataSource = data;
            gvPost.DataBind();
            gvPost.SelectedIndex = -1;
            HiddenField1.Value = string.Empty;
        }

        protected void HiddenField1_ValueChanged(object sender, EventArgs e)
        {

        }

        protected void btnNone_Click(object sender, EventArgs e)
        {
            HiddenField1.Value = string.Empty;
        }


       
    }
}
