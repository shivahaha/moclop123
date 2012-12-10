using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Commons;
using System.Data.SqlClient;
using System.Data;

namespace SampleProject.Entity
{
    public class UserEntity : IEntity
    {
        public string UserName { get; set; }
        public string Password { get; set; }

        public int Id { get; set; }

        void IEntity.Mapping(DataRow row)
        {
            UserName = (row[Constants.User.SqlColumn.UserName] == null || row[Constants.User.SqlColumn.UserName] is DBNull) ? string.Empty : row[Constants.User.SqlColumn.UserName].ToString();
            Password = (row[Constants.User.SqlColumn.Password] == null || row[Constants.User.SqlColumn.Password] is DBNull) ? string.Empty : row[Constants.User.SqlColumn.Password].ToString();
            Id = (row[Constants.User.SqlColumn.Id] == null
                || row[Constants.User.SqlColumn.Id] is DBNull) ? 0
                : int.Parse(row[Constants.User.SqlColumn.Id].ToString());
        }

        SqlCommand IEntity.UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Update [{0}] set [{1}] = @param1, [{2}] = @param2 where [Id] = @id";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.User.SqlColumn.UserName, Constants.User.SqlColumn.Password);
            retVal.Parameters.Add(new SqlParameter("param1", UserName));
            retVal.Parameters.Add(new SqlParameter("param2", Password));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Insert into [{0}] ([{1}], [{2}]) values(@param1, @param2)";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.User.SqlColumn.UserName, Constants.User.SqlColumn.Password);
            retVal.Parameters.Add(new SqlParameter("param1", UserName));
            retVal.Parameters.Add(new SqlParameter("param2", Password));
            return retVal;
        }
    }
}