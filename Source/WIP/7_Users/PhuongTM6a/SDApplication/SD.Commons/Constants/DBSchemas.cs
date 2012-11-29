using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SD.Commons.Constants
{
    public class DBSchemas
    {
        #region Goverment Office Region
        public const string SqlGetAllGovOfficeRegion =
            @"SELECT GovOfficeRegionId,GovOfficeRegionName,Description,GovOfficeRegion.CountyId,CountyName,IsActivated
                FROM GovOfficeRegion,County where GovOfficeRegion.CountyId = County.CountyId";

        public const string SqlGetGovOfficeRegionById =
            @"SELECT GovOfficeRegionId,GovOfficeRegionName,Description,GovOfficeRegion.CountyId,CountyName,IsActivated
                FROM GovOfficeRegion,County where GovOfficeRegion.CountyId = County.CountyId and GovOfficeRegionId=@GovOfficeRegionId";
        #endregion

        public class ProcedureStores
        {
            public const string GET_USER = "GetUser";

        }

    }
}
