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
using SD.Commons;
using System.Data.SqlClient;
namespace SD.Web.Views.Contact
{
    public partial class AddContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
               
                string query = "SELECT * FROM ContactTypes";
                SqlCommand cmd = new SqlCommand(query,conn);
                DataTable data = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(data);
                DropDownList1.DataSource = data;
                DropDownList1.DataValueField = "ContactTypeId";
                DropDownList1.DataTextField = "ContactTypeName";
                DropDownList1.DataBind();


                string query2 = "SELECT * FROM BestContactMethods";
                SqlCommand cmd2 = new SqlCommand(query2, conn);
                DataTable data2 = new DataTable();
                SqlDataAdapter adapter2 = new SqlDataAdapter(cmd2);
                adapter2.Fill(data2);
              
                DropDownList2.DataSource = data2;
                DropDownList2.DataValueField = "BestContactMethodId";
                DropDownList2.DataTextField = "BestContactMethodName";
                DropDownList2.DataBind();
            }
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
            int managerId = System.Convert.ToInt32(txtManagerName.Text);
            int contactTypeId = System.Convert.ToInt32(DropDownList1.SelectedValue);
            int bestContactMethodsId = System.Convert.ToInt32(DropDownList2.SelectedValue);
            string jobRole = txtJobRole.Text;
            string workbase = txtWorkbase.Text;
            string jobTitle = txtJobTitle.Text;
            bool active;
            if (cbActive.Checked)
            {
                active = true;
            }
            else {
                active = false;
            }
            ContactDAO dao = new ContactDAO();
            dao.Insert(firstName, surname, knownAs, officePhone, mobilePhone, stHomePhone, email, managerId, contactTypeId, bestContactMethodsId, jobRole, workbase,jobTitle,active);
            
        }

        protected void btBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListContact.aspx");
        }
    }
}
