using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using SD.Commons;
namespace SD.DataAccess
{
    public class LookUpDAO
    {
        public DataTable GetAllRecord(string postcode, string street, string town)
        {
            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            string Query = "Select a.AddressLine as 'Address',a.PostCode,t.TownName as 'Town',c.CountyName as 'County',ct.CountryName as 'Country'"
                           + " from Countries ct inner join Counties c on ct.CountryID = c.CountryID inner join Towns t on c.CountyID = t.CountyID"
                             + " inner join Addresses a on t.TownID = a.TownID  "
                             + " Where PostCode LIKE '%'+ @pPostcode + '%'AND AddressLine LIKE '%'+ @pStreet + '%' AND TownName LIKE '%'+ @pTown + '%'";

            SqlCommand cmd = new SqlCommand(Query, conn);
            SqlParameter pPost = new SqlParameter("pPostcode", SqlDbType.NVarChar);
            SqlParameter pStreet = new SqlParameter("pStreet", SqlDbType.NVarChar);
            SqlParameter pTown = new SqlParameter("pTown", SqlDbType.NVarChar);
            pPost.Value = postcode;
            pStreet.Value = street;
            pTown.Value = town;
            cmd.Parameters.Add(pPost);
            cmd.Parameters.Add(pStreet);
            cmd.Parameters.Add(pTown);

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable result = new DataTable();
            adapter.Fill(result);
            return result;
        }
        public DataTable GetRecord(string bussiness, string sicCode)
        {
            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            string Query = "Select * From Buss Where BussinessName LIKE '%'+ @pbussines + '%'AND SICCode LIKE '%'+ @psicCode + '%'";

            SqlCommand cmd = new SqlCommand(Query, conn);
            SqlParameter pbussines = new SqlParameter("pbussines", SqlDbType.NVarChar);
            SqlParameter psicCode = new SqlParameter("psicCode", SqlDbType.NVarChar);
            pbussines.Value = bussiness;
            psicCode.Value = sicCode;
            cmd.Parameters.Add(pbussines);
            cmd.Parameters.Add(psicCode);
            SqlDataAdapter adapter1 = new SqlDataAdapter(cmd);
            DataTable result1 = new DataTable();
            adapter1.Fill(result1);
            return result1;

        }
    }
}
