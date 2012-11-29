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

namespace SD.Web
{
    public partial class AddProgramme : System.Web.UI.Page
    {
        public static bool active;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                active = true;
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            ProgrammeDAO dao = new ProgrammeDAO();
            string a1 = TextBox1.Text;
            int a2 = System.Convert.ToInt32(TextBox2.Text);
            string a3 = TextBox3.Text;
            dao.Insert(a1,a2,a3,active);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListProgramme.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            active = false;
        }
    }
}
