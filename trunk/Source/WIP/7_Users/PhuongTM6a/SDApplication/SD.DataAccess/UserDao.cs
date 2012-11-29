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
        public string passRecover= " ";
        public int FindUser(string userName, string passWord)
        {
            /// <summary>
            /// Get a record in Users table have userName and passWord = parameter
            /// </summary>
            /// 
            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
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

        public string FindUser2(string userName, string email)
        {
            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            string query = "SELECT [Password] FROM [Users] WHERE [Account] = @pUserName AND [Email] = @pEmail ";
            var cmd = new SqlCommand(query, conn);
            cmd.Parameters.Add("@pUserName", SqlDbType.NChar).Value = userName;
            cmd.Parameters.Add("@pEmail", SqlDbType.NChar).Value = email;
            try
            {
                conn.Open();
                passRecover = (string)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                conn.Close();
            }
            return passRecover;
        }

        public string UpdateUser(string User, string Pass, string Email)
        {
            int isExist = 0;
            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            string query = "SELECT COUNT(*) FROM [Users] WHERE [Account] = @pUser";
            SqlCommand sqlcmd = new SqlCommand(query, conn);
            sqlcmd.Parameters.Add("@pUser", SqlDbType.VarChar, 255).Value = User;
            //verify account
            try
            {
                conn.Open();
                isExist = (int)sqlcmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                return ex.Message;
            }

            if (isExist == 0)
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [User]" +
                    "(Account, Password, Email, Role) VALUE (@pUser, @pPass, @pEmail, 2)", conn);
                cmd.Parameters.Add("@pUser", SqlDbType.VarChar).Value = User;
                cmd.Parameters.Add("@pPass", SqlDbType.VarChar).Value = Pass;
                cmd.Parameters.Add("@pEmail", SqlDbType.VarChar).Value = Email;
                int queryResult = cmd.ExecuteNonQuery();
                return "Welcome" + User;
            }
            else
            {
                return User + "Đã tồn tại";
            }

        }



    }
}
