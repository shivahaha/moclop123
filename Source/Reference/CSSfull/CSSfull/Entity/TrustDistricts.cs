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
using CSSfull.Commons;

namespace CSSfull.Entity
{
    public class TrustDistricts : IEntity
    {
        public int Id
        {
            get { throw new NotImplementedException(); }
            set { throw new NotImplementedException(); }
        }

        public string trustDistrictName { get; set; }
        public string description { get; set; }
        public int trustRegionId { get; set; }
        public bool isActive { get; set; }
        void IEntity.Mapping(DataRow row)
        {
            trustDistrictName = (row[Constants.TrustDistricts.SqlColumn.TrustDistrictName] == null || row[Constants.TrustDistricts.SqlColumn.TrustDistrictName] is DBNull) ? string.Empty : row[Constants.TrustDistricts.SqlColumn.TrustDistrictName].ToString();
            description = (row[Constants.TrustDistricts.SqlColumn.Description] == null || row[Constants.TrustDistricts.SqlColumn.Description] is DBNull) ? string.Empty : row[Constants.TrustDistricts.SqlColumn.Description].ToString();
            trustRegionId = int.Parse((row[Constants.TrustDistricts.SqlColumn.TrustRegionId] == null || row[Constants.TrustDistricts.SqlColumn.TrustRegionId] is DBNull) ? string.Empty : row[Constants.TrustDistricts.SqlColumn.TrustRegionId].ToString());
            isActive = bool.Parse((row[Constants.TrustDistricts.SqlColumn.IsActive] == null || row[Constants.TrustDistricts.SqlColumn.IsActive] is DBNull) ? string.Empty : row[Constants.TrustDistricts.SqlColumn.IsActive].ToString());
        }

    }
}
