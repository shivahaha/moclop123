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
using System.Data.SqlClient;

using PhucVS6A_Team1.Commons;

namespace PhucVS6A_Team1.Entity
{
    public class UserEntity : IEntity
    {

        public string Account { get; set; }
        public string Password { get; set; }
        public int RoleId { get; set; }
        public string Email { get; set; }
        public bool IsActive {get; set;}


        public int UserId
        {
            get;
            set;
        }
        void IEntity.Mapping(System.Data.DataRow row)
        {
            Account = (row[Constants.Users.SqlColumn.Account] == null || row[Constants.Users.SqlColumn.Account] is DBNull) ? string.Empty : row[Constants.Users.SqlColumn.Account].ToString();
            Password = (row[Constants.Users.SqlColumn.Password] == null || row[Constants.Users.SqlColumn.Password] is DBNull) ? string.Empty : row[Constants.Users.SqlColumn.Password].ToString();
            RoleId = (row[Constants.Users.SqlColumn.RoleId] == null || row[Constants.Users.SqlColumn.RoleId] is DBNull) ? string.Empty : row[Constants.Users.SqlColumn.RoleId].ToString();
            Email = (row[Constants.Users.SqlColumn.Email] == null || row[Constants.Users.SqlColumn.Email] is DBNull) ? string.Empty : row[Constants.Users.SqlColumn.Email].ToString();
            IsActive = (row[Constants.Users.SqlColumn.IsActive] == null || row[Constants.Users.SqlColumn.IsActive] is DBNull) ? string.Empty : row[Constants.Users.SqlColumn.IsActive].ToString();

        }
        SqlCommand IEntity.UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Update [{0}] set [{1}] = @Account, [{2}] = @Password,[{3}]=@RoleId,[{4}]=@Email,[{5}]=IsActive where [UserId] = @UserId";
            retVal.CommandText = string.Format(cmdStr, tableName,
                Constants.Users.SqlColumn.UserName,
                Constants.Users.SqlColumn.Password,
                Constants.Users.SqlColumn.RoleId,
                Constants.Users.SqlColumn.Email,
                Constants.Users.SqlColumn.IsActive);

            retVal.Parameters.Add(new SqlParameter("UserName", UserName));
            retVal.Parameters.Add(new SqlParameter("Password", Password));
            retVal.Parameters.Add(new SqlParameter("Password", RoleId));
            retVal.Parameters.Add(new SqlParameter("Password", Email));
            retVal.Parameters.Add(new SqlParameter("Password", IsActive));
            retVal.Parameters.Add(new SqlParameter("UserId", UserId));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Insert into [{0}] ([{1}], [{2}],[{3}],[{4}],[{5}]) values(@UserName, @UserName,@RoleId,@Email,@IsActive)";
            retVal.CommandText = string.Format(cmdStr, tableName,
               Constants.Users.SqlColumn.UserName,
               Constants.Users.SqlColumn.Password,
               Constants.Users.SqlColumn.RoleId,
               Constants.Users.SqlColumn.Email,
               Constants.Users.SqlColumn.IsActive);

            retVal.Parameters.Add(new SqlParameter("UserName", UserName));
            retVal.Parameters.Add(new SqlParameter("Password", Password));
            retVal.Parameters.Add(new SqlParameter("Password", RoleId));
            retVal.Parameters.Add(new SqlParameter("Password", Email));
            retVal.Parameters.Add(new SqlParameter("Password", IsActive));
            retVal.Parameters.Add(new SqlParameter("UserId", UserId));
            return retVal;

        }
    }
}
