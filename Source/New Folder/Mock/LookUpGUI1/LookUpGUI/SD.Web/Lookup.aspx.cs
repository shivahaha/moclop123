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
using SD.Business;

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


            AddressDAO dao = new AddressDAO();
            var mng = new LookupManager();
            var dt = new DataTable();
            dt = mng.Search(p1, p2,p3);
            gvPost.DataSource = dt;
            gvPost.DataBind();

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtPostCode.Text = string.Empty;
            txtTown.Text = string.Empty;
            txtStreet.Text = string.Empty;
        }


        protected void gvPost_SelectedIndexChanged(object sender, EventArgs e)
        {
            string res = gvPost.SelectedRow.Cells[1].Text;
            
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

            string p1 = txtPostCode.Text;
            string p2 = txtStreet.Text;
            string p3 = txtTown.Text;
            gvPost.PageIndex = e.NewPageIndex;
            var dt = new DataTable();
            var mng = new LookupManager();
            dt = mng.Search(p1,p3,p2);
            gvPost.DataSource = dt;
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

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            //string res = gvPost.SelectedRow.Cells[1].Text;
            //Response.Redirect(string.Format("/Main.aspx?T={0}",res));
        }


       
    }
}
