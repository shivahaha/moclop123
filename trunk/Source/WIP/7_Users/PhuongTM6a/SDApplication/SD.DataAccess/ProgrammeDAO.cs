using System;
using System.Data;
using System.Data.SqlClient;
using SD.Commons;
namespace SD.DataAccess
{
    /// <summary>
    /// Create by PhuongTM
    /// </summary>
    public class ProgrammeDAO
    {
        public DataTable GetAllRecord()
        {
            /// <summary>
            /// Get all record in Programs table
            /// </summary>
            var conn = new SqlConnection(ConnectionString.connectionString);
            var query = "SELECT * FROM Programs ";
            var cmd = new SqlCommand(query, conn);
            var adapter = new SqlDataAdapter(cmd);
            var data = new DataTable();
            adapter.Fill(data);
            return data;

        }
        public DataTable GetAllRecord(int ID)
        {
            /// <summary>
            /// Get all record by id in Program table
            /// </summary>
            var conn = new SqlConnection(ConnectionString.connectionString);
            var query = "SELECT * FROM Programs WHERE ProgramId = @pid";
            var cmd = new SqlCommand(query, conn);
            cmd.Parameters.Add("@pid", SqlDbType.VarChar).Value = ID;
            var adapter = new SqlDataAdapter(cmd);
            var programme = new DataTable();
            adapter.Fill(programme);
            return programme;
        }
        public DataTable GetAllRecord(bool active)
        {
            /// <summary>
            /// Get all record by isActive in Program table
            /// </summary>
            var conn = new SqlConnection(ConnectionString.connectionString);
            var query = "SELECT * FROM Programs WHERE IsActive = @pactive";
            var cmd = new SqlCommand(query, conn);
            var pactive = new SqlParameter("pactive", SqlDbType.Bit);
            pactive.Value = active;
            cmd.Parameters.Add(pactive);
            var adapter = new SqlDataAdapter(cmd);
            var programme = new DataTable();
            adapter.Fill(programme);
            return programme;
        }
        public void Insert(string programmeName, int contactId, string description, bool active)
        {
            /// <summary>
            /// Insert new record on Programs table
            /// </summary>

            var conn = new SqlConnection(ConnectionString.connectionString);
            var query = "INSERT INTO Programs(ProgramName,ContactId,Description,IsActive) VALUES (@pName,@pContact,@pDescri,@pactive)";
            var cmd = new SqlCommand(query, conn);           
            cmd.Parameters.Add("@pName", SqlDbType.NVarChar).Value = programmeName;
            cmd.Parameters.Add("@pContact", SqlDbType.Int).Value = contactId;
            cmd.Parameters.Add("@pDescri", SqlDbType.NVarChar).Value = description;
            cmd.Parameters.Add("@pactive", SqlDbType.Bit).Value = active;
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
        public void Update(int programemeID, string programmeName, int contactId, string description)
        {
            /// <summary>
            /// Update a record in Programs table
            /// </summary>
            /// 
            var conn = new SqlConnection(ConnectionString.connectionString);
            var query = "UPDATE Programs " +
                           "SET ProgramName = @pName, ContactId = @pContact, Description = @pDescri " +
                           "WHERE ProgramId = @Pid";
            var cmd = new SqlCommand(query, conn);
            cmd.Parameters.Add("@Pid", SqlDbType.Int).Value = programemeID;
            cmd.Parameters.Add("@pName", SqlDbType.NVarChar).Value = programmeName;
            cmd.Parameters.Add("@pContact", SqlDbType.Int).Value = contactId;
            cmd.Parameters.Add("@pDescri", SqlDbType.NVarChar).Value = description;                      
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
        public DataTable GetRecordContact() 
        {
            /// <summary>
            /// Get all record in Contacts table
            /// </summary>
            
            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            string query = "SELECT * FROM Contacts";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable data = new DataTable();
            adapter.Fill(data);
            return data;
        }
    }
}
