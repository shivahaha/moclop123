using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace LookUpGUI.SD.Entities
{
    public class Address
    {
        public string postcode { get; set; }
        public string address { get; set; }
        public string town { get; set; }
        public string county { get; set; }
        public string country { get; set; }
    }
}
