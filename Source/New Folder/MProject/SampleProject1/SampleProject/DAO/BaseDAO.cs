using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Entity;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using SampleProject.Commons;

namespace SampleProject.DAO
{
    public class BaseDAO<T> where T:IEntity
    {
        public string TableName { get; private set; }

        public BaseDAO(string tableName)
        {
            this.TableName = tableName;
        }

        public List<T> GetAll()
        {
            List<T> retVal = new List<T>();
            DataSet dataset = new DataSet();
            string connStr = ConfigurationManager.ConnectionStrings[Constants.Configurations.Keys.SQLConnectionString].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand("select * from [" + this.TableName + "]", conn);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(dataset);
                    if (dataset.Tables.Count > 0)
                    {
                        DataTable tbl = dataset.Tables[0];
                        var count = tbl.Rows.Count;
                        for (int i = 0; i < count; i++)
                        {
                            DataRow row = tbl.Rows[i];
                            T entity = (T)Mapping(row);
                            if (entity != null)
                            {
                                retVal.Add(entity);
                            }
                        }
                    }
                }
            }

            return retVal;
        }

        public bool Insert(IEntity entity)
        {
            bool retVal = false;
            string connStr = ConfigurationManager.ConnectionStrings[Constants.Configurations.Keys.SQLConnectionString].ConnectionString;
            try
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    SqlCommand cmd = entity.InsertCommand(this.TableName);
                    cmd.Connection = conn;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    retVal = true;
                }
            }
            catch (Exception ex) 
            {
                retVal = false;
            }

            return retVal;
        }

        public bool Update(IEntity entity)
        {
            bool retVal = false;
            string connStr = ConfigurationManager.ConnectionStrings[Constants.Configurations.Keys.SQLConnectionString].ConnectionString;
            try
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    SqlCommand cmd = entity.UpdateCommand(this.TableName);
                    cmd.Connection = conn;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    retVal = true;
                }
            }
            catch (Exception ex)
            {
                retVal = false;
            }

            return retVal;
        }

        public bool Delete(int id)
        {
            bool retVal = false;
            string connStr = ConfigurationManager.ConnectionStrings[Constants.Configurations.Keys.SQLConnectionString].ConnectionString;
            try
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    SqlCommand cmd = new SqlCommand("Delete from [" + this.TableName + "] where id=@id", conn);
                    cmd.Parameters.Add(new SqlParameter("id", id));
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    retVal = true;
                }
            }
            catch (Exception ex)
            {
                retVal = false;
            }

            return retVal;
        }

        public T GetById(int id)
        {
            DataSet dataset = new DataSet();
            T retVal = default(T);
            string connStr = ConfigurationManager.ConnectionStrings[Constants.Configurations.Keys.SQLConnectionString].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand("select * from [" + this.TableName + "] where id=@id", conn);
                cmd.Parameters.Add(new SqlParameter("id", id));
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(dataset);
                    if (dataset.Tables.Count > 0)
                    {
                        DataTable tbl = dataset.Tables[0];
                        var count = tbl.Rows.Count;
                        if(count > 0)
                        {
                            retVal = (T)Mapping(tbl.Rows[0]);
                        }
                    }
                }
            }

            return retVal;
        }

        private IEntity Mapping(DataRow row)
        {
            IEntity retVal;
            switch (TableName)
            {
                case Constants.User.TableName:
                    retVal = new UserEntity();
                    break;
                default: 
                    return null;
                    break;
            }

            retVal.Mapping(row);
            return retVal;
        }
    }
}