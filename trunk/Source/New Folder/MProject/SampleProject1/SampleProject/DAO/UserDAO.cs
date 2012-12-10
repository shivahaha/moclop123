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
    public class UserDAO : BaseDAO<UserEntity>
    {
        public UserDAO() : base(Constants.User.TableName) { }
    }
}