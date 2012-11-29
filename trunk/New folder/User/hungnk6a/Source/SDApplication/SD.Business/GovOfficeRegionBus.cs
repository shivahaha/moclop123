using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using SD.DataAccess;

namespace SD.Business
{
    class GovOfficeRegionBus : IDisposable
    {

        private GovOfficeRegionDao _govOfficeRegionDao;
        //public DataTable GetListActivedGovOfficeRegion()
        //{
        //    _govOfficeRegionDao = new GovOfficeRegionDao();
        //    return _govOfficeRegionDao.GetListActiveGovOfficeRegion();
        //}
        //public DataTable ListActivatedGovOfficeRegion { get; set; }


        //public DataTable GetListActivatedGovOfficeRegion()
        //{
        //    _govOfficeRegionDao = new GovOfficeRegionDao();
        //    return ListActivatedGovOfficeRegion = _govOfficeRegionDao.GetListActivateddGovOfficeRegion();
        //}

        public DataTable SelectAllGovOfficeRegion()
        {
            _govOfficeRegionDao = new GovOfficeRegionDao();
            return _govOfficeRegionDao.SelectAllActivatedGovOfficeRegion();
        }
        public DataTable GetGovOfficeRegionById(int id)
        {
            _govOfficeRegionDao = new GovOfficeRegionDao();
            return _govOfficeRegionDao.GetGovOfficeRegionById(id);
        }
        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                _govOfficeRegionDao.Dispose();
            }
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
