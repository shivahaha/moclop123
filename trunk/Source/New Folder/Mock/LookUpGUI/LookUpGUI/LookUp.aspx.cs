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
using LookUpGUI.SD.Business;
using LookUpGUI.SD.DataAccess;
using LookUpGUI.SD.Entities;

namespace LookUpGUI
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        

        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            string postcode = txtPostCode.Text;
            string street = txtStreet.Text;
            string town = txtTown.Text;
            LookUpDAO dao = new LookUpDAO();
            DataTable dt = new DataTable();
            dt = dao.GetAllRecord();
            gvPost.DataSource = dt;
            gvPost.DataBind();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
           
        }
     
        protected void btnClear_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtTown.Text = " ";
            txtStreet.Text = " ";
            txtPostCode.Text = " ";
        }

    }
}
