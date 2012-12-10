using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Commons;
using System.Data;
using System.Data.SqlClient;

namespace SampleProject.Entity
{
    public class GovermentOfficeRegionEntity : IEntity
    {
        public int Id { get; set; }
        public string GovOfficeRegionName { get; set; }
        public string Description { get; set; }
        public bool IsActive { get; set; }

        public void Mapping(DataRow row)
        {
            Id = (row[Constants.GovermentOfficeRegion.SqlColumn.Id] == null
             || row[Constants.GovermentOfficeRegion.SqlColumn.Id] is DBNull) ? 0
             : int.Parse(row[Constants.GovermentOfficeRegion.SqlColumn.Id].ToString());
            GovOfficeRegionName = (row[Constants.GovermentOfficeRegion.SqlColumn.GovOfficeRegionName] == null || row[Constants.GovermentOfficeRegion.SqlColumn.GovOfficeRegionName] is DBNull) ? string.Empty : row[Constants.GovermentOfficeRegion.SqlColumn.GovOfficeRegionName].ToString();
            Description = (row[Constants.GovermentOfficeRegion.SqlColumn.Description] == null || row[Constants.GovermentOfficeRegion.SqlColumn.Description] is DBNull) ? string.Empty : row[Constants.GovermentOfficeRegion.SqlColumn.Description].ToString();
            IsActive = bool.Parse((row[Constants.GovermentOfficeRegion.SqlColumn.IsActive] == null || row[Constants.GovermentOfficeRegion.SqlColumn.IsActive] is DBNull) ? string.Empty : row[Constants.GovermentOfficeRegion.SqlColumn.IsActive].ToString());
        }
        SqlCommand IEntity.UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Update [{0}] set [{1}] = @GovOfficeRegionName, [{2}] = @Description,[{3}] = @IsActive where [GovOfficeRegionId] = @id";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.GovermentOfficeRegion.SqlColumn.GovOfficeRegionName,
                                                                  Constants.GovermentOfficeRegion.SqlColumn.Description,
                                                                  Constants.GovermentOfficeRegion.SqlColumn.IsActive);
            retVal.Parameters.Add(new SqlParameter("GovOfficeRegionName", GovOfficeRegionName));
            retVal.Parameters.Add(new SqlParameter("Description", Description));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Insert into [{0}] ([{1}], [{2}], [{3}]) values(@GovOfficeRegionName, @Description, @IsActive)";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.GovermentOfficeRegion.SqlColumn.GovOfficeRegionName,
                                                                  Constants.GovermentOfficeRegion.SqlColumn.Description,
                                                                  Constants.GovermentOfficeRegion.SqlColumn.IsActive);
            retVal.Parameters.Add(new SqlParameter("GovOfficeRegionName", GovOfficeRegionName));
            retVal.Parameters.Add(new SqlParameter("Description", Description));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            return retVal;
        }

    }
}
