
using System;
using SampleProject.Commons;
using System.Data.SqlClient;
using System.Data;

namespace SampleProject.Entity
{
    public class DepartmentsEntity : IEntity
    {

        public string DepartmentName { get; set; }
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
        public bool IsActive { get; set; }
        public int DirectorateId { get; set; }

        public int Id
        {
            get;
            set;
        }

        void IEntity.Mapping(System.Data.DataRow row)
        {
            Id = (row[Constants.Departments.SqlColumn.Id] == null
             || row[Constants.Departments.SqlColumn.Id] is DBNull) ? 0
             : int.Parse(row[Constants.Departments.SqlColumn.Id].ToString());

            DepartmentName = (row[Constants.Departments.SqlColumn.DepartmentName] == null
            || row[Constants.Departments.SqlColumn.DepartmentName] is DBNull) ?
            string.Empty : row[Constants.Departments.SqlColumn.DepartmentName].ToString();
            BusinessID = Convert.ToInt32(row[Constants.Departments.SqlColumn.BusinessId]);
            AddressID = Convert.ToInt32(row[Constants.Departments.SqlColumn.AddressId]);
            ContactID = (row[Constants.Departments.SqlColumn.ContactId] == null
            || row[Constants.Departments.SqlColumn.ContactId] is DBNull) ?
            0 : Convert.ToInt32(row[Constants.Departments.SqlColumn.ContactId]);

            ShortDescription = (row[Constants.Departments.SqlColumn.ShortDescription] == null
            || row[Constants.Departments.SqlColumn.ShortDescription] is DBNull) ?
            string.Empty : row[Constants.Departments.SqlColumn.ShortDescription].ToString();

            FullDescription = (row[Constants.Departments.SqlColumn.FullDescription] == null
            || row[Constants.Departments.SqlColumn.FullDescription] is DBNull) ?
            string.Empty : row[Constants.Departments.SqlColumn.FullDescription].ToString();

            CityTown = (row[Constants.Departments.SqlColumn.CityTown] == null
            || row[Constants.Departments.SqlColumn.CityTown] is DBNull) ?
            string.Empty : row[Constants.Departments.SqlColumn.CityTown].ToString();

            County = (row[Constants.Departments.SqlColumn.County] == null
            || row[Constants.Departments.SqlColumn.County] is DBNull) ?
            string.Empty : row[Constants.Departments.SqlColumn.County].ToString();

            CountryID = (row[Constants.Departments.SqlColumn.CountryId] == null
            || row[Constants.Departments.SqlColumn.CountryId] is DBNull) ?
            string.Empty : row[Constants.Departments.SqlColumn.CountryId].ToString();

            PhoneNumber = (row[Constants.Departments.SqlColumn.PhoneNumber] == null
            || row[Constants.Departments.SqlColumn.PhoneNumber] is DBNull) ?
            string.Empty : row[Constants.Departments.SqlColumn.PhoneNumber].ToString();

            Fax = (row[Constants.Departments.SqlColumn.Fax] == null
            || row[Constants.Departments.SqlColumn.Fax] is DBNull) ?
            string.Empty : row[Constants.Departments.SqlColumn.Fax].ToString();

            Email = (row[Constants.Departments.SqlColumn.Email] == null
            || row[Constants.Departments.SqlColumn.Email] is DBNull) ?
            string.Empty : row[Constants.Departments.SqlColumn.Email].ToString();

            WebAddress = (row[Constants.Departments.SqlColumn.WebAddress] == null
            || row[Constants.Departments.SqlColumn.WebAddress] is DBNull) ?
            string.Empty : row[Constants.Departments.SqlColumn.WebAddress].ToString();

            IsActive = Convert.ToBoolean(row[Constants.Departments.SqlColumn.IsActive].ToString());
            DirectorateId = Convert.ToInt32(row[Constants.Departments.SqlColumn.DirectorateId].ToString());
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
                                [{15}] = @param15
                            where [Id] = @id";
            retVal.CommandText =
                string.Format(cmdStr, tableName,
                Constants.Departments.SqlColumn.DepartmentName,
                Constants.Departments.SqlColumn.BusinessId,
                Constants.Departments.SqlColumn.AddressId,
                Constants.Departments.SqlColumn.ContactId,
                Constants.Departments.SqlColumn.ShortDescription,
                Constants.Departments.SqlColumn.FullDescription,
                Constants.Departments.SqlColumn.CityTown,
                Constants.Departments.SqlColumn.County,
                Constants.Departments.SqlColumn.CountryId,
                Constants.Departments.SqlColumn.PhoneNumber,
                Constants.Departments.SqlColumn.Fax,
                Constants.Departments.SqlColumn.Email,
                Constants.Departments.SqlColumn.WebAddress,
                Constants.Departments.SqlColumn.IsActive,
                Constants.Departments.SqlColumn.DirectorateId);
            retVal.Parameters.Add(new SqlParameter("param1", DepartmentName));
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
            retVal.Parameters.Add(new SqlParameter("param14", IsActive));
            retVal.Parameters.Add(new SqlParameter("param15", DirectorateId));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = @"Insert into [{0}] ([{1}], [{2}], [{3}], [{4}], [{5}], [{6}], [{7}], [{8}], [{9}], [{10}], [{11}], [{12}], [{13}], [{14}], [{15}]) values(
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
                                @param15)";
            retVal.CommandText = string.Format(cmdStr, tableName,
                Constants.Departments.SqlColumn.DepartmentName,
                Constants.Departments.SqlColumn.BusinessId,
                Constants.Departments.SqlColumn.AddressId,
                Constants.Departments.SqlColumn.ContactId,
                Constants.Departments.SqlColumn.ShortDescription,
                Constants.Departments.SqlColumn.FullDescription,
                Constants.Departments.SqlColumn.CityTown,
                Constants.Departments.SqlColumn.County,
                Constants.Departments.SqlColumn.CountryId,
                Constants.Departments.SqlColumn.PhoneNumber,
                Constants.Departments.SqlColumn.Fax,
                Constants.Departments.SqlColumn.Email,
                Constants.Departments.SqlColumn.WebAddress,
                Constants.Departments.SqlColumn.IsActive,
                Constants.Departments.SqlColumn.DirectorateId);

            retVal.Parameters.Add(new SqlParameter("param1", DepartmentName));
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
            retVal.Parameters.Add(new SqlParameter("param14", IsActive));
            retVal.Parameters.Add(new SqlParameter("param15", DirectorateId));
            return retVal;
        }
    }
}
