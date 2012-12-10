using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SampleProject.Biz;
using SampleProject.Commons;
using SampleProject.Entity;
namespace SampleProject.UserControls.County
{
    public partial class ViewAlls : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CountiesBiz biz = new CountiesBiz();
            List<CountiesEntity> premises = biz.GetAll();
            Label1.Text = premises.Count.ToString();
            foreach (var ee in premises)
            {
                Label1.Text += ee.CountyName;
            }
        }
    }
}