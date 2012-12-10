using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Commons;
using System.Data;
using System.Data.SqlClient;

namespace SampleProject.Entity
{
    public class TeamEntity : IEntity
    {

        public string TeamName { get; set; }
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
        public int DepartmentId { get; set; }

        public int Id
        {
            get;
            set;
        }
        void IEntity.Mapping(System.Data.DataRow row)
        {
            Id = (row[Constants.Teams.SqlColumn.Id] == null
             || row[Constants.Teams.SqlColumn.Id] is DBNull) ? 0
             : int.Parse(row[Constants.Teams.SqlColumn.Id].ToString());
            TeamName = (row[Constants.Teams.SqlColumn.TeamName] == null
            || row[Constants.Teams.SqlColumn.TeamName] is DBNull) ?
            string.Empty : row[Constants.Teams.SqlColumn.TeamName].ToString();
            BusinessID = Convert.ToInt32(row[Constants.Teams.SqlColumn.BusinessId]);
            AddressID = Convert.ToInt32(row[Constants.Teams.SqlColumn.AddressId]);
            ContactID = (row[Constants.Teams.SqlColumn.ContactId] == null
            || row[Constants.Teams.SqlColumn.ContactId] is DBNull) ?
            0 : Convert.ToInt32(row[Constants.Teams.SqlColumn.ContactId]);

            ShortDescription = (row[Constants.Teams.SqlColumn.ShortDescription] == null
            || row[Constants.Teams.SqlColumn.ShortDescription] is DBNull) ?
            string.Empty : row[Constants.Teams.SqlColumn.ShortDescription].ToString();

            FullDescription = (row[Constants.Teams.SqlColumn.FullDescription] == null
            || row[Constants.Teams.SqlColumn.FullDescription] is DBNull) ?
            string.Empty : row[Constants.Teams.SqlColumn.FullDescription].ToString();

            CityTown = (row[Constants.Teams.SqlColumn.CityTown] == null
            || row[Constants.Teams.SqlColumn.CityTown] is DBNull) ?
            string.Empty : row[Constants.Teams.SqlColumn.CityTown].ToString();

            County = (row[Constants.Teams.SqlColumn.County] == null
            || row[Constants.Teams.SqlColumn.County] is DBNull) ?
            string.Empty : row[Constants.Teams.SqlColumn.County].ToString();

            CountryID = (row[Constants.Teams.SqlColumn.CountryId] == null
            || row[Constants.Teams.SqlColumn.CountryId] is DBNull) ?
            string.Empty : row[Constants.Teams.SqlColumn.CountryId].ToString();

            PhoneNumber = (row[Constants.Teams.SqlColumn.PhoneNumber] == null
            || row[Constants.Teams.SqlColumn.PhoneNumber] is DBNull) ?
            string.Empty : row[Constants.Teams.SqlColumn.PhoneNumber].ToString();

            Fax = (row[Constants.Teams.SqlColumn.Fax] == null
            || row[Constants.Teams.SqlColumn.Fax] is DBNull) ?
            string.Empty : row[Constants.Teams.SqlColumn.Fax].ToString();

            Email = (row[Constants.Teams.SqlColumn.Email] == null
            || row[Constants.Teams.SqlColumn.Email] is DBNull) ?
            string.Empty : row[Constants.Teams.SqlColumn.Email].ToString();

            WebAddress = (row[Constants.Teams.SqlColumn.WebAddress] == null
            || row[Constants.Teams.SqlColumn.WebAddress] is DBNull) ?
            string.Empty : row[Constants.Teams.SqlColumn.WebAddress].ToString();

            IsActive = Convert.ToBoolean(row[Constants.Teams.SqlColumn.IsActive].ToString());
            DepartmentId = Convert.ToInt32(row[Constants.Teams.SqlColumn.DepartmentId].ToString());
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
                Constants.Teams.SqlColumn.TeamName,
                Constants.Teams.SqlColumn.BusinessId,
                Constants.Teams.SqlColumn.AddressId,
                Constants.Teams.SqlColumn.ContactId,
                Constants.Teams.SqlColumn.ShortDescription,
                Constants.Teams.SqlColumn.FullDescription,
                Constants.Teams.SqlColumn.CityTown,
                Constants.Teams.SqlColumn.County,
                Constants.Teams.SqlColumn.CountryId,
                Constants.Teams.SqlColumn.PhoneNumber,
                Constants.Teams.SqlColumn.Fax,
                Constants.Teams.SqlColumn.Email,
                Constants.Teams.SqlColumn.WebAddress,
                Constants.Teams.SqlColumn.IsActive,
                Constants.Teams.SqlColumn.DepartmentId);
            retVal.Parameters.Add(new SqlParameter("param1", TeamName));
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
            retVal.Parameters.Add(new SqlParameter("param15", DepartmentId));
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
                Constants.Teams.SqlColumn.TeamName,
                Constants.Teams.SqlColumn.BusinessId,
                Constants.Teams.SqlColumn.AddressId,
                Constants.Teams.SqlColumn.ContactId,
                Constants.Teams.SqlColumn.ShortDescription,
                Constants.Teams.SqlColumn.FullDescription,
                Constants.Teams.SqlColumn.CityTown,
                Constants.Teams.SqlColumn.County,
                Constants.Teams.SqlColumn.CountryId,
                Constants.Teams.SqlColumn.PhoneNumber,
                Constants.Teams.SqlColumn.Fax,
                Constants.Teams.SqlColumn.Email,
                Constants.Teams.SqlColumn.WebAddress,
                Constants.Teams.SqlColumn.IsActive,
                Constants.Teams.SqlColumn.DepartmentId);

            retVal.Parameters.Add(new SqlParameter("param1", TeamName));
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
            retVal.Parameters.Add(new SqlParameter("param15", DepartmentId));
            return retVal;
        }
    }
}
