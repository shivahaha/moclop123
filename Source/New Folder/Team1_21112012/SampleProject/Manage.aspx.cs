using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleProject
{
    public partial class Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string obj = this.Request.QueryString["obj"];
            string act = this.Request.QueryString["act"];

            if (string.IsNullOrEmpty(obj) || string.IsNullOrEmpty(act))
            {
                this.Response.Redirect("/Default.aspx");
                return;
            }

            ///
            /// UserControls
            ///

            if (obj.ToLower().Equals("user"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Users/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Users/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///TrustRegionControls
            ///

            if (obj.ToLower().Equals("trustregion"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/TrustRegion/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/TrustRegion/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///TrustDistrictControls
            ///

            if (obj.ToLower().Equals("trustdistrict"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/TrustDistrict/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/TrustDistrict/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///TeamControls
            ///


            if (obj.ToLower().Equals("team"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Team/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Team/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }



            ///
            ///SupportingMaterialsControls
            ///


            if (obj.ToLower().Equals("supportingmaterials"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/SupportingMaterials/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/SupportingMaterials/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }


            ///
            ///ServiceControls
            ///


            if (obj.ToLower().Equals("service"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Service/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Service/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }


            ///
            ///ProgrammeControls
            ///


            if (obj.ToLower().Equals("programme"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Programme/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Programme/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///PremisesControls
            ///


            if (obj.ToLower().Equals("premises"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Premises/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Premises/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///Organization Controls
            ///


            if (obj.ToLower().Equals("organization"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Organization/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Organization/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///GovermentOfficeRegion Controls
            ///


            if (obj.ToLower().Equals("govermentofficeregion"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/GovermentOfficeRegion/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/GovermentOfficeRegion/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///Directory Controls
            ///


            if (obj.ToLower().Equals("directory"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Directory/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Directory/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///Department Controls
            ///


            if (obj.ToLower().Equals("department"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Department/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Department/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///County Controls
            ///


            if (obj.ToLower().Equals("county"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/County/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/County/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///Country Controls
            ///


            if (obj.ToLower().Equals("Country"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Country/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Country/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///Contact Controls
            ///


            if (obj.ToLower().Equals("contact"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Contact/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Contact/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///Commons Controls
            ///


            if (obj.ToLower().Equals("commons"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Commons/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Commons/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

            ///
            ///Address Controls
            ///


            if (obj.ToLower().Equals("address"))
            {
                if (act.ToLower().Equals("viewall"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Address/ViewAlls.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
                else if (act.ToLower().Equals("detail"))
                {
                    UserControl uc = (UserControl)this.Page.LoadControl("~/UserControls/Address/Details.ascx");
                    PlaceHolder1.Controls.Add(uc);
                }
            }

        }
    }
}