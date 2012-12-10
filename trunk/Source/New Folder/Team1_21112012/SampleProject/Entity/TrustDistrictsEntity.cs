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
using SampleProject.Commons;
using System.Data.SqlClient;

namespace SampleProject.Entity
{
    public class TrustDistrictsEntity : IEntity
    {

        public int Id { get; set; }
        public string TrustDistrictName { get; set; }
        public string Description { get; set; }
        public int TrustRegionId { get; set; }
        public bool IsActive { get; set; }
        void IEntity.Mapping(DataRow row)
        {
            Id = (row[Constants.TrustDistricts.SqlColumn.Id] == null
             || row[Constants.TrustDistricts.SqlColumn.Id] is DBNull) ? 0
             : int.Parse(row[Constants.TrustDistricts.SqlColumn.Id].ToString());
            TrustDistrictName = (row[Constants.TrustDistricts.SqlColumn.TrustDistrictName] == null || row[Constants.TrustDistricts.SqlColumn.TrustDistrictName] is DBNull) ? string.Empty : row[Constants.TrustDistricts.SqlColumn.TrustDistrictName].ToString();
            Description = (row[Constants.TrustDistricts.SqlColumn.Description] == null || row[Constants.TrustDistricts.SqlColumn.Description] is DBNull) ? string.Empty : row[Constants.TrustDistricts.SqlColumn.Description].ToString();
            TrustRegionId = int.Parse((row[Constants.TrustDistricts.SqlColumn.TrustRegionId] == null || row[Constants.TrustDistricts.SqlColumn.TrustRegionId] is DBNull) ? string.Empty : row[Constants.TrustDistricts.SqlColumn.TrustRegionId].ToString());
            IsActive = bool.Parse((row[Constants.TrustDistricts.SqlColumn.IsActive] == null || row[Constants.TrustDistricts.SqlColumn.IsActive] is DBNull) ? string.Empty : row[Constants.TrustDistricts.SqlColumn.IsActive].ToString());
        }
        SqlCommand IEntity.UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Update [{0}] set [{1}] = @TrustDistrictName, [{2}] = @Description, [{3}] = @TrustRegionId, [{4}] = @IsActive where [DistrictId] = @id";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.TrustDistricts.SqlColumn.TrustDistrictName,
                                                                  Constants.TrustDistricts.SqlColumn.Description,
                                                                  Constants.TrustDistricts.SqlColumn.TrustRegionId,
                                                                  Constants.TrustDistricts.SqlColumn.IsActive);
            retVal.Parameters.Add(new SqlParameter("TrustDistrictName", TrustDistrictName));
            retVal.Parameters.Add(new SqlParameter("Description", Description));
            retVal.Parameters.Add(new SqlParameter("TrustRegionId", TrustRegionId));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Insert into [{0}] ([{1}], [{2}], [{3}], [{4}]) values(@TrustDistrictName, @Description,@TrustRegionId,@IsActive)";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.TrustDistricts.SqlColumn.TrustDistrictName,
                                                                  Constants.TrustDistricts.SqlColumn.Description,
                                                                  Constants.TrustDistricts.SqlColumn.TrustRegionId,
                                                                  Constants.TrustDistricts.SqlColumn.IsActive);
            retVal.Parameters.Add(new SqlParameter("TrustDistrictName", TrustDistrictName));
            retVal.Parameters.Add(new SqlParameter("Description", Description));
            retVal.Parameters.Add(new SqlParameter("TrustRegionId", TrustRegionId));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }
    }
}
