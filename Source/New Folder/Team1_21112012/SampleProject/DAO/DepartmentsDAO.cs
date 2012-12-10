
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
    public class DepartmentsDAO : BaseDAO<DepartmentsEntity>
    {
        public DepartmentsDAO() : base(Constants.Departments.TableName) { }
        public List<DepartmentsEntity> GetAll()
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

        public DepartmentsEntity GetById(int id)
        {
            return base.GetById(id);
        }

        public List<DepartmentsEntity> GetByStartWiths(string startWiths, string columnName, bool isActived)
        {
            return base.GetByStartWiths(startWiths, columnName, isActived);
        }
        public List<DepartmentsEntity> GetActived()
        {
            return base.GetActived();
        }
    }
}