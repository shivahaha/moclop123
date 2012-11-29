using SD.DataAccess;
using SD.Entities;
using System;

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

        public string IsValidRecoveryPass(string userName, string email)
        {
            var dao = new UserDAO();
            string find = dao.FindUser2(userName, email);
            if (find != null)
            {
                return find;
            }
            else
            {
                return null;
            }
        }

    //    public void InsertProgramme(string programmeName, int contactID, string description, bool active) 
    //    {
    //        ProgrammeDAO dao = new ProgrammeDAO();
    //       while(!true)
    //       {                          
    //       if(programmeName == " " || programmeName == null)
    //       {
    //           System.Web.HttpContext.Current.Response.Write("ProgrammeName is not Null");                  
    //       }else{
    //           dao.Insert(programmeName,contactID,description,active);
    //           break;
    //       }
    //    }
    //}
    
    }
}