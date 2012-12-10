using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Entity;
using SampleProject.Commons;
using SampleProject.DAO;

namespace SampleProject.Biz
{
    public class DirectoratesBiz : BaseBiz<DirectoratesEntity>
    {
        public DirectoratesBiz() : base(Constants.Directorates.TableName) { }
    }
}