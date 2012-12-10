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
    public class CountriesEntity : IEntity
    {

        public int Id { get; set; }
        public string CountryName { get; set; }

        public void Mapping(DataRow row)
        {
            Id = (row[Constants.Countries.SqlColumn.Id] == null
             || row[Constants.Countries.SqlColumn.Id] is DBNull) ? 0
             : int.Parse(row[Constants.Countries.SqlColumn.Id].ToString());
            CountryName = (row[Constants.Countries.SqlColumn.CountryName] == null || row[Constants.Countries.SqlColumn.CountryName] is DBNull) ? string.Empty : row[Constants.Countries.SqlColumn.CountryName].ToString();

        }

        public SqlCommand UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Update [{0}] set [{1}] = @CountryName where [CountryId] = @id";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Countries.SqlColumn.CountryName);
            retVal.Parameters.Add(new SqlParameter("CountryName", CountryName));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }

        public SqlCommand InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Insert into [{0}] ([{1}]) values(@CountryName)";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Countries.SqlColumn.CountryName);
            retVal.Parameters.Add(new SqlParameter("CountryName", CountryName));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }
    }
}
