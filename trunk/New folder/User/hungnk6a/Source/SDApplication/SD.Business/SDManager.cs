using SD.DataAccess;
using SD.Entities;

namespace SD.Business
{
    public class SDManager
    {
        public bool result;
        public bool IsValidLogin(string userName, string password)
        {
            var dao = new UserDAO();
            int find = dao.FindUser(userName, password);
            if(find == 1)
            {
                result = true;
            }
            else
            {
                result = false;
            }
            return result;
        }
    }
}