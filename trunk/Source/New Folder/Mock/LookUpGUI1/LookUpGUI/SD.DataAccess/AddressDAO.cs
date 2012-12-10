using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using LookUpGUI.SD.Entities;
namespace SD.DataAccess
{
    public class AddressDAO
    {
        public List<Address> GetAddress(string postcode, string town, string street)
        {

            var cnnString = @"Data Source=TRN-LAB2-PC21\SQLEXPRESS; Initial Catalog=MockProject; User Id=sa; Password=12345678;";
            var cn = new SqlConnection(cnnString);
            var cmdtext = "Select a.AddressName as 'Address',a.PostCode,t.TownName as 'Town',c.CountyName as 'County',ct.CountryName as 'Country'"
                           + " from Country ct inner join County c on ct.CountryID = c.CountryID inner join Town t on c.CountyID = t.CountyID"
                             + " inner join Address a on t.TownID = a.TownID  "
                             + " Where PostCode LIKE '%'+ @post + '%'AND AddressName LIKE '%'+ @add + '%' AND TownName LIKE '%'+ @town + '%'";

            var para1 = new SqlParameter("@post", SqlDbType.NVarChar) { Value = postcode };
            var para2 = new SqlParameter("@town", SqlDbType.NVarChar) { Value = town };
            var para3 = new SqlParameter("@add", SqlDbType.NVarChar) { Value = street };


            var cmd = new SqlCommand(cmdtext);
            cmd.Parameters.Add(para1);
            cmd.Parameters.Add(para2);
            cmd.Parameters.Add(para3);

            cmd.Connection = cn;
            cn.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            var list = new List<Address>();
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


        }

    }
}
