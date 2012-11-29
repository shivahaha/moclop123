using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using SD.Commons;

namespace SD.DataAccess
{
    public class UserDAO
    {
        public int result = -1;
        public int FindUser(string userName, string passWord)
        {
            string ConnectionString =
                @"Data Source=.\SQLEXPRESS;Initial Catalog=MockProject;User ID=sa;Password=12345678";
            SqlConnection conn = new SqlConnection(ConnectionString);
            string query = "SELECT COUNT(*) FROM [Users] WHERE [Account] = @pUserName AND [Password] = @pPassWord ";
            var cmd = new SqlCommand(query, conn);
            var pUser = new SqlParameter("pUserName", SqlDbType.NChar);
            var pPass = new SqlParameter("pPassWord", SqlDbType.NChar);
            pUser.Value = userName;
            pPass.Value = passWord;
            cmd.Parameters.Add(pUser);
            cmd.Parameters.Add(pPass);
            try
            {
                conn.Open();
                result = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                conn.Close();
            }
            return result;
        }
    }
}
