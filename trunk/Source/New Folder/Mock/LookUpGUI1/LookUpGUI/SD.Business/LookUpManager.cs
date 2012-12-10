using System.Data;
using SD.DataAccess;


namespace SD.Business
{
    public class LookupManager
    {
        public DataTable Search(string postCode, string town, string street)
        {
            var a = new AddressDAO();
            var dt = new DataTable();
            dt.Columns.Add("Address");
            dt.Columns.Add("PostCode");
            dt.Columns.Add("Town");
            dt.Columns.Add("County");
            dt.Columns.Add("Country");
            foreach (var adr in a.GetAddress(postCode, town, street))
            {
                dt.Rows.Add(adr.address, adr.postcode, adr.town, adr.county, adr.country);
            }
            return dt;


        }
    }
}
