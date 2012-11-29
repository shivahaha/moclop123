using System;
using System.Data;
using System.Data.SqlClient;

namespace SD.DataAccess
{
    /// <summary>
    /// Create by PhuongTM
    /// </summary>
    public class ProgrammeDAO
    {
        public DataTable GetAllRecord()
        {
            const string connectionString = "Data Source=TRANMINHPHUONG;Initial Catalog=MockProject;Integrated Security=True";
            var conn = new SqlConnection(connectionString);
            var query = "SELECT * FROM Programmes ";
            var cmd = new SqlCommand(query, conn);
            var adapter = new SqlDataAdapter(cmd);
            var data = new DataTable();
            adapter.Fill(data);
            return data;

        }
        public DataTable GetAllRecord(string Programmename)
        {
            const string connectionString = "Data Source=TRANMINHPHUONG;Initial Catalog=MockProject;Integrated Security=True";
            var conn = new SqlConnection(connectionString);
            var query = "SELECT * FROM Programmes "
                          + " WHERE @pName = '' OR @pName IS NULL OR ProgrammeName LIKE '%' + @pName + '%'";
            var cmd = new SqlCommand(query, conn);
            var pName = new SqlParameter("pName", SqlDbType.NVarChar);
            pName.Value = Programmename;
            cmd.Parameters.Add(pName);
            var adapter = new SqlDataAdapter(cmd);
            var data = new DataTable();
            adapter.Fill(data);
            return data;

        }
        public DataTable GetAllRecord(int ID)
        {
            const string connectionString = "Data Source=TRANMINHPHUONG;Initial Catalog=MockProject;Integrated Security=True";
            var conn = new SqlConnection(connectionString);
            var query = "SELECT * FROM Programmes WHERE ProgrammeID = @pid";
            var cmd = new SqlCommand(query, conn);
            var pid = new SqlParameter("pid", SqlDbType.VarChar);
            pid.Value = ID;
            cmd.Parameters.Add(pid);
            var adapter = new SqlDataAdapter(cmd);
            var programme = new DataTable();
            adapter.Fill(programme);
            return programme;
        }

        public DataTable GetAllRecord(bool active)
        {
            const string connectionString = "Data Source=TRANMINHPHUONG;Initial Catalog=MockProject;Integrated Security=True";
            var conn = new SqlConnection(connectionString);
            var query = "SELECT * FROM Programmes WHERE Active = @pactive";
            var cmd = new SqlCommand(query, conn);
            var pactive = new SqlParameter("pactive", SqlDbType.Bit);
            pactive.Value = active;
            cmd.Parameters.Add(pactive);
            var adapter = new SqlDataAdapter(cmd);
            var programme = new DataTable();
            adapter.Fill(programme);
            return programme;
        }

        public void Insert(string programmeName, int contactID, string description, bool active)
        {
            const string connectionString = "Data Source=TRANMINHPHUONG;Initial Catalog=MockProject;Integrated Security=True";
            var conn = new SqlConnection(connectionString);
            var query = "INSERT INTO Programmes(ProgrammeName,ContactID,Descriptions,Active) VALUES (@pName,@pContact,@pDescri,@pactive)";
            var cmd = new SqlCommand(query, conn);
            var pName = new SqlParameter("pName", SqlDbType.NVarChar);
            var pContact = new SqlParameter("pContact", SqlDbType.Int);
            var pDescri = new SqlParameter("pDescri", SqlDbType.NVarChar);
            var pActive = new SqlParameter("pactive", SqlDbType.Bit);

            pName.Value = programmeName;
            pContact.Value = contactID;
            pDescri.Value = description;
            pActive.Value = active;
            //-----------------------------------------//
            cmd.Parameters.Add(pName);
            cmd.Parameters.Add(pContact);
            cmd.Parameters.Add(pDescri);
            cmd.Parameters.Add(pActive);

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

        public void Update(int programemeID, string programmeName, int contactID, string description)
        {
            const string connectionString = "Data Source=TRANMINHPHUONG;Initial Catalog=MockProject;Integrated Security=True";
            var conn = new SqlConnection(connectionString);
            var query = "UPDATE Programmes " +
                           "SET ProgrammeName = @pName, ContactID = @pContact, Descriptions = @pDescri " +
                           "WHERE ProgrammeID = @Pid";
            var cmd = new SqlCommand(query, conn);
            var pid = new SqlParameter("pid", SqlDbType.Int);
            var pName = new SqlParameter("pName", SqlDbType.NVarChar);
            var pContact = new SqlParameter("pContact", SqlDbType.Int);
            var pDescri = new SqlParameter("pDescri", SqlDbType.NVarChar);

            pid.Value = programemeID;
            pName.Value = programmeName;
            pContact.Value = contactID;
            pDescri.Value = description;
            //-----------------------------------------//
            cmd.Parameters.Add(pid);
            cmd.Parameters.Add(pName);
            cmd.Parameters.Add(pContact);
            cmd.Parameters.Add(pDescri);
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
