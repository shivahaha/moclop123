using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Commons;
using System.Data;
using System.Data.SqlClient;

namespace SampleProject.Entity
{
    public class SupportingMaterialsEntity : IEntity
    {

        public string Url { get; set; }
        public string Description { get; set; }
        public string Type { get; set; }
        public int UserID { get; set; }
        public DateTime AddedDate { get; set; }
        public bool IsActive { get; set; }
        public int OrganizationID { get; set; }

        public int Id
        {
            get;
            set;
        }

        void IEntity.Mapping(System.Data.DataRow row)
        {
            Id = (row[Constants.SupportMaterials.SqlColumn.Id] == null
             || row[Constants.SupportMaterials.SqlColumn.Id] is DBNull) ? 0
             : int.Parse(row[Constants.SupportMaterials.SqlColumn.Id].ToString());
            Url = (row[Constants.SupportMaterials.SqlColumn.Url] == null
                || row[Constants.SupportMaterials.SqlColumn.Url] is DBNull) ?
                string.Empty : row[Constants.SupportMaterials.SqlColumn.Url].ToString();
            Description = (row[Constants.SupportMaterials.SqlColumn.Description] == null
                    || row[Constants.SupportMaterials.SqlColumn.Description] is DBNull) ?
                    string.Empty : row[Constants.SupportMaterials.SqlColumn.Description].ToString();
            Type = (row[Constants.SupportMaterials.SqlColumn.Type] == null
                || row[Constants.SupportMaterials.SqlColumn.Type] is DBNull) ?
                string.Empty : row[Constants.SupportMaterials.SqlColumn.Type].ToString();
            UserID = Convert.ToInt32(row[Constants.SupportMaterials.SqlColumn.UserID]);
            AddedDate = Convert.ToDateTime(row[Constants.SupportMaterials.SqlColumn.AddedDate].ToString());
            IsActive = Convert.ToBoolean(row[Constants.SupportMaterials.SqlColumn.IsActive].ToString());
            OrganizationID = Convert.ToInt32(row[Constants.SupportMaterials.SqlColumn.OrganizationID].ToString());
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
                            [{7}] = @param7 
                        where [Id] = @id";
            retVal.CommandText = string.Format(cmdStr, tableName,
                Constants.SupportMaterials.SqlColumn.Url,
                Constants.SupportMaterials.SqlColumn.Description,
                Constants.SupportMaterials.SqlColumn.Type,
                Constants.SupportMaterials.SqlColumn.UserID,
                Constants.SupportMaterials.SqlColumn.AddedDate,
                Constants.SupportMaterials.SqlColumn.IsActive,
                Constants.SupportMaterials.SqlColumn.OrganizationID);
            retVal.Parameters.Add(new SqlParameter("param1", Url));
            retVal.Parameters.Add(new SqlParameter("param2", Description));
            retVal.Parameters.Add(new SqlParameter("param3", Type));
            retVal.Parameters.Add(new SqlParameter("param4", UserID));
            retVal.Parameters.Add(new SqlParameter("param5", AddedDate));
            retVal.Parameters.Add(new SqlParameter("param6", IsActive));
            retVal.Parameters.Add(new SqlParameter("param7", OrganizationID));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = @"Insert into [{0}] ([{1}], [{2}],  [{3}], [{4}], [{5}], [{6}],  [{7}]) 
            values(@param1, @param2, @param3, @param4, @param5, @param6, @param7)";
            retVal.CommandText = string.Format(cmdStr, tableName,
                Constants.SupportMaterials.SqlColumn.Url,
                Constants.SupportMaterials.SqlColumn.Description,
                Constants.SupportMaterials.SqlColumn.Type,
                Constants.SupportMaterials.SqlColumn.UserID,
                Constants.SupportMaterials.SqlColumn.AddedDate,
                Constants.SupportMaterials.SqlColumn.IsActive,
                Constants.SupportMaterials.SqlColumn.OrganizationID);
            retVal.Parameters.Add(new SqlParameter("param1", Url));
            retVal.Parameters.Add(new SqlParameter("param2", Description));
            retVal.Parameters.Add(new SqlParameter("param3", Type));
            retVal.Parameters.Add(new SqlParameter("param4", UserID));
            retVal.Parameters.Add(new SqlParameter("param5", AddedDate));
            retVal.Parameters.Add(new SqlParameter("param6", IsActive));
            retVal.Parameters.Add(new SqlParameter("param7", OrganizationID));
            return retVal;
        }
    }
}
