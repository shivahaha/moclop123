﻿using System;
using SD.DataAccess;
using System.Data.SqlClient;
using System.Data;
namespace SD.Web
{
    public partial class AmendProgramme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ID = "";
                if (!IsPostBack)
                {
                    ID = Request.QueryString["id"].ToString();
                    Label1.Text = ID;

                    int a = Convert.ToInt32(ID);
                    var dao = new ProgrammeDAO();
                    DataTable data = dao.GetAllRecord(a);
                    TextBox1.Text = data.Rows[0]["ProgrammeName"].ToString();
                    TextBox2.Text = data.Rows[0]["ContactID"].ToString();
                    TextBox3.Text = data.Rows[0]["Descriptions"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a1 = System.Convert.ToInt32(Label1.Text);
            string a2 = TextBox1.Text;
            int a3 = System.Convert.ToInt32(TextBox2.Text);
            string a4 = TextBox3.Text;
            var dao = new ProgrammeDAO();
            dao.Update(a1, a2, a3, a4);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListProgramme.aspx");
        }
    }
}
