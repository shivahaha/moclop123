using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SampleProject.Commons
{
    public class Constants
    {
        public class Common
        {
            public const string IsActive = "IsActive";
        }

        public class Configurations
        {
            public class Keys
            {
                public const string SQLConnectionString = "ApplicationServices";
            }
        }


        public class User
        {
            public const string TableName = "Users";

            public class SqlColumn
            {
                public const string Id = "UserId";
                public const string UserName = "Account";
                public const string Password = "Password";
            }
        }
        public class SupportMaterials
        {
            public const string TableName = "SupportingMaterials";

            public class SqlColumn
            {
                public const string Id = "SupportingMaterialId";
                public const string Url = "Url";
                public const string Description = "Description";
                public const string Type = "Type";
                public const string UserID = "UserId";
                public const string AddedDate = "AddedDate";
                public const string IsActive = "IsActive";
                public const string OrganizationID = "OrganizationId";
            }
        }
        public class Directorates
        {
            public const string TableName = "Directorates";

            public class SqlColumn
            {
                public const string Id = "DirectorateId";
                public const string DirectorateName = "DirectorateName";
                public const string BusinessId = "BusinessId";
                public const string AddressId = "AddressId";
                public const string ContactId = "ContactId";
                public const string ShortDescription = "ShortDescription";
                public const string FullDescription = "FullDescription";
                public const string CityTown = "CityTown";
                public const string County = "County";
                public const string CountryId = "CountryId";
                public const string PhoneNumber = "PhoneNumber";
                public const string Fax = "Fax";
                public const string Email = "Email";
                public const string WebAddress = "WebAddress";
                public const string CharityNumber = "CharityNumber";
                public const string CompanyNumber = "CompanyNumber";
                public const string IsActive = "IsActive";
                public const string OrganizationId = "OrganizationId";
            }
        }
        public class Departments
        {
            public const string TableName = "Departments";

            public class SqlColumn
            {
                public const string Id = "DepartmentId";
                public const string DepartmentName = "DepartmentName";
                public const string BusinessId = "BusinessId";
                public const string AddressId = "AddressId";
                public const string ContactId = "ContactId";
                public const string ShortDescription = "ShortDescription";
                public const string FullDescription = "FullDescription";
                public const string CityTown = "CityTown";
                public const string County = "County";
                public const string CountryId = "CountryId";
                public const string PhoneNumber = "PhoneNumber";
                public const string Fax = "Fax";
                public const string Email = "Email";
                public const string WebAddress = "WebAddress";
                public const string IsActive = "IsActive";
                public const string DirectorateId = "DirectorateId";
            }
        }
        public class Teams
        {
            public const string TableName = "Teams";

            public class SqlColumn
            {
                public const string Id = "TeamId";
                public const string TeamName = "TeamName";
                public const string BusinessId = "BusinessId";
                public const string AddressId = "AddressId";
                public const string ContactId = "ContactId";
                public const string ShortDescription = "ShortDescription";
                public const string FullDescription = "FullDescription";
                public const string CityTown = "CityTown";
                public const string County = "County";
                public const string CountryId = "CountryId";
                public const string PhoneNumber = "PhoneNumber";
                public const string Fax = "Fax";
                public const string Email = "Email";
                public const string WebAddress = "WebAddress";
                public const string IsActive = "IsActive";
                public const string DepartmentId = "DepartmentId";
            }
        }
        public class GovermentOfficeRegion
        {
            public const string TableName = "GovOfficeRegions";

            public class SqlColumn
            {
                public const string Id = "GovOfficeRegionId";
                public const string GovOfficeRegionName = "GovOfficeRegionName ";
                public const string Description = "Description";
                public const string IsActive = "IsActive";
            }
        }
        public class Premises
        {
            public const string TableName = "Premises";

            public class SqlColumn
            {
                public const string Id = "PremiseId";
                public const string PremiseName = "premiseName";
                public const string LocationName = "LocationName";
                public const string LocationType = "LocationType";
                public const string LocationStatus = "LocationStatus";
                public const string PhoneNumber = "PhoneNumber";
                public const string LocationStatusDate = "LocationStatusDate";
                public const string ShopFlagDate = "ShopFlagDate";
                public const string LocationDescription = "LocationDescription ";
                public const string AddressId = "AddressID";
                public const string CityTown = "CityTown";
                public const string County = "County";
                public const string CountryId = "CountryID";
                public const string KnowAs = "KnowAs";
                public const string ProjectCode = "ProjectCode";
                public const string FaxNumber = "FaxNumber";
                public const string MinicomNumber = "MinicomNumber";
                public const string PrimaryLocation = "PrimaryLocation";
                public const string LocationManaged = "LocationManaged";
                public const string NetworkConnectivity = "NetworkConnectivity";
                public const string IsNewShop = "IsNewShop";
                public const string IsActive = "IsActive";
                public const string SpecialistShop = "SpecialistShop";
            }

        }
        public class Contact
        {
            public const string TableName = "Contacts";
            public class SqlColumn
            {
                public const string Id = "ContactId";
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
                public const string Id = "TrustDistrictId";
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
                public const string Id = "TrustRegionId";
                public const string TrustRegionName = "TrustRegionName";
                public const string CountryId = "CountryId";
                public const string Description = "Description";
                public const string IsActive = "IsActive";
            }
        }
        public class Organizations
        {
            public const string TableName = "Organizations";

            public class SqlColumn
            {
                public const string Id = "OrganizationId";
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
        public class Programs
        {
            public const string TableName = "Programs";

            public class SqlColumn
            {
                public const string Id = "ProgramId";
                public const string ProgramName = "ProgramName";
                public const string Description = "Description";
                public const string ContactId = "ContactId";
                public const string IsActive = "IsActive";
            }
        }
        public class Services
        {
            public const string TableName = "Services";

            public class SqlColumn
            {
                public const string Id = "ServiceId";
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
            public class SqlColumn
            {
                public const string Id = "TownId";
                public const string TownName = "TownName";
                public const string CountyId = "CountyId";

            }

        }
        public class Address
        {
            public const string TableName = "Addresses";
            public class SqlColumn
            {
                public const string Id = "AddressId";
                public const string AddressLine = "AddressLine";
                public const string Postcode = "Postcode";
                public const string TownId = "TownId";
                public const string AddressLine2 = "AddressLine2";
                public const string AddressLine3 = "AddressLine3";
            }
        }
        public class Counties
        {
            public const string TableName = "Counties";

            public class SqlColumn
            {
                public const string Id = "CountyId";
                public const string CountyName = "CountyName";
                public const string CountryId = "CountryId";
                public const string GovOfficeRegionId = "GovOfficeRegionId";
            }
        }
        public class Countries
        {
            public const string TableName = "Countries";

            public class SqlColumn
            {
                public const string Id = "CountryId";
                public const string CountryName = "CountryName";
            }
        }

        public class BusinessTypes
        {
            public const string TableName = "BusinessTypes";
            public class SqlColumn
            {
                public const string Id = "BusinessId";
                public const string BusinessName = "BusinessName";
                public const string SICCode = "SICCode";
            }
        }
    }
}