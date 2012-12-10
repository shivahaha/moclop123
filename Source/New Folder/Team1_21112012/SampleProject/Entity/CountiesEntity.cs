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
    public class CountiesEntity : IEntity
    {
        public int Id { get; set; }
        public string CountyName { get; set; }
        public string CountryId { get; set; }
        public int GovOfficeRegionId { get; set; }

        public void Mapping(DataRow row)
        {
            Id = (row[Constants.Counties.SqlColumn.Id] == null
             || row[Constants.Counties.SqlColumn.Id] is DBNull) ? 0
             : int.Parse(row[Constants.Counties.SqlColumn.Id].ToString());
            CountyName = (row[Constants.Counties.SqlColumn.CountyName] == null || row[Constants.Counties.SqlColumn.CountyName] is DBNull) ? string.Empty : row[Constants.Counties.SqlColumn.CountyName].ToString();
            CountryId = (row[Constants.Counties.SqlColumn.CountryId] == null || row[Constants.Counties.SqlColumn.CountryId] is DBNull) ? string.Empty : row[Constants.Counties.SqlColumn.CountryId].ToString();
            GovOfficeRegionId = int.Parse((row[Constants.Counties.SqlColumn.GovOfficeRegionId] == null || row[Constants.Counties.SqlColumn.GovOfficeRegionId] is DBNull) ? string.Empty : row[Constants.Counties.SqlColumn.GovOfficeRegionId].ToString());
        }

        public SqlCommand UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Update [{0}] set [{1}] = @CountyName, [{2}] = @CountryId,[{3}] = @GovOfficeRegionId where [CountyId] = @id";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Counties.SqlColumn.CountyName,
                                                                  Constants.Counties.SqlColumn.CountryId,
                                                                  Constants.Counties.SqlColumn.GovOfficeRegionId);
            retVal.Parameters.Add(new SqlParameter("CountyName", CountyName));
            retVal.Parameters.Add(new SqlParameter("CountryId", CountryId));
            retVal.Parameters.Add(new SqlParameter("GovOfficeRegionId", GovOfficeRegionId));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }

        public SqlCommand InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Insert into [{0}] ([{1}], [{2}], [{3}]) values(@CountyName, @CountryId, @GovOfficeRegionId)";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Counties.SqlColumn.CountyName,
                                                                  Constants.Counties.SqlColumn.CountryId,
                                                                  Constants.Counties.SqlColumn.GovOfficeRegionId);
            retVal.Parameters.Add(new SqlParameter("CountyName", CountyName));
            retVal.Parameters.Add(new SqlParameter("CountryId", CountryId));
            retVal.Parameters.Add(new SqlParameter("GovOfficeRegionId", GovOfficeRegionId));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }
    }
}