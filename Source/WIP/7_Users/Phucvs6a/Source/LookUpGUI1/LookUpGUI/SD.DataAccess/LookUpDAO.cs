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
using SD.Commons;
using System.Data.SqlClient;

namespace LookUpGUI.SD.DataAccess
{
    public class LookUpDAO
    {
        public DataTable GetAllRecord()
        {

            string connect = @"Data Source=TRN-LAB2-PC21\SQLEXPRESS; Initial Catalog=MockProject; User Id=sa; Password=12345678;";
            //string connect = AppConfig.connectionString;
            SqlConnection conn = new SqlConnection(connect);
            string Query = "Select * From Addre"; 
            var cmd = new SqlCommand(Query,conn);                     
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable result = new DataTable();
            adapter.Fill(result);
            return result;
        }       

        public DataTable GetAllRecord(string postcode,string street,string town)
        {

            string connect = @"Data Source=TRN-LAB2-PC21\SQLEXPRESS; Initial Catalog=MockProject; User Id=sa; Password=12345678;";
            //string connect = AppConfig.connectionString;
            SqlConnection conn = new SqlConnection(connect);
            string Query = "Select a.AddressName as 'Address',a.PostCode,t.TownName as 'Town',c.CountyName as 'County',ct.CountryName as 'Country'"
                           + " from Country ct inner join County c on ct.CountryID = c.CountryID inner join Town t on c.CountyID = t.CountyID"
                             +" inner join Address a on t.TownID = a.TownID  "
                             +" Where PostCode LIKE '%'+ @pPostcode + '%'AND AddressName LIKE '%'+ @pStreet + '%' AND TownName LIKE '%'+ @pTown + '%'";
    
            SqlCommand cmd = new SqlCommand(Query, conn);
            SqlParameter pPost = new SqlParameter("pPostcode", SqlDbType.NVarChar);
            SqlParameter pStreet = new SqlParameter("pStreet", SqlDbType.NVarChar);
            SqlParameter pTown = new SqlParameter("pTown",SqlDbType.NVarChar);
            pPost.Value = postcode;
            pStreet.Value = street;
            pTown.Value = town;
            cmd.Parameters.Add(pPost);
            cmd.Parameters.Add(pStreet);
            cmd.Parameters.Add(pTown);

            cmd.Connection = cn;
            cn.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            var data = new DataTable<GetAllRecord>();
            while (sdr.Read())
            {
                list.Add(new Address
                {
                    address = sdr[0].ToString(),
                    postcode = sdr[1].ToString(),
                    town = sdr[2].ToString(),
                    county = sdr[3].ToString(),
                    country = sdr[4].ToString()
                });

            }
            cmd.Dispose();
            cn.Close();
            cn.Dispose();
            return list;

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable result = new DataTable();
            adapter.Fill(result);
            return result;       

        }
        public DataTable GetRecord(string bussiness,string sicCode) 
        {
            string connect = @"Data Source=TRN-LAB2-PC21\SQLEXPRESS; Initial Catalog=MockProject; User Id=sa; Password=12345678;";
            //string connect = AppConfig.connectionString;
            SqlConnection conn = new SqlConnection(connect);
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
