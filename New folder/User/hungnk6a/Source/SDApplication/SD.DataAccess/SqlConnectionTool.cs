using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace SD.DataAccess
{
    public sealed class SqlConnectionTool
    {
        private static readonly string SqlConnectionString = ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString;

        public static SqlConnection SqlGetConnection()
        {
            return new SqlConnection(SqlConnectionString);
        }
        public static SqlConnection SqlGetConnection(string connection)
        {
            return new SqlConnection(connection);
        }
        public static string SqlGetConnectionString()
        {
            return SqlConnectionString;
        }
        private SqlConnectionTool() { }
    }
}
