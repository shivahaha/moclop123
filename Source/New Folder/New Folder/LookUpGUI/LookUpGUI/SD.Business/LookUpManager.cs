﻿using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using SD.Commons;
using LookUpGUI.SD.DataAccess;
using LookUpGUI.SD.Entities;
using LookUpGUI;


namespace LookUpGUI.SD.Business
{
    public class LookUpManager
    {
        public DataTable PostCodeLookUp(string postcode,string street,string town)
        {
            
            //GridView gv = new GridView();
            //LookUpDAO dao = new LookUpDAO();
            //DataTable dt = new DataTable();
            //dt = dao.GetAllRecord(postcode,street,town);
            
            //return dt;
        }
     
    }
}