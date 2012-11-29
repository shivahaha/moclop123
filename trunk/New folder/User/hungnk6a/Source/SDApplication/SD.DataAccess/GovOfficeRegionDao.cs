using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using SD.Commons.Constants;
using SD.Commons.Helpers;
[assembly: CLSCompliant(true)]
namespace SD.DataAccess
{
    public class GovOfficeRegionDao : IDisposable
    {
        private readonly SqlConnection _sqlConnection;
        /// <summary>
        /// Initializes a new instance of the <see cref="GovOfficeRegionDao"/> class.
        /// </summary>
        public GovOfficeRegionDao()
        {
            _sqlConnection = SqlConnectionTool.SqlGetConnection();
        }
        /// <summary>
        /// Initializes a new instance of the <see cref="GovOfficeRegionDao"/> class.
        /// </summary>
        /// <param name="sqlConnectionString">The SQL connection string.</param>
        public GovOfficeRegionDao(string sqlConnectionString)
        {
            _sqlConnection = new SqlConnection(sqlConnectionString);
        }

        #region Method

        /// <summary>
        /// Selects all activated gov office region.
        /// </summary>
        /// <returns></returns>
        public DataTable SelectAllActivatedGovOfficeRegion()
        {
            //_sqlConnection = SqlConnectionTool.SqlGetConnection();
            var ds = SqlHelper.ExecuteDataSet(_sqlConnection, CommandType.Text, DBSchemas.SqlGetAllGovOfficeRegion);
            return (ds.Tables[0]);
        }
        /// <summary>
        /// Gets the gov office region by id.
        /// </summary>
        /// <param name="id">The id.</param>
        /// <returns></returns>
        public DataTable GetGovOfficeRegionById(int id)
        {
            //_sqlConnection = SqlConnectionTool.SqlGetConnection();
            var sqlParametter = new SqlParameter[1];
            sqlParametter[0] = new SqlParameter("@GovOfficeRegionId", SqlDbType.Int) { Value = id };
            var ds = SqlHelper.ExecuteDataSet(_sqlConnection, CommandType.Text, DBSchemas.SqlGetGovOfficeRegionById, sqlParametter);
            return (ds.Tables[0]);
        }

        #endregion

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                _sqlConnection.Close();
            }
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
