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
    public class SupportingMaterialsDAO : BaseDAO<SupportingMaterialsEntity>
    {
        public SupportingMaterialsDAO() : base(Constants.SupportMaterials.TableName) { }

        public List<SupportingMaterialsEntity> GetAll()
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

        public SupportingMaterialsEntity GetById(int id)
        {
            return base.GetById(id);
        }

        public List<SupportingMaterialsEntity> GetByStartWiths(string startWiths, string columnName, bool isActived)
        {
            return base.GetByStartWiths(startWiths, columnName, isActived);
        }
        public List<SupportingMaterialsEntity> GetActived()
        {
            return base.GetActived();
        }
    }
}