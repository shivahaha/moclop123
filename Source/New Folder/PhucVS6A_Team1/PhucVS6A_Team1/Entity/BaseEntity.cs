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
using PhucVS6A_Team1.Commons;
namespace PhucVS6A_Team1.Entity
{
    public interface IEntity
    {
        int Id { get; set; }
        void Mapping(System.Data.DataRow row);
        System.Data.SqlClient.SqlCommand UpdateCommand(string tableName);
        System.Data.SqlClient.SqlCommand InsertCommand(string tableName);
    }
  //  public class BaseEntity
    //{
    //}
}
