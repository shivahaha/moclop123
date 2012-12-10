using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using CSSfull.Commons;

namespace CSSfull.Entity
{
    public class BusinessTypes : IEntity
    {
        public int Id { get; set; }
        public string BusinessName { get; set; }
        public string SICCode { get; set; }

        public void Mapping(DataRow row)
        {
            BusinessName = (row[Constants.BusinessTypes.SqlColumn.BusinessName] == null || row[Constants.BusinessTypes.SqlColumn.BusinessName] is DBNull) ? string.Empty : row[Constants.BusinessTypes.SqlColumn.BusinessName].ToString();
            SICCode = (row[Constants.BusinessTypes.SqlColumn.SICCode] == null || row[Constants.BusinessTypes.SqlColumn.SICCode] is DBNull) ? string.Empty : row[Constants.BusinessTypes.SqlColumn.SICCode].ToString();
        }

        public SqlCommand UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            const string cmdStr = "UPDATE BusinessTypes SET BusinessName = @BusinessName, SICCode = @SICCode WHERE Id = @Id";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.BusinessTypes.SqlColumn.BusinessName, Constants.BusinessTypes.SqlColumn.SICCode);
            retVal.Parameters.Add(new SqlParameter("BusinessName", BusinessName));
            retVal.Parameters.Add(new SqlParameter("SICCode", SICCode));
            retVal.Parameters.Add(new SqlParameter("Id", Id));
            return retVal;
        }

        public SqlCommand InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            const string cmdStr = "INSERT INTO BusinessTypes VALUES(@BusinessName, @SICCode)";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.BusinessTypes.SqlColumn.BusinessName, Constants.BusinessTypes.SqlColumn.SICCode);
            retVal.Parameters.Add(new SqlParameter("BusinessName", BusinessName));
            retVal.Parameters.Add(new SqlParameter("SICCode", SICCode));
            return retVal;
        }
    }
}
