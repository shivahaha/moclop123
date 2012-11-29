using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using Mock_Project.SD.DataAccess;

namespace Mock_Project
{
    public partial class Contact_Edit : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            string ConnectString =
                @"Data Source=TRN-LAB2-PC01\SQLEXPRESS;Initial Catalog=absd;Persist Security Info=True;User ID=SA;Password=12345678";
            string contactId = "";
            if (!IsPostBack)
            {
                contactId = Request.QueryString["id"];
                string query = "SElECT * FROM Contact WHERE ContactID = " + contactId;
                var sqlConnection1 = new SqlConnection(ConnectString);
                SqlCommand cmd = new SqlCommand(query, sqlConnection1);
                DataTable data = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(data);
                lblID.Text = data.Rows[0]["ContactID"].ToString();
                txtFirstName.Text = data.Rows[0]["FirstName"].ToString();
                txtSurname.Text = data.Rows[0]["Surname"].ToString();
                txtKnownAs.Text = data.Rows[0]["KnownAs"].ToString();
                txtOfficePhone.Text = data.Rows[0]["OfficePhone"].ToString();
                txtMobilePhone.Text = data.Rows[0]["MobilePhone"].ToString();
                txtSTHomePhone.Text = data.Rows[0]["STHomePhone"].ToString();
                txtEmail.Text = data.Rows[0]["ManagerName"].ToString();
                ddlContactType.SelectedValue = data.Rows[0]["ContactType"].ToString();
                ddlContactMethod.SelectedValue = data.Rows[0]["ContactMethod"].ToString();
                txtJobRole.Text = data.Rows[0]["JobRole"].ToString();
                txtJobTitle.Text = data.Rows[0]["JobTitle"].ToString();
                string active = data.Rows[0]["Active"].ToString();
                if (active == "true")
                {
                    cbActive.Checked = true;
                }
                else
                {
                    cbActive.Checked = false;
                }
            }
        }

        protected void btSave_Click1(object sender, EventArgs e)
        {
            string contactID = lblID.Text.ToString();
            string firstName = txtFirstName.Text;
            string surname = txtSurname.Text;
            string knownAs = txtKnownAs.Text;
            string officePhone = txtOfficePhone.Text;
            string mobilePhone = txtMobilePhone.Text;
            string stHomePhone = txtSTHomePhone.Text;
            string email = txtEmail.Text;
            string managerName = txtManagerName.Text;
            string contactType = ddlContactType.SelectedValue;
            string contactMethod = ddlContactMethod.SelectedValue;
            string jobRole = txtJobRole.Text;
            string workbase = txtWorkbase.Text;
            string jobTitle = txtJobTitle.Text;
            string active = "false";
            if (cbActive.Checked)
                active = "true";

            if (firstName == "")
            {
                errFirstName.Text = "Error";
            }
            else
            {
                errFirstName.Text = "";
            }
            if (surname == "")
            {
                errSurname.Text = "Error";
            }
            else
            {
                errSurname.Text = "";
            }
            if (contactType == "")
            {
                errContactType.Text = "Error";
            }
            else
            {
                errContactType.Text = "";
            }

            if (errFirstName.Text == "" && errSurname.Text == "" && errContactType.Text == "")
            {
                ContactDAO Edit = new ContactDAO();
                Edit.EditContact(contactID, firstName, surname, knownAs, officePhone, mobilePhone, stHomePhone,
                                 email, managerName, contactType, contactMethod, jobRole, workbase, jobTitle, active);
                Response.Redirect("Contact_List.aspx");
            }
        }

        protected void btBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact_List.aspx");

        }
    }
}

