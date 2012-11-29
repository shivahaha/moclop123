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
    public partial class Contact_Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btSave_Click(object sender, EventArgs e)
        {
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
                ContactDAO A = new ContactDAO();
                A.AddContact(firstName, surname, knownAs, officePhone, mobilePhone, stHomePhone, email, managerName,
                             contactType, contactMethod, jobRole, workbase, jobTitle, active);
                Response.Redirect("Contact_List.aspx");
            }
        }

        protected void btBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact_List.aspx");
        }
    }
}
