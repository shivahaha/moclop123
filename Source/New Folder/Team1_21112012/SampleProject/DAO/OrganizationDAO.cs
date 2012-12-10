
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
    public class OrganizationDAO : BaseDAO<OrganizationEntity>
    {
        public OrganizationDAO() : base(Constants.Organizations.TableName) { }
        public List<OrganizationEntity> GetAll()
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

        public OrganizationEntity GetById(int id)
        {
            return base.GetById(id);
        }

        public List<OrganizationEntity> GetByStartWiths(string startWiths, string columnName, bool isActived)
        {
            return base.GetByStartWiths(startWiths, columnName, isActived);
        }
        public List<OrganizationEntity> GetActived()
        {
            return base.GetActived();
        }
    }
}