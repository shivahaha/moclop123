namespace SampleProject.Entity
{
    public interface IEntity
    {
        int Id { get; set; }
        void Mapping(System.Data.DataRow row);
        System.Data.SqlClient.SqlCommand UpdateCommand(string tableName);
        System.Data.SqlClient.SqlCommand InsertCommand(string tableName);
    }
}