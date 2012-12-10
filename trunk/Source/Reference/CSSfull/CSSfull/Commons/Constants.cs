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

namespace CSSfull.Commons
{
    public class Constants
    {
        public class Configurations
        {
            public class Keys
            {
                public const string SQLConnectionString = "ApplicationServices";
            }
        }
        public class Contact
        {
            public const string TableName = "Contacts";
            public class SqlColumn
            {
                public const string FirstName = "FirstName";
                public const string Surname = "Surname";
                public const string KnownAs = "KnownAs";
                public const string OfficePhone = "OfficePhone";
                public const string MobilePhone = "MobilePhone";
                public const string HomePhone = "HomePhone";
                public const string Email = "Email";
                public const string ManageId = "ManageId";
                public const string ContactTypeId = "ContactTypeId";
                public const string BestContactMethodId = "BestContactMethodId";
                public const string JobRole = "JobRole";
                public const string WorkBase = "WorkBase";
                public const string JobTitle = "JobTitle";
                public const string IsActive = "IsActive";

            }
        }

        public class TrustDistricts
        {
            public const string TableName = "TrustDistricts";
            public class SqlColumn
            {
                public const string TrustDistrictName = "TrustDistrictName";
                public const string Description = "Description";
                public const string TrustRegionId = "TrustRegionId";
                public const string IsActive = "IsActive";
            }
        }

        public class TrustRegions
        {
            public const string TableName = "TrustRegions";
            public class SqlColumn
            {
                public const string TrustRegionName = "TrustRegionName";
                public const string CountryId = "CountryId";
                public const string Description = "Description";
                public const string IsActive = "IsActive";
            }
        }

        public class Address
        {
            public const string TableName = "Address";
            public class SqlColumn
            {
                public const string AddressLine = "AddressLine";
                public const string Postcode = "Postcode";
                public const string TownId = "TownId";
                public const string AddressLine2 = "AddressLine2";
                public const string AddressLine3 = "AddressLine3";
            }
        }

        public class BusinessTypes
        {
            public const string TableName = "BusinessTypes";
            public class SqlColumn
            {
                public const string BusinessName = "BusinessName";
                public const string SICCode = "SICCode";
            }
        }
    }
}
