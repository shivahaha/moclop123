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
using System.Data.SqlClient;
using PhucVS6A_Team1.Commons;
namespace PhucVS6A_Team1.Entity
{
    public class OrganizationEntity : IEntity
    {
        public string OrganizationName { get; set; }
        public string ShortDescription { get; set; }
        public int AddressId { get; set; }
        public int BusinessId { get; set; }
        public string PhoneNumber { get; set; }
        public string CityTown { get; set; }
        public string County { get; set; }
        public int CountryId { get; set; }
        public string PreferredOrganization { get; set; }
        public int ContactId { get; set; }
        public string Fax { get; set; }
        public string Email { get; set; }
        public string WebAddress { get; set; }
        public string CharityNumber { get; set; }
        public string CompanyNumber { get; set; }
        public string OrganizationSpecialism { get; set; }
        public string ServiceDisabilities { get; set; }
        public string ServiceBarriers { get; set; }
        public string ServiceBenefits { get; set; }
        public string ServiceCircumstances { get; set; }
        public string ServiceEthnicity { get; set; }
        public string Accreditation { get; set; }
        public bool IsActive { get; set; }

        public int OrganizationId
        {
            get;
            set;
        }

        void IEntity.Mapping(System.Data.DataRow row)
        {
            OrganizationName = (row[Constants.Organizations.SqlColumn.OrganizationName] == null || row[Constants.Organizations.SqlColumn.OrganizationName] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.OrganizationName].ToString();
            ShortDescription = (row[Constants.Organizations.SqlColumn.ShortDescription] == null || row[Constants.Organizations.SqlColumn.ShortDescription] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.ShortDescription].ToString();
            AddressId = (row[Constants.Organizations.SqlColumn.AddressId] == null || row[Constants.Organizations.SqlColumn.AddressId] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.AddressId].ToString();
            BusinessId = (row[Constants.Organizations.SqlColumn.BusinessId] == null || row[Constants.Organizations.SqlColumn.BusinessId] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.BusinessId].ToString();
            PhoneNumber = (row[Constants.Organizations.SqlColumn.PhoneNumber] == null || row[Constants.Organizations.SqlColumn.PhoneNumber] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.PhoneNumber].ToString();
            CityTown = (row[Constants.Organizations.SqlColumn.CityTown] == null || row[Constants.Organizations.SqlColumn.CityTown] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.CityTown].ToString();
            County = (row[Constants.Organizations.SqlColumn.County] == null || row[Constants.Organizations.SqlColumn.County] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.County].ToString();
            PreferredOrganization = (row[Constants.Organizations.SqlColumn.PreferredOrganization] == null || row[Constants.Organizations.SqlColumn.PreferredOrganization] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.PreferredOrganization].ToString();
            ContactId = (row[Constants.Organizations.SqlColumn.ContactId] == null || row[Constants.Organizations.SqlColumn.ContactId] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.ContactId].ToString();
            Fax = (row[Constants.Organizations.SqlColumn.Fax] == null || row[Constants.Organizations.SqlColumn.Fax] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.Fax].ToString();
            Email = (row[Constants.Organizations.SqlColumn.Email] == null || row[Constants.Organizations.SqlColumn.Email] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.Email].ToString();
            WebAddress = (row[Constants.Organizations.SqlColumn.WebAddress] == null || row[Constants.Organizations.SqlColumn.WebAddress] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.WebAddress].ToString();
            CharityNumber = (row[Constants.Organizations.SqlColumn.CharityNumber] == null || row[Constants.Organizations.SqlColumn.CharityNumber] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.CharityNumber].ToString();
            CompanyNumber = (row[Constants.Organizations.SqlColumn.CompanyNumber] == null || row[Constants.Organizations.SqlColumn.CompanyNumber] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.CompanyNumber].ToString();
            OrganizationSpecialism = (row[Constants.Organizations.SqlColumn.OrganizationSpecialism] == null || row[Constants.Organizations.SqlColumn.OrganizationSpecialism] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.OrganizationSpecialism].ToString();
            ServiceDisabilities = (row[Constants.Organizations.SqlColumn.ServiceDisabilities] == null || row[Constants.Organizations.SqlColumn.ServiceDisabilities] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.ServiceDisabilities].ToString();
            ServiceBarriers = (row[Constants.Organizations.SqlColumn.ServiceBarriers] == null || row[Constants.Organizations.SqlColumn.ServiceBarriers] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.ServiceBarriers].ToString();
            ServiceBenefits = (row[Constants.Organizations.SqlColumn.ServiceBenefits] == null || row[Constants.Organizations.SqlColumn.ServiceBenefits] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.ServiceBenefits].ToString();
            ServiceCircumstances = (row[Constants.Organizations.SqlColumn.ServiceCircumstances] == null || row[Constants.Organizations.SqlColumn.ServiceCircumstances] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.ServiceCircumstances].ToString();
            ServiceEthnicity = (row[Constants.Organizations.SqlColumn.ServiceEthnicity] == null || row[Constants.Organizations.SqlColumn.ServiceEthnicity] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.ServiceEthnicity].ToString();
            Accreditation = (row[Constants.Organizations.SqlColumn.Accreditation] == null || row[Constants.Organizations.SqlColumn.FaxAccreditation] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.FaxAccreditation].ToString();
            IsActive = (row[Constants.Organizations.SqlColumn.IsActive] == null || row[Constants.Organizations.SqlColumn.IsActive] is DBNull) ? string.Empty : row[Constants.Organizations.SqlColumn.IsActive].ToString();

        }

        SqlCommand IEntity.UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = @"Update [{0}] set [{1}] =
            @OrganizationName, [{2}] = @ShortDescription, [{3}]=@AddressId,[{4}]=@BusinessId,[{5}]=@PhoneNumber,[{6}]=@CityTown,[{7}]=@County,[{8}]=@PreferredOrganization,[{9}]=@ContactId,[{10}]=@Fax,[{11}]=@Email
            [{12}]=@WebAddress,[{13}]=@CharityNumber,[{14}]=@CompanyNumber,[{15}]=@OrganizationSpecialism,[{16}]=@ServiceDisabilities,[{17}]=@ServiceBarriers,[{18}]=@ServiceBenefits,[{19}]=@ServiceCircumstances,[{20}]=@ServiceEthnicity,[{21}]=@Accreditation,[{21}]=IsActive
            where [OrganizationId] = @OrganizationId";

            retVal.CommandText = string.Format(cmdStr, tableName, 
                
                  Constants.Organizations.SqlColumn.OrganizationName,
                  Constants.Organizations.SqlColumn.ShortDescription, 
                  Constants.Organizations.SqlColumn.AddressId,
                  Constants.Organizations.SqlColumn.BusinessId,
                  Constants.Organizations.SqlColumn.PhoneNumber,
                  Constants.Organizations.SqlColumn.CityTown,
                  Constants.Organizations.SqlColumn.County,
                  Constants.Organizations.SqlColumn.PreferredOrganization,
                  Constants.Organizations.SqlColumn.ContactId,
                  Constants.Organizations.SqlColumn.Fax,
                  Constants.Organizations.SqlColumn.Email,
                  Constants.Organizations.SqlColumn.WebAddress,
                  Constants.Organizations.SqlColumn.CharityNumber,
                  Constants.Organizations.SqlColumn.CompanyNumber,
                  Constants.Organizations.SqlColumn.OrganizationSpecialism,
                  Constants.Organizations.SqlColumn.ServiceDisabilities,
                  Constants.Organizations.SqlColumn.ServiceBarriers,
                  Constants.Organizations.SqlColumn.ServiceBenefits,
                  Constants.Organizations.SqlColumn.ServiceCircumstances,
                  Constants.Organizations.SqlColumn.ServiceEthnicity,
                  Constants.Organizations.SqlColumn.Accreditation,
                  Constants.Organizations.SqlColumn.IsActive);
                  
                
                
           
            retVal.Parameters.Add(new SqlParameter("OrganizationName", OrganizationName));
            retVal.Parameters.Add(new SqlParameter("ShortDescription", ShortDescription));
            retVal.Parameters.Add(new SqlParameter("AddressId", AddressId));
            retVal.Parameters.Add(new SqlParameter("BusinessId", BusinessId));
            retVal.Parameters.Add(new SqlParameter("PhoneNumber", PhoneNumber));
            retVal.Parameters.Add(new SqlParameter("CityTown", CityTown));
            retVal.Parameters.Add(new SqlParameter("County", County));
            retVal.Parameters.Add(new SqlParameter("PreferredOrganization", PreferredOrganization));
            retVal.Parameters.Add(new SqlParameter("ContactId", ContactId));
            retVal.Parameters.Add(new SqlParameter("Fax", Fax));
            retVal.Parameters.Add(new SqlParameter("Email", Email));
            retVal.Parameters.Add(new SqlParameter("WebAddress", WebAddress));
            retVal.Parameters.Add(new SqlParameter("CharityNumber", CharityNumber));
            retVal.Parameters.Add(new SqlParameter("CompanyNumber", CompanyNumber));
            retVal.Parameters.Add(new SqlParameter("OrganizationSpecialism", OrganizationSpecialism));
            retVal.Parameters.Add(new SqlParameter("ServiceDisabilities,", ServiceDisabilities));
            retVal.Parameters.Add(new SqlParameter("ServiceBarriers", ServiceBarriers));
            retVal.Parameters.Add(new SqlParameter("ServiceBenefits", ServiceBenefits));
            retVal.Parameters.Add(new SqlParameter("ServiceCircumstances", ServiceCircumstances));
            retVal.Parameters.Add(new SqlParameter("ServiceEthnicity", ServiceEthnicity));
            retVal.Parameters.Add(new SqlParameter("Accreditation", Accreditation));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("OrganizationId", OrganizationId));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = @"Insert into [{0}] ([{1}], [{2}],[{3}],[{4}][{5}],[{6}],[{7}],[{8}],[{9}],[{10}],[{11}],[{12}],[{13}],[{14}],[{15}],[16}],[{17}],[{18}],[{19}],[{20}],[{21}],[{22}])values
            (@OrganizationName, 
            @ShortDescription,
            @AddressId,@BusinessId,
            @PhoneNumber,
            @CityTown,
            @County,
            @PreferredOrganization,
            @ContactId,
            @Fax,
            @Email,
            @WebAddress,
            @CharityNumber,
            @CompanyNumber
            @OrganizationSpecialism,
            @ServiceDisabilities,
            @ServiceBarriers,
            @ServiceBenefits,
            @ServiceCircumstances,
            @ServiceEthnicity,
            @Accreditation,
            @IsActive)";
            retVal.CommandText = string.Format(cmdStr, tableName,

                  Constants.Organizations.SqlColumn.OrganizationName,
                  Constants.Organizations.SqlColumn.ShortDescription,
                  Constants.Organizations.SqlColumn.AddressId,
                  Constants.Organizations.SqlColumn.BusinessId,
                  Constants.Organizations.SqlColumn.PhoneNumber,
                  Constants.Organizations.SqlColumn.CityTown,
                  Constants.Organizations.SqlColumn.County,
                  Constants.Organizations.SqlColumn.PreferredOrganization,
                  Constants.Organizations.SqlColumn.ContactId,
                  Constants.Organizations.SqlColumn.Fax,
                  Constants.Organizations.SqlColumn.Email,
                  Constants.Organizations.SqlColumn.WebAddress,
                  Constants.Organizations.SqlColumn.CharityNumber,
                  Constants.Organizations.SqlColumn.CompanyNumber,
                  Constants.Organizations.SqlColumn.OrganizationSpecialism,
                  Constants.Organizations.SqlColumn.ServiceDisabilities,
                  Constants.Organizations.SqlColumn.ServiceBarriers,
                  Constants.Organizations.SqlColumn.ServiceBenefits,
                  Constants.Organizations.SqlColumn.ServiceCircumstances,
                  Constants.Organizations.SqlColumn.ServiceEthnicity,
                  Constants.Organizations.SqlColumn.Accreditation,
                  Constants.Organizations.SqlColumn.IsActive);
            retVal.Parameters.Add(new SqlParameter("OrganizationName", OrganizationName));
            retVal.Parameters.Add(new SqlParameter("ShortDescription", ShortDescription));
            retVal.Parameters.Add(new SqlParameter("AddressId", AddressId));
            retVal.Parameters.Add(new SqlParameter("BusinessId", BusinessId));
            retVal.Parameters.Add(new SqlParameter("PhoneNumber", PhoneNumber));
            retVal.Parameters.Add(new SqlParameter("CityTown", CityTown));
            retVal.Parameters.Add(new SqlParameter("County", County));
            retVal.Parameters.Add(new SqlParameter("PreferredOrganization", PreferredOrganization));
            retVal.Parameters.Add(new SqlParameter("ContactId", ContactId));
            retVal.Parameters.Add(new SqlParameter("Fax", Fax));
            retVal.Parameters.Add(new SqlParameter("Email", Email));
            retVal.Parameters.Add(new SqlParameter("WebAddress", WebAddress));
            retVal.Parameters.Add(new SqlParameter("CharityNumber", CharityNumber));
            retVal.Parameters.Add(new SqlParameter("CompanyNumber", CompanyNumber));
            retVal.Parameters.Add(new SqlParameter("OrganizationSpecialism", OrganizationSpecialism));
            retVal.Parameters.Add(new SqlParameter("ServiceDisabilities,", ServiceDisabilities));
            retVal.Parameters.Add(new SqlParameter("ServiceBarriers", ServiceBarriers));
            retVal.Parameters.Add(new SqlParameter("ServiceBenefits", ServiceBenefits));
            retVal.Parameters.Add(new SqlParameter("ServiceCircumstances", ServiceCircumstances));
            retVal.Parameters.Add(new SqlParameter("ServiceEthnicity", ServiceEthnicity));
            retVal.Parameters.Add(new SqlParameter("Accreditation", Accreditation));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("OrganizationId", OrganizationId));
            return retVal;
        }
    }
}
