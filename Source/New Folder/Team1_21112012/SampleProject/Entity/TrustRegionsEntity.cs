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
    public class TrustRegionsEntity : IEntity
    {

        public int Id { get; set; }
        public string TrustRegionName { get; set; }
        public string CountryId { get; set; }
        public string Description { get; set; }
        public bool IsActive { get; set; }
        void IEntity.Mapping(DataRow row)
        {
            Id = (row[Constants.TrustRegions.SqlColumn.Id] == null
             || row[Constants.TrustRegions.SqlColumn.Id] is DBNull) ? 0
             : int.Parse(row[Constants.TrustRegions.SqlColumn.Id].ToString());
            TrustRegionName = (row[Constants.TrustRegions.SqlColumn.TrustRegionName] == null || row[Constants.TrustRegions.SqlColumn.TrustRegionName] is DBNull) ? string.Empty : row[Constants.TrustRegions.SqlColumn.TrustRegionName].ToString();
            CountryId = (row[Constants.TrustRegions.SqlColumn.CountryId] == null || row[Constants.TrustRegions.SqlColumn.CountryId] is DBNull) ? string.Empty : row[Constants.TrustRegions.SqlColumn.CountryId].ToString();
            Description = (row[Constants.TrustRegions.SqlColumn.Description] == null || row[Constants.TrustRegions.SqlColumn.Description] is DBNull) ? string.Empty : row[Constants.TrustRegions.SqlColumn.Description].ToString();
            IsActive = bool.Parse((row[Constants.TrustRegions.SqlColumn.IsActive] == null || row[Constants.TrustRegions.SqlColumn.IsActive] is DBNull) ? string.Empty : row[Constants.TrustRegions.SqlColumn.IsActive].ToString());
        }

        public SqlCommand UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            const string cmdStr = "UPDATE TrustRegions SET TrustRegionName = @TrustRegionName, CountryId = @CountryId, Description = @Description, IsActive = @IsActivee WHERE Id = @Id";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.TrustRegions.SqlColumn.TrustRegionName, Constants.TrustRegions.SqlColumn.CountryId, Constants.TrustRegions.SqlColumn.Description, Constants.TrustRegions.SqlColumn.IsActive);
            retVal.Parameters.Add(new SqlParameter("TrustRegionName", TrustRegionName));
            retVal.Parameters.Add(new SqlParameter("CountryId", CountryId));
            retVal.Parameters.Add(new SqlParameter("Description", Description));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("Id", Id));
            return retVal;
        }

        public SqlCommand InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            const string cmdStr = "INSERT INTO TrustRegions VALUES(@TrustRegionName, @CountryId, @Description, @IsActive)";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.TrustRegions.SqlColumn.TrustRegionName, Constants.TrustRegions.SqlColumn.CountryId, Constants.TrustRegions.SqlColumn.Description, Constants.TrustRegions.SqlColumn.IsActive);
            retVal.Parameters.Add(new SqlParameter("TrustRegionName", TrustRegionName));
            retVal.Parameters.Add(new SqlParameter("CountryId", CountryId));
            retVal.Parameters.Add(new SqlParameter("Description", Description));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            return retVal;
        }
    }
}
