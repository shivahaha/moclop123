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

    public class AddressEntity : IEntity
    {
        public int Id { get; set; }
        public string AddressLine { get; set; }
        public string Postcode { get; set; }
        public string TownId { get; set; }
        public string AddressLine2 { get; set; }
        public string AddressLine3 { get; set; }

        public void Mapping(DataRow row)
        {
            Id = (row[Constants.Address.SqlColumn.Id] == null
               || row[Constants.Address.SqlColumn.Id] is DBNull) ? 0
               : int.Parse(row[Constants.Address.SqlColumn.Id].ToString());
            AddressLine = (row[Constants.Address.SqlColumn.AddressLine] == null || row[Constants.Address.SqlColumn.AddressLine] is DBNull) ? string.Empty : row[Constants.Address.SqlColumn.AddressLine].ToString();
            Postcode = (row[Constants.Address.SqlColumn.Postcode] == null || row[Constants.Address.SqlColumn.Postcode] is DBNull) ? string.Empty : row[Constants.Address.SqlColumn.Postcode].ToString();
            TownId = (row[Constants.Address.SqlColumn.TownId] == null || row[Constants.Address.SqlColumn.TownId] is DBNull) ? string.Empty : row[Constants.Address.SqlColumn.TownId].ToString();
            AddressLine2 = (row[Constants.Address.SqlColumn.AddressLine2] == null || row[Constants.Address.SqlColumn.AddressLine2] is DBNull) ? string.Empty : row[Constants.Address.SqlColumn.AddressLine2].ToString();
            AddressLine3 = (row[Constants.Address.SqlColumn.AddressLine3] == null || row[Constants.Address.SqlColumn.AddressLine3] is DBNull) ? string.Empty : row[Constants.Address.SqlColumn.AddressLine3].ToString();
        }

        public SqlCommand UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            const string cmdStr = "UPDATE Address SET AddressLine = @AddressLine, Postcode = @Postcode, TownId = @TownId, AddressLine2 = @AddressLine2, AddressLine3 = @AddressLine3 WHERE Id = @Id";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Address.SqlColumn.AddressLine, Constants.Address.SqlColumn.Postcode, Constants.Address.SqlColumn.TownId, Constants.Address.SqlColumn.AddressLine2, Constants.Address.SqlColumn.AddressLine3);
            retVal.Parameters.Add(new SqlParameter("AddressLine", AddressLine));
            retVal.Parameters.Add(new SqlParameter("Postcode", Postcode));
            retVal.Parameters.Add(new SqlParameter("TownId", TownId));
            retVal.Parameters.Add(new SqlParameter("AddressLine2", AddressLine2));
            retVal.Parameters.Add(new SqlParameter("AddressLine3", AddressLine3));
            retVal.Parameters.Add(new SqlParameter("Id", Id));
            return retVal;
        }

        public SqlCommand InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            const string cmdStr = "INSERT INTO Address VALUES(@AddressLine, @Postcode, @TownId, @AddressLine2, @AddressLine3)";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Address.SqlColumn.AddressLine, Constants.Address.SqlColumn.Postcode, Constants.Address.SqlColumn.TownId, Constants.Address.SqlColumn.AddressLine2, Constants.Address.SqlColumn.AddressLine3);
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Address.SqlColumn.AddressLine, Constants.Address.SqlColumn.Postcode, Constants.Address.SqlColumn.TownId, Constants.Address.SqlColumn.AddressLine2, Constants.Address.SqlColumn.AddressLine3);
            retVal.Parameters.Add(new SqlParameter("AddressLine", AddressLine));
            retVal.Parameters.Add(new SqlParameter("Postcode", Postcode));
            retVal.Parameters.Add(new SqlParameter("TownId", TownId));
            retVal.Parameters.Add(new SqlParameter("AddressLine2", AddressLine2));
            retVal.Parameters.Add(new SqlParameter("AddressLine3", AddressLine3));
            return retVal;
        }
    }
}