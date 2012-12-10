using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SampleProject.Commons
{
    public class Constants
    {

        public class Common
        {
            public const string Id = "ID";
            public const string IsActive = "IsActive";
        }

        public class Configurations
        {
            public class Keys
            {
                public const string SQLConnectionString = "ApplicationServices";
            }
        }

        public class User
        {
            public const string TableName = "tblUsers";

            public class SqlColumn
            {
                public const string UserName = "UserName";
                public const string Password = "Password";
            }
        }
    }
}