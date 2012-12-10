using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Entity;
using SampleProject.Commons;
using SampleProject.DAO;

namespace SampleProject.Biz
{
    public class GeographyBiz : BaseBiz<UserEntity>
    {
        public GeographyBiz() : base(Constants.Organizations.TableName) { }
    }
}