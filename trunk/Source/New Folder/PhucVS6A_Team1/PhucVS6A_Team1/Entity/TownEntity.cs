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
using PhucVS6A_Team1.Commons;
using System.Data.SqlClient;

namespace PhucVS6A_Team1.Entity
{
    public class TownEntity :IEntity
    {
        public int TownId { get; set; }
        public string TownName { get; set; }
        public string CountyId { get; set; }
       


        void IEntity.Mapping(DataRow row)
        {
            TownName = (row[Constants.Towns.SqlColumn.TownName] == null || row[Constants.Towns.SqlColumn.TownName] is DBNull) ? string.Empty : row[Constants.Towns.SqlColumn.TownName].ToString();
            CountyId = (row[Constants.Towns.SqlColumn.CountyId] == null || row[Constants.Towns.SqlColumn.CountyId] is DBNull) ? string.Empty : row[Constants.Towns.SqlColumn.CountyId].ToString();
            TownId = (row[Constants.Common.TownId] == null || row[Constants.Common.TownId] is DBNull) ? 0 : int.Parse(row[Constants.Common.TownId].ToString());
        }

        SqlCommand IEntity.UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Update [{0}] set [{1}] = @TownName, [{2}] = @TownName where [TownId] = @TownId";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Towns.SqlColumn.TownName, Constants.Towns.SqlColumn.CountyId);
            retVal.Parameters.Add(new SqlParameter("TownName", TownName));
            retVal.Parameters.Add(new SqlParameter("CountyId", CountyId));
            retVal.Parameters.Add(new SqlParameter("TownId", TownId));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Insert into [{0}] ([{1}], [{2}]) values(@TownName, @CountyId)";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Towns.SqlColumn.TownName, Constants.Towns.SqlColumn.CountyId);
            retVal.Parameters.Add(new SqlParameter("TownName", TownName));
            retVal.Parameters.Add(new SqlParameter("CountyId", CountyId));
            retVal.Parameters.Add(new SqlParameter("TownId", TownId));
            return retVal;
        }
    }
}
