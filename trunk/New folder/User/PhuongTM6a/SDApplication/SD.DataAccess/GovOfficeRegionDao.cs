using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SD.Commons;
using System.Data;
using System.Data.SqlClient;
namespace SD.DataAccess
{
    public class GovOfficeRegionDao
    {
        /// <summary>
        /// Created by HungNK
        /// </summary>

        public DataTable GetAllRecord ()
        {

            /// <summary>
            /// Get All Record in GovOfficeRegions table 
            /// </summary>
             
            var conn = new SqlConnection(ConnectionString.connectionString);
            var query = "SELECT GovOfficeRegionName,Description,IsActive,CountryName FROM GovOfficeRegions INNER JOIN Countries ON GovOfficeRegions.CountryId = Countries.CountryId ";
            var cmd = new SqlCommand(query, conn);
            var adapter = new SqlDataAdapter(cmd);
            var data = new DataTable();
            adapter.Fill(data);
            return data;
        }


        public DataTable GetAllRecord(string Name)
        {
            /// <summary>
            /// Get All Record By Name GovOfficeRegions table 
            /// </summary>

            var conn = new SqlConnection(ConnectionString.connectionString);
            var query = "SELECT * FROM GovOfficeRegions WHERE GovOfficeRegionName = @pName";
            var cmd = new SqlCommand(query, conn);
            cmd.Parameters.Add("@pName", SqlDbType.VarChar).Value = Name;
            var adapter = new SqlDataAdapter(cmd);
            var programme = new DataTable();
            adapter.Fill(programme);
            return programme;
        }
    }
}
