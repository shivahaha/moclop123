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
using System.Data.SqlClient;

namespace SampleProject.Entity
{
    public class ContactEntity : IEntity
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string Surname { get; set; }
        public string KnownAs { get; set; }
        public string OfficePhone { get; set; }
        public string MobilePhone { get; set; }
        public string HomePhone { get; set; }
        public string Email { get; set; }
        public int ManageId { get; set; }
        public int ContactTypeId { get; set; }
        public int BestContactMethodId { get; set; }
        public string JobRole { get; set; }
        public string WorkBase { get; set; }
        public string JobTitle { get; set; }
        public bool IsActive { get; set; }

        void IEntity.Mapping(DataRow row)
        {
            Id = (row[Constants.Contact.SqlColumn.Id] == null
             || row[Constants.Contact.SqlColumn.Id] is DBNull) ? 0
             : int.Parse(row[Constants.Contact.SqlColumn.Id].ToString());
            FirstName = (row[Constants.Contact.SqlColumn.FirstName] == null || row[Constants.Contact.SqlColumn.FirstName] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.FirstName].ToString();
            Surname = (row[Constants.Contact.SqlColumn.Surname] == null || row[Constants.Contact.SqlColumn.Surname] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.Surname].ToString();
            KnownAs = (row[Constants.Contact.SqlColumn.KnownAs] == null || row[Constants.Contact.SqlColumn.KnownAs] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.KnownAs].ToString();
            OfficePhone = (row[Constants.Contact.SqlColumn.OfficePhone] == null || row[Constants.Contact.SqlColumn.OfficePhone] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.OfficePhone].ToString();
            MobilePhone = (row[Constants.Contact.SqlColumn.MobilePhone] == null || row[Constants.Contact.SqlColumn.MobilePhone] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.MobilePhone].ToString();
            HomePhone = (row[Constants.Contact.SqlColumn.HomePhone] == null || row[Constants.Contact.SqlColumn.HomePhone] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.HomePhone].ToString();
            Email = (row[Constants.Contact.SqlColumn.Email] == null || row[Constants.Contact.SqlColumn.Email] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.Email].ToString();
            ManageId = int.Parse((row[Constants.Contact.SqlColumn.ManageId] == null || row[Constants.Contact.SqlColumn.ManageId] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.ManageId].ToString());
            ContactTypeId = int.Parse((row[Constants.Contact.SqlColumn.ContactTypeId] == null || row[Constants.Contact.SqlColumn.ContactTypeId] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.ContactTypeId].ToString());
            BestContactMethodId = int.Parse((row[Constants.Contact.SqlColumn.BestContactMethodId] == null || row[Constants.Contact.SqlColumn.BestContactMethodId] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.BestContactMethodId].ToString());
            JobRole = (row[Constants.Contact.SqlColumn.FirstName] == null || row[Constants.Contact.SqlColumn.FirstName] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.FirstName].ToString();
            WorkBase = (row[Constants.Contact.SqlColumn.FirstName] == null || row[Constants.Contact.SqlColumn.FirstName] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.FirstName].ToString();
            JobTitle = (row[Constants.Contact.SqlColumn.FirstName] == null || row[Constants.Contact.SqlColumn.FirstName] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.FirstName].ToString();
            IsActive = bool.Parse((row[Constants.Contact.SqlColumn.IsActive] == null || row[Constants.Contact.SqlColumn.IsActive] is DBNull) ? string.Empty : row[Constants.Contact.SqlColumn.IsActive].ToString());
        }

        public SqlCommand UpdateCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            const string cmdStr = "UPDATE Contacts SET FirstName = @FirstName, Surname = @Surname, KnownAs = @KnownAs, OfficePhone = @OfficePhone, HomePhone = @HomePhone, Email = @Email, ManageId = @ManageId, BestContactMethodId = @BestContactMethodId, JobRole = @JobRole, WorkBase = @WorkBase, JobTitle = @JobTitle, IsActive = @IsActive where Id = @Id";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Contact.SqlColumn.FirstName, Constants.Contact.SqlColumn.Surname, Constants.Contact.SqlColumn.KnownAs, Constants.Contact.SqlColumn.OfficePhone, Constants.Contact.SqlColumn.MobilePhone, Constants.Contact.SqlColumn.HomePhone, Constants.Contact.SqlColumn.Email, Constants.Contact.SqlColumn.ManageId, Constants.Contact.SqlColumn.ContactTypeId, Constants.Contact.SqlColumn.BestContactMethodId, Constants.Contact.SqlColumn.JobRole, Constants.Contact.SqlColumn.WorkBase, Constants.Contact.SqlColumn.JobTitle, Constants.Contact.SqlColumn.IsActive);
            retVal.Parameters.Add(new SqlParameter("FirstName", FirstName));
            retVal.Parameters.Add(new SqlParameter("Surname", Surname));
            retVal.Parameters.Add(new SqlParameter("KnownAs", KnownAs));
            retVal.Parameters.Add(new SqlParameter("OfficePhone", OfficePhone));
            retVal.Parameters.Add(new SqlParameter("MobilePhone", MobilePhone));
            retVal.Parameters.Add(new SqlParameter("HomePhone", HomePhone));
            retVal.Parameters.Add(new SqlParameter("Email", Email));
            retVal.Parameters.Add(new SqlParameter("ManageId", ManageId));
            retVal.Parameters.Add(new SqlParameter("ContactTypeId", ContactTypeId));
            retVal.Parameters.Add(new SqlParameter("BestContactMethodId", BestContactMethodId));
            retVal.Parameters.Add(new SqlParameter("JobRole", JobRole));
            retVal.Parameters.Add(new SqlParameter("WorkBase", WorkBase));
            retVal.Parameters.Add(new SqlParameter("JobTitle", JobTitle));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            retVal.Parameters.Add(new SqlParameter("Id", Id));
            return retVal;
        }

        public SqlCommand InsertCommand(string tableName)
        {
            SqlCommand retVal = new SqlCommand();
            retVal.CommandType = CommandType.Text;
            const string cmdStr = "INSERT INTO Contacts VALUES(@FirstName, @Surname, @KnownAs, @OfficePhone, @MobilePhone, @HomePhone, @Email, @ManageId, @ContactTypeId, @BestContactMethodId, @JobRole, @WorkBase, @JobTitle, @IsActive)";
            retVal.CommandText = string.Format(cmdStr, tableName, Constants.Contact.SqlColumn.FirstName, Constants.Contact.SqlColumn.Surname, Constants.Contact.SqlColumn.KnownAs, Constants.Contact.SqlColumn.OfficePhone, Constants.Contact.SqlColumn.MobilePhone, Constants.Contact.SqlColumn.HomePhone, Constants.Contact.SqlColumn.Email, Constants.Contact.SqlColumn.ManageId, Constants.Contact.SqlColumn.ContactTypeId, Constants.Contact.SqlColumn.BestContactMethodId, Constants.Contact.SqlColumn.JobRole, Constants.Contact.SqlColumn.WorkBase, Constants.Contact.SqlColumn.JobTitle, Constants.Contact.SqlColumn.IsActive);
            retVal.Parameters.Add(new SqlParameter("FirstName", FirstName));
            retVal.Parameters.Add(new SqlParameter("Surname", Surname));
            retVal.Parameters.Add(new SqlParameter("KnownAs", KnownAs));
            retVal.Parameters.Add(new SqlParameter("OfficePhone", OfficePhone));
            retVal.Parameters.Add(new SqlParameter("MobilePhone", MobilePhone));
            retVal.Parameters.Add(new SqlParameter("HomePhone", HomePhone));
            retVal.Parameters.Add(new SqlParameter("Email", Email));
            retVal.Parameters.Add(new SqlParameter("ManageId", ManageId));
            retVal.Parameters.Add(new SqlParameter("ContactTypeId", ContactTypeId));
            retVal.Parameters.Add(new SqlParameter("BestContactMethodId", BestContactMethodId));
            retVal.Parameters.Add(new SqlParameter("JobRole", JobRole));
            retVal.Parameters.Add(new SqlParameter("WorkBase", WorkBase));
            retVal.Parameters.Add(new SqlParameter("JobTitle", JobTitle));
            retVal.Parameters.Add(new SqlParameter("IsActive", IsActive));
            return retVal;
        }
    }
}
