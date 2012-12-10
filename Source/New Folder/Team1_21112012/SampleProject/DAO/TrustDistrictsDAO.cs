using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Commons;
using SampleProject.Entity;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace SampleProject.DAO
{
    public class TrustDistrictsDAO : BaseDAO<TrustDistrictsEntity>
    {
        public TrustDistrictsDAO() : base(Constants.TrustDistricts.TableName) { }

        public List<TrustDistrictsEntity> GetAll()
        {
            return base.GetAll();
        }
        public bool Insert(IEntity entity)
        {
            return base.Insert(entity);
        }

        public bool Update(IEntity entity)
        {
            return base.Update(entity);
        }

        public bool Delete(int id)
        {
            return base.Delete(id);
        }

        public TrustDistrictsEntity GetById(int id)
        {
            return base.GetById(id);
        }

        public List<TrustDistrictsEntity> GetByStartWiths(string startWiths, string columnName, bool isActived)
        {
            return base.GetByStartWiths(startWiths, columnName, isActived);
        }
        public List<TrustDistrictsEntity> GetActived()
        {
            return base.GetActived();
        }
    }
}