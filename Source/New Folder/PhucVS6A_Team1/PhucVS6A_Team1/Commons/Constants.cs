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

namespace PhucVS6A_Team1.Commons
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

        public class Users
        {
            public const string TableName = "Users";

            public class SqlColumn
            {
                public const string Account = "Account";
                public const string Password = "Password";
                public const string RoleId = "RoleId";
                public const string Email = "Email";
                public const string IsActive = "IsActive";
            }
        }
        public class Organizations
        {
            public const string TableName = "Organizations";

            public class SqlColumn
            {
                public const string OrganizationName = "OrganizationName";
                public const string ShortDescription = "ShortDescription";
                public const string AddressId = "AddressId";
                public const string BusinessId = "BusinessId";
                public const string PhoneNumber = "PhoneNumber";
                public const string CityTown = "CityTown";
                public const string County = "County";
                public const string CountyId = "CountyId";
                public const string PreferredOrganization = "PreferredOrganization";
                public const string ContactId = "ContactId";
                public const string Fax = "Fax";
                public const string Email = "Email";
                public const string WebAddress = "WebAddress";
                public const string CharityNumber = "CharityNumber";
                public const string CompanyNumber = "CompanyNumber";
                public const string OrganizationSpecialism = "OrganizationSpecialism";
                public const string ServiceDisabilities = "ServiceDisabilities";
                public const string ServiceBarriers = "ServiceBarriers";
                public const string ServiceBenefits = "ServiceBenefits";
                public const string ServiceCircumstances = "ServiceCircumstances";
                public const string ServiceEthnicity = "ServiceEthnicity";
                public const string Accreditation = "Accreditation";

                public const string IsActive = "IsActive";
            }

        }
        //Programs table
        public class Programs
        {
            public const string TableName = "Programs";

            public class SqlColumn
            {
                public const string ProgramName = "ProgramName";
                public const string Description = "Description";
                public const string ContactId = "ContactId";
                public const string IsActive = "IsActive";
            }
        }
        //Service table
        public class Services
        {
            public const string TableName = "Services";

            public class SqlColumn
            {
                public const string ServiceName = "ServiceName";
                public const string ShortDescription = "ShortDescription";
                public const string SubType = "SubType";
                public const string ContactId = "ContactId";
                public const string ClientDescription = "ClientDescription";
                public const string Attendance = "Attendance";
                public const string StartExpected = "StartExpected";
                public const string StartDate = "StartDate";
                public const string EndDate = "EndDate";
                public const string ExtendableYears = "ExtendableYears";
                public const string ExtendableMonths = "ExtendableMonths";
                public const string ContractValue = "ContractValue";
                public const string FullDescription = "FullDescription";
                public const string DeptCode = "DeptCode";
                public const string ServiceType = "ServiceType";
                public const string DescriptionDelivery = "DescriptionDelivery";
                public const string ContractCode = "ContractCode";
                public const string ContractStagedPayment = "ContractStagedPayment";
                public const string ReferrealProcess = "ReferrealProcess";
                public const string LimitedYears = "LimitedYears";
                public const string LimitedMonths = "LimitedMonths";
                public const string IsActive = "IsActive";
            }
        }
        public class Towns
        {
            public const string TableName = "Towns";
            public class SqlColumn {

                public const string TownName = "TownName";
                public const string CountyId = "CountyId";

            }
        
        }
    }
}
