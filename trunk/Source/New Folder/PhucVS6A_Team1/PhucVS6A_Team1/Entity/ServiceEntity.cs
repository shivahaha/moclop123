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
using System.Data.SqlClient;
using PhucVS6A_Team1.Commons;

namespace PhucVS6A_Team1.Entity
{
    public class ServiceEntity  :IEntity
    {
        public int ServiceId { get; set; }
        public string ServiceName { get; set; }
        public string ShortDescription { get; set; }
        public string SubType { get; set; }
        public int ContactId { get; set; }
        public string ClientDescription { get; set; }
        public string Attendance { get; set; }
        public DateTime StartExpected { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public int ExtendableYears { get; set; }
        public int ExtendableMonths { get; set; }
        public string ContractValue { get; set; }
        public string FullDescription { get; set; }
        public string DeptCode { get; set; }
        public string ServiceType { get; set; }
        public string DescriptionDelivery { get; set; }
        public string ContractCode { get; set; }
        public bool ContractStagedPayment { get; set; }
        public string ReferrealProcess { get; set; }
        public int LimitedYears { get; set; }
        public int LimitedMonths { get; set; }
        public bool IsActive { get; set; }
    
        void IEntity.Mapping(System.Data.DataRow row)
        {
            ServiceName = (row[Constants.Services.SqlColumn.ServiceName] == null || row[Constants.Services.SqlColumn.ServiceName] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.ServiceName].ToString();
            ShortDescription = (row[Constants.Services.SqlColumn.ShortDescription] == null || row[Constants.Services.SqlColumn.ShortDescription] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.ShortDescription].ToString();
            SubType = (row[Constants.Services.SqlColumn.SubType] == null || row[Constants.Services.SqlColumn.SubType] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.SubType].ToString();
            ContactId = (row[Constants.Services.SqlColumn.ContactId] == null || row[Constants.Services.SqlColumn.ContactId] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.ContactId].ToString();
            ClientDescription = (row[Constants.Services.SqlColumn.ClientDescription] == null || row[Constants.Services.SqlColumn.ClientDescription] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.ClientDescription].ToString();
            Attendance = (row[Constants.Services.SqlColumn.Attendance] == null || row[Constants.Services.SqlColumn.Attendance] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.Attendance].ToString();
            StartExpected = (row[Constants.Services.SqlColumn.StartExpected] == null || row[Constants.Services.SqlColumn.StartExpected] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.StartExpected].ToString();
            StartDate = (row[Constants.Services.SqlColumn.StartDate] == null || row[Constants.Services.SqlColumn.StartDate] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.StartDate].ToString();
            EndDate = (row[Constants.Services.SqlColumn.EndDate] == null || row[Constants.Services.SqlColumn.EndDate] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.EndDate].ToString();
            ExtendableYears = (row[Constants.Services.SqlColumn.ExtendableYears] == null || row[Constants.Services.SqlColumn.ExtendableYears] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.ExtendableYears].ToString();
            ExtendableMonths = (row[Constants.Services.SqlColumn.ExtendableMonths] == null || row[Constants.Services.SqlColumn.ExtendableMonths] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.ExtendableMonths].ToString();
            ContractValue = (row[Constants.Services.SqlColumn.ContractValue] == null || row[Constants.Services.SqlColumn.ContractValue] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.ContractValue].ToString();
            FullDescription = (row[Constants.Services.SqlColumn.FullDescription] == null || row[Constants.Services.SqlColumn.FullDescription] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.FullDescription].ToString();
            DeptCode = (row[Constants.Services.SqlColumn.DeptCode] == null || row[Constants.Services.SqlColumn.DeptCode] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.DeptCode].ToString();
            ServiceType = (row[Constants.Services.SqlColumn.ServiceType] == null || row[Constants.Services.SqlColumn.ServiceType] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.ServiceType].ToString();
            DescriptionDelivery = (row[Constants.Services.SqlColumn.DescriptionDelivery] == null || row[Constants.Services.SqlColumn.DescriptionDelivery] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.DescriptionDelivery].ToString();
            ContractCode = (row[Constants.Services.SqlColumn.ContractCode] == null || row[Constants.Services.SqlColumn.ContractCode] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.ContractCode].ToString();
            ContractStagedPayment = (row[Constants.Services.SqlColumn.ContractStagedPayment] == null || row[Constants.Services.SqlColumn.ContractStagedPayment] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.ContractStagedPayment].ToString();
            ReferrealProcess = (row[Constants.Services.SqlColumn.ReferrealProcess] == null || row[Constants.Services.SqlColumn.ReferrealProcess] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.ReferrealProcess].ToString();
            LimitedYears = (row[Constants.Services.SqlColumn.LimitedYears] == null || row[Constants.Services.SqlColumn.LimitedYears] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.LimitedYears].ToString();
            LimitedMonths = (row[Constants.Services.SqlColumn.LimitedMonths] == null || row[Constants.Services.SqlColumn.LimitedMonths] is DBNull) ? string.Empty : row[Constants.Services.SqlColumn.LimitedMonths].ToString();
            IsActive = (row[Constants.Servicess.SqlColumn.IsActive] == null || row[Constants.Servicess.SqlColumn.IsActive] is DBNull) ? string.Empty : row[Constants.Servicess.SqlColumn.IsActive].ToString();
        }
        SqlCommand IEntity.UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = @"Update [{0}] set [{1}] = @ServiceName, 
                [{2}] = @ShortDescription 
                [{3}] = @SubType 
                [{4}] = @ContactId 
                [{5}] = @ClientDescription 
                [{6}] = @Attendance 
                [{7}] = @StartExpected 
                [{8}] = @StartDate 
                [{9}] = @EndDate 
                [{10}] = @ExtendableYears 
                [{11}] = @ExtendableMonths 
                [{12}] = @ContractValue 
                [{13}] = @FullDescription 
                [{14}] = @DeptCode 
                [{15}] = @ServiceType 
                [{16}] = @DescriptionDelivery 
                [{17}] = @ContractCode 
                [{18}] = @ContractStagedPayment 
                [{19}] = @ReferrealProcess 
                [{20}] = @LimitedYears 
                [{21}] = @LimitedMonths 
                [{22}] = @IsActive 
                where [ServiceId] = @ServiceId";


            retVal.CommandText = string.Format(cmdStr, tableName,
                Constants.Services.SqlColumn.ServiceName,
                Constants.Services.SqlColumn.ShortDescription,
                Constants.Services.SqlColumn.SubType,
                Constants.Services.SqlColumn.ContactId,
                Constants.Services.SqlColumn.ClientDescription,
                Constants.Services.SqlColumn.Attendance,
                Constants.Services.SqlColumn.StartExpected,
                Constants.Services.SqlColumn.StartDate,
                Constants.Services.SqlColumn.EndDate,
                Constants.Services.SqlColumn.ExtendableYears,
                Constants.Services.SqlColumn.ExtendableMonths,
                Constants.Services.SqlColumn.ContractValue,
                Constants.Services.SqlColumn.FullDescription,
                Constants.Services.SqlColumn.DeptCode,
                Constants.Services.SqlColumn.ServiceType,
                Constants.Services.SqlColumn.DescriptionDelivery,
                Constants.Services.SqlColumn.ContractCode,
                Constants.Services.SqlColumn.ContractStagedPayment,
                Constants.Services.SqlColumn.ReferrealProcess,
                Constants.Services.SqlColumn.LimitedYears,
                Constants.Services.SqlColumn.LimitedMonths,
                Constants.Services.SqlColumn.IsActive);

            retVal.Parameters.Add(new SqlParameter("ServiceName", ServiceName));
            retVal.Parameters.Add(new SqlParameter("ShortDescription", ShortDescription));
            retVal.Parameters.Add(new SqlParameter("SubType", SubType));
            retVal.Parameters.Add(new SqlParameter("ContactId", ContactId));
            retVal.Parameters.Add(new SqlParameter("ClientDescription", ClientDescription));
            retVal.Parameters.Add(new SqlParameter("Attendance", Attendance));
            retVal.Parameters.Add(new SqlParameter("StartExpected", StartExpected));
            retVal.Parameters.Add(new SqlParameter("StartDate", StartDate));
            retVal.Parameters.Add(new SqlParameter("EndDate", EndDate));
            retVal.Parameters.Add(new SqlParameter("ExtendableYears", ExtendableYears));
            retVal.Parameters.Add(new SqlParameter("ExtendableMonths", ExtendableMonths));
            retVal.Parameters.Add(new SqlParameter("ContractValue", ContractValue));
            retVal.Parameters.Add(new SqlParameter("FullDescription", FullDescription));
            retVal.Parameters.Add(new SqlParameter("DeptCode", DeptCode));
            retVal.Parameters.Add(new SqlParameter("ServiceType", ServiceType));
            retVal.Parameters.Add(new SqlParameter("DescriptionDelivery", DescriptionDelivery));
            retVal.Parameters.Add(new SqlParameter("ContractCode", ContractCode));
            retVal.Parameters.Add(new SqlParameter("ContractStagedPayment", ContractStagedPayment));
            retVal.Parameters.Add(new SqlParameter("ReferrealProcess", ReferrealProcess));
            retVal.Parameters.Add(new SqlParameter("LimitedYears", LimitedYears));
            retVal.Parameters.Add(new SqlParameter("LimitedMonths", LimitedMonths));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("ServiceId", ServiceId));
            return retVal;
        }

        SqlCommand IEntity.InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            string cmdStr = @"Insert into [{0}] ([{1}], [{2}],[{3}],[{4}][{5}],[{6}],[{7}],[{8}],[{9}],[{10}],[{11}],[{12}],[{13}],[{14}],[{15}],[16}],[{17}],[{18}],[{19}],[{20}],[{21}],[{22}]) values
                (@ServiceName,
                 @ShortDescription, 
                 @SubType, 
                 @ContactId, 
                 @ClientDescription, 
                 @Attendance, 
                 @StartExpected, 
                 @StartDate, 
                 @EndDate, 
                 @ExtendableYears, 
                 @ExtendableMonths, 
                 @ContractValue, 
                 @FullDescription, 
                 @DeptCode, 
                 @ServiceType, 
                 @DescriptionDelivery, 
                 @ContractCode, 
                 @ContractStagedPayment, 
                 @ReferrealProcess, 
                 @LimitedYears, 
                 @LimitedMonths, 
                 @IsActive)";

            retVal.CommandText = string.Format(cmdStr, tableName,
                Constants.Services.SqlColumn.ServiceName,
                Constants.Services.SqlColumn.ShortDescription,
                Constants.Services.SqlColumn.SubType,
                Constants.Services.SqlColumn.ContactId,
                Constants.Services.SqlColumn.ClientDescription,
                Constants.Services.SqlColumn.Attendance,
                Constants.Services.SqlColumn.StartExpected,
                Constants.Services.SqlColumn.StartDate,
                Constants.Services.SqlColumn.EndDate,
                Constants.Services.SqlColumn.ExtendableYears,
                Constants.Services.SqlColumn.ExtendableMonths,
                Constants.Services.SqlColumn.ContractValue,
                Constants.Services.SqlColumn.FullDescription,
                Constants.Services.SqlColumn.DeptCode,
                Constants.Services.SqlColumn.ServiceType,
                Constants.Services.SqlColumn.DescriptionDelivery,
                Constants.Services.SqlColumn.ContractCode,
                Constants.Services.SqlColumn.ContractStagedPayment,
                Constants.Services.SqlColumn.ReferrealProcess,
                Constants.Services.SqlColumn.LimitedYears,
                Constants.Services.SqlColumn.LimitedMonths,
                Constants.Services.SqlColumn.IsActive);

            retVal.Parameters.Add(new SqlParameter("ServiceName", ServiceName));
            retVal.Parameters.Add(new SqlParameter("ShortDescription", ShortDescription));
            retVal.Parameters.Add(new SqlParameter("SubType", SubType));
            retVal.Parameters.Add(new SqlParameter("ContactId", ContactId));
            retVal.Parameters.Add(new SqlParameter("ClientDescription", ClientDescription));
            retVal.Parameters.Add(new SqlParameter("Attendance", Attendance));
            retVal.Parameters.Add(new SqlParameter("StartExpected", StartExpected));
            retVal.Parameters.Add(new SqlParameter("StartDate", StartDate));
            retVal.Parameters.Add(new SqlParameter("EndDate", EndDate));
            retVal.Parameters.Add(new SqlParameter("ExtendableYears", ExtendableYears));
            retVal.Parameters.Add(new SqlParameter("ExtendableMonths", ExtendableMonths));
            retVal.Parameters.Add(new SqlParameter("ContractValue", ContractValue));
            retVal.Parameters.Add(new SqlParameter("FullDescription", FullDescription));
            retVal.Parameters.Add(new SqlParameter("DeptCode", DeptCode));
            retVal.Parameters.Add(new SqlParameter("ServiceType", ServiceType));
            retVal.Parameters.Add(new SqlParameter("DescriptionDelivery", DescriptionDelivery));
            retVal.Parameters.Add(new SqlParameter("ContractCode", ContractCode));
            retVal.Parameters.Add(new SqlParameter("ContractStagedPayment", ContractStagedPayment));
            retVal.Parameters.Add(new SqlParameter("ReferrealProcess", ReferrealProcess));
            retVal.Parameters.Add(new SqlParameter("LimitedYears", LimitedYears));
            retVal.Parameters.Add(new SqlParameter("LimitedMonths", LimitedMonths));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("ServiceId", ServiceId));
            return retVal;
        }
    }
}
