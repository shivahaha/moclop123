using System.Collections.Generic;
using SampleProject.DAO;
using SampleProject.Entity;
using System.Data;
using System.Data.SqlTypes;
using System;
namespace SampleProject.Biz
{
    public class BaseBiz<T> where T : IEntity
    {
        public string TableName { get; private set; }

        public BaseBiz(string tableName)
        {
            this.TableName = tableName;
        }

        public List<T> GetAll()
        {
            BaseDAO<T> dao = new BaseDAO<T>(this.TableName);
            return dao.GetAll();
        }

        public bool Insert(IEntity entity)
        {
            BaseDAO<T> dao = new BaseDAO<T>(this.TableName);
            return dao.Insert(entity);
        }

        public bool Update(IEntity entity)
        {
            BaseDAO<T> dao = new BaseDAO<T>(this.TableName);
            return dao.Update(entity);
        }

        public bool Delete(int id)
        {
            BaseDAO<T> dao = new BaseDAO<T>(this.TableName);
            return dao.Delete(id);
        }

        public T GetById(int id)
        {
            BaseDAO<T> dao = new BaseDAO<T>(this.TableName);
            return dao.GetById(id);
        }

        public List<T> GetActived()
        {
            BaseDAO<T> dao = new BaseDAO<T>(this.TableName);
            return dao.GetActived();
        }

        public List<T> GetByStartWiths(string startWiths, string columnName, bool isActive)
        {
            BaseDAO<T> dao = new BaseDAO<T>(this.TableName);
            return dao.GetByStartWiths(startWiths, columnName, isActive);
        }
    }
}