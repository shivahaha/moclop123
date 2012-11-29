using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using SD.Commons;
using System.Data.SqlClient;
namespace SD.DataAccess
{
    /// <summary>
    /// Created by VuNM
    /// </summary>
    public class ContactDAO
    {
        public DataTable GetAllRecord()
        {
            /// <summary>
            /// Get all record in Contacts table
            /// </summary>
            var conn = new SqlConnection(ConnectionString.connectionString);
            var query = "SELECT * FROM Contacts ";
            var cmd = new SqlCommand(query, conn);
            var adapter = new SqlDataAdapter(cmd);
            var data = new DataTable();
            adapter.Fill(data);
            return data;
        }

        public DataTable GetAllRecordById(int ID)
        {
            /// <summary>
            /// Get all record by id in Contacts table
            /// </summary>
            var conn = new SqlConnection(ConnectionString.connectionString);
            var query = "SELECT * FROM Contacts WHERE ContactId = @pId";
            var cmd = new SqlCommand(query, conn);
            cmd.Parameters.Add("@pId", SqlDbType.Int).Value = ID;
            var adapter = new SqlDataAdapter(cmd);
            var data = new DataTable();
            adapter.Fill(data);
            return data;
        }
        public DataTable GetAllRecordByName(string firstName, string  surName) 
        {
            /// <summary>
            /// Get all record by FirstName and SurName in Contacts table
            /// </summary>
            /// 
            var conn = new SqlConnection(ConnectionString.connectionString);
            var query = "SELECT ContactId AS ID, FirstName+' '+SurName AS [Contact Name], MobilePhone AS [Mobile Phone], Email, ContactTypeId AS [Contact Type], IsActive AS [Is Active?] " +
                        " FROM Contacts" +
                        " WHERE (@p3 = '' OR @p3 IS NULL OR FirstName LIKE '%' + @p3 + '%' ) " +
                        " AND (@p4 = '' OR @p4 IS NULL OR SurName LIKE '%' + @p4 + '%' )";
            var cmd = new SqlCommand(query, conn);
            cmd.Parameters.Add("@p3",SqlDbType.NVarChar).Value = firstName;
            cmd.Parameters.Add("@p4", SqlDbType.NVarChar).Value = surName;
            var adapter = new SqlDataAdapter(cmd);
            var data = new DataTable();
            adapter.Fill(data);
            return data;
        }


        public void Update(
            int id,
            string firstName,
            string surName,
            string knownAs, 
            string officePhone,
            string mobilePhone,
            string homePhone, 
            string email,
            int managerId,
            int contactTypeId,
            int bestContactMethodId,
            string jobRole,
            string workbase,
            string jobTitlte,
            bool active)
        {

            /// <summary>
            /// Update a record in Contacts table
            /// </summary>
            /// 
            var conn = new SqlConnection(ConnectionString.connectionString);
            string query = " UPDATE Contacts "
                             + " SET FirstName = @pFirstName, SurName = @pSurname, KnowAss = @pKnownAs, Office = @pOfficePhone, MobilePhone = @pMobilePhone, HomePhone = @pHomePhone, Email = @pEmail, ManageId = @pManageId, ContactTypeId = @pContactTypeId, BestContactMethodId = @pBestContactMethodId, JobRole = @pJobRole, WorkBase = @pWorkBase, JobTitle = @pJobTitle, IsActive = @pIsActive "
                             + " WHERE ContactId = @Pid";
            var cmd = new SqlCommand(query,conn);
            cmd.Parameters.Add("@pFirstName",SqlDbType.NVarChar).Value = firstName;
            cmd.Parameters.Add("@pSurname", SqlDbType.NVarChar).Value = surName;
            cmd.Parameters.Add("@pKnownAs", SqlDbType.NVarChar).Value = knownAs;
            cmd.Parameters.Add("@pOfficePhone", SqlDbType.VarChar).Value = officePhone;
            cmd.Parameters.Add("@pMobilePhone", SqlDbType.VarChar).Value = mobilePhone;
            cmd.Parameters.Add("@pHomePhone", SqlDbType.VarChar).Value = homePhone;
            cmd.Parameters.Add("@pEmail", SqlDbType.VarChar).Value = email;
            cmd.Parameters.Add("@pManageId", SqlDbType.Int).Value = managerId;
            cmd.Parameters.Add("@pContactTypeId", SqlDbType.Int).Value = contactTypeId;
            cmd.Parameters.Add("@pBestContactMethodId", SqlDbType.Int).Value = bestContactMethodId;
            cmd.Parameters.Add("@pJobRole", SqlDbType.VarChar).Value = jobRole;
            cmd.Parameters.Add("@pWorkBase", SqlDbType.VarChar).Value = workbase;
            cmd.Parameters.Add("@pJobTitle",SqlDbType.VarChar).Value = jobTitlte;
            cmd.Parameters.Add("@pIsActive",SqlDbType.Bit).Value = active;
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                conn.Close();
            }
        }


        public void Insert(
            string firstName,
            string surName,
            string knownAs,
            string officePhone,
            string mobilePhone,
            string homePhone,
            string email,
            int managerId,
            int contactTypeId,
            int bestContactMethodId,
            string jobRole,
            string workbase,
            string jobTitlte,
            bool active)
        {

            /// <summary>
            /// Insert new record in Contacts table
            /// </summary>
            /// 
            var conn = new SqlConnection(ConnectionString.connectionString);
            string query = "INSERT INTO Contacts(FirstName, SurName, KnownAs, OfficePhone, MobilePhone, HomePhone, Email, ManageId, ContactTypeId, BestContactMethodId, JobRole, WorkBase, JobTitle, IsActive) "
                             + " VALUES (@pFirstName, @pSurname, @pKnownAs, @pOfficePhone, @pMobilePhone, @pHomePhone, @pEmail, @pManageId, @pContactTypeId, @pBestContactMethodId, @pJobRole, @pWorkBase, @pJobTitle, @pIsActive)";
            var cmd = new SqlCommand(query, conn);
            cmd.Parameters.Add("@pFirstName", SqlDbType.NVarChar).Value = firstName;
            cmd.Parameters.Add("@pSurname", SqlDbType.NVarChar).Value = surName;
            cmd.Parameters.Add("@pKnownAs", SqlDbType.NVarChar).Value = knownAs;
            cmd.Parameters.Add("@pOfficePhone", SqlDbType.VarChar).Value = officePhone;
            cmd.Parameters.Add("@pMobilePhone", SqlDbType.VarChar).Value = mobilePhone;
            cmd.Parameters.Add("@pHomePhone", SqlDbType.VarChar).Value = homePhone;
            cmd.Parameters.Add("@pEmail", SqlDbType.VarChar).Value = email;
            cmd.Parameters.Add("@pManageId", SqlDbType.Int).Value = managerId;
            cmd.Parameters.Add("@pContactTypeId", SqlDbType.Int).Value = contactTypeId;
            cmd.Parameters.Add("@pBestContactMethodId", SqlDbType.Int).Value = bestContactMethodId;
            cmd.Parameters.Add("@pJobRole", SqlDbType.VarChar).Value = jobRole;
            cmd.Parameters.Add("@pWorkBase", SqlDbType.VarChar).Value = workbase;
            cmd.Parameters.Add("@pJobTitle", SqlDbType.VarChar).Value = jobTitlte;
            cmd.Parameters.Add("@pIsActive", SqlDbType.Bit).Value = active;
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                conn.Close();
            }
        }

         
    }
}
