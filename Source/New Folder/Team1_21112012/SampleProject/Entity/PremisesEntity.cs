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
using SampleProject.Commons;
using SampleProject.Entity;
using System.Data.SqlClient;

namespace SampleProject.Entity
{
    public class PremisesEntity : IEntity
    {

        public int Id { get; set; }
        public string PremiseName { get; set; }
        public string LocationName { get; set; }
        public string LocationType { get; set; }
        public string LocationStatus { get; set; }
        public string PhoneNumber { get; set; }
        public DateTime LocationStatusDate { get; set; }
        public DateTime ShopFlagDate { get; set; }
        public string LocationDescription { get; set; }
        public int AddressId { get; set; }
        public string CityTown { get; set; }
        public string County { get; set; }
        public string CountryId { get; set; }
        public string KnowAs { get; set; }
        public string ProjectCode { get; set; }
        public string FaxNumber { get; set; }
        public string MinicomNumber { get; set; }
        public bool PrimaryLocation { get; set; }
        public bool LocationManaged { get; set; }
        public bool NetworkConnectivity { get; set; }
        public bool IsNewShop { get; set; }
        public bool IsActive { get; set; }
        public bool SpecialistShop { get; set; }



        public void Mapping(DataRow row)
        {
            Id = (row[Constants.Premises.SqlColumn.Id] == null
             || row[Constants.Premises.SqlColumn.Id] is DBNull) ? 0
             : int.Parse(row[Constants.Premises.SqlColumn.Id].ToString());
            PremiseName = (row[Constants.Premises.SqlColumn.PremiseName] == null || row[Constants.Premises.SqlColumn.PremiseName] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.PremiseName].ToString();
            LocationName = (row[Constants.Premises.SqlColumn.LocationName] == null || row[Constants.Premises.SqlColumn.LocationName] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.LocationName].ToString();
            LocationType = (row[Constants.Premises.SqlColumn.LocationType] == null || row[Constants.Premises.SqlColumn.LocationType] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.LocationType].ToString();
            LocationStatus = (row[Constants.Premises.SqlColumn.LocationStatus] == null || row[Constants.Premises.SqlColumn.LocationStatus] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.LocationStatus].ToString();
            PhoneNumber = (row[Constants.Premises.SqlColumn.PhoneNumber] == null || row[Constants.Premises.SqlColumn.PhoneNumber] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.PhoneNumber].ToString();
            LocationStatusDate = DateTime.Parse((row[Constants.Premises.SqlColumn.LocationStatusDate] == null || row[Constants.Premises.SqlColumn.LocationStatusDate] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.LocationStatusDate].ToString());
            ShopFlagDate = DateTime.Parse((row[Constants.Premises.SqlColumn.ShopFlagDate] == null || row[Constants.Premises.SqlColumn.ShopFlagDate] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.ShopFlagDate].ToString());
            LocationDescription = (row[Constants.Premises.SqlColumn.LocationDescription] == null || row[Constants.Premises.SqlColumn.LocationDescription] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.LocationDescription].ToString();
            AddressId = int.Parse((row[Constants.Premises.SqlColumn.AddressId] == null || row[Constants.Premises.SqlColumn.AddressId] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.AddressId].ToString());
            CityTown = (row[Constants.Premises.SqlColumn.CityTown] == null || row[Constants.Premises.SqlColumn.CityTown] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.CityTown].ToString();
            County = (row[Constants.Premises.SqlColumn.County] == null || row[Constants.Premises.SqlColumn.County] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.County].ToString();
            CountryId = (row[Constants.Premises.SqlColumn.CountryId] == null || row[Constants.Premises.SqlColumn.CountryId] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.CountryId].ToString();
            KnowAs = (row[Constants.Premises.SqlColumn.KnowAs] == null || row[Constants.Premises.SqlColumn.KnowAs] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.KnowAs].ToString();
            ProjectCode = (row[Constants.Premises.SqlColumn.ProjectCode] == null || row[Constants.Premises.SqlColumn.ProjectCode] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.ProjectCode].ToString();
            FaxNumber = (row[Constants.Premises.SqlColumn.FaxNumber] == null || row[Constants.Premises.SqlColumn.FaxNumber] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.FaxNumber].ToString();
            MinicomNumber = (row[Constants.Premises.SqlColumn.MinicomNumber] == null || row[Constants.Premises.SqlColumn.MinicomNumber] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.MinicomNumber].ToString();
            PrimaryLocation = bool.Parse((row[Constants.Premises.SqlColumn.PrimaryLocation] == null || row[Constants.Premises.SqlColumn.PrimaryLocation] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.PrimaryLocation].ToString());
            LocationManaged = bool.Parse((row[Constants.Premises.SqlColumn.LocationManaged] == null || row[Constants.Premises.SqlColumn.LocationManaged] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.LocationManaged].ToString());
            NetworkConnectivity = bool.Parse((row[Constants.Premises.SqlColumn.NetworkConnectivity] == null || row[Constants.Premises.SqlColumn.NetworkConnectivity] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.NetworkConnectivity].ToString());
            IsNewShop = bool.Parse((row[Constants.Premises.SqlColumn.IsNewShop] == null || row[Constants.Premises.SqlColumn.IsNewShop] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.IsNewShop].ToString());
            IsActive = bool.Parse((row[Constants.Premises.SqlColumn.IsActive] == null || row[Constants.Premises.SqlColumn.IsActive] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.IsActive].ToString());
            SpecialistShop = bool.Parse((row[Constants.Premises.SqlColumn.SpecialistShop] == null || row[Constants.Premises.SqlColumn.SpecialistShop] is DBNull) ? string.Empty : row[Constants.Premises.SqlColumn.SpecialistShop].ToString());
        }
        SqlCommand IEntity.UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Update [{0}] set [{1}] = @PremiseName, [{2}] = @LocationName,[{3}] = @LocationType,[{4}] = @LocationStatus,[{5}] = @PhoneNumber,[{6}] = @LocationStatusDate,[{7}] = @ShopFlagDate, " +
                            " [{8}] = @LocationDescription,[{9}] = @AddressId,[{10}] = @CityTown,[{11}] = @Country,[{12}] = @CountryId,[{13}] = @KnowAs,[{14}] = @ProjectCode,[{15}] = @FaxNumber,[{16}] = @MinicomNumber," +
                            " [{17}] = @PrimaryLocation,[{18}] = @LocationManaged,[{19}] = @NetworkConnectivity,[{20}] = @IsNewShop,[{21}] = @IsActive,[{22}] = @SpecialistShop where [PremiseId] = @id";
            retVal.CommandText = string.Format(cmdStr, tableName,
                                               Constants.Premises.SqlColumn.PremiseName,
                                               Constants.Premises.SqlColumn.LocationName,
                                               Constants.Premises.SqlColumn.LocationType,
                                               Constants.Premises.SqlColumn.LocationStatus,
                                               Constants.Premises.SqlColumn.PhoneNumber,
                                               Constants.Premises.SqlColumn.LocationStatusDate,
                                               Constants.Premises.SqlColumn.ShopFlagDate,
                                               Constants.Premises.SqlColumn.LocationDescription,
                                               Constants.Premises.SqlColumn.AddressId,
                                               Constants.Premises.SqlColumn.CityTown,
                                               Constants.Premises.SqlColumn.County,
                                               Constants.Premises.SqlColumn.CountryId,
                                               Constants.Premises.SqlColumn.KnowAs,
                                               Constants.Premises.SqlColumn.ProjectCode,
                                               Constants.Premises.SqlColumn.FaxNumber,
                                               Constants.Premises.SqlColumn.MinicomNumber,
                                               Constants.Premises.SqlColumn.PrimaryLocation,
                                               Constants.Premises.SqlColumn.LocationManaged,
                                               Constants.Premises.SqlColumn.NetworkConnectivity,
                                               Constants.Premises.SqlColumn.IsNewShop,
                                               Constants.Premises.SqlColumn.IsActive,
                                               Constants.Premises.SqlColumn.SpecialistShop);
            retVal.Parameters.Add(new SqlParameter("PremiseName", PremiseName));
            retVal.Parameters.Add(new SqlParameter("LocationName", LocationName));
            retVal.Parameters.Add(new SqlParameter("LocationType", LocationType));
            retVal.Parameters.Add(new SqlParameter("LocationStatus", LocationStatus));
            retVal.Parameters.Add(new SqlParameter("PhoneNumber", PhoneNumber));
            retVal.Parameters.Add(new SqlParameter("LocationStatusDate", LocationStatusDate));
            retVal.Parameters.Add(new SqlParameter("ShopFlagDate", ShopFlagDate));
            retVal.Parameters.Add(new SqlParameter("LocationDescription", LocationDescription));
            retVal.Parameters.Add(new SqlParameter("AddressId", AddressId));
            retVal.Parameters.Add(new SqlParameter("CityTown", CityTown));
            retVal.Parameters.Add(new SqlParameter("Country", County));
            retVal.Parameters.Add(new SqlParameter("CountryId", CountryId));
            retVal.Parameters.Add(new SqlParameter("KnowAs", KnowAs));
            retVal.Parameters.Add(new SqlParameter("ProjectCode", ProjectCode));
            retVal.Parameters.Add(new SqlParameter("FaxNumber", FaxNumber));
            retVal.Parameters.Add(new SqlParameter("MinicomNumber", MinicomNumber));
            retVal.Parameters.Add(new SqlParameter("PrimaryLocation", PrimaryLocation));
            retVal.Parameters.Add(new SqlParameter("LocationManaged", LocationManaged));
            retVal.Parameters.Add(new SqlParameter("NetworkConnectivity", NetworkConnectivity));
            retVal.Parameters.Add(new SqlParameter("IsNewShop", IsNewShop));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("SpecialistShop", SpecialistShop));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = "Insert into [{0}] ([{1}], [{2}]),[{3}], [{4}]), [{5}]), [{6}]), [{7}]), [{8}]), [{9}]), [{10}]), [{11}]), [{12}]), [{13}]), [{14}]), [{15}]), [{16}]), [{17}]), [{18}]), [{19}]), [{20}]), [{21}]), [{22}])) " +
                            " values(@PremiseName, @LocationName,@LocationType,@LocationStatus,@PhoneNumber,@LocationStatusDate,@ShopFlagDate,@LocationDescription,@AddressId,@CityTown,@Country,@CountryId,@KnowAs,@ProjectCode" +
                            "@FaxNumber,@MinicomNumber,@PrimaryLocation,@LocationManaged,@NetworkConnectivity,@IsNewShop,@IsActive,@SpecialistShop)";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Premises.SqlColumn.PremiseName,
                                               Constants.Premises.SqlColumn.LocationName,
                                               Constants.Premises.SqlColumn.LocationType,
                                               Constants.Premises.SqlColumn.LocationStatus,
                                               Constants.Premises.SqlColumn.PhoneNumber,
                                               Constants.Premises.SqlColumn.LocationStatusDate,
                                               Constants.Premises.SqlColumn.ShopFlagDate,
                                               Constants.Premises.SqlColumn.LocationDescription,
                                               Constants.Premises.SqlColumn.AddressId,
                                               Constants.Premises.SqlColumn.CityTown,
                                               Constants.Premises.SqlColumn.County,
                                               Constants.Premises.SqlColumn.CountryId,
                                               Constants.Premises.SqlColumn.KnowAs,
                                               Constants.Premises.SqlColumn.ProjectCode,
                                               Constants.Premises.SqlColumn.FaxNumber,
                                               Constants.Premises.SqlColumn.MinicomNumber,
                                               Constants.Premises.SqlColumn.PrimaryLocation,
                                               Constants.Premises.SqlColumn.LocationManaged,
                                               Constants.Premises.SqlColumn.NetworkConnectivity,
                                               Constants.Premises.SqlColumn.IsNewShop,
                                               Constants.Premises.SqlColumn.IsActive,
                                               Constants.Premises.SqlColumn.SpecialistShop);
            retVal.Parameters.Add(new SqlParameter("PremiseName", PremiseName));
            retVal.Parameters.Add(new SqlParameter("LocationName", LocationName));
            retVal.Parameters.Add(new SqlParameter("LocationType", LocationType));
            retVal.Parameters.Add(new SqlParameter("LocationStatus", LocationStatus));
            retVal.Parameters.Add(new SqlParameter("PhoneNumber", PhoneNumber));
            retVal.Parameters.Add(new SqlParameter("LocationStatusDate", LocationStatusDate));
            retVal.Parameters.Add(new SqlParameter("ShopFlagDate", ShopFlagDate));
            retVal.Parameters.Add(new SqlParameter("LocationDescription", LocationDescription));
            retVal.Parameters.Add(new SqlParameter("AddressId", AddressId));
            retVal.Parameters.Add(new SqlParameter("CityTown", CityTown));
            retVal.Parameters.Add(new SqlParameter("Country", County));
            retVal.Parameters.Add(new SqlParameter("CountryId", CountryId));
            retVal.Parameters.Add(new SqlParameter("KnowAs", KnowAs));
            retVal.Parameters.Add(new SqlParameter("ProjectCode", ProjectCode));
            retVal.Parameters.Add(new SqlParameter("FaxNumber", FaxNumber));
            retVal.Parameters.Add(new SqlParameter("MinicomNumber", MinicomNumber));
            retVal.Parameters.Add(new SqlParameter("PrimaryLocation", PrimaryLocation));
            retVal.Parameters.Add(new SqlParameter("LocationManaged", LocationManaged));
            retVal.Parameters.Add(new SqlParameter("NetworkConnectivity", NetworkConnectivity));
            retVal.Parameters.Add(new SqlParameter("IsNewShop", IsNewShop));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("SpecialistShop", SpecialistShop));
            retVal.Parameters.Add(new SqlParameter("id", Id));
            return retVal;
        }
    }
}
