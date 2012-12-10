﻿using System;
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
    public class ContactDAO : BaseDAO<ContactEntity>
    {
        public ContactDAO() : base(Constants.Contact.TableName) { }
        public List<ContactEntity> GetAll()
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

        public ContactEntity GetById(int id)
        {
            return base.GetById(id);
        }

        public List<ContactEntity> GetByStartWiths(string startWiths, string columnName, bool isActived){
        
            return base.GetByStartWiths(startWiths, columnName, isActived);
        }
        public List<ContactEntity> GetActived()
        {
            return base.GetActived();
        }
    }
}