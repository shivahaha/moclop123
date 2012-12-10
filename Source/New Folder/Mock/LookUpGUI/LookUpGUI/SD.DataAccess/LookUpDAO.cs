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
        //private static BussinessLookUp ExtractRawData(IDataRecord dataReader)
        //{
        //    return new BussinessLookUp
        //               {
        //                   Bussiness = dataReader["BussinessName"].ToString(),
        //                   SICCode = dataReader["SIC Code"].ToString(),
                           
        //               };
        //}

        public DataTable GetAllRecord(string postcode, string street,string town)
        {


            string connect = AppConfig.connectionString;
            SqlConnection conn = new SqlConnection(connect);
            string Query = "Select * From Add Where PostCode LIKE '%'+ postcode + '%'";
            SqlCommand cmd = new SqlCommand(Query, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable result = new DataTable();
            adapter.Fill(result);
            return result;
            try
            {
                conn.Open();
            }
            catch (Exception e)
            { }
            finally {
                conn.Close();
            }
        }
    }
}
