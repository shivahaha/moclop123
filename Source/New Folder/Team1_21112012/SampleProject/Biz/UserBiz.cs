using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Entity;
using SampleProject.Commons;
using SampleProject.DAO;

namespace SampleProject.Biz
{
    public class UserBiz : BaseBiz<UserEntity>
    {
        public UserBiz() : base(Constants.User.TableName) { }
        public List<UserEntity> GetAll() {
            
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

        public UserEntity GetById(int id)
        { 
            return base.GetById(id);
        }

        public List<UserEntity> GetActived()
        {
            return base.GetActived();
        }

        public List<UserEntity> GetByStartWiths(string startWiths, string columnName, bool isActive)
        {
            return base.GetByStartWiths(startWiths, columnName, isActive);
        }
    }
}