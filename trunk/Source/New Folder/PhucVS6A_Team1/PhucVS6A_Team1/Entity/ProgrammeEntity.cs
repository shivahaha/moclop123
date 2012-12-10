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
namespace PhucVS6A_Team1.Entity
{
    public class ProgrammeEntity : IEntity
    {
        public int ProgramId { get; set; }
        public string ProgramName { get; set; }
        public string Description { get; set; }
        public int ContactId { get; set; }
        public bool IsActive { get; set; }
        
        void IEntity.Mapping(System.Data.DataRow row)
        {
            ProgramName = (row[Constants.Programs.SqlColumn.ProgramName] == null || row[Constants.Programs.SqlColumn.ProgramName] is DBNull) ? string.Empty : row[Constants.Programs.SqlColumn.ProgramName].ToString();
            Description = (row[Constants.Programs.SqlColumn.Description] == null || row[Constants.Programs.SqlColumn.Description] is DBNull) ? string.Empty : row[Constants.Programs.SqlColumn.Description].ToString();
            ContactId = (row[Constants.Programs.SqlColumn.ContactId] == null || row[Constants.Programs.SqlColumn.ContactId] is DBNull) ? string.Empty : row[Constants.Programs.SqlColumn.ContactId].ToString();
            IsActive = (row[Constants.Programs.SqlColumn.IsActive] == null || row[Constants.Programs.SqlColumn.IsActive] is DBNull) ? string.Empty : row[Constants.Programs.SqlColumn.IsActive].ToString();

        }
        SqlCommand IEntity.UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Update [{0}] set [{1}] = @ProgramName, [{2}] = @Description,[{3}]=ContactId,[{4}]=IsActive where [ProgramId] = @ProgramId";
            retVal.CommandText = string.Format(cmdStr, tableName, 
              Constants.Programs.SqlColumn.ProgramName,
              Constants.Programs.SqlColumn.Description,
              Constants.Programs.SqlColumn.ContactId, 
              Constants.Programs.SqlColumn.IsActive);

            retVal.Parameters.Add(new SqlParameter("ProgramName", ProgramName));
            retVal.Parameters.Add(new SqlParameter("Description", Description));
            retVal.Parameters.Add(new SqlParameter("ContactId", ContactId));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("ProgramId", ProgramId));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Insert into [{0}] ([{1}], [{2}],[{3}],[{4}]) values(@ProgramName, @Description,@ContactId,@IsActive)";
            retVal.CommandText = string.Format(cmdStr, tableName,
                Constants.Programs.SqlColumn.ProgramName,
                Constants.Programs.SqlColumn.Description,
                Constants.Programs.SqlColumn.ContactId,
                Constants.Programs.SqlColumn.IsActive);

            retVal.Parameters.Add(new SqlParameter("ProgramName", ProgramName));
            retVal.Parameters.Add(new SqlParameter("Description", Description));
            retVal.Parameters.Add(new SqlParameter("ContactId", ContactId));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("ProgramId", ProgramId));
            return retVal;
        }
    }
}
