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
using System.Data.SqlClient;
using Mock_Project.SD.DataAccess;

namespace Mock_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query =
                    "SElECT ContactID AS ID, FirstName+' '+Surname AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactType AS [Contact Type], Active AS [Is Active?] " +
                    "FROM Contact " +
                    "WHERE Active = 'true'";

                if (cbInActive.Checked)
                {
                    query =
                        "SElECT ContactID AS ID, FirstName+' '+Surname AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactType AS [Contact Type], Active AS [Is Active?] " +
                        "FROM Contact";
                }
                ContactDAO K = new ContactDAO();
                K.ListContact(query, GridView1);
            }
        }

        protected void btCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact_Add.aspx");
        }

        protected void btNone_Click(object sender, EventArgs e)
        {

        }

        protected void btClear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";
            txtSurname.Text = "";
        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            if (txtFirstName.Text == "" && txtSurname.Text == "")
            {
                Response.Redirect("Contact_List.aspx");
            }
            if (cbInActive.Checked)
            {
                if (txtFirstName.Text!="" && txtSurname.Text!="")
                {
                    string query = "SElECT ContactID AS ID, FirstName+' '+Surname AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactType AS [Contact Type], Active AS [Is Active?] " +
                                   "FROM Contact " +
                                   "WHERE FirstName+' '+Surname = '" + txtFirstName.Text + " " + txtSurname.Text + "'";
                    ContactDAO K = new ContactDAO();
                    K.ListContact(query, GridView1);
                }
                if (txtFirstName.Text!="" && txtSurname.Text=="")
                {
                    string query =
                        "SElECT ContactID AS ID, FirstName+' '+Surname AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactType AS [Contact Type], Active AS [Is Active?] " +
                        "FROM Contact " +
                        "WHERE FirstName = '" + txtFirstName.Text + "'";
                    ContactDAO K = new ContactDAO();
                    K.ListContact(query, GridView1);
                }
                if (txtFirstName.Text=="" && txtSurname.Text!="")
                {
                    string query = "SElECT ContactID AS ID, FirstName+' '+Surname AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactType AS [Contact Type], Active AS [Is Active?] " +
                                   "FROM Contact " +
                                   "WHERE Surname = '" + txtSurname.Text + "'";
                    ContactDAO K = new ContactDAO();
                    K.ListContact(query, GridView1);
                }
                if(txtFirstName.Text=="" && txtSurname.Text=="")
                {
                    string query = "SElECT ContactID AS ID, FirstName+' '+Surname AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactType AS [Contact Type], Active AS [Is Active?] " +
                                   "FROM Contact";
                    ContactDAO K = new ContactDAO();
                    K.ListContact(query, GridView1);
                }
            }
            else
            {
                if (txtFirstName.Text!="" && txtSurname.Text!="")
                {
                    string query = "SElECT ContactID AS ID, FirstName+' '+Surname AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactType AS [Contact Type], Active AS [Is Active?] " +
                                   "FROM Contact " +
                                   "WHERE FirstName+' '+Surname = '" + txtFirstName.Text + " " + txtSurname.Text + "' " + "AND Active = 'true'";
                    ContactDAO K = new ContactDAO();
                    K.ListContact(query, GridView1);
                }
                if (txtFirstName.Text!="" && txtSurname.Text=="")
                {
                    string query =
                        "SElECT ContactID AS ID, FirstName+' '+Surname AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactType AS [Contact Type], Active AS [Is Active?] " +
                        "FROM Contact " +
                        "WHERE FirstName = '" + txtFirstName.Text + "' " + "AND Active = 'true'";
                    ContactDAO K = new ContactDAO();
                    K.ListContact(query, GridView1);
                }
                if (txtFirstName.Text=="" && txtSurname.Text!="")
                {
                    string query =
                        "SElECT ContactID AS ID, FirstName+' '+Surname AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactType AS [Contact Type], Active AS [Is Active?] " +
                        "FROM Contact " +
                        "WHERE Surname = '" + txtSurname.Text + "' " + "AND Active = 'true'";
                    ContactDAO K = new ContactDAO();
                    K.ListContact(query, GridView1);
                }
                if(txtFirstName.Text=="" && txtSurname.Text=="")
                {
                    string query = "SElECT ContactID AS ID, FirstName+' '+Surname AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactType AS [Contact Type], Active AS [Is Active?] " +
                                   "FROM Contact" +
                                   "WHERE Active = 'true'";
                    ContactDAO K = new ContactDAO();
                    K.ListContact(query, GridView1);
                }
            }
        }

        protected void btEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact_Edit.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                var firstCell = e.Row.Cells[0];
                firstCell.Controls.Clear();
                firstCell.Controls.Add(new HyperLink{NavigateUrl = "Contact_Edit.aspx?id=" + firstCell.Text, Text = firstCell.Text});
            }
        }

        protected void cbInActive_CheckedChanged(object sender, EventArgs e)
        {
            string query =
                "SElECT ContactID AS ID, FirstName+' '+Surname AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactType AS [Contact Type], Active AS [Is Active?] " +
                "FROM Contact";
            ContactDAO K = new ContactDAO();
            K.ListContact(query, GridView1);
        }
    }
}
