using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
namespace SD.Commons
{
    public static class AppConfig
    {
        /// <summary>
        /// ConnectionString
        /// </summary>
        public static readonly string ConnectionString = ConfigurationManager.AppSettings["ConnectionString"];
        public static string connectionString = "Data Source=TRN-LAB2-PC21\\SQLEXPRESS; Initial Catalog=SQL2008; User Id=sa; Password=12345678;";
         
             }
}
