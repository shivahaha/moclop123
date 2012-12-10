using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Commons;
using System.Data;
using System.Data.SqlClient;

namespace SampleProject.Entity
{
    public class DirectoratesEntity : IEntity
    {

        public string DirectorateName { get; set; }
        public int BusinessID { get; set; }
        public int AddressID { get; set; }
        public int ContactID { get; set; }
        public string ShortDescription { get; set; }
        public string FullDescription { get; set; }
        public string CityTown { get; set; }
        public string County { get; set; }
        public string CountryID { get; set; }
        public string PhoneNumber { get; set; }
        public string Fax { get; set; }
        public string Email { get; set; }
        public string WebAddress { get; set; }
        public string CharityNumber { get; set; }
        public string CompanyNumber { get; set; }
        public bool IsActive { get; set; }
        public int OrganizationID { get; set; }

        public int Id
        {
            get;
            set;
        }
        void IEntity.Mapping(System.Data.DataRow row)
        {
            Id = (row[Constants.Directorates.SqlColumn.Id] == null
             || row[Constants.Directorates.SqlColumn.Id] is DBNull) ? 0
             : int.Parse(row[Constants.Directorates.SqlColumn.Id].ToString());
            DirectorateName = (row[Constants.Directorates.SqlColumn.DirectorateName] == null
            || row[Constants.Directorates.SqlColumn.DirectorateName] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.DirectorateName].ToString();
            BusinessID = Convert.ToInt32(row[Constants.Directorates.SqlColumn.BusinessId]);
            AddressID = Convert.ToInt32(row[Constants.Directorates.SqlColumn.AddressId]);
            ContactID = (row[Constants.Directorates.SqlColumn.ContactId] == null
            || row[Constants.Directorates.SqlColumn.ContactId] is DBNull) ?
            0 : Convert.ToInt32(row[Constants.Directorates.SqlColumn.ContactId]);

            ShortDescription = (row[Constants.Directorates.SqlColumn.ShortDescription] == null
            || row[Constants.Directorates.SqlColumn.ShortDescription] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.ShortDescription].ToString();

            FullDescription = (row[Constants.Directorates.SqlColumn.FullDescription] == null
            || row[Constants.Directorates.SqlColumn.FullDescription] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.FullDescription].ToString();

            CityTown = (row[Constants.Directorates.SqlColumn.CityTown] == null
            || row[Constants.Directorates.SqlColumn.CityTown] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.CityTown].ToString();

            County = (row[Constants.Directorates.SqlColumn.County] == null
            || row[Constants.Directorates.SqlColumn.County] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.County].ToString();

            CountryID = (row[Constants.Directorates.SqlColumn.CountryId] == null
            || row[Constants.Directorates.SqlColumn.CountryId] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.CountryId].ToString();

            PhoneNumber = (row[Constants.Directorates.SqlColumn.PhoneNumber] == null
            || row[Constants.Directorates.SqlColumn.PhoneNumber] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.PhoneNumber].ToString();

            Fax = (row[Constants.Directorates.SqlColumn.Fax] == null
            || row[Constants.Directorates.SqlColumn.Fax] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.Fax].ToString();

            Email = (row[Constants.Directorates.SqlColumn.Email] == null
            || row[Constants.Directorates.SqlColumn.Email] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.Email].ToString();

            WebAddress = (row[Constants.Directorates.SqlColumn.WebAddress] == null
            || row[Constants.Directorates.SqlColumn.WebAddress] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.WebAddress].ToString();

            CharityNumber = (row[Constants.Directorates.SqlColumn.CharityNumber] == null
            || row[Constants.Directorates.SqlColumn.CharityNumber] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.CharityNumber].ToString();
            CompanyNumber = (row[Constants.Directorates.SqlColumn.CompanyNumber] == null
            || row[Constants.Directorates.SqlColumn.CompanyNumber] is DBNull) ?
            string.Empty : row[Constants.Directorates.SqlColumn.CompanyNumber].ToString();
            IsActive = Convert.ToBoolean(row[Constants.Directorates.SqlColumn.IsActive].ToString());
            OrganizationID = Convert.ToInt32(row[Constants.Directorates.SqlColumn.OrganizationId].ToString());
        }

        SqlCommand IEntity.UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = @"Update [{0}] 
                            set [{1}] = @param1, 
                                [{2}] = @param2,
                                [{3}] = @param3,
                                [{4}] = @param4,
                                [{5}] = @param5,
                                [{6}] = @param6,
                                [{7}] = @param7,
                                [{8}] = @param8, 
                                [{9}] = @param9, 
                                [{10}] = @param10, 
                                [{11}] = @param11, 
                                [{12}] = @param12, 
                                [{13}] = @param13, 
                                [{14}] = @param14, 
                                [{15}] = @param15,
                                [{16}] = @param16,
                                [{17}] = @param17
                            where [Id] = @id";
            retVal.CommandText =
                string.Format(cmdStr, tableName,
                Constants.Directorates.SqlColumn.DirectorateName,
                Constants.Directorates.SqlColumn.BusinessId,
                Constants.Directorates.SqlColumn.AddressId,
                Constants.Directorates.SqlColumn.ContactId,
                Constants.Directorates.SqlColumn.ShortDescription,
                Constants.Directorates.SqlColumn.FullDescription,
                Constants.Directorates.SqlColumn.CityTown,
                Constants.Directorates.SqlColumn.County,
                Constants.Directorates.SqlColumn.CountryId,
                Constants.Directorates.SqlColumn.PhoneNumber,
                Constants.Directorates.SqlColumn.Fax,
                Constants.Directorates.SqlColumn.Email,
                Constants.Directorates.SqlColumn.WebAddress,
                Constants.Directorates.SqlColumn.CharityNumber,
                Constants.Directorates.SqlColumn.CompanyNumber,
                Constants.Directorates.SqlColumn.IsActive,
                Constants.Directorates.SqlColumn.OrganizationId);
            retVal.Parameters.Add(new SqlParameter("param1", DirectorateName));
            retVal.Parameters.Add(new SqlParameter("param2", BusinessID));
            retVal.Parameters.Add(new SqlParameter("param3", AddressID));
            retVal.Parameters.Add(new SqlParameter("param4", ContactID));
            retVal.Parameters.Add(new SqlParameter("param5", ShortDescription));
            retVal.Parameters.Add(new SqlParameter("param6", FullDescription));
            retVal.Parameters.Add(new SqlParameter("param7", CityTown));
            retVal.Parameters.Add(new SqlParameter("param8", County));
            retVal.Parameters.Add(new SqlParameter("param9", CountryID));
            retVal.Parameters.Add(new SqlParameter("param10", PhoneNumber));
            retVal.Parameters.Add(new SqlParameter("param11", Fax));
            retVal.Parameters.Add(new SqlParameter("param12", Email));
            retVal.Parameters.Add(new SqlParameter("param13", WebAddress));
            retVal.Parameters.Add(new SqlParameter("param14", CharityNumber));
            retVal.Parameters.Add(new SqlParameter("param15", CompanyNumber));
            retVal.Parameters.Add(new SqlParameter("param16", IsActive));
            retVal.Parameters.Add(new SqlParameter("param17", OrganizationID));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = @"Insert into [{0}] ([{1}], [{2}], [{3}], [{4}], [{5}], [{6}], [{7}], [{8}], [{9}], [{10}], [{11}], [{12}], [{13}], [{14}], [{15}], [{16}], [{17}]) values(
                                @param1, 
                                @param2,
                                @param3,
                                @param4,
                                @param5,
                                @param6,
                                @param7,
                                @param8, 
                                @param9, 
                                @param10, 
                                @param11, 
                                @param12, 
                                @param13, 
                                @param14, 
                                @param15,
                                @param16,
                                @param17)";
            retVal.CommandText = string.Format(cmdStr, tableName,
                Constants.Directorates.SqlColumn.DirectorateName,
                Constants.Directorates.SqlColumn.BusinessId,
                Constants.Directorates.SqlColumn.AddressId,
                Constants.Directorates.SqlColumn.ContactId,
                Constants.Directorates.SqlColumn.ShortDescription,
                Constants.Directorates.SqlColumn.FullDescription,
                Constants.Directorates.SqlColumn.CityTown,
                Constants.Directorates.SqlColumn.County,
                Constants.Directorates.SqlColumn.CountryId,
                Constants.Directorates.SqlColumn.PhoneNumber,
                Constants.Directorates.SqlColumn.Fax,
                Constants.Directorates.SqlColumn.Email,
                Constants.Directorates.SqlColumn.WebAddress,
                Constants.Directorates.SqlColumn.CharityNumber,
                Constants.Directorates.SqlColumn.CompanyNumber,
                Constants.Directorates.SqlColumn.IsActive,
                Constants.Directorates.SqlColumn.OrganizationId);

            retVal.Parameters.Add(new SqlParameter("param1", DirectorateName));
            retVal.Parameters.Add(new SqlParameter("param2", BusinessID));
            retVal.Parameters.Add(new SqlParameter("param3", AddressID));
            retVal.Parameters.Add(new SqlParameter("param4", ContactID));
            retVal.Parameters.Add(new SqlParameter("param5", ShortDescription));
            retVal.Parameters.Add(new SqlParameter("param6", FullDescription));
            retVal.Parameters.Add(new SqlParameter("param7", CityTown));
            retVal.Parameters.Add(new SqlParameter("param8", County));
            retVal.Parameters.Add(new SqlParameter("param9", CountryID));
            retVal.Parameters.Add(new SqlParameter("param10", PhoneNumber));
            retVal.Parameters.Add(new SqlParameter("param11", Fax));
            retVal.Parameters.Add(new SqlParameter("param12", Email));
            retVal.Parameters.Add(new SqlParameter("param13", WebAddress));
            retVal.Parameters.Add(new SqlParameter("param14", CharityNumber));
            retVal.Parameters.Add(new SqlParameter("param15", CompanyNumber));
            retVal.Parameters.Add(new SqlParameter("param16", IsActive));
            retVal.Parameters.Add(new SqlParameter("param17", OrganizationID));
            return retVal;
        }
    }
}
