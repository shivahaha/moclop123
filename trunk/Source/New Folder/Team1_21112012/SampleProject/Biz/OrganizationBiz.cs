using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Entity;
using SampleProject.Commons;
using SampleProject.DAO;

namespace SampleProject.Biz
{
    public class OrganizationBiz : BaseBiz<OrganizationEntity>
    {
        public OrganizationBiz() : base(Constants.Organizations.TableName) { }
    }
}