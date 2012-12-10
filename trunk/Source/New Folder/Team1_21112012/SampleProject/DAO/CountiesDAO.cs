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
    public class CountiesDAO : BaseDAO<CountiesEntity>
    {
        public CountiesDAO() : base(Constants.Counties.TableName) { }
        public List<CountiesEntity> GetAll()
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

        public CountiesEntity GetById(int id)
        {
            return base.GetById(id);
        }

        public List<CountiesEntity> GetByStartWiths(string startWiths, string columnName, bool isActived)
        {
            return base.GetByStartWiths(startWiths, columnName, isActived);
        }
        public List<CountiesEntity> GetActived()
        {
            return base.GetActived();
        }
    }
}