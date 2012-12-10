using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SampleProject.Biz;
using SampleProject.Commons;
using SampleProject.Entity;

namespace SampleProject.UserControls.Users
{
    public partial class ViewAlls : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserBiz biz = new UserBiz();
            List<UserEntity> users = biz.GetAll();
            lbl.Text = users.Count.ToString();
            foreach (var ee in users)
            {
                lbl.Text += ee.UserName;
            }

            UserEntity newUser = new UserEntity() { UserName="aaa", Password="bbb" };
            biz.Insert(newUser);

            UserEntity oldUser = biz.GetById(1);
            oldUser.Password = "ccc";
            biz.Update(oldUser);

            oldUser = biz.GetById(2);
            biz.Delete(oldUser.Id);
        }
    }
}
